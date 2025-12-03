@interface _DPMLRuntimeResultRecorderBitVector
+ (BOOL)recordData:(id)data forKey:(id)key metadata:(id)metadata error:(id *)error;
+ (BOOL)recordMultipleKeysData:(id)data forBaseKey:(id)key metadata:(id)metadata error:(id *)error;
@end

@implementation _DPMLRuntimeResultRecorderBitVector

+ (BOOL)recordData:(id)data forKey:(id)key metadata:(id)metadata error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  metadataCopy = metadata;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = dataCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v19 = [NSString stringWithFormat:@"Wrong value type for BitVector result: %@", objc_opt_class()];
            *error = [_DPMLRuntimeError errorWithCode:400 description:v19];

            LOBYTE(error) = 0;
          }

          v18 = v12;
          goto LABEL_15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  error = +[_PFLLog extension];
  if (os_log_type_enabled(error, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C2B4(v12);
  }

  v18 = [[_DPBitValueRecorder alloc] initWithKey:keyCopy];
  LOBYTE(error) = [v18 recordBitVectors:v12 metadata:metadataCopy];
LABEL_15:

  return error;
}

+ (BOOL)recordMultipleKeysData:(id)data forBaseKey:(id)key metadata:(id)metadata error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  metadataCopy = metadata;
  v9 = +[_PFLLog extension];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C350(dataCopy);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = dataCopy;
  v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v43;
    v33 = v10;
    v30 = *v43;
    do
    {
      v15 = 0;
      v31 = v12;
      do
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v42 + 1) + 8 * v15);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        allKeys = [v16 allKeys];
        v18 = [allKeys countByEnumeratingWithState:&v38 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v32 = v15;
          obj = allKeys;
          v20 = *v39;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              v23 = [NSString stringWithFormat:@"%@.%@", keyCopy, v22];
              v24 = objc_opt_class();
              v25 = [v16 objectForKeyedSubscript:v22];
              v50 = v25;
              v26 = [NSArray arrayWithObjects:&v50 count:1];
              LOBYTE(v24) = [v24 recordData:v26 forKey:v23 metadata:metadataCopy error:error];

              if ((v24 & 1) == 0)
              {
                v27 = +[_PFLLog extension];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v29 = [v16 objectForKeyedSubscript:v22];
                  *buf = 138412546;
                  v47 = v29;
                  v48 = 2112;
                  v49 = v23;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to record: %@ for key: %@", buf, 0x16u);
                }

                v13 = 0;
                v10 = v33;
                goto LABEL_24;
              }
            }

            v19 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v13 = 1;
          v10 = v33;
          allKeys = obj;
          v14 = v30;
          v12 = v31;
          v15 = v32;
        }

        v15 = v15 + 1;
      }

      while (v15 != v12);
      v12 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

LABEL_24:

  return v13 & 1;
}

@end