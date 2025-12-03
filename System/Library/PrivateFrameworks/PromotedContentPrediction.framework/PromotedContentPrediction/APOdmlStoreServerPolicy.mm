@interface APOdmlStoreServerPolicy
- (id)allowableClassesForClientWithContext:(id)context;
@end

@implementation APOdmlStoreServerPolicy

- (id)allowableClassesForClientWithContext:(id)context
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_msgSend_allowedTopLevelClasses(APOdmlFeatureValueTransformer, a2, context);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  return v6;
}

@end