@interface HomeScreenPosterCollectionViewCell
- (void)layoutSubviews;
- (void)posterPairDidUpdateHomePosterAppearance:(id)appearance;
- (void)prepareForReuse;
@end

@implementation HomeScreenPosterCollectionViewCell

- (void)posterPairDidUpdateHomePosterAppearance:(id)appearance
{
  selfCopy = self;
  sub_21B66E1E4(1);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_21B66D230();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_21B66D55C();
}

@end