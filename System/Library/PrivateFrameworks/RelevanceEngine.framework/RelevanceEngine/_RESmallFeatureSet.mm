@interface _RESmallFeatureSet
- (BOOL)containsFeature:(id)feature;
- (_RESmallFeatureSet)initWithFeature:(id)feature;
- (_RESmallFeatureSet)initWithFeatures:(id)features;
- (id)allFeatures;
- (id)featureWithName:(id)name;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation _RESmallFeatureSet

- (_RESmallFeatureSet)initWithFeature:(id)feature
{
  v11 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  v4 = MEMORY[0x277CBEA60];
  featureCopy2 = feature;
  v6 = [v4 arrayWithObjects:&featureCopy count:1];

  v7 = [(_RESmallFeatureSet *)self initWithFeatures:v6, featureCopy, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (_RESmallFeatureSet)initWithFeatures:(id)features
{
  featuresCopy = features;
  v14.receiver = self;
  v14.super_class = _RESmallFeatureSet;
  v5 = [(REFeatureSet *)&v14 init];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    while (v7 < [featuresCopy count])
    {
      v8 = [featuresCopy objectAtIndexedSubscript:v7];
      v9 = v5->_features[v7];
      v5->_features[v7] = v8;

      ++v7;
      v6 -= 8;
      if (v7 == 3)
      {
        goto LABEL_9;
      }
    }

    if (v7 <= 2)
    {
      v10 = -v6;
      features = v5->_features;
      do
      {
        v12 = *(features + v10);
        *(features + v10) = 0;

        v10 += 8;
      }

      while (v10 != 24);
    }
  }

LABEL_9:

  return v5;
}

- (unint64_t)count
{
  result = 0;
  features = self->_features;
  do
  {
    if (!features[result])
    {
      break;
    }

    ++result;
  }

  while (result != 3);
  return result;
}

- (id)featureWithName:(id)name
{
  nameCopy = name;
  v5 = 0;
  features = self->_features;
  while (1)
  {
    v7 = features[v5];
    v8 = v7;
    if (!v7)
    {
      break;
    }

    name = [(REFeature *)v7 name];
    v10 = [name isEqualToString:nameCopy];

    if (v10)
    {
      break;
    }

    if (++v5 == 3)
    {
      v8 = 0;
      break;
    }
  }

  return v8;
}

- (BOOL)containsFeature:(id)feature
{
  featureCopy = feature;
  v5 = 0;
  features = self->_features;
  while (1)
  {
    v7 = features[v5];
    if (!v7)
    {
LABEL_6:
      v11 = 0;
      goto LABEL_9;
    }

    v8 = v7;
    v9 = v8;
    if (v8 == featureCopy)
    {
      break;
    }

    v10 = [(REFeature *)v8 isEqual:featureCopy];

    if (v10)
    {
      goto LABEL_8;
    }

    if (++v5 == 3)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v11 = 1;
LABEL_9:

  return v11;
}

- (id)allFeatures
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v4 = 0;
  features = self->_features;
  do
  {
    v6 = features[v4];
    if (!v6)
    {
      break;
    }

    v7 = v6;
    [v3 addObject:v6];

    ++v4;
  }

  while (v4 != 3);
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    return 0;
  }

  state->var0 = 1;
  state->var1 = self->_features;
  state->var2 = &countByEnumeratingWithState_objects_count__mutation_value_65;
  return [(_RESmallFeatureSet *)self count];
}

@end