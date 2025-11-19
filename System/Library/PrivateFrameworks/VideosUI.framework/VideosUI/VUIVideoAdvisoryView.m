@interface VUIVideoAdvisoryView
- (BOOL)_isPortrait;
- (CGSize)_dividerSize;
- (CGSize)_legendSize;
- (CGSize)_logoSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)_dividerMargin;
- (UIEdgeInsets)_legendsMargin;
- (UIEdgeInsets)_logoMargin;
- (UIEdgeInsets)_margin;
- (VUIVideoAdvisoryView)initWithAdvisoryInfoDictionary:(id)a3 reduceMotion:(BOOL)a4;
- (void)_configureSubviewsWithDictionary:(id)a3;
- (void)_hideWithCoreAnimationWithPlatterView:(id)a3 completion:(id)a4;
- (void)_layoutAdditionalViews;
- (void)_showAdditionalViewAtIndex:(unint64_t)a3 animated:(BOOL)a4 platterView:(id)a5 superview:(id)a6 completion:(id)a7;
- (void)_showWithCoreAnimationWithPlatterView:(id)a3 completion:(id)a4;
- (void)hideAnimated:(BOOL)a3 platterView:(id)a4 completion:(id)a5;
- (void)layoutSubviews;
- (void)removeAllViews;
- (void)showAnimated:(BOOL)a3 platterView:(id)a4 completion:(id)a5;
@end

@implementation VUIVideoAdvisoryView

- (VUIVideoAdvisoryView)initWithAdvisoryInfoDictionary:(id)a3 reduceMotion:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v15.receiver = self;
  v15.super_class = VUIVideoAdvisoryView;
  v7 = [(VUIVideoAdvisoryView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    v8 = objc_opt_new();
    layout = v7->_layout;
    v7->_layout = v8;

    [(VUIVideoAdvisoryView *)v7 _configureSubviewsWithDictionary:v6];
  }

  v10 = 40.0;
  if (v4)
  {
    v10 = 0.0;
  }

  v7->_legendAnimationDistance = v10;
  v11 = 100.0;
  if (v4)
  {
    v11 = 0.0;
  }

  v7->_legendYAnimationDistance = v11;
  v7->_reduceMotion = v4;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  additionalViews = v7->_additionalViews;
  v7->_additionalViews = v12;

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v61 = *MEMORY[0x1E69E9840];
  [(VUIVideoAdvisoryView *)self _logoSize];
  v54 = v6;
  v55 = v7;
  [(VUIVideoAdvisoryView *)self _logoMargin];
  v52 = v9;
  v53 = v8;
  v50 = v10;
  v48 = v11;
  [(VUIVideoAdvisoryView *)self _legendsMargin];
  v51 = v12;
  v14 = v13;
  v49 = v15;
  v17 = v16;
  v18 = [(VUIVideoAdvisoryView *)self layout];
  v19 = [v18 legendLayout];
  [v19 margin];
  v21 = v20;
  v23 = v22;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = [(VUIVideoAdvisoryView *)self legendViews];
  v25 = [v24 countByEnumeratingWithState:&v56 objects:v60 count:16];
  v46 = v17;
  v47 = v14;
  if (v25)
  {
    v26 = v25;
    v27 = *v57;
    v28 = v14 + v17;
    v29 = v21 + v23;
    v30 = 0.0;
    v31 = 0.0;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v57 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v33 = *(*(&v56 + 1) + 8 * i);
        [v33 sizeThatFits:{width, height, *&v46}];
        v30 = v30 + v34;
        [v33 legendDescriptionSizeThatFits:{width, height}];
        v36 = v35;
        [v33 legendNameSizeThatFits:{width, height}];
        v38 = v28 + v36 + v37 + v29 * 2.0;
        if (v38 > v31)
        {
          v31 = v38;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v26);
  }

  else
  {
    v30 = 0.0;
    v31 = 0.0;
  }

  v39 = [(VUIVideoAdvisoryView *)self legendViews];
  v40 = [v39 count];

  v41 = [(VUIVideoAdvisoryView *)self legendViews];
  if ([v41 count])
  {
    v42 = v47 + v46 + v54 + v50 + v48 + v31;
  }

  else
  {
    v42 = v54;
  }

  if (v30 + v40 * (v51 + v49) >= v55 + v53 + v52)
  {
    v43 = v30 + v40 * (v51 + v49);
  }

  else
  {
    v43 = v55 + v53 + v52;
  }

  v44 = v42;
  v45 = v43;
  result.height = v45;
  result.width = v44;
  return result;
}

- (void)layoutSubviews
{
  v105 = *MEMORY[0x1E69E9840];
  v102.receiver = self;
  v102.super_class = VUIVideoAdvisoryView;
  [(VUIVideoAdvisoryView *)&v102 layoutSubviews];
  v3 = [(VUIVideoAdvisoryView *)self layout];
  v4 = [(VUIVideoAdvisoryView *)self vuiIsRTL];
  [(VUIVideoAdvisoryView *)self bounds];
  v90 = v5;
  v92 = v6;
  v8 = v7;
  v10 = v9;
  [(VUIVideoAdvisoryView *)self _logoSize];
  v12 = v11;
  v87 = v13;
  [(VUIVideoAdvisoryView *)self _logoMargin];
  v93 = v14;
  v16 = v15;
  v82 = v17;
  v19 = v18;
  v88 = v18;
  [(VUIVideoAdvisoryView *)self _dividerSize];
  v89 = v20;
  v81 = v21;
  [(VUIVideoAdvisoryView *)self _dividerMargin];
  v80 = v22;
  v91 = v23;
  v84 = v24;
  [(VUIVideoAdvisoryView *)self _legendSize];
  v26 = v25;
  [(VUIVideoAdvisoryView *)self _legendsMargin];
  v85 = v27;
  v86 = v28;
  v83 = v29;
  v30 = v8 - v19 - v12;
  v31 = v12;
  v32 = v90 + v16;
  if (v4)
  {
    v33 = v30;
  }

  else
  {
    v33 = v90 + v16;
  }

  VUIRoundValue();
  v35 = v34;
  v36 = [(VUIVideoAdvisoryView *)self logoImageView];
  [v36 setFrame:{v33, v35, v31, v87}];

  if (v4)
  {
    v37 = v30 - (v88 + v91 - v89);
  }

  else
  {
    v37 = v32 + v91 + v88 + v31 + v32;
  }

  v38 = [(VUIVideoAdvisoryView *)self dividerView];

  if (v38)
  {
    v39 = [(VUIVideoAdvisoryView *)self dividerView];
    [v39 frame];
    v41 = v40;

    if (v41 > 0.0)
    {
      v41 = v81;
    }

    v42 = [(VUIVideoAdvisoryView *)self dividerView];
    [v42 setFrame:{v37, v92 + v80, v89, v41}];

    v43 = v89;
  }

  else
  {
    v43 = *(MEMORY[0x1E695F058] + 16);
  }

  v44 = [(VUIVideoAdvisoryView *)self legendViews];
  v45 = [v44 count];

  if (v45)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v46 = [(VUIVideoAdvisoryView *)self legendViews];
    v47 = [v46 countByEnumeratingWithState:&v98 objects:v104 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v99;
      v50 = 0.0;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v99 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&v98 + 1) + 8 * i);
          [v3 legendNameMinWidth];
          v54 = v53;
          [v52 legendNameSizeThatFits:{v8, v10}];
          if (v54 >= v55)
          {
            v55 = v54;
          }

          [v3 setLegendNameMinWidth:v55];
          [v52 sizeThatFits:{v8, v10}];
          if (v50 < v56)
          {
            v50 = v56;
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v98 objects:v104 count:16];
      }

      while (v48);
    }

    else
    {
      v50 = 0.0;
    }

    v57 = [(VUIVideoAdvisoryView *)self legendViews];
    v58 = [v57 count];

    if (v58 < 2)
    {
      if (v10 - (v93 + v82) < v50)
      {
        v50 = v10 - (v93 + v82);
      }

      v26 = v50;
      v59 = v85;
    }

    else
    {
      v59 = v85;
      v60 = [(VUIVideoAdvisoryView *)self legendViews];
      [v60 count];
      v61 = [(VUIVideoAdvisoryView *)self legendViews];
      [v61 count];
    }

    VUIRoundValue();
    v63 = v62;
    if (v4)
    {
      v64 = v37 + v83 * -2.0;
    }

    else
    {
      v64 = v8 - v37 + v83 * -2.0;
    }

    v65 = [(VUIVideoAdvisoryView *)self legendViews];
    v66 = [v65 count];

    if (v66 == 1)
    {
      [v3 legendMaxWidth];
      v64 = v67;
    }

    if (v4)
    {
      v68 = v37 - (v83 + v84 + v64);
    }

    else
    {
      v68 = v37 + v83 + v84 + v43;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v69 = [(VUIVideoAdvisoryView *)self legendViews];
    v70 = [v69 countByEnumeratingWithState:&v94 objects:v103 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = v92 + v93 + v63;
      v73 = *v95;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v95 != v73)
          {
            objc_enumerationMutation(v69);
          }

          v75 = *(*(&v94 + 1) + 8 * j);
          v76 = [v75 layer];
          v77 = [v76 presentationLayer];
          v78 = 0.0;
          if (!v77)
          {
            [(VUIVideoAdvisoryView *)self legendAnimationDistance];
            if (v4)
            {
              v78 = -v79;
            }

            else
            {
              v78 = v79;
            }
          }

          [v75 setFrame:{v68 + v78, v72, v64, v26}];
          v72 = v86 + v59 + v26 + v72;
        }

        v71 = [v69 countByEnumeratingWithState:&v94 objects:v103 count:16];
      }

      while (v71);
    }
  }
}

- (void)_layoutAdditionalViews
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(VUIVideoAdvisoryView *)self additionalViews];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        [(VUIVideoAdvisoryView *)self frame];
        [v8 sizeThatFits:{v9, v10}];
        v12 = v11;
        v14 = v13;
        v15 = [(VUIVideoAdvisoryView *)self vuiIsRTL];
        v16 = 0.0;
        if (v15)
        {
          [(VUIVideoAdvisoryView *)self frame];
          v16 = v17 - v12;
        }

        [v8 setFrame:{v16, 0.0, v12, v14}];
        v18 = [v8 superview];
        v19 = [v18 isEqual:self];

        if ((v19 & 1) == 0)
        {
          [(VUIVideoAdvisoryView *)self addSubview:v8];
        }

        [v8 layoutIfNeeded];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)removeAllViews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(VUIVideoAdvisoryView *)self additionalViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(VUIVideoAdvisoryView *)self removeFromSuperview];
}

- (BOOL)_isPortrait
{
  v2 = [(VUIVideoAdvisoryView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3 && ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 1) < 2 || (v4 = +[VUIUtilities isIpadPortrait](VUIUtilities, "isIpadPortrait")))
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (UIEdgeInsets)_margin
{
  v3 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v4 = [(VUIVideoAdvisoryView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitMargin];
  }

  else
  {
    [v4 margin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGSize)_logoSize
{
  v3 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v4 = [(VUIVideoAdvisoryView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitLogoSize];
  }

  else
  {
    [v4 logoSize];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_legendSize
{
  v3 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v4 = [(VUIVideoAdvisoryView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitLegendSize];
  }

  else
  {
    [v4 legendSize];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_dividerSize
{
  [(VUIVideoAdvisoryView *)self bounds];
  v4 = v3;
  v5 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v6 = [(VUIVideoAdvisoryView *)self layout];
  v7 = v6;
  if (v5)
  {
    [v6 portraitDividerSize];
  }

  else
  {
    [v6 dividerSize];
  }

  v9 = v8;

  v10 = v9;
  v11 = v4;
  result.height = v11;
  result.width = v10;
  return result;
}

- (UIEdgeInsets)_logoMargin
{
  v3 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v4 = [(VUIVideoAdvisoryView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitLogoMargin];
  }

  else
  {
    [v4 logoMargin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)_legendsMargin
{
  v3 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v4 = [(VUIVideoAdvisoryView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitLegendsMargin];
  }

  else
  {
    [v4 legendsMargin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)_dividerMargin
{
  v3 = [(VUIVideoAdvisoryView *)self _isPortrait];
  v4 = [(VUIVideoAdvisoryView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitDividerMargin];
  }

  else
  {
    [v4 dividerMargin];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)_configureSubviewsWithDictionary:(id)a3
{
  v26 = a3;
  v4 = objc_opt_new();
  v5 = [v26 objectForKeyedSubscript:@"VUIAdvisoryViewLogoImageKey"];
  if (v5)
  {
    [v4 setImage:v5];
  }

  [v4 setAlpha:0.0];
  [(VUIVideoAdvisoryView *)self addSubview:v4];
  [(VUIVideoAdvisoryView *)self setLogoImageView:v4];
  v6 = [v26 objectForKeyedSubscript:@"VUIAdvisoryViewLegendsKey"];
  v7 = objc_opt_new();
  if ([v6 count])
  {
    v24 = v5;
    v25 = v4;
    [(VUIVideoAdvisoryView *)self _dividerSize];
    v9 = v8;
    v10 = objc_opt_new();
    v11 = [(VUIVideoAdvisoryView *)self layout];
    v12 = [v11 dividerColor];
    [v10 setBackgroundColor:v12];

    [v10 setFrame:{0.0, 0.0, v9, 0.0}];
    [(VUIVideoAdvisoryView *)self addSubview:v10];
    v23 = v10;
    [(VUIVideoAdvisoryView *)self setDividerView:v10];
    v13 = [v6 count];
    if (v13 >= 6)
    {
      v14 = 6;
    }

    else
    {
      v14 = v13;
    }

    if (v13)
    {
      v15 = 0;
      do
      {
        v16 = [v6 objectAtIndexedSubscript:v15];
        v17 = [VUIVideoAdvisoryLegendView alloc];
        v18 = [(VUIVideoAdvisoryView *)self layout];
        v19 = [(VUIVideoAdvisoryLegendView *)v17 initWithLayout:v18];

        v20 = [v16 objectForKeyedSubscript:@"VUIAdvisoryViewLegendDescriptionKey"];
        [(VUIVideoAdvisoryLegendView *)v19 setLegendDescription:v20];
        v21 = [v16 objectForKeyedSubscript:@"VUIAdvisoryViewLegendNameKey"];
        if ([v21 length])
        {
          [(VUIVideoAdvisoryLegendView *)v19 setLegendName:v21];
        }

        [(VUIVideoAdvisoryLegendView *)v19 setAlpha:0.0];
        [(VUIVideoAdvisoryView *)self addSubview:v19];
        [v7 addObject:v19];

        ++v15;
      }

      while (v14 != v15);
    }

    [(VUIVideoAdvisoryView *)self setLegendViews:v7];

    v5 = v24;
    v4 = v25;
  }

  v22 = [v26 objectForKeyedSubscript:@"VUIAdvisoryViewAdditionalViewsDictionaryKey"];
  [(VUIVideoAdvisoryView *)self setAdditionalViewsInfo:v22];
}

- (void)showAnimated:(BOOL)a3 platterView:(id)a4 completion:(id)a5
{
  v6 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    [(VUIVideoAdvisoryView *)self _showWithCoreAnimationWithPlatterView:v8 completion:v9];
  }

  else
  {
    v10 = [(VUIVideoAdvisoryView *)self dividerView];

    if (v10)
    {
      v11 = [(VUIVideoAdvisoryView *)self dividerView];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(VUIVideoAdvisoryView *)self _dividerSize];
      v19 = v18;
      v20 = [(VUIVideoAdvisoryView *)self dividerView];
      [v20 setFrame:{v13, v15, v17, v19}];
    }

    v21 = [(VUIVideoAdvisoryView *)self logoImageView];
    [v21 setAlpha:1.0];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [(VUIVideoAdvisoryView *)self legendViews];
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        v26 = 0;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v33 + 1) + 8 * v26++) setAlpha:1.0];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v24);
    }

    if (v8)
    {
      [(VUIVideoAdvisoryView *)self frame];
      v28 = v27 + -15.0;
      [v8 frame];
      v30 = v29;
      [(VUIVideoAdvisoryView *)self frame];
      v32 = v31 + 30.0;
      [v8 frame];
      [v8 setFrame:{v28, v30, v32}];
    }

    v9[2](v9);
  }
}

- (void)_showWithCoreAnimationWithPlatterView:(id)a3 completion:(id)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E6979518] begin];
  v8 = MEMORY[0x1E6979518];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __83__VUIVideoAdvisoryView_Animator___showWithCoreAnimationWithPlatterView_completion___block_invoke;
  v85[3] = &unk_1E872D7E0;
  v78 = v7;
  v86 = v78;
  [v8 setCompletionBlock:v85];
  v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
  [v9 setMass:1.0];
  [v9 setStiffness:60.0];
  [v9 setDamping:16.0];
  [v9 setInitialVelocity:0.0];
  [v9 settlingDuration];
  [v9 setDuration:?];
  v10 = [(VUIVideoAdvisoryView *)self dividerView];
  v11 = [v10 layer];

  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(VUIVideoAdvisoryView *)self bounds];
  v19 = v18;
  v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, 0.0}];
  [v9 setFromValue:v20];

  v21 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, v19}];
  [v9 setToValue:v21];

  [v11 addAnimation:v9 forKey:@"bounds"];
  v77 = v11;
  [v11 setBounds:{v13, v15, v17, v19}];
  if (v6)
  {
    v22 = [v6 layer];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(VUIVideoAdvisoryView *)self bounds];
    v30 = v29 + 30.0;
    v31 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v26, 0.0, v28}];
    [v9 setFromValue:v31];

    v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v26, v30, v28}];
    [v9 setToValue:v32];

    [v22 addAnimation:v9 forKey:@"bounds"];
    [v22 setBounds:{v24, v26, v30, v28}];
  }

  v79 = v6;
  [v9 settlingDuration];
  v34 = v33;
  v35 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v36) = 1043207291;
  LODWORD(v37) = 1062501089;
  LODWORD(v38) = 1043207291;
  LODWORD(v39) = 1062501089;
  v40 = [v35 initWithControlPoints:v36 :v38 :v37 :v39];
  v41 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v76 = v40;
  [v41 setTimingFunction:v40];
  [v41 setBeginTime:v34 + CACurrentMediaTime()];
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v41 setFromValue:v42];

  LODWORD(v43) = 1.0;
  v44 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
  [v41 setToValue:v44];

  [v41 setDuration:0.879999995];
  [v41 setRemovedOnCompletion:0];
  v45 = *MEMORY[0x1E69797E8];
  [v41 setFillMode:*MEMORY[0x1E69797E8]];
  [v9 setKeyPath:@"position"];
  [v9 setRemovedOnCompletion:0];
  v75 = v45;
  [v9 setFillMode:v45];
  v46 = [(VUIVideoAdvisoryView *)self vuiIsRTL];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(VUIVideoAdvisoryView *)self legendViews];
  v47 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = self;
    v50 = *v82;
    do
    {
      v51 = 0;
      v52 = v9;
      do
      {
        if (*v82 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v53 = [*(*(&v81 + 1) + 8 * v51) layer];
        [v53 position];
        v55 = v54;
        v57 = v56;
        [(VUIVideoAdvisoryView *)v49 legendAnimationDistance];
        if (!v46)
        {
          v58 = -v58;
        }

        v59 = v55 + v58;
        v60 = [MEMORY[0x1E696B098] valueWithCGPoint:{v55, v57}];
        [v52 setFromValue:v60];

        v61 = [MEMORY[0x1E696B098] valueWithCGPoint:{v59, v57}];
        [v52 setToValue:v61];

        [v52 setBeginTime:v34 + CACurrentMediaTime()];
        [v41 setBeginTime:v34 + CACurrentMediaTime()];
        [v53 addAnimation:v52 forKey:@"position"];
        [v53 setPosition:{v59, v57}];
        [v53 addAnimation:v41 forKey:@"opacity"];
        [v53 setOpacity:0.0];
        v34 = v34 + 0.200000003;
        v9 = [v52 copy];

        ++v51;
        v52 = v9;
      }

      while (v48 != v51);
      v48 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v48);
  }

  else
  {
    v49 = self;
  }

  [v9 settlingDuration];
  v63 = v62;
  v64 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v65) = 1051260355;
  LODWORD(v66) = 1059816735;
  LODWORD(v67) = 1.0;
  v68 = [v64 initWithControlPoints:v65 :0.0 :v66 :v67];
  v69 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v69 setTimingFunction:v68];
  [v69 setBeginTime:v63 + CACurrentMediaTime()];
  v70 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v69 setFromValue:v70];

  LODWORD(v71) = 1.0;
  v72 = [MEMORY[0x1E696AD98] numberWithFloat:v71];
  [v69 setToValue:v72];

  [v69 setDuration:0.88];
  [v69 setRemovedOnCompletion:0];
  [v69 setFillMode:v75];
  v73 = [(VUIVideoAdvisoryView *)v49 logoImageView];
  v74 = [v73 layer];

  [v74 addAnimation:v69 forKey:@"opacity"];
  [v74 setOpacity:0.0];
  [MEMORY[0x1E6979518] commit];
}

uint64_t __83__VUIVideoAdvisoryView_Animator___showWithCoreAnimationWithPlatterView_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hideAnimated:(BOOL)a3 platterView:(id)a4 completion:(id)a5
{
  v6 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (v6)
  {
    [(VUIVideoAdvisoryView *)self _hideWithCoreAnimationWithPlatterView:v8 completion:v9];
  }

  else
  {
    v10 = [(VUIVideoAdvisoryView *)self dividerView];

    if (v10)
    {
      v11 = [(VUIVideoAdvisoryView *)self dividerView];
      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [(VUIVideoAdvisoryView *)self dividerView];
      [v18 setFrame:{v13, v15, v17, 0.0}];
    }

    v19 = [(VUIVideoAdvisoryView *)self logoImageView];
    [v19 setAlpha:0.0];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = [(VUIVideoAdvisoryView *)self legendViews];
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v28 + 1) + 8 * v24++) setAlpha:0.0];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    v25 = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
    v26 = [v25 count];

    if (v26)
    {
      v27 = [(VUIVideoAdvisoryView *)self superview];
      [(VUIVideoAdvisoryView *)self _showAdditionalViewAtIndex:0 animated:0 platterView:v8 superview:v27 completion:v9];
    }

    else
    {
      v9[2](v9);
    }
  }
}

- (void)_showAdditionalViewAtIndex:(unint64_t)a3 animated:(BOOL)a4 platterView:(id)a5 superview:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
  v16 = [v15 objectAtIndexedSubscript:a3];

  v17 = [[VUIAdditionalAdvisoryInfoView alloc] initWithAdvisoryInfoDictionary:v16 reduceMotion:[(VUIVideoAdvisoryView *)self reduceMotion]];
  v18 = [(VUIVideoAdvisoryView *)self additionalViews];
  [v18 addObject:v17];

  v19 = [v16 objectForKeyedSubscript:@"VUIIAdditionalAdvisoryInfoDisplayDurationKey"];
  [v19 floatValue];
  v20 = 6.0;
  if (v21 > 0.0)
  {
    [v19 floatValue];
    v20 = v22;
  }

  [(VUIVideoAdvisoryView *)self _layoutAdditionalViews];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke;
  block[3] = &unk_1E87361C8;
  objc_copyWeak(v32, &location);
  v32[1] = a3;
  v33 = a4;
  v28 = v17;
  v29 = v12;
  v32[2] = *&v20;
  v30 = v13;
  v31 = v14;
  v23 = v14;
  v24 = v13;
  v25 = v12;
  v26 = v17;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v32);
  objc_destroyWeak(&location);
}

void __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (*(a1 + 72))
  {
    v4 = 0;
  }

  else
  {
    v5 = [WeakRetained dividerView];
    v4 = v5 == 0;
  }

  v6 = *(a1 + 88);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke_2;
  v14[3] = &unk_1E87361A0;
  v17[1] = *(a1 + 80);
  objc_copyWeak(v17, (a1 + 64));
  v17[2] = *(a1 + 72);
  v18 = *(a1 + 88);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 32);
  *(&v12 + 1) = v11;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  v15 = v13;
  v16 = v12;
  [v8 showWithAnimatedLogoAndText:v6 animateDivider:v4 platterView:v7 completion:v14];

  objc_destroyWeak(v17);
}

void __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF0];
  v3 = *(a1 + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke_3;
  v10[3] = &unk_1E8736178;
  objc_copyWeak(v13, (a1 + 64));
  v13[1] = *(a1 + 80);
  v14 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  v9 = [v2 scheduledTimerWithTimeInterval:0 repeats:v10 block:v3];

  objc_destroyWeak(v13);
}

void __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 72) + 1;
  v4 = [WeakRetained additionalViewsInfo];
  v5 = [v4 count];

  if (v3 < v5)
  {
    [WeakRetained _showAdditionalViewAtIndex:v3 animated:*(a1 + 80) platterView:*(a1 + 32) superview:*(a1 + 40) completion:*(a1 + 56)];
  }

  v6 = [WeakRetained additionalViewsInfo];
  v7 = v3 >= [v6 count];

  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke_4;
  v11[3] = &unk_1E8735F88;
  v12 = v8;
  v14 = v7;
  v13 = *(a1 + 56);
  [v12 hideAnimated:v9 platterView:v10 hidePlatterView:v7 completion:v11];
}

uint64_t __103__VUIVideoAdvisoryView_Animator___showAdditionalViewAtIndex_animated_platterView_superview_completion___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) removeFromSuperview];
  if (*(a1 + 48) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_hideWithCoreAnimationWithPlatterView:(id)a3 completion:(id)a4
{
  v121 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(VUIVideoAdvisoryView *)self superview];
    [(VUIVideoAdvisoryView *)self _showAdditionalViewAtIndex:0 animated:1 platterView:v6 superview:v10 completion:v7];
  }

  v11 = 0x1E6979000uLL;
  [MEMORY[0x1E6979518] begin];
  v12 = MEMORY[0x1E6979518];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __83__VUIVideoAdvisoryView_Animator___hideWithCoreAnimationWithPlatterView_completion___block_invoke;
  v117[3] = &unk_1E872DC10;
  v105 = v7;
  v117[4] = self;
  v118 = v105;
  [v12 setCompletionBlock:v117];
  v13 = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
  v14 = [v13 count];

  v15 = objc_alloc(MEMORY[0x1E69793D0]);
  if (v14)
  {
    v101 = v6;
    LODWORD(v18) = 1059816735;
    LODWORD(v16) = 1051260355;
    v19 = [v15 initWithControlPoints:v16 :0.0 :0.0 :v18];
    v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v20 setDuration:0.883000016];
    v104 = v19;
    [v20 setTimingFunction:v19];
    v21 = [(VUIVideoAdvisoryView *)self logoImageView];
    v22 = [v21 layer];

    v103 = v20;
    [v22 addAnimation:v20 forKey:@"opacity"];
    v106 = v22;
    [v22 setOpacity:0.0];
    v23 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v24) = 1043207291;
    LODWORD(v25) = 1.0;
    LODWORD(v26) = 1062501089;
    v27 = [v23 initWithControlPoints:v24 :0.0 :v26 :v25];
    v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v102 = v27;
    [v28 setTimingFunction:v27];
    [v28 setDuration:0.300000012];
    [v28 setRemovedOnCompletion:0];
    [v28 setFromValue:&unk_1F5E5EDD0];
    [v28 setToValue:&unk_1F5E5EDE0];
    v107 = *MEMORY[0x1E69797E8];
    [v28 setFillMode:?];
    v29 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
    [v29 setMass:1.0];
    [v29 setStiffness:24.0];
    [v29 setDamping:15.0];
    [v29 setInitialVelocity:0.0];
    [v29 settlingDuration];
    [v29 setDuration:?];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v30 = self;
    v31 = [(VUIVideoAdvisoryView *)self legendViews];
    v32 = [v31 reverseObjectEnumerator];

    v33 = [v32 countByEnumeratingWithState:&v109 objects:v119 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v110;
      v36 = 0.1;
      do
      {
        v37 = 0;
        v38 = v29;
        v39 = v28;
        do
        {
          if (*v110 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v40 = [*(*(&v109 + 1) + 8 * v37) layer];
          v41 = [v40 presentationLayer];
          [v41 position];
          v43 = v42;
          v45 = v44;

          [(VUIVideoAdvisoryView *)v30 legendYAnimationDistance];
          v47 = v45 + v46;
          v48 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v45}];
          [v38 setFromValue:v48];

          v49 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v47}];
          [v38 setToValue:v49];

          [v38 setRemovedOnCompletion:0];
          [v38 setFillMode:v107];
          [v40 addAnimation:v38 forKey:@"position"];
          [v40 setPosition:{v43, v47}];
          [v40 addAnimation:v39 forKey:@"opacity"];
          [v39 setBeginTime:v36 + CACurrentMediaTime()];
          LODWORD(v50) = 1.0;
          [v40 setOpacity:v50];
          v36 = v36 + 0.100000001;
          v29 = [v38 copy];

          v28 = [v39 copy];
          ++v37;
          v38 = v29;
          v39 = v28;
        }

        while (v34 != v37);
        v34 = [v32 countByEnumeratingWithState:&v109 objects:v119 count:16];
      }

      while (v34);
    }

    v51 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
    [v51 setDuration:0.88];
    v52 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v53) = 1051260355;
    LODWORD(v54) = 1062501089;
    v55 = [v52 initWithControlPoints:v53 :0.0 :v54 :0.0];
    [v51 setTimingFunction:v55];
    v56 = [(VUIVideoAdvisoryView *)v30 dividerView];
    v57 = [v56 layer];

    [v57 bounds];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = [MEMORY[0x1E696B098] valueWithCGRect:?];
    [v51 setFromValue:v66];

    v67 = [MEMORY[0x1E696B098] valueWithCGRect:{v59, v61, v63, 0.0}];
    [v51 setToValue:v67];

    [v51 setRemovedOnCompletion:0];
    [v51 setFillMode:v107];
    [v57 addAnimation:v51 forKey:@"bounds"];
    [v57 setBounds:{v59, v61, v63, v65}];

    v6 = v101;
    v11 = 0x1E6979000;
  }

  else
  {
    LODWORD(v16) = 1051260355;
    LODWORD(v17) = 1062501089;
    LODWORD(v18) = 1062501089;
    v68 = [v15 initWithControlPoints:v16 :0.0 :v17 :v18];
    v69 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v69 setDuration:0.430000007];
    v104 = v68;
    [v69 setTimingFunction:v68];
    LODWORD(v70) = 1.0;
    v71 = [MEMORY[0x1E696AD98] numberWithFloat:v70];
    [v69 setFromValue:v71];

    v72 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v69 setToValue:v72];

    v73 = [(VUIVideoAdvisoryView *)self logoImageView];
    v74 = [v73 layer];

    [v74 addAnimation:v69 forKey:@"opacity"];
    v106 = v74;
    [v74 setOpacity:0.0];
    if (v6)
    {
      v75 = [v6 layer];
      [v75 addAnimation:v69 forKey:@"opacity"];
      [v75 setOpacity:0.0];
    }

    v103 = v69;
    v76 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v77) = 1051260355;
    LODWORD(v78) = 1062501089;
    LODWORD(v79) = 1062501089;
    v80 = [v76 initWithControlPoints:v77 :0.0 :v78 :v79];
    v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v28 setDuration:0.430000007];
    v102 = v80;
    [v28 setTimingFunction:v80];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v108 = self;
    v81 = [(VUIVideoAdvisoryView *)self legendViews];
    v82 = [v81 countByEnumeratingWithState:&v113 objects:v120 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v114;
      do
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v114 != v84)
          {
            objc_enumerationMutation(v81);
          }

          v86 = [*(*(&v113 + 1) + 8 * i) layer];
          [v86 addAnimation:v28 forKey:@"opacity"];
          [v106 setOpacity:0.0];
        }

        v83 = [v81 countByEnumeratingWithState:&v113 objects:v120 count:16];
      }

      while (v83);
    }

    v29 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
    [v29 setDuration:0.88];
    v87 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v88) = 1051260355;
    LODWORD(v89) = 1062501089;
    v51 = [v87 initWithControlPoints:v88 :0.0 :v89 :0.0];
    [v29 setTimingFunction:v51];
    v90 = [(VUIVideoAdvisoryView *)v108 dividerView];
    v55 = [v90 layer];

    [v55 bounds];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v99 = [MEMORY[0x1E696B098] valueWithCGRect:?];
    [v29 setFromValue:v99];

    v100 = [MEMORY[0x1E696B098] valueWithCGRect:{v92, v94, v96, 0.0}];
    [v29 setToValue:v100];

    [v29 setRemovedOnCompletion:0];
    [v29 setFillMode:*MEMORY[0x1E69797E8]];
    [v55 addAnimation:v29 forKey:@"bounds"];
    [v55 setBounds:{v92, v94, v96, v98}];
  }

  [*(v11 + 1304) commit];
}

void __83__VUIVideoAdvisoryView_Animator___hideWithCoreAnimationWithPlatterView_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) additionalViewsInfo];
    v3 = [v2 count];

    if (!v3)
    {
      v4 = *(*(a1 + 40) + 16);

      v4();
    }
  }
}

@end