@interface SBLegacyRemoteAlertContentHostViewController
@end

@implementation SBLegacyRemoteAlertContentHostViewController

uint64_t __88___SBLegacyRemoteAlertContentHostViewController__getPreferredContentSizeWithReplyBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreferredContentSize:?];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end