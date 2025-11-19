@interface PGConsistencyUtility
+ (BOOL)properties:(id)a3 areConsistentWithProperties:(id)a4 toleranceFactor:(int64_t)a5;
@end

@implementation PGConsistencyUtility

+ (BOOL)properties:(id)a3 areConsistentWithProperties:(id)a4 toleranceFactor:(int64_t)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 allKeys];
  v9 = [v7 allKeys];
  if ([v8 isEqualToArray:v9])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v30 = v9;
      v31 = v8;
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
          v17 = [v6 objectForKeyedSubscript:v15];
          v18 = [v7 objectForKeyedSubscript:v15];
          v19 = [v17 dataType];
          v20 = [v18 dataType];
          if (v19 == 2 && v20 == 2)
          {
            v22 = v18;
            [v17 value];
            v24 = v23;
            [v22 value];
            v26 = v25;

            if (![PGConsistencyUtility _doubleValue:a5 isEqualTo:v24 toleranceFactor:v26])
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
      v9 = v30;
      v8 = v31;
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