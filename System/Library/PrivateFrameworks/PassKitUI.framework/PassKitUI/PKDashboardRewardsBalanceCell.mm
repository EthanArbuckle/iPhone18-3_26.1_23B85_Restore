@interface PKDashboardRewardsBalanceCell
- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithFrame:(CGRect)frame;
- (void)configureWithRewardsBalanceItem:(id)item;
@end

@implementation PKDashboardRewardsBalanceCell

- (void)configureWithRewardsBalanceItem:(id)item
{
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  itemCopy = item;
  selfCopy = self;
  [(PKDashboardRewardsBalanceCell *)selfCopy setDirectionalLayoutMargins:v4, v5, v6, v7];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = itemCopy;
  v11 = itemCopy;
  sub_1BE048964();
  sub_1BE052E74();

  [(PKDashboardRewardsBalanceCell *)selfCopy setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  return [(PKDashboardCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI29PKDashboardRewardsBalanceCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKDashboardRewardsBalanceCell();
  coderCopy = coder;
  v5 = [(PKDashboardRewardsBalanceCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end