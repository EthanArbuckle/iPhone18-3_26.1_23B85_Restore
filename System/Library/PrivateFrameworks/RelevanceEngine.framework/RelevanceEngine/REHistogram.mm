@interface REHistogram
- (BOOL)isEqual:(id)equal;
- (REHistogram)initWithFeature:(id)feature;
- (REHistogram)initWithFeature:(id)feature binningSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REHistogram

- (REHistogram)initWithFeature:(id)feature
{
  featureCopy = feature;
  if ([featureCopy featureType] == 2)
  {
    v5 = RECreateDoubleFeatureValueTaggedPointer();
  }

  else
  {
    v5 = RECreateIntegerFeatureValueTaggedPointer(1);
  }

  v6 = v5;
  v7 = [(REHistogram *)self initWithFeature:featureCopy binningSize:v5];

  v8 = v7;
  REReleaseFeatureValueTaggedPointer(v6);

  return v8;
}

- (REHistogram)initWithFeature:(id)feature binningSize:(unint64_t)size
{
  featureCopy = feature;
  if ([(REHistogram *)self isMemberOfClass:objc_opt_class()])
  {
    if ([featureCopy featureType] == 2)
    {
      v8 = _REContinuousHistogram;
    }

    else
    {
      v8 = _RECategoricalHistogram;
    }

    v11 = [[v8 alloc] initWithFeature:featureCopy binningSize:size];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = REHistogram;
    v9 = [(REHistogram *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_feature, feature);
    }

    v11 = v10;
    self = v11;
  }

  v12 = v11;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      feature = self->_feature;
      v6 = equalCopy->_feature;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_feature);
  return v4;
}

@end