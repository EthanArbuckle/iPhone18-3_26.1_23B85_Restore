@interface PKAccountPromotionCollectionViewCell
- (BOOL)configureWithPromotion:(id)a3 remoteImagePreparer:(id)a4 actionHandler:(id)a5;
- (PKAccountPromotionCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation PKAccountPromotionCollectionViewCell

- (BOOL)configureWithPromotion:(id)a3 remoteImagePreparer:(id)a4 actionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  LOBYTE(self) = PKAccountPromotionCollectionViewCell.configure(promotion:remoteImagePreparer:actionHandler:)(v10, v11, sub_1BD56E97C, v9);

  return self & 1;
}

- (PKAccountPromotionCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PKAccountPromotionCollectionViewCell;
  v3 = [(PKAccountPromotionCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKAccountPromotionCollectionViewCell *)v3 layer];
    v6 = _UISolariumFeatureFlagEnabled();
    v7 = 10.0;
    if (v6)
    {
      v7 = 26.0;
    }

    [v5 setCornerRadius:v7];

    v8 = PKRewardsHubCellBackgroundColor();
    [(PKAccountPromotionCollectionViewCell *)v4 setBackgroundColor:v8];

    [(PKAccountPromotionCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B08]];
  }

  return v4;
}

@end