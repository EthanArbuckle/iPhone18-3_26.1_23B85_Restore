@interface CatalogTipSummaryView
- (_TtC9SeymourUI21CatalogTipSummaryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)learnMoreButtonTapped;
- (void)seeMoreButtonTapped;
@end

@implementation CatalogTipSummaryView

- (void)layoutSubviews
{
  v2 = self;
  sub_20BBC3194();
}

- (void)learnMoreButtonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_presenter);
  v5 = self;
  sub_20BE4AC84(0xD000000000000015, 0x800000020C1AB310);
  v3 = *(v2 + 32);
  if (v3)
  {

    v3(v4);
    sub_20B583ECC(v3);
  }
}

- (void)seeMoreButtonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI21CatalogTipSummaryView_presenter);
  v5 = self;
  sub_20BE4AC84(0x5465726F4D656553, 0xEB00000000737069);
  v3 = *(v2 + 48);
  if (v3)
  {

    v3(v4);
    sub_20B583ECC(v3);
  }
}

- (_TtC9SeymourUI21CatalogTipSummaryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end