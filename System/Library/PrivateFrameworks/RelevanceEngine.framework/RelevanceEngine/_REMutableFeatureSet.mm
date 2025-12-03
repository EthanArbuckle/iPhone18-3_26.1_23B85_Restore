@interface _REMutableFeatureSet
- (_REMutableFeatureSet)initWithCapacity:(unint64_t)capacity;
- (_REMutableFeatureSet)initWithFeature:(id)feature;
- (_REMutableFeatureSet)initWithFeatures:(id)features;
- (id)featureWithName:(id)name;
- (void)addFeature:(id)feature;
- (void)removeAllFeatures;
- (void)removeFeature:(id)feature;
@end

@implementation _REMutableFeatureSet

- (_REMutableFeatureSet)initWithFeatures:(id)features
{
  v31 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(featuresCopy, "count")}];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(featuresCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = featuresCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v10 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if (([v5 containsObject:v12] & 1) == 0)
        {
          name = [v12 name];
          if ([v4 containsObject:name])
          {
            RERaiseInternalException(v10, @"Features as duplicate feature with name %@", v14, v15, v16, v17, v18, v19, name);
          }

          else
          {
            [v4 addObject:name];
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v25.receiver = self;
  v25.super_class = _REMutableFeatureSet;
  v20 = [(REMutableFeatureSet *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_features, v5);
    objc_storeStrong(&v21->_names, v4);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (_REMutableFeatureSet)initWithFeature:(id)feature
{
  featureCopy = feature;
  v13.receiver = self;
  v13.super_class = _REMutableFeatureSet;
  v5 = [(REMutableFeatureSet *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    name = [featureCopy name];
    v8 = [v6 setWithObject:name];
    names = v5->_names;
    v5->_names = v8;

    v10 = [MEMORY[0x277CBEB58] setWithObject:featureCopy];
    features = v5->_features;
    v5->_features = v10;
  }

  return v5;
}

- (_REMutableFeatureSet)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = _REMutableFeatureSet;
  v4 = [(REMutableFeatureSet *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:capacity];
    features = v4->_features;
    v4->_features = v5;

    v7 = [MEMORY[0x277CBEB58] setWithCapacity:capacity];
    names = v4->_names;
    v4->_names = v7;
  }

  return v4;
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
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)addFeature:(id)feature
{
  featureCopy = feature;
  name = [featureCopy name];
  if (([(NSMutableSet *)self->_names containsObject:name]& 1) == 0)
  {
    [(NSMutableSet *)self->_names addObject:name];
    [(NSMutableSet *)self->_features addObject:featureCopy];
  }
}

- (void)removeFeature:(id)feature
{
  featureCopy = feature;
  if ([(_REMutableFeatureSet *)self containsFeature:?])
  {
    name = [featureCopy name];
    [(NSMutableSet *)self->_features removeObject:featureCopy];
    [(NSMutableSet *)self->_names removeObject:name];
  }
}

- (void)removeAllFeatures
{
  [(NSMutableSet *)self->_features removeAllObjects];
  names = self->_names;

  [(NSMutableSet *)names removeAllObjects];
}

@end