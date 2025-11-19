@interface REFeatureValuePair
- (BOOL)isEqual:(id)a3;
- (REFeatureValuePair)initWithFeature:(id)a3 value:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation REFeatureValuePair

- (REFeatureValuePair)initWithFeature:(id)a3 value:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REFeatureValuePair;
  v8 = [(REFeatureValuePair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_feature, a3);
    v9->_value = a4;
    RERetainFeatureValueTaggedPointer(a4);
  }

  return v9;
}

- (void)dealloc
{
  REReleaseFeatureValueTaggedPointer(self->_value);
  v3.receiver = self;
  v3.super_class = REFeatureValuePair;
  [(REFeatureValuePair *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
        v10 = 1;
      }

      else
      {
        v13 = REFeatureValueTypeForTaggedPointer(value);
        if (v13 != REFeatureValueTypeForTaggedPointer(v12))
        {
LABEL_13:
          v10 = 0;
          goto LABEL_14;
        }

        v14 = REFeatureValueForTaggedPointer(value);
        v15 = REFeatureValueForTaggedPointer(v12);
        v10 = [v14 isEqual:v15];
      }

LABEL_14:

      goto LABEL_15;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  feature = self->_feature;
  v6 = REDescriptionForTaggedPointer(self->_value);
  v7 = [v3 stringWithFormat:@"<%p: %@> feature=%@, value=%@", self, v4, feature, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  feature = self->_feature;
  value = self->_value;

  return [v4 initWithFeature:feature value:value];
}

@end