@interface BookendViewWrapper
- (int64_t)userInterfaceOrientation;
- (int64_t)userInterfaceStyle;
- (void)orientationDidChange;
- (void)wallpaperDidUpdate:(id)a3;
- (void)wallpaperDidUpdateWithTexture:(id)a3;
- (void)wallpaperFailedToLoadWithError:(id)a3;
@end

@implementation BookendViewWrapper

- (void)wallpaperDidUpdateWithTexture:(id)a3
{
  swift_unknownObjectRetain();

  sub_265A61EEC(a3);
  swift_unknownObjectRelease();
}

- (void)wallpaperDidUpdate:(id)a3
{
  v4 = a3;

  v5 = objc_autoreleasePoolPush();
  sub_265A62110(v4, self);
  objc_autoreleasePoolPop(v5);
}

- (void)wallpaperFailedToLoadWithError:(id)a3
{
  v3 = a3;

  sub_265A62368(v3);
}

- (int64_t)userInterfaceOrientation
{

  v2 = sub_265A5BDC0();
  if (v2 && (v3 = v2, v4 = [v2 window], v3, v4) && (v5 = objc_msgSend(v4, sel_windowScene), v4, v5))
  {
    v6 = [v5 interfaceOrientation];

    return v6;
  }

  else
  {

    return 1;
  }
}

- (int64_t)userInterfaceStyle
{

  v2 = sub_265A5BDC0();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 traitCollection];

    v5 = [v4 userInterfaceStyle];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)orientationDidChange
{

  sub_265A62CF8("Orientation did change; Will attempt to update wallpaper.", &unk_287755578, &unk_265AAB4A8);
}

@end