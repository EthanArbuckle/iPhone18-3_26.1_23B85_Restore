@interface PKDashboardBankConnectBalanceCell
- (_TtC9PassKitUI33PKDashboardBankConnectBalanceCell)initWithFrame:(CGRect)frame;
- (void)configureWithBankConnectItem:(id)item;
@end

@implementation PKDashboardBankConnectBalanceCell

- (void)configureWithBankConnectItem:(id)item
{
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  itemCopy = item;
  selfCopy = self;
  [(PKDashboardBankConnectBalanceCell *)selfCopy setDirectionalLayoutMargins:v4, v5, v6, v7];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = itemCopy;
  v11 = itemCopy;
  sub_1BE048964();
  sub_1BE052E74();

  [(PKDashboardBankConnectBalanceCell *)selfCopy setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI33PKDashboardBankConnectBalanceCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = 8.0;
  if (v8)
  {
    v9 = 11.0;
  }

  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_verticalPadding) = v9;
  v10 = _UISolariumFeatureFlagEnabled();
  v11 = 12.0;
  if (v10)
  {
    v11 = 15.0;
  }

  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI33PKDashboardBankConnectBalanceCell_horizontalPadding) = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PKDashboardBankConnectBalanceCell();
  return [(PKDashboardCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
}

@end