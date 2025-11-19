@interface _REBoolFeatureValue
+ (id)featureValueWithBool:(BOOL)a3;
@end

@implementation _REBoolFeatureValue

+ (id)featureValueWithBool:(BOOL)a3
{
  v3 = a3;
  if (featureValueWithBool__onceToken != -1)
  {
    +[_REBoolFeatureValue featureValueWithBool:];
  }

  v4 = &featureValueWithBool__TrueValue;
  if (!v3)
  {
    v4 = &featureValueWithBool__FalseValue;
  }

  v5 = *v4;

  return v5;
}

@end