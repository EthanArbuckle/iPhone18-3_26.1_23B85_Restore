@interface CFUserNotificationCallback
@end

@implementation CFUserNotificationCallback

void ___CFUserNotificationCallback_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registrations];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___CFUserNotificationCallback_block_invoke_2;
  v7[3] = &__block_descriptor_40_e51_B16__0___HDSPCFUserNotificationCenterRegistration_8l;
  v7[4] = *(a1 + 48);
  v3 = [v2 na_firstObjectPassingTest:v7];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [*(a1 + 32) registrations];
    [v6 removeObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

BOOL ___CFUserNotificationCallback_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 notification];
  v4 = [v3 notification] == *(a1 + 32);

  return v4;
}

@end