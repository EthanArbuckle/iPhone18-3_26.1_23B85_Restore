@interface TypistKeyboardData
+ (BOOL)isKeyboardUIOutOfProcess;
+ (Class)keyboardData;
+ (void)setConnectionTimeoutInSec:(double)sec;
+ (void)setTargetApplicationBundleID:(id)d;
@end

@implementation TypistKeyboardData

+ (Class)keyboardData
{
  if (_forceLegacyImplementation)
  {
    v2 = off_279DF41A8;
  }

  else
  {
    v2 = off_279DF41B0;
  }

  v3 = *v2;
  v4 = objc_opt_class();

  return v4;
}

+ (BOOL)isKeyboardUIOutOfProcess
{
  if (isKeyboardUIOutOfProcess_onceToken != -1)
  {
    +[TypistKeyboardData isKeyboardUIOutOfProcess];
  }

  return isKeyboardUIOutOfProcess_oop;
}

uint64_t __46__TypistKeyboardData_isKeyboardUIOutOfProcess__block_invoke()
{
  result = [MEMORY[0x277D75658] usesInputSystemUI];
  isKeyboardUIOutOfProcess_oop = result;
  return result;
}

+ (void)setTargetApplicationBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = dCopy;
    objc_storeStrong(&_globalTargetApplication, d);
    dCopy = v5;
  }
}

+ (void)setConnectionTimeoutInSec:(double)sec
{
  if (sec > 0.0)
  {
    _globalConnectionTimeoutInSec = *&sec;
  }
}

@end