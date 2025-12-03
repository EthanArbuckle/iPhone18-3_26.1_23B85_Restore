@interface TIUserModelDataStore(Keyboards)
+ (id)sharedUserModelDataStore;
+ (id)singletonInstance;
+ (void)setSharedTIUserModelDataStore:()Keyboards;
@end

@implementation TIUserModelDataStore(Keyboards)

+ (id)singletonInstance
{
  if (singletonInstance_onceToken != -1)
  {
    dispatch_once(&singletonInstance_onceToken, &__block_literal_global_3795);
  }

  v1 = singletonInstance_singletonInstance;

  return v1;
}

+ (void)setSharedTIUserModelDataStore:()Keyboards
{
  v4 = a3;
  if (__testingInstance_3800 != v4)
  {
    v5 = v4;
    objc_storeStrong(&__testingInstance_3800, a3);
    v4 = v5;
  }
}

+ (id)sharedUserModelDataStore
{
  if (__testingInstance_3800)
  {
    singletonInstance = __testingInstance_3800;
  }

  else
  {
    singletonInstance = [MEMORY[0x277D6F548] singletonInstance];
  }

  return singletonInstance;
}

@end