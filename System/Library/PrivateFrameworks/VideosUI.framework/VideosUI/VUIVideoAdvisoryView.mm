@interface VUIVideoAdvisoryView
- (BOOL)_isPortrait;
- (CGSize)_dividerSize;
- (CGSize)_legendSize;
- (CGSize)_logoSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)_dividerMargin;
- (UIEdgeInsets)_legendsMargin;
- (UIEdgeInsets)_logoMargin;
- (UIEdgeInsets)_margin;
- (VUIVideoAdvisoryView)initWithAdvisoryInfoDictionary:(id)dictionary reduceMotion:(BOOL)motion;
- (void)_configureSubviewsWithDictionary:(id)dictionary;
- (void)_hideWithCoreAnimationWithPlatterView:(id)view completion:(id)completion;
- (void)_layoutAdditionalViews;
- (void)_showAdditionalViewAtIndex:(unint64_t)index animated:(BOOL)animated platterView:(id)view superview:(id)superview completion:(id)completion;
- (void)_showWithCoreAnimationWithPlatterView:(id)view completion:(id)completion;
- (void)hideAnimated:(BOOL)animated platterView:(id)view completion:(id)completion;
- (void)layoutSubviews;
- (void)removeAllViews;
- (void)showAnimated:(BOOL)animated platterView:(id)view completion:(id)completion;
@end

@implementation VUIVideoAdvisoryView

- (VUIVideoAdvisoryView)initWithAdvisoryInfoDictionary:(id)dictionary reduceMotion:(BOOL)motion
{
  motionCopy = motion;
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = VUIVideoAdvisoryView;
  v7 = [(VUIVideoAdvisoryView *)&v15 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    v8 = objc_opt_new();
    layout = v7->_layout;
    v7->_layout = v8;

    [(VUIVideoAdvisoryView *)v7 _configureSubviewsWithDictionary:dictionaryCopy];
  }

  v10 = 40.0;
  if (motionCopy)
  {
    v10 = 0.0;
  }

  v7->_legendAnimationDistance = v10;
  v11 = 100.0;
  if (motionCopy)
  {
    v11 = 0.0;
  }

  v7->_legendYAnimationDistance = v11;
  v7->_reduceMotion = motionCopy;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  additionalViews = v7->_additionalViews;
  v7->_additionalViews = v12;

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  layout = [(VUIVideoAdvisoryView *)self layout];
  legendLayout = [layout legendLayout];
  [legendLayout margin];
  v21 = v20;
  v23 = v22;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  legendViews = [(VUIVideoAdvisoryView *)self legendViews];
  v25 = [legendViews countByEnumeratingWithState:&v56 objects:v60 count:16];
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
          objc_enumerationMutation(legendViews);
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

      v26 = [legendViews countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v26);
  }

  else
  {
    v30 = 0.0;
    v31 = 0.0;
  }

  legendViews2 = [(VUIVideoAdvisoryView *)self legendViews];
  v40 = [legendViews2 count];

  legendViews3 = [(VUIVideoAdvisoryView *)self legendViews];
  if ([legendViews3 count])
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
  layout = [(VUIVideoAdvisoryView *)self layout];
  vuiIsRTL = [(VUIVideoAdvisoryView *)self vuiIsRTL];
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
  if (vuiIsRTL)
  {
    v33 = v30;
  }

  else
  {
    v33 = v90 + v16;
  }

  VUIRoundValue();
  v35 = v34;
  logoImageView = [(VUIVideoAdvisoryView *)self logoImageView];
  [logoImageView setFrame:{v33, v35, v31, v87}];

  if (vuiIsRTL)
  {
    v37 = v30 - (v88 + v91 - v89);
  }

  else
  {
    v37 = v32 + v91 + v88 + v31 + v32;
  }

  dividerView = [(VUIVideoAdvisoryView *)self dividerView];

  if (dividerView)
  {
    dividerView2 = [(VUIVideoAdvisoryView *)self dividerView];
    [dividerView2 frame];
    v41 = v40;

    if (v41 > 0.0)
    {
      v41 = v81;
    }

    dividerView3 = [(VUIVideoAdvisoryView *)self dividerView];
    [dividerView3 setFrame:{v37, v92 + v80, v89, v41}];

    v43 = v89;
  }

  else
  {
    v43 = *(MEMORY[0x1E695F058] + 16);
  }

  legendViews = [(VUIVideoAdvisoryView *)self legendViews];
  v45 = [legendViews count];

  if (v45)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    legendViews2 = [(VUIVideoAdvisoryView *)self legendViews];
    v47 = [legendViews2 countByEnumeratingWithState:&v98 objects:v104 count:16];
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
            objc_enumerationMutation(legendViews2);
          }

          v52 = *(*(&v98 + 1) + 8 * i);
          [layout legendNameMinWidth];
          v54 = v53;
          [v52 legendNameSizeThatFits:{v8, v10}];
          if (v54 >= v55)
          {
            v55 = v54;
          }

          [layout setLegendNameMinWidth:v55];
          [v52 sizeThatFits:{v8, v10}];
          if (v50 < v56)
          {
            v50 = v56;
          }
        }

        v48 = [legendViews2 countByEnumeratingWithState:&v98 objects:v104 count:16];
      }

      while (v48);
    }

    else
    {
      v50 = 0.0;
    }

    legendViews3 = [(VUIVideoAdvisoryView *)self legendViews];
    v58 = [legendViews3 count];

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
      legendViews4 = [(VUIVideoAdvisoryView *)self legendViews];
      [legendViews4 count];
      legendViews5 = [(VUIVideoAdvisoryView *)self legendViews];
      [legendViews5 count];
    }

    VUIRoundValue();
    v63 = v62;
    if (vuiIsRTL)
    {
      v64 = v37 + v83 * -2.0;
    }

    else
    {
      v64 = v8 - v37 + v83 * -2.0;
    }

    legendViews6 = [(VUIVideoAdvisoryView *)self legendViews];
    v66 = [legendViews6 count];

    if (v66 == 1)
    {
      [layout legendMaxWidth];
      v64 = v67;
    }

    if (vuiIsRTL)
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
    legendViews7 = [(VUIVideoAdvisoryView *)self legendViews];
    v70 = [legendViews7 countByEnumeratingWithState:&v94 objects:v103 count:16];
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
            objc_enumerationMutation(legendViews7);
          }

          v75 = *(*(&v94 + 1) + 8 * j);
          layer = [v75 layer];
          presentationLayer = [layer presentationLayer];
          v78 = 0.0;
          if (!presentationLayer)
          {
            [(VUIVideoAdvisoryView *)self legendAnimationDistance];
            if (vuiIsRTL)
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

        v71 = [legendViews7 countByEnumeratingWithState:&v94 objects:v103 count:16];
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
  additionalViews = [(VUIVideoAdvisoryView *)self additionalViews];
  v4 = [additionalViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(additionalViews);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        [(VUIVideoAdvisoryView *)self frame];
        [v8 sizeThatFits:{v9, v10}];
        v12 = v11;
        v14 = v13;
        vuiIsRTL = [(VUIVideoAdvisoryView *)self vuiIsRTL];
        v16 = 0.0;
        if (vuiIsRTL)
        {
          [(VUIVideoAdvisoryView *)self frame];
          v16 = v17 - v12;
        }

        [v8 setFrame:{v16, 0.0, v12, v14}];
        superview = [v8 superview];
        v19 = [superview isEqual:self];

        if ((v19 & 1) == 0)
        {
          [(VUIVideoAdvisoryView *)self addSubview:v8];
        }

        [v8 layoutIfNeeded];
      }

      v5 = [additionalViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  additionalViews = [(VUIVideoAdvisoryView *)self additionalViews];
  v4 = [additionalViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(additionalViews);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [additionalViews countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(VUIVideoAdvisoryView *)self removeFromSuperview];
}

- (BOOL)_isPortrait
{
  traitCollection = [(VUIVideoAdvisoryView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom && ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 1) < 2 || (v4 = +[VUIUtilities isIpadPortrait](VUIUtilities, "isIpadPortrait")))
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (UIEdgeInsets)_margin
{
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitMargin];
  }

  else
  {
    [layout margin];
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
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitLogoSize];
  }

  else
  {
    [layout logoSize];
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
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitLegendSize];
  }

  else
  {
    [layout legendSize];
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
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v7 = layout;
  if (_isPortrait)
  {
    [layout portraitDividerSize];
  }

  else
  {
    [layout dividerSize];
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
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitLogoMargin];
  }

  else
  {
    [layout logoMargin];
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
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitLegendsMargin];
  }

  else
  {
    [layout legendsMargin];
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
  _isPortrait = [(VUIVideoAdvisoryView *)self _isPortrait];
  layout = [(VUIVideoAdvisoryView *)self layout];
  v5 = layout;
  if (_isPortrait)
  {
    [layout portraitDividerMargin];
  }

  else
  {
    [layout dividerMargin];
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

- (void)_configureSubviewsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"VUIAdvisoryViewLogoImageKey"];
  if (v5)
  {
    [v4 setImage:v5];
  }

  [v4 setAlpha:0.0];
  [(VUIVideoAdvisoryView *)self addSubview:v4];
  [(VUIVideoAdvisoryView *)self setLogoImageView:v4];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"VUIAdvisoryViewLegendsKey"];
  v7 = objc_opt_new();
  if ([v6 count])
  {
    v24 = v5;
    v25 = v4;
    [(VUIVideoAdvisoryView *)self _dividerSize];
    v9 = v8;
    v10 = objc_opt_new();
    layout = [(VUIVideoAdvisoryView *)self layout];
    dividerColor = [layout dividerColor];
    [v10 setBackgroundColor:dividerColor];

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
        layout2 = [(VUIVideoAdvisoryView *)self layout];
        v19 = [(VUIVideoAdvisoryLegendView *)v17 initWithLayout:layout2];

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

  v22 = [dictionaryCopy objectForKeyedSubscript:@"VUIAdvisoryViewAdditionalViewsDictionaryKey"];
  [(VUIVideoAdvisoryView *)self setAdditionalViewsInfo:v22];
}

- (void)showAnimated:(BOOL)animated platterView:(id)view completion:(id)completion
{
  animatedCopy = animated;
  v38 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  completionCopy = completion;
  if (animatedCopy)
  {
    [(VUIVideoAdvisoryView *)self _showWithCoreAnimationWithPlatterView:viewCopy completion:completionCopy];
  }

  else
  {
    dividerView = [(VUIVideoAdvisoryView *)self dividerView];

    if (dividerView)
    {
      dividerView2 = [(VUIVideoAdvisoryView *)self dividerView];
      [dividerView2 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(VUIVideoAdvisoryView *)self _dividerSize];
      v19 = v18;
      dividerView3 = [(VUIVideoAdvisoryView *)self dividerView];
      [dividerView3 setFrame:{v13, v15, v17, v19}];
    }

    logoImageView = [(VUIVideoAdvisoryView *)self logoImageView];
    [logoImageView setAlpha:1.0];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    legendViews = [(VUIVideoAdvisoryView *)self legendViews];
    v23 = [legendViews countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(legendViews);
          }

          [*(*(&v33 + 1) + 8 * v26++) setAlpha:1.0];
        }

        while (v24 != v26);
        v24 = [legendViews countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v24);
    }

    if (viewCopy)
    {
      [(VUIVideoAdvisoryView *)self frame];
      v28 = v27 + -15.0;
      [viewCopy frame];
      v30 = v29;
      [(VUIVideoAdvisoryView *)self frame];
      v32 = v31 + 30.0;
      [viewCopy frame];
      [viewCopy setFrame:{v28, v30, v32}];
    }

    completionCopy[2](completionCopy);
  }
}

- (void)_showWithCoreAnimationWithPlatterView:(id)view completion:(id)completion
{
  v88 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  completionCopy = completion;
  [MEMORY[0x1E6979518] begin];
  v8 = MEMORY[0x1E6979518];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __83__VUIVideoAdvisoryView_Animator___showWithCoreAnimationWithPlatterView_completion___block_invoke;
  v85[3] = &unk_1E872D7E0;
  v78 = completionCopy;
  v86 = v78;
  [v8 setCompletionBlock:v85];
  v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
  [v9 setMass:1.0];
  [v9 setStiffness:60.0];
  [v9 setDamping:16.0];
  [v9 setInitialVelocity:0.0];
  [v9 settlingDuration];
  [v9 setDuration:?];
  dividerView = [(VUIVideoAdvisoryView *)self dividerView];
  layer = [dividerView layer];

  [layer bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(VUIVideoAdvisoryView *)self bounds];
  v19 = v18;
  v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, 0.0}];
  [v9 setFromValue:v20];

  v21 = [MEMORY[0x1E696B098] valueWithCGRect:{v13, v15, v17, v19}];
  [v9 setToValue:v21];

  [layer addAnimation:v9 forKey:@"bounds"];
  v77 = layer;
  [layer setBounds:{v13, v15, v17, v19}];
  if (viewCopy)
  {
    layer2 = [viewCopy layer];
    [layer2 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(VUIVideoAdvisoryView *)self bounds];
    v30 = v29 + 30.0;
    v31 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v26, 0.0, v28}];
    [v9 setFromValue:v31];

    v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v26, v30, v28}];
    [v9 setToValue:v32];

    [layer2 addAnimation:v9 forKey:@"bounds"];
    [layer2 setBounds:{v24, v26, v30, v28}];
  }

  v79 = viewCopy;
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
  vuiIsRTL = [(VUIVideoAdvisoryView *)self vuiIsRTL];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(VUIVideoAdvisoryView *)self legendViews];
  v47 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
  if (v47)
  {
    v48 = v47;
    selfCopy2 = self;
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

        layer3 = [*(*(&v81 + 1) + 8 * v51) layer];
        [layer3 position];
        v55 = v54;
        v57 = v56;
        [(VUIVideoAdvisoryView *)selfCopy2 legendAnimationDistance];
        if (!vuiIsRTL)
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
        [layer3 addAnimation:v52 forKey:@"position"];
        [layer3 setPosition:{v59, v57}];
        [layer3 addAnimation:v41 forKey:@"opacity"];
        [layer3 setOpacity:0.0];
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
    selfCopy2 = self;
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
  logoImageView = [(VUIVideoAdvisoryView *)selfCopy2 logoImageView];
  layer4 = [logoImageView layer];

  [layer4 addAnimation:v69 forKey:@"opacity"];
  [layer4 setOpacity:0.0];
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

- (void)hideAnimated:(BOOL)animated platterView:(id)view completion:(id)completion
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  completionCopy = completion;
  if (animatedCopy)
  {
    [(VUIVideoAdvisoryView *)self _hideWithCoreAnimationWithPlatterView:viewCopy completion:completionCopy];
  }

  else
  {
    dividerView = [(VUIVideoAdvisoryView *)self dividerView];

    if (dividerView)
    {
      dividerView2 = [(VUIVideoAdvisoryView *)self dividerView];
      [dividerView2 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;

      dividerView3 = [(VUIVideoAdvisoryView *)self dividerView];
      [dividerView3 setFrame:{v13, v15, v17, 0.0}];
    }

    logoImageView = [(VUIVideoAdvisoryView *)self logoImageView];
    [logoImageView setAlpha:0.0];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    legendViews = [(VUIVideoAdvisoryView *)self legendViews];
    v21 = [legendViews countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(legendViews);
          }

          [*(*(&v28 + 1) + 8 * v24++) setAlpha:0.0];
        }

        while (v22 != v24);
        v22 = [legendViews countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    additionalViewsInfo = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
    v26 = [additionalViewsInfo count];

    if (v26)
    {
      superview = [(VUIVideoAdvisoryView *)self superview];
      [(VUIVideoAdvisoryView *)self _showAdditionalViewAtIndex:0 animated:0 platterView:viewCopy superview:superview completion:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)_showAdditionalViewAtIndex:(unint64_t)index animated:(BOOL)animated platterView:(id)view superview:(id)superview completion:(id)completion
{
  viewCopy = view;
  superviewCopy = superview;
  completionCopy = completion;
  additionalViewsInfo = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
  v16 = [additionalViewsInfo objectAtIndexedSubscript:index];

  v17 = [[VUIAdditionalAdvisoryInfoView alloc] initWithAdvisoryInfoDictionary:v16 reduceMotion:[(VUIVideoAdvisoryView *)self reduceMotion]];
  additionalViews = [(VUIVideoAdvisoryView *)self additionalViews];
  [additionalViews addObject:v17];

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
  v32[1] = index;
  animatedCopy = animated;
  v28 = v17;
  v29 = viewCopy;
  v32[2] = *&v20;
  v30 = superviewCopy;
  v31 = completionCopy;
  v23 = completionCopy;
  v24 = superviewCopy;
  v25 = viewCopy;
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

- (void)_hideWithCoreAnimationWithPlatterView:(id)view completion:(id)completion
{
  v121 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  completionCopy = completion;
  additionalViewsInfo = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
  v9 = [additionalViewsInfo count];

  if (v9)
  {
    superview = [(VUIVideoAdvisoryView *)self superview];
    [(VUIVideoAdvisoryView *)self _showAdditionalViewAtIndex:0 animated:1 platterView:viewCopy superview:superview completion:completionCopy];
  }

  v11 = 0x1E6979000uLL;
  [MEMORY[0x1E6979518] begin];
  v12 = MEMORY[0x1E6979518];
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __83__VUIVideoAdvisoryView_Animator___hideWithCoreAnimationWithPlatterView_completion___block_invoke;
  v117[3] = &unk_1E872DC10;
  v105 = completionCopy;
  v117[4] = self;
  v118 = v105;
  [v12 setCompletionBlock:v117];
  additionalViewsInfo2 = [(VUIVideoAdvisoryView *)self additionalViewsInfo];
  v14 = [additionalViewsInfo2 count];

  v15 = objc_alloc(MEMORY[0x1E69793D0]);
  if (v14)
  {
    v101 = viewCopy;
    LODWORD(v18) = 1059816735;
    LODWORD(v16) = 1051260355;
    v19 = [v15 initWithControlPoints:v16 :0.0 :0.0 :v18];
    v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v20 setDuration:0.883000016];
    v104 = v19;
    [v20 setTimingFunction:v19];
    logoImageView = [(VUIVideoAdvisoryView *)self logoImageView];
    layer = [logoImageView layer];

    v103 = v20;
    [layer addAnimation:v20 forKey:@"opacity"];
    v106 = layer;
    [layer setOpacity:0.0];
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
    selfCopy = self;
    legendViews = [(VUIVideoAdvisoryView *)self legendViews];
    reverseObjectEnumerator = [legendViews reverseObjectEnumerator];

    v33 = [reverseObjectEnumerator countByEnumeratingWithState:&v109 objects:v119 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          layer2 = [*(*(&v109 + 1) + 8 * v37) layer];
          presentationLayer = [layer2 presentationLayer];
          [presentationLayer position];
          v43 = v42;
          v45 = v44;

          [(VUIVideoAdvisoryView *)selfCopy legendYAnimationDistance];
          v47 = v45 + v46;
          v48 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v45}];
          [v38 setFromValue:v48];

          v49 = [MEMORY[0x1E696B098] valueWithCGPoint:{v43, v47}];
          [v38 setToValue:v49];

          [v38 setRemovedOnCompletion:0];
          [v38 setFillMode:v107];
          [layer2 addAnimation:v38 forKey:@"position"];
          [layer2 setPosition:{v43, v47}];
          [layer2 addAnimation:v39 forKey:@"opacity"];
          [v39 setBeginTime:v36 + CACurrentMediaTime()];
          LODWORD(v50) = 1.0;
          [layer2 setOpacity:v50];
          v36 = v36 + 0.100000001;
          v29 = [v38 copy];

          v28 = [v39 copy];
          ++v37;
          v38 = v29;
          v39 = v28;
        }

        while (v34 != v37);
        v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v109 objects:v119 count:16];
      }

      while (v34);
    }

    v51 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
    [v51 setDuration:0.88];
    v52 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v53) = 1051260355;
    LODWORD(v54) = 1062501089;
    layer7 = [v52 initWithControlPoints:v53 :0.0 :v54 :0.0];
    [v51 setTimingFunction:layer7];
    dividerView = [(VUIVideoAdvisoryView *)selfCopy dividerView];
    layer3 = [dividerView layer];

    [layer3 bounds];
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
    [layer3 addAnimation:v51 forKey:@"bounds"];
    [layer3 setBounds:{v59, v61, v63, v65}];

    viewCopy = v101;
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

    logoImageView2 = [(VUIVideoAdvisoryView *)self logoImageView];
    layer4 = [logoImageView2 layer];

    [layer4 addAnimation:v69 forKey:@"opacity"];
    v106 = layer4;
    [layer4 setOpacity:0.0];
    if (viewCopy)
    {
      layer5 = [viewCopy layer];
      [layer5 addAnimation:v69 forKey:@"opacity"];
      [layer5 setOpacity:0.0];
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
    selfCopy2 = self;
    legendViews2 = [(VUIVideoAdvisoryView *)self legendViews];
    v82 = [legendViews2 countByEnumeratingWithState:&v113 objects:v120 count:16];
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
            objc_enumerationMutation(legendViews2);
          }

          layer6 = [*(*(&v113 + 1) + 8 * i) layer];
          [layer6 addAnimation:v28 forKey:@"opacity"];
          [v106 setOpacity:0.0];
        }

        v83 = [legendViews2 countByEnumeratingWithState:&v113 objects:v120 count:16];
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
    dividerView2 = [(VUIVideoAdvisoryView *)selfCopy2 dividerView];
    layer7 = [dividerView2 layer];

    [layer7 bounds];
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
    [layer7 addAnimation:v29 forKey:@"bounds"];
    [layer7 setBounds:{v92, v94, v96, v98}];
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