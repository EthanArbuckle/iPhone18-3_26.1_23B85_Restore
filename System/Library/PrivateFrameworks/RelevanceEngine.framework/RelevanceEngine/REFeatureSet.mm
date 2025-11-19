@interface REFeatureSet
+ (REFeatureSet)featureSetWithFeature:(id)a3;
+ (REFeatureSet)featureSetWithFeatures:(id)a3;
+ (id)featureSet;
- (BOOL)containsFeature:(id)a3;
- (BOOL)intersectsFeatureSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFeatureSet:(id)a3;
- (BOOL)isSubsetOfFeatureSet:(id)a3;
- (NSArray)allFeatures;
- (REFeatureSet)init;
- (REFeatureSet)initWithFeature:(id)a3;
- (REFeatureSet)initWithFeatureSet:(id)a3;
- (REFeatureSet)initWithFeatures:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)featureWithName:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)enumerateFeaturesUsingBlock:(id)a3;
@end

@implementation REFeatureSet

- (REFeatureSet)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = objc_alloc_init(_REFeatureSet);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = REFeatureSet;
    v4 = [(REFeatureSet *)&v7 init];
    self = &v4->super;
  }

  p_super = &v4->super;

  return p_super;
}

- (REFeatureSet)initWithFeatures:(id)a3
{
  v4 = a3;
  v5 = [[_REFeatureSet alloc] initWithFeatures:v4];

  return &v5->super;
}

- (REFeatureSet)initWithFeature:(id)a3
{
  v4 = a3;
  v5 = [[_RESingleFeatureSet alloc] initWithFeature:v4];

  return &v5->super;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REFeatureSet *)self isEqualToFeatureSet:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REFeatureSet allocWithZone:a3];

  return [(REFeatureSet *)v4 initWithFeatureSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [REMutableFeatureSet allocWithZone:a3];

  return [(REFeatureSet *)v4 initWithFeatureSet:self];
}

uint64_t __34___REFeatureSet_initWithFeatures___block_invoke()
{
  v0 = objc_alloc_init(_REEmptyFeatureSet);
  v1 = initWithFeatures__EmptyFeatureSet;
  initWithFeatures__EmptyFeatureSet = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)featureSet
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (REFeatureSet)featureSetWithFeature:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithFeature:v3];

  return v4;
}

+ (REFeatureSet)featureSetWithFeatures:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithFeatures:v3];

  return v4;
}

- (REFeatureSet)initWithFeatureSet:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{*(*(&v14 + 1) + 8 * v10++), v14}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(REFeatureSet *)self initWithFeatures:v5];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)intersectsFeatureSet:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(REFeatureSet *)self count];
  v6 = [(REFeatureSet *)v4 count];
  if (v5 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = self;
  }

  if (v5 < v6)
  {
    self = v4;
  }

  v8 = v7;
  v9 = self;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
  v11 = [(REFeatureSet *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([(REFeatureSet *)v9 containsFeature:*(*(&v16 + 1) + 8 * i), v16])
        {
          LOBYTE(v11) = 1;
          goto LABEL_16;
        }
      }

      v11 = [(REFeatureSet *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)isEqualToFeatureSet:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (v6 = [(REFeatureSet *)self count], v6 == [(REFeatureSet *)v5 count]))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self;
    v8 = [(REFeatureSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![(REFeatureSet *)v5 containsFeature:*(*(&v15 + 1) + 8 * i), v15])
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v9 = [(REFeatureSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isSubsetOfFeatureSet:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (v5 = -[REFeatureSet count](self, "count"), v5 <= [v4 count]))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self;
    v8 = [(REFeatureSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![v4 containsFeature:{*(*(&v14 + 1) + 8 * i), v14}])
          {
            v6 = 0;
            goto LABEL_14;
          }
        }

        v9 = [(REFeatureSet *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)enumerateFeaturesUsingBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self;
  v6 = [(REFeatureSet *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(REFeatureSet *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (NSArray)allFeatures
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[REFeatureSet count](self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self;
  v5 = [(REFeatureSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [(REFeatureSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)count
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)featureWithName:(id)a3
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)containsFeature:(id)a3
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

@end