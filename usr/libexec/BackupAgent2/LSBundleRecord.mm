@interface LSBundleRecord
- (BOOL)mb_isContainerized;
- (id)mb_entitlements;
@end

@implementation LSBundleRecord

- (BOOL)mb_isContainerized
{
  dataContainerURL = [(LSBundleRecord *)self dataContainerURL];
  v3 = dataContainerURL != 0;

  return v3;
}

- (id)mb_entitlements
{
  compatibilityObject = [(LSBundleRecord *)self compatibilityObject];
  entitlements = [compatibilityObject entitlements];

  return entitlements;
}

@end