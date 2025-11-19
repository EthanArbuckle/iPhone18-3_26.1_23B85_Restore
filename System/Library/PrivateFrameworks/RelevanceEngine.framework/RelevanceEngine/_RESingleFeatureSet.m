@interface _RESingleFeatureSet
- (_RESingleFeatureSet)initWithFeature:(id)a3;
- (_RESingleFeatureSet)initWithFeatures:(id)a3;
- (id)allFeatures;
- (id)featureWithName:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation _RESingleFeatureSet

- (_RESingleFeatureSet)initWithFeatures:(id)a3
{
  v4 = [a3 firstObject];
  v5 = [(_RESingleFeatureSet *)self initWithFeature:v4];

  return v5;
}

- (_RESingleFeatureSet)initWithFeature:(id)a3
{
  v5 = a3;
  if (initWithFeature__onceToken != -1)
  {
    [_RESingleFeatureSet initWithFeature:];
  }

  os_unfair_lock_lock(&initWithFeature__Lock);
  v6 = [initWithFeature__FeatureSetCache objectForKey:v5];
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
      objc_storeStrong(&v8->_feature, a3);
      os_unfair_lock_lock(&initWithFeature__Lock);
      [initWithFeature__FeatureSetCache setObject:v9 forKey:v5];
      os_unfair_lock_unlock(&initWithFeature__Lock);
    }

    v7 = v9;
    self = v7;
  }

  v10 = v7;

  return v10;
}

- (id)featureWithName:(id)a3
{
  feature = self->_feature;
  v5 = a3;
  v6 = [(REFeature *)feature name];
  v7 = [v6 isEqualToString:v5];

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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  result = 1;
  a3->var0 = 1;
  a3->var1 = &self->_feature;
  a3->var2 = &countByEnumeratingWithState_objects_count__mutation_value;
  return result;
}

@end