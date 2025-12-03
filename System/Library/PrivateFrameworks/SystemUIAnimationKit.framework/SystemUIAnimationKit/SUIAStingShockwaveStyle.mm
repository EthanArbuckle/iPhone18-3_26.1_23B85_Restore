@interface SUIAStingShockwaveStyle
- (SUIAStingShockwaveStyle)initWithShockwaveViewBounds:(CGRect)bounds stingCenterYFromTop:(double)top;
- (id)chromaticAberrationConfigurationForState:(int64_t)state;
- (id)colorOverlayConfigurationForState:(int64_t)state;
- (id)meshConfigurationForState:(int64_t)state;
- (id)rootViewConfigurationForState:(int64_t)state;
@end

@implementation SUIAStingShockwaveStyle

- (SUIAStingShockwaveStyle)initWithShockwaveViewBounds:(CGRect)bounds stingCenterYFromTop:(double)top
{
  v6.receiver = self;
  v6.super_class = SUIAStingShockwaveStyle;
  result = [(SUIAAbstractShockwaveStyle *)&v6 initWithShockwaveViewBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_stingCenterYFromTop = top;
  }

  return result;
}

- (id)rootViewConfigurationForState:(int64_t)state
{
  v5 = +[_SUIAShockwaveRootViewConfiguration configurationType];
  v6 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v5 state:state];
  if (!v6)
  {
    v6 = objc_alloc_init(_SUIAShockwaveRootViewConfiguration);
    [(_SUIAShockwaveRootViewConfiguration *)v6 _setHidden:0];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v6 forType:v5 state:state];
  }

  return v6;
}

- (id)meshConfigurationForState:(int64_t)state
{
  _stingSettings = [(SUIAAbstractShockwaveStyle *)self _stingSettings];
  v6 = +[_SUIAShockwaveMeshConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
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
    if (state <= 5)
    {
      if (((1 << state) & 0x13) != 0)
      {
        [_stingSettings initialMeshScale];
        CATransform3DMakeScale(&v22, v16, v16, 1.0);
        [(_SUIAShockwaveMeshConfiguration *)v7 _setViewTransform:&v22];
        [(_SUIAShockwaveMeshConfiguration *)v7 _setMeshFrame:-v9, stingCenterYFromTop + v11 * -0.5, v9, v11];
        slowCriticallyDampedSpringSettings = [_stingSettings slowCriticallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v14];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v15];
      }

      else
      {
        [_stingSettings finalMeshScale];
        CATransform3DMakeScale(&v22, v18, v18, 1.0);
        [(_SUIAShockwaveMeshConfiguration *)v7 _setViewTransform:&v22];
        [(_SUIAShockwaveMeshConfiguration *)v7 _setMeshFrame:v9 + v9, 0.0, v9, v11];
        slowCriticallyDampedSpringSettings = [_stingSettings slowCriticallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v14];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v15];
        v19 = [(SUIAStingShockwaveStyle *)self colorOverlayConfigurationForState:state];
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

    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
  }

  return v7;
}

- (id)chromaticAberrationConfigurationForState:(int64_t)state
{
  _stingSettings = [(SUIAAbstractShockwaveStyle *)self _stingSettings];
  v6 = +[_SUIAShockwaveChromaticAberrationConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
  if (!v7)
  {
    v7 = objc_alloc_init(_SUIAShockwaveChromaticAberrationConfiguration);
    slowCriticallyDampedSpringSettings = [_stingSettings slowCriticallyDampedSpringSettings];
    v9 = NSStringFromSelector(sel_donutMaskFrame);
    [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v9];

    v10 = NSStringFromSelector(sel_donutGradientColors);
    [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v10];

    [_stingSettings aberrationMagnitude];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationMagnitude:?];
    [_stingSettings aberrationEDRGain];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationEDRGain:?];
    [_stingSettings aberrationColorBrightnessFactor];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationColorBrightnessFactor:?];
    [_stingSettings aberrationColorSaturation];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationColorSaturateAmount:?];
    [_stingSettings aberrationIntensity];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setAberrationIntensity:?];
    chromaticAberrationInitialDonutMask = [_stingSettings chromaticAberrationInitialDonutMask];
    locations = [chromaticAberrationInitialDonutMask locations];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientLocations:locations];

    stingCenterYFromTop = self->_stingCenterYFromTop;
    if (state > 5)
    {
      v17 = *MEMORY[0x277CBF3A8];
      v19 = *(MEMORY[0x277CBF3A8] + 8);
      colors = MEMORY[0x277CBEBF8];
      locations2 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if (((1 << state) & 0x13) != 0)
      {
        chromaticAberrationInitialDonutMask2 = [_stingSettings chromaticAberrationInitialDonutMask];
        gradientLayerSize = [chromaticAberrationInitialDonutMask2 gradientLayerSize];
        [gradientLayerSize sizeValue];
        v17 = v16;
        v19 = v18;

        chromaticAberrationInitialDonutMask3 = [_stingSettings chromaticAberrationInitialDonutMask];
        locations2 = [chromaticAberrationInitialDonutMask3 locations];

        chromaticAberrationInitialDonutMask4 = [_stingSettings chromaticAberrationInitialDonutMask];
        colors = [chromaticAberrationInitialDonutMask4 colors];
      }

      else
      {
        chromaticAberrationFinalDonutMask = [_stingSettings chromaticAberrationFinalDonutMask];
        gradientLayerSize2 = [chromaticAberrationFinalDonutMask gradientLayerSize];
        [gradientLayerSize2 sizeValue];
        v17 = v26;
        v19 = v27;

        chromaticAberrationFinalDonutMask2 = [_stingSettings chromaticAberrationFinalDonutMask];
        locations2 = [chromaticAberrationFinalDonutMask2 locations];

        chromaticAberrationFinalDonutMask3 = [_stingSettings chromaticAberrationFinalDonutMask];
        colors = [chromaticAberrationFinalDonutMask3 colors];

        chromaticAberrationInitialDonutMask4 = [_stingSettings chromaticAberrationFinalDonutMask];
        colors2 = [chromaticAberrationInitialDonutMask4 colors];
        [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientColors:colors2];
      }
    }

    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientLocations:locations2];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutGradientColors:colors];
    [(_SUIAShockwaveChromaticAberrationConfiguration *)v7 _setDonutMaskFrame:-10.0 - v17 * 0.5, stingCenterYFromTop - v19 * 0.5, v17, v19];
    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
  }

  return v7;
}

- (id)colorOverlayConfigurationForState:(int64_t)state
{
  _stingSettings = [(SUIAAbstractShockwaveStyle *)self _stingSettings];
  v6 = +[_SUIAShockwaveColorOverlayConfiguration configurationType];
  v7 = [(SUIAAbstractShockwaveStyle *)self _configurationForType:v6 state:state];
  if (!v7)
  {
    v7 = objc_alloc_init(_SUIAShockwaveColorOverlayConfiguration);
    colorMatrix = [_stingSettings colorMatrix];
    v9 = colorMatrix;
    if (colorMatrix)
    {
      [colorMatrix caColorMatrix];
    }

    else
    {
      memset(v50, 0, 80);
    }

    [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMatrix:v50];

    overlayColor = [_stingSettings overlayColor];
    [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColor:overlayColor];

    -[_SUIAShockwaveColorOverlayConfiguration _setUsesGaussianBlurMaskingTechnique:](v7, "_setUsesGaussianBlurMaskingTechnique:", [_stingSettings usesGaussianBlurMask]);
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
    if (state <= 5)
    {
      if (((1 << state) & 0x13) != 0)
      {
        colorOverlayInitialRadialMask = [_stingSettings colorOverlayInitialRadialMask];
        gradientLayerSize = [colorOverlayInitialRadialMask gradientLayerSize];
        [gradientLayerSize sizeValue];
        v19 = v18;
        v21 = v20;

        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutFrame:-10.0 - v19 * 0.5, stingCenterYFromTop - v21 * 0.5, v19, v21];
        colorOverlayInitialRadialMask2 = [_stingSettings colorOverlayInitialRadialMask];
        locations = [colorOverlayInitialRadialMask2 locations];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientLocations:locations];

        colorOverlayInitialRadialMask3 = [_stingSettings colorOverlayInitialRadialMask];
        colors = [colorOverlayInitialRadialMask3 colors];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientColors:colors];

        [_stingSettings initialColorMatrixOpacity];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMatrixOpacity:?];
        [_stingSettings initialColorBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorBlurRadius:?];
        [_stingSettings initialColorMaskScale];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskScale:?];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskCenter:-10.0, stingCenterYFromTop];
        [_stingSettings initialColorMaskBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskBlurRadius:?];
        slowCriticallyDampedSpringSettings = [_stingSettings slowCriticallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v14];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v46];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v45];
        defaultSpringSettings = [_stingSettings defaultSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings forKeypath:v15];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings forKeypath:v48];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings forKeypath:v47];
        defaultSpringSettings2 = [_stingSettings defaultSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings2 forKeypath:v49];
      }

      else
      {
        colorOverlayFinalRadialMask = [_stingSettings colorOverlayFinalRadialMask];
        gradientLayerSize2 = [colorOverlayFinalRadialMask gradientLayerSize];
        [gradientLayerSize2 sizeValue];
        v32 = v31;
        v34 = v33;

        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutFrame:MidX - v32 * 0.5, MidY - v34 * 0.5, v32, v34];
        colorOverlayFinalRadialMask2 = [_stingSettings colorOverlayFinalRadialMask];
        locations2 = [colorOverlayFinalRadialMask2 locations];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientLocations:locations2];

        colorOverlayFinalRadialMask3 = [_stingSettings colorOverlayFinalRadialMask];
        colors2 = [colorOverlayFinalRadialMask3 colors];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskDonutGradientColors:colors2];

        [_stingSettings finalColorMatrixOpacity];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMatrixOpacity:?];
        [_stingSettings finalColorBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorBlurRadius:?];
        [_stingSettings finalColorMaskScale];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskScale:?];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskCenter:MidX, MidY];
        [_stingSettings finalColorMaskBlurRadius];
        [(_SUIAShockwaveColorOverlayConfiguration *)v7 _setColorMaskBlurRadius:?];
        slowCriticallyDampedSpringSettings = [_stingSettings reallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:slowCriticallyDampedSpringSettings forKeypath:v14];
        defaultSpringSettings = [_stingSettings reallyReallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings forKeypath:v15];
        defaultSpringSettings2 = [_stingSettings reallyDampedSpringSettings];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings2 forKeypath:v47];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings2 forKeypath:v46];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:defaultSpringSettings2 forKeypath:v45];
        [_stingSettings defaultSpringSettings];
        stateCopy = state;
        v39 = v43 = v14;
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v39 forKeypath:v49];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setDelay:v49 forApplicationOfKeypath:0.24];
        [_stingSettings defaultSpringSettings];
        v41 = v40 = v15;
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setBehaviorSettings:v41 forKeypath:v48];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v7 _setDelay:v48 forApplicationOfKeypath:0.16];

        v15 = v40;
        v14 = v43;
        state = stateCopy;
      }
    }

    [(SUIAAbstractShockwaveStyle *)self _setConfiguration:v7 forType:v6 state:state];
  }

  return v7;
}

@end