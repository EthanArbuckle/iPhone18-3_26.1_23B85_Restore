@interface MarketingView
- (void)actionItemButtonTapped:(id)tapped;
- (void)dismissButtonTapped:(id)tapped;
- (void)layoutSubviews;
@end

@implementation MarketingView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BDEA930();
}

- (void)actionItemButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20BDECA9C(tappedCopy);
}

- (void)dismissButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_20BDEF89C();
}

@end