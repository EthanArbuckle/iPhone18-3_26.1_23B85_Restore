@interface SWSystemActivityProvider
+ (id)sharedProvider;
- (id)createTimerWithIdentifier:(id)a3;
- (id)declareSystemActivityWithName:(id)a3;
@end

@implementation SWSystemActivityProvider

+ (id)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SWSystemActivityProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280D3F908 != -1)
  {
    dispatch_once(&qword_280D3F908, block);
  }

  v2 = _MergedGlobals_0;

  return v2;
}

uint64_t __42__SWSystemActivityProvider_sharedProvider__block_invoke(uint64_t a1)
{
  _MergedGlobals_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (id)declareSystemActivityWithName:(id)a3
{
  v3 = a3;
  v4 = [[SWDeclareSystemActivityResult alloc] initWithReturnValue:IOPMAssertionDeclareSystemActivity() assertionID:0 systemState:0];

  return v4;
}

- (id)createTimerWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:v3];

  return v4;
}

@end