@interface REHistogram
- (BOOL)isEqual:(id)a3;
- (REHistogram)initWithFeature:(id)a3;
- (REHistogram)initWithFeature:(id)a3 binningSize:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REHistogram

- (REHistogram)initWithFeature:(id)a3
{
  v4 = a3;
  if ([v4 featureType] == 2)
  {
    v5 = RECreateDoubleFeatureValueTaggedPointer();
  }

  else
  {
    v5 = RECreateIntegerFeatureValueTaggedPointer(1);
  }

  v6 = v5;
  v7 = [(REHistogram *)self initWithFeature:v4 binningSize:v5];

  v8 = v7;
  REReleaseFeatureValueTaggedPointer(v6);

  return v8;
}

- (REHistogram)initWithFeature:(id)a3 binningSize:(unint64_t)a4
{
  v7 = a3;
  if ([(REHistogram *)self isMemberOfClass:objc_opt_class()])
  {
    if ([v7 featureType] == 2)
    {
      v8 = _REContinuousHistogram;
    }

    else
    {
      v8 = _RECategoricalHistogram;
    }

    v11 = [[v8 alloc] initWithFeature:v7 binningSize:a4];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REHistogram;
    v9 = [(REHistogram *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_feature, a3);
    }

    v11 = v10;
    self = v11;
  }

  v12 = v11;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      feature = self->_feature;
      v6 = v4->_feature;
      v7 = feature;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(REFeature *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_feature);
  return v4;
}

@end