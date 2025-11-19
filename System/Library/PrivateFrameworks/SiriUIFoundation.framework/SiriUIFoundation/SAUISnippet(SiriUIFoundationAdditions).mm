@interface SAUISnippet(SiriUIFoundationAdditions)
- (BOOL)sruif_hasButton;
@end

@implementation SAUISnippet(SiriUIFoundationAdditions)

- (BOOL)sruif_hasButton
{
  v2 = [a1 confirmationOptions];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 confirmationOptions];
  v4 = [v3 allConfirmationOptions];
  v5 = [v4 count] != 0;

  return v5;
}

@end