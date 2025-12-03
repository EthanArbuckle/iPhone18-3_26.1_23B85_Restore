@interface PGConsistencyUtility
+ (BOOL)properties:(id)properties areConsistentWithProperties:(id)withProperties toleranceFactor:(int64_t)factor;
@end

@implementation PGConsistencyUtility

+ (BOOL)properties:(id)properties areConsistentWithProperties:(id)withProperties toleranceFactor:(int64_t)factor
{
  v38 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  withPropertiesCopy = withProperties;
  allKeys = [propertiesCopy allKeys];
  allKeys2 = [withPropertiesCopy allKeys];
  if ([allKeys isEqualToArray:allKeys2])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = allKeys;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v30 = allKeys2;
      v31 = allKeys;
      v13 = *v34;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [propertiesCopy objectForKeyedSubscript:v15];
          v18 = [withPropertiesCopy objectForKeyedSubscript:v15];
          dataType = [v17 dataType];
          dataType2 = [v18 dataType];
          if (dataType == 2 && dataType2 == 2)
          {
            v22 = v18;
            [v17 value];
            v24 = v23;
            [v22 value];
            v26 = v25;

            if (![PGConsistencyUtility _doubleValue:factor isEqualTo:v24 toleranceFactor:v26])
            {
              v18 = v22;
LABEL_20:

              objc_autoreleasePoolPop(v16);
              v27 = 0;
              goto LABEL_21;
            }
          }

          else if (![v17 isEqual:v18])
          {
            goto LABEL_20;
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v27 = 1;
LABEL_21:
      allKeys2 = v30;
      allKeys = v31;
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

@end