@interface RERegisterForLockedStatusChangeIfNecessary
@end

@implementation RERegisterForLockedStatusChangeIfNecessary

void ___RERegisterForLockedStatusChangeIfNecessary_block_invoke_2()
{
  v0 = RELogForDomain(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22859F000, v0, OS_LOG_TYPE_DEFAULT, "post REDeviceLockStateChangedNotification", v2, 2u);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"REDeviceLockStateChangedNotification" object:0];
}

@end