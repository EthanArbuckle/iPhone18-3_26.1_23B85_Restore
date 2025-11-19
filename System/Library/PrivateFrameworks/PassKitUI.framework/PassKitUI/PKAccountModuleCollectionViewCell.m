@interface PKAccountModuleCollectionViewCell
- (BOOL)configureWithAccount:(id)a3;
- (BOOL)shouldShowBalanceFor:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAccountModuleCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)reportDeviceEvent:(int64_t)a3 account:(id)a4;
@end

@implementation PKAccountModuleCollectionViewCell

- (BOOL)configureWithAccount:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = PKAccountModuleCollectionViewCell.configure(account:)(v4);

  return self & 1;
}

- (BOOL)shouldShowBalanceFor:(id)a3
{
  v3 = a3;
  if ([v3 type] == 4)
  {
    if (PKSavingsFDICSignageEnabled())
    {
      v4 = [v3 FDICBehaviorShowCreditDashboardBalance];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reportDeviceEvent:(int64_t)a3 account:(id)a4
{
  v6 = a4;
  v7 = self;
  _sSo33PKAccountModuleCollectionViewCellC9PassKitUIE17reportDeviceEvent_7accountySo0ajK0V_So0A0CtF_0(a3, v6);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1112014848;
  [(PKAccountModuleCollectionViewCell *)self systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (PKAccountModuleCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKAccountModuleCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardCollectionViewCell *)v3 setWantsDefaultHighlightBehavior:1];
    [(PKAccountModuleCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B93A8]];
  }

  return v4;
}

@end