@interface PKDashboardRewardsBalanceCell
- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithFrame:(CGRect)a3;
- (void)configureWithRewardsBalanceItem:(id)a3;
@end

@implementation PKDashboardRewardsBalanceCell

- (void)configureWithRewardsBalanceItem:(id)a3
{
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  v8 = a3;
  v12 = self;
  [(PKDashboardRewardsBalanceCell *)v12 setDirectionalLayoutMargins:v4, v5, v6, v7];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = v8;
  sub_1BE048964();
  sub_1BE052E74();

  [(PKDashboardRewardsBalanceCell *)v12 setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  return [(PKDashboardCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  v4 = a3;
  v5 = [(PKDashboardRewardsBalanceCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end