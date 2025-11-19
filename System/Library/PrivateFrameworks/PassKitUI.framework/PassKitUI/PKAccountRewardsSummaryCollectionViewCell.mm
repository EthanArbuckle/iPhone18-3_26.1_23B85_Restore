@interface PKAccountRewardsSummaryCollectionViewCell
- (PKAccountRewardsSummaryCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureWithRewardsTierSummary:(id)a3;
@end

@implementation PKAccountRewardsSummaryCollectionViewCell

- (void)configureWithRewardsTierSummary:(id)a3
{
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  v8 = a3;
  v12 = self;
  [(PKAccountRewardsSummaryCollectionViewCell *)v12 setDirectionalLayoutMargins:v4, v5, v6, v7];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = v8;
  sub_1BE048964();
  sub_1BE052E74();

  [(PKAccountRewardsSummaryCollectionViewCell *)v12 setNeedsUpdateConfiguration];
}

- (PKAccountRewardsSummaryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKAccountRewardsSummaryCollectionViewCell;
  v3 = [(PKAccountRewardsSummaryCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKAccountRewardsSummaryCollectionViewCell *)v3 setBackgroundColor:v4];

    [(PKAccountRewardsSummaryCollectionViewCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9CE0]];
  }

  return v3;
}

@end