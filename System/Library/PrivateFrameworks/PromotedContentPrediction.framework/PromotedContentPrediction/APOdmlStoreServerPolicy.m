@interface APOdmlStoreServerPolicy
- (id)allowableClassesForClientWithContext:(id)a3;
@end

@implementation APOdmlStoreServerPolicy

- (id)allowableClassesForClientWithContext:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_allowedTopLevelClasses(APOdmlFeatureValueTransformer, a2, a3);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  return v6;
}

@end