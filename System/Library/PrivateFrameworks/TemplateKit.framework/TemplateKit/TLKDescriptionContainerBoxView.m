@interface TLKDescriptionContainerBoxView
- (id)calculateViewForFirstBaselineLayout;
@end

@implementation TLKDescriptionContainerBoxView

- (id)calculateViewForFirstBaselineLayout
{
  v2 = self;
  v3 = [(TLKDescriptionContainerBoxView *)self viewForFirstAndLastBaseline];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

@end