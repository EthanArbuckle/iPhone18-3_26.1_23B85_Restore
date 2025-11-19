@interface SCROSharedInputProperties
+ (id)sharedInstance;
@end

@implementation SCROSharedInputProperties

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SCROSharedInputProperties sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __43__SCROSharedInputProperties_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SCROSharedInputProperties);

  return MEMORY[0x2821F96F8]();
}

@end