@interface UIScreen(VideosUICore)
- (BOOL)vui_canRepresentDisplayGamutP3;
@end

@implementation UIScreen(VideosUICore)

- (BOOL)vui_canRepresentDisplayGamutP3
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection displayGamut] == 1;

  return v2;
}

@end