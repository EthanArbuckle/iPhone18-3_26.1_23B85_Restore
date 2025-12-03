@interface HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView
- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithCoder:(id)coder;
- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B66E9DC();
}

- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView();
  return [(HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC11PosterBoard34HomeScreenPosterCollectionViewCellP33_C8A19B11FAAC5FF8675EAB2737D1E84631LockPosterClippingContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView();
  coderCopy = coder;
  v5 = [(HomeScreenPosterCollectionViewCell.LockPosterClippingContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end