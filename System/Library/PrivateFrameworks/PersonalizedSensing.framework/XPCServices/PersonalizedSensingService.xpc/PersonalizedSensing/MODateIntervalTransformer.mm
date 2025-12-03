@interface MODateIntervalTransformer
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation MODateIntervalTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:valueCopy requiringSecureCoding:1 error:0];
    v5 = [NSData dataWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:valueCopy error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end