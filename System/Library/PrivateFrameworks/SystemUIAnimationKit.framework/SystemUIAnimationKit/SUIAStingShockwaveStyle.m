@interface SUIAStingShockwaveStyle
- (SUIAStingShockwaveStyle)initWithShockwaveViewBounds:(CGRect)a3 stingCenterYFromTop:(double)a4;
- (id)chromaticAberrationConfigurationForState:(int64_t)a3;
- (id)colorOverlayConfigurationForState:(int64_t)a3;
- (id)meshConfigurationForState:(int64_t)a3;
- (id)rootViewConfigurationForState:(int64_t)a3;
@end

@implementation SUIAStingShockwaveStyle

- (SUIAStingShockwaveStyle)initWithShockwaveViewBounds:(CGRect)a3 stingCenterYFromTop:(double)a4
{
  v6.receiver = self;
  v6.super_class = SUIAStingShockwaveStyle;
  result = [(SUIAAbstractShockwaveStyle *)&v6 initWithShockwaveViewBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_stingCenterYFromTop = a4;
  }

  return result;
}

- (id)rootViewConfigurationForState:(int64_t)a3
{
  v5 = +[_SUIAShockwaveRootViewConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v5 state:a3];
  if (!v6)
  {
    v6 = objc_alloc_init(_SUIAShockwaveRootViewConfiguration);
    [(_SUIAShockwaveRootViewConfiguration *)v6 _setHidden:0];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v5 state:a3];
  }

  return v6;
}

- (id)meshConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _stingSettings];
  v6 = +[_SUIAShockwaveMeshConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
  if (!v7)
  {
    v7 = objc_alloc_init(_SUIAShockwaveMeshConfiguration);
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    v9 = v8;
    v11 = v10;
    stingCenterYFromTop = self->_stingCenterYFromTop;
    v13 = +[_SUIAShockwaveMeshes stingMesh];
    [(_SUIAShockwaveMeshConfiguration *)v7 _setMeshTransform:v13];

    v14 = NSStringFromSelector(sel_viewTransform);
    v15 = NSStringFromSelector(sel_meshFrame);
    if (a3 <= 5)
    {
      if (((1 << a3) & 0x13) != 0)
      {
        [v5 initialMeshScale];
        CATransform3DMakeScale(&v22, v16, v16, 1.0);
        [(_SUIAShockwaveMeshConfiguration *)v7 _setViewTransform:&v22];
        [(_SUIAShockwaveMeshConfiguration *)v7 _setMeshFrame:-v9, stingCenterYFromTop + v11 * -0.5, v9, v11];
        v17 = [v5 slowCriticallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v17 forKeypath:v14];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v17 forKeypath:v15];
      }

      else
      {
        [v5 finalMeshScale];
        CATransform3DMakeScale(&v22, v18, v18, 1.0);
        [(_SUIAShockwaveMeshConfiguration *)v7 _setViewTransform:&v22];
        [(_SUIAShockwaveMeshConfiguration *)v7 _setMeshFrame:v9 + v9, 0.0, v9, v11];
        v17 = [v5 slowCriticallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v17 forKeypath:v14];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v17 forKeypath:v15];
        v19 = [(SUIAStingShockwaveStyle *)self colorOverlayConfigurationForState:a3];
        if ([v19 usesGaussianBlurMaskingTechnique])
        {
          v20 = 0.08;
        }

        else
        {
          v20 = 0.12;
        }

        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setDelay:v14 forApplicationOfKeypath:v20];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setDelay:v15 forApplicationOfKeypath:v20];
      }
    }

    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:a3];
  }

  return v7;
}

- (id)chromaticAberrationConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _stingSettings];
  v6 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
  if (!v7)
  {
    v7 = objc_alloc_init(_SUIAShockwaveChromaticAberrationConfiguration);
    v8 = [v5 slowCriticallyDampedSpringSettings];
    v9 = NSStringFromSelector(sel_donutMaskFrame);
    [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v8 forKeypath:v9];

    v10 = NSStringFromSelector(sel_donutGradientColors);
    [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v8 forKeypath:v10];

    [v5 aberrationMagnitude];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationMagnitude:?];
    [v5 aberrationEDRGain];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationEDRGain:?];
    [v5 aberrationColorBrightnessFactor];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationColorBrightnessFactor:?];
    [v5 aberrationColorSaturation];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationColorSaturateAmount:?];
    [v5 aberrationIntensity];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationIntensity:?];
    v11 = [v5 chromaticAberrationInitialDonutMask];
    v12 = [v11 locations];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientLocations:v12];

    stingCenterYFromTop = self->_stingCenterYFromTop;
    if (a3 > 5)
    {
      v17 = *MEMORY[0x277CBF3A8];
      v19 = *(MEMORY[0x277CBF3A8] + 8);
      v23 = MEMORY[0x277CBEBF8];
      v21 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if (((1 << a3) & 0x13) != 0)
      {
        v14 = [v5 chromaticAberrationInitialDonutMask];
        v15 = [v14 gradientLayerSize];
        [v15 sizeValue];
        v17 = v16;
        v19 = v18;

        v20 = [v5 chromaticAberrationInitialDonutMask];
        v21 = [v20 locations];

        v22 = [v5 chromaticAberrationInitialDonutMask];
        v23 = [v22 colors];
      }

      else
      {
        v24 = [v5 chromaticAberrationFinalDonutMask];
        v25 = [v24 gradientLayerSize];
        [v25 sizeValue];
        v17 = v26;
        v19 = v27;

        v28 = [v5 chromaticAberrationFinalDonutMask];
        v21 = [v28 locations];

        v29 = [v5 chromaticAberrationFinalDonutMask];
        v23 = [v29 colors];

        v22 = [v5 chromaticAberrationFinalDonutMask];
        v30 = [v22 colors];
        [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientColors:v30];
      }
    }

    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientLocations:v21];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientColors:v23];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutMaskFrame:-10.0 - v17 * 0.5, stingCenterYFromTop - v19 * 0.5, v17, v19];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:a3];
  }

  return v7;
}

- (id)colorOverlayConfigurationForState:(int64_t)a3
{
  v5 = [(SUIAAbstractShockwaveStyle *)self _stingSettings];
  v6 = +[_SUIAShockwaveColorOverlayConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:a3];
  if (!v7)
  {
    v7 = objc_alloc_init(_SUIAShockwaveColorOverlayConfiguration);
    v8 = [v5 colorMatrix];
    v9 = v8;
    if (v8)
    {
      [v8 caColorMatrix];
    }

    else
    {
      memset(v50, 0, 80);
    }

    [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMatrix:v50];

    v10 = [v5 overlayColor];
    [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColor:v10];

    -[_SUIAShockwaveColorOverlayConfiguration _setUsesGaussianBlurMaskingTechnique:](v7, "_setUsesGaussianBlurMaskingTechnique:", [v5 usesGaussianBlurMask]);
    stingCenterYFromTop = self->_stingCenterYFromTop;
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    MidX = CGRectGetMidX(v52);
    [(SUIAAbstractShockwaveStyle *)self shockwaveBounds];
    MidY = CGRectGetMidY(v53);
    v14 = NSStringFromSelector(sel_colorMaskDonutFrame);
    v15 = NSStringFromSelector(sel_colorMaskDonutGradientColors);
    v49 = NSStringFromSelector(sel_colorMatrixOpacity);
    v48 = NSStringFromSelector(sel_colorBlurRadius);
    v47 = NSStringFromSelector(sel_colorMaskBlurRadius);
    v46 = NSStringFromSelector(sel_colorMaskCenter);
    v45 = NSStringFromSelector(sel_colorMaskScale);
    if (a3 <= 5)
    {
      if (((1 << a3) & 0x13) != 0)
      {
        v16 = [v5 colorOverlayInitialRadialMask];
        v17 = [v16 gradientLayerSize];
        [v17 sizeValue];
        v19 = v18;
        v21 = v20;

        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutFrame:-10.0 - v19 * 0.5, stingCenterYFromTop - v21 * 0.5, v19, v21];
        v22 = [v5 colorOverlayInitialRadialMask];
        v23 = [v22 locations];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientLocations:v23];

        v24 = [v5 colorOverlayInitialRadialMask];
        v25 = [v24 colors];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientColors:v25];

        [v5 initialColorMatrixOpacity];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMatrixOpacity:?];
        [v5 initialColorBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorBlurRadius:?];
        [v5 initialColorMaskScale];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskScale:?];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskCenter:-10.0, stingCenterYFromTop];
        [v5 initialColorMaskBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskBlurRadius:?];
        v26 = [v5 slowCriticallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v26 forKeypath:v14];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v26 forKeypath:v46];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v26 forKeypath:v45];
        v27 = [v5 defaultSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v27 forKeypath:v15];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v27 forKeypath:v48];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v27 forKeypath:v47];
        v28 = [v5 defaultSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v28 forKeypath:v49];
      }

      else
      {
        v29 = [v5 colorOverlayFinalRadialMask];
        v30 = [v29 gradientLayerSize];
        [v30 sizeValue];
        v32 = v31;
        v34 = v33;

        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutFrame:MidX - v32 * 0.5, MidY - v34 * 0.5, v32, v34];
        v35 = [v5 colorOverlayFinalRadialMask];
        v36 = [v35 locations];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientLocations:v36];

        v37 = [v5 colorOverlayFinalRadialMask];
        v38 = [v37 colors];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientColors:v38];

        [v5 finalColorMatrixOpacity];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMatrixOpacity:?];
        [v5 finalColorBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorBlurRadius:?];
        [v5 finalColorMaskScale];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskScale:?];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskCenter:MidX, MidY];
        [v5 finalColorMaskBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskBlurRadius:?];
        v26 = [v5 reallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v26 forKeypath:v14];
        v27 = [v5 reallyReallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v27 forKeypath:v15];
        v28 = [v5 reallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v28 forKeypath:v47];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v28 forKeypath:v46];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v28 forKeypath:v45];
        [v5 defaultSpringSettings];
        v44 = a3;
        v39 = v43 = v14;
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v39 forKeypath:v49];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setDelay:v49 forApplicationOfKeypath:0.24];
        [v5 defaultSpringSettings];
        v41 = v40 = v15;
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v41 forKeypath:v48];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setDelay:v48 forApplicationOfKeypath:0.16];

        v15 = v40;
        v14 = v43;
        a3 = v44;
      }
    }

    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:a3];
  }

  return v7;
}

@end