@interface SAUISnippet(SiriUIFoundationAdditions)
- (BOOL)sruif_hasButton;
@end

@implementation SAUISnippet(SiriUIFoundationAdditions)

- (BOOL)sruif_hasButton
{
  confirmationOptions = [self confirmationOptions];

  if (!confirmationOptions)
  {
    return 0;
  }

  confirmationOptions2 = [self confirmationOptions];
  allConfirmationOptions = [confirmationOptions2 allConfirmationOptions];
  v5 = [allConfirmationOptions count] != 0;

  return v5;
}

@end