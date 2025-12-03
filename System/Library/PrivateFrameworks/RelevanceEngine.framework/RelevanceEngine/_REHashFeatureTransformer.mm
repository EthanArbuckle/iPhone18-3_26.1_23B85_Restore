@interface _REHashFeatureTransformer
- (BOOL)_validateWithFeatures:(id)features;
- (BOOL)isEqual:(id)equal;
- (_REHashFeatureTransformer)init;
- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count;
@end

@implementation _REHashFeatureTransformer

- (_REHashFeatureTransformer)init
{
  v5.receiver = self;
  v5.super_class = _REHashFeatureTransformer;
  v2 = [(REFeatureTransformer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(REFeatureTransformer *)v2 setName:@"Hash"];
  }

  return v3;
}

- (unint64_t)_createTransformFromValues:(unint64_t *)values count:(unint64_t)count
{
  v4 = *values;
  if (REFeatureValueTypeForTaggedPointer(*values) == 3)
  {
    v5 = REStringValueForTaggedPointer(v4);
    v6 = REHashString(v5);

    v7 = v6;
  }

  else
  {
    v8 = *MEMORY[0x277CBE660];
    v9 = REDescriptionForTaggedPointer(v4);
    RERaiseInternalException(v8, @"Feature value %@ isn't a string", v10, v11, v12, v13, v14, v15, v9);

    v7 = 0;
  }

  return RECreateIntegerFeatureValueTaggedPointer(v7);
}

- (BOOL)_validateWithFeatures:(id)features
{
  firstObject = [features firstObject];
  v4 = [firstObject featureType] == 1;

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