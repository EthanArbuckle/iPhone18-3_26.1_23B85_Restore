@interface _TVCollectionWrappingView
+ (void)gradientConfigForCollection:(id)collection gradientMask:(int64_t)mask gradientLengths:(UIEdgeInsets *)lengths gradientInset:(UIEdgeInsets *)inset gradientBoundsInset:(UIEdgeInsets *)boundsInset;
- (BOOL)shouldBindRowsTogether;
- (CGRect)_adjustedHeaderFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)_adjustedPadding;
- (_TVCollectionWrappingView)initWithFrame:(CGRect)frame;
- (double)_adjustedShowcaseFactor;
- (double)_showcaseContentScaleForExpectedWidth:(double)width;
- (id)_collectionRowMetricsForExpectedWidth:(double)width firstItemRowIndex:(int64_t *)index forShowcase:(BOOL)showcase;
- (id)_currentHeaderView;
- (id)preferredFocusEnvironments;
- (id)rowMetricsForExpectedWidth:(double)width firstItemRowIndex:(int64_t *)index;
- (void)_updateGradientLayer;
- (void)_updateSubviews;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)reevaluateFooterFrame;
- (void)reevaluateHeaderFrame;
- (void)setCentered:(BOOL)centered;
- (void)setCollectionView:(id)view;
- (void)setFooterView:(id)view;
- (void)setHeaderFloating:(BOOL)floating;
- (void)setHeaderHidden:(BOOL)hidden;
- (void)setHeaderView:(id)view;
- (void)setIkBackgroundColor:(id)color;
- (void)setShowcaseConfig:(TVShowcaseConfig *)config;
- (void)setValue:(id)value forTVViewStyle:(id)style;
- (void)traitCollectionDidChange:(id)change;
- (void)tv_setShowcaseFactor:(double)factor;
@end

@implementation _TVCollectionWrappingView

+ (void)gradientConfigForCollection:(id)collection gradientMask:(int64_t)mask gradientLengths:(UIEdgeInsets *)lengths gradientInset:(UIEdgeInsets *)inset gradientBoundsInset:(UIEdgeInsets *)boundsInset
{
  maskCopy = mask;
  [collection contentInset];
  v15 = *MEMORY[0x277D768C8];
  if (maskCopy)
  {
    v18 = 90.0;
    if (v11 < 100.0)
    {
      v19 = 100.0 - v11;
      v20 = -(100.0 - v11);
      v15 = v15 + v19;
      goto LABEL_8;
    }
  }

  else
  {
    v16 = v11 < 100.0;
    v17 = -(100.0 - v11);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = *MEMORY[0x277D768C8];
    }
  }

  v20 = *MEMORY[0x277D768C8];
LABEL_8:
  v21 = *(MEMORY[0x277D768C8] + 16);
  if ((maskCopy & 4) != 0)
  {
    v22 = 90.0;
    if (v13 < 150.0)
    {
      v23 = 150.0 - v13;
      v24 = -(150.0 - v13);
      v21 = v23 + v21;
      goto LABEL_15;
    }
  }

  else if (v13 >= 150.0)
  {
    v22 = *(MEMORY[0x277D768C8] + 16);
  }

  else
  {
    v22 = -(150.0 - v13);
  }

  v24 = *(MEMORY[0x277D768C8] + 16);
LABEL_15:
  v25 = *(MEMORY[0x277D768C8] + 8);
  if ((maskCopy & 8) != 0)
  {
    v27 = 90.0;
    if (v12 < 100.0)
    {
      v28 = 100.0 - v12;
      v29 = -(100.0 - v12);
      v25 = v25 + v28;
      goto LABEL_22;
    }
  }

  else
  {
    v16 = v12 < 100.0;
    v26 = -(100.0 - v12);
    if (v16)
    {
      v27 = v26;
    }

    else
    {
      v27 = *(MEMORY[0x277D768C8] + 8);
    }
  }

  v29 = *(MEMORY[0x277D768C8] + 8);
LABEL_22:
  v30 = *(MEMORY[0x277D768C8] + 24);
  if ((maskCopy & 0x10) == 0)
  {
    v16 = v14 < 100.0;
    v31 = -(100.0 - v14);
    if (v16)
    {
      v32 = v31;
    }

    else
    {
      v32 = *(MEMORY[0x277D768C8] + 24);
    }

LABEL_29:
    v34 = *(MEMORY[0x277D768C8] + 24);
    if (!lengths)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v32 = 90.0;
  if (v14 >= 100.0)
  {
    goto LABEL_29;
  }

  v33 = 100.0 - v14;
  v34 = -(100.0 - v14);
  v30 = v33 + v30;
  if (lengths)
  {
LABEL_30:
    lengths->top = v18;
    lengths->left = v27;
    lengths->bottom = v22;
    lengths->right = v32;
  }

LABEL_31:
  if (inset)
  {
    inset->top = v15;
    inset->left = v25;
    inset->bottom = v21;
    inset->right = v30;
  }

  if (boundsInset)
  {
    boundsInset->top = v20;
    boundsInset->left = v29;
    boundsInset->bottom = v24;
    boundsInset->right = v34;
  }
}

- (_TVCollectionWrappingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVCollectionWrappingView;
  v3 = [(_TVCollectionWrappingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    +[_TVShelfViewLayout defaultHeaderSelectionMargin];
    v3->_headerSelectionMargin = v4;
    v3->_headerFloating = 1;
    v3->_headerAuxiliarySelecting = 1;
  }

  return v3;
}

- (void)setHeaderFloating:(BOOL)floating
{
  if (self->_headerFloating != floating)
  {
    self->_headerFloating = floating;
    headerView = [(_TVCollectionWrappingView *)self headerView];
    [headerView removeFromSuperview];

    [(_TVCollectionWrappingView *)self _updateSubviews];

    [(_TVCollectionWrappingView *)self setNeedsLayout];
  }
}

- (void)setHeaderHidden:(BOOL)hidden
{
  headerHidden = self->_headerHidden;
  if (headerHidden != hidden)
  {
    self->_headerHidden = hidden;
    headerView = [(_TVCollectionWrappingView *)self headerView];
    [headerView setHidden:self->_headerHidden];

    [(_TVCollectionWrappingView *)self setNeedsLayout];
    if (headerHidden)
    {
      window = [(_TVCollectionWrappingView *)self window];
      screen = [window screen];
      obj = [screen focusedView];

      collectionView = [(_TVCollectionWrappingView *)self collectionView];
      LODWORD(screen) = [obj isDescendantOfView:collectionView];

      if (screen)
      {
        objc_storeStrong(&self->_selectingView, obj);
        [(_TVCollectionWrappingView *)self reevaluateHeaderFrame];
      }
    }
  }
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  v8 = viewCopy;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    self->_headerFrame.origin = *MEMORY[0x277CBF3A0];
    self->_headerFrame.size = v7;
    [(_TVCollectionWrappingView *)self _updateSubviews];
  }

  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  collectionView = self->_collectionView;
  v7 = viewCopy;
  if (collectionView != viewCopy)
  {
    [(_TVCollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, view);
    self->_collectionViewFlags.respondsToAugmentedSelectionFrameForFrame = objc_opt_respondsToSelector() & 1;
    [(_TVCollectionWrappingView *)self _updateSubviews];
  }

  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (void)setCentered:(BOOL)centered
{
  if (self->_centered != centered)
  {
    self->_centered = centered;
    [(_TVCollectionWrappingView *)self setNeedsLayout];
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  footerView = self->_footerView;
  v8 = viewCopy;
  if (footerView != viewCopy)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    self->_footerFrame.origin = *MEMORY[0x277CBF3A0];
    self->_footerFrame.size = v7;
    [(_TVCollectionWrappingView *)self _updateSubviews];
  }

  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (void)reevaluateFooterFrame
{
  _currentFooterView = [(_TVCollectionWrappingView *)self _currentFooterView];
  v15 = CGRectIntegral(self->_footerFrame);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  [_currentFooterView frame];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectEqualToRect(v16, v17))
  {
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50___TVCollectionWrappingView_reevaluateFooterFrame__block_invoke;
    v9[3] = &unk_279D6EAB8;
    v10 = _currentFooterView;
    v11 = x;
    v12 = y;
    v13 = width;
    v14 = height;
    [v8 tv_performByPreventingAdditiveAnimations:v9];
  }
}

- (void)reevaluateHeaderFrame
{
  _currentHeaderView = [(_TVCollectionWrappingView *)self _currentHeaderView];
  [(_TVCollectionWrappingView *)self _adjustedHeaderFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_currentHeaderView frame];
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  if (!CGRectEqualToRect(v19, v20))
  {
    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50___TVCollectionWrappingView_reevaluateHeaderFrame__block_invoke;
    v13[3] = &unk_279D6EAB8;
    v14 = _currentHeaderView;
    v15 = v5;
    v16 = v7;
    v17 = v9;
    v18 = v11;
    [v12 tv_performByPreventingAdditiveAnimations:v13];
  }
}

- (void)tv_setShowcaseFactor:(double)factor
{
  if (self->_showcaseFactor != factor)
  {
    self->_showcaseFactor = factor;
    collectionView = [(_TVCollectionWrappingView *)self collectionView];
    [collectionView tv_setShowcaseFactor:factor];

    [(_TVCollectionWrappingView *)self setNeedsLayout];
  }
}

- (void)setValue:(id)value forTVViewStyle:(id)style
{
  v5.receiver = self;
  v5.super_class = _TVCollectionWrappingView;
  [(UIView *)&v5 setValue:value forTVViewStyle:style];
  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(_TVCollectionWrappingView *)self _adjustedPadding:fits.width];
  v69 = v5;
  v70 = v6;
  v8 = v7;
  v10 = v9;
  v68 = v9;
  headerView = [(_TVCollectionWrappingView *)self headerView];
  [headerView tv_margin];
  v65 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(_TVCollectionWrappingView *)self _adjustedShowcaseFactor];
  v20 = v19;
  v67 = width;
  if (width - (v8 + v14 + v10 + v18) >= 2.22044605e-16)
  {
    v21 = width - (v8 + v14 + v10 + v18);
  }

  else
  {
    v21 = width;
  }

  v64 = v21;
  headerView2 = [(_TVCollectionWrappingView *)self headerView];
  [headerView2 tv_sizeThatFits:{v21, 0.0}];
  v24 = v23;

  collectionView = [(_TVCollectionWrappingView *)self collectionView];
  _displaysHorizontalIndexTitleBar = [collectionView _displaysHorizontalIndexTitleBar];

  v27 = *MEMORY[0x277D77428];
  if (!_displaysHorizontalIndexTitleBar)
  {
    v27 = 0.0;
  }

  v28 = 1.0 - v20;
  v29 = (1.0 - v20) * v24;
  v30 = *MEMORY[0x277D768C8];
  v31 = *(MEMORY[0x277D768C8] + 16);
  if (v29 == 0.0)
  {
    v32 = *(MEMORY[0x277D768C8] + 16);
  }

  else
  {
    v32 = v16;
  }

  v33 = v65;
  if (v29 == 0.0)
  {
    v33 = *MEMORY[0x277D768C8];
  }

  v66 = v33;
  v34 = v28 * v27;
  v35 = v28 * v27 == 0.0;
  v36 = 18.0;
  if (v35)
  {
    v36 = 0.0;
  }

  v62 = v36;
  v63 = v32;
  footerView = [(_TVCollectionWrappingView *)self footerView];
  [footerView tv_margin];
  v58 = v39;
  v60 = v38;
  v41 = v40;
  v43 = v42;

  if (v64 >= 2.22044605e-16)
  {
    v44 = v67 - (v8 + v41 + v68 + v43);
  }

  else
  {
    v44 = v67;
  }

  v45 = [(_TVCollectionWrappingView *)self footerView:v58];
  [v45 tv_sizeThatFits:{v44, 0.0}];
  v47 = v46;

  v49 = v59;
  v48 = v61;
  if (v28 * v47 == 0.0)
  {
    v48 = v30;
    v49 = v31;
  }

  v50 = v70 + v49 + v28 * v47 + v48;
  collectionView2 = [(_TVCollectionWrappingView *)self collectionView];
  [collectionView2 tv_sizeThatFits:v67 withContentInset:{0.0, v69 + v62 + v34 + v29 + v66 + v63, v8, v50, v68}];
  v53 = v52;
  v55 = v54;

  v56 = v53;
  v57 = v55;
  result.height = v57;
  result.width = v56;
  return result;
}

- (void)layoutSubviews
{
  v145.receiver = self;
  v145.super_class = _TVCollectionWrappingView;
  [(_TVCollectionWrappingView *)&v145 layoutSubviews];
  [(_TVCollectionWrappingView *)self bounds];
  v138 = v3;
  v139 = v4;
  v124 = v5;
  v7 = v6;
  collectionView = [(_TVCollectionWrappingView *)self collectionView];
  _currentHeaderView = [(_TVCollectionWrappingView *)self _currentHeaderView];
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v132 = v10;
  v127 = v11;
  v126 = v12;
  v14 = v13;
  [(UIView *)self tv_padding];
  v16 = v15;
  v18 = v17;
  [_currentHeaderView tv_margin];
  v130 = v19;
  v131 = v20;
  v22 = v21;
  v24 = v23;
  [(_TVCollectionWrappingView *)self _adjustedShowcaseFactor];
  v26 = v25;
  [(_TVCollectionWrappingView *)self _showcaseContentScaleForExpectedWidth:v7];
  v136 = v26;
  sx = 1.0 - (1.0 - v27) * v26;
  v123 = v16 + v18;
  if (v7 - (v22 + v24) - (v16 + v18) >= 2.22044605e-16)
  {
    v28 = v7 - (v22 + v24) - (v16 + v18);
  }

  else
  {
    v28 = v7;
  }

  effectiveUserInterfaceLayoutDirection = [(_TVCollectionWrappingView *)self effectiveUserInterfaceLayoutDirection];
  [_currentHeaderView tv_sizeThatFits:{v28, 0.0}];
  v31 = v30;
  v33 = v32;
  v134 = v14;
  v34 = v7 - (v14 + v24 + v30);
  v125 = v16;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v35 = v34;
  }

  else
  {
    v35 = v16 + v22;
  }

  if (v30 < v28)
  {
    tv_alignment = [_currentHeaderView tv_alignment];
    v37 = floor((v7 - v31) * 0.5);
    if (tv_alignment != 2)
    {
      v37 = v35;
    }

    if (tv_alignment == 3)
    {
      v35 = v34;
    }

    else
    {
      v35 = v37;
    }
  }

  v146.origin.y = v132 + v130;
  v146.origin.x = v35;
  v146.size.width = v31;
  v146.size.height = v33;
  self->_headerFrame = CGRectIntegral(v146);
  [(_TVCollectionWrappingView *)self _adjustedHeaderFrame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  layer = [_currentHeaderView layer];
  [layer anchorPoint];
  v48 = v47;
  v50 = v49;

  [_currentHeaderView setBounds:{0.0, 0.0, v43, v45}];
  v117 = v41;
  v118 = v39;
  v115 = v45;
  v116 = v43;
  v51 = v39 + v43 * v48;
  v52 = v41 + v45 * v50;
  [_currentHeaderView setCenter:{roundf(v51), roundf(v52)}];
  _displaysHorizontalIndexTitleBar = [collectionView _displaysHorizontalIndexTitleBar];
  if (_displaysHorizontalIndexTitleBar)
  {
    v54 = *MEMORY[0x277D77428];
  }

  else
  {
    v54 = 0.0;
  }

  v55 = 18.0;
  if (!_displaysHorizontalIndexTitleBar)
  {
    v55 = 0.0;
  }

  v121 = v54;
  v120 = v55 + v54 + v131 + v130 + self->_headerFrame.size.height;
  v122 = floor((1.0 - v136) * v120);
  v129 = ceil(v136 * v120);
  v119 = ceil(v139 / sx);
  [collectionView setFrame:0.0];
  [(CAGradientLayer *)self->_gradientLayer setFrame:v138, v124, v7, v139];
  _currentFooterView = [(_TVCollectionWrappingView *)self _currentFooterView];
  [_currentFooterView tv_margin];
  v59 = v57;
  v61 = v60;
  v62 = v58;
  if (v7 - (v57 + v58) - v123 >= 2.22044605e-16)
  {
    v63 = v7 - (v57 + v58) - v123;
  }

  else
  {
    v63 = v7;
  }

  [_currentFooterView tv_sizeThatFits:{v63, 0.0}];
  v65 = v64;
  v67 = v66;
  v68 = v7 - (v134 + v62 + v64);
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v69 = v68;
  }

  else
  {
    v69 = v125 + v59;
  }

  if (v64 < v63)
  {
    tv_alignment2 = [_currentFooterView tv_alignment];
    v71 = floor((v7 - v65) * 0.5);
    if (tv_alignment2 != 2)
    {
      v71 = v69;
    }

    if (tv_alignment2 == 3)
    {
      v69 = v68;
    }

    else
    {
      v69 = v71;
    }
  }

  v72 = v126 + v61 + v67;
  v147.origin.y = v139 - v72;
  v147.origin.x = v69;
  v147.size.width = v65;
  v147.size.height = v67;
  v148 = CGRectIntegral(v147);
  self->_footerFrame = v148;
  v149 = CGRectIntegral(v148);
  x = v149.origin.x;
  y = v149.origin.y;
  width = v149.size.width;
  height = v149.size.height;
  layer2 = [_currentFooterView layer];
  [layer2 anchorPoint];
  v79 = v78;
  v81 = v80;

  [_currentFooterView setBounds:{0.0, 0.0, width, height}];
  v82 = x + width * v79;
  v83 = v132 + v122;
  *&v82 = v82;
  v84 = y + height * v81;
  [_currentFooterView setCenter:{roundf(*&v82), roundf(v84)}];
  [(_TVCollectionWrappingView *)self _updateGradientLayer];
  effectiveUserInterfaceLayoutDirection2 = [(_TVCollectionWrappingView *)self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection2 == 1)
  {
    v86 = v134;
  }

  else
  {
    v86 = v127;
  }

  if (effectiveUserInterfaceLayoutDirection2 == 1)
  {
    v87 = v127;
  }

  else
  {
    v87 = v134;
  }

  [collectionView contentInset];
  if (v91 != v86 || (v88 == v83 ? (v92 = v90 == v87) : (v92 = 0), v92 ? (v93 = v89 == v72) : (v93 = 0), !v93))
  {
    [collectionView contentOffset];
    v95 = v94;
    v97 = v96;
    [collectionView contentInset];
    v99 = v98;
    v133 = v100;
    v135 = v101;
    v128 = v102;
    [collectionView setContentInset:{v83, v86, v72, v87}];
    v103 = v121;
    if (v121 > 0.0)
    {
      [collectionView _setHorizontalIndexTitleBarOffset:{0.0, -(v120 - (v131 + v130 + self->_headerFrame.size.height))}];
    }

    if ([(_TVCollectionWrappingView *)self collectionGradientMask]< 1)
    {
      [collectionView _setGradientMaskLengths:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    }

    else
    {
      v104 = *(MEMORY[0x277D768C8] + 16);
      *&v140.m11 = *MEMORY[0x277D768C8];
      *&v140.m13 = v104;
      v143 = *&v140.m11;
      v144 = v104;
      v141 = *&v140.m11;
      v142 = v104;
      [objc_opt_class() gradientConfigForCollection:collectionView gradientMask:-[_TVCollectionWrappingView collectionGradientMask](self gradientLengths:"collectionGradientMask") gradientInset:&v140 gradientBoundsInset:{&v143, &v141}];
      if (([(_TVCollectionWrappingView *)self collectionGradientMask]& 1) != 0 && _currentHeaderView && [(_TVCollectionWrappingView *)self isHeaderFloating])
      {
        v150.origin.y = v117;
        v150.origin.x = v118;
        v150.size.height = v115;
        v150.size.width = v116;
        *&v143 = *&v143 + v131 + CGRectGetMaxY(v150);
      }

      [collectionView _setGradientMaskLengths:{v140.m11, v140.m12, v140.m13, v140.m14}];
      [collectionView _setGradientMaskEdgeInsets:{v143, v144}];
      [collectionView _setGradientBoundsInsets:{v141, v142}];
    }

    if (([collectionView isDragging] & 1) == 0 && (objc_msgSend(collectionView, "isDecelerating") & 1) == 0)
    {
      [collectionView contentSize];
      v107 = v128 + v106 - v7;
      v108 = v87 + v106 - v7;
      if (v95 < v107)
      {
        v108 = v95;
      }

      if (v95 <= -v133)
      {
        v108 = -v86;
      }

      v109 = v135 + v105 - v119;
      v110 = v72 + v105 - v119;
      if (v97 < v109)
      {
        v110 = v97;
      }

      if (v97 <= -v99)
      {
        v110 = -v83;
      }

      [collectionView setContentOffset:0 animated:{v108, v110}];
    }
  }

  [(_TVCollectionWrappingView *)self setBounds:v138, v129, v7, v139];
  [TVMLUtilities _headerFadeForShowcaseFactor:v136];
  v112 = v111;
  [_currentHeaderView setAlpha:?];
  _horizontalIndexTitleBar = [collectionView _horizontalIndexTitleBar];
  [_horizontalIndexTitleBar setAlpha:v112];

  layer3 = [(_TVCollectionWrappingView *)self layer];
  CATransform3DMakeScale(&v140, sx, sx, 1.0);
  [layer3 setSublayerTransform:&v140];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  nextFocusedView = [context nextFocusedView];
  _currentHeaderView = [(_TVCollectionWrappingView *)self _currentHeaderView];
  if ([(_TVCollectionWrappingView *)self headerCanBecomeFocused])
  {
    -[_TVCollectionWrappingView setHeaderFocused:](self, "setHeaderFocused:", [nextFocusedView isDescendantOfView:_currentHeaderView]);
  }

  if (_currentHeaderView)
  {
    if (![(_TVCollectionWrappingView *)self isHeaderFocused])
    {
      collectionView = [(_TVCollectionWrappingView *)self collectionView];
      v10 = [nextFocusedView isDescendantOfView:collectionView];

      if (v10)
      {
        [_currentHeaderView frame];
        v12 = v11 < self->_headerFrame.origin.y;
        objc_storeStrong(&self->_selectingView, nextFocusedView);
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __78___TVCollectionWrappingView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
        v25 = &unk_279D6E7F8;
        selfCopy = self;
        v13 = &v22;
        v14 = coordinatorCopy;
        v15 = v12;
LABEL_9:
        [v14 addCoordinatedAnimationsForAnimation:v15 animations:v13 completion:{0, v17, v18, v19, v20, selfCopy2, v22, v23, v24, v25, selfCopy}];
        goto LABEL_10;
      }
    }
  }

  selectingView = self->_selectingView;
  if (selectingView)
  {
    self->_selectingView = 0;

    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __78___TVCollectionWrappingView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2;
    v20 = &unk_279D6E7F8;
    selfCopy2 = self;
    v13 = &v17;
    v14 = coordinatorCopy;
    v15 = 1;
    goto LABEL_9;
  }

LABEL_10:
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  if ([(_TVCollectionWrappingView *)self headerCanBecomeFocused]&& [(_TVCollectionWrappingView *)self isHeaderFocused])
  {
    _currentHeaderView = [(_TVCollectionWrappingView *)self _currentHeaderView];
  }

  else
  {
    _currentHeaderView = [(_TVCollectionWrappingView *)self collectionView];
  }

  v4 = _currentHeaderView;
  if (_currentHeaderView)
  {
    v7[0] = _currentHeaderView;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)rowMetricsForExpectedWidth:(double)width firstItemRowIndex:(int64_t *)index
{
  v83[1] = *MEMORY[0x277D85DE8];
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v8 = v7;
  v70 = v10;
  v71 = v9;
  v12 = v11;
  v81 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [(_TVCollectionWrappingView *)self _collectionRowMetricsForExpectedWidth:&v81 firstItemRowIndex:0 forShowcase:width];
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  if ([v13 count])
  {
    firstObject = [v13 firstObject];
    v15 = firstObject;
    if (firstObject)
    {
      [firstObject tv_rowMetricsValue];
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      memset(v77, 0, sizeof(v77));
    }
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    memset(v77, 0, sizeof(v77));
  }

  collectionView = [(_TVCollectionWrappingView *)self collectionView];
  _displaysHorizontalIndexTitleBar = [collectionView _displaysHorizontalIndexTitleBar];

  if (_displaysHorizontalIndexTitleBar)
  {
    *(v77 + 8) = vaddq_f64(*(v77 + 8), vdupq_lane_s64(COERCE__INT64(*MEMORY[0x277D77428] + 18.0), 0));
    *&v80 = 0;
    *&v79 = 0;
    *&v78 = 0;
  }

  headerView = [(_TVCollectionWrappingView *)self headerView];

  if (headerView)
  {
    headerView2 = [(_TVCollectionWrappingView *)self headerView];
    [headerView2 tv_margin];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = width - (v71 + v24 + v70 + v28) >= 2.22044605e-16 ? width - (v71 + v24 + v70 + v28) : width;
    headerView3 = [(_TVCollectionWrappingView *)self headerView];
    [headerView3 tv_sizeThatFits:{v29, 0.0}];
    v32 = v31;

    headerView4 = [(_TVCollectionWrappingView *)self headerView];
    [headerView4 tv_alignmentInsetsForExpectedWidth:v29];
    v35 = v34;

    v36 = v8 + v22;
    *(v77 + 8) = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v26 + v36 + v32), 0), *(v77 + 8));
    *&v78 = v36 + v35;
    *&v79 = v36 + v35;
    v19 = *&v80;
    if (*&v80 > 0.0)
    {
      [(_TVCollectionWrappingView *)self headerSelectionMargin];
      *&v37 = fmax(v37 + *&v80 - v26, 0.0) - v36;
      v19 = fmaxf(*&v37, 0.0);
      *&v80 = v19;
    }
  }

  if ([v13 count])
  {
    v38 = [v13 mutableCopy];
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v72 = v77[0];
    v73 = v77[1];
    v39 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v72];
    [v38 replaceObjectAtIndex:0 withObject:v39];

    v40 = [v38 copy];
  }

  else
  {
    v41 = *(v77 + 1);
    if (*(v77 + 1) <= 0.0)
    {
      goto LABEL_20;
    }

    v74 = v78;
    v75 = v79;
    v76 = v80;
    v72 = v77[0];
    v73 = v77[1];
    v38 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v72];
    v83[0] = v38;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
  }

  v42 = v40;

  v13 = v42;
LABEL_20:
  footerView = [(_TVCollectionWrappingView *)self footerView];

  if (!footerView)
  {
    goto LABEL_37;
  }

  if ([v13 count])
  {
    lastObject = [v13 lastObject];
    v45 = lastObject;
    if (lastObject)
    {
      [lastObject tv_rowMetricsValue];
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
    }

    v78 = v74;
    v79 = v75;
    v80 = v76;
    v77[0] = v72;
    v77[1] = v73;
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    memset(v77, 0, sizeof(v77));
  }

  footerView2 = [(_TVCollectionWrappingView *)self footerView];
  [footerView2 tv_margin];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  if (width - (v71 + v50 + v70 + v54) >= 2.22044605e-16)
  {
    widthCopy = width - (v71 + v50 + v70 + v54);
  }

  else
  {
    widthCopy = width;
  }

  footerView3 = [(_TVCollectionWrappingView *)self footerView];
  [footerView3 tv_sizeThatFits:{widthCopy, 0.0}];
  v58 = v57;

  footerView4 = [(_TVCollectionWrappingView *)self footerView];
  [footerView4 tv_alignmentInsetsForExpectedWidth:widthCopy];
  v61 = v60;

  v62 = v52 + v48 + v58;
  *(v77 + 1) = v62 + *(v77 + 1);
  *(&v77[1] + 1) = v62 + *(&v77[1] + 1);
  *(&v78 + 1) = v12 + v52 + v61;
  *(&v79 + 1) = *(&v78 + 1);
  if (*(&v80 + 1) > 0.0)
  {
    v63 = fmax(v48 + 7.0 - *(&v80 + 1), 0.0) - (v12 + v52);
    *(&v80 + 1) = fmaxf(v63, 0.0);
  }

  if ([v13 count])
  {
    v64 = [v13 mutableCopy];
    v65 = [v13 count] - 1;
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v72 = v77[0];
    v73 = v77[1];
    v66 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v72];
    [v64 replaceObjectAtIndex:v65 withObject:v66];

    v67 = [v64 copy];
  }

  else
  {
    if (*(v77 + 1) <= 0.0)
    {
      goto LABEL_37;
    }

    v74 = v78;
    v75 = v79;
    v76 = v80;
    v72 = v77[0];
    v73 = v77[1];
    v64 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v72];
    v82 = v64;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  }

  v68 = v67;

  v13 = v68;
LABEL_37:
  if (index)
  {
    *index = v81;
  }

  return v13;
}

- (BOOL)shouldBindRowsTogether
{
  collectionView = [(_TVCollectionWrappingView *)self collectionView];
  if ([collectionView conformsToProtocol:&unk_287E7FA58])
  {
    collectionView2 = [(_TVCollectionWrappingView *)self collectionView];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    collectionView = [(_TVCollectionWrappingView *)self collectionView];
    shouldBindRowsTogether = [collectionView shouldBindRowsTogether];
  }

  else
  {
    shouldBindRowsTogether = 0;
  }

  return shouldBindRowsTogether;
}

- (id)_collectionRowMetricsForExpectedWidth:(double)width firstItemRowIndex:(int64_t *)index forShowcase:(BOOL)showcase
{
  showcaseCopy = showcase;
  v53[1] = *MEMORY[0x277D85DE8];
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  headerView = [(_TVCollectionWrappingView *)self headerView];

  if (headerView)
  {
    v10 = 0.0;
  }

  collectionView = [(_TVCollectionWrappingView *)self collectionView];
  v19 = [collectionView conformsToProtocol:&unk_287E7FB40];

  collectionView2 = [(_TVCollectionWrappingView *)self collectionView];
  v21 = collectionView2;
  if (v19)
  {
    v22 = objc_opt_respondsToSelector();

    if (!showcaseCopy || (v22 & 1) == 0 || (-[_TVCollectionWrappingView collectionView](self, "collectionView"), v23 = objc_claimAutoreleasedReturnValue(), [v23 showcaseRowMetricsForExpectedWidth:width withContentInset:{v10, v12, v14, v16}], v21 = objc_claimAutoreleasedReturnValue(), v23, !v21))
    {
      collectionView3 = [(_TVCollectionWrappingView *)self collectionView];
      v25 = [collectionView3 rowMetricsForExpectedWidth:&v51 withContentInset:width firstItemRowIndex:{v10, v12, v14, v16}];
LABEL_10:
      v21 = v25;
    }
  }

  else
  {

    if (v21)
    {
      memset(&v50[1], 0, 64);
      collectionView4 = [(_TVCollectionWrappingView *)self collectionView];
      [collectionView4 tv_sizeThatFits:width withContentInset:{0.0, v10, v12, v14, v16}];
      v28 = v27;

      *&v50[0] = 0;
      *(&v50[0] + 1) = v28;
      collectionView3 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v50];
      v53[0] = collectionView3;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      goto LABEL_10;
    }
  }

  if (showcaseCopy)
  {
    [(_TVCollectionWrappingView *)self _showcaseContentScaleForExpectedWidth:width];
    v44 = v29;
    if (*&v29 < 1.0)
    {
      array = [MEMORY[0x277CBEB18] array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v31 = v21;
      v32 = [v31 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v47;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v46 + 1) + 8 * i);
            memset(v50, 0, sizeof(v50));
            if (v36)
            {
              [v36 tv_rowMetricsValue];
              v37 = *(v50 + 8);
              v38 = *(&v50[1] + 8);
              v39 = *(&v50[2] + 8);
              v40 = *(&v50[3] + 8);
              v41 = *(&v50[4] + 1);
            }

            else
            {
              *&v50[0] = 0;
              v37 = 0uLL;
              v41 = 0.0;
              v38 = 0uLL;
              v39 = 0uLL;
              v40 = 0uLL;
            }

            *(v50 + 8) = vmulq_n_f64(v37, *&v44);
            *(&v50[1] + 8) = vmulq_n_f64(v38, *&v44);
            *(&v50[2] + 8) = vmulq_n_f64(v39, *&v44);
            *(&v50[3] + 8) = vmulq_n_f64(v40, *&v44);
            *(&v50[4] + 1) = *&v44 * v41;
            v45[2] = v50[2];
            v45[3] = v50[3];
            v45[4] = v50[4];
            v45[0] = v50[0];
            v45[1] = v50[1];
            v42 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:{v45, v44}];
            [array addObject:v42];
          }

          v33 = [v31 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v33);
      }

      v21 = [array copy];
    }
  }

  if (index)
  {
    *index = v51;
  }

  return v21;
}

- (CGRect)_adjustedHeaderFrame
{
  p_headerFrame = &self->_headerFrame;
  x = self->_headerFrame.origin.x;
  y = self->_headerFrame.origin.y;
  width = self->_headerFrame.size.width;
  height = self->_headerFrame.size.height;
  if (self->_selectingView && [(_TVCollectionWrappingView *)self isHeaderAuxiliarySelecting]&& [(_TVCollectionWrappingView *)self isHeaderFloating])
  {
    collectionView = [(_TVCollectionWrappingView *)self collectionView];
    [(UIView *)self tv_padding];
    v69 = v9;
    v66 = v10;
    [(UIView *)self->_selectingView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(UIView *)self->_selectingView conformsToProtocol:&unk_287E58AD8];
    selectingView = self->_selectingView;
    if (v19)
    {
      [(UIView *)selectingView selectionMarginsForSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    }

    else
    {
      [(UIView *)selectingView tv_focusMargin];
    }

    v30 = v12 - v22;
    v31 = v14 - v21;
    v32 = v16 + v22 + v24;
    v33 = v18 + v21 + v23;
    superview = [(UIView *)self->_selectingView superview];
    [collectionView convertRect:superview fromView:{v30, v31, v32, v33}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v65 = x;
    if (self->_collectionViewFlags.respondsToAugmentedSelectionFrameForFrame)
    {
      collectionView2 = [(_TVCollectionWrappingView *)self collectionView];
      [collectionView2 tv_augmentedSelectionFrameForFrame:{v36, v38, v40, v42}];
      v36 = v44;
      v38 = v45;
      v40 = v46;
      v42 = v47;
    }

    collectionView3 = [(_TVCollectionWrappingView *)self collectionView];
    [(_TVCollectionWrappingView *)self convertRect:collectionView3 fromView:v36, v38, v40, v42];
    v50 = v49;
    v67 = v52;
    v68 = v51;
    v54 = v53;

    v55 = v69;
    if (v50 >= v69)
    {
      [(_TVCollectionWrappingView *)self bounds];
      v55 = v50;
      if (v50 + v54 > v56 - v66)
      {
        [(_TVCollectionWrappingView *)self bounds];
        v55 = v57 - v66 - v54;
      }
    }

    v59 = p_headerFrame->origin.x;
    v58 = p_headerFrame->origin.y;
    v61 = p_headerFrame->size.width;
    v60 = p_headerFrame->size.height;
    [(_TVCollectionWrappingView *)self headerSelectionMargin];
    v72.size.height = v60 + v62;
    v72.origin.x = v59;
    v72.origin.y = v58;
    v72.size.width = v61;
    v73.origin.x = v55;
    v73.size.height = v67;
    v73.origin.y = v68;
    v73.size.width = v54;
    if (CGRectIntersectsRect(v72, v73))
    {
      x = p_headerFrame->origin.x;
      [(_TVCollectionWrappingView *)self headerSelectionMargin];
      width = p_headerFrame->size.width;
      height = p_headerFrame->size.height;
      y = v68 - v63 - height;
    }

    else
    {
      width = v64;
      x = v65;
    }
  }

  else
  {
    if ([(_TVCollectionWrappingView *)self isHeaderFloating])
    {
      goto LABEL_9;
    }

    collectionView = [(_TVCollectionWrappingView *)self collectionView];
    [collectionView contentInset];
    y = y - v25;
  }

LABEL_9:
  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;

  return CGRectIntegral(*&v26);
}

- (UIEdgeInsets)_adjustedPadding
{
  [(UIView *)self tv_padding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(_TVCollectionWrappingView *)self isCentered])
  {
    [(_TVCollectionWrappingView *)self bounds];
    v12 = v11 - (v6 + v10);
    collectionView = [(_TVCollectionWrappingView *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];

    [collectionViewLayout prepareLayout];
    [collectionViewLayout collectionViewContentSize];
    if (v15 < v12)
    {
      v16 = v15;
      [(_TVCollectionWrappingView *)self bounds];
      v10 = (v17 - v16) * 0.5;
      v6 = v10;
    }
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (double)_adjustedShowcaseFactor
{
  [(_TVCollectionWrappingView *)self showcaseConfig];
  if (v4)
  {
    return self->_showcaseFactor;
  }

  else
  {
    return 0.0;
  }
}

- (double)_showcaseContentScaleForExpectedWidth:(double)width
{
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v6 = v5;
  v8 = v7;
  [(_TVCollectionWrappingView *)self showcaseConfig];
  return fmin((width + 0.0 * -2.0) / (width - (v6 + v8)), 1.0);
}

- (id)_currentHeaderView
{
  if ([(_TVCollectionWrappingView *)self isHeaderHidden])
  {
    headerView = 0;
  }

  else
  {
    headerView = [(_TVCollectionWrappingView *)self headerView];
  }

  return headerView;
}

- (void)setIkBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(IKColor *)self->_ikBackgroundColor isEqual:?]& 1) == 0)
  {
    [(CAGradientLayer *)self->_gradientLayer removeFromSuperlayer];
    objc_storeStrong(&self->_ikBackgroundColor, color);
    clearColor = [MEMORY[0x277D75348] clearColor];
    if (colorCopy)
    {
      color = [colorCopy color];

      if ([colorCopy colorType] == 3)
      {
        layer = [MEMORY[0x277CD9EB0] layer];
        gradientLayer = self->_gradientLayer;
        self->_gradientLayer = layer;

        [(_TVCollectionWrappingView *)self _updateGradientLayer];
        layer2 = [(_TVCollectionWrappingView *)self layer];
        [layer2 insertSublayer:self->_gradientLayer atIndex:0];
      }
    }

    else
    {
      color = clearColor;
    }

    [(_TVCollectionWrappingView *)self setBackgroundColor:color];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(_TVCollectionWrappingView *)self traitCollection];
  if ([traitCollection userInterfaceStyle])
  {
    userInterfaceStyle = [changeCopy userInterfaceStyle];
    traitCollection2 = [(_TVCollectionWrappingView *)self traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
    {
      [(_TVCollectionWrappingView *)self _updateGradientLayer];
    }
  }

  else
  {
  }
}

- (void)_updateGradientLayer
{
  if (self->_gradientLayer)
  {
    gradientColors = [(IKColor *)self->_ikBackgroundColor gradientColors];
    v4 = [gradientColors count];

    if (v4)
    {
      v5 = MEMORY[0x277CBEB18];
      gradientColors2 = [(IKColor *)self->_ikBackgroundColor gradientColors];
      v7 = [v5 arrayWithCapacity:{objc_msgSend(gradientColors2, "count")}];

      gradientColors3 = [(IKColor *)self->_ikBackgroundColor gradientColors];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49___TVCollectionWrappingView__updateGradientLayer__block_invoke;
      v12[3] = &unk_279D6F808;
      v13 = v7;
      v9 = v7;
      [gradientColors3 enumerateObjectsUsingBlock:v12];

      [(CAGradientLayer *)self->_gradientLayer setColors:v9];
      gradientLayer = self->_gradientLayer;
      gradientPoints = [(IKColor *)self->_ikBackgroundColor gradientPoints];
      [(CAGradientLayer *)gradientLayer setLocations:gradientPoints];
    }
  }
}

- (void)_updateSubviews
{
  collectionView = [(_TVCollectionWrappingView *)self collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    collectionView2 = [(_TVCollectionWrappingView *)self collectionView];
    superview = [collectionView2 superview];

    if (!superview)
    {
      headerView = [(_TVCollectionWrappingView *)self headerView];
      superview2 = [headerView superview];

      collectionView3 = [(_TVCollectionWrappingView *)self collectionView];
      if (superview2 == self)
      {
        headerView2 = [(_TVCollectionWrappingView *)self headerView];
        [(_TVCollectionWrappingView *)self insertSubview:collectionView3 below:headerView2];
      }

      else
      {
        [(_TVCollectionWrappingView *)self addSubview:collectionView3];
      }
    }
  }

  headerView3 = [(_TVCollectionWrappingView *)self headerView];
  if (headerView3)
  {
    v12 = headerView3;
    headerView4 = [(_TVCollectionWrappingView *)self headerView];
    superview3 = [headerView4 superview];

    if (!superview3)
    {
      isHeaderFloating = [(_TVCollectionWrappingView *)self isHeaderFloating];
      collectionView4 = [(_TVCollectionWrappingView *)self collectionView];
      v17 = collectionView4;
      if (isHeaderFloating)
      {
        superview4 = [collectionView4 superview];

        headerView5 = [(_TVCollectionWrappingView *)self headerView];
        if (superview4 != self)
        {
          [(_TVCollectionWrappingView *)self addSubview:headerView5];
LABEL_16:

          goto LABEL_17;
        }

        collectionView5 = [(_TVCollectionWrappingView *)self collectionView];
        [(_TVCollectionWrappingView *)self insertSubview:headerView5 above:collectionView5];
LABEL_15:

        goto LABEL_16;
      }

      if (v17)
      {
        headerView5 = [(_TVCollectionWrappingView *)self collectionView];
        collectionView5 = [(_TVCollectionWrappingView *)self headerView];
        [headerView5 addSubview:collectionView5];
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  footerView = [(_TVCollectionWrappingView *)self footerView];
  if (footerView)
  {
    v22 = footerView;
    footerView2 = [(_TVCollectionWrappingView *)self footerView];
    superview5 = [footerView2 superview];

    if (!superview5)
    {
      collectionView6 = [(_TVCollectionWrappingView *)self collectionView];
      superview6 = [collectionView6 superview];

      footerView3 = [(_TVCollectionWrappingView *)self footerView];
      v29 = footerView3;
      if (superview6 == self)
      {
        collectionView7 = [(_TVCollectionWrappingView *)self collectionView];
        [(_TVCollectionWrappingView *)self insertSubview:v29 above:collectionView7];
      }

      else
      {
        [(_TVCollectionWrappingView *)self addSubview:footerView3];
      }
    }
  }
}

- (void)setShowcaseConfig:(TVShowcaseConfig *)config
{
  inset = config->inset;
  *&self->_showcaseConfig.flavor = *&config->flavor;
  self->_showcaseConfig.inset = inset;
}

@end