@interface _TVStackWrappingView
- (_TVStackWrappingView)initWithFrame:(CGRect)a3;
- (id)preferredFocusEnvironments;
- (void)configureSupplementaryCellLayoutAttributesWithAutomaticInsets:(UIEdgeInsets)a3 sectionIndex:(int64_t)a4;
- (void)layoutSubviews;
- (void)setBackdropBlurEffectStyle:(int64_t)a3;
- (void)setBackdropImage:(id)a3;
- (void)setBackdropInitialPeek:(double)a3;
- (void)setBackdropMaskFactor:(double)a3;
- (void)setBackdropPeekGradient:(double)a3;
- (void)setBackgroundImage:(id)a3;
- (void)setStackView:(id)a3;
- (void)setUsesBackdropImage:(BOOL)a3;
- (void)setUsesBackgroundImage:(BOOL)a3;
@end

@implementation _TVStackWrappingView

- (_TVStackWrappingView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _TVStackWrappingView;
  result = [(_TVStackWrappingView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_usesBackgroundImage = 1;
    result->_usesBackdropImage = 1;
    result->_backdropBlurEffectStyle = 0x8000000000000000;
  }

  return result;
}

- (void)setBackgroundImage:(id)a3
{
  v5 = a3;
  if (self->_backgroundImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backgroundImage, a3);
    [(_TVStackWrappingView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setUsesBackgroundImage:(BOOL)a3
{
  if (self->_usesBackgroundImage != a3)
  {
    self->_usesBackgroundImage = a3;
    [(_TVStackWrappingView *)self setNeedsLayout];
  }
}

- (void)setStackView:(id)a3
{
  v5 = a3;
  stackView = self->_stackView;
  if (stackView != v5)
  {
    v7 = v5;
    [(UICollectionView *)stackView removeFromSuperview];
    objc_storeStrong(&self->_stackView, a3);
    stackView = [(_TVStackWrappingView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](stackView, v5);
}

- (void)setBackdropImage:(id)a3
{
  v5 = a3;
  if (self->_backdropImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_backdropImage, a3);
    [(_TVStackWrappingView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setUsesBackdropImage:(BOOL)a3
{
  if (self->_usesBackdropImage != a3)
  {
    self->_usesBackdropImage = a3;
    [(_TVStackWrappingView *)self setNeedsLayout];
  }
}

- (void)setBackdropBlurEffectStyle:(int64_t)a3
{
  if (self->_backdropBlurEffectStyle != a3)
  {
    self->_backdropBlurEffectStyle = a3;
    [(_TVStackWrappingView *)self setNeedsLayout];
  }
}

- (void)setBackdropPeekGradient:(double)a3
{
  if (self->_backdropPeekGradient != a3)
  {
    self->_backdropPeekGradient = a3;
    [(_TVStackWrappingView *)self setNeedsLayout];
  }
}

- (void)setBackdropInitialPeek:(double)a3
{
  if (self->_backdropInitialPeek != a3)
  {
    self->_backdropInitialPeek = a3;
    [(_TVStackWrappingView *)self setNeedsLayout];
  }
}

- (void)setBackdropMaskFactor:(double)a3
{
  if (self->_backdropMaskFactor != a3)
  {
    self->_backdropMaskFactor = a3;
    [(_TVStackWrappingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = _TVStackWrappingView;
  [(_TVStackWrappingView *)&v52 layoutSubviews];
  [(_TVStackWrappingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_TVStackWrappingView *)self backdropBlurEffectStyle];
  [(_TVStackWrappingView *)self backdropInitialPeek];
  v13 = v12;
  [(_TVStackWrappingView *)self backdropPeekGradient];
  v15 = v14;
  [(_TVStackWrappingView *)self backdropMaskFactor];
  v17 = v16;
  v18 = [(_TVStackWrappingView *)self backgroundImage];
  if (v18 && [(_TVStackWrappingView *)self usesBackgroundImage])
  {
    backgroundImageView = self->_backgroundImageView;
    if (!backgroundImageView)
    {
      v20 = _TVStackMakeImageView();
      v21 = self->_backgroundImageView;
      self->_backgroundImageView = v20;

      [(_TVStackWrappingView *)self insertSubview:self->_backgroundImageView atIndex:0];
      backgroundImageView = self->_backgroundImageView;
    }

    [(UIImageView *)backgroundImageView setImage:v18];
    [(UIImageView *)self->_backgroundImageView setFrame:v4, v6, v8, v10];
  }

  else
  {
    [(UIImageView *)self->_backgroundImageView removeFromSuperview];
    v22 = self->_backgroundImageView;
    self->_backgroundImageView = 0;
  }

  if (v11 == 0x8000000000000000)
  {
    [(_TVStackBackdropView *)self->_backdropView removeFromSuperview];
    backdropView = self->_backdropView;
    self->_backdropView = 0;

    [(_TVStackBackdropMaskingView *)self->_maskedBackdropView removeFromSuperview];
    maskedBackdropView = self->_maskedBackdropView;
    self->_maskedBackdropView = 0;
  }

  else
  {
    if ([(_TVStackWrappingView *)self usesBackdropImage])
    {
      v25 = [(_TVStackWrappingView *)self backdropImage];
      v26 = v25 != 0;
    }

    else
    {
      v26 = 0;
    }

    v27 = self->_backdropView;
    if (!v27)
    {
      v28 = [[_TVStackBackdropView alloc] initWithBlurEffectStyle:v11];
      v29 = self->_backdropView;
      self->_backdropView = v28;

      [(_TVStackWrappingView *)self insertSubview:self->_backdropView atIndex:self->_backgroundImageView != 0];
      v27 = self->_backdropView;
    }

    __38___TVStackWrappingView_layoutSubviews__block_invoke([(_TVStackBackdropView *)v27 setBlurEffectStyle:v11], self->_backdropView, v26);
    v30 = self->_backdropView;
    v31 = [(_TVStackWrappingView *)self backdropImage];
    [(_TVStackBackdropView *)v30 setImage:v31];

    [(_TVStackBackdropView *)self->_backdropView setFrame:v4, v6, v8, v10];
    v32 = self->_maskedBackdropView;
    if (v13 <= 0.0)
    {
      [(_TVStackBackdropMaskingView *)v32 setAlpha:0.0];
      v41 = self->_backdropView;
      v42 = 1.0 - v17;
    }

    else
    {
      if (!v32)
      {
        v33 = objc_opt_new();
        v34 = self->_maskedBackdropView;
        self->_maskedBackdropView = v33;

        v35 = self->_maskedBackdropView;
        v36 = [[_TVStackBackdropView alloc] initWithBlurEffectStyle:v11];
        [(_TVStackBackdropMaskingView *)v35 setBackdropView:v36];

        [(_TVStackWrappingView *)self insertSubview:self->_maskedBackdropView below:self->_backdropView];
        v32 = self->_maskedBackdropView;
      }

      v37 = [(_TVStackBackdropMaskingView *)v32 backdropView];
      [v37 setBlurEffectStyle:v11];

      v38 = [(_TVStackBackdropMaskingView *)self->_maskedBackdropView backdropView];
      v39 = v38;
      if (v26)
      {
        v40 = [(_TVStackWrappingView *)self backdropImage];
        [v39 setImage:v40];
      }

      else
      {
        [v38 setImage:0];
      }

      v43 = [(_TVStackBackdropMaskingView *)self->_maskedBackdropView backdropView];
      [v43 setBounds:{v4, v6, v8, v10}];

      if (v15 <= 0.0)
      {
        [(_TVStackBackdropMaskingView *)self->_maskedBackdropView setFrame:v4, (v10 - v13) * v17, v8, v10 - (v10 - v13) * v17];
        v47 = [(_TVStackBackdropMaskingView *)self->_maskedBackdropView layer];
        [v47 setShouldRasterize:0];

        v48 = [(_TVStackBackdropMaskingView *)self->_maskedBackdropView backdropView];
        __38___TVStackWrappingView_layoutSubviews__block_invoke(v48, v48, v26);

        [(_TVStackBackdropMaskingView *)self->_maskedBackdropView setAlpha:1.0];
        v41 = self->_backdropView;
        v42 = 0.0;
      }

      else
      {
        [(_TVStackBackdropMaskingView *)self->_maskedBackdropView setGradientScale:v15 / v13];
        v44 = 0.7;
        if (!v26)
        {
          v44 = 1.0;
        }

        [(_TVStackBackdropMaskingView *)self->_maskedBackdropView setGradientStop:v44];
        [(_TVStackBackdropMaskingView *)self->_maskedBackdropView setFrame:0.0, v10 - v13, v8, v13];
        v45 = [(_TVStackBackdropMaskingView *)self->_maskedBackdropView layer];
        [v45 setShouldRasterize:v26];

        v46 = [(_TVStackBackdropMaskingView *)self->_maskedBackdropView backdropView];
        __38___TVStackWrappingView_layoutSubviews__block_invoke(v46, v46, 0);

        [(_TVStackBackdropMaskingView *)self->_maskedBackdropView setAlpha:1.0];
        v41 = self->_backdropView;
        v42 = 1.0 - v17;
      }
    }

    [(_TVStackBackdropView *)v41 setAlpha:v42];
  }

  v49 = [(_TVStackWrappingView *)self stackView];
  v50 = v49;
  if (v49)
  {
    v51 = [v49 superview];

    if (v51 != self)
    {
      [(_TVStackWrappingView *)self addSubview:v50];
    }

    [v50 setFrame:{v4, v6, v8, v10}];
  }
}

- (void)configureSupplementaryCellLayoutAttributesWithAutomaticInsets:(UIEdgeInsets)a3 sectionIndex:(int64_t)a4
{
  bottom = a3.bottom;
  right = a3.right;
  left = a3.left;
  top = a3.top;
  v82 = *MEMORY[0x277D85DE8];
  v8 = [(_TVStackWrappingView *)self stackView];

  if (v8)
  {
    [(_TVStackWrappingView *)self bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(_TVStackWrappingView *)self stackView];
    v18 = MEMORY[0x277CBEB18];
    v19 = [(_TVStackWrappingView *)self headerSupplementaryViews];
    v20 = [v18 arrayWithCapacity:{objc_msgSend(v19, "count")}];

    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v80 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x4010000000;
    v74 = &unk_26CE937F5;
    v21 = *(MEMORY[0x277D768C8] + 16);
    v75 = *MEMORY[0x277D768C8];
    v76 = v21;
    v22 = [(_TVStackWrappingView *)self headerSupplementaryViews];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __99___TVStackWrappingView_configureSupplementaryCellLayoutAttributesWithAutomaticInsets_sectionIndex___block_invoke;
    v62[3] = &unk_279D6F698;
    v66 = v10;
    v67 = v12;
    v68 = v14;
    v69 = v16;
    v70 = a4;
    v64 = &v71;
    v65 = &v77;
    v23 = v20;
    v63 = v23;
    [v22 enumerateObjectsUsingBlock:v62];

    [v17 contentOffset];
    v25 = v24;
    [v17 contentInset];
    v27 = v26;
    v55 = v25;
    [v17 tv_margin];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = v72[6];
    [(UIView *)self tv_padding];
    v41 = v29 + v36;
    if (top + v41 + v78[3] >= v37)
    {
      v42 = top + v41 + v78[3];
    }

    else
    {
      v42 = v37;
    }

    if (left + v31 >= v38)
    {
      v43 = left + v31;
    }

    else
    {
      v43 = v38;
    }

    if (bottom + v33 >= v39)
    {
      v44 = bottom + v33;
    }

    else
    {
      v44 = v39;
    }

    if (right + v35 >= v40)
    {
      v45 = right + v35;
    }

    else
    {
      v45 = v40;
    }

    if ([(_TVStackWrappingView *)self shouldAdjustForTabBarSafeAreaInsets])
    {
      [(_TVStackWrappingView *)self safeAreaInsets];
      if (v42 < v46)
      {
        v42 = v46;
      }
    }

    [v17 setContentInset:{v42, v43, v44, v45}];
    if (v55 <= -v27)
    {
      [v17 contentOffset];
      [v17 setContentOffset:?];
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v47 = v23;
    v48 = [v47 countByEnumeratingWithState:&v58 objects:v81 count:16];
    if (v48)
    {
      v49 = *v59;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v59 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v58 + 1) + 8 * i);
          [v51 frame];
          [v51 setFrame:?];
        }

        v48 = [v47 countByEnumeratingWithState:&v58 objects:v81 count:16];
      }

      while (v48);
    }

    v52 = [v47 count];
    if (v52)
    {
      v53 = [v47 copy];
    }

    else
    {
      v53 = 0;
    }

    objc_storeStrong(&self->_supplementaryCellLayoutAttributes, v53);
    if (v52)
    {
    }

    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v77, 8);
  }

  else
  {
    supplementaryCellLayoutAttributes = self->_supplementaryCellLayoutAttributes;
    self->_supplementaryCellLayoutAttributes = 0;
  }
}

- (id)preferredFocusEnvironments
{
  v7[1] = *MEMORY[0x277D85DE8];
  [(_TVStackWrappingView *)self layoutIfNeeded];
  v3 = [(_TVStackWrappingView *)self stackView];
  if (v3)
  {
    v4 = [(_TVStackWrappingView *)self stackView];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

@end