@interface _DPMLRuntimeResultRecorderString
+ (BOOL)recordData:(id)a3 forKey:(id)a4 metadata:(id)a5 error:(id *)a6;
@end

@implementation _DPMLRuntimeResultRecorderString

+ (BOOL)recordData:(id)a3 forKey:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v9;
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
          if (a6)
          {
            v19 = [NSString stringWithFormat:@"Wrong value type for String result: %@", objc_opt_class()];
            *a6 = [_DPMLRuntimeError errorWithCode:400 description:v19];

            LOBYTE(a6) = 0;
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

  a6 = +[_PFLLog extension];
  if (os_log_type_enabled(a6, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C3EC(v12, v10, a6);
  }

  v18 = [[_DPStringRecorder alloc] initWithKey:v10];
  LOBYTE(a6) = [v18 record:v12 metadata:v11];
LABEL_15:

  return a6;
}

@end