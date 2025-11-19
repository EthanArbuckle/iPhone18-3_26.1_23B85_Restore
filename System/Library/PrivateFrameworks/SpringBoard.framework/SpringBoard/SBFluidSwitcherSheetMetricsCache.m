@interface SBFluidSwitcherSheetMetricsCache
- (CGAffineTransform)transformForCardUnderSheetForBoundsSize:(SEL)a3;
- (CGRect)pageSheetFrameForBounds:(CGRect)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5;
- (CGRect)pageSheetFrameForBounds:(CGRect)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5 userInterfaceIdiom:(int64_t)a6 displayScale:(double)a7 displayEdgeInfo:(id)a8;
- (CGSize)pageSheetMetricsForBoundsSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5;
- (CGSize)pageSheetMetricsForBoundsSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5 userInterfaceIdiom:(int64_t)a6 displayScale:(double)a7 displayEdgeInfo:(id)a8;
- (id)_displayEdgeInfo;
@end

@implementation SBFluidSwitcherSheetMetricsCache

- (id)_displayEdgeInfo
{
  if (_displayEdgeInfo_sOnceToken != -1)
  {
    [SBFluidSwitcherSheetMetricsCache _displayEdgeInfo];
  }

  v3 = _displayEdgeInfo_sDisplayEdgeInfo;

  return v3;
}

void __52__SBFluidSwitcherSheetMetricsCache__displayEdgeInfo__block_invoke()
{
  [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  v1 = v0;
  v4 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  v2 = [v4 sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:v1];
  v3 = _displayEdgeInfo_sDisplayEdgeInfo;
  _displayEdgeInfo_sDisplayEdgeInfo = v2;
}

- (CGAffineTransform)transformForCardUnderSheetForBoundsSize:(SEL)a3
{
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
  v7 = [(NSMutableDictionary *)self->_boundsToTransformMap objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 CGAffineTransformValue];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D75D18]);
    BSRectWithSize();
    v10 = [v9 initWithFrame:?];
    _UISheetMinimumTopInset();
    v12 = v11;
    v13 = MEMORY[0x277CBF2C0];
    v14 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v14;
    *&retstr->tx = *(v13 + 32);
    BSRectWithSize();
    BSRectWithSize();
    _UISheetTransform();
    boundsToTransformMap = self->_boundsToTransformMap;
    if (!boundsToTransformMap)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = self->_boundsToTransformMap;
      self->_boundsToTransformMap = v16;

      boundsToTransformMap = self->_boundsToTransformMap;
    }

    v18 = *&retstr->c;
    v21[0] = *&retstr->a;
    v21[1] = v18;
    v21[2] = *&retstr->tx;
    v19 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:{v21, v12, 0x3FF0000000000000}];
    [(NSMutableDictionary *)boundsToTransformMap setObject:v19 forKey:v6];
  }

  return result;
}

- (CGSize)pageSheetMetricsForBoundsSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(SBFluidSwitcherSheetMetricsCache *)self _displayEdgeInfo];
  v11 = [MEMORY[0x277D75418] currentDevice];
  -[SBFluidSwitcherSheetMetricsCache pageSheetMetricsForBoundsSize:interfaceOrientation:configuration:userInterfaceIdiom:displayScale:displayEdgeInfo:](self, "pageSheetMetricsForBoundsSize:interfaceOrientation:configuration:userInterfaceIdiom:displayScale:displayEdgeInfo:", a4, a5, [v11 userInterfaceIdiom], v10, width, height, SBScreenScale());
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)pageSheetMetricsForBoundsSize:(CGSize)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5 userInterfaceIdiom:(int64_t)a6 displayScale:(double)a7 displayEdgeInfo:(id)a8
{
  height = a3.height;
  width = a3.width;
  v15 = a8;
  v16 = [[_SBFluidSwitcherSheetMetricsCacheKey alloc] initWithBoundsSize:a4 interfaceOrientation:a5 configuration:a6 userInterfaceIdiom:v15 displayScale:width displayEdgeInfo:height, a7];
  v17 = [(NSMutableDictionary *)self->_cacheKeyToSizeValueMap objectForKey:v16];
  if (v17)
  {
    v18 = v17;
    [v17 CGSizeValue];
    width = v19;
    height = v20;
  }

  else
  {
    v21 = [_SBFluidSwitcherSheetMetricsView alloc];
    BSRectWithSize();
    v22 = [(_SBFluidSwitcherSheetMetricsView *)v21 initWithFrame:?];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __149__SBFluidSwitcherSheetMetricsCache_pageSheetMetricsForBoundsSize_interfaceOrientation_configuration_userInterfaceIdiom_displayScale_displayEdgeInfo___block_invoke;
    v44[3] = &__block_descriptor_64_e27_v16__0___UIMutableTraits__8l;
    v44[4] = a6;
    *&v44[5] = a7;
    *&v44[6] = width;
    *&v44[7] = height;
    v23 = [MEMORY[0x277D75C80] traitCollectionWithTraits:v44];
    [v15 sb_orientedEdgeInsetsForInterfaceOrientation:a4 traitCollection:v23];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(_SBFluidSwitcherSheetMetricsView *)v22 _setLocalOverrideTraitCollection:v23];
    [(_SBFluidSwitcherSheetMetricsView *)v22 setOverrideSafeAreaInsets:v25, v27, v29, v31];
    [(_SBFluidSwitcherSheetMetricsView *)v22 _setSafeAreaInsetsFrozen:1];
    [(_SBFluidSwitcherSheetMetricsView *)v22 _setSafeAreaInsetsFrozen:0];
    [(_SBFluidSwitcherSheetMetricsView *)v22 _setSafeAreaInsetsFrozen:1];
    if (a5 == 1)
    {
      v34 = +[SBAppSwitcherDomain rootSettings];
      v35 = [v34 centerWindowSizingSettings];

      if ([v35 useCustomSizingForNewWindows])
      {
        [v35 fullWidthScaleFactor];
        v37 = v36;
        [v35 fullHeightScaleFactor];
        width = width * v37;
        height = height * v38;
      }
    }

    else
    {
      if (a5)
      {
        _UISheetFormSize();
      }

      else
      {
        _UISheetPageSize();
      }

      width = v32;
      height = v33;
    }

    v18 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
    cacheKeyToSizeValueMap = self->_cacheKeyToSizeValueMap;
    if (!cacheKeyToSizeValueMap)
    {
      v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v41 = self->_cacheKeyToSizeValueMap;
      self->_cacheKeyToSizeValueMap = v40;

      cacheKeyToSizeValueMap = self->_cacheKeyToSizeValueMap;
    }

    [(NSMutableDictionary *)cacheKeyToSizeValueMap setObject:v18 forKey:v16];
  }

  v42 = width;
  v43 = height;
  result.height = v43;
  result.width = v42;
  return result;
}

void __149__SBFluidSwitcherSheetMetricsCache_pageSheetMetricsForBoundsSize_interfaceOrientation_configuration_userInterfaceIdiom_displayScale_displayEdgeInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUserInterfaceIdiom:v3];
  [v4 setDisplayScale:*(a1 + 40)];
  [v4 setHorizontalSizeClass:_UIUserInterfaceSizeClassForWidth()];
  [v4 setVerticalSizeClass:_UIUserInterfaceSizeClassForHeight()];
}

- (CGRect)pageSheetFrameForBounds:(CGRect)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(SBFluidSwitcherSheetMetricsCache *)self _displayEdgeInfo];
  v13 = [MEMORY[0x277D75418] currentDevice];
  -[SBFluidSwitcherSheetMetricsCache pageSheetFrameForBounds:interfaceOrientation:configuration:userInterfaceIdiom:displayScale:displayEdgeInfo:](self, "pageSheetFrameForBounds:interfaceOrientation:configuration:userInterfaceIdiom:displayScale:displayEdgeInfo:", a4, a5, [v13 userInterfaceIdiom], v12, x, y, width, height, SBScreenScale());
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)pageSheetFrameForBounds:(CGRect)a3 interfaceOrientation:(int64_t)a4 configuration:(int64_t)a5 userInterfaceIdiom:(int64_t)a6 displayScale:(double)a7 displayEdgeInfo:(id)a8
{
  if (a5 == 1)
  {
    [(SBFluidSwitcherSheetMetricsCache *)self pageSheetMetricsForBoundsSize:a4 interfaceOrientation:1 configuration:a6 userInterfaceIdiom:a8 displayScale:a3.size.width displayEdgeInfo:a3.size.height, a7];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = +[SBAppSwitcherDomain rootSettings];
    v17 = [v16 centerWindowSizingSettings];

    if ([v17 useCustomSizingForNewWindows])
    {
      [v17 topInset];
      UIRectInsetEdges();
      [v17 bottomInset];
      UIRectInsetEdges();
      [v17 leftInset];
      UIRectInsetEdges();
      [v17 rightInset];
      UIRectInsetEdges();
      v9 = v18;
      v11 = v19;
      v13 = v20;
      v15 = v21;
    }
  }

  else
  {
    [(SBFluidSwitcherSheetMetricsCache *)self pageSheetMetricsForBoundsSize:a4 interfaceOrientation:a5 configuration:a6 userInterfaceIdiom:a8 displayScale:a3.size.width displayEdgeInfo:a3.size.height, a7];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v9 = v22;
    v11 = v23;
    v13 = v24;
    v15 = v25;
  }

  v26 = v9;
  v27 = v11;
  v28 = v13;
  v29 = v15;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

@end