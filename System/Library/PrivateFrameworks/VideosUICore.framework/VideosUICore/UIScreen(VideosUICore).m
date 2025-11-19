@interface UIScreen(VideosUICore)
- (BOOL)vui_canRepresentDisplayGamutP3;
@end

@implementation UIScreen(VideosUICore)

- (BOOL)vui_canRepresentDisplayGamutP3
{
  v1 = [a1 traitCollection];
  v2 = [v1 displayGamut] == 1;

  return v2;
}

@end