@interface _RETransformedFeature
- (BOOL)isEqual:(id)equal;
- (_RETransformedFeature)initWithTransformer:(id)transformer features:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_computeHash;
- (void)_replaceDependentFeature:(id)feature withFeature:(id)withFeature;
@end

@implementation _RETransformedFeature

- (_RETransformedFeature)initWithTransformer:(id)transformer features:(id)features
{
  v30 = *MEMORY[0x277D85DE8];
  transformerCopy = transformer;
  featuresCopy = features;
  v28.receiver = self;
  v28.super_class = _RETransformedFeature;
  v8 = [(_RETransformedFeature *)&v28 init];
  if (v8)
  {
    if (([objc_opt_class() supportsInvalidation] & 1) != 0 || objc_msgSend(objc_opt_class(), "supportsPersistence"))
    {
      v9 = [transformerCopy copy];

      transformerCopy = v9;
    }

    objc_storeStrong(&v8->_transformer, transformerCopy);
    v10 = [REFeatureSet featureSetWithFeatures:featuresCopy];
    features = v8->_features;
    v8->_features = v10;

    string = [MEMORY[0x277CCAB68] string];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = featuresCopy;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          name = [*(*(&v24 + 1) + 8 * v17) name];
          [string appendString:name];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }

    name2 = [transformerCopy name];
    [string appendString:name2];

    v20 = [string copy];
    name = v8->_name;
    v8->_name = v20;

    [(_RETransformedFeature *)v8 _computeHash];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      transformer = v5->_transformer;
      v7 = self->_transformer;
      v8 = v7;
      if (v7 == transformer)
      {
      }

      else
      {
        v9 = [(REFeatureTransformer *)v7 isEqual:transformer];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      features = self->_features;
      v12 = v5->_features;
      v13 = features;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(REFeatureSet *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (void)_replaceDependentFeature:(id)feature withFeature:(id)withFeature
{
  withFeatureCopy = withFeature;
  featureCopy = feature;
  name = [featureCopy name];
  name2 = [withFeatureCopy name];
  v9 = [name isEqualToString:name2];

  if ((v9 & 1) == 0)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"This API is only meant to switch around pointers to the same type of object", v10, v11, v12, v13, v14, v15, v19);
  }

  v16 = [(REFeatureSet *)self->_features mutableCopy];
  [v16 removeFeature:featureCopy];

  [v16 addFeature:withFeatureCopy];
  v17 = [v16 copy];
  features = self->_features;
  self->_features = v17;

  [(_RETransformedFeature *)self _computeHash];
}

- (void)_computeHash
{
  v14 = *MEMORY[0x277D85DE8];
  self->_hash = [(REFeatureTransformer *)self->_transformer hash];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_features;
  v4 = [(REFeatureSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        self->_hash ^= [*(*(&v9 + 1) + 8 * v7++) hash];
      }

      while (v5 != v7);
      v5 = [(REFeatureSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_name);
  objc_storeStrong(v4 + 4, self->_transformer);
  objc_storeStrong(v4 + 3, self->_features);
  [v4 _computeHash];
  return v4;
}

@end