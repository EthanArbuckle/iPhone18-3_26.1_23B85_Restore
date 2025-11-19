@interface HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView
- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithCoder:(id)a3;
- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_21B66E9DC();
}

- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView();
  return [(HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView();
  v4 = a3;
  v5 = [(HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end