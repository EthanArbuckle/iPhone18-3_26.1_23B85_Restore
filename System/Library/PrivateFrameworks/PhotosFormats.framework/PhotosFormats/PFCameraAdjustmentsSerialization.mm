@interface PFCameraAdjustmentsSerialization
+ (BOOL)deserializeDictionary:(id)dictionary toFilters:(id *)filters portraitMetadata:(id *)metadata error:(id *)error;
+ (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
+ (id)_errorWithMessage:(id)message code:(int64_t)code;
+ (id)deserializedAdjustmentsFromData:(id)data error:(id *)error;
+ (id)serializedDictionaryForFilters:(id)filters portraitMetadata:(id)metadata error:(id *)error;
@end

@implementation PFCameraAdjustmentsSerialization

+ (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  nameCopy = name;
  if ([classes containsObject:@"CIFilter"])
  {
    v7 = [MEMORY[0x1E695F648] filterWithName:nameCopy];
    v8 = objc_opt_class();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

+ (id)_errorWithMessage:(id)message code:(int64_t)code
{
  v10[1] = *MEMORY[0x1E69E9840];
  message = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", message];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = message;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFCameraAdjustmentsSerializationErrorDomain" code:code userInfo:v6];

  return v7;
}

+ (BOOL)deserializeDictionary:(id)dictionary toFilters:(id *)filters portraitMetadata:(id *)metadata error:(id *)error
{
  v50[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v11 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_35;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  v13 = [v11 objectForKeyedSubscript:@"filters"];
  v46 = [v11 objectForKeyedSubscript:@"portraitMetadata"];
  if (!v12)
  {
    v14 = @"Missing version";
LABEL_13:
    selfCopy2 = self;
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
  selfCopy2 = self;
LABEL_14:
  v15 = [selfCopy2 _errorWithMessage:v14 code:v19];
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
  [v23 setDelegate:self];
  selfCopy3 = self;
  if (v23)
  {
    v17 = [v23 decodeObjectOfClasses:v22 forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Error unarchiving filters, error: %@", v15];
    v24 = v38 = v12;
    [self _errorWithMessage:v24 code:-94100];
    filtersCopy = filters;
    metadataCopy = metadata;
    v27 = v26 = error;

    v17 = 0;
    v15 = v27;
    error = v26;
    metadata = metadataCopy;
    v12 = v38;
    filters = filtersCopy;
  }

  if (!(v17 | v15))
  {
    v15 = [selfCopy3 _errorWithMessage:@"No filters could be extracted" code:-94100];
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
    v32 = v31 = error;
    v39 = [selfCopy3 _errorWithMessage:v32 code:-94100];

    error = v31;
    v16 = 0;
    v15 = v39;
  }

  if (!(v16 | v15))
  {
    v15 = [selfCopy3 _errorWithMessage:@"No portrait metadata could be extracted" code:-94100];
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
    if (!filters)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v33 = 0;
  v16 = 0;
  v17 = 0;
  if (filters)
  {
LABEL_36:
    v34 = v17;
    *filters = v17;
  }

LABEL_37:
  if (metadata)
  {
    v35 = v16;
    *metadata = v16;
  }

  if (error)
  {
    v36 = v15;
    *error = v15;
  }

  return v33;
}

+ (id)serializedDictionaryForFilters:(id)filters portraitMetadata:(id)metadata error:(id *)error
{
  filtersCopy = filters;
  metadataCopy = metadata;
  if (filtersCopy)
  {
    v21 = 0;
    v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:filtersCopy requiringSecureCoding:1 error:&v21];
    v11 = v21;
    v12 = 0;
    if (!v10)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to serialize filters, error: %@", v11];
      v12 = [self _errorWithMessage:v13 code:-94102];
    }

    if (!metadataCopy)
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
    v12 = [self _errorWithMessage:@"Missing filters parameter" code:-94103];
    v10 = 0;
    if (!metadataCopy)
    {
      goto LABEL_9;
    }
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v20 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:metadataCopy requiringSecureCoding:1 error:&v20];
LABEL_10:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"0.0" forKeyedSubscript:@"version"];
  [dictionary setObject:v10 forKeyedSubscript:@"filters"];
  [dictionary setObject:v14 forKeyedSubscript:@"portraitMetadata"];
  v16 = [dictionary copy];

  v12 = 0;
  v15 = v14;
LABEL_11:
  if (error)
  {
    v18 = v12;
    *error = v12;
  }

  return v16;
}

+ (id)deserializedAdjustmentsFromData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v7;
}

@end