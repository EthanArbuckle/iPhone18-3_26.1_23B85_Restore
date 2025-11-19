@interface CRCoderUnarchiver
+ (id)decodedDocumentFromData:(id)a3 replica:(id)a4;
- (BOOL)willModifySelfInInitForClass:(Class)a3;
- (const)currentObjectIDForKey:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (id)allocedObjectAtIndex:(unint64_t)a3 outNeedsInit:(BOOL *)a4;
- (id)decodeDocumentFromData:(id)a3 replica:(id)a4;
- (id)decodeObjectForKey:(id)a3;
- (id)decodeObjectForProtobufObjectID:(const void *)a3;
- (id)decodeStringForKey:(id)a3;
- (id)decodeUUIDForKey:(id)a3;
- (id)decodeUUIDFromUUIDIndex:(unint64_t)a3;
- (int)decodeInt32ForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (unint64_t)decodeUInt64ForKey:(id)a3;
- (unint64_t)indexForKey:(id)a3;
- (unsigned)decodeUInt32ForKey:(id)a3;
- (void)addDecoderCompletionHandler:(id)a3 dependency:(id)a4 for:(id)a5;
- (void)sortCompletionHandlers;
@end

@implementation CRCoderUnarchiver

+ (id)decodedDocumentFromData:(id)a3 replica:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CRCoderUnarchiver);
  v8 = [(CRCoderUnarchiver *)v7 decodeDocumentFromData:v5 replica:v6];

  return v8;
}

- (BOOL)willModifySelfInInitForClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [(objc_class *)a3 isSubclassOfClass:v5];
}

- (id)allocedObjectAtIndex:(unint64_t)a3 outNeedsInit:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 1;
  }

  if (*([(CRCoderUnarchiver *)self currentDocument]+ 64) <= a3)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = [(CRCoderUnarchiver *)self allocedDocObjects];
    v8 = [v7 count];

    v9 = [(CRCoderUnarchiver *)self allocedDocObjects];
    v10 = v9;
    if (v8 > a3)
    {
      break;
    }

    v11 = [MEMORY[0x1E695DFB0] null];
    [v10 addObject:v11];
  }

  v12 = [v9 objectAtIndexedSubscript:a3];

  v13 = [MEMORY[0x1E695DFB0] null];

  if (v12 != v13)
  {
    v14 = v12;
    goto LABEL_20;
  }

  v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(([(CRCoderUnarchiver *)self currentDocument]+ 56), a3);
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
  v22 = [(CRCoderUnarchiver *)self typeSetForDecoding];
  v23 = [v22 objectAtIndex:v21];

  v24 = [(CRCoder *)self typeToClassDict];
  v25 = [v24 objectForKeyedSubscript:v23];

  if ([(CRCoderUnarchiver *)self willModifySelfInInitForClass:v25])
  {
    if (a4)
    {
      *a4 = 0;
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
    v20 = [(CRCoderUnarchiver *)self allocedDocObjects];
    [v20 setObject:v14 atIndexedSubscript:a3];
  }

LABEL_20:

  return v14;
}

- (id)decodeDocumentFromData:(id)a3 replica:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CRCoderUnarchiver *)self setReplica:a4];
  operator new();
}

- (const)currentObjectIDForKey:(id)a3
{
  v4 = a3;
  if (*([(CRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13 || ((v5 = [(CRCoderUnarchiver *)self currentDocObjectForDecodingPtr], *(v5 + 12) != 13) ? (v6 = CRDT::Document_CustomObject::default_instance(v5)) : (v6 = v5[5]), (v7 = [(CRCoderUnarchiver *)self indexForKey:v4], v8 = v7, v7 == 0x7FFFFFFFFFFFFFFFLL) || *(v6 + 48) < 1))
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

- (id)decodeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRCoderUnarchiver *)self currentObjectIDForKey:v4];
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

- (id)decodeObjectForProtobufObjectID:(const void *)a3
{
  if (*(a3 + 12) == 6)
  {
    v5 = [(CRCoderUnarchiver *)self allocedObjectAtIndex:*(a3 + 10) outNeedsInit:0, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)decodeStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRCoderUnarchiver *)self currentObjectIDForKey:v4];
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

- (id)decodeUUIDForKey:(id)a3
{
  v3 = [(CRCoderUnarchiver *)self decodeStringForKey:a3];
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

- (double)decodeDoubleForKey:(id)a3
{
  v3 = [(CRCoderUnarchiver *)self currentObjectIDForKey:a3];
  result = 0.0;
  if (*(v3 + 12) == 3)
  {
    return v3[5];
  }

  return result;
}

- (int)decodeInt32ForKey:(id)a3
{
  v3 = [(CRCoderUnarchiver *)self currentObjectIDForKey:a3];
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

- (int64_t)decodeInt64ForKey:(id)a3
{
  result = [(CRCoderUnarchiver *)self currentObjectIDForKey:a3];
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

- (unsigned)decodeUInt32ForKey:(id)a3
{
  v3 = [(CRCoderUnarchiver *)self currentObjectIDForKey:a3];
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

- (unint64_t)decodeUInt64ForKey:(id)a3
{
  result = [(CRCoderUnarchiver *)self currentObjectIDForKey:a3];
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

- (id)decodeUUIDFromUUIDIndex:(unint64_t)a3
{
  v4 = [(CRCoderUnarchiver *)self uuidArray];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (void)addDecoderCompletionHandler:(id)a3 dependency:(id)a4 for:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(CRCoderUnarchiverCompletionHandler);
  [(CRCoderUnarchiverCompletionHandler *)v10 setBlock:v12];
  [(CRCoderUnarchiverCompletionHandler *)v10 setDependency:v8];
  [(CRCoderUnarchiverCompletionHandler *)v10 setValue:v9];
  v11 = [(CRCoderUnarchiver *)self completionHandlers];
  [v11 addObject:v10];
}

- (void)sortCompletionHandlers
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(CRCoderUnarchiver *)self completionHandlers];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  while (1)
  {
    v6 = [(CRCoderUnarchiver *)self completionHandlers];
    v7 = [v6 count] == 0;

    if (v7)
    {
      break;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [(CRCoderUnarchiver *)self completionHandlers];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      v13 = [v12 dependency];
      v14 = v13 == 0;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
    v16 = [(CRCoderUnarchiver *)self completionHandlers];
    [v16 removeObject:v15];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(CRCoderUnarchiver *)self completionHandlers];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v21 dependency];
          v23 = [v15 value];
          v24 = v22 == v23;

          if (v24)
          {
            [v21 setDependency:0];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }
  }

  [(CRCoderUnarchiver *)self setCompletionHandlers:v5];

  v25 = *MEMORY[0x1E69E9840];
}

- (unint64_t)indexForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRCoderUnarchiver *)self keySet];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

@end