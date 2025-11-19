@interface MTMediaContentSourceiOSMusicLibrary
+ (id)sharedInstance;
- (MTMediaContentSourceiOSMusicLibrary)init;
- (void)determineiTunesMatchEnabledWithCompletion:(id)a3;
@end

@implementation MTMediaContentSourceiOSMusicLibrary

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MTMediaContentSourceiOSMusicLibrary sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __53__MTMediaContentSourceiOSMusicLibrary_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(MTMediaContentSourceiOSMusicLibrary);

  return MEMORY[0x2821F96F8]();
}

- (MTMediaContentSourceiOSMusicLibrary)init
{
  v7.receiver = self;
  v7.super_class = MTMediaContentSourceiOSMusicLibrary;
  v2 = [(MTMediaContentSourceiOSMusicLibrary *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -15);
    v4 = dispatch_queue_create("MTMediaContentSourceiOSMusicLibrary", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;
  }

  return v2;
}

- (void)determineiTunesMatchEnabledWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__MTMediaContentSourceiOSMusicLibrary_determineiTunesMatchEnabledWithCompletion___block_invoke;
  aBlock[3] = &unk_279A44D18;
  v8 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v6[2](v6, self);
}

uint64_t __81__MTMediaContentSourceiOSMusicLibrary_determineiTunesMatchEnabledWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end