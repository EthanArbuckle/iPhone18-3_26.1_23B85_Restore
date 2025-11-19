@interface SBSystemApertureProvidedContentElement
- (CGSize)_sizeForEdgeView:(id)a3 thatFits:(CGSize)a4 layoutMode:(int64_t)a5;
- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5;
- (SAElementHosting)elementHost;
- (SAUILayoutHosting)layoutHost;
- (SBSystemAperturePlatformElementHosting)platformElementHost;
- (SBSystemApertureProvidedContentElement)initWithIdentifier:(id)a3 contentProvider:(id)a4;
- (UIView)leadingView;
- (UIView)minimalView;
- (UIView)trailingView;
- (double)_edgeSpacingWithConcentricPositioningIfNecessaryForView:(id)a3 withFrame:(CGRect)a4 inContainerView:(id)a5;
- (id)_actionView;
- (id)_primaryView;
- (id)_secondaryView;
- (id)elementDescription;
- (void)addElementLayoutSpecifierObserver:(id)a3;
- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5;
- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3;
- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3;
- (void)removeElementLayoutSpecifierObserver:(id)a3;
- (void)setExpanding:(BOOL)a3;
- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4;
- (void)setPreviewing:(BOOL)a3;
- (void)setProminent:(BOOL)a3;
- (void)setUrgent:(BOOL)a3;
@end

@implementation SBSystemApertureProvidedContentElement

- (SBSystemAperturePlatformElementHosting)platformElementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_platformElementHost);

  return WeakRetained;
}

- (UIView)leadingView
{
  leadingView = self->_leadingView;
  if (!leadingView)
  {
    v4 = [(SBUISystemApertureContentProviding *)self->_contentProvider leadingContentViewProvider];
    [v4 setContentContainer:self];
    v5 = [v4 providedView];
    v6 = self->_leadingView;
    self->_leadingView = v5;

    leadingView = self->_leadingView;
  }

  return leadingView;
}

- (UIView)trailingView
{
  trailingView = self->_trailingView;
  if (!trailingView)
  {
    v4 = [(SBUISystemApertureContentProviding *)self->_contentProvider trailingContentViewProvider];
    [v4 setContentContainer:self];
    v5 = [v4 providedView];
    v6 = self->_trailingView;
    self->_trailingView = v5;

    trailingView = self->_trailingView;
  }

  return trailingView;
}

- (UIView)minimalView
{
  minimalView = self->_minimalView;
  if (!minimalView)
  {
    v4 = [(SBUISystemApertureContentProviding *)self->_contentProvider minimalContentViewProvider];
    [v4 setContentContainer:self];
    v5 = [v4 providedView];
    v6 = self->_minimalView;
    self->_minimalView = v5;

    minimalView = self->_minimalView;
  }

  return minimalView;
}

- (id)elementDescription
{
  v7[1] = *MEMORY[0x277D85DE8];
  contentProvider = self->_contentProvider;
  v6 = @"contentProvider";
  v7[0] = contentProvider;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = SAElementIdentityDescription();

  return v4;
}

- (id)_secondaryView
{
  secondaryView = self->_secondaryView;
  if (!secondaryView)
  {
    v4 = [(SBUISystemApertureContentProviding *)self->_contentProvider secondaryContentViewProvider];
    [v4 setContentContainer:self];
    v5 = [v4 providedView];
    v6 = self->_secondaryView;
    self->_secondaryView = v5;

    secondaryView = self->_secondaryView;
  }

  return secondaryView;
}

- (id)_actionView
{
  actionView = self->_actionView;
  if (!actionView)
  {
    v4 = [(SBUISystemApertureContentProviding *)self->_contentProvider actionContentViewProvider];
    [v4 setContentContainer:self];
    v5 = [v4 providedView];
    v6 = self->_actionView;
    self->_actionView = v5;

    actionView = self->_actionView;
  }

  return actionView;
}

- (id)_primaryView
{
  primaryView = self->_primaryView;
  if (!primaryView)
  {
    v4 = [(SBUISystemApertureContentProviding *)self->_contentProvider primaryContentViewProvider];
    [v4 setContentContainer:self];
    v5 = [v4 providedView];
    v6 = self->_primaryView;
    self->_primaryView = v5;

    primaryView = self->_primaryView;
  }

  return primaryView;
}

- (SBSystemApertureProvidedContentElement)initWithIdentifier:(id)a3 contentProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemApertureProvidedContentElement initWithIdentifier:a2 contentProvider:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBSystemApertureProvidedContentElement initWithIdentifier:a2 contentProvider:self];
LABEL_3:
  v20.receiver = self;
  v20.super_class = SBSystemApertureProvidedContentElement;
  v10 = [(SBSystemApertureProvidedContentElement *)&v20 init];
  if (v10)
  {
    v11 = [v7 elementIdentifier];
    v12 = [v11 copy];
    v13 = *(v10 + 8);
    *(v10 + 8) = v12;

    v14 = [v7 clientIdentifier];
    v15 = [v14 copy];
    v16 = *(v10 + 9);
    *(v10 + 9) = v15;

    objc_storeStrong(v10 + 1, a4);
    *(v10 + 120) = vdupq_n_s64(3uLL);
    *(v10 + 17) = 3;
    v17 = [[SBSystemActionElementPreviewingCoordinator alloc] initWithElement:v10];
    v18 = *(v10 + 2);
    *(v10 + 2) = v17;
  }

  return v10;
}

- (void)setLayoutMode:(int64_t)a3 reason:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  layoutMode = self->_layoutMode;
  if (layoutMode != a3)
  {
    self->_layoutMode = a3;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(NSHashTable *)self->_observers allObjects];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 elementLayoutSpecifier:self layoutModeDidChange:layoutMode reason:a4];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (CGSize)sizeThatFitsSize:(CGSize)a3 forProvidedView:(id)a4 inLayoutMode:(int64_t)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = v9;
  if (v9 && (self->_leadingView == v9 || self->_trailingView == v9 || self->_minimalView == v9))
  {
    [(SBSystemApertureProvidedContentElement *)self _sizeForEdgeView:v9 thatFits:a5 layoutMode:width, height];
    v11 = v13;
    v12 = v14;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = v11;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)result maximumOutsets:(NSDirectionalEdgeInsets)a5
{
  bottom = result.bottom;
  if (a3 == 3)
  {
    leading = a5.leading;
    top = result.top;
    trailing = a5.trailing;
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 _referenceBounds];
    v10 = v9 + -20.0;

    [(SBSystemApertureProvidedContentElement *)self horizontalSpacingBetweenLeadingAndCenter];
    v12 = v11;
    [(SBSystemApertureProvidedContentElement *)self horizontalSpacingBetweenTrailingAndCenter];
    v14 = v10 - (v12 + v13);
    [(SBSystemApertureProvidedContentElement *)self _sizeForEdgeView:self->_leadingView thatFits:3 layoutMode:v14, 1.79769313e308];
    v16 = v15;
    v18 = v17;
    [(SBSystemApertureProvidedContentElement *)self _sizeForEdgeView:self->_trailingView thatFits:3 layoutMode:v14, 1.79769313e308];
    v20 = v19;
    v22 = v21;
    if (self->_leadingView)
    {
      [(SBSystemApertureProvidedContentElement *)self customEdgeSpacing];
      v24 = v16 + v23;
    }

    else
    {
      [(SBSystemApertureProvidedContentElement *)self customEdgeSpacing];
      v24 = v25 * 0.5;
    }

    v26 = v14 - v24;
    trailingView = self->_trailingView;
    [(SBSystemApertureProvidedContentElement *)self customEdgeSpacing];
    v29 = v20 + v28;
    v30 = v28 * 0.5;
    if (trailingView)
    {
      v30 = v29;
    }

    v31 = v26 - v30;
    v32 = [(SBSystemApertureProvidedContentElement *)self _primaryView];
    [v32 systemLayoutSizeFittingSize:{v31, 1.79769313e308}];
    v34 = v33;

    v35 = [(SBSystemApertureProvidedContentElement *)self _secondaryView];
    [v35 systemLayoutSizeFittingSize:{v31, 1.79769313e308}];
    v37 = v36;

    v38 = [(SBSystemApertureProvidedContentElement *)self _actionView];
    [v38 systemLayoutSizeFittingSize:{v31, 1.79769313e308}];
    v40 = v39;
    v42 = v41;

    if (v18 < v22)
    {
      v18 = v22;
    }

    if (v18 > 0.0)
    {
      SBUISystemApertureInterItemSpacing();
      v44 = v18 + v43 * 2.0;
      if (v44 > 50.0)
      {
        v44 = 50.0;
      }

      if (v18 < v44)
      {
        v18 = v44;
      }
    }

    v45 = v18 + -36.6666667;
    if (v18 + -36.6666667 < 0.0)
    {
      v45 = 0.0;
    }

    if (v45 < v34 + v37)
    {
      v45 = v34 + v37;
    }

    v46 = v42 + v45;
    if (v45 > 0.0)
    {
      [(SBSystemApertureProvidedContentElement *)self verticalItemSpacing];
      v46 = v46 + v47;
    }

    if (v40 != *MEMORY[0x277CBF3A8] || v42 != *(MEMORY[0x277CBF3A8] + 8))
    {
      SBUISystemApertureControlEdgeSpacing();
      v46 = v46 + v49;
    }

    if (bottom - v46 <= bottom + -50.0)
    {
      bottom = bottom - v46;
    }

    else
    {
      bottom = bottom + -50.0;
    }

    result.top = top;
    result.trailing = trailing;
  }

  else
  {
    leading = result.leading;
  }

  v50 = leading;
  v51 = bottom;
  result.bottom = v51;
  result.leading = v50;
  return result;
}

- (void)layoutHostContainerViewDidLayoutSubviews:(id)a3
{
  v4 = a3;
  if ([(SBSystemApertureProvidedContentElement *)self layoutMode]== 3)
  {
    v5 = [v4 effectiveUserInterfaceLayoutDirection];
    v6 = [v4 traitCollection];
    [v6 displayScale];
    v8 = v7;

    [v4 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UIView *)self->_actionView systemLayoutSizeFittingSize:v13, v15];
    v213 = *(MEMORY[0x277CBF3A0] + 8);
    r2_24 = *(MEMORY[0x277CBF3A0] + 24);
    r2_8 = *(MEMORY[0x277CBF3A8] + 8);
    r2_16 = *MEMORY[0x277CBF3A8];
    v19 = v18 == *MEMORY[0x277CBF3A8] && v17 == *(MEMORY[0x277CBF3A8] + 8);
    v215 = *(MEMORY[0x277CBF3A0] + 16);
    r2 = *MEMORY[0x277CBF3A0];
    v201 = v8;
    if (v19)
    {
      v199 = *(MEMORY[0x277CBF3A0] + 24);
      v200 = *(MEMORY[0x277CBF3A0] + 16);
      v195 = *MEMORY[0x277CBF3A0];
      v196 = *(MEMORY[0x277CBF3A0] + 8);
      v39 = v200;
    }

    else
    {
      SBUISystemApertureControlEdgeSpacing();
      BSRectWithSize();
      v21 = v20;
      recta = v22;
      v206 = v16;
      v24 = v23;
      v25 = v16;
      v27 = v26;
      v227.origin.x = v10;
      v227.origin.y = v12;
      v227.size.width = v14;
      v227.size.height = v25;
      CGRectGetMaxY(v227);
      v228.origin.x = v21;
      v228.origin.y = recta;
      v228.size.width = v24;
      v228.size.height = v27;
      CGRectGetHeight(v228);
      v193 = v8;
      v28 = v10;
      UIRectCenteredXInRectScale();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v229.origin.x = v28;
      v229.origin.y = v12;
      v229.size.width = v14;
      v229.size.height = v206;
      CGRectGetMaxY(v229);
      v195 = v30;
      v196 = v32;
      v230.origin.x = v30;
      v230.origin.y = v32;
      v199 = v36;
      v200 = v34;
      v230.size.width = v34;
      v230.size.height = v36;
      CGRectGetMinY(v230);
      UIRectInsetEdges();
      v14 = v37;
      v16 = v38;
      v39 = v215;
    }

    v40 = 88;
    if (v5 == 1)
    {
      v40 = 96;
    }

    v41 = *(&self->super.isa + v40);
    if (v41)
    {
      [(SBSystemApertureProvidedContentElement *)self _sizeForEdgeView:v41 thatFits:3 layoutMode:v14, v16];
      BSRectWithSize();
      [(SBSystemApertureProvidedContentElement *)self _edgeSpacingWithConcentricPositioningIfNecessaryForView:v41 withFrame:v4 inContainerView:?];
      v193 = v201;
      v39 = v215;
      UIRectCenteredYInRectScale();
      height = v231.size.height;
      width = v231.size.width;
      CGRectGetMaxX(v231);
      UIRectInsetEdges();
      v207 = v43;
      v209 = v42;
      v45 = v44;
      v47 = v46;
    }

    else
    {
      [(SBSystemApertureProvidedContentElement *)self customEdgeSpacing];
      UIRectInsetEdges();
      v207 = v49;
      v209 = v48;
      v45 = v50;
      v47 = v51;
      height = r2_24;
      width = v39;
    }

    if (v5 == 1)
    {
      p_leadingView = &self->_leadingView;
    }

    else
    {
      p_leadingView = &self->_trailingView;
    }

    v53 = *p_leadingView;
    if (v53)
    {
      [(SBSystemApertureProvidedContentElement *)self _sizeForEdgeView:v53 thatFits:3 layoutMode:v45, v47];
      BSRectWithSize();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      [(SBSystemApertureProvidedContentElement *)self _edgeSpacingWithConcentricPositioningIfNecessaryForView:v53 withFrame:v4 inContainerView:?];
      v232.origin.y = v207;
      v232.origin.x = v209;
      v232.size.width = v45;
      v232.size.height = v47;
      CGRectGetMaxX(v232);
      v233.origin.x = v55;
      v233.origin.y = v57;
      v233.size.width = v59;
      v233.size.height = v61;
      CGRectGetWidth(v233);
      v193 = v201;
      UIRectCenteredYInRectScale();
      v63 = v62;
      v65 = v64;
      v39 = v66;
      v68 = v67;
      v234.origin.x = v209;
      v234.origin.y = v207;
      v234.size.width = v45;
      v234.size.height = v47;
      CGRectGetMaxX(v234);
      v235.origin.x = v63;
      v235.origin.y = v65;
      v235.size.width = v39;
      v235.size.height = v68;
      CGRectGetMinX(v235);
      UIRectInsetEdges();
    }

    else
    {
      [(SBSystemApertureProvidedContentElement *)self customEdgeSpacing];
      UIRectInsetEdges();
      v68 = r2_24;
    }

    if (v200 == r2_16 && (v69 = v199, v199 == r2_8))
    {
      v70 = 1;
    }

    else
    {
      v70 = 0;
      v69 = r2_16;
      if (width == r2_16)
      {
        v69 = r2_8;
        if (height == r2_8)
        {
          v69 = r2_8;
          v70 = v68 == r2_8 && v39 == r2_16;
        }
      }
    }

    if (v5 == 1)
    {
      [(SBSystemApertureProvidedContentElement *)self horizontalSpacingBetweenTrailingAndCenter];
      [(SBSystemApertureProvidedContentElement *)self horizontalSpacingBetweenLeadingAndCenter];
    }

    else
    {
      [(SBSystemApertureProvidedContentElement *)self horizontalSpacingBetweenLeadingAndCenter];
      [(SBSystemApertureProvidedContentElement *)self horizontalSpacingBetweenTrailingAndCenter];
    }

    UIRectInsetEdges();
    UIRectInsetEdges();
    [(SBSystemApertureProvidedContentElement *)self verticalItemSpacing];
    UIRectInsetEdges();
    v74 = v73;
    v76 = v75;
    v77 = v72;
    if (v71 >= 0.0)
    {
      v78 = v71;
    }

    else
    {
      v78 = 0.0;
    }

    [(UIView *)self->_secondaryView systemLayoutSizeFittingSize:v78, v72, v193];
    v80 = v79;
    if (v81 == r2_16 && v79 == r2_8)
    {
      v86 = v78;
      v89 = r2_24;
      v85 = v215;
      v208 = v213;
      v210 = v215;
      v84 = r2;
      v90 = v76;
      v88 = r2;
      v194 = v90;
    }

    else
    {
      v236.origin.x = v74;
      v236.origin.y = v76;
      v236.size.width = v78;
      v236.size.height = v77;
      v83 = CGRectGetHeight(v236);
      if (v80 > v83)
      {
        v80 = v83;
      }

      v85 = v215;
      v84 = r2;
      if (v70)
      {
        v86 = v78;
        v208 = v76;
        v210 = v78;
        v87 = v76;
        v88 = v74;
        v194 = v87;
      }

      else
      {
        v237.origin.x = v74;
        v237.origin.y = v76;
        v237.size.width = v78;
        v237.size.height = v77;
        MaxY = CGRectGetMaxY(v237);
        v238.origin.x = v74;
        v238.origin.y = v76;
        v238.size.width = v78;
        v238.size.height = v80;
        v91 = v77;
        v92 = MaxY - CGRectGetHeight(v238);
        v239.origin.x = v74;
        v239.origin.y = v76;
        v239.size.width = v78;
        v239.size.height = v91;
        CGRectGetMaxY(v239);
        v208 = v92;
        v240.origin.x = v74;
        v240.origin.y = v92;
        v240.size.width = v78;
        v240.size.height = v80;
        CGRectGetMinY(v240);
        UIRectInsetEdges();
        v88 = v74;
        v74 = v93;
        v194 = v94;
        v86 = v95;
        v77 = v96;
        v210 = v78;
      }

      v89 = v80;
    }

    [(UIView *)self->_primaryView systemLayoutSizeFittingSize:v86, v77];
    v98 = v97;
    v100 = v99 == r2_16 && v97 == r2_8;
    rect = v88;
    if (v100)
    {
      v103 = v213;
    }

    else
    {
      v241.origin.x = v74;
      v241.origin.y = v194;
      v241.size.width = v86;
      v241.size.height = v77;
      v101 = CGRectGetHeight(v241);
      if (v98 <= v101)
      {
        v102 = v98;
      }

      else
      {
        v102 = v101;
      }

      r2_24 = v102;
      if (v70)
      {
        v84 = v74;
        v103 = v194;
      }

      else
      {
        v242.origin.x = v74;
        v242.origin.y = v194;
        v242.size.width = v86;
        v242.size.height = v77;
        v104 = CGRectGetMaxY(v242);
        v243.origin.x = v74;
        v243.origin.y = v194;
        v243.size.width = v86;
        v243.size.height = v102;
        v103 = v104 - CGRectGetHeight(v243);
        v244.origin.x = v74;
        v244.origin.y = v194;
        v244.size.width = v86;
        v244.size.height = v77;
        CGRectGetMaxY(v244);
        v245.origin.x = v74;
        v245.origin.y = v103;
        v245.size.width = v86;
        v245.size.height = v102;
        CGRectGetMinY(v245);
        UIRectInsetEdges();
        v84 = v74;
      }

      v85 = v86;
    }

    r2a = v84;
    v246.origin.x = v84;
    v105 = v103;
    v246.origin.y = v103;
    v246.size.width = v85;
    v246.size.height = r2_24;
    v106 = CGRectGetHeight(v246);
    v247.origin.x = rect;
    v247.origin.y = v208;
    v247.size.width = v210;
    v203 = v89;
    v247.size.height = v89;
    v107 = CGRectGetHeight(v247);
    [(SBSystemApertureProvidedContentElement *)self verticalSpacingBetweenPrimaryAndSecondary];
    if (v70 && (v109 = v106 + v107 + v108, (BSFloatIsZero() & 1) == 0))
    {
      v111 = [(UIView *)self->_primaryView traitCollection];
      [v111 displayScale];
      UIRectCenteredYInRectScale();
      v216 = v113;
      r2a = v112;
      v85 = v114;
      r2_24 = v115;

      UIRectCenteredYInRectScale();
      v203 = v117;
      rect = v116;
      v119 = v118;
      v110 = v120;
      v121 = v109 * 0.5 - v106;
      v105 = v216 - (v106 * 0.5 + v121);
      v122 = v107 * 0.5 - v121;
      [(SBSystemApertureProvidedContentElement *)self verticalSpacingBetweenPrimaryAndSecondary];
      v208 = v119 + v122 + v123;
    }

    else
    {
      v110 = v210;
    }

    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    v126 = *(MEMORY[0x277CBF398] + 16);
    v127 = *(MEMORY[0x277CBF398] + 24);
    v128 = r2_24;
    if (v85 != r2_16 || r2_24 != r2_8)
    {
      v130 = r2a;
      v131 = v105;
      v132 = v85;
      v248 = CGRectUnion(*MEMORY[0x277CBF398], *(&v128 - 3));
      x = v248.origin.x;
      y = v248.origin.y;
      v126 = v248.size.width;
      v127 = v248.size.height;
    }

    v214 = v105;
    v217 = v85;
    v212 = v110;
    if (v110 != r2_16 || v203 != r2_8)
    {
      v249.origin.x = x;
      v249.origin.y = y;
      v249.size.width = v126;
      v249.size.height = v127;
      v258.origin.x = rect;
      v258.origin.y = v208;
      v258.size.width = v110;
      v258.size.height = v203;
      v250 = CGRectUnion(v249, v258);
      x = v250.origin.x;
      y = v250.origin.y;
      v126 = v250.size.width;
      v127 = v250.size.height;
    }

    v251.origin.x = x;
    v251.origin.y = y;
    v251.size.width = v126;
    v251.size.height = v127;
    CGRectIsNull(v251);
    UIRectCenteredYInRectScale();
    r2_16a = v133;
    v135 = v134;
    v137 = v136;
    v139 = v138;
    UIRectCenteredYInRectScale();
    v144 = v140;
    v145 = v141;
    v146 = v142;
    v147 = v143;
    if (v5 != 1)
    {
      v140 = r2_16a;
      v141 = v135;
      v142 = v137;
      v143 = v139;
    }

    [(UIView *)self->_leadingView sb_setBoundsAndPositionFromFrame:v140, v141, v142, v143, v201];
    if (v5 == 1)
    {
      v148 = r2_16a;
    }

    else
    {
      v148 = v144;
    }

    if (v5 == 1)
    {
      v149 = v135;
    }

    else
    {
      v149 = v145;
    }

    if (v5 == 1)
    {
      v150 = v137;
    }

    else
    {
      v150 = v146;
    }

    if (v5 == 1)
    {
      v151 = v139;
    }

    else
    {
      v151 = v147;
    }

    [(UIView *)self->_trailingView sb_setBoundsAndPositionFromFrame:v148, v149, v150, v151];
    v152 = [MEMORY[0x277D67E28] sharedInstanceForEmbeddedDisplay];
    [v152 sensorRegionSize];
    v154 = v153;
    v156 = v155;

    [v4 bounds];
    v157 = fmax(CGRectGetWidth(v252) - v154, 0.0) * 0.5;
    v158 = [(SBSystemApertureProvidedContentElement *)self _primaryView];
    [v158 intrinsicContentSize];
    v160 = v159;
    v162 = v161;

    v163 = [(SBSystemApertureProvidedContentElement *)self dodgeSensorAreaOnIntrinsicContentSize];
    if (v163)
    {
      v164 = v162;
    }

    else
    {
      v164 = r2_24;
    }

    v165 = v217;
    if (v163)
    {
      v166 = v160;
    }

    else
    {
      v166 = v217;
    }

    v259.origin.y = 0.0;
    v167 = r2a;
    v168 = v214;
    v169 = v214;
    v259.origin.x = v157;
    v259.size.width = v154;
    v259.size.height = v156;
    if (CGRectIntersectsRect(*(&v164 - 3), v259))
    {
      [v4 bounds];
      r2_16b = CGRectGetHeight(v253);
      v254.origin.x = r2a;
      v254.origin.y = v214;
      v254.size.width = v217;
      v254.size.height = r2_24;
      v170 = CGRectGetMaxY(v254);
      v171 = rect;
      v255.origin.y = v208;
      v255.origin.x = rect;
      v202 = v154;
      v172 = v157;
      v255.size.width = v212;
      v173 = v203;
      v255.size.height = v203;
      v174 = CGRectGetMaxY(v255);
      if (v170 >= v174)
      {
        v174 = v170;
      }

      v165 = v217;
      v256.size.height = v156;
      v256.origin.y = 0.0;
      v175 = fmax(r2_16b - v174, 0.0);
      v256.origin.x = v172;
      v256.size.width = v202;
      r2_16c = CGRectGetMaxY(v256);
      v257.origin.x = r2a;
      v257.origin.y = v214;
      v257.size.width = v217;
      v176 = r2_24;
      v257.size.height = r2_24;
      MinY = CGRectGetMinY(v257);
      v178 = v212;
      v179 = r2_16c - MinY;
      if (v175 < v179)
      {
        v179 = v175;
      }

      v168 = v214 + v179;
      v180 = v208 + v179;
    }

    else
    {
      v180 = v208;
      v178 = v212;
      v176 = r2_24;
      v173 = v203;
      v171 = rect;
    }

    v226[0] = MEMORY[0x277D85DD0];
    v226[1] = 3221225472;
    v226[2] = __83__SBSystemApertureProvidedContentElement_layoutHostContainerViewDidLayoutSubviews___block_invoke;
    v226[3] = &unk_2783AE418;
    v226[4] = self;
    *&v226[5] = v195;
    *&v226[6] = v196;
    *&v226[7] = v200;
    *&v226[8] = v199;
    *&v226[9] = r2a;
    *&v226[10] = v168;
    *&v226[11] = v165;
    *&v226[12] = v176;
    *&v226[13] = v171;
    *&v226[14] = v180;
    *&v226[15] = v178;
    *&v226[16] = v173;
    [MEMORY[0x277D75D18] performWithoutAnimation:v226];
  }

  v181 = [(SBSystemApertureProvidedContentElement *)self _primaryView];
  v182 = v181;
  if (self->_layoutMode >= 3)
  {
    v183 = 1.0;
  }

  else
  {
    v183 = 0.0;
  }

  [v181 setAlpha:v183];

  v184 = [(SBSystemApertureProvidedContentElement *)self _secondaryView];
  v185 = v184;
  if (self->_layoutMode >= 3)
  {
    v186 = 1.0;
  }

  else
  {
    v186 = 0.0;
  }

  [v184 setAlpha:v186];

  v187 = [(SBSystemApertureProvidedContentElement *)self _actionView];
  v188 = v187;
  if (self->_layoutMode >= 3)
  {
    v189 = 1.0;
  }

  else
  {
    v189 = 0.0;
  }

  [v187 setAlpha:v189];

  v190 = [(SBSystemApertureProvidedContentElement *)self minimalView];
  v191 = v190;
  if (self->_layoutMode == 1)
  {
    v192 = 1.0;
  }

  else
  {
    v192 = 0.0;
  }

  [v190 setAlpha:v192];
}

uint64_t __83__SBSystemApertureProvidedContentElement_layoutHostContainerViewDidLayoutSubviews___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) sb_setBoundsAndPositionFromFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 32) sb_setBoundsAndPositionFromFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v2 = *(*(a1 + 32) + 40);
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  v5 = *(a1 + 120);
  v6 = *(a1 + 128);

  return [v2 sb_setBoundsAndPositionFromFrame:{v3, v4, v5, v6}];
}

- (void)contentProviderWillTransitionToSize:(CGSize)a3 inContainerView:(id)a4 transitionCoordinator:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self->_layoutMode == 3)
  {
    v9 = [(SBSystemApertureProvidedContentElement *)self _primaryView];
    [v7 addSubview:v9];

    v10 = [(SBSystemApertureProvidedContentElement *)self _secondaryView];
    [v7 addSubview:v10];

    v11 = [(SBSystemApertureProvidedContentElement *)self _actionView];
    [v7 addSubview:v11];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __116__SBSystemApertureProvidedContentElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke;
  v13[3] = &unk_2783BE8B8;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v14 = v12;
  [v8 animateAlongsideTransition:v13 completion:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __116__SBSystemApertureProvidedContentElement_contentProviderWillTransitionToSize_inContainerView_transitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained layoutHostContainerViewDidLayoutSubviews:*(a1 + 32)];
}

- (void)addElementLayoutSpecifierObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeElementLayoutSpecifierObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)setPreviewing:(BOOL)a3
{
  if (self->_previewing != a3)
  {
    self->_previewing = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setUrgent:(BOOL)a3
{
  if (self->_urgent != a3)
  {
    self->_urgent = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setExpanding:(BOOL)a3
{
  if (self->_expanding != a3)
  {
    self->_expanding = a3;
    [(SBSystemActionElementPreviewingCoordinator *)self->_previewingCoordinator elementInvalidatedProperties];
  }
}

- (void)setProminent:(BOOL)a3
{
  if (self->_prominent != a3)
  {
    self->_prominent = a3;
    WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
    [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
  }
}

- (void)preferredContentSizeDidInvalidateForContentViewProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);
  [WeakRetained preferredEdgeOutsetsDidInvalidateForLayoutSpecifier:self];
}

- (double)_edgeSpacingWithConcentricPositioningIfNecessaryForView:(id)a3 withFrame:(CGRect)a4 inContainerView:(id)a5
{
  height = a4.size.height;
  v8 = a3;
  v9 = a5;
  if ((self->_leadingView == v8 || self->_trailingView == v8) && !self->_actionView && !self->_secondaryView && BSFloatApproximatelyEqualToFloat())
  {
    [v9 frame];
    v11 = (v10 - height) * 0.5;
  }

  else
  {
    [(SBSystemApertureProvidedContentElement *)self customEdgeSpacing];
    v11 = v12;
  }

  return v11;
}

- (CGSize)_sizeForEdgeView:(id)a3 thatFits:(CGSize)a4 layoutMode:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  if (!v10)
  {
    v15 = *MEMORY[0x277CBF3A8];
    v16 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_17;
  }

  v11 = [(SBSystemApertureProvidedContentElement *)self leadingView];
  if (v11 == v10)
  {
    goto LABEL_8;
  }

  v12 = [(SBSystemApertureProvidedContentElement *)self trailingView];
  v13 = v12;
  if (v12 == v10)
  {

    goto LABEL_8;
  }

  v14 = [(SBSystemApertureProvidedContentElement *)self minimalView];

  if (v14 != v10)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SBSystemApertureProvidedContentElement.m" lineNumber:520 description:@"Why are we trying to determine the edge-view size of a non-edge view?"];
LABEL_8:
  }

  [v10 systemLayoutSizeFittingSize:{width, height}];
  v15 = v17;
  v16 = v18;
  if (a5 == 3)
  {
    v19 = 37.0;
  }

  else
  {
    v19 = 0.0;
  }

  if (BSSizeLessThanSize() && BSSizeLessThanSize())
  {
    v16 = v19;
    v15 = v19;
  }

  v20 = [(SBSystemApertureProvidedContentElement *)self minimalView];

  if (v20 == v10)
  {
    BSSizeSwap();
    v15 = v21;
    v16 = v22;
  }

LABEL_17:

  v23 = v15;
  v24 = v16;
  result.height = v24;
  result.width = v23;
  return result;
}

- (SAElementHosting)elementHost
{
  WeakRetained = objc_loadWeakRetained(&self->_elementHost);

  return WeakRetained;
}

- (SAUILayoutHosting)layoutHost
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutHost);

  return WeakRetained;
}

- (void)initWithIdentifier:(uint64_t)a1 contentProvider:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureProvidedContentElement.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)initWithIdentifier:(uint64_t)a1 contentProvider:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureProvidedContentElement.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"contentProvider"}];
}

@end