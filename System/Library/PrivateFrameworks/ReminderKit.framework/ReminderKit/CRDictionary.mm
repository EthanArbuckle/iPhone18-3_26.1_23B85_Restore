@interface CRDictionary
- (BOOL)isEqual:(id)equal;
- (CRDictionary)init;
- (CRDictionary)initWithCRCoder:(id)coder;
- (CRDictionary)initWithCRCoder:(id)coder dictionary:(const void *)dictionary elementValueDecoder:(id)decoder;
- (CRDictionary)initWithDocument:(id)document;
- (CRDocument)document;
- (NSString)description;
- (id)deltaSince:(id)since in:(id)in;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCRCoder:(id)coder;
- (void)encodeWithCRCoder:(id)coder dictionary:(void *)dictionary elementValueCoder:(id)valueCoder;
- (void)enumerateKeysObjectsAndTimestampsUsingBlock:(id)block;
- (void)mergeWith:(id)with;
- (void)mergeWithDictionary:(id)dictionary;
- (void)realizeLocalChangesIn:(id)in;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setDocument:(id)document;
- (void)setObject:(id)object forKey:(id)key;
- (void)walkGraph:(id)graph;
@end

@implementation CRDictionary

- (CRDictionary)init
{
  v6.receiver = self;
  v6.super_class = CRDictionary;
  v2 = [(CRDictionary *)&v6 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    contents = v2->_contents;
    v2->_contents = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (CRDictionary)initWithDocument:(id)document
{
  documentCopy = document;
  v9.receiver = self;
  v9.super_class = CRDictionary;
  v5 = [(CRDictionary *)&v9 init];
  if (v5)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    contents = v5->_contents;
    v5->_contents = strongToStrongObjectsMapTable;

    objc_storeWeak(&v5->_document, documentCopy);
  }

  return v5;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 6)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 6;
    operator new();
  }

  [(CRDictionary *)self encodeWithCRCoder:coderCopy dictionary:*(currentDocumentObjectForEncoding + 40)];
}

void __45__CRDictionary_encodeWithCRCoder_dictionary___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v12 = a2;
  v8 = a3;
  v9 = a5;
  if (v8 && [v8 conformsToProtocol:&unk_1F0DB3B90])
  {
    *(a4 + 32) |= 2u;
    v10 = *(a4 + 48);
    if (!v10)
    {
      operator new();
    }

    [v9 encodeObject:v8 forObjectID:v10];
  }

  *(a4 + 32) |= 1u;
  v11 = *(a4 + 40);
  if (!v11)
  {
    operator new();
  }

  [v9 encodeObject:v12 forObjectID:v11];
}

- (void)encodeWithCRCoder:(id)coder dictionary:(void *)dictionary elementValueCoder:(id)valueCoder
{
  v32 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  valueCoderCopy = valueCoder;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  obj = [(CRDictionary *)self contents];
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v25 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = *(dictionary + 13);
        v14 = *(dictionary + 12);
        if (v14 >= v13)
        {
          if (v13 == *(dictionary + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(dictionary + 5, v13 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::Dictionary_Element>::New();
        }

        v15 = *(dictionary + 5);
        *(dictionary + 12) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        contents = [(CRDictionary *)selfCopy contents];
        v18 = [contents objectForKey:v12];

        value = [v18 value];
        valueCoderCopy[2](valueCoderCopy, v12, value, v16, coderCopy);

        timestamp = [v18 timestamp];
        v21 = timestamp;
        *(v16 + 32) |= 4u;
        v22 = *(v16 + 56);
        if (!v22)
        {
          operator new();
        }

        [timestamp encodeIntoProtobufTimestamp:v22 coder:coderCopy];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (CRDictionary)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 6)
  {
    v6 = [(CRDictionary *)self initWithCRCoder:coderCopy dictionary:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(CRDictionary *)self initWithDocument:document];
  }

  v8 = v6;

  return v8;
}

- (CRDictionary)initWithCRCoder:(id)coder dictionary:(const void *)dictionary elementValueDecoder:(id)decoder
{
  coderCopy = coder;
  decoderCopy = decoder;
  document = [coderCopy document];
  v11 = [(CRDictionary *)self initWithDocument:document];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(dictionary + 12)];
    if (*(dictionary + 12))
    {
      for (i = *(dictionary + 5); i != (*(dictionary + 5) + 8 * *(dictionary + 12)); ++i)
      {
        v14 = *i;
        v28 = 0;
        v15 = decoderCopy[2](decoderCopy, v14, &v28, coderCopy);
        v16 = v28;
        v17 = v16;
        if ((*(v14 + 32) & 4) != 0)
        {
          v19 = [CRVectorTimestamp alloc];
          v20 = v19;
          v21 = *(v14 + 56);
          if (!v21)
          {
            v21 = *(CRDT::Dictionary_Element::default_instance(v19) + 56);
          }

          v18 = [(CRVectorTimestamp *)v20 initWithProtobufTimestamp:v21 decoder:coderCopy];
          if (!v17)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v18 = 0;
          if (!v16)
          {
            goto LABEL_11;
          }
        }

        v22 = [[CRDictionaryElement alloc] initWithValue:v15 timestamp:v18];
        [v12 addObject:v17];
        [v12 addObject:v22];

LABEL_11:
      }
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __63__CRDictionary_initWithCRCoder_dictionary_elementValueDecoder___block_invoke;
    v25[3] = &unk_1E7509A10;
    v23 = v12;
    v26 = v23;
    v27 = v11;
    [coderCopy addDecoderCompletionHandler:v25 dependency:0 for:v27];
  }

  return v11;
}

void __63__CRDictionary_initWithCRCoder_dictionary_elementValueDecoder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i < v3; i += 2)
    {
      v5 = [*(a1 + 40) contents];
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i + 1];
      v7 = [*(a1 + 32) objectAtIndexedSubscript:i];
      [v5 setObject:v6 forKey:v7];
    }
  }
}

- (unint64_t)count
{
  contents = [(CRDictionary *)self contents];
  v3 = [contents count];

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  contents = [(CRDictionary *)self contents];
  v9 = [contents countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (id)keyEnumerator
{
  contents = [(CRDictionary *)self contents];
  keyEnumerator = [contents keyEnumerator];

  return keyEnumerator;
}

- (void)enumerateKeysObjectsAndTimestampsUsingBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(CRDictionary *)self contents];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      contents = [(CRDictionary *)self contents];
      v10 = [contents objectForKey:v8];

      value = [v10 value];
      timestamp = [v10 timestamp];
      blockCopy[2](blockCopy, v8, value, timestamp, &v19);

      LOBYTE(value) = v19;
      if (value)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  contents = [(CRDictionary *)self contents];
  v3 = [contents hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [(CRDictionary *)self contents];
    contents2 = [equalCopy contents];
    v7 = [contents isEqual:contents2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  contents = [(CRDictionary *)self contents];
  v6 = [contents objectForKey:keyCopy];
  value = [v6 value];

  return value;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  contents = [(CRDictionary *)self contents];
  v9 = [contents objectForKey:keyCopy];

  if (v9)
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEBUG))
    {
      [CRDictionary setObject:? forKey:?];
    }
  }

  else
  {
    v10 = [[CRDictionaryElement alloc] initWithValue:objectCopy];
    document = [(CRDictionary *)self document];
    replicaClock = [document replicaClock];

    timestamp = [(CRDictionaryElement *)v10 timestamp];
    v14 = +[CRReplica unserialisedIdentifier];
    [timestamp setClock:replicaClock + 1 forUUID:v14];

    contents2 = [(CRDictionary *)self contents];
    [contents2 setObject:v10 forKey:keyCopy];

    document2 = [(CRDictionary *)self document];
    [document2 setDocumentFor:keyCopy];

    document3 = [(CRDictionary *)self document];
    [document3 setDocumentFor:objectCopy];
  }
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(CRDictionary *)self objectForKey:subscript];

  return v3;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  contents = [(CRDictionary *)self contents];
  [contents removeObjectForKey:keyCopy];

  document = [(CRDictionary *)self document];
  -[CRDictionary setRemoveClock:](self, "setRemoveClock:", [document replicaClock] + 1);
}

- (void)removeAllObjects
{
  contents = [(CRDictionary *)self contents];
  [contents removeAllObjects];

  document = [(CRDictionary *)self document];
  -[CRDictionary setRemoveClock:](self, "setRemoveClock:", [document replicaClock] + 1);
}

- (void)realizeLocalChangesIn:(id)in
{
  v30 = *MEMORY[0x1E69E9840];
  inCopy = in;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CRDictionary *)self contents];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        contents = [(CRDictionary *)self contents];
        v10 = [contents objectForKey:v8];

        timestamp = [v10 timestamp];
        v12 = +[CRReplica unserialisedIdentifier];
        v13 = [timestamp clockForUUID:v12];

        if (v13 >= 1)
        {
          timestamp2 = [v10 timestamp];
          v15 = +[CRReplica unserialisedIdentifier];
          [timestamp2 removeUUID:v15];

          timestamp3 = [v10 timestamp];
          replica = [inCopy replica];
          [timestamp3 setClock:v13 forUUID:replica];

          unserializedReplicaClock = [inCopy unserializedReplicaClock];
          if (unserializedReplicaClock <= v13)
          {
            v19 = v13;
          }

          else
          {
            v19 = unserializedReplicaClock;
          }

          [inCopy setUnserializedReplicaClock:v19];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  if ([(CRDictionary *)self removeClock]>= 1)
  {
    unserializedReplicaClock2 = [inCopy unserializedReplicaClock];
    removeClock = [(CRDictionary *)self removeClock];
    if (unserializedReplicaClock2 <= removeClock)
    {
      v22 = removeClock;
    }

    else
    {
      v22 = unserializedReplicaClock2;
    }

    [inCopy setUnserializedReplicaClock:v22];
  }

  [(CRDictionary *)self setRemoveClock:0];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(CRDictionary *)self mergeWithDictionary:withCopy];
}

- (void)mergeWithDictionary:(id)dictionary
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(CRDictionary *)self contents];
  v4 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v4)
  {
    v5 = *v50;
    do
    {
      v6 = 0;
      do
      {
        if (*v50 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * v6);
        contents = [(CRDictionary *)self contents];
        v9 = [contents objectForKey:v7];

        contents2 = [dictionaryCopy contents];
        v11 = [contents2 objectForKey:v7];

        if (v11)
        {
          [v9 mergeWith:v11];
        }

        else
        {
          timestamp = [v9 timestamp];
          document = [dictionaryCopy document];
          version = [document version];
          [timestamp minusVectorTimestamp:version];

          timestamp2 = [v9 timestamp];
          LODWORD(timestamp) = [timestamp2 count] == 0;

          if (timestamp)
          {
            [v36 addObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v4);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obja = v36;
  v16 = [obja countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v16)
  {
    v17 = *v46;
    do
    {
      v18 = 0;
      do
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(obja);
        }

        v19 = *(*(&v45 + 1) + 8 * v18);
        contents3 = [(CRDictionary *)self contents];
        [contents3 removeObjectForKey:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [obja countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v16);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  contents4 = [dictionaryCopy contents];
  v21 = [contents4 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v21)
  {
    v22 = *v42;
    do
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(contents4);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        contents5 = [(CRDictionary *)self contents];
        v26 = [contents5 objectForKey:v24];
        v27 = v26 == 0;

        if (v27)
        {
          contents6 = [dictionaryCopy contents];
          v29 = [contents6 objectForKey:v24];

          document2 = [(CRDictionary *)self document];
          version2 = [document2 version];
          timestamp3 = [v29 timestamp];
          v33 = ([version2 compare:timestamp3] & 1) == 0;

          if (!v33)
          {
            contents7 = [(CRDictionary *)self contents];
            [contents7 setObject:v29 forKey:v24];
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [contents4 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v21);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)setDocument:(id)document
{
  v22 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  contents = [(CRDictionary *)self contents];
  v6 = [contents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(contents);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        contents2 = [(CRDictionary *)self contents];
        v11 = [contents2 objectForKey:v9];

        value = [v11 value];
        v13 = [documentCopy localObject:value];

        if (v13)
        {
          value2 = [v11 value];
          v15 = value2 == v13;

          if (!v15)
          {
            [v11 setValue:v13];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [contents countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)deltaSince:(id)since in:(id)in
{
  v32 = *MEMORY[0x1E69E9840];
  sinceCopy = since;
  inCopy = in;
  v23 = [[CRDictionary alloc] initWithDocument:inCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CRDictionary *)self contents];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v22 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        contents = [(CRDictionary *)self contents];
        v11 = [contents objectForKey:v9];

        timestamp = [v11 timestamp];
        v13 = [timestamp copy];

        [v13 minusVectorTimestamp:sinceCopy];
        value = [v11 value];
        v15 = [value deltaSince:sinceCopy in:inCopy];

        v16 = objc_alloc_init(CRDictionaryElement);
        v17 = v15;
        if (!v15)
        {
          value2 = [v11 value];
          tombstone = [value2 tombstone];
          v17 = tombstone;
        }

        [(CRDictionaryElement *)v16 setValue:v17];
        if (!v15)
        {
        }

        [(CRDictionaryElement *)v16 setTimestamp:v13];
        contents2 = [(CRDictionary *)v23 contents];
        [contents2 setObject:v16 forKey:v9];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)walkGraph:(id)graph
{
  v19 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  contents = [(CRDictionary *)self contents];
  v6 = [contents countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(contents);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        graphCopy[2](graphCopy, v9);
        contents2 = [(CRDictionary *)self contents];
        v11 = [contents2 objectForKey:v9];
        value = [v11 value];
        (graphCopy)[2](graphCopy, value);
      }

      v6 = [contents countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(CRDictionary *)self count])
  {
    v3 = MEMORY[0x1E696AD60];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(CRDictionary *)self contents];
    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          contents = [(CRDictionary *)self contents];
          v12 = [contents objectForKey:v10];

          value = [v12 value];
          LODWORD(contents) = value == v10;

          timestamp = [v12 timestamp];
          shortDescription = [timestamp shortDescription];
          [v12 value];
          if (contents)
            v16 = {;
            [v6 appendFormat:@"  %@ %@, \n", shortDescription, v16];
          }

          else
            v16 = {;
            [v6 appendFormat:@"  %@ : %@ %@, \n", v10, shortDescription, v16];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v6 = [v17 stringWithFormat:@"<%@ %p>", v19, self];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (CRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end