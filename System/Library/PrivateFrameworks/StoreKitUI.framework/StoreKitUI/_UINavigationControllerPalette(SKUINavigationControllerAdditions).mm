@interface _UINavigationControllerPalette(SKUINavigationControllerAdditions)
- (void)SKUI_beginHidingPaletteShadow;
- (void)SKUI_endHidingPaletteShadow;
@end

@implementation _UINavigationControllerPalette(SKUINavigationControllerAdditions)

- (void)SKUI_beginHidingPaletteShadow
{
  v2 = objc_getAssociatedObject(self, _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  v4 = _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  objc_setAssociatedObject(self, v4, v5, 1);

  if (!unsignedIntegerValue)
  {

    [self setPaletteShadowIsHidden:1];
  }
}

- (void)SKUI_endHidingPaletteShadow
{
  v2 = objc_getAssociatedObject(self, _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden);
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v4 = _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden;
    v5 = (unsignedIntegerValue - 1);
    if (unsignedIntegerValue == 1)
    {
      objc_setAssociatedObject(self, _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden, v5, 1);

      [self setPaletteShadowIsHidden:0];
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      objc_setAssociatedObject(self, v4, v6, 1);
    }
  }
}

@end