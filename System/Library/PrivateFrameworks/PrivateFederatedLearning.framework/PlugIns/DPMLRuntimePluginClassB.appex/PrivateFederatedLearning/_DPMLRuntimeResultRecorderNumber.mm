@interface _DPMLRuntimeResultRecorderNumber
+ (BOOL)recordMultipleKeysData:(id)data forBaseKey:(id)key minValue:(int)value maxValue:(int)maxValue numBucket:(unsigned int)bucket metadata:(id)metadata error:(id *)error;
+ (unsigned)findBucketIndexForIntValue:(int)value minValue:(int)minValue maxValue:(int)maxValue numBucket:(unsigned int)bucket;
@end

@implementation _DPMLRuntimeResultRecorderNumber

+ (BOOL)recordMultipleKeysData:(id)data forBaseKey:(id)key minValue:(int)value maxValue:(int)maxValue numBucket:(unsigned int)bucket metadata:(id)metadata error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  metadataCopy = metadata;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = dataCopy;
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
        allKeys = [v18 allKeys];
        v20 = [allKeys countByEnumeratingWithState:&v42 objects:v55 count:16];
        if (v20)
        {
          v21 = v20;
          v34 = v17;
          v22 = *v43;
          obj = allKeys;
          while (2)
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v42 + 1) + 8 * i);
              v25 = [NSString stringWithFormat:@"%@.%@", keyCopy, v24];
              v26 = [v18 objectForKey:v24];
              v27 = objc_opt_class();
              v54 = v26;
              v28 = [NSArray arrayWithObjects:&v54 count:1];
              LOBYTE(v27) = [v27 recordData:v28 forKey:v25 minValue:value maxValue:maxValue numBucket:bucket metadata:metadataCopy error:error];

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

            allKeys = obj;
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

+ (unsigned)findBucketIndexForIntValue:(int)value minValue:(int)minValue maxValue:(int)maxValue numBucket:(unsigned int)bucket
{
  if (value >= minValue)
  {
    v6 = bucket - 1;
    if (value < maxValue)
    {
      v6 = (floor((value - minValue) / ((maxValue - minValue) / (bucket - 2))) + 1.0);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= bucket)
  {
    return bucket - 1;
  }

  else
  {
    return v6;
  }
}

@end