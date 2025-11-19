@interface SAUIElementView
- (BOOL)_configureLeadingTransformViewIfNecessary;
- (BOOL)_configureMinimalTransformViewIfNecessary;
- (BOOL)_configureTrailingTransformViewIfNecessary;
- (BOOL)_configureTransformView:(id *)a3 ifNecessaryWithProvidedView:(id)a4 assertIfConfigurationRequired:(id)a5;
- (NSDirectionalEdgeInsets)suggestedOutsetsForLayoutMode:(int64_t)a3 maximumOutsets:(NSDirectionalEdgeInsets)a4;
- (SAUIElementView)initWithElementViewProvider:(id)a3;
- (SAUIElementViewDelegate)delegate;
- (_SAUIProvidedViewContainerView)minimalTransformView;
- (double)_paddingForView:(id)a3 fromProvider:(id)a4 inLayoutMode:(int64_t)a5;
- (id)_effectiveMinimalView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_didLayoutResizedTransformView:(id)a3;
- (void)layoutSubviews;
- (void)setLayoutAxis:(unint64_t)a3;
@end

@implementation SAUIElementView

- (BOOL)_configureTrailingTransformViewIfNecessary
{
  v3 = [(SAUIElementViewProviding *)self->_elementViewProvider trailingView];
  v4 = [(SAUIElementView *)self _configureTransformView:&self->_trailingTransformView ifNecessaryWithProvidedView:v3 assertIfConfigurationRequired:0];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained elementView:self didConfigureTrailingTransformView:self->_trailingTransformView];
    }
  }

  return v4;
}

- (void)layoutSubviews
{
  v90.receiver = self;
  v90.super_class = SAUIElementView;
  [(SAUIElementView *)&v90 layoutSubviews];
  v3 = [(SAUIElementView *)self _configureMinimalTransformViewIfNecessary];
  v61 = [(SAUIElementView *)self _configureLeadingTransformViewIfNecessary];
  v62 = [(SAUIElementView *)self _configureTrailingTransformViewIfNecessary];
  [(SAUIElementView *)self bounds];
  rect.origin.x = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v64 = [(SAUIElementView *)self traitCollection];
  [v64 displayScale];
  v65 = v11;
  v12 = [(SAUIElementView *)self traitCollection];
  v13 = [v12 layoutDirection];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained layoutModeForElementView:self];

  v16 = [(SAUIElementViewProviding *)self->_elementViewProvider leadingView];
  v17 = [(SAUIElementView *)self _effectiveMinimalView];
  v18 = [(SAUIElementViewProviding *)self->_elementViewProvider trailingView];
  v63 = v16;
  v60 = v17;
  if (v15 == 1)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19;
  [v20 sizeThatFits:{v8, v10}];
  BSRectWithSize();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = objc_loadWeakRetained(&self->_delegate);
  if (v15 == 1 && (objc_opt_respondsToSelector() & 1) != 0 && [v29 elementViewShouldCenterProvidedContent:self])
  {
    v59 = v65;
    UIRectCenteredIntegralRectScale();
  }

  else
  {
    [(SAUIElementView *)self _paddingForView:v20 fromProvider:self->_elementViewProvider inLayoutMode:v15];
    if (self->_layoutAxis == 2)
    {
      v59 = v65;
      UIRectCenteredXInRectScale();
    }

    else
    {
      if (v13 == 1)
      {
        v91.origin.x = rect.origin.x;
        v91.origin.y = v6;
        v91.size.width = v8;
        v91.size.height = v10;
        CGRectGetWidth(v91);
        v92.origin.x = v22;
        v92.origin.y = v24;
        v92.size.width = v26;
        v92.size.height = v28;
        CGRectGetWidth(v92);
      }

      v59 = v65;
      UIRectCenteredYInRectScale();
    }
  }

  v34 = v30;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __33__SAUIElementView_layoutSubviews__block_invoke;
  v89[3] = &__block_descriptor_40_e85_v56__0___SAUIProvidedViewContainerView_8__UIView_16_CGRect__CGPoint_dd__CGSize_dd__24l;
  v89[4] = v15;
  v38 = MEMORY[0x26D6A2080](v89);
  v39 = v38;
  if (v3)
  {
    v40 = MEMORY[0x277D75D18];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __33__SAUIElementView_layoutSubviews__block_invoke_3;
    v82[3] = &unk_279D32968;
    v84 = v38;
    v82[4] = self;
    v83 = v20;
    v85 = v34;
    v86 = v35;
    v87 = v36;
    v88 = v37;
    [v40 performWithoutAnimation:{v82, v59}];
  }

  else
  {
    (v38)[2](v38, self->_minimalTransformView, v20, v34, v35, v36, v37);
  }

  if (v61)
  {
    v41 = MEMORY[0x277D75D18];
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __33__SAUIElementView_layoutSubviews__block_invoke_4;
    v75[3] = &unk_279D32968;
    v77 = v39;
    v75[4] = self;
    v76 = v20;
    v78 = v34;
    v79 = v35;
    v80 = v36;
    v81 = v37;
    [v41 performWithoutAnimation:v75];
  }

  else
  {
    (v39)[2](v39, self->_leadingTransformView, v20, v34, v35, v36, v37);
  }

  [v18 sizeThatFits:{v8, v10, v59}];
  BSRectWithSize();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  [(SAUIElementView *)self _paddingForView:v18 fromProvider:self->_elementViewProvider inLayoutMode:v15];
  if (v13 != 1)
  {
    v93.origin.x = rect.origin.x;
    v93.origin.y = v6;
    v93.size.width = v8;
    v93.size.height = v10;
    CGRectGetWidth(v93);
    v94.origin.x = v43;
    v94.origin.y = v45;
    v94.size.width = v47;
    v94.size.height = v49;
    CGRectGetWidth(v94);
  }

  UIRectCenteredYInRectScale();
  v54 = v50.n128_u64[0];
  v55 = v51.n128_u64[0];
  v56 = v52.n128_u64[0];
  v57 = v53.n128_u64[0];
  if (v62)
  {
    v58 = MEMORY[0x277D75D18];
    *&rect.origin.y = MEMORY[0x277D85DD0];
    *&rect.size.width = 3221225472;
    *&rect.size.height = __33__SAUIElementView_layoutSubviews__block_invoke_5;
    v67 = &unk_279D32968;
    v70 = v39;
    v68 = self;
    v69 = v18;
    v71 = v54;
    v72 = v55;
    v73 = v56;
    v74 = v57;
    [v58 performWithoutAnimation:{&rect.origin.y, v65}];
  }

  else
  {
    (v39[2])(v39, self->_trailingTransformView, v18, v50, v51, v52, v53);
  }
}

- (BOOL)_configureMinimalTransformViewIfNecessary
{
  v4 = [(SAUIElementView *)self _effectiveMinimalView];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SAUIElementView__configureMinimalTransformViewIfNecessary__block_invoke;
  v9[3] = &unk_279D32990;
  v9[4] = self;
  v5 = v4;
  v10 = v5;
  v11 = a2;
  v6 = [(SAUIElementView *)self _configureTransformView:&self->_minimalTransformView ifNecessaryWithProvidedView:v5 assertIfConfigurationRequired:v9];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained elementView:self didConfigureMinimalTransformView:self->_minimalTransformView];
    }
  }

  return v6;
}

- (id)_effectiveMinimalView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isMinimalViewIsolatedForElementView:self] && (objc_opt_respondsToSelector())
  {
    v4 = [(SAUIElementViewProviding *)self->_elementViewProvider detachedMinimalView];
  }

  else
  {
    v4 = [(SAUIElementViewProviding *)self->_elementViewProvider minimalView];
  }

  v5 = v4;
  if (!v4)
  {
    v6 = [(SAUIElementViewProviding *)self->_elementViewProvider minimalView];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(SAUIElementViewProviding *)self->_elementViewProvider leadingView];
    }

    v5 = v8;
  }

  return v5;
}

- (BOOL)_configureLeadingTransformViewIfNecessary
{
  v3 = [(SAUIElementViewProviding *)self->_elementViewProvider leadingView];
  v4 = [(SAUIElementView *)self _configureTransformView:&self->_leadingTransformView ifNecessaryWithProvidedView:v3 assertIfConfigurationRequired:0];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained elementView:self didConfigureLeadingTransformView:self->_leadingTransformView];
    }
  }

  return v4;
}

void __33__SAUIElementView_layoutSubviews__block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  SAUISetViewFrameMaintainingTransform(v13, a4, a5, a6, a7);
  if (*(a1 + 32) != 3 && [v13 portalsProvidedView])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__SAUIElementView_layoutSubviews__block_invoke_2;
    v16[3] = &unk_279D32920;
    v17 = v14;
    v18 = a4;
    v19 = a5;
    v20 = a6;
    v21 = a7;
    v15 = MEMORY[0x26D6A2080](v16);
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {
      [MEMORY[0x277D75D18] _modifyAnimationsByDecomposingGeometricTypes:1 animations:v15];
    }

    else
    {
      v15[2](v15);
    }
  }
}

- (_SAUIProvidedViewContainerView)minimalTransformView
{
  if ([(SAUIElementView *)self _configureMinimalTransformViewIfNecessary])
  {
    [(SAUIElementView *)self setNeedsLayout];
  }

  minimalTransformView = self->_minimalTransformView;

  return minimalTransformView;
}

- (SAUIElementView)initWithElementViewProvider:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SAUIElementView;
  v6 = [(SAUIElementView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementViewProvider, a3);
    v8 = [_SAUIElementViewContentView alloc];
    [(SAUIElementView *)v7 bounds];
    v9 = [(_SAUIElementViewContentView *)v8 initWithFrame:?];
    contentView = v7->_contentView;
    v7->_contentView = v9;

    [(SAUIElementView *)v7 addSubview:v7->_contentView];
    [(UIView *)v7->_contentView setAutoresizingMask:18];
  }

  return v7;
}

- (NSDirectionalEdgeInsets)suggestedOutsetsForLayoutMode:(int64_t)a3 maximumOutsets:(NSDirectionalEdgeInsets)a4
{
  v5 = *MEMORY[0x277D75060];
  v4 = *(MEMORY[0x277D75060] + 8);
  v7 = *(MEMORY[0x277D75060] + 16);
  v6 = *(MEMORY[0x277D75060] + 24);
  if (a3 >= 1)
  {
    if (a3 == 1)
    {
      layoutAxis = self->_layoutAxis;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained maximumSizeOfMinimalViewForElementView:self];
        v12 = *MEMORY[0x277CBF3A8];
        v13 = *(MEMORY[0x277CBF3A8] + 8);
        v14 = v10 == *MEMORY[0x277CBF3A8];
        if (v11 != v13)
        {
          v14 = 0;
        }

        if (layoutAxis != 2)
        {
          v14 = 1;
        }

        if (v14)
        {
          v15 = v11;
        }

        else
        {
          v15 = v10;
        }

        if (v14)
        {
          v16 = v10;
        }

        else
        {
          v16 = v11;
        }
      }

      else
      {
        v12 = *MEMORY[0x277CBF3A8];
        v13 = *(MEMORY[0x277CBF3A8] + 8);
        v15 = 1.79769313e308;
        v16 = 1.79769313e308;
      }

      v23 = [(SAUIElementView *)self _effectiveMinimalView];
      if (objc_opt_respondsToSelector())
      {
        [(SAUIElementViewProviding *)self->_elementViewProvider sizeThatFitsSize:v23 forProvidedView:1 inLayoutMode:v16, v15];
        v12 = v24;
        v13 = v25;
      }

      if (v12 == 0.0 && v13 == 0.0)
      {
        [v23 sizeThatFits:{v16, v15}];
        v12 = v26;
        v13 = v27;
      }

      if (layoutAxis == 2)
      {
        v28 = v13;
      }

      else
      {
        v28 = v12;
      }

      v29 = -v28;
      [(SAUIElementView *)self _paddingForView:v23 fromProvider:self->_elementViewProvider inLayoutMode:1];
      v31 = v30;
      v4 = v29 - v30;
      v6 = 0.0;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained elementViewShouldCenterProvidedContent:self])
      {
        v4 = v4 - v31;
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v19 = objc_opt_respondsToSelector();
      if (v19)
      {
        [WeakRetained maximumSizeOfLeadingViewForElementView:self];
        v21 = v20;
        v57 = v22;
      }

      else
      {
        v21 = 1.79769313e308;
        v57 = 1.79769313e308;
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained maximumSizeOfTrailingViewForElementView:self];
        v33 = v32;
        [(SAUIElementViewProviding *)self->_elementViewProvider leadingView];
      }

      else
      {
        v33 = 1.79769313e308;
        [(SAUIElementViewProviding *)self->_elementViewProvider leadingView];
      }
      v23 = ;
      v35 = [(SAUIElementViewProviding *)self->_elementViewProvider trailingView];
      v36 = 0.0;
      v37 = 0.0;
      if (objc_opt_respondsToSelector())
      {
        [(SAUIElementViewProviding *)self->_elementViewProvider sizeThatFitsSize:v23 forProvidedView:a3 inLayoutMode:v21, v57];
        v37 = v38;
        [(SAUIElementViewProviding *)self->_elementViewProvider sizeThatFitsSize:v35 forProvidedView:a3 inLayoutMode:v33, v56];
        v36 = v39;
      }

      if (fabs(v37) < 2.22044605e-16)
      {
        [v23 sizeThatFits:{v21, v57}];
        v37 = v40;
      }

      if (fabs(v36) < 2.22044605e-16)
      {
        [v35 sizeThatFits:{v33, v56}];
        v36 = v41;
      }

      v42 = -v37;
      if (v37 >= v36)
      {
        v43 = v37;
      }

      else
      {
        v43 = v36;
      }

      v44 = -v43;
      if (a3 == 3)
      {
        v45 = v44;
      }

      else
      {
        v45 = -v37;
      }

      if (a3 == 3)
      {
        v46 = v44;
      }

      else
      {
        v46 = -v36;
      }

      if (v45 != v4 || v5 != 0.0 || v46 != v6 || v7 != 0.0)
      {
        v47 = [(SAUIElementViewProviding *)self->_elementViewProvider leadingView:v42];
        [(SAUIElementView *)self _paddingForView:v47 fromProvider:self->_elementViewProvider inLayoutMode:a3];
        v49 = v48;

        v45 = v45 - v49;
        v50 = [(SAUIElementViewProviding *)self->_elementViewProvider trailingView];
        [(SAUIElementView *)self _paddingForView:v50 fromProvider:self->_elementViewProvider inLayoutMode:a3];
        v46 = v46 - v51;
      }

      v6 = v46;
      v4 = v45;
    }

    v7 = 0.0;
    v5 = 0.0;
  }

  v52 = v5;
  v53 = v4;
  v54 = v7;
  v55 = v6;
  result.trailing = v55;
  result.bottom = v54;
  result.leading = v53;
  result.top = v52;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SAUIElementView;
  v5 = [(SAUIElementView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

uint64_t __33__SAUIElementView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setLayoutAxis:(unint64_t)a3
{
  if (a3 - 1 <= 1 && self->_layoutAxis != a3)
  {
    self->_layoutAxis = a3;
    if (objc_opt_respondsToSelector())
    {
      [(SAUIElementViewProviding *)self->_elementViewProvider setLayoutAxis:self->_layoutAxis];
    }

    [(SAUIElementView *)self setNeedsLayout];
  }
}

- (double)_paddingForView:(id)a3 fromProvider:(id)a4 inLayoutMode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = 12.0;
  if (v8 && ((objc_opt_respondsToSelector() & 1) == 0 || [v9 isProvidedViewConcentric:v8 inLayoutMode:a5]))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained concentricPaddingForProvidedView:v8 fromViewProvider:v9];
      v10 = v12;
    }
  }

  return v10;
}

- (BOOL)_configureTransformView:(id *)a3 ifNecessaryWithProvidedView:(id)a4 assertIfConfigurationRequired:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!a3)
  {
    [SAUIElementView _configureTransformView:a2 ifNecessaryWithProvidedView:self assertIfConfigurationRequired:?];
  }

  v11 = *a3;
  v12 = v11;
  if (v9 && ([(_SAUIProvidedViewContainerView *)v11 providedView], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, (v14 & 1) == 0))
  {
    [(_SAUIProvidedViewContainerView *)v12 setProvidedView:0];
    [(_SAUIProvidedViewContainerView *)v12 removeFromSuperview];
    v16 = objc_alloc_init(_SAUIProvidedViewContainerView);

    [(_SAUIProvidedViewContainerView *)v16 setProvidedView:v9];
    [(_SAUIProvidedViewContainerView *)v16 setElementView:self];
    v15 = 1;
    v12 = v16;
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(a3, v12);
  if (v10 && v15)
  {
    v10[2](v10);
  }

  if (!*a3 || ([*a3 superview], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 == self))
  {
    v18 = 0;
  }

  else
  {
    if ([*a3 portalsProvidedView])
    {
      [(UIView *)self->_contentView addSubview:v9];
    }

    [(SAUIElementView *)self addSubview:*a3];
    v18 = 1;
  }

  return v18;
}

void __60__SAUIElementView__configureMinimalTransformViewIfNecessary__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 416) leadingView];
  if (v3 == v2[1])
  {
    v5 = v3;
    v4 = [*(*v2 + 432) portalsProvidedView];

    if (v4)
    {
      return;
    }

    __60__SAUIElementView__configureMinimalTransformViewIfNecessary__block_invoke_cold_1(a1, v2, &v6);
    v3 = v6;
  }
}

- (void)_didLayoutResizedTransformView:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (self->_minimalTransformView == v6)
  {
    [WeakRetained elementView:self didLayoutResizedMinimalTransformView:?];
  }

  else if (self->_leadingTransformView == v6)
  {
    [WeakRetained elementView:self didLayoutResizedLeadingTransformView:?];
  }

  else if (self->_trailingTransformView == v6)
  {
    [WeakRetained elementView:self didLayoutResizedTrailingTransformView:v6];
  }
}

- (SAUIElementViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_configureTransformView:(uint64_t)a1 ifNecessaryWithProvidedView:(uint64_t)a2 assertIfConfigurationRequired:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUIElementView.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"transformViewPtr != nil"}];
}

uint64_t __60__SAUIElementView__configureMinimalTransformViewIfNecessary__block_invoke_cold_1(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  v7 = *(a1 + 48);
  v8 = *a2;

  return [v6 handleFailureInMethod:v7 object:v8 file:@"SAUIElementView.m" lineNumber:301 description:{@"If the provided minimal and leading views are the same, only portalling is supported."}];
}

@end