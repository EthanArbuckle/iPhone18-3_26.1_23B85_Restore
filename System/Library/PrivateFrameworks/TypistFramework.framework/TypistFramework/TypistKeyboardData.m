@interface TypistKeyboardData
+ (BOOL)isKeyboardUIOutOfProcess;
+ (Class)keyboardData;
+ (void)setConnectionTimeoutInSec:(double)a3;
+ (void)setTargetApplicationBundleID:(id)a3;
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

+ (void)setTargetApplicationBundleID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong(&_globalTargetApplication, a3);
    v4 = v5;
  }
}

+ (void)setConnectionTimeoutInSec:(double)a3
{
  if (a3 > 0.0)
  {
    _globalConnectionTimeoutInSec = *&a3;
  }
}

@end