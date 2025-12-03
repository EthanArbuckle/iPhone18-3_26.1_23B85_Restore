@interface _UIStatusBarRadarItem
- (_UIStatusBarRadarView)radarItemView;
- (id)imageForUpdate:(id)update;
- (void)_create_radarItemView;
@end

@implementation _UIStatusBarRadarItem

- (id)imageForUpdate:(id)update
{
  updateCopy = update;
  data = [updateCopy data];
  radarEntry = [data radarEntry];
  bOOLValue = [radarEntry BOOLValue];

  v7 = MEMORY[0x1E696AAE8];
  v8 = _UIKitResourceBundlePath(@"CarPlayArtwork.bundle");
  v9 = [v7 bundleWithPath:v8];

  styleAttributes = [updateCopy styleAttributes];

  traitCollection = [styleAttributes traitCollection];
  v12 = [UIImage imageNamed:@"Black_Radar" inBundle:v9 compatibleWithTraitCollection:traitCollection];

  if ((bOOLValue & 1) == 0)
  {
    [v12 size];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v13, v14, 1.0);
    v15 = _UIGraphicsGetImageFromCurrentImageContext(0);

    UIGraphicsEndImageContext();
    v12 = v15;
  }

  v16 = [v12 imageWithRenderingMode:2];

  return v16;
}

- (_UIStatusBarRadarView)radarItemView
{
  radarItemView = self->_radarItemView;
  if (!radarItemView)
  {
    [(_UIStatusBarRadarItem *)self _create_radarItemView];
    radarItemView = self->_radarItemView;
  }

  return radarItemView;
}

- (void)_create_radarItemView
{
  v3 = [_UIStatusBarRadarView alloc];
  v4 = [(_UIStatusBarRadarView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  radarItemView = self->_radarItemView;
  self->_radarItemView = v4;
}

@end