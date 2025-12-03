@interface UIView(SBSystemApertureIDCornerCurve)
- (double)IDCornerRadius;
- (id)sb_cornerCurveFloatAnimatableProperty;
- (uint64_t)setIDCornerRadius:()SBSystemApertureIDCornerCurve;
@end

@implementation UIView(SBSystemApertureIDCornerCurve)

- (double)IDCornerRadius
{
  sb_cornerCurveFloatAnimatableProperty = [self sb_cornerCurveFloatAnimatableProperty];
  [sb_cornerCurveFloatAnimatableProperty value];
  v3 = v2;

  return v3;
}

- (id)sb_cornerCurveFloatAnimatableProperty
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(self, "com.apple.SpringBoardFramework.SBSystemApertureIDCornerCurve.floatAnimatableProperty");
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277D75D38]);
    [v2 setVelocityUsableForVFD:1];
    layer = [self layer];
    [layer cornerRadius];
    [v2 setValue:?];

    objc_setAssociatedObject(self, "com.apple.SpringBoardFramework.SBSystemApertureIDCornerCurve.floatAnimatableProperty", v2, 1);
    objc_initWeak(&location, v2);
    objc_initWeak(&from, self);
    v4 = MEMORY[0x277D75D18];
    v15[0] = v2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__UIView_SBSystemApertureIDCornerCurve__sb_cornerCurveFloatAnimatableProperty__block_invoke;
    v10[3] = &unk_2783B45E8;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(&v12, &from);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__UIView_SBSystemApertureIDCornerCurve__sb_cornerCurveFloatAnimatableProperty__block_invoke_2;
    v7[3] = &unk_2783B45E8;
    objc_copyWeak(&v8, &location);
    objc_copyWeak(&v9, &from);
    [v4 _createTransformerWithInputAnimatableProperties:v5 modelValueSetter:v10 presentationValueSetter:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (uint64_t)setIDCornerRadius:()SBSystemApertureIDCornerCurve
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__UIView_SBSystemApertureIDCornerCurve__setIDCornerRadius___block_invoke;
  v5[3] = &unk_2783A8BC8;
  v5[4] = self;
  *&v5[5] = a2;
  LODWORD(a2) = *MEMORY[0x277CD9DD0];
  LODWORD(a4) = *(MEMORY[0x277CD9DD0] + 8);
  return [MEMORY[0x277D75D18] sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v5 animations:{a2, COERCE_DOUBLE(*(MEMORY[0x277CD9DD0] + 4)), a4}];
}

@end