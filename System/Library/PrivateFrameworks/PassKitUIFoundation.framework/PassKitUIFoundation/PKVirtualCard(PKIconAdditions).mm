@interface PKVirtualCard(PKIconAdditions)
- (id)cardIcon;
@end

@implementation PKVirtualCard(PKIconAdditions)

- (id)cardIcon
{
  if ([self type] == 1)
  {
    v1 = MEMORY[0x277D755B8];
    v2 = PKPassKitUIFoundationBundle();
    v3 = [v1 imageNamed:@"AppleCardAutoFillCreditCardIcon" inBundle:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end