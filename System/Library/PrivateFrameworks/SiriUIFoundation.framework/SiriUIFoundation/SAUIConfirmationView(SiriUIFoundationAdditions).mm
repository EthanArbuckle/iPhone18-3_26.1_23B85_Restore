@interface SAUIConfirmationView(SiriUIFoundationAdditions)
- (BOOL)sruif_hasButton;
@end

@implementation SAUIConfirmationView(SiriUIFoundationAdditions)

- (BOOL)sruif_hasButton
{
  v1 = [a1 allConfirmationOptions];
  v2 = [v1 count] != 0;

  return v2;
}

@end