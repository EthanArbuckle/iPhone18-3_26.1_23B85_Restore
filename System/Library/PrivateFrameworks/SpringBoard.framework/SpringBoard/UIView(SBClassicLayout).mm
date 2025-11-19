@interface UIView(SBClassicLayout)
- (void)_sbClassicLayout_applyTransformsForClassicPresentationInReferenceSpace:()SBClassicLayout forInterfaceOrientation:withInheritedScaleFromContainer:applyInheritedScaleToTranslationAndCorners:allowStatusBarToOverlap:useDeviceCornerRadius:;
@end

@implementation UIView(SBClassicLayout)

- (void)_sbClassicLayout_applyTransformsForClassicPresentationInReferenceSpace:()SBClassicLayout forInterfaceOrientation:withInheritedScaleFromContainer:applyInheritedScaleToTranslationAndCorners:allowStatusBarToOverlap:useDeviceCornerRadius:
{
  v15 = SBFEffectiveHomeButtonType();
  if (a5 && v15 == 2)
  {
    v27 = [a1 layer];
    v16 = [a1 _screen];
    [v27 bounds];
    v18 = v17;
    v20 = v19;
    [v16 _referenceBounds];
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

    [v27 setMasksToBounds:1];
    [v27 setMaskedCorners:15];
    SBClassicUtilitiesInsetAndTranslateLayerForPresentationWithHomeAffordance(v27, v16, a4, a5, a6, a7, a8, v22, v24, v18, v26, a2);
  }
}

@end