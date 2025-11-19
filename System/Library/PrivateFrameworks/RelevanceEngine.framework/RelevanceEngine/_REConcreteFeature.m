@interface _REConcreteFeature
- (BOOL)isEqual:(id)a3;
- (_REConcreteFeature)initWithName:(id)a3 featureType:(unint64_t)a4;
- (id)_rootFeatures;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_bitCount;
@end

@implementation _REConcreteFeature

- (_REConcreteFeature)initWithName:(id)a3 featureType:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _REConcreteFeature;
  v7 = [(_REConcreteFeature *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_featureType = a4;
  }

  return v7;
}

- (int64_t)_bitCount
{
  featureType = self->_featureType;
  v3 = -1;
  if (featureType != 2)
  {
    v3 = 1;
  }

  if (featureType == 1)
  {
    return 64;
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (self->_featureType == v5->_featureType)
      {
        name = self->_name;
        v8 = v5->_name;
        v9 = name;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSString *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_rootFeatures
{
  v2 = [[REFeatureSet alloc] initWithFeature:self];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  name = self->_name;
  featureType = self->_featureType;

  return [v4 initWithName:name featureType:featureType];
}

@end