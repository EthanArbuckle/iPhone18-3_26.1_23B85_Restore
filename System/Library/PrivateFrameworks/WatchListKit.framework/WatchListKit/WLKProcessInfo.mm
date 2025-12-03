@interface WLKProcessInfo
+ (id)currentProcessInfo;
- (BOOL)BOOLValueForEntitlement:(id)entitlement;
- (BOOL)valueForEntitlement:(id)entitlement containsObject:(id)object;
- (WLKProcessInfo)init;
- (id)valueForEntitlement:(id)entitlement;
- (void)dealloc;
@end

@implementation WLKProcessInfo

+ (id)currentProcessInfo
{
  if (currentProcessInfo_onceToken != -1)
  {
    +[WLKProcessInfo currentProcessInfo];
  }

  v3 = currentProcessInfo_currentProcessInfo;

  return v3;
}

uint64_t __36__WLKProcessInfo_currentProcessInfo__block_invoke()
{
  currentProcessInfo_currentProcessInfo = objc_alloc_init(WLKProcessInfo);

  return MEMORY[0x2821F96F8]();
}

- (WLKProcessInfo)init
{
  v4.receiver = self;
  v4.super_class = WLKProcessInfo;
  v2 = [(WLKProcessInfo *)&v4 init];
  if (v2)
  {
    v2->_currentTask = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  }

  return v2;
}

- (void)dealloc
{
  currentTask = self->_currentTask;
  if (currentTask)
  {
    CFRelease(currentTask);
  }

  v4.receiver = self;
  v4.super_class = WLKProcessInfo;
  [(WLKProcessInfo *)&v4 dealloc];
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The entitlement argument must not be nil."];
  }

  currentTask = [(WLKProcessInfo *)self currentTask];
  if (currentTask)
  {
    v6 = SecTaskCopyValueForEntitlement(currentTask, entitlementCopy, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)BOOLValueForEntitlement:(id)entitlement
{
  v3 = [(WLKProcessInfo *)self valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)valueForEntitlement:(id)entitlement containsObject:(id)object
{
  objectCopy = object;
  v7 = [(WLKProcessInfo *)self valueForEntitlement:entitlement];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 containsObject:objectCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end