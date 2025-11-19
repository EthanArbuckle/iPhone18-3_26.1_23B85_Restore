@interface PFAdjustmentSerialization
+ (BOOL)validateArchive:(id)a3 containsEntryWithKey:(id)a4 ofType:(Class)a5 errors:(id)a6;
+ (BOOL)validateValue:(id)a3 isOfType:(Class)a4 errors:(id)a5;
+ (id)deserializeAdjustmentsFromData:(id)a3 error:(id *)a4;
+ (id)deserializeDictionaryFromData:(id)a3 error:(id *)a4;
+ (id)serializeAdjustments:(id)a3 error:(id *)a4;
+ (id)serializeDictionary:(id)a3 error:(id *)a4;
@end

@implementation PFAdjustmentSerialization

+ (id)deserializeDictionaryFromData:(id)a3 error:(id *)a4
{
  v13[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v13[0] = 0;
    v6 = [MEMORY[0x1E69C0EB0] decompressData:v5 error:v13];
    v7 = v13[0];
    v8 = v7;
    if (v6)
    {
      v12 = 0;
      v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:&v12];
    }

    else if (a4)
    {
      v10 = v7;
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)serializeDictionary:(id)a3 error:(id *)a4
{
  v11[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 && (v11[0] = 0, [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:v11], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = 0;
    v7 = [MEMORY[0x1E69C0EB0] compressData:v6 error:&v10];
    v8 = v10;
    if (a4 && !v7)
    {
      v8 = v8;
      *a4 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deserializeAdjustmentsFromData:(id)a3 error:(id *)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [a1 deserializeDictionaryFromData:? error:?];
    if (v5)
    {
      v6 = [[PFAdjustmentStack alloc] initWithEnvelopeDictionary:v5];
      v7 = v6;
      if (!a4 || v6)
      {
        goto LABEL_7;
      }

      v8 = objc_opt_new();
      v9 = [PFAdjustmentStack isValidEnvelopeDictionary:v5 errors:v8];
      v10 = MEMORY[0x1E696ABC0];
      v14[0] = @"isValid";
      v11 = [MEMORY[0x1E696AD98] numberWithBool:v9];
      v14[1] = @"errors";
      v15[0] = v11;
      v15[1] = v8;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      *a4 = [v10 errorWithDomain:@"PFAdjustmentErrorDomain" code:4001 userInfo:v12];
    }

    v7 = 0;
LABEL_7:

    goto LABEL_9;
  }

  v7 = objc_opt_new();
LABEL_9:

  return v7;
}

+ (id)serializeAdjustments:(id)a3 error:(id *)a4
{
  v6 = [a3 envelopeDictionary];
  v7 = [a1 serializeDictionary:v6 error:a4];

  return v7;
}

+ (BOOL)validateValue:(id)a3 isOfType:(Class)a4 errors:(id)a5
{
  v15[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v14[0] = @"parameter";
    v14[1] = @"expected";
    v15[0] = @"formatVersion";
    v15[1] = a4;
    v14[2] = @"actual";
    v15[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12 = [v10 errorWithDomain:@"PFAdjustmentErrorDomain" code:2 userInfo:v11];
    [v8 addObject:v12];
  }

  return isKindOfClass & 1;
}

+ (BOOL)validateArchive:(id)a3 containsEntryWithKey:(id)a4 ofType:(Class)a5 errors:(id)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = [a3 objectForKeyedSubscript:v9];
  if (!v11)
  {
    v13 = MEMORY[0x1E696ABC0];
    v22 = @"parameter";
    v23[0] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = v13;
    v16 = 3;
LABEL_6:
    v18 = [v15 errorWithDomain:@"PFAdjustmentErrorDomain" code:v16 userInfo:v14];
    [v10 addObject:v18];

    v12 = 0;
    goto LABEL_7;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v20[0] = @"parameter";
    v20[1] = @"expected";
    v21[0] = @"formatVersion";
    v21[1] = a5;
    v20[2] = @"actual";
    v21[2] = objc_opt_class();
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v15 = v17;
    v16 = 2;
    goto LABEL_6;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

@end