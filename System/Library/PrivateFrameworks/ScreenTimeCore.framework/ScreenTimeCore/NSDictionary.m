@interface NSDictionary
- (id)orderedDescription;
@end

@implementation NSDictionary

- (id)orderedDescription
{
  v3 = [(NSDictionary *)self allKeys];
  v4 = [v3 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSDictionary *)self objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i), v15];
        v12 = [v11 orderedDescription];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 componentsJoinedByString:&stru_1001AC900];

  return v13;
}

@end