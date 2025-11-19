@interface HomeScreenPosterCollectionViewCell
- (void)layoutSubviews;
- (void)posterPairDidUpdateHomePosterAppearance:(id)a3;
- (void)prepareForReuse;
@end

@implementation HomeScreenPosterCollectionViewCell

- (void)posterPairDidUpdateHomePosterAppearance:(id)a3
{
  v3 = self;
  sub_21B66E1E4(1);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21B66D230();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_21B66D55C();
}

@end