@interface _RERoundFeatureTransformer
- (BOOL)_validateWithFeatures:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_RERoundFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4;
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

- (unint64_t)_createTransformFromValues:(unint64_t *)a3 count:(unint64_t)a4
{
  v4 = *a3;
  if (REFeatureValueTypeForTaggedPointer(*a3) == 1)
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

- (BOOL)_validateWithFeatures:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 featureType] == 2;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end