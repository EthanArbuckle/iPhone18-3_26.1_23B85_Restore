@interface PGAssetCollectionFeatureProvider
- (BOOL)isEqual:(id)a3;
- (PGAssetCollectionFeatureProvider)initWithCoder:(id)a3;
- (PGAssetCollectionFeatureProvider)initWithFeatureSpecifications:(id)a3;
- (id)description;
- (id)featureInstancesWithMomentNode:(id)a3 atMomentIngest:(BOOL)a4;
@end

@implementation PGAssetCollectionFeatureProvider

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CBEB98] setWithArray:self->_featureSpecifications];
      v6 = MEMORY[0x277CBEB98];
      v7 = [(PGAssetCollectionFeatureProvider *)v4 featureSpecifications];
      v8 = [v6 setWithArray:v7];

      v9 = [v5 isEqualToSet:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = PGAssetCollectionFeatureProvider;
  v4 = [(PGAssetCollectionFeatureProvider *)&v8 description];
  v5 = [(NSArray *)self->_featureSpecifications description];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (PGAssetCollectionFeatureProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"featureSpecifications"];

  v6 = [(PGAssetCollectionFeatureProvider *)self initWithFeatureSpecifications:v5];
  return v6;
}

- (id)featureInstancesWithMomentNode:(id)a3 atMomentIngest:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_featureSpecifications;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 shouldRunAtMomentIngest] == v4)
        {
          v14 = [v13 instanceWithMomentNode:v6];
          if (v14)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (PGAssetCollectionFeatureProvider)initWithFeatureSpecifications:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGAssetCollectionFeatureProvider;
  v6 = [(PGAssetCollectionFeatureProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureSpecifications, a3);
  }

  return v7;
}

@end