@interface SAUIConfirmationView(SiriUIFoundationAdditions)
- (BOOL)sruif_hasButton;
@end

@implementation SAUIConfirmationView(SiriUIFoundationAdditions)

- (BOOL)sruif_hasButton
{
  allConfirmationOptions = [self allConfirmationOptions];
  v2 = [allConfirmationOptions count] != 0;

  return v2;
}

@end