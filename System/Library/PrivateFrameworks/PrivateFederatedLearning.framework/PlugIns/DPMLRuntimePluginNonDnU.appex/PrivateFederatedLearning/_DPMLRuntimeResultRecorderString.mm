@interface _DPMLRuntimeResultRecorderString
+ (BOOL)recordData:(id)data forKey:(id)key metadata:(id)metadata error:(id *)error;
@end

@implementation _DPMLRuntimeResultRecorderString

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
            v19 = [NSString stringWithFormat:@"Wrong value type for String result: %@", objc_opt_class()];
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
    sub_10001C68C(v12, keyCopy, error);
  }

  v18 = [[_DPStringRecorder alloc] initWithKey:keyCopy];
  LOBYTE(error) = [v18 record:v12 metadata:metadataCopy];
LABEL_15:

  return error;
}

@end