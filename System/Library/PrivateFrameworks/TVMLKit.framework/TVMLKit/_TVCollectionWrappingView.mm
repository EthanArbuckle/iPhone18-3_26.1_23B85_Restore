@interface _TVCollectionWrappingView
+ (void)gradientConfigForCollection:(id)a3 gradientMask:(int64_t)a4 gradientLengths:(UIEdgeInsets *)a5 gradientInset:(UIEdgeInsets *)a6 gradientBoundsInset:(UIEdgeInsets *)a7;
- (BOOL)shouldBindRowsTogether;
- (CGRect)_adjustedHeaderFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)_adjustedPadding;
- (_TVCollectionWrappingView)initWithFrame:(CGRect)a3;
- (double)_adjustedShowcaseFactor;
- (double)_showcaseContentScaleForExpectedWidth:(double)a3;
- (id)_collectionRowMetricsForExpectedWidth:(double)a3 firstItemRowIndex:(int64_t *)a4 forShowcase:(BOOL)a5;
- (id)_currentHeaderView;
- (id)preferredFocusEnvironments;
- (id)rowMetricsForExpectedWidth:(double)a3 firstItemRowIndex:(int64_t *)a4;
- (void)_updateGradientLayer;
- (void)_updateSubviews;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)reevaluateFooterFrame;
- (void)reevaluateHeaderFrame;
- (void)setCentered:(BOOL)a3;
- (void)setCollectionView:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setHeaderFloating:(BOOL)a3;
- (void)setHeaderHidden:(BOOL)a3;
- (void)setHeaderView:(id)a3;
- (void)setIkBackgroundColor:(id)a3;
- (void)setShowcaseConfig:(TVShowcaseConfig *)a3;
- (void)setValue:(id)a3 forTVViewStyle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)tv_setShowcaseFactor:(double)a3;
@end

@implementation _TVCollectionWrappingView

+ (void)gradientConfigForCollection:(id)a3 gradientMask:(int64_t)a4 gradientLengths:(UIEdgeInsets *)a5 gradientInset:(UIEdgeInsets *)a6 gradientBoundsInset:(UIEdgeInsets *)a7
{
  v10 = a4;
  [a3 contentInset];
  v15 = *MEMORY[0x277D768C8];
  if (v10)
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
  if ((v10 & 4) != 0)
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
  if ((v10 & 8) != 0)
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
  if ((v10 & 0x10) == 0)
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
    if (!a5)
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
  if (a5)
  {
LABEL_30:
    a5->top = v18;
    a5->left = v27;
    a5->bottom = v22;
    a5->right = v32;
  }

LABEL_31:
  if (a6)
  {
    a6->top = v15;
    a6->left = v25;
    a6->bottom = v21;
    a6->right = v30;
  }

  if (a7)
  {
    a7->top = v20;
    a7->left = v29;
    a7->bottom = v24;
    a7->right = v34;
  }
}

- (_TVCollectionWrappingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVCollectionWrappingView;
  v3 = [(_TVCollectionWrappingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    +[_TVShelfViewLayout defaultHeaderSelectionMargin];
    v3->_headerSelectionMargin = v4;
    v3->_headerFloating = 1;
    v3->_headerAuxiliarySelecting = 1;
  }

  return v3;
}

- (void)setHeaderFloating:(BOOL)a3
{
  if (self->_headerFloating != a3)
  {
    self->_headerFloating = a3;
    v5 = [(_TVCollectionWrappingView *)self headerView];
    [v5 removeFromSuperview];

    [(_TVCollectionWrappingView *)self _updateSubviews];

    [(_TVCollectionWrappingView *)self setNeedsLayout];
  }
}

- (void)setHeaderHidden:(BOOL)a3
{
  headerHidden = self->_headerHidden;
  if (headerHidden != a3)
  {
    self->_headerHidden = a3;
    v5 = [(_TVCollectionWrappingView *)self headerView];
    [v5 setHidden:self->_headerHidden];

    [(_TVCollectionWrappingView *)self setNeedsLayout];
    if (headerHidden)
    {
      v6 = [(_TVCollectionWrappingView *)self window];
      v7 = [v6 screen];
      obj = [v7 focusedView];

      v8 = [(_TVCollectionWrappingView *)self collectionView];
      LODWORD(v7) = [obj isDescendantOfView:v8];

      if (v7)
      {
        objc_storeStrong(&self->_selectingView, obj);
        [(_TVCollectionWrappingView *)self reevaluateHeaderFrame];
      }
    }
  }
}

- (void)setHeaderView:(id)a3
{
  v5 = a3;
  headerView = self->_headerView;
  v8 = v5;
  if (headerView != v5)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, a3);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    self->_headerFrame.origin = *MEMORY[0x277CBF3A0];
    self->_headerFrame.size = v7;
    [(_TVCollectionWrappingView *)self _updateSubviews];
  }

  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  collectionView = self->_collectionView;
  v7 = v5;
  if (collectionView != v5)
  {
    [(_TVCollectionView *)collectionView removeFromSuperview];
    objc_storeStrong(&self->_collectionView, a3);
    self->_collectionViewFlags.respondsToAugmentedSelectionFrameForFrame = objc_opt_respondsToSelector() & 1;
    [(_TVCollectionWrappingView *)self _updateSubviews];
  }

  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (void)setCentered:(BOOL)a3
{
  if (self->_centered != a3)
  {
    self->_centered = a3;
    [(_TVCollectionWrappingView *)self setNeedsLayout];
  }
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  footerView = self->_footerView;
  v8 = v5;
  if (footerView != v5)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, a3);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    self->_footerFrame.origin = *MEMORY[0x277CBF3A0];
    self->_footerFrame.size = v7;
    [(_TVCollectionWrappingView *)self _updateSubviews];
  }

  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (void)reevaluateFooterFrame
{
  v3 = [(_TVCollectionWrappingView *)self _currentFooterView];
  v15 = CGRectIntegral(self->_footerFrame);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  [v3 frame];
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
    v10 = v3;
    v11 = x;
    v12 = y;
    v13 = width;
    v14 = height;
    [v8 tv_performByPreventingAdditiveAnimations:v9];
  }
}

- (void)reevaluateHeaderFrame
{
  v3 = [(_TVCollectionWrappingView *)self _currentHeaderView];
  [(_TVCollectionWrappingView *)self _adjustedHeaderFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 frame];
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
    v14 = v3;
    v15 = v5;
    v16 = v7;
    v17 = v9;
    v18 = v11;
    [v12 tv_performByPreventingAdditiveAnimations:v13];
  }
}

- (void)tv_setShowcaseFactor:(double)a3
{
  if (self->_showcaseFactor != a3)
  {
    self->_showcaseFactor = a3;
    v5 = [(_TVCollectionWrappingView *)self collectionView];
    [v5 tv_setShowcaseFactor:a3];

    [(_TVCollectionWrappingView *)self setNeedsLayout];
  }
}

- (void)setValue:(id)a3 forTVViewStyle:(id)a4
{
  v5.receiver = self;
  v5.super_class = _TVCollectionWrappingView;
  [(UIView *)&v5 setValue:a3 forTVViewStyle:a4];
  [(_TVCollectionWrappingView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(_TVCollectionWrappingView *)self _adjustedPadding:a3.width];
  v69 = v5;
  v70 = v6;
  v8 = v7;
  v10 = v9;
  v68 = v9;
  v11 = [(_TVCollectionWrappingView *)self headerView];
  [v11 tv_margin];
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
  v22 = [(_TVCollectionWrappingView *)self headerView];
  [v22 tv_sizeThatFits:{v21, 0.0}];
  v24 = v23;

  v25 = [(_TVCollectionWrappingView *)self collectionView];
  v26 = [v25 _displaysHorizontalIndexTitleBar];

  v27 = *MEMORY[0x277D77428];
  if (!v26)
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
  v37 = [(_TVCollectionWrappingView *)self footerView];
  [v37 tv_margin];
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
  v51 = [(_TVCollectionWrappingView *)self collectionView];
  [v51 tv_sizeThatFits:v67 withContentInset:{0.0, v69 + v62 + v34 + v29 + v66 + v63, v8, v50, v68}];
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
  v8 = [(_TVCollectionWrappingView *)self collectionView];
  v9 = [(_TVCollectionWrappingView *)self _currentHeaderView];
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v132 = v10;
  v127 = v11;
  v126 = v12;
  v14 = v13;
  [(UIView *)self tv_padding];
  v16 = v15;
  v18 = v17;
  [v9 tv_margin];
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

  v29 = [(_TVCollectionWrappingView *)self effectiveUserInterfaceLayoutDirection];
  [v9 tv_sizeThatFits:{v28, 0.0}];
  v31 = v30;
  v33 = v32;
  v134 = v14;
  v34 = v7 - (v14 + v24 + v30);
  v125 = v16;
  if (v29 == 1)
  {
    v35 = v34;
  }

  else
  {
    v35 = v16 + v22;
  }

  if (v30 < v28)
  {
    v36 = [v9 tv_alignment];
    v37 = floor((v7 - v31) * 0.5);
    if (v36 != 2)
    {
      v37 = v35;
    }

    if (v36 == 3)
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
  v46 = [v9 layer];
  [v46 anchorPoint];
  v48 = v47;
  v50 = v49;

  [v9 setBounds:{0.0, 0.0, v43, v45}];
  v117 = v41;
  v118 = v39;
  v115 = v45;
  v116 = v43;
  v51 = v39 + v43 * v48;
  v52 = v41 + v45 * v50;
  [v9 setCenter:{roundf(v51), roundf(v52)}];
  v53 = [v8 _displaysHorizontalIndexTitleBar];
  if (v53)
  {
    v54 = *MEMORY[0x277D77428];
  }

  else
  {
    v54 = 0.0;
  }

  v55 = 18.0;
  if (!v53)
  {
    v55 = 0.0;
  }

  v121 = v54;
  v120 = v55 + v54 + v131 + v130 + self->_headerFrame.size.height;
  v122 = floor((1.0 - v136) * v120);
  v129 = ceil(v136 * v120);
  v119 = ceil(v139 / sx);
  [v8 setFrame:0.0];
  [(CAGradientLayer *)self->_gradientLayer setFrame:v138, v124, v7, v139];
  v56 = [(_TVCollectionWrappingView *)self _currentFooterView];
  [v56 tv_margin];
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

  [v56 tv_sizeThatFits:{v63, 0.0}];
  v65 = v64;
  v67 = v66;
  v68 = v7 - (v134 + v62 + v64);
  if (v29 == 1)
  {
    v69 = v68;
  }

  else
  {
    v69 = v125 + v59;
  }

  if (v64 < v63)
  {
    v70 = [v56 tv_alignment];
    v71 = floor((v7 - v65) * 0.5);
    if (v70 != 2)
    {
      v71 = v69;
    }

    if (v70 == 3)
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
  v77 = [v56 layer];
  [v77 anchorPoint];
  v79 = v78;
  v81 = v80;

  [v56 setBounds:{0.0, 0.0, width, height}];
  v82 = x + width * v79;
  v83 = v132 + v122;
  *&v82 = v82;
  v84 = y + height * v81;
  [v56 setCenter:{roundf(*&v82), roundf(v84)}];
  [(_TVCollectionWrappingView *)self _updateGradientLayer];
  v85 = [(_TVCollectionWrappingView *)self effectiveUserInterfaceLayoutDirection];
  if (v85 == 1)
  {
    v86 = v134;
  }

  else
  {
    v86 = v127;
  }

  if (v85 == 1)
  {
    v87 = v127;
  }

  else
  {
    v87 = v134;
  }

  [v8 contentInset];
  if (v91 != v86 || (v88 == v83 ? (v92 = v90 == v87) : (v92 = 0), v92 ? (v93 = v89 == v72) : (v93 = 0), !v93))
  {
    [v8 contentOffset];
    v95 = v94;
    v97 = v96;
    [v8 contentInset];
    v99 = v98;
    v133 = v100;
    v135 = v101;
    v128 = v102;
    [v8 setContentInset:{v83, v86, v72, v87}];
    v103 = v121;
    if (v121 > 0.0)
    {
      [v8 _setHorizontalIndexTitleBarOffset:{0.0, -(v120 - (v131 + v130 + self->_headerFrame.size.height))}];
    }

    if ([(_TVCollectionWrappingView *)self collectionGradientMask]< 1)
    {
      [v8 _setGradientMaskLengths:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
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
      [objc_opt_class() gradientConfigForCollection:v8 gradientMask:-[_TVCollectionWrappingView collectionGradientMask](self gradientLengths:"collectionGradientMask") gradientInset:&v140 gradientBoundsInset:{&v143, &v141}];
      if (([(_TVCollectionWrappingView *)self collectionGradientMask]& 1) != 0 && v9 && [(_TVCollectionWrappingView *)self isHeaderFloating])
      {
        v150.origin.y = v117;
        v150.origin.x = v118;
        v150.size.height = v115;
        v150.size.width = v116;
        *&v143 = *&v143 + v131 + CGRectGetMaxY(v150);
      }

      [v8 _setGradientMaskLengths:{v140.m11, v140.m12, v140.m13, v140.m14}];
      [v8 _setGradientMaskEdgeInsets:{v143, v144}];
      [v8 _setGradientBoundsInsets:{v141, v142}];
    }

    if (([v8 isDragging] & 1) == 0 && (objc_msgSend(v8, "isDecelerating") & 1) == 0)
    {
      [v8 contentSize];
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

      [v8 setContentOffset:0 animated:{v108, v110}];
    }
  }

  [(_TVCollectionWrappingView *)self setBounds:v138, v129, v7, v139];
  [TVMLUtilities _headerFadeForShowcaseFactor:v136];
  v112 = v111;
  [v9 setAlpha:?];
  v113 = [v8 _horizontalIndexTitleBar];
  [v113 setAlpha:v112];

  v114 = [(_TVCollectionWrappingView *)self layer];
  CATransform3DMakeScale(&v140, sx, sx, 1.0);
  [v114 setSublayerTransform:&v140];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a4;
  v7 = [a3 nextFocusedView];
  v8 = [(_TVCollectionWrappingView *)self _currentHeaderView];
  if ([(_TVCollectionWrappingView *)self headerCanBecomeFocused])
  {
    -[_TVCollectionWrappingView setHeaderFocused:](self, "setHeaderFocused:", [v7 isDescendantOfView:v8]);
  }

  if (v8)
  {
    if (![(_TVCollectionWrappingView *)self isHeaderFocused])
    {
      v9 = [(_TVCollectionWrappingView *)self collectionView];
      v10 = [v7 isDescendantOfView:v9];

      if (v10)
      {
        [v8 frame];
        v12 = v11 < self->_headerFrame.origin.y;
        objc_storeStrong(&self->_selectingView, v7);
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __78___TVCollectionWrappingView_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
        v25 = &unk_279D6E7F8;
        v26 = self;
        v13 = &v22;
        v14 = v6;
        v15 = v12;
LABEL_9:
        [v14 addCoordinatedAnimationsForAnimation:v15 animations:v13 completion:{0, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26}];
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
    v21 = self;
    v13 = &v17;
    v14 = v6;
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
    v3 = [(_TVCollectionWrappingView *)self _currentHeaderView];
  }

  else
  {
    v3 = [(_TVCollectionWrappingView *)self collectionView];
  }

  v4 = v3;
  if (v3)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)rowMetricsForExpectedWidth:(double)a3 firstItemRowIndex:(int64_t *)a4
{
  v83[1] = *MEMORY[0x277D85DE8];
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v8 = v7;
  v70 = v10;
  v71 = v9;
  v12 = v11;
  v81 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = [(_TVCollectionWrappingView *)self _collectionRowMetricsForExpectedWidth:&v81 firstItemRowIndex:0 forShowcase:a3];
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  if ([v13 count])
  {
    v14 = [v13 firstObject];
    v15 = v14;
    if (v14)
    {
      [v14 tv_rowMetricsValue];
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

  v16 = [(_TVCollectionWrappingView *)self collectionView];
  v17 = [v16 _displaysHorizontalIndexTitleBar];

  if (v17)
  {
    *(v77 + 8) = vaddq_f64(*(v77 + 8), vdupq_lane_s64(COERCE__INT64(*MEMORY[0x277D77428] + 18.0), 0));
    *&v80 = 0;
    *&v79 = 0;
    *&v78 = 0;
  }

  v18 = [(_TVCollectionWrappingView *)self headerView];

  if (v18)
  {
    v20 = [(_TVCollectionWrappingView *)self headerView];
    [v20 tv_margin];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = a3 - (v71 + v24 + v70 + v28) >= 2.22044605e-16 ? a3 - (v71 + v24 + v70 + v28) : a3;
    v30 = [(_TVCollectionWrappingView *)self headerView];
    [v30 tv_sizeThatFits:{v29, 0.0}];
    v32 = v31;

    v33 = [(_TVCollectionWrappingView *)self headerView];
    [v33 tv_alignmentInsetsForExpectedWidth:v29];
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
  v43 = [(_TVCollectionWrappingView *)self footerView];

  if (!v43)
  {
    goto LABEL_37;
  }

  if ([v13 count])
  {
    v44 = [v13 lastObject];
    v45 = v44;
    if (v44)
    {
      [v44 tv_rowMetricsValue];
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

  v46 = [(_TVCollectionWrappingView *)self footerView];
  [v46 tv_margin];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  if (a3 - (v71 + v50 + v70 + v54) >= 2.22044605e-16)
  {
    v55 = a3 - (v71 + v50 + v70 + v54);
  }

  else
  {
    v55 = a3;
  }

  v56 = [(_TVCollectionWrappingView *)self footerView];
  [v56 tv_sizeThatFits:{v55, 0.0}];
  v58 = v57;

  v59 = [(_TVCollectionWrappingView *)self footerView];
  [v59 tv_alignmentInsetsForExpectedWidth:v55];
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
  if (a4)
  {
    *a4 = v81;
  }

  return v13;
}

- (BOOL)shouldBindRowsTogether
{
  v3 = [(_TVCollectionWrappingView *)self collectionView];
  if ([v3 conformsToProtocol:&unk_287E7FA58])
  {
    v4 = [(_TVCollectionWrappingView *)self collectionView];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return 0;
    }

    v3 = [(_TVCollectionWrappingView *)self collectionView];
    v6 = [v3 shouldBindRowsTogether];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_collectionRowMetricsForExpectedWidth:(double)a3 firstItemRowIndex:(int64_t *)a4 forShowcase:(BOOL)a5
{
  v5 = a5;
  v53[1] = *MEMORY[0x277D85DE8];
  v51 = 0x7FFFFFFFFFFFFFFFLL;
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(_TVCollectionWrappingView *)self headerView];

  if (v17)
  {
    v10 = 0.0;
  }

  v18 = [(_TVCollectionWrappingView *)self collectionView];
  v19 = [v18 conformsToProtocol:&unk_287E7FB40];

  v20 = [(_TVCollectionWrappingView *)self collectionView];
  v21 = v20;
  if (v19)
  {
    v22 = objc_opt_respondsToSelector();

    if (!v5 || (v22 & 1) == 0 || (-[_TVCollectionWrappingView collectionView](self, "collectionView"), v23 = objc_claimAutoreleasedReturnValue(), [v23 showcaseRowMetricsForExpectedWidth:a3 withContentInset:{v10, v12, v14, v16}], v21 = objc_claimAutoreleasedReturnValue(), v23, !v21))
    {
      v24 = [(_TVCollectionWrappingView *)self collectionView];
      v25 = [v24 rowMetricsForExpectedWidth:&v51 withContentInset:a3 firstItemRowIndex:{v10, v12, v14, v16}];
LABEL_10:
      v21 = v25;
    }
  }

  else
  {

    if (v21)
    {
      memset(&v50[1], 0, 64);
      v26 = [(_TVCollectionWrappingView *)self collectionView];
      [v26 tv_sizeThatFits:a3 withContentInset:{0.0, v10, v12, v14, v16}];
      v28 = v27;

      *&v50[0] = 0;
      *(&v50[0] + 1) = v28;
      v24 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:v50];
      v53[0] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
      goto LABEL_10;
    }
  }

  if (v5)
  {
    [(_TVCollectionWrappingView *)self _showcaseContentScaleForExpectedWidth:a3];
    v44 = v29;
    if (*&v29 < 1.0)
    {
      v30 = [MEMORY[0x277CBEB18] array];
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
            [v30 addObject:v42];
          }

          v33 = [v31 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v33);
      }

      v21 = [v30 copy];
    }
  }

  if (a4)
  {
    *a4 = v51;
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
    v8 = [(_TVCollectionWrappingView *)self collectionView];
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
    v34 = [(UIView *)self->_selectingView superview];
    [v8 convertRect:v34 fromView:{v30, v31, v32, v33}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v65 = x;
    if (self->_collectionViewFlags.respondsToAugmentedSelectionFrameForFrame)
    {
      v43 = [(_TVCollectionWrappingView *)self collectionView];
      [v43 tv_augmentedSelectionFrameForFrame:{v36, v38, v40, v42}];
      v36 = v44;
      v38 = v45;
      v40 = v46;
      v42 = v47;
    }

    v48 = [(_TVCollectionWrappingView *)self collectionView];
    [(_TVCollectionWrappingView *)self convertRect:v48 fromView:v36, v38, v40, v42];
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

    v8 = [(_TVCollectionWrappingView *)self collectionView];
    [v8 contentInset];
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
    v13 = [(_TVCollectionWrappingView *)self collectionView];
    v14 = [v13 collectionViewLayout];

    [v14 prepareLayout];
    [v14 collectionViewContentSize];
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

- (double)_showcaseContentScaleForExpectedWidth:(double)a3
{
  [(_TVCollectionWrappingView *)self _adjustedPadding];
  v6 = v5;
  v8 = v7;
  [(_TVCollectionWrappingView *)self showcaseConfig];
  return fmin((a3 + 0.0 * -2.0) / (a3 - (v6 + v8)), 1.0);
}

- (id)_currentHeaderView
{
  if ([(_TVCollectionWrappingView *)self isHeaderHidden])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_TVCollectionWrappingView *)self headerView];
  }

  return v3;
}

- (void)setIkBackgroundColor:(id)a3
{
  v10 = a3;
  if (([(IKColor *)self->_ikBackgroundColor isEqual:?]& 1) == 0)
  {
    [(CAGradientLayer *)self->_gradientLayer removeFromSuperlayer];
    objc_storeStrong(&self->_ikBackgroundColor, a3);
    v5 = [MEMORY[0x277D75348] clearColor];
    if (v10)
    {
      v6 = [v10 color];

      if ([v10 colorType] == 3)
      {
        v7 = [MEMORY[0x277CD9EB0] layer];
        gradientLayer = self->_gradientLayer;
        self->_gradientLayer = v7;

        [(_TVCollectionWrappingView *)self _updateGradientLayer];
        v9 = [(_TVCollectionWrappingView *)self layer];
        [v9 insertSublayer:self->_gradientLayer atIndex:0];
      }
    }

    else
    {
      v6 = v5;
    }

    [(_TVCollectionWrappingView *)self setBackgroundColor:v6];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = a3;
  v4 = [(_TVCollectionWrappingView *)self traitCollection];
  if ([v4 userInterfaceStyle])
  {
    v5 = [v8 userInterfaceStyle];
    v6 = [(_TVCollectionWrappingView *)self traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v5 != v7)
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
    v3 = [(IKColor *)self->_ikBackgroundColor gradientColors];
    v4 = [v3 count];

    if (v4)
    {
      v5 = MEMORY[0x277CBEB18];
      v6 = [(IKColor *)self->_ikBackgroundColor gradientColors];
      v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

      v8 = [(IKColor *)self->_ikBackgroundColor gradientColors];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __49___TVCollectionWrappingView__updateGradientLayer__block_invoke;
      v12[3] = &unk_279D6F808;
      v13 = v7;
      v9 = v7;
      [v8 enumerateObjectsUsingBlock:v12];

      [(CAGradientLayer *)self->_gradientLayer setColors:v9];
      gradientLayer = self->_gradientLayer;
      v11 = [(IKColor *)self->_ikBackgroundColor gradientPoints];
      [(CAGradientLayer *)gradientLayer setLocations:v11];
    }
  }
}

- (void)_updateSubviews
{
  v3 = [(_TVCollectionWrappingView *)self collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [(_TVCollectionWrappingView *)self collectionView];
    v6 = [v5 superview];

    if (!v6)
    {
      v7 = [(_TVCollectionWrappingView *)self headerView];
      v8 = [v7 superview];

      v9 = [(_TVCollectionWrappingView *)self collectionView];
      if (v8 == self)
      {
        v10 = [(_TVCollectionWrappingView *)self headerView];
        [(_TVCollectionWrappingView *)self insertSubview:v9 below:v10];
      }

      else
      {
        [(_TVCollectionWrappingView *)self addSubview:v9];
      }
    }
  }

  v11 = [(_TVCollectionWrappingView *)self headerView];
  if (v11)
  {
    v12 = v11;
    v13 = [(_TVCollectionWrappingView *)self headerView];
    v14 = [v13 superview];

    if (!v14)
    {
      v15 = [(_TVCollectionWrappingView *)self isHeaderFloating];
      v16 = [(_TVCollectionWrappingView *)self collectionView];
      v17 = v16;
      if (v15)
      {
        v18 = [v16 superview];

        v19 = [(_TVCollectionWrappingView *)self headerView];
        if (v18 != self)
        {
          [(_TVCollectionWrappingView *)self addSubview:v19];
LABEL_16:

          goto LABEL_17;
        }

        v20 = [(_TVCollectionWrappingView *)self collectionView];
        [(_TVCollectionWrappingView *)self insertSubview:v19 above:v20];
LABEL_15:

        goto LABEL_16;
      }

      if (v17)
      {
        v19 = [(_TVCollectionWrappingView *)self collectionView];
        v20 = [(_TVCollectionWrappingView *)self headerView];
        [v19 addSubview:v20];
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v21 = [(_TVCollectionWrappingView *)self footerView];
  if (v21)
  {
    v22 = v21;
    v23 = [(_TVCollectionWrappingView *)self footerView];
    v24 = [v23 superview];

    if (!v24)
    {
      v25 = [(_TVCollectionWrappingView *)self collectionView];
      v26 = [v25 superview];

      v27 = [(_TVCollectionWrappingView *)self footerView];
      v29 = v27;
      if (v26 == self)
      {
        v28 = [(_TVCollectionWrappingView *)self collectionView];
        [(_TVCollectionWrappingView *)self insertSubview:v29 above:v28];
      }

      else
      {
        [(_TVCollectionWrappingView *)self addSubview:v27];
      }
    }
  }
}

- (void)setShowcaseConfig:(TVShowcaseConfig *)a3
{
  inset = a3->inset;
  *&self->_showcaseConfig.flavor = *&a3->flavor;
  self->_showcaseConfig.inset = inset;
}

@end