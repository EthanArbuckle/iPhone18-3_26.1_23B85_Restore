@interface SBGuidedAccessListener
+ (id)sharedGuidedAccessListener;
- (SBGuidedAccessListener)init;
- (void)guidedAccessWasActivated;
- (void)guidedAccessWasDeactivated;
@end

@implementation SBGuidedAccessListener

+ (id)sharedGuidedAccessListener
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SBGuidedAccessListener_sharedGuidedAccessListener__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGuidedAccessListener_onceToken != -1)
  {
    dispatch_once(&sharedGuidedAccessListener_onceToken, block);
  }

  v3 = sharedGuidedAccessListener___sharedGuidedAccessListener;

  return v3;
}

void __52__SBGuidedAccessListener_sharedGuidedAccessListener__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedGuidedAccessListener___sharedGuidedAccessListener;
  sharedGuidedAccessListener___sharedGuidedAccessListener = v1;
}

- (SBGuidedAccessListener)init
{
  v5.receiver = self;
  v5.super_class = SBGuidedAccessListener;
  v2 = [(SBGuidedAccessListener *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_guidedAccessWasActivated name:*MEMORY[0x277D81CE0] object:0];
    [v3 addObserver:v2 selector:sel_guidedAccessWasDeactivated name:*MEMORY[0x277D81CE8] object:0];
  }

  return v2;
}

- (void)guidedAccessWasActivated
{
  self->_isGuidedAccessActive = 1;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SBGuidedAccessActivationChangedNotification" object:0];
}

- (void)guidedAccessWasDeactivated
{
  self->_isGuidedAccessActive = 0;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"SBGuidedAccessActivationChangedNotification" object:0];
}

@end