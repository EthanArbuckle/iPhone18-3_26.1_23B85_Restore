@interface UIPhysicalButtonMutableConfigurationSet
@end

@implementation UIPhysicalButtonMutableConfigurationSet

void __87___UIPhysicalButtonMutableConfigurationSet__unionWithConfigurationSet_acceptanceBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) _configurationForButton:a2];
  v4 = [*(a1 + 40) _configurationForButton:a2];
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    [*(a1 + 32) _setConfiguration:v4 forButton:a2];
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
    }
  }
}

@end