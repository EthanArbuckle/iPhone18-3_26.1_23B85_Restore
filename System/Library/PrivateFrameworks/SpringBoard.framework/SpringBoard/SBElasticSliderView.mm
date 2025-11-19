@interface SBElasticSliderView
- (BOOL)_usesSolariumBackground;
- (CGPoint)_elasticGlyphCenterForDefaultGlyphCenter:(CGPoint)a3;
- (CGPoint)glyphCenter;
- (SBElasticSliderView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)shadowOutsets;
- (double)_fractionToRegularMetrics;
- (double)_minorAxisElasticLength;
- (id)_createElasticBackgroundView;
- (void)_layoutAccessoryViews;
- (void)_updateCornerRadius;
- (void)_updateGlyphScaleForAdditiveScaleOrAxisUpdate;
- (void)_updateShadowMode;
- (void)layoutElasticContentViews;
- (void)setAccessoryLayoutEdge:(unint64_t)a3;
- (void)setAccessoryViewPadding:(double)a3;
- (void)setAdditiveGlyphScaleFactor:(double)a3;
- (void)setAxis:(unint64_t)a3;
- (void)setCompactMinorAxisDimension:(double)a3;
- (void)setContinuousSliderCornerRadius:(double)a3;
- (void)setCornerRadiusMinorAxisFraction:(double)a3;
- (void)setLeadingAccessoryView:(id)a3;
- (void)setRegularMinorAxisDimension:(double)a3;
- (void)setShadowMode:(unint64_t)a3;
- (void)setTrailingAccessoryView:(id)a3;
@end

@implementation SBElasticSliderView

- (SBElasticSliderView)initWithFrame:(CGRect)a3
{
  v39.receiver = self;
  v39.super_class = SBElasticSliderView;
  v3 = [(CCUIContinuousSliderView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_accessoryLayoutEdge = 0;
    [(SBElasticSliderView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
    maskView = v4->_maskView;
    v4->_maskView = v13;

    [(UIView *)v4->_maskView setUserInteractionEnabled:0];
    v15 = [(UIView *)v4->_maskView layer];
    [v15 setCompositingFilter:*MEMORY[0x277CDA310]];

    v16 = [(CCUIBaseSliderView *)v4 elasticContentBoundaryView];
    [v16 insertSubview:v4->_maskView atIndex:0];

    v17 = [(SBElasticSliderView *)v4 _usesSolariumBackground];
    if (!v17)
    {
      v18 = MEMORY[0x277D26718];
      v19 = [MEMORY[0x277D75418] currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v21 = @"elasticHUDBackgroundSheer";
      }

      else
      {
        v21 = @"elasticHUDBackground";
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v18 materialViewWithRecipeNamed:v21 inBundle:v22 options:2 initialWeighting:0 scaleAdjustment:1.0];
      baseMaterialView = v4->_baseMaterialView;
      v4->_baseMaterialView = v23;

      v25 = v4->_baseMaterialView;
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p", @"SBElasticSliderMaterialView", v4];
      [(MTMaterialView *)v25 setGroupNameBase:v26];

      v27 = [(CCUIBaseSliderView *)v4 elasticContentView];
      [v27 insertSubview:v4->_baseMaterialView atIndex:0];
    }

    v28 = [(CCUIBaseSliderView *)v4 elasticContentView];
    [v28 setClipsToBounds:1];
    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, v12}];
    shadowView = v4->_shadowView;
    v4->_shadowView = v29;

    v31 = [(UIView *)v4->_shadowView layer];
    [v31 setShadowPathIsBounds:1];

    v32 = [(CCUIBaseSliderView *)v4 elasticBackgroundContentView];
    [v32 insertSubview:v4->_shadowView atIndex:0];

    [(SBElasticSliderView *)v4 _updateShadowMode];
    if (v17)
    {
      v33 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:8];
      [v33 setSubvariant:@"volumeSlider"];
      [v28 _setBackground:v33];
    }

    else
    {
      v34 = [(MTMaterialView *)v4->_baseMaterialView copy];
      captureOnlyMaterialView = v4->_captureOnlyMaterialView;
      v4->_captureOnlyMaterialView = v34;

      [(MTMaterialView *)v4->_captureOnlyMaterialView setCaptureOnly:1];
      v36 = v4->_captureOnlyMaterialView;
      v37 = [(MTMaterialView *)v4->_baseMaterialView groupNameBase];
      [(MTMaterialView *)v36 setGroupNameBase:v37];

      v33 = [(CCUIBaseSliderView *)v4 elasticBackgroundContentView];
      [v33 insertSubview:v4->_captureOnlyMaterialView atIndex:0];
    }
  }

  return v4;
}

- (void)setContinuousSliderCornerRadius:(double)a3
{
  v5 = [(CCUIBaseSliderView *)self elasticContentView];
  [v5 _setContinuousCornerRadius:a3];

  [(UIView *)self->_shadowView _setContinuousCornerRadius:a3];
  v6 = [(UIView *)self->_shadowView layer];
  [v6 setShadowOffset:{0.0, a3 * 0.25}];
}

- (void)layoutElasticContentViews
{
  v12.receiver = self;
  v12.super_class = SBElasticSliderView;
  [(CCUIContinuousSliderView *)&v12 layoutElasticContentViews];
  v3 = [(CCUIBaseSliderView *)self elasticContentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(MTMaterialView *)self->_captureOnlyMaterialView setFrame:v5, v7, v9, v11];
  [(MTMaterialView *)self->_baseMaterialView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_shadowView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_maskView setFrame:v5, v7, v9, v11];
  [(SBElasticSliderView *)self _updateCornerRadius];
  [(SBElasticSliderView *)self _layoutAccessoryViews];
  [(SBElasticSliderView *)self _updateShadowMode];
}

- (CGPoint)glyphCenter
{
  v5.receiver = self;
  v5.super_class = SBElasticSliderView;
  [(CCUIContinuousSliderView *)&v5 glyphCenter];
  [(SBElasticSliderView *)self _elasticGlyphCenterForDefaultGlyphCenter:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setAxis:(unint64_t)a3
{
  if ([(CCUIContinuousSliderView *)self axis]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SBElasticSliderView;
    [(CCUIContinuousSliderView *)&v5 setAxis:a3];
    [(SBElasticSliderView *)self _updateGlyphScaleForAdditiveScaleOrAxisUpdate];
  }
}

- (void)setCornerRadiusMinorAxisFraction:(double)a3
{
  if (self->_cornerRadiusMinorAxisFraction != a3)
  {
    self->_cornerRadiusMinorAxisFraction = a3;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setRegularMinorAxisDimension:(double)a3
{
  if (self->_regularMinorAxisDimension != a3)
  {
    self->_regularMinorAxisDimension = a3;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setCompactMinorAxisDimension:(double)a3
{
  if (self->_compactMinorAxisDimension != a3)
  {
    self->_compactMinorAxisDimension = a3;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setAdditiveGlyphScaleFactor:(double)a3
{
  if (self->_additiveGlyphScaleFactor != a3)
  {
    self->_additiveGlyphScaleFactor = a3;
    [(SBElasticSliderView *)self _updateGlyphScaleForAdditiveScaleOrAxisUpdate];
  }
}

- (void)setShadowMode:(unint64_t)a3
{
  if (self->_shadowMode != a3)
  {
    self->_shadowMode = a3;
    [(SBElasticSliderView *)self _updateShadowMode];
  }
}

- (UIEdgeInsets)shadowOutsets
{
  v2 = [(UIView *)self->_shadowView layer];
  [v2 shadowOffset];
  [v2 shadowRadius];
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsMin();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setLeadingAccessoryView:(id)a3
{
  v5 = a3;
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView != v5)
  {
    v8 = v5;
    [(UIView *)leadingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_leadingAccessoryView, a3);
    v7 = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
    [v7 addSubview:v8];

    [(SBElasticSliderView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setTrailingAccessoryView:(id)a3
{
  v5 = a3;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != v5)
  {
    v8 = v5;
    [(UIView *)trailingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_trailingAccessoryView, a3);
    v7 = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
    [v7 addSubview:v8];

    [(SBElasticSliderView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setAccessoryLayoutEdge:(unint64_t)a3
{
  if (self->_accessoryLayoutEdge != a3)
  {
    self->_accessoryLayoutEdge = a3;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setAccessoryViewPadding:(double)a3
{
  if (self->_accessoryViewPadding != a3)
  {
    self->_accessoryViewPadding = a3;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (double)_minorAxisElasticLength
{
  v3 = [(CCUIBaseSliderView *)self elasticContentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CCUIContinuousSliderView *)self axis];
  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  if (v12 == 1)
  {

    return CGRectGetHeight(*&v13);
  }

  else
  {

    return CGRectGetWidth(*&v13);
  }
}

- (double)_fractionToRegularMetrics
{
  [(SBElasticSliderView *)self regularMinorAxisDimension];
  v4 = v3;
  [(SBElasticSliderView *)self compactMinorAxisDimension];
  v6 = v5;
  [(SBElasticSliderView *)self _minorAxisElasticLength];
  if (v4 <= 0.0 || v6 <= 0.0 || v7 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return fmax(fmin((v7 - v6) / (v4 - v6) * 4.0, 1.0), 0.0);
  }
}

- (void)_updateCornerRadius
{
  [(SBElasticSliderView *)self _fractionToRegularMetrics];
  v4 = v3;
  [(SBElasticSliderView *)self _minorAxisElasticLength];
  v6 = v5;
  [(SBElasticSliderView *)self cornerRadiusMinorAxisFraction];
  v8 = v6 * (v4 * v7 + (1.0 - v4) * 0.5);

  [(SBElasticSliderView *)self setContinuousSliderCornerRadius:v8];
}

- (void)_layoutAccessoryViews
{
  v77 = [(SBElasticSliderView *)self leadingAccessoryView];
  v3 = [(SBElasticSliderView *)self trailingAccessoryView];
  [v77 frame];
  v66 = v4;
  v68 = v5;
  v7 = v6;
  rect = v8;
  [v3 frame];
  v10 = v9;
  v70 = v11;
  v13 = v12;
  v75 = v14;
  v15 = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(SBElasticSliderView *)self accessoryViewPadding];
  v25 = v24;
  v26 = [(SBElasticSliderView *)self accessoryLayoutEdge];
  if (v26 == 4)
  {
    v83.origin.x = v17;
    v83.origin.y = v19;
    v83.size.width = v21;
    v83.size.height = v23;
    MidX = CGRectGetMidX(v83);
    v84.origin.x = v17;
    v84.origin.y = v19;
    v84.size.width = v21;
    v84.size.height = v23;
    CGRectGetMaxY(v84);
    v85.origin.x = v66;
    v85.origin.y = v68;
    v85.size.width = v7;
    v85.size.height = rect;
    v30 = CGRectGetHeight(v85) * 0.5;
    v86.origin.x = v10;
    v86.origin.y = v70;
    v86.size.width = v13;
    v86.size.height = v75;
    v29 = 0;
    v28 = 0;
    MaxY = v25 * 0.5 + v30 + CGRectGetHeight(v86) * 0.5;
  }

  else
  {
    if (!v26)
    {
      if ([(CCUIContinuousSliderView *)self axis]== 1)
      {
        LOBYTE(v26) = 2;
      }

      else
      {
        LOBYTE(v26) = 1;
      }
    }

    if ((v26 & 2) != 0)
    {
      v31 = [(SBElasticSliderView *)self effectiveUserInterfaceLayoutDirection];
      v65 = v13;
      v32 = v17;
      v33 = v19;
      v34 = v21;
      v35 = v23;
      if (v31 == 1)
      {
        v36 = v25 + CGRectGetMaxX(*&v32);
        v87.origin.x = v17;
        v87.origin.y = v19;
        v87.size.width = v21;
        v87.size.height = v23;
        v37 = CGRectGetMinX(v87) - v13 - v25;
      }

      else
      {
        v36 = CGRectGetMinX(*&v32) - v7 - v25;
        v88.origin.x = v17;
        v88.origin.y = v19;
        v88.size.width = v21;
        v88.size.height = v23;
        v37 = v25 + CGRectGetMaxX(v88);
      }

      v89.origin.x = v17;
      v89.origin.y = v19;
      v89.size.width = v21;
      v89.size.height = v23;
      MidY = CGRectGetMidY(v89);
      v90.origin.x = v36;
      v90.origin.y = v68;
      v90.size.width = v7;
      v90.size.height = rect;
      v39 = MidY - CGRectGetHeight(v90) * 0.5;
      v91.origin.x = v17;
      v91.origin.y = v19;
      v91.size.width = v21;
      v91.size.height = v23;
      v40 = CGRectGetMidY(v91);
      v92.origin.x = v37;
      v92.origin.y = v70;
      v92.size.width = v65;
      v92.size.height = v75;
      v71 = v40 - CGRectGetHeight(v92) * 0.5;
      v93.origin.x = v36;
      v93.origin.y = v39;
      v93.size.width = v7;
      v93.size.height = rect;
      CGRectGetMidX(v93);
      v94.origin.x = v36;
      v94.origin.y = v39;
      v94.size.width = v7;
      v94.size.height = rect;
      CGRectGetMidY(v94);
      v95.origin.x = v37;
      v95.origin.y = v71;
      v95.size.width = v65;
      v95.size.height = v75;
      CGRectGetMidX(v95);
      v96.origin.x = v37;
      v96.origin.y = v71;
      v96.size.width = v65;
      v96.size.height = v75;
      MaxY = CGRectGetMidY(v96);
      v29 = 0;
      v28 = 1;
    }

    else
    {
      v79.origin.x = v17;
      v79.origin.y = v19;
      v79.size.width = v21;
      v79.size.height = v23;
      CGRectGetMidX(v79);
      v80.origin.x = v17;
      v80.origin.y = v19;
      v80.size.width = v21;
      v80.size.height = v23;
      CGRectGetMinY(v80);
      v81.origin.x = v17;
      v81.origin.y = v19;
      v81.size.width = v21;
      v81.size.height = v23;
      CGRectGetMidX(v81);
      v82.origin.x = v17;
      v82.origin.y = v19;
      v82.size.width = v21;
      v82.size.height = v23;
      MaxY = CGRectGetMaxY(v82);
      v28 = 0;
      v29 = 1;
    }
  }

  [v77 frame];
  SBUnintegralizedRectCenteredAboutPoint();
  v67 = v41;
  v43 = v42;
  recta = v45;
  v76 = v44;
  [v3 frame];
  SBUnintegralizedRectCenteredAboutPoint();
  v47 = v46;
  v49 = v48;
  v69 = v51;
  v72 = v50;
  v52 = [(SBElasticSliderView *)self traitCollection];
  [v52 displayScale];

  [v77 frame];
  UIRectCenteredAboutPointScale();
  v54 = v53;
  v56 = v55;
  [v3 frame];
  UIRectCenteredAboutPointScale();
  if (v28)
  {
    v59 = v54;
  }

  else
  {
    v57 = v47;
    v59 = v67;
  }

  if (v28)
  {
    v60 = v43;
  }

  else
  {
    v60 = v56;
  }

  if (v28)
  {
    v61 = v49;
  }

  else
  {
    v61 = v58;
  }

  if ((v29 & (v57 < 2.0)) != 0)
  {
    v62 = 2.0;
  }

  else
  {
    v62 = v57;
  }

  if ((v29 & (v59 < 2.0)) != 0)
  {
    v63 = 2.0;
  }

  else
  {
    v63 = v59;
  }

  [v77 setFrame:{v63, v60, v76, recta}];
  [v3 setFrame:{v62, v61, v72, v69}];
}

- (void)_updateShadowMode
{
  shadowMode = self->_shadowMode;
  if (shadowMode == 1)
  {
    v3 = 5.0;
    v4 = 1050253722;
  }

  else if (shadowMode)
  {
    v4 = 0;
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
    v4 = 1043878380;
  }

  v6 = [(UIView *)self->_shadowView layer];
  LODWORD(v5) = v4;
  [v6 setShadowOpacity:v5];
  [v6 setShadowRadius:v3];
}

- (CGPoint)_elasticGlyphCenterForDefaultGlyphCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CCUIBaseSliderView *)self glyphContainerView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if ([(CCUIContinuousSliderView *)self axis]== 2)
  {
    v11 = v8 * 0.5;
    v12 = v10 - v8;
  }

  else
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v11 = v8 - v10;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 * 0.5;
  }

  [(SBElasticSliderView *)self _fractionToRegularMetrics];
  v14 = y * v13 + (1.0 - v13) * v12;
  v15 = x * v13 + (1.0 - v13) * v11;
  result.y = v14;
  result.x = v15;
  return result;
}

- (void)_updateGlyphScaleForAdditiveScaleOrAxisUpdate
{
  [(SBElasticSliderView *)self additiveGlyphScaleFactor];
  v4 = v3;
  v5 = dbl_21F8A7ED0[[(CCUIContinuousSliderView *)self axis]== 2];
  v6 = _UISolariumEnabled();
  v7 = v5 * 0.9;
  if (!v6)
  {
    v7 = v5;
  }

  v8 = 1.0;
  if (v4 != 0.0)
  {
    v8 = v4;
  }

  v9 = v8 * v7;

  [(CCUIBaseSliderView *)self setGlyphScale:v9];
}

- (id)_createElasticBackgroundView
{
  if ([(SBElasticSliderView *)self _usesSolariumBackground])
  {
    v2 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    v5 = MEMORY[0x277D26718];
    if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v2 = [v5 materialViewWithRecipeNamed:@"elasticHUDModuleSheer" inBundle:v6 options:0 initialWeighting:0 scaleAdjustment:1.0];
    }

    else
    {
      v2 = [MEMORY[0x277D26718] materialViewWithRecipe:4];
    }
  }

  return v2;
}

- (BOOL)_usesSolariumBackground
{
  v2 = _UISolariumEnabled();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

@end