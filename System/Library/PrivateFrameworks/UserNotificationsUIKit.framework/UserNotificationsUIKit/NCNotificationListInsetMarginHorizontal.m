@interface NCNotificationListInsetMarginHorizontal
@end

@implementation NCNotificationListInsetMarginHorizontal

void ___NCNotificationListInsetMarginHorizontal_block_invoke()
{
  v1 = [MEMORY[0x277D75418] currentDevice];
  if ([v1 userInterfaceIdiom])
  {
  }

  else
  {
    v3.origin.x = NCMainScreenReferenceBounds();
    Width = CGRectGetWidth(v3);

    if (Width >= 393.0)
    {
      _NCNotificationListInsetMarginHorizontal___insetMarginHorizontal = 0x402C000000000000;
    }
  }
}

@end