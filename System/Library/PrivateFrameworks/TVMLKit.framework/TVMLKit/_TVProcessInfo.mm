@interface _TVProcessInfo
+ (id)currentProcessInfo;
- (BOOL)BOOLValueForEntitlement:(id)a3;
- (BOOL)valueForEntitlement:(id)a3 containsObject:(id)a4;
- (_TVProcessInfo)init;
- (id)valueForEntitlement:(id)a3;
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

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The entitlement argument must not be nil."];
  }

  v5 = [(_TVProcessInfo *)self currentTask];
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
  v3 = [(_TVProcessInfo *)self valueForEntitlement:a3];
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
  v7 = [(_TVProcessInfo *)self valueForEntitlement:a3];
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