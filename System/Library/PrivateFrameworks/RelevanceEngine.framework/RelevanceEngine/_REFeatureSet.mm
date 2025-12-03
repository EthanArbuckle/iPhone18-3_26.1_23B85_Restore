@interface _REFeatureSet
- (_REFeatureSet)initWithFeature:(id)feature;
- (_REFeatureSet)initWithFeatures:(id)features;
- (id)featureWithName:(id)name;
@end

@implementation _REFeatureSet

- (_REFeatureSet)initWithFeatures:(id)features
{
  v38 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  if (![featuresCopy count])
  {
    if (initWithFeatures__onceToken != -1)
    {
      [_REFeatureSet initWithFeatures:];
    }

    v8 = initWithFeatures__EmptyFeatureSet;
    goto LABEL_9;
  }

  if ([featuresCopy count] == 1)
  {
    v5 = [_RESingleFeatureSet alloc];
    firstObject = [featuresCopy firstObject];
    selfCopy2 = [(_RESingleFeatureSet *)v5 initWithFeature:firstObject];

    goto LABEL_25;
  }

  if ([featuresCopy count] <= 3)
  {
    v8 = [[_RESmallFeatureSet alloc] initWithFeatures:featuresCopy];
LABEL_9:
    selfCopy2 = v8;
    goto LABEL_25;
  }

  selfCopy = self;
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = featuresCopy;
  v11 = featuresCopy;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    v15 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if (([v10 containsObject:v17] & 1) == 0)
        {
          name = [v17 name];
          if ([v9 containsObject:name])
          {
            RERaiseInternalException(v15, @"Features as duplicate feature with name %@", v19, v20, v21, v22, v23, v24, name);
          }

          else
          {
            [v9 addObject:name];
            [v10 addObject:v17];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v32.receiver = selfCopy;
  v32.super_class = _REFeatureSet;
  v25 = [(REFeatureSet *)&v32 init];
  if (v25)
  {
    v26 = [v10 copy];
    features = v25->_features;
    v25->_features = v26;
  }

  self = v25;

  selfCopy2 = self;
  featuresCopy = v31;
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

- (_REFeatureSet)initWithFeature:(id)feature
{
  v11 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v4 = MEMORY[0x277CBEA60];
  featureCopy2 = feature;
  v6 = [v4 arrayWithObjects:&featureCopy count:1];

  v7 = [(_REFeatureSet *)self initWithFeatures:v6, featureCopy, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)featureWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_features;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end