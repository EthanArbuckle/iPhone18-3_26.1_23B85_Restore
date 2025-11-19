@interface MODateIntervalTransformer
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation MODateIntervalTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
    v5 = [NSData dataWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end