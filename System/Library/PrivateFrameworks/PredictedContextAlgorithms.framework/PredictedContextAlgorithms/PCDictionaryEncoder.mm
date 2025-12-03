@interface PCDictionaryEncoder
+ (id)decodeToDictionary:(id)dictionary;
+ (id)encodeDictionary:(id)dictionary;
@end

@implementation PCDictionaryEncoder

+ (id)encodeDictionary:(id)dictionary
{
  v13 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:0 error:&v10];
    v5 = v10;
    if (v5 || !v4)
    {
      v7 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_ERROR, "Error when serialization to json, %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)decodeToDictionary:(id)dictionary
{
  v13 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dictionaryCopy options:0 error:&v10];
    v5 = v10;
    if (v5 || !v4)
    {
      v7 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_DEBUG, "Error when serialization to dictionary, %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end