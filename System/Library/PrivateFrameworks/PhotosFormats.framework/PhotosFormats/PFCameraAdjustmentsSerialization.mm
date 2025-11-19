@interface PFCameraAdjustmentsSerialization
+ (BOOL)deserializeDictionary:(id)a3 toFilters:(id *)a4 portraitMetadata:(id *)a5 error:(id *)a6;
+ (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5;
+ (id)_errorWithMessage:(id)a3 code:(int64_t)a4;
+ (id)deserializedAdjustmentsFromData:(id)a3 error:(id *)a4;
+ (id)serializedDictionaryForFilters:(id)a3 portraitMetadata:(id)a4 error:(id *)a5;
@end

@implementation PFCameraAdjustmentsSerialization

+ (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5
{
  v6 = a4;
  if ([a5 containsObject:@"CIFilter"])
  {
    v7 = [MEMORY[0x1E695F648] filterWithName:v6];
    v8 = objc_opt_class();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

+ (id)_errorWithMessage:(id)a3 code:(int64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a3];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFCameraAdjustmentsSerializationErrorDomain" code:a4 userInfo:v6];

  return v7;
}

+ (BOOL)deserializeDictionary:(id)a3 toFilters:(id *)a4 portraitMetadata:(id *)a5 error:(id *)a6
{
  v50[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (!v10)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_35;
  }

  v12 = [v10 objectForKeyedSubscript:@"version"];
  v13 = [v11 objectForKeyedSubscript:@"filters"];
  v46 = [v11 objectForKeyedSubscript:@"portraitMetadata"];
  if (!v12)
  {
    v14 = @"Missing version";
LABEL_13:
    v18 = a1;
    v19 = -94100;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = @"Version value is wrong type";
    goto LABEL_13;
  }

  if ([v12 isEqualToString:@"0.0"])
  {
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v46)
        {
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_16;
        }

        v14 = @"PortraitMetadata value is wrong type";
      }

      else
      {
        v14 = @"Filters value is wrong type";
      }
    }

    else
    {
      v14 = @"Missing filters";
    }

    goto LABEL_13;
  }

  v19 = -94101;
  v14 = @"Unsupported version";
  v18 = a1;
LABEL_14:
  v15 = [v18 _errorWithMessage:v14 code:v19];
  if (v15)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_31;
  }

LABEL_16:
  context = objc_autoreleasePoolPush();
  v50[0] = objc_opt_class();
  v50[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [MEMORY[0x1E695DFD8] setWithArray:v20];
  v22 = v21 = v13;
  v48 = 0;
  v45 = v21;
  v23 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v21 error:&v48];
  v15 = v48;
  [v23 setDelegate:a1];
  v42 = a1;
  if (v23)
  {
    v17 = [v23 decodeObjectOfClasses:v22 forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Error unarchiving filters, error: %@", v15];
    v24 = v38 = v12;
    [a1 _errorWithMessage:v24 code:-94100];
    v40 = a4;
    v25 = a5;
    v27 = v26 = a6;

    v17 = 0;
    v15 = v27;
    a6 = v26;
    a5 = v25;
    v12 = v38;
    a4 = v40;
  }

  if (!(v17 | v15))
  {
    v15 = [v42 _errorWithMessage:@"No filters could be extracted" code:-94100];
  }

  objc_autoreleasePoolPop(context);
  v16 = 0;
  v28 = v46;
  if (!v46 || v15)
  {
    v13 = v45;
    goto LABEL_32;
  }

  contexta = objc_autoreleasePoolPush();
  v49 = objc_opt_class();
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v29 = [MEMORY[0x1E695DFD8] setWithArray:?];
  v47 = 0;
  v30 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v46 error:&v47];
  v15 = v47;
  if (v30)
  {
    v16 = [v30 decodeObjectOfClasses:v29 forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Error unarchiving portrait metadata, error: %@", v15];
    v32 = v31 = a6;
    v39 = [v42 _errorWithMessage:v32 code:-94100];

    a6 = v31;
    v16 = 0;
    v15 = v39;
  }

  if (!(v16 | v15))
  {
    v15 = [v42 _errorWithMessage:@"No portrait metadata could be extracted" code:-94100];
  }

  objc_autoreleasePoolPop(contexta);
  v13 = v45;
LABEL_31:
  v28 = v46;
LABEL_32:

  if (!v15)
  {
LABEL_35:
    v33 = 1;
    if (!a4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v33 = 0;
  v16 = 0;
  v17 = 0;
  if (a4)
  {
LABEL_36:
    v34 = v17;
    *a4 = v17;
  }

LABEL_37:
  if (a5)
  {
    v35 = v16;
    *a5 = v16;
  }

  if (a6)
  {
    v36 = v15;
    *a6 = v15;
  }

  return v33;
}

+ (id)serializedDictionaryForFilters:(id)a3 portraitMetadata:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v21 = 0;
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v21];
    v11 = v21;
    v12 = 0;
    if (!v10)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to serialize filters, error: %@", v11];
      v12 = [a1 _errorWithMessage:v13 code:-94102];
    }

    if (!v9)
    {
LABEL_9:
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v12)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v12 = [a1 _errorWithMessage:@"Missing filters parameter" code:-94103];
    v10 = 0;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v20 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v20];
LABEL_10:
  v17 = [MEMORY[0x1E695DF90] dictionary];
  [v17 setObject:@"0.0" forKeyedSubscript:@"version"];
  [v17 setObject:v10 forKeyedSubscript:@"filters"];
  [v17 setObject:v14 forKeyedSubscript:@"portraitMetadata"];
  v16 = [v17 copy];

  v12 = 0;
  v15 = v14;
LABEL_11:
  if (a5)
  {
    v18 = v12;
    *a5 = v12;
  }

  return v16;
}

+ (id)deserializedAdjustmentsFromData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E696ACD0];
  v6 = a3;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:a4];

  return v7;
}

@end