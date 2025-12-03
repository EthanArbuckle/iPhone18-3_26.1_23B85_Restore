@interface UIView(SBClassicLayout)
- (void)_sbClassicLayout_applyTransformsForClassicPresentationInReferenceSpace:()SBClassicLayout forInterfaceOrientation:withInheritedScaleFromContainer:applyInheritedScaleToTranslationAndCorners:allowStatusBarToOverlap:useDeviceCornerRadius:;
@end

@implementation UIView(SBClassicLayout)

- (void)_sbClassicLayout_applyTransformsForClassicPresentationInReferenceSpace:()SBClassicLayout forInterfaceOrientation:withInheritedScaleFromContainer:applyInheritedScaleToTranslationAndCorners:allowStatusBarToOverlap:useDeviceCornerRadius:
{
  v15 = SBFEffectiveHomeButtonType();
  if (a5 && v15 == 2)
  {
    layer = [self layer];
    _screen = [self _screen];
    [layer bounds];
    v18 = v17;
    v20 = v19;
    [_screen _referenceBounds];
    v22 = v21;
    v24 = v23;
    if ((a5 - 5) < 0xFFFFFFFFFFFFFFFELL)
    {
      v25 = 1;
    }

    else
    {
      v25 = a4;
    }

    if (v25)
    {
      v26 = v20;
    }

    else
    {
      v26 = v18;
    }

    if (!v25)
    {
      v18 = v20;
    }

    [layer setMasksToBounds:1];
    [layer setMaskedCorners:15];
    SBClassicUtilitiesInsetAndTranslateLayerForPresentationWithHomeAffordance(layer, _screen, a4, a5, a6, a7, a8, v22, v24, v18, v26, a2);
  }
}

@end