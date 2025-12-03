@interface SBUISystemApertureLayoutMetrics
+ (id)sharedInstanceForEmbeddedDisplay;
- (CGRect)_deviceNativeBoundsInPixels;
- (CGRect)interSensorRegionInWindowSpace;
- (CGSize)_deviceNativeScreenSizeInPoints;
- (CGSize)compactConcentricAreaSize;
- (CGSize)expandedConcentricAreaSize;
- (CGSize)maximumCompactSize;
- (CGSize)maximumExpandedSize;
- (CGSize)maximumHorizontalMinimalViewSize;
- (CGSize)maximumLeadingTrailingViewSize;
- (CGSize)maximumMicroNoticeSize;
- (CGSize)maximumPossibleSizeWhilePresentingMenu;
- (CGSize)microNoticeConcentricAreaSize;
- (CGSize)minimumExpandedSize;
- (CGSize)minimumMicroNoticeSize;
- (CGSize)minimumMinimalSize;
- (CGSize)sensorRegionSize;
- (NSDirectionalEdgeInsets)compactLegibleAreaInsets;
- (NSDirectionalEdgeInsets)expandedControlsAreaInsets;
- (NSDirectionalEdgeInsets)expandedLegibleAreaInsets;
- (NSDirectionalEdgeInsets)minimumScreenEdgeInsets;
- (double)_deviceMainScreenScale;
- (double)_maximumWidth;
- (double)_minimumScreenEdgeInset;
- (double)maximumContinuousCornerRadius;
@end

@implementation SBUISystemApertureLayoutMetrics

+ (id)sharedInstanceForEmbeddedDisplay
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SBUISystemApertureLayoutMetrics_sharedInstanceForEmbeddedDisplay__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstanceForEmbeddedDisplay_onceToken != -1)
  {
    dispatch_once(&sharedInstanceForEmbeddedDisplay_onceToken, block);
  }

  v2 = sharedInstanceForEmbeddedDisplay_sharedInstanceForEmbeddedDisplay;

  return v2;
}

- (CGSize)sensorRegionSize
{
  _screenPixelWidthIsEven = [(SBUISystemApertureLayoutMetrics *)self _screenPixelWidthIsEven];
  v3 = 125.0;
  if (_screenPixelWidthIsEven)
  {
    v3 = 125.333333;
  }

  v4 = 36.6666667;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)_deviceNativeBoundsInPixels
{
  if (_deviceNativeBoundsInPixels___onceToken != -1)
  {
    [SBUISystemApertureLayoutMetrics _deviceNativeBoundsInPixels];
  }

  v2 = *&_deviceNativeBoundsInPixels___nativeBounds_0;
  v3 = *&_deviceNativeBoundsInPixels___nativeBounds_1;
  v4 = *&_deviceNativeBoundsInPixels___nativeBounds_2;
  v5 = *&_deviceNativeBoundsInPixels___nativeBounds_3;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSDirectionalEdgeInsets)minimumScreenEdgeInsets
{
  [(SBUISystemApertureLayoutMetrics *)self _minimumScreenEdgeInset];
  v3 = v2;
  v4 = v2;
  v5 = v2;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (double)_minimumScreenEdgeInset
{
  _effectiveArtworkSubtype = [(SBUISystemApertureLayoutMetrics *)self _effectiveArtworkSubtype];
  v3 = 11.3333333;
  if (_effectiveArtworkSubtype <= 2735)
  {
    if (_effectiveArtworkSubtype == 2556)
    {
      return v3;
    }

    if (_effectiveArtworkSubtype == 2622)
    {
      return 14.0;
    }

LABEL_8:
    v4 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBUISystemApertureLayoutMetrics *)v4 _minimumScreenEdgeInset];
    }

    return v3;
  }

  if (_effectiveArtworkSubtype == 2736)
  {
    return 20.0;
  }

  if (_effectiveArtworkSubtype != 2796)
  {
    if (_effectiveArtworkSubtype == 2868)
    {
      return 14.0;
    }

    goto LABEL_8;
  }

  return v3;
}

- (double)maximumContinuousCornerRadius
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _displayCornerRadiusIgnoringZoom];
  v5 = v4;
  [(SBUISystemApertureLayoutMetrics *)self _minimumScreenEdgeInset];
  v7 = v5 - v6;

  return v7;
}

- (CGRect)interSensorRegionInWindowSpace
{
  [(SBUISystemApertureLayoutMetrics *)self _deviceNativeScreenSizeInPoints];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self sensorRegionSize];
  v6 = (v4 - v5) * 0.5;
  _effectiveArtworkSubtype = [(SBUISystemApertureLayoutMetrics *)self _effectiveArtworkSubtype];
  v8 = v6 + 36.0;
  v9 = v4 - v6 + -9.0 + -36.6666667;
  if (_effectiveArtworkSubtype == 2736)
  {
    v10 = 4.66666667;
  }

  else
  {
    v10 = 9.0;
  }

  if (_effectiveArtworkSubtype == 2736)
  {
    v11 = v6 + 36.0;
  }

  else
  {
    v11 = v9;
  }

  [(SBUISystemApertureLayoutMetrics *)self _minimumScreenEdgeInset:v8];
  v13 = v12;
  v14 = 36.6666667;
  v15 = v11;
  v16 = v10;
  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v13;
  result.origin.x = v15;
  return result;
}

- (CGSize)_deviceNativeScreenSizeInPoints
{
  [(SBUISystemApertureLayoutMetrics *)self _deviceNativeBoundsInPixels];
  v4 = v3;
  v6 = v5;
  [(SBUISystemApertureLayoutMetrics *)self _deviceMainScreenScale];
  v8 = v6 / v7;
  v9 = v4 / v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (double)_deviceMainScreenScale
{
  if (_deviceMainScreenScale___onceToken != -1)
  {
    [SBUISystemApertureLayoutMetrics _deviceMainScreenScale];
  }

  return *&_deviceMainScreenScale___scale;
}

- (CGSize)maximumHorizontalMinimalViewSize
{
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v3 = 45.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (CGSize)maximumLeadingTrailingViewSize
{
  [(SBUISystemApertureLayoutMetrics *)self maximumCompactSize];
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  UIFloorToScale();
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)maximumCompactSize
{
  [(SBUISystemApertureLayoutMetrics *)self _deviceNativeScreenSizeInPoints];
  v4 = v3 + -73.3333333;
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)expandedConcentricAreaSize
{
  v2 = 82.0;
  v3 = 84.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_maximumWidth
{
  [(SBUISystemApertureLayoutMetrics *)self _deviceNativeScreenSizeInPoints];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self _minimumScreenEdgeInset];
  return v4 + v5 * -2.0;
}

- (CGSize)maximumExpandedSize
{
  [(SBUISystemApertureLayoutMetrics *)self _maximumWidth];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self _maximumWidth];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

uint64_t __67__SBUISystemApertureLayoutMetrics_sharedInstanceForEmbeddedDisplay__block_invoke(uint64_t a1)
{
  sharedInstanceForEmbeddedDisplay_sharedInstanceForEmbeddedDisplay = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (CGSize)minimumMinimalSize
{
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)compactConcentricAreaSize
{
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (NSDirectionalEdgeInsets)compactLegibleAreaInsets
{
  v2 = 0.0;
  v3 = 10.0;
  v4 = 0.0;
  v5 = 10.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CGSize)minimumMicroNoticeSize
{
  [(SBUISystemApertureLayoutMetrics *)self _inertSize];
  v3 = v2 + 185.333333;
  v4 = 66.6666667;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)maximumMicroNoticeSize
{
  [(SBUISystemApertureLayoutMetrics *)self _deviceNativeScreenSizeInPoints];
  v4 = v3 + -66.6666667;
  [(SBUISystemApertureLayoutMetrics *)self minimumMicroNoticeSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)microNoticeConcentricAreaSize
{
  [(SBUISystemApertureLayoutMetrics *)self minimumMicroNoticeSize];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self minimumMicroNoticeSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)minimumExpandedSize
{
  [(SBUISystemApertureLayoutMetrics *)self _maximumWidth];
  v4 = v3;
  [(SBUISystemApertureLayoutMetrics *)self expandedConcentricAreaSize];
  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (NSDirectionalEdgeInsets)expandedLegibleAreaInsets
{
  v2 = 29.0;
  v3 = 29.0;
  v4 = 17.0;
  v5 = 29.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSDirectionalEdgeInsets)expandedControlsAreaInsets
{
  v2 = 0.0;
  v3 = 20.0;
  v4 = 17.0;
  v5 = 20.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (CGSize)maximumPossibleSizeWhilePresentingMenu
{
  [(SBUISystemApertureLayoutMetrics *)self _deviceNativeScreenSizeInPoints];
  v3 = v2 + v2;
  result.height = v3;
  result.width = v2;
  return result;
}

void __62__SBUISystemApertureLayoutMetrics__deviceNativeBoundsInPixels__block_invoke()
{
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 nativeBounds];
  _deviceNativeBoundsInPixels___nativeBounds_0 = v0;
  _deviceNativeBoundsInPixels___nativeBounds_1 = v1;
  _deviceNativeBoundsInPixels___nativeBounds_2 = v2;
  _deviceNativeBoundsInPixels___nativeBounds_3 = v3;
}

void __57__SBUISystemApertureLayoutMetrics__deviceMainScreenScale__block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  _deviceMainScreenScale___scale = v0;
}

@end