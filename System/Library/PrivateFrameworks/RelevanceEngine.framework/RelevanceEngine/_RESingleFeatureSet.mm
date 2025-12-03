@interface _RESingleFeatureSet
- (_RESingleFeatureSet)initWithFeature:(id)feature;
- (_RESingleFeatureSet)initWithFeatures:(id)features;
- (id)allFeatures;
- (id)featureWithName:(id)name;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation _RESingleFeatureSet

- (_RESingleFeatureSet)initWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v5 = [(_RESingleFeatureSet *)self initWithFeature:firstObject];

  return v5;
}

- (_RESingleFeatureSet)initWithFeature:(id)feature
{
  featureCopy = feature;
  if (initWithFeature__onceToken != -1)
  {
    [_RESingleFeatureSet initWithFeature:];
  }

  os_unfair_lock_lock(&initWithFeature__Lock);
  v6 = [initWithFeature__FeatureSetCache objectForKey:featureCopy];
  os_unfair_lock_unlock(&initWithFeature__Lock);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _RESingleFeatureSet;
    v8 = [(REFeatureSet *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_feature, feature);
      os_unfair_lock_lock(&initWithFeature__Lock);
      [initWithFeature__FeatureSetCache setObject:v9 forKey:featureCopy];
      os_unfair_lock_unlock(&initWithFeature__Lock);
    }

    v7 = v9;
    self = v7;
  }

  v10 = v7;

  return v10;
}

- (id)featureWithName:(id)name
{
  feature = self->_feature;
  nameCopy = name;
  name = [(REFeature *)feature name];
  v7 = [name isEqualToString:nameCopy];

  if (v7)
  {
    v8 = self->_feature;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)allFeatures
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = self->_feature;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    return 0;
  }

  result = 1;
  state->var0 = 1;
  state->var1 = &self->_feature;
  state->var2 = &countByEnumeratingWithState_objects_count__mutation_value;
  return result;
}

@end