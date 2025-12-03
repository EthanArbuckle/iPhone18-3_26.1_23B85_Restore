@interface BookendViewWrapper
- (int64_t)userInterfaceOrientation;
- (int64_t)userInterfaceStyle;
- (void)orientationDidChange;
- (void)wallpaperDidUpdate:(id)update;
- (void)wallpaperDidUpdateWithTexture:(id)texture;
- (void)wallpaperFailedToLoadWithError:(id)error;
@end

@implementation BookendViewWrapper

- (void)wallpaperDidUpdateWithTexture:(id)texture
{
  swift_unknownObjectRetain();

  sub_265A61EEC(texture);
  swift_unknownObjectRelease();
}

- (void)wallpaperDidUpdate:(id)update
{
  updateCopy = update;

  v5 = objc_autoreleasePoolPush();
  sub_265A62110(updateCopy, self);
  objc_autoreleasePoolPop(v5);
}

- (void)wallpaperFailedToLoadWithError:(id)error
{
  errorCopy = error;

  sub_265A62368(errorCopy);
}

- (int64_t)userInterfaceOrientation
{

  v2 = sub_265A5BDC0();
  if (v2 && (v3 = v2, v4 = [v2 window], v3, v4) && (v5 = objc_msgSend(v4, sel_windowScene), v4, v5))
  {
    interfaceOrientation = [v5 interfaceOrientation];

    return interfaceOrientation;
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
    traitCollection = [v2 traitCollection];

    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  else
  {
    userInterfaceStyle = 1;
  }

  return userInterfaceStyle;
}

- (void)orientationDidChange
{

  sub_265A62CF8("Orientation did change; Will attempt to update wallpaper.", &unk_287755578, &unk_265AAB4A8);
}

@end