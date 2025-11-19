@interface VUIProductPlacementView
- (BOOL)_isPortrait;
- (CGSize)_descriptionSize;
- (CGSize)_dividerSize;
- (CGSize)_logoSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)_descriptionMargin;
- (UIEdgeInsets)_dividerMargin;
- (UIEdgeInsets)_logoMargin;
- (UIEdgeInsets)_margin;
- (VUIProductPlacementView)initWithAdvisoryInfoDictionary:(id)a3;
- (void)_configureSubviewsWithDictionary:(id)a3;
- (void)_hideAnimated:(BOOL)a3 completion:(id)a4;
- (void)_hideWithAnimationWithCompletion:(id)a3;
- (void)_showAnimated:(BOOL)a3 completion:(id)a4;
- (void)_showWithAnimationWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)show:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation VUIProductPlacementView

- (VUIProductPlacementView)initWithAdvisoryInfoDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIProductPlacementView;
  v5 = [(VUIProductPlacementView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_opt_new();
    layout = v5->_layout;
    v5->_layout = v6;

    [(VUIProductPlacementView *)v5 _configureSubviewsWithDictionary:v4];
  }

  return v5;
}

- (void)show:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (a3)
  {
    [(VUIProductPlacementView *)self _showAnimated:a4 completion:a5];
  }

  else
  {
    [(VUIProductPlacementView *)self _hideAnimated:a4 completion:a5];
  }
}

- (BOOL)_isPortrait
{
  v2 = [(VUIProductPlacementView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3 || (v4 = +[VUIUtilities isIpadPortrait]))
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (UIEdgeInsets)_margin
{
  v3 = [(VUIProductPlacementView *)self _isPortrait];
  v4 = [(VUIProductPlacementView *)self layout];
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
  v3 = [(VUIProductPlacementView *)self _isPortrait];
  v4 = [(VUIProductPlacementView *)self layout];
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

- (CGSize)_dividerSize
{
  [(VUIProductPlacementView *)self bounds];
  v4 = v3;
  v5 = [(VUIProductPlacementView *)self _isPortrait];
  v6 = [(VUIProductPlacementView *)self layout];
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
  v3 = [(VUIProductPlacementView *)self _isPortrait];
  v4 = [(VUIProductPlacementView *)self layout];
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

- (UIEdgeInsets)_dividerMargin
{
  v3 = [(VUIProductPlacementView *)self _isPortrait];
  v4 = [(VUIProductPlacementView *)self layout];
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

- (UIEdgeInsets)_descriptionMargin
{
  v3 = [(VUIProductPlacementView *)self _isPortrait];
  v4 = [(VUIProductPlacementView *)self layout];
  v5 = v4;
  if (v3)
  {
    [v4 portraitDescriptionMargin];
  }

  else
  {
    [v4 descriptionMargin];
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

- (CGSize)_descriptionSize
{
  v3 = [(VUIProductPlacementView *)self layout];
  [v3 descriptionMaxWidth];
  v5 = v4;

  v6 = [(VUIProductPlacementView *)self blockDescriptionLabel];
  [(VUIProductPlacementView *)self bounds];
  [v6 sizeThatFits:{v5, CGRectGetHeight(v14)}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureSubviewsWithDictionary:(id)a3
{
  v15 = a3;
  v4 = objc_opt_new();
  v5 = [v15 objectForKeyedSubscript:@"VUIAdvisoryViewLogoImageKey"];
  if (v5)
  {
    [v4 setImage:v5];
  }

  [v4 setAlpha:0.0];
  [(VUIProductPlacementView *)self addSubview:v4];
  [(VUIProductPlacementView *)self setLogoImageView:v4];
  v6 = [v15 objectForKeyedSubscript:@"VUIAdvisoryViewBlockDescriptionKey"];
  if ([v6 length])
  {
    if (v5)
    {
      [(VUIProductPlacementView *)self _dividerSize];
      v8 = v7;
      v9 = objc_opt_new();
      v10 = [(VUIProductPlacementView *)self layout];
      v11 = [v10 dividerColor];
      [v9 setBackgroundColor:v11];

      [v9 setFrame:{0.0, 0.0, v8, 0.0}];
      [(VUIProductPlacementView *)self addSubview:v9];
      [(VUIProductPlacementView *)self setDividerView:v9];
    }

    v12 = [(VUIProductPlacementView *)self layout];
    v13 = [v12 descriptionLayout];
    v14 = [VUILabel labelWithString:v6 textLayout:v13 existingLabel:0];

    [v14 setAlpha:0.0];
    [(VUIProductPlacementView *)self addSubview:v14];
    [(VUIProductPlacementView *)self setBlockDescriptionLabel:v14];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(VUIProductPlacementView *)self _logoSize];
  v7 = v6;
  [(VUIProductPlacementView *)self _margin];
  v9 = v8;
  [(VUIProductPlacementView *)self _logoMargin];
  v11 = v10;
  v13 = v12;
  v14 = width + v9 * -2.0;
  v15 = [(VUIProductPlacementView *)self blockDescriptionLabel];
  [v15 sizeThatFits:{width, height}];
  v17 = v16;
  v18 = v16 + 0.0;

  if (v17 >= v7 + v11 + v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v7 + v11 + v13;
  }

  v20 = v14;
  result.height = v19;
  result.width = v20;
  return result;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = VUIProductPlacementView;
  [(VUIProductPlacementView *)&v54 layoutSubviews];
  v3 = [(VUIProductPlacementView *)self effectiveUserInterfaceLayoutDirection];
  [(VUIProductPlacementView *)self bounds];
  v5 = v4;
  v48 = v6;
  v8 = v7;
  [(VUIProductPlacementView *)self _logoSize];
  v10 = v9;
  v12 = v11;
  [(VUIProductPlacementView *)self _logoMargin];
  v14 = v13;
  v49 = v15;
  [(VUIProductPlacementView *)self _dividerSize];
  v50 = v16;
  v47 = v17;
  [(VUIProductPlacementView *)self _dividerMargin];
  v46 = v18;
  v20 = v19;
  v52 = v21;
  [(VUIProductPlacementView *)self _descriptionMargin];
  v51 = v22;
  [(VUIProductPlacementView *)self _descriptionSize];
  v53 = v24;
  v25 = v8 - v14 - v10;
  v26 = v5 + v14;
  if (v3 == 1)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = v23;
  VUIRoundValue();
  v30 = v29;
  v31 = [(VUIProductPlacementView *)self logoImageView];
  [v31 setFrame:{v27, v30, v10, v12}];

  v32 = [(VUIProductPlacementView *)self dividerView];

  if (v32)
  {
    v33 = v26 + v20 + v49 + v10 + v26;
    v34 = v49 + v20;
    v35 = v50;
    v36 = v25 - (v34 - v50);
    if (v3 == 1)
    {
      v37 = v36;
    }

    else
    {
      v37 = v33;
    }

    v38 = [(VUIProductPlacementView *)self dividerView];

    if (v38)
    {
      v39 = [(VUIProductPlacementView *)self dividerView];
      [v39 frame];
      v40 = v28;
      v42 = v41;

      if (v42 > 0.0)
      {
        v42 = v47;
      }

      v43 = [(VUIProductPlacementView *)self dividerView];
      v44 = v42;
      v28 = v40;
      [v43 setFrame:{v37, v48 + v46, v50, v44}];
    }

    else
    {
      v35 = *(MEMORY[0x1E695F058] + 16);
    }

    if (v3 == 1)
    {
      v27 = v37 - (v51 + v52 + v28);
    }

    else
    {
      v27 = v37 + v51 + v52 + v35;
    }
  }

  v45 = [(VUIProductPlacementView *)self blockDescriptionLabel];
  [v45 setFrame:{v27, v30, v28, v53}];
}

- (void)_showAnimated:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {

    [(VUIProductPlacementView *)self _showWithAnimationWithCompletion:a4];
  }

  else
  {
    v5 = [(VUIProductPlacementView *)self dividerView:a3];

    if (v5)
    {
      v6 = [(VUIProductPlacementView *)self dividerView];
      [v6 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [(VUIProductPlacementView *)self _dividerSize];
      v14 = v13;
      v15 = [(VUIProductPlacementView *)self dividerView];
      [v15 setFrame:{v8, v10, v12, v14}];
    }

    v16 = [(VUIProductPlacementView *)self logoImageView];
    [v16 setAlpha:1.0];

    v17 = [(VUIProductPlacementView *)self blockDescriptionLabel];
    [v17 setAlpha:1.0];
  }
}

- (void)_showWithAnimationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VUIProductPlacementView *)self dividerView];

  if (v5)
  {
    v6 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke;
    v23[3] = &unk_1E872E4B8;
    objc_copyWeak(&v24, &location);
    [v6 animateWithDuration:0 delay:v23 options:0 animations:0.5 completion:0.0];
    objc_destroyWeak(&v24);
  }

  v7 = MEMORY[0x1E69DD250];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke_2;
  v21[3] = &unk_1E872E4B8;
  objc_copyWeak(&v22, &location);
  [v7 animateWithDuration:0 delay:v21 options:0 animations:0.5 completion:0.3];
  v8 = [(VUIProductPlacementView *)self effectiveUserInterfaceLayoutDirection];
  v9 = [(VUIProductPlacementView *)self blockDescriptionLabel];
  v10 = [(VUIProductPlacementView *)self dividerView];

  if (v10)
  {
    v11 = -20.0;
    if (v8 == 1)
    {
      v11 = 20.0;
    }

    CGAffineTransformMakeTranslation(&v20, v11, 0.0);
    [v9 setTransform:&v20];
  }

  v12 = MEMORY[0x1E69DD250];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke_3;
  v17[3] = &unk_1E87301C0;
  v13 = v9;
  v18 = v13;
  objc_copyWeak(&v19, &location);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke_4;
  v15[3] = &unk_1E872D790;
  v14 = v4;
  v16 = v14;
  [v12 animateWithDuration:0 delay:v17 options:v15 animations:0.5 completion:0.0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dividerView];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;

  [WeakRetained bounds];
  v9 = v8;
  v10 = [WeakRetained dividerView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

void __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained logoImageView];
  [v1 setAlpha:1.0];
}

void __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dividerView];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v6[0] = *MEMORY[0x1E695EFD0];
    v6[1] = v5;
    v6[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:v6];
  }
}

uint64_t __60__VUIProductPlacementView__showWithAnimationWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_hideAnimated:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {

    [(VUIProductPlacementView *)self _hideWithAnimationWithCompletion:a4];
  }

  else
  {
    v5 = [(VUIProductPlacementView *)self dividerView:a3];

    if (v5)
    {
      v6 = [(VUIProductPlacementView *)self dividerView];
      [v6 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = [(VUIProductPlacementView *)self dividerView];
      [v13 setFrame:{v8, v10, v12, 0.0}];
    }

    v14 = [(VUIProductPlacementView *)self logoImageView];
    [v14 setAlpha:0.0];

    v15 = [(VUIProductPlacementView *)self blockDescriptionLabel];
    [v15 setAlpha:0.0];
  }
}

- (void)_hideWithAnimationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke;
  v15[3] = &unk_1E872E4B8;
  objc_copyWeak(&v16, &location);
  [v5 animateWithDuration:0 delay:v15 options:0 animations:2.0 completion:0.0];
  v6 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke_2;
  v13[3] = &unk_1E872E4B8;
  objc_copyWeak(&v14, &location);
  [v6 animateWithDuration:0 delay:v13 options:0 animations:2.0 completion:0.0];
  v7 = [(VUIProductPlacementView *)self dividerView];

  if (v7)
  {
    v8 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke_3;
    v11[3] = &unk_1E872E4B8;
    objc_copyWeak(&v12, &location);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke_4;
    v9[3] = &unk_1E872D790;
    v10 = v4;
    [v8 animateWithDuration:0 delay:v11 options:v9 animations:2.0 completion:0.4];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained logoImageView];
  [v1 setAlpha:0.0];
}

void __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained blockDescriptionLabel];
  [v2 setAlpha:0.0];

  v3 = [WeakRetained blockDescriptionLabel];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

void __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dividerView];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = [WeakRetained dividerView];
  [v8 setFrame:{v3, v5, v7, 0.0}];
}

uint64_t __60__VUIProductPlacementView__hideWithAnimationWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end