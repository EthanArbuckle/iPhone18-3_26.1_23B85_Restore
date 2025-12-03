@interface _REBoolFeatureValue
+ (id)featureValueWithBool:(BOOL)bool;
@end

@implementation _REBoolFeatureValue

+ (id)featureValueWithBool:(BOOL)bool
{
  boolCopy = bool;
  if (featureValueWithBool__onceToken != -1)
  {
    +[_REBoolFeatureValue featureValueWithBool:];
  }

  v4 = &featureValueWithBool__TrueValue;
  if (!boolCopy)
  {
    v4 = &featureValueWithBool__FalseValue;
  }

  v5 = *v4;

  return v5;
}

@end