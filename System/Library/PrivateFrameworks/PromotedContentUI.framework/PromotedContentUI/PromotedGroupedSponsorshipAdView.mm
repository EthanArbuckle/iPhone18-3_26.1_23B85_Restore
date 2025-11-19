@interface PromotedGroupedSponsorshipAdView
- (CGSize)intrinsicContentSize;
@end

@implementation PromotedGroupedSponsorshipAdView

- (CGSize)intrinsicContentSize
{
  v2 = self;

  v3 = sub_1C19C224C(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v4 = sub_1C1A6F39C();
  [v3 setText_];

  v5 = v3;
  [v5 sizeToFit];
  [v5 frame];
  v7 = v6;
  v9 = v8;

  v10 = v7 + 4.0 + 120.0;
  v11 = 24.0;
  if (v9 > 24.0)
  {
    v11 = v9;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

@end