@interface PBFPosterExtensionDataStoreAssertionController
@end

@implementation PBFPosterExtensionDataStoreAssertionController

void __62___PBFPosterExtensionDataStoreAssertionController_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 reason];
  [v2 addObject:v3];
}

uint64_t __93___PBFPosterExtensionDataStoreAssertionController__internalLock_appendAssertion_forIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 reason];
  v4 = [*(a1 + 32) reason];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end