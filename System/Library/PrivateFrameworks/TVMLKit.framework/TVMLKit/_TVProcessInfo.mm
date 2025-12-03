@interface _TVProcessInfo
+ (id)currentProcessInfo;
- (BOOL)BOOLValueForEntitlement:(id)entitlement;
- (BOOL)valueForEntitlement:(id)entitlement containsObject:(id)object;
- (_TVProcessInfo)init;
- (id)valueForEntitlement:(id)entitlement;
- (void)dealloc;
@end

@implementation _TVProcessInfo

+ (id)currentProcessInfo
{
  if (currentProcessInfo_onceToken != -1)
  {
    +[_TVProcessInfo currentProcessInfo];
  }

  v3 = currentProcessInfo_currentProcessInfo;

  return v3;
}

- (_TVProcessInfo)init
{
  v4.receiver = self;
  v4.super_class = _TVProcessInfo;
  v2 = [(_TVProcessInfo *)&v4 init];
  if (v2)
  {
    v2->_currentTask = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
    v2->_hasPrivateEntitlement = [(_TVProcessInfo *)v2 BOOLValueForEntitlement:@"com.apple.tvmlkit.private"];
    v2->_hasiTunesAPIEntitlement = [(_TVProcessInfo *)v2 valueForEntitlement:@"com.apple.tv.api" containsObject:@"iTunes"];
    v2->_hasiTunesStoreEntitlement = [(_TVProcessInfo *)v2 BOOLValueForEntitlement:@"com.apple.itunesstored.private"];
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
  v4.super_class = _TVProcessInfo;
  [(_TVProcessInfo *)&v4 dealloc];
}

- (id)valueForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The entitlement argument must not be nil."];
  }

  currentTask = [(_TVProcessInfo *)self currentTask];
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
  v3 = [(_TVProcessInfo *)self valueForEntitlement:entitlement];
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
  v7 = [(_TVProcessInfo *)self valueForEntitlement:entitlement];
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