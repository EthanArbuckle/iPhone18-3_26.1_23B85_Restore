@interface PKAccountPromotionCollectionViewCell
- (BOOL)configureWithPromotion:(id)promotion remoteImagePreparer:(id)preparer actionHandler:(id)handler;
- (PKAccountPromotionCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation PKAccountPromotionCollectionViewCell

- (BOOL)configureWithPromotion:(id)promotion remoteImagePreparer:(id)preparer actionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  promotionCopy = promotion;
  preparerCopy = preparer;
  selfCopy = self;
  LOBYTE(self) = PKAccountPromotionCollectionViewCell.configure(promotion:remoteImagePreparer:actionHandler:)(promotionCopy, preparerCopy, sub_1BD56E97C, v9);

  return self & 1;
}

- (PKAccountPromotionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKAccountPromotionCollectionViewCell;
  v3 = [(PKAccountPromotionCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PKAccountPromotionCollectionViewCell *)v3 layer];
    v6 = _UISolariumFeatureFlagEnabled();
    v7 = 10.0;
    if (v6)
    {
      v7 = 26.0;
    }

    [layer setCornerRadius:v7];

    v8 = PKRewardsHubCellBackgroundColor();
    [(PKAccountPromotionCollectionViewCell *)v4 setBackgroundColor:v8];

    [(PKAccountPromotionCollectionViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B08]];
  }

  return v4;
}

@end