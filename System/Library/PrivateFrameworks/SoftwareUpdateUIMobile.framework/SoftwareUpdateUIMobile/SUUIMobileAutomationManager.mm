@interface SUUIMobileAutomationManager
+ (SUUIMobileAutomationManager)sharedManager;
- (void)registerAutomationObserver:(id)observer;
- (void)removeAutomationObserver:(id)observer;
@end

@implementation SUUIMobileAutomationManager

+ (SUUIMobileAutomationManager)sharedManager
{
  selfCopy = self;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __44__SUUIMobileAutomationManager_sharedManager__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  selfCopy2 = self;
  v13 = &sharedManager_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __44__SUUIMobileAutomationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedManager;
  sharedManager_sharedManager = v1;
  return MEMORY[0x277D82BD8](v2);
}

- (void)registerAutomationObserver:(id)observer
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  objc_storeStrong(location, 0);
}

- (void)removeAutomationObserver:(id)observer
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  objc_storeStrong(location, 0);
}

@end