@interface REFeatureSet
+ (REFeatureSet)featureSetWithFeature:(id)feature;
+ (REFeatureSet)featureSetWithFeatures:(id)features;
+ (id)featureSet;
- (BOOL)containsFeature:(id)feature;
- (BOOL)intersectsFeatureSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFeatureSet:(id)set;
- (BOOL)isSubsetOfFeatureSet:(id)set;
- (NSArray)allFeatures;
- (REFeatureSet)init;
- (REFeatureSet)initWithFeature:(id)feature;
- (REFeatureSet)initWithFeatureSet:(id)set;
- (REFeatureSet)initWithFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)featureWithName:(id)name;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)enumerateFeaturesUsingBlock:(id)block;
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

- (REFeatureSet)initWithFeatures:(id)features
{
  featuresCopy = features;
  v5 = [[_REFeatureSet alloc] initWithFeatures:featuresCopy];

  return &v5->super;
}

- (REFeatureSet)initWithFeature:(id)feature
{
  featureCopy = feature;
  v5 = [[_RESingleFeatureSet alloc] initWithFeature:featureCopy];

  return &v5->super;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(REFeatureSet *)self isEqualToFeatureSet:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REFeatureSet allocWithZone:zone];

  return [(REFeatureSet *)v4 initWithFeatureSet:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [REMutableFeatureSet allocWithZone:zone];

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

+ (REFeatureSet)featureSetWithFeature:(id)feature
{
  featureCopy = feature;
  v4 = [objc_alloc(objc_opt_class()) initWithFeature:featureCopy];

  return v4;
}

+ (REFeatureSet)featureSetWithFeatures:(id)features
{
  featuresCopy = features;
  v4 = [objc_alloc(objc_opt_class()) initWithFeatures:featuresCopy];

  return v4;
}

- (REFeatureSet)initWithFeatureSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = setCopy;
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

        [array addObject:{*(*(&v14 + 1) + 8 * v10++), v14}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(REFeatureSet *)self initWithFeatures:array];
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)intersectsFeatureSet:(id)set
{
  v21 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = [(REFeatureSet *)self count];
  v6 = [(REFeatureSet *)setCopy count];
  if (v5 >= v6)
  {
    selfCopy = setCopy;
  }

  else
  {
    selfCopy = self;
  }

  if (v5 < v6)
  {
    self = setCopy;
  }

  v8 = selfCopy;
  selfCopy2 = self;
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

        if ([(REFeatureSet *)selfCopy2 containsFeature:*(*(&v16 + 1) + 8 * i), v16])
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

- (BOOL)isEqualToFeatureSet:(id)set
{
  v20 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = setCopy;
  if (self == setCopy)
  {
    v12 = 1;
  }

  else if (setCopy && (v6 = [(REFeatureSet *)self count], v6 == [(REFeatureSet *)v5 count]))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    selfCopy = self;
    v8 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          if (![(REFeatureSet *)v5 containsFeature:*(*(&v15 + 1) + 8 * i), v15])
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v9 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)isSubsetOfFeatureSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (setCopy && (v5 = -[REFeatureSet count](self, "count"), v5 <= [setCopy count]))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    selfCopy = self;
    v8 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(selfCopy);
          }

          if (![setCopy containsFeature:{*(*(&v14 + 1) + 8 * i), v14}])
          {
            v6 = 0;
            goto LABEL_14;
          }
        }

        v9 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)enumerateFeaturesUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
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
        objc_enumerationMutation(selfCopy);
      }

      blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9), &v15);
      if (v15)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
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
  selfCopy = self;
  v5 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(selfCopy);
        }

        [v3 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [(REFeatureSet *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)featureWithName:(id)name
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)containsFeature:(id)feature
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  OUTLINED_FUNCTION_1_4();
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  NSRequestConcreteImplementation();
  return 0;
}

@end