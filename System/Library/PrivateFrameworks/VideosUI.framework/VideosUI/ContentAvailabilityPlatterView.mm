@interface ContentAvailabilityPlatterView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation ContentAvailabilityPlatterView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  nullsub_1(subviews, *&subviews.height);
  result.height = v5;
  result.width = v4;
  return result;
}

@end