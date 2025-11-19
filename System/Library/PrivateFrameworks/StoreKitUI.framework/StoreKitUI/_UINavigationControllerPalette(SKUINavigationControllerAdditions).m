@interface _UINavigationControllerPalette(SKUINavigationControllerAdditions)
- (void)SKUI_beginHidingPaletteShadow;
- (void)SKUI_endHidingPaletteShadow;
@end

@implementation _UINavigationControllerPalette(SKUINavigationControllerAdditions)

- (void)SKUI_beginHidingPaletteShadow
{
  v2 = objc_getAssociatedObject(a1, _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden);
  v3 = [v2 unsignedIntegerValue];

  v4 = _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  objc_setAssociatedObject(a1, v4, v5, 1);

  if (!v3)
  {

    [a1 setPaletteShadowIsHidden:1];
  }
}

- (void)SKUI_endHidingPaletteShadow
{
  v2 = objc_getAssociatedObject(a1, _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden);
  v3 = [v2 unsignedIntegerValue];

  if (v3)
  {
    v4 = _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden;
    v5 = (v3 - 1);
    if (v3 == 1)
    {
      objc_setAssociatedObject(a1, _SKUINavigationControllerAssociatedObjectKeyPaletteShadowHidden, v5, 1);

      [a1 setPaletteShadowIsHidden:0];
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      objc_setAssociatedObject(a1, v4, v6, 1);
    }
  }
}

@end