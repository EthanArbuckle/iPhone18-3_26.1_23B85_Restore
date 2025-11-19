@interface NSObject(HKSPProperty)
- (id)hksp_valueForProperty:()HKSPProperty;
- (void)hksp_setValue:()HKSPProperty forProperty:;
@end

@implementation NSObject(HKSPProperty)

- (id)hksp_valueForProperty:()HKSPProperty
{
  v4 = [a3 propertyName];
  v5 = [a1 valueForKey:v4];

  return v5;
}

- (void)hksp_setValue:()HKSPProperty forProperty:
{
  v6 = a3;
  v7 = [a4 propertyName];
  [a1 setValue:v6 forKey:v7];
}

@end