@interface SVDCapability
- (BOOL)matchesCapabilityDescriptions:(id)a3;
- (SVDCapability)initWithCoder:(id)a3;
- (id)key;
@end

@implementation SVDCapability

- (SVDCapability)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SVDCapability;
  return [(SVDCapability *)&v4 init];
}

- (BOOL)matchesCapabilityDescriptions:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    p_cache = SVDCapability.cache;
    do
    {
      v9 = 0;
      v29 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = [v10 key];
        v12 = [v10 valueSet];
        v13 = objc_alloc((p_cache + 56));
        v14 = v13;
        if (v12)
        {
          v15 = [v13 initWithKey:v11 valueSet:v12];
        }

        else
        {
          [v10 valueRangeLowerBound];
          v16 = v7;
          v17 = v4;
          v19 = v18 = p_cache;
          [v19 doubleValue];
          v21 = v20;
          v22 = [v10 valueRangeUpperBound];
          [v22 doubleValue];
          v15 = [v14 initWithKey:v11 lowerbound:v21 upperbound:v23];

          p_cache = v18;
          v4 = v17;
          v7 = v16;
          v6 = v29;
        }

        [v4 addObject:v15];

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }

  v24 = [(SVDCapability *)self _swiftBacking];
  if ([v24 conformsToProtocol:&unk_287A5C698])
  {
    v25 = [v24 matchesWithDescriptions:v4];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)key
{
  v2 = [(SVDCapability *)self _swiftBacking];
  v3 = [v2 key];

  return v3;
}

@end