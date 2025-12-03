@interface CRCoderUnarchiver
+ (id)decodedDocumentFromData:(id)data replica:(id)replica;
- (BOOL)willModifySelfInInitForClass:(Class)class;
- (const)currentObjectIDForKey:(id)key;
- (double)decodeDoubleForKey:(id)key;
- (id)allocedObjectAtIndex:(unint64_t)index outNeedsInit:(BOOL *)init;
- (id)decodeDocumentFromData:(id)data replica:(id)replica;
- (id)decodeObjectForKey:(id)key;
- (id)decodeObjectForProtobufObjectID:(const void *)d;
- (id)decodeStringForKey:(id)key;
- (id)decodeUUIDForKey:(id)key;
- (id)decodeUUIDFromUUIDIndex:(unint64_t)index;
- (int)decodeInt32ForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (unint64_t)decodeUInt64ForKey:(id)key;
- (unint64_t)indexForKey:(id)key;
- (unsigned)decodeUInt32ForKey:(id)key;
- (void)addDecoderCompletionHandler:(id)handler dependency:(id)dependency for:(id)for;
- (void)sortCompletionHandlers;
@end

@implementation CRCoderUnarchiver

+ (id)decodedDocumentFromData:(id)data replica:(id)replica
{
  dataCopy = data;
  replicaCopy = replica;
  v7 = objc_alloc_init(CRCoderUnarchiver);
  v8 = [(CRCoderUnarchiver *)v7 decodeDocumentFromData:dataCopy replica:replicaCopy];

  return v8;
}

- (BOOL)willModifySelfInInitForClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [(objc_class *)class isSubclassOfClass:v5];
}

- (id)allocedObjectAtIndex:(unint64_t)index outNeedsInit:(BOOL *)init
{
  if (init)
  {
    *init = 1;
  }

  if (*([(CRCoderUnarchiver *)self currentDocument]+ 64) <= index)
  {
    goto LABEL_19;
  }

  while (1)
  {
    allocedDocObjects = [(CRCoderUnarchiver *)self allocedDocObjects];
    v8 = [allocedDocObjects count];

    allocedDocObjects2 = [(CRCoderUnarchiver *)self allocedDocObjects];
    v10 = allocedDocObjects2;
    if (v8 > index)
    {
      break;
    }

    null = [MEMORY[0x1E695DFB0] null];
    [v10 addObject:null];
  }

  v12 = [allocedDocObjects2 objectAtIndexedSubscript:index];

  null2 = [MEMORY[0x1E695DFB0] null];

  if (v12 != null2)
  {
    v14 = v12;
    goto LABEL_20;
  }

  v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(([(CRCoderUnarchiver *)self currentDocument]+ 56), index);
  v14 = 0;
  v16 = *(v15 + 48);
  if (v16 <= 7)
  {
    if (v16 > 3)
    {
      switch(v16)
      {
        case 4:
          v17 = off_1E7506860;
          break;
        case 6:
          v17 = off_1E7506820;
          break;
        case 7:
          v17 = off_1E7506870;
          break;
        default:
          goto LABEL_20;
      }
    }

    else
    {
      switch(v16)
      {
        case 1:
          v17 = off_1E7506840;
          break;
        case 2:
          v17 = off_1E7506838;
          break;
        case 3:
          v17 = off_1E7506848;
          break;
        default:
          goto LABEL_20;
      }
    }

    goto LABEL_39;
  }

  if (v16 > 13)
  {
    switch(v16)
    {
      case 14:
        v17 = off_1E75071D0;
        break;
      case 15:
        v17 = off_1E75067F8;
        break;
      case 16:
        v17 = off_1E7506878;
        break;
      default:
        goto LABEL_20;
    }

LABEL_39:
    v14 = objc_alloc(*v17);
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

  if (v16 == 8)
  {
    v17 = off_1E7506880;
    goto LABEL_39;
  }

  if (v16 == 10)
  {
    v17 = off_1E75071D8;
    goto LABEL_39;
  }

  if (v16 != 13)
  {
    goto LABEL_20;
  }

  v18 = *(v15 + 40);
  if ((*(v18 + 32) & 1) == 0)
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v21 = *(v18 + 64);
  typeSetForDecoding = [(CRCoderUnarchiver *)self typeSetForDecoding];
  v23 = [typeSetForDecoding objectAtIndex:v21];

  typeToClassDict = [(CRCoder *)self typeToClassDict];
  v25 = [typeToClassDict objectForKeyedSubscript:v23];

  if ([(CRCoderUnarchiver *)self willModifySelfInInitForClass:v25])
  {
    if (init)
    {
      *init = 0;
    }

    v26 = [[v25 alloc] initWithCRCoder:self];
  }

  else
  {
    v26 = [v25 alloc];
  }

  v27 = v26;

  v14 = v27;
  if (v27)
  {
LABEL_40:
    allocedDocObjects3 = [(CRCoderUnarchiver *)self allocedDocObjects];
    [allocedDocObjects3 setObject:v14 atIndexedSubscript:index];
  }

LABEL_20:

  return v14;
}

- (id)decodeDocumentFromData:(id)data replica:(id)replica
{
  v8 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  [(CRCoderUnarchiver *)self setReplica:replica];
  operator new();
}

- (const)currentObjectIDForKey:(id)key
{
  keyCopy = key;
  if (*([(CRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13 || ((v5 = [(CRCoderUnarchiver *)self currentDocObjectForDecodingPtr], *(v5 + 12) != 13) ? (v6 = CRDT::Document_CustomObject::default_instance(v5)) : (v6 = v5[5]), (v7 = [(CRCoderUnarchiver *)self indexForKey:keyCopy], v8 = v7, v7 == 0x7FFFFFFFFFFFFFFFLL) || *(v6 + 48) < 1))
  {
LABEL_13:
    v12 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(v6 + 40, v9);
      if ((~*(v10 + 32) & 3) == 0 && *(v10 + 48) == v8)
      {
        break;
      }

      if (++v9 >= *(v6 + 48))
      {
        goto LABEL_13;
      }
    }

    v12 = *(v10 + 40);
    if (!v12)
    {
      v12 = *(CRDT::Document_CustomObject_MapEntry::default_instance(v10) + 40);
    }
  }

  return v12;
}

- (id)decodeObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(CRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (v5)
  {
    v6 = [(CRCoderUnarchiver *)self decodeObjectForProtobufObjectID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decodeObjectForProtobufObjectID:(const void *)d
{
  if (*(d + 12) == 6)
  {
    v5 = [(CRCoderUnarchiver *)self allocedObjectAtIndex:*(d + 10) outNeedsInit:0, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)decodeStringForKey:(id)key
{
  keyCopy = key;
  v5 = [(CRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (*(v5 + 12) == 4)
  {
    v6 = v5[5];
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)decodeUUIDForKey:(id)key
{
  v3 = [(CRCoderUnarchiver *)self decodeStringForKey:key];
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)decodeDoubleForKey:(id)key
{
  v3 = [(CRCoderUnarchiver *)self currentObjectIDForKey:key];
  result = 0.0;
  if (*(v3 + 12) == 3)
  {
    return v3[5];
  }

  return result;
}

- (int)decodeInt32ForKey:(id)key
{
  v3 = [(CRCoderUnarchiver *)self currentObjectIDForKey:key];
  if (v3)
  {
    if (v3[12] == 1)
    {
      LODWORD(v3) = v3[10];
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  return v3;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  result = [(CRCoderUnarchiver *)self currentObjectIDForKey:key];
  if (result)
  {
    if (*(result + 48) == 1)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (unsigned)decodeUInt32ForKey:(id)key
{
  v3 = [(CRCoderUnarchiver *)self currentObjectIDForKey:key];
  if (v3)
  {
    if (v3[12] == 2)
    {
      LODWORD(v3) = v3[10];
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  return v3;
}

- (unint64_t)decodeUInt64ForKey:(id)key
{
  result = [(CRCoderUnarchiver *)self currentObjectIDForKey:key];
  if (result)
  {
    if (*(result + 48) == 2)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)decodeUUIDFromUUIDIndex:(unint64_t)index
{
  uuidArray = [(CRCoderUnarchiver *)self uuidArray];
  v5 = [uuidArray objectAtIndexedSubscript:index];

  return v5;
}

- (void)addDecoderCompletionHandler:(id)handler dependency:(id)dependency for:(id)for
{
  handlerCopy = handler;
  dependencyCopy = dependency;
  forCopy = for;
  v10 = objc_alloc_init(CRCoderUnarchiverCompletionHandler);
  [(CRCoderUnarchiverCompletionHandler *)v10 setBlock:handlerCopy];
  [(CRCoderUnarchiverCompletionHandler *)v10 setDependency:dependencyCopy];
  [(CRCoderUnarchiverCompletionHandler *)v10 setValue:forCopy];
  completionHandlers = [(CRCoderUnarchiver *)self completionHandlers];
  [completionHandlers addObject:v10];
}

- (void)sortCompletionHandlers
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  completionHandlers = [(CRCoderUnarchiver *)self completionHandlers];
  v5 = [v3 initWithCapacity:{objc_msgSend(completionHandlers, "count")}];

  while (1)
  {
    completionHandlers2 = [(CRCoderUnarchiver *)self completionHandlers];
    v7 = [completionHandlers2 count] == 0;

    if (v7)
    {
      break;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    completionHandlers3 = [(CRCoderUnarchiver *)self completionHandlers];
    v9 = [completionHandlers3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = *v32;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(completionHandlers3);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      dependency = [v12 dependency];
      v14 = dependency == 0;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [completionHandlers3 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (!v9)
        {
LABEL_24:

LABEL_25:
          v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"No topological sort of completion handlers." userInfo:0];
          objc_exception_throw(v26);
        }

        goto LABEL_5;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_25;
    }

    [v5 addObject:v15];
    completionHandlers4 = [(CRCoderUnarchiver *)self completionHandlers];
    [completionHandlers4 removeObject:v15];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    completionHandlers5 = [(CRCoderUnarchiver *)self completionHandlers];
    v18 = [completionHandlers5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(completionHandlers5);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          dependency2 = [v21 dependency];
          value = [v15 value];
          v24 = dependency2 == value;

          if (v24)
          {
            [v21 setDependency:0];
          }
        }

        v18 = [completionHandlers5 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }
  }

  [(CRCoderUnarchiver *)self setCompletionHandlers:v5];

  v25 = *MEMORY[0x1E69E9840];
}

- (unint64_t)indexForKey:(id)key
{
  keyCopy = key;
  keySet = [(CRCoderUnarchiver *)self keySet];
  v6 = [keySet indexOfObject:keyCopy];

  return v6;
}

@end