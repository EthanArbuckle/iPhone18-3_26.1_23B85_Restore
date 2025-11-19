@interface CRTextResults
+ (id)linesFromTextFeatures:(id)a3;
- (NSArray)lineFeatures;
@end

@implementation CRTextResults

- (NSArray)lineFeatures
{
  v3 = objc_opt_class();
  v4 = [(CRTextResults *)self textFeatures];
  v5 = [v3 linesFromTextFeatures:v4];

  return v5;
}

+ (id)linesFromTextFeatures:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 type] == 1)
        {
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v10 = [v9 subFeatures];
          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v11)
          {
            v12 = *v16;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v16 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                [v4 addObject:*(*(&v15 + 1) + 8 * j)];
              }

              v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v11);
          }
        }

        else
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

@end