@interface PKAccountModuleCollectionViewCell
- (BOOL)configureWithAccount:(id)account;
- (BOOL)shouldShowBalanceFor:(id)for;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountModuleCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)reportDeviceEvent:(int64_t)event account:(id)account;
@end

@implementation PKAccountModuleCollectionViewCell

- (BOOL)configureWithAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  LOBYTE(self) = PKAccountModuleCollectionViewCell.configure(account:)(accountCopy);

  return self & 1;
}

- (BOOL)shouldShowBalanceFor:(id)for
{
  forCopy = for;
  if ([forCopy type] == 4)
  {
    if (PKSavingsFDICSignageEnabled())
    {
      fDICBehaviorShowCreditDashboardBalance = [forCopy FDICBehaviorShowCreditDashboardBalance];
    }

    else
    {
      fDICBehaviorShowCreditDashboardBalance = 1;
    }
  }

  else
  {
    fDICBehaviorShowCreditDashboardBalance = 0;
  }

  return fDICBehaviorShowCreditDashboardBalance;
}

- (void)reportDeviceEvent:(int64_t)event account:(id)account
{
  accountCopy = account;
  selfCopy = self;
  _sSo33PKAccountModuleCollectionViewCellC9PassKitUIE17reportDeviceEvent_7accountySo0ajK0V_So0A0CtF_0(event, accountCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PKAccountModuleCollectionViewCell *)self systemLayoutSizeFittingSize:fits.width withHorizontalFittingPriority:fits.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (PKAccountModuleCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKAccountModuleCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardCollectionViewCell *)v3 setWantsDefaultHighlightBehavior:1];
    [(PKAccountModuleCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B93A8]];
  }

  return v4;
}

@end