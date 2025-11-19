@interface SummaryPlatterButtonView
- (void)handleButtonTapped;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SummaryPlatterButtonView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20BCC2684(a3);
}

- (void)handleButtonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped);
  if (v2)
  {
    v3 = self;
    v4 = sub_20B584050(v2);
    v2(v4);

    sub_20B583ECC(v2);
  }
}

@end