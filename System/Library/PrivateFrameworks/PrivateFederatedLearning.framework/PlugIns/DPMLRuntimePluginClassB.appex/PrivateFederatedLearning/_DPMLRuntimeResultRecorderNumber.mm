@interface _DPMLRuntimeResultRecorderNumber
+ (BOOL)recordMultipleKeysData:(id)a3 forBaseKey:(id)a4 minValue:(int)a5 maxValue:(int)a6 numBucket:(unsigned int)a7 metadata:(id)a8 error:(id *)a9;
+ (unsigned)findBucketIndexForIntValue:(int)a3 minValue:(int)a4 maxValue:(int)a5 numBucket:(unsigned int)a6;
@end

@implementation _DPMLRuntimeResultRecorderNumber

+ (BOOL)recordMultipleKeysData:(id)a3 forBaseKey:(id)a4 minValue:(int)a5 maxValue:(int)a6 numBucket:(unsigned int)a7 metadata:(id)a8 error:(id *)a9
{
  v11 = a3;
  v41 = a4;
  v40 = a8;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v47;
    v35 = v12;
    v32 = *v47;
    do
    {
      v17 = 0;
      v33 = v14;
      do
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v46 + 1) + 8 * v17);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v19 = [v18 allKeys];
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v20)
        {
          v21 = v20;
          v34 = v17;
          v22 = *v43;
          obj = v19;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              v25 = [NSString stringWithFormat:@"%@.%@", v41, v24];
              v26 = [v18 objectForKey:v24];
              v27 = objc_opt_class();
              v54 = v26;
              v28 = [NSArray arrayWithObjects:&v54 count:1];
              LOBYTE(v27) = [v27 recordData:v28 forKey:v25 minValue:a5 maxValue:a6 numBucket:a7 metadata:v40 error:a9];

              if ((v27 & 1) == 0)
              {
                v29 = +[_PFLLog extension];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v31 = [v18 objectForKeyedSubscript:v24];
                  *buf = 138412546;
                  v51 = v31;
                  v52 = 2112;
                  v53 = v25;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to record: %@ for key: %@", buf, 0x16u);
                }

                v15 = 0;
                v12 = v35;
                goto LABEL_22;
              }
            }

            v19 = obj;
            v21 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }

          v15 = 1;
          v17 = v34;
          v12 = v35;
          v16 = v32;
          v14 = v33;
        }

        v17 = v17 + 1;
      }

      while (v17 != v14);
      v14 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  return v15 & 1;
}

+ (unsigned)findBucketIndexForIntValue:(int)a3 minValue:(int)a4 maxValue:(int)a5 numBucket:(unsigned int)a6
{
  if (a3 >= a4)
  {
    v6 = a6 - 1;
    if (a3 < a5)
    {
      v6 = (floor((a3 - a4) / ((a5 - a4) / (a6 - 2))) + 1.0);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= a6)
  {
    return a6 - 1;
  }

  else
  {
    return v6;
  }
}

@end