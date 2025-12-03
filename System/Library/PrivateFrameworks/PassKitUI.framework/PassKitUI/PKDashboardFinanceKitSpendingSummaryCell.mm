@interface PKDashboardFinanceKitSpendingSummaryCell
- (_TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell)initWithFrame:(CGRect)frame;
- (void)configureWithSpendingSummaryDataProvider:(id)provider;
@end

@implementation PKDashboardFinanceKitSpendingSummaryCell

- (void)configureWithSpendingSummaryDataProvider:(id)provider
{
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  providerCopy = provider;
  selfCopy = self;
  [(PKDashboardFinanceKitSpendingSummaryCell *)selfCopy setDirectionalLayoutMargins:v4, v5, v6, v7];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = providerCopy;
  v11 = providerCopy;
  sub_1BE048964();
  sub_1BE052E74();

  [(PKDashboardFinanceKitSpendingSummaryCell *)selfCopy setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell)initWithFrame:(CGRect)frame
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

  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_verticalPadding) = v9;
  v10 = _UISolariumFeatureFlagEnabled();
  v11 = 12.0;
  if (v10)
  {
    v11 = 15.0;
  }

  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_horizontalPadding) = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  return [(PKDashboardCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
}

@end