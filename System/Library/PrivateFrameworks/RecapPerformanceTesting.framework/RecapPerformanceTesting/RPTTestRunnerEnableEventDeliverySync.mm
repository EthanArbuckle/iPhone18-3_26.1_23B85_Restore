@interface RPTTestRunnerEnableEventDeliverySync
@end

@implementation RPTTestRunnerEnableEventDeliverySync

void ___RPTTestRunnerEnableEventDeliverySync_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 valueForKey:@"RPTTestRunnerEnableEventDeliverySync"];

  v1 = v2;
  if (v2)
  {
    _RPTTestRunnerEnableEventDeliverySync_enable = [v2 BOOLValue];
    v1 = v2;
  }
}

@end