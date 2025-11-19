@interface CRDictionary
- (BOOL)isEqual:(id)a3;
- (CRDictionary)init;
- (CRDictionary)initWithCRCoder:(id)a3;
- (CRDictionary)initWithCRCoder:(id)a3 dictionary:(const void *)a4 elementValueDecoder:(id)a5;
- (CRDictionary)initWithDocument:(id)a3;
- (CRDocument)document;
- (NSString)description;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCRCoder:(id)a3;
- (void)encodeWithCRCoder:(id)a3 dictionary:(void *)a4 elementValueCoder:(id)a5;
- (void)enumerateKeysObjectsAndTimestampsUsingBlock:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithDictionary:(id)a3;
- (void)realizeLocalChangesIn:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setDocument:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)walkGraph:(id)a3;
@end

@implementation CRDictionary

- (CRDictionary)init
{
  v6.receiver = self;
  v6.super_class = CRDictionary;
  v2 = [(CRDictionary *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    contents = v2->_contents;
    v2->_contents = v3;
  }

  return v2;
}

- (CRDictionary)initWithDocument:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRDictionary;
  v5 = [(CRDictionary *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    contents = v5->_contents;
    v5->_contents = v6;

    objc_storeWeak(&v5->_document, v4);
  }

  return v5;
}

- (void)encodeWithCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 6)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 6;
    operator new();
  }

  [(CRDictionary *)self encodeWithCRCoder:v6 dictionary:*(v4 + 40)];
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

- (void)encodeWithCRCoder:(id)a3 dictionary:(void *)a4 elementValueCoder:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = self;
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
        v13 = *(a4 + 13);
        v14 = *(a4 + 12);
        if (v14 >= v13)
        {
          if (v13 == *(a4 + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4 + 5, v13 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::Dictionary_Element>::New();
        }

        v15 = *(a4 + 5);
        *(a4 + 12) = v14 + 1;
        v16 = *(v15 + 8 * v14);
        v17 = [(CRDictionary *)v26 contents];
        v18 = [v17 objectForKey:v12];

        v19 = [v18 value];
        v9[2](v9, v12, v19, v16, v8);

        v20 = [v18 timestamp];
        v21 = v20;
        *(v16 + 32) |= 4u;
        v22 = *(v16 + 56);
        if (!v22)
        {
          operator new();
        }

        [v20 encodeIntoProtobufTimestamp:v22 coder:v8];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (CRDictionary)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 6)
  {
    v6 = [(CRDictionary *)self initWithCRCoder:v4 dictionary:*(v5 + 40)];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(CRDictionary *)self initWithDocument:v7];
  }

  v8 = v6;

  return v8;
}

- (CRDictionary)initWithCRCoder:(id)a3 dictionary:(const void *)a4 elementValueDecoder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 document];
  v11 = [(CRDictionary *)self initWithDocument:v10];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a4 + 12)];
    if (*(a4 + 12))
    {
      for (i = *(a4 + 5); i != (*(a4 + 5) + 8 * *(a4 + 12)); ++i)
      {
        v14 = *i;
        v28 = 0;
        v15 = v9[2](v9, v14, &v28, v8);
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

          v18 = [(CRVectorTimestamp *)v20 initWithProtobufTimestamp:v21 decoder:v8];
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
    [v8 addDecoderCompletionHandler:v25 dependency:0 for:v27];
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
  v2 = [(CRDictionary *)self contents];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(CRDictionary *)self contents];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (id)keyEnumerator
{
  v2 = [(CRDictionary *)self contents];
  v3 = [v2 keyEnumerator];

  return v3;
}

- (void)enumerateKeysObjectsAndTimestampsUsingBlock:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v9 = [(CRDictionary *)self contents];
      v10 = [v9 objectForKey:v8];

      v11 = [v10 value];
      v12 = [v10 timestamp];
      v4[2](v4, v8, v11, v12, &v19);

      LOBYTE(v11) = v19;
      if (v11)
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
  v2 = [(CRDictionary *)self contents];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRDictionary *)self contents];
    v6 = [v4 contents];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRDictionary *)self contents];
  v6 = [v5 objectForKey:v4];
  v7 = [v6 value];

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRDictionary *)self contents];
  v9 = [v8 objectForKey:v7];

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
    v10 = [[CRDictionaryElement alloc] initWithValue:v6];
    v11 = [(CRDictionary *)self document];
    v12 = [v11 replicaClock];

    v13 = [(CRDictionaryElement *)v10 timestamp];
    v14 = +[CRReplica unserialisedIdentifier];
    [v13 setClock:v12 + 1 forUUID:v14];

    v15 = [(CRDictionary *)self contents];
    [v15 setObject:v10 forKey:v7];

    v16 = [(CRDictionary *)self document];
    [v16 setDocumentFor:v7];

    v17 = [(CRDictionary *)self document];
    [v17 setDocumentFor:v6];
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(CRDictionary *)self objectForKey:a3];

  return v3;
}

- (void)removeObjectForKey:(id)a3
{
  v6 = a3;
  v4 = [(CRDictionary *)self contents];
  [v4 removeObjectForKey:v6];

  v5 = [(CRDictionary *)self document];
  -[CRDictionary setRemoveClock:](self, "setRemoveClock:", [v5 replicaClock] + 1);
}

- (void)removeAllObjects
{
  v3 = [(CRDictionary *)self contents];
  [v3 removeAllObjects];

  v4 = [(CRDictionary *)self document];
  -[CRDictionary setRemoveClock:](self, "setRemoveClock:", [v4 replicaClock] + 1);
}

- (void)realizeLocalChangesIn:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v9 = [(CRDictionary *)self contents];
        v10 = [v9 objectForKey:v8];

        v11 = [v10 timestamp];
        v12 = +[CRReplica unserialisedIdentifier];
        v13 = [v11 clockForUUID:v12];

        if (v13 >= 1)
        {
          v14 = [v10 timestamp];
          v15 = +[CRReplica unserialisedIdentifier];
          [v14 removeUUID:v15];

          v16 = [v10 timestamp];
          v17 = [v4 replica];
          [v16 setClock:v13 forUUID:v17];

          v18 = [v4 unserializedReplicaClock];
          if (v18 <= v13)
          {
            v19 = v13;
          }

          else
          {
            v19 = v18;
          }

          [v4 setUnserializedReplicaClock:v19];
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
    v20 = [v4 unserializedReplicaClock];
    v21 = [(CRDictionary *)self removeClock];
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    [v4 setUnserializedReplicaClock:v22];
  }

  [(CRDictionary *)self setRemoveClock:0];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(CRDictionary *)self mergeWithDictionary:v5];
}

- (void)mergeWithDictionary:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v40 = a3;
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
        v8 = [(CRDictionary *)self contents];
        v9 = [v8 objectForKey:v7];

        v10 = [v40 contents];
        v11 = [v10 objectForKey:v7];

        if (v11)
        {
          [v9 mergeWith:v11];
        }

        else
        {
          v12 = [v9 timestamp];
          v13 = [v40 document];
          v14 = [v13 version];
          [v12 minusVectorTimestamp:v14];

          v15 = [v9 timestamp];
          LODWORD(v12) = [v15 count] == 0;

          if (v12)
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
        v20 = [(CRDictionary *)self contents];
        [v20 removeObjectForKey:v19];

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
  v37 = [v40 contents];
  v21 = [v37 countByEnumeratingWithState:&v41 objects:v53 count:16];
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
          objc_enumerationMutation(v37);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        v25 = [(CRDictionary *)self contents];
        v26 = [v25 objectForKey:v24];
        v27 = v26 == 0;

        if (v27)
        {
          v28 = [v40 contents];
          v29 = [v28 objectForKey:v24];

          v30 = [(CRDictionary *)self document];
          v31 = [v30 version];
          v32 = [v29 timestamp];
          v33 = ([v31 compare:v32] & 1) == 0;

          if (!v33)
          {
            v34 = [(CRDictionary *)self contents];
            [v34 setObject:v29 forKey:v24];
          }
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v37 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v21);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)setDocument:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_storeWeak(&self->_document, v4);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(CRDictionary *)self contents];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(CRDictionary *)self contents];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 value];
        v13 = [v4 localObject:v12];

        if (v13)
        {
          v14 = [v11 value];
          v15 = v14 == v13;

          if (!v15)
          {
            [v11 setValue:v13];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v24 = a4;
  v23 = [[CRDictionary alloc] initWithDocument:v24];
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
        v10 = [(CRDictionary *)self contents];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 timestamp];
        v13 = [v12 copy];

        [v13 minusVectorTimestamp:v26];
        v14 = [v11 value];
        v15 = [v14 deltaSince:v26 in:v24];

        v16 = objc_alloc_init(CRDictionaryElement);
        v17 = v15;
        if (!v15)
        {
          v4 = [v11 value];
          v5 = [v4 tombstone];
          v17 = v5;
        }

        [(CRDictionaryElement *)v16 setValue:v17];
        if (!v15)
        {
        }

        [(CRDictionaryElement *)v16 setTimestamp:v13];
        v18 = [(CRDictionary *)v23 contents];
        [v18 setObject:v16 forKey:v9];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)walkGraph:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CRDictionary *)self contents];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v4[2](v4, v9);
        v10 = [(CRDictionary *)self contents];
        v11 = [v10 objectForKey:v9];
        v12 = [v11 value];
        (v4)[2](v4, v12);
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          v11 = [(CRDictionary *)self contents];
          v12 = [v11 objectForKey:v10];

          v13 = [v12 value];
          LODWORD(v11) = v13 == v10;

          v14 = [v12 timestamp];
          v15 = [v14 shortDescription];
          [v12 value];
          if (v11)
            v16 = {;
            [v6 appendFormat:@"  %@ %@, \n", v15, v16];
          }

          else
            v16 = {;
            [v6 appendFormat:@"  %@ : %@ %@, \n", v10, v15, v16];
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