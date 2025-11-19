@interface PXStoryColorGradingRepositoryFactory
+ (PXStoryColorGradingRepository)sharedRepository;
@end

@implementation PXStoryColorGradingRepositoryFactory

+ (PXStoryColorGradingRepository)sharedRepository
{
  if (sharedRepository_onceToken != -1)
  {
    dispatch_once(&sharedRepository_onceToken, &__block_literal_global_68160);
  }

  v3 = sharedRepository_sharedRepository;

  return v3;
}

uint64_t __56__PXStoryColorGradingRepositoryFactory_sharedRepository__block_invoke()
{
  v0 = objc_alloc_init(PXStoryConcreteColorGradingRepository);
  v1 = sharedRepository_sharedRepository;
  sharedRepository_sharedRepository = v0;

  v2 = sharedRepository_sharedRepository;

  return [v2 startPreloadingWithCompletionHandler:0];
}

@end