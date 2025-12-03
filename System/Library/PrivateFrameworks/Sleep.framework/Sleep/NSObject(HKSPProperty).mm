@interface NSObject(HKSPProperty)
- (id)hksp_valueForProperty:()HKSPProperty;
- (void)hksp_setValue:()HKSPProperty forProperty:;
@end

@implementation NSObject(HKSPProperty)

- (id)hksp_valueForProperty:()HKSPProperty
{
  propertyName = [a3 propertyName];
  v5 = [self valueForKey:propertyName];

  return v5;
}

- (void)hksp_setValue:()HKSPProperty forProperty:
{
  v6 = a3;
  propertyName = [a4 propertyName];
  [self setValue:v6 forKey:propertyName];
}

@end