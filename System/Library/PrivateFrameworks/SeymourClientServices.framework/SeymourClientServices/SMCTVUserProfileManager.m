@interface SMCTVUserProfileManager
+ (id)sharedInstance;
@end

@implementation SMCTVUserProfileManager

uint64_t __41__SMCTVUserProfileManager_sharedInstance__block_invoke()
{
  sharedInstance_manager = objc_alloc_init(SMCTVUserProfileManager);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SMCTVUserProfileManager sharedInstance];
  }

  v3 = sharedInstance_manager;

  return v3;
}

@end