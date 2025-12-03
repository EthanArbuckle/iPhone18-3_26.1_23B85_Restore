@interface VUIDebugMetricsImpression
- (NSString)identifier;
- (NSString)impressionId;
- (NSString)impressionIndex;
- (NSString)name;
- (NSString)parentId;
- (VUIDebugMetricsImpression)initWithDictionary:(id)dictionary;
@end

@implementation VUIDebugMetricsImpression

- (VUIDebugMetricsImpression)initWithDictionary:(id)dictionary
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = VUIDebugMetricsImpression;
  v5 = [(VUIDebugMetricsImpression *)&v35 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = [&unk_1F5E5EB98 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(&unk_1F5E5EB98);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = [dictionaryCopy objectForKeyedSubscript:v11];
          [v6 setObject:v12 forKeyedSubscript:v11];
        }

        v8 = [&unk_1F5E5EB98 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&v5->_mainValues, v6);
    allKeys = [dictionaryCopy allKeys];
    v14 = [allKeys mutableCopy];

    [v14 removeObjectsInArray:&unk_1F5E5EB98];
    v15 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          v22 = [dictionaryCopy objectForKeyedSubscript:{v21, v27}];
          [(NSDictionary *)v15 setObject:v22 forKeyedSubscript:v21];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v18);
    }

    otherValues = v5->_otherValues;
    v5->_otherValues = v15;
    v24 = v15;

    [(NSArray *)v16 sortUsingSelector:sel_compare_];
    orderedOtherKeys = v5->_orderedOtherKeys;
    v5->_orderedOtherKeys = v16;
  }

  return v5;
}

- (NSString)name
{
  v2 = [(NSDictionary *)self->_mainValues objectForKeyedSubscript:@"name"];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  return v3;
}

- (NSString)identifier
{
  v2 = [(NSDictionary *)self->_mainValues objectForKeyedSubscript:@"id"];
  v3 = [v2 description];

  return v3;
}

- (NSString)impressionId
{
  v2 = [(NSDictionary *)self->_mainValues objectForKeyedSubscript:@"impressionId"];
  v3 = [v2 description];

  return v3;
}

- (NSString)impressionIndex
{
  v2 = [(NSDictionary *)self->_mainValues objectForKeyedSubscript:@"impressionIndex"];
  v3 = [v2 description];

  return v3;
}

- (NSString)parentId
{
  v2 = [(NSDictionary *)self->_mainValues objectForKeyedSubscript:@"impressionParentId"];
  v3 = [v2 description];

  return v3;
}

@end