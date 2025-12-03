@interface PKAccountRewardsSummaryCollectionViewCell
- (PKAccountRewardsSummaryCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureWithRewardsTierSummary:(id)summary;
@end

@implementation PKAccountRewardsSummaryCollectionViewCell

- (void)configureWithRewardsTierSummary:(id)summary
{
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  v7 = *(MEMORY[0x1E69DC5C0] + 24);
  summaryCopy = summary;
  selfCopy = self;
  [(PKAccountRewardsSummaryCollectionViewCell *)selfCopy setDirectionalLayoutMargins:v4, v5, v6, v7];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = summaryCopy;
  v11 = summaryCopy;
  sub_1BE048964();
  sub_1BE052E74();

  [(PKAccountRewardsSummaryCollectionViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (PKAccountRewardsSummaryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKAccountRewardsSummaryCollectionViewCell;
  v3 = [(PKAccountRewardsSummaryCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKAccountRewardsSummaryCollectionViewCell *)v3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(PKAccountRewardsSummaryCollectionViewCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9CE0]];
  }

  return v3;
}

@end