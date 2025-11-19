@interface MarketingView
- (void)actionItemButtonTapped:(id)a3;
- (void)dismissButtonTapped:(id)a3;
- (void)layoutSubviews;
@end

@implementation MarketingView

- (void)layoutSubviews
{
  v2 = self;
  sub_20BDEA930();
}

- (void)actionItemButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BDECA9C(v4);
}

- (void)dismissButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BDEF89C();
}

@end