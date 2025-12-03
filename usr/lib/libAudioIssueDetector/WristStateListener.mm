@interface WristStateListener
+ (id)sharedInstance;
@end

@implementation WristStateListener

+ (id)sharedInstance
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __36__WristStateListener_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[WristStateListener sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[WristStateListener sharedInstance]::onceToken, block);
  }

  v2 = +[WristStateListener sharedInstance]::sharedWristStateListener;

  return v2;
}

uint64_t __36__WristStateListener_sharedInstance__block_invoke(uint64_t a1)
{
  +[WristStateListener sharedInstance]::sharedWristStateListener = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

@end