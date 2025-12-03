@interface CRVectorTimestamp
- (BOOL)isEqual:(id)equal;
- (CRVectorTimestamp)init;
- (CRVectorTimestamp)initWithCRCoder:(id)coder;
- (CRVectorTimestamp)initWithProtobufTimestamp:(const void *)timestamp decoder:(id)decoder;
- (NSString)description;
- (id)clockElementForUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deltaSince:(id)since in:(id)in;
- (id)shortDescription;
- (id)sortedUUIDs;
- (id)timestampForReplica:(id)replica;
- (id)tombstone;
- (unint64_t)clockForUUID:(id)d;
- (unint64_t)compare:(id)compare;
- (unint64_t)subclockForUUID:(id)d;
- (void)encodeIntoProtobufTimestamp:(void *)timestamp coder:(id)coder;
- (void)encodeWithCRCoder:(id)coder;
- (void)incrementClockForUUID:(id)d;
- (void)maxClock:(unint64_t)clock forUUID:(id)d;
- (void)mergeWith:(id)with;
- (void)minusVectorTimestamp:(id)timestamp;
- (void)setClock:(unint64_t)clock forUUID:(id)d;
- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d;
@end

@implementation CRVectorTimestamp

- (CRVectorTimestamp)init
{
  v6.receiver = self;
  v6.super_class = CRVectorTimestamp;
  v2 = [(CRVectorTimestamp *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    clock = v2->_clock;
    v2->_clock = v3;
  }

  return v2;
}

- (CRVectorTimestamp)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 8)
  {
    v6 = [(CRVectorTimestamp *)self initWithProtobufTimestamp:*(currentDocumentObjectForDecoding + 40) decoder:coderCopy];
  }

  else
  {
    v6 = [(CRVectorTimestamp *)self init];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 8)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 8;
    operator new();
  }

  [(CRVectorTimestamp *)self encodeIntoProtobufTimestamp:*(currentDocumentObjectForEncoding + 40) coder:coderCopy];
}

- (CRVectorTimestamp)initWithProtobufTimestamp:(const void *)timestamp decoder:(id)decoder
{
  decoderCopy = decoder;
  v7 = [(CRVectorTimestamp *)self init];
  if (v7)
  {
    v8 = *(timestamp + 12);
    if (v8)
    {
      v9 = *(timestamp + 5);
      v10 = v9;
      do
      {
        v11 = *v10;
        if (*(*v10 + 32))
        {
          v12 = [decoderCopy decodeUUIDFromUUIDIndex:*(v11 + 40)];
          v13 = objc_alloc_init(CRVectorTimestampElement);
          v14 = v13;
          v15 = *(v11 + 32);
          if ((v15 & 2) != 0)
          {
            [(CRVectorTimestampElement *)v13 setClock:*(v11 + 48)];
            v15 = *(v11 + 32);
          }

          if ((v15 & 4) != 0)
          {
            [(CRVectorTimestampElement *)v14 setSubclock:*(v11 + 56)];
          }

          [(NSMutableDictionary *)v7->_clock setObject:v14 forKeyedSubscript:v12];

          v9 = *(timestamp + 5);
          v8 = *(timestamp + 12);
        }

        ++v10;
      }

      while (v10 != &v9[v8]);
    }
  }

  return v7;
}

- (void)encodeIntoProtobufTimestamp:(void *)timestamp coder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:v11];
        v13 = *(timestamp + 13);
        v14 = *(timestamp + 12);
        if (v14 >= v13)
        {
          if (v13 == *(timestamp + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(timestamp + 5, v13 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::VectorTimestamp_Element>::New();
        }

        v15 = *(timestamp + 5);
        *(timestamp + 12) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = [coderCopy encodeUUIDIndexFromUUID:v11];
        *(v16 + 32) |= 1u;
        *(v16 + 40) = v17;
        if ([v12 clock])
        {
          clock = [v12 clock];
          *(v16 + 32) |= 2u;
          *(v16 + 48) = clock;
        }

        if ([v12 subclock])
        {
          subclock = [v12 subclock];
          *(v16 + 32) |= 4u;
          *(v16 + 56) = subclock;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CRVectorTimestamp);
  [(CRVectorTimestamp *)v4 mergeWith:self];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRVectorTimestamp *)self compare:equalCopy]== 0;

  return v5;
}

- (id)timestampForReplica:(id)replica
{
  replicaCopy = replica;
  v5 = [[CRTimestamp alloc] initWithReplica:replicaCopy andCounter:[(CRVectorTimestamp *)self clockForUUID:replicaCopy]];

  return v5;
}

- (id)clockElementForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];

  return v3;
}

- (unint64_t)clockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  clock = [v3 clock];

  return clock;
}

- (unint64_t)subclockForUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:d];
  subclock = [v3 subclock];

  return subclock;
}

- (void)setClock:(unint64_t)clock forUUID:(id)d
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(CRVectorTimestampElement);
  }

  [(CRVectorTimestampElement *)v6 setClock:clock];
  [(NSMutableDictionary *)self->_clock setObject:v6 forKey:dCopy];
}

- (void)setClock:(unint64_t)clock subclock:(unint64_t)subclock forUUID:(id)d
{
  dCopy = d;
  v8 = objc_alloc_init(CRVectorTimestampElement);
  [(CRVectorTimestampElement *)v8 setClock:clock];
  [(CRVectorTimestampElement *)v8 setSubclock:subclock];
  [(NSMutableDictionary *)self->_clock setObject:v8 forKey:dCopy];
}

- (void)incrementClockForUUID:(id)d
{
  dCopy = d;
  [(CRVectorTimestamp *)self setClock:[(CRVectorTimestamp *)self clockForUUID:?]+ 1 forUUID:dCopy];
}

- (void)maxClock:(unint64_t)clock forUUID:(id)d
{
  dCopy = d;
  v6 = [(NSMutableDictionary *)self->_clock objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = objc_alloc_init(CRVectorTimestampElement);
  }

  clock = [(CRVectorTimestampElement *)v6 clock];
  if (clock <= clock)
  {
    clockCopy = clock;
  }

  else
  {
    clockCopy = clock;
  }

  [(CRVectorTimestampElement *)v6 setClock:clockCopy];
  [(NSMutableDictionary *)self->_clock setObject:v6 forKey:dCopy];
}

- (id)sortedUUIDs
{
  allKeys = [(NSMutableDictionary *)self->_clock allKeys];
  v3 = [allKeys sortedArrayUsingSelector:sel_CR_compare_];

  return v3;
}

- (unint64_t)compare:(id)compare
{
  v34 = *MEMORY[0x1E69E9840];
  compareCopy = compare;
  v5 = MEMORY[0x1E695DFA8];
  allUUIDs = [(CRVectorTimestamp *)self allUUIDs];
  v7 = [v5 setWithArray:allUUIDs];

  allUUIDs2 = [compareCopy allUUIDs];
  [v7 addObjectsFromArray:allUUIDs2];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v9)
  {

    v22 = 0;
    goto LABEL_20;
  }

  v25 = v7;
  v10 = 0;
  v11 = 0;
  v12 = *v30;
  v27 = 1;
  v26 = 4;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v30 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v29 + 1) + 8 * i);
      v15 = [(CRVectorTimestamp *)self clockElementForUUID:v14, v25];
      v16 = [compareCopy clockElementForUUID:v14];
      clock = [v15 clock];
      if (clock < [v16 clock])
      {
LABEL_7:
        v11 = 1;
        goto LABEL_12;
      }

      clock2 = [v15 clock];
      if (clock2 <= [v16 clock])
      {
        subclock = [v15 subclock];
        if (subclock < [v16 subclock])
        {
          goto LABEL_7;
        }

        subclock2 = [v15 subclock];
        v10 |= subclock2 > [v16 subclock];
      }

      else
      {
        v10 = 1;
      }

LABEL_12:

      if (v11 & v10)
      {
        goto LABEL_18;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v9);
  v21 = 4;
  if ((v10 & 1) == 0)
  {
    v21 = 0;
  }

  v26 = v21;
  v27 = v11 & 1;
LABEL_18:

  v22 = v26 | v27;
LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)minusVectorTimestamp:(id)timestamp
{
  v21 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allUUIDs = [timestampCopy allUUIDs];
  v6 = [allUUIDs countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allUUIDs);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(CRVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [timestampCopy clockElementForUUID:v9];
        clock = [v10 clock];
        if (clock < [v11 clock] || (v13 = objc_msgSend(v10, "clock"), v13 == objc_msgSend(v11, "clock")) && (v14 = objc_msgSend(v10, "subclock"), v14 <= objc_msgSend(v11, "subclock")))
        {
          [(NSMutableDictionary *)self->_clock removeObjectForKey:v9];
        }
      }

      v6 = [allUUIDs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)mergeWith:(id)with
{
  v23 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allUUIDs = [withCopy allUUIDs];
  v6 = [allUUIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allUUIDs);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(CRVectorTimestamp *)self clockElementForUUID:v9];
        v11 = [withCopy clockElementForUUID:v9];
        clock = [v10 clock];
        if (clock > [v11 clock] || (v15 = objc_msgSend(v10, "clock"), v15 == objc_msgSend(v11, "clock")) && (v16 = objc_msgSend(v10, "subclock"), v16 > objc_msgSend(v11, "subclock")))
        {
          clock2 = [v10 clock];
          subclock = [v10 subclock];
        }

        else
        {
          clock2 = [v11 clock];
          subclock = [v11 subclock];
        }

        [(CRVectorTimestamp *)self setClock:clock2 subclock:subclock forUUID:v9];
      }

      v6 = [allUUIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot calculate deltas for vector timestamps." userInfo:0];
  objc_exception_throw(v7);
}

- (id)tombstone
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot tombstone a non-value / non-identified object." userInfo:0];
  objc_exception_throw(v2);
}

- (id)shortDescription
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CRVectorTimestamp *)self count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [(__CFString *)v3 appendFormat:@"{"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    sortedUUIDs = [(CRVectorTimestamp *)self sortedUUIDs];
    v5 = [sortedUUIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(sortedUUIDs);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [(CRVectorTimestamp *)self clockElementForUUID:v8];
          cR_shortDescription = [v8 CR_shortDescription];
          -[__CFString appendFormat:](v3, "appendFormat:", @"%@:%lu ", cR_shortDescription, [v9 clock]);
        }

        v5 = [sortedUUIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    [(__CFString *)v3 replaceCharactersInRange:[(__CFString *)v3 length]- 1 withString:1, @"}"];
  }

  else
  {
    v3 = @"{}";
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend(v3, "appendFormat:", @"<%@ %p (\n"), v5, self;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortedUUIDs = [(CRVectorTimestamp *)self sortedUUIDs];
  v7 = [sortedUUIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(sortedUUIDs);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(CRVectorTimestamp *)self clockElementForUUID:v10];
        [v3 appendFormat:@"  %@:%lu.%lu\n", v10, objc_msgSend(v11, "clock"), objc_msgSend(v11, "subclock")];
      }

      v7 = [sortedUUIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v3 appendString:@">"]);
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

@end