@interface _RERoundFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_RERoundFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
@end

@implementation _RERoundFeatureTransformer

- (_RERoundFeatureTransformer)init
{
  v5.receiver = self;
  v5.super_class = _RERoundFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(REFeatureTransformer *)v2 setName:@"Round"];
  }

  return v3;
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v4 = *values;
  if (REFeatureValueTypeForTaggedPointer(*values) == 1)
  {
    RERetainFeatureValueTaggedPointer(v4);
    return v4;
  }

  else
  {
    REDoubleValueForTaggedPointer(v4, v5);

    return RECreateDoubleFeatureValueTaggedPointer();
  }
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v4 = [firstObject featureType] == 2;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end