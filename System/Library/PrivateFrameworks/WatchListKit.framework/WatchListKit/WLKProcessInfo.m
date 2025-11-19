@interface WLKProcessInfo
+ (id)currentProcessInfo;
- (BOOL)BOOLValueForEntitlement:(id)a3;
- (BOOL)valueForEntitlement:(id)a3 containsObject:(id)a4;
- (WLKProcessInfo)init;
- (id)valueForEntitlement:(id)a3;
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

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The entitlement argument must not be nil."];
  }

  v5 = [(WLKProcessInfo *)self currentTask];
  if (v5)
  {
    v6 = SecTaskCopyValueForEntitlement(v5, v4, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)BOOLValueForEntitlement:(id)a3
{
  v3 = [(WLKProcessInfo *)self valueForEntitlement:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)valueForEntitlement:(id)a3 containsObject:(id)a4
{
  v6 = a4;
  v7 = [(WLKProcessInfo *)self valueForEntitlement:a3];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 containsObject:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end