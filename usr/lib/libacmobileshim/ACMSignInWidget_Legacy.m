@interface ACMSignInWidget_Legacy
- (id)accountLabel;
@end

@implementation ACMSignInWidget_Legacy

- (id)accountLabel
{
  accountLabel = self->super._accountLabel;
  if (!accountLabel)
  {
    v4.receiver = self;
    v4.super_class = ACMSignInWidget_Legacy;
    accountLabel = [(ACMSignInWidget *)&v4 accountLabel];
    -[UILabel setFont:](accountLabel, "setFont:", [MEMORY[0x29EDC76B0] boldSystemFontOfSize:16.0]);
  }

  return accountLabel;
}

@end