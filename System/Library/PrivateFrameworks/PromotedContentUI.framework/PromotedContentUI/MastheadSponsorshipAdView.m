@interface MastheadSponsorshipAdView
- (CGSize)intrinsicContentSize;
- (_TtC17PromotedContentUI25MastheadSponsorshipAdView)initWithFrame:(CGRect)a3;
@end

@implementation MastheadSponsorshipAdView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_1C19D16B4(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v4 = sub_1C1A6F39C();
  [v3 setText_];

  v5 = v3;
  [v5 sizeToFit];
  [v5 frame];
  v7 = v6;
  v9 = v8;

  [*(&v2->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewWidthConstraint) constant];
  if (v7 <= v10)
  {
    v7 = v10;
  }

  v11 = v9 + 4.0;
  [*(&v2->super.super.super.isa + OBJC_IVAR____TtC17PromotedContentUI25MastheadSponsorshipAdView_imageViewHeightConstraint) constant];
  v13 = v12;

  v14 = v11 + v13;
  v15 = v7;
  result.height = v14;
  result.width = v15;
  return result;
}

- (_TtC17PromotedContentUI25MastheadSponsorshipAdView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end