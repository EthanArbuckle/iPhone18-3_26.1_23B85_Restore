@interface _REFeatureValuePair
- (BOOL)isEqual:(id)equal;
- (_REFeatureValuePair)initWithFeature:(id)feature value:(unint64_t)value index:(unint64_t)index rootFeatures:(id)features;
- (void)dealloc;
@end

@implementation _REFeatureValuePair

- (_REFeatureValuePair)initWithFeature:(id)feature value:(unint64_t)value index:(unint64_t)index rootFeatures:(id)features
{
  featureCopy = feature;
  featuresCopy = features;
  v16.receiver = self;
  v16.super_class = _REFeatureValuePair;
  v13 = [(_REFeatureValuePair *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_feature, feature);
    v14->_value = value;
    RERetainFeatureValueTaggedPointer(value);
    v14->_index = index;
    objc_storeStrong(&v14->_rootFeatures, features);
  }

  return v14;
}

- (void)dealloc
{
  REReleaseFeatureValueTaggedPointer(self->_value);
  v3.receiver = self;
  v3.super_class = _REFeatureValuePair;
  [(_REFeatureValuePair *)&v3 dealloc];
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
      feature = v5->_feature;
      v7 = self->_feature;
      v8 = v7;
      if (v7 == feature)
      {
      }

      else
      {
        v9 = [(REFeature *)v7 isEqual:feature];

        if (!v9)
        {
          goto LABEL_13;
        }
      }

      value = self->_value;
      v12 = v5->_value;
      if (value == v12)
      {
        goto LABEL_10;
      }

      v13 = REFeatureValueTypeForTaggedPointer(self->_value);
      if (v13 == REFeatureValueTypeForTaggedPointer(v12))
      {
        v14 = REFeatureValueForTaggedPointer(value);
        v15 = REFeatureValueForTaggedPointer(v12);
        v16 = [v14 isEqual:v15];

        if (v16)
        {
LABEL_10:
          v10 = self->_index == v5->_index;
LABEL_14:

          goto LABEL_15;
        }
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

@end