@interface EpisodeContainerView
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation EpisodeContainerView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  sub_1E3A5319C(only, width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end