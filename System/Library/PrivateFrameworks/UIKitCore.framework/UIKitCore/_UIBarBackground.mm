@interface _UIBarBackground
- (CGRect)frameForYOrigin:(double)a3 height:(double)a4;
- (_UIBarBackground)initWithCoder:(id)a3;
- (_UIBarBackground)initWithFrame:(CGRect)a3;
- (void)_orderSubviews;
- (void)_setupBackgroundValues;
- (void)_setupShadowView:(id)a3 effect:(id)a4 image:(id)a5 shadowColor:(id)a6 shadowTint:(id)a7 alpha:(double)a8;
- (void)_updateBackgroundViewVisiblity;
- (void)cleanupBackgroundViews;
- (void)layoutSubviews;
- (void)prepareBackgroundViews;
- (void)setCustomBackgroundView:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setLayout:(id)a3;
- (void)transition:(unint64_t)a3 toLayout:(id)a4;
- (void)transitionBackgroundViews;
- (void)transitionBackgroundViewsAnimated:(BOOL)a3;
- (void)updateBackground;
@end

@implementation _UIBarBackground

- (void)_setupBackgroundValues
{
  [(UIView *)self setUserInteractionEnabled:0];
  [(UIView *)self bounds];
  self->_bg2LastLayoutHeight = v3;
  self->_bg1LastLayoutHeight = v3;
}

- (void)prepareBackgroundViews
{
  v32 = [(UIView *)self->_customBackgroundView bg1Effects];
  if ([v32 count])
  {
    if (!self->_effectView1)
    {
      v3 = [UIVisualEffectView alloc];
      [(_UIBarBackground *)self frameForYOrigin:0.0 height:self->_bg1LastLayoutHeight];
      v4 = [(UIVisualEffectView *)v3 initWithFrame:?];
      effectView1 = self->_effectView1;
      self->_effectView1 = v4;

      [(UIVisualEffectView *)self->_effectView1 _setGroupName:self->_layout];
    }

    *&self->_backgroundFlags |= 2u;
  }

  v6 = [(UIView *)self->_customBackgroundView bg1Image];
  v7 = [(UIView *)self->_customBackgroundView bg1Color];
  if (v6 | v7)
  {
    v8 = 0.0;
    if (LOBYTE(self->_groupName) == 1)
    {
      [(UIView *)self->_customBackgroundView bgInset];
      v8 = v9;
      if (v6)
      {
        if (v9 > 0.0)
        {
          if (!self->_topInsetView)
          {
            v10 = [UIView alloc];
            [(_UIBarBackground *)self frameForYOrigin:0.0 height:v8];
            v11 = [(UIView *)v10 initWithFrame:?];
            topInsetView = self->_topInsetView;
            self->_topInsetView = v11;

            v13 = +[UIColor blackColor];
            [(UIView *)self->_topInsetView setBackgroundColor:v13];
          }

          *&self->_backgroundFlags |= 1u;
        }
      }
    }

    if (!self->_colorAndImageView1)
    {
      v14 = [UIImageView alloc];
      [(_UIBarBackground *)self frameForYOrigin:v8 height:self->_bg1LastLayoutHeight - v8];
      v15 = [(UIImageView *)v14 initWithFrame:?];
      colorAndImageView1 = self->_colorAndImageView1;
      self->_colorAndImageView1 = v15;
    }

    *&self->_backgroundFlags |= 4u;
  }

  if ([(UIView *)self->_customBackgroundView bg1HasShadow])
  {
    if (!self->_shadowView1)
    {
      v17 = [_UIBarBackgroundShadowView alloc];
      [(_UIBarBackground *)self frameForYOrigin:self->_bg1LastLayoutHeight height:0.0];
      v18 = [(UIVisualEffectView *)v17 initWithFrame:?];
      shadowView1 = self->_shadowView1;
      self->_shadowView1 = v18;
    }

    *&self->_backgroundFlags |= 8u;
  }

  if ([(UIView *)self->_customBackgroundView bg2Enabled])
  {
    v20 = [(UIView *)self->_customBackgroundView bg2Effects];
    if ([v20 count])
    {
      if (!self->_effectView2)
      {
        v21 = [UIVisualEffectView alloc];
        [(_UIBarBackground *)self frameForYOrigin:self->_bg1LastLayoutHeight height:self->_bg2LastLayoutHeight - self->_bg1LastLayoutHeight];
        v22 = [(UIVisualEffectView *)v21 initWithFrame:?];
        effectView2 = self->_effectView2;
        self->_effectView2 = v22;

        [(UIVisualEffectView *)self->_effectView2 _setGroupName:self->_layout];
      }

      *&self->_backgroundFlags |= 0x10u;
    }

    v24 = [(UIView *)self->_customBackgroundView bg2Image];
    v25 = [(UIView *)self->_customBackgroundView bg2Color];
    if (v24 | v25)
    {
      if (!self->_colorAndImageView2)
      {
        v26 = [UIImageView alloc];
        [(_UIBarBackground *)self frameForYOrigin:self->_bg1LastLayoutHeight height:self->_bg2LastLayoutHeight - self->_bg1LastLayoutHeight];
        v27 = [(UIImageView *)v26 initWithFrame:?];
        colorAndImageView2 = self->_colorAndImageView2;
        self->_colorAndImageView2 = v27;
      }

      *&self->_backgroundFlags |= 0x20u;
    }

    if ([(UIView *)self->_customBackgroundView bg2HasShadow])
    {
      if (!self->_shadowView2)
      {
        v29 = [_UIBarBackgroundShadowView alloc];
        [(_UIBarBackground *)self frameForYOrigin:self->_bg2LastLayoutHeight height:0.0];
        v30 = [(UIVisualEffectView *)v29 initWithFrame:?];
        shadowView2 = self->_shadowView2;
        self->_shadowView2 = v30;
      }

      *&self->_backgroundFlags |= 0x40u;
    }
  }

  [(_UIBarBackground *)self _orderSubviews];
}

- (void)updateBackground
{
  [(UIView *)self->_customBackgroundView bg1Alpha];
  v4 = v3;
  v5 = [(UIView *)self->_customBackgroundView bg1Effects];
  [(UIVisualEffectView *)self->_effectView1 setBackgroundEffects:v5];

  [(UIView *)self->_effectView1 setAlpha:v4];
  v6 = [(UIView *)self->_customBackgroundView bg1Color];
  [(UIImageView *)self->_colorAndImageView1 setBackgroundColor:v6];

  v7 = [(UIView *)self->_customBackgroundView bg1Image];
  [(UIImageView *)self->_colorAndImageView1 setImage:v7];

  [(UIImageView *)self->_colorAndImageView1 setContentMode:[(UIView *)self->_customBackgroundView bg1ImageMode]];
  [(UIView *)self->_customBackgroundView bg1ImageAlpha];
  [(UIView *)self->_colorAndImageView1 setAlpha:v4 * v8];
  shadowView1 = self->_shadowView1;
  v10 = [(UIView *)self->_customBackgroundView bg1ShadowEffect];
  v11 = [(UIView *)self->_customBackgroundView bg1ShadowImage];
  v12 = [(UIView *)self->_customBackgroundView bg1ShadowColor];
  v13 = [(UIView *)self->_customBackgroundView bg1ShadowTint];
  [(UIView *)self->_customBackgroundView bg1ShadowAlpha];
  [(_UIBarBackground *)self _setupShadowView:shadowView1 effect:v10 image:v11 shadowColor:v12 shadowTint:v13 alpha:?];

  if ([(UIView *)self->_customBackgroundView bg2Enabled])
  {
    [(UIView *)self->_customBackgroundView bg2Alpha];
    v15 = v14;
    v16 = [(UIView *)self->_customBackgroundView bg2Effects];
    [(UIVisualEffectView *)self->_effectView2 setBackgroundEffects:v16];

    [(UIView *)self->_effectView2 setAlpha:v15];
    v17 = [(UIView *)self->_customBackgroundView bg2Color];
    [(UIImageView *)self->_colorAndImageView2 setBackgroundColor:v17];

    v18 = [(UIView *)self->_customBackgroundView bg2Image];
    [(UIImageView *)self->_colorAndImageView2 setImage:v18];

    [(UIImageView *)self->_colorAndImageView2 setContentMode:[(UIView *)self->_customBackgroundView bg2ImageMode]];
    [(UIView *)self->_colorAndImageView2 setAlpha:v15];
    v19 = [(UIView *)self->_customBackgroundView bg1Color];
    v20 = [(UIView *)self->_colorAndImageView1 traitCollection];
    v21 = [v19 resolvedColorWithTraitCollection:v20];
    [v21 alphaComponent];
    v23 = v22;

    v24 = [(UIView *)self->_customBackgroundView bg2Color];
    v25 = [(UIView *)self->_colorAndImageView2 traitCollection];
    v26 = [v24 resolvedColorWithTraitCollection:v25];
    [v26 alphaComponent];
    v28 = v27;

    v30 = v15 * v28;
    if (v30 == 1.0)
    {
      v29 = v4 * v23;
      if (v4 * v23 == 1.0)
      {
        v31 = 1;
      }

      else
      {
        v31 = +[UIView _isInAnimationBlockWithAnimationsEnabled]^ 1;
      }
    }

    else
    {
      v31 = 0;
    }

    [(UIView *)self->_effectView1 setHidden:v31, v29];
    [(UIView *)self->_effectView2 setHidden:v30 == 1.0];
    shadowView2 = self->_shadowView2;
    v37 = [(UIView *)self->_customBackgroundView bg2ShadowEffect];
    v34 = [(UIView *)self->_customBackgroundView bg2ShadowImage];
    v35 = [(UIView *)self->_customBackgroundView bg2ShadowColor];
    v36 = [(UIView *)self->_customBackgroundView bg2ShadowTint];
    [(UIView *)self->_customBackgroundView bg2ShadowAlpha];
    [(_UIBarBackground *)self _setupShadowView:shadowView2 effect:v37 image:v34 shadowColor:v35 shadowTint:v36 alpha:?];
  }

  else
  {
    [(UIView *)self->_effectView1 setHidden:0];
    [(UIView *)self->_effectView2 setHidden:0];
    [(UIVisualEffectView *)self->_effectView2 setBackgroundEffects:MEMORY[0x1E695E0F0]];
    [(UIImageView *)self->_colorAndImageView2 setBackgroundColor:0];
    [(UIImageView *)self->_colorAndImageView2 setImage:0];
    v32 = self->_shadowView2;
    v37 = [(UIVisualEffectView *)v32 contentView];
    [v37 alpha];
    [(_UIBarBackground *)self _setupShadowView:v32 effect:0 image:0 shadowColor:0 shadowTint:0 alpha:?];
  }
}

- (void)cleanupBackgroundViews
{
  v8 = [(UIView *)self->_customBackgroundView bg1Effects];
  if (![v8 count])
  {
    [(UIView *)self->_effectView1 removeFromSuperview];
    *&self->_backgroundFlags &= ~2u;
  }

  v3 = [(UIView *)self->_customBackgroundView bg1Image];
  v4 = [(UIView *)self->_customBackgroundView bg1Color];
  if (!(v3 | v4))
  {
    [(UIView *)self->_topInsetView removeFromSuperview];
    *&self->_backgroundFlags &= ~1u;
    [(UIView *)self->_colorAndImageView1 removeFromSuperview];
    *&self->_backgroundFlags &= ~4u;
  }

  if (([(UIView *)self->_customBackgroundView bg1HasShadow]& 1) == 0)
  {
    [(UIView *)self->_shadowView1 removeFromSuperview];
    *&self->_backgroundFlags &= ~8u;
  }

  if ([(UIView *)self->_customBackgroundView bg2Enabled])
  {
    v5 = [(UIView *)self->_customBackgroundView bg2Effects];
    if (![v5 count])
    {
      [(UIView *)self->_effectView2 removeFromSuperview];
      *&self->_backgroundFlags &= ~0x10u;
    }

    v6 = [(UIView *)self->_customBackgroundView bg2Image];
    v7 = [(UIView *)self->_customBackgroundView bg2Color];
    if (!(v6 | v7))
    {
      [(UIView *)self->_colorAndImageView2 removeFromSuperview];
      *&self->_backgroundFlags &= ~0x20u;
    }

    if (([(UIView *)self->_customBackgroundView bg2HasShadow]& 1) == 0)
    {
      [(UIView *)self->_shadowView2 removeFromSuperview];
      *&self->_backgroundFlags &= ~0x40u;
    }
  }

  else
  {
    [(UIView *)self->_effectView2 removeFromSuperview];
    *&self->_backgroundFlags &= ~0x10u;
    [(UIView *)self->_colorAndImageView2 removeFromSuperview];
    *&self->_backgroundFlags &= ~0x20u;
    [(UIView *)self->_shadowView2 removeFromSuperview];
    *&self->_backgroundFlags &= ~0x40u;
  }
}

- (void)transitionBackgroundViews
{
  v3 = +[UIView areAnimationsEnabled];

  [(_UIBarBackground *)self transitionBackgroundViewsAnimated:v3];
}

- (void)_orderSubviews
{
  v14[9] = *MEMORY[0x1E69E9840];
  v3 = dyld_program_sdk_at_least();
  shadowView1 = 0;
  backgroundFlags = self->_backgroundFlags;
  if ((backgroundFlags & 8) != 0 && (v3 & 1) == 0)
  {
    shadowView1 = self->_shadowView1;
  }

  v14[0] = shadowView1;
  if ((backgroundFlags & 2) != 0)
  {
    effectView1 = self->_effectView1;
  }

  else
  {
    effectView1 = 0;
  }

  v14[1] = effectView1;
  if ((backgroundFlags & 4) != 0)
  {
    colorAndImageView1 = self->_colorAndImageView1;
  }

  else
  {
    colorAndImageView1 = 0;
  }

  v14[2] = colorAndImageView1;
  if (backgroundFlags)
  {
    topInsetView = self->_topInsetView;
  }

  else
  {
    topInsetView = 0;
  }

  v14[3] = topInsetView;
  if (((backgroundFlags & 0x40) == 0) | v3 & 1)
  {
    shadowView2 = 0;
  }

  else
  {
    shadowView2 = self->_shadowView2;
  }

  v14[4] = shadowView2;
  if ((backgroundFlags & 0x10) != 0)
  {
    effectView2 = self->_effectView2;
  }

  else
  {
    effectView2 = 0;
  }

  v14[5] = effectView2;
  if ((backgroundFlags & 0x20) != 0)
  {
    colorAndImageView2 = self->_colorAndImageView2;
  }

  else
  {
    colorAndImageView2 = 0;
  }

  v12 = 0;
  v14[6] = colorAndImageView2;
  if ((backgroundFlags & 8) != 0 && ((v3 ^ 1) & 1) == 0)
  {
    v12 = self->_shadowView1;
  }

  v14[7] = v12;
  if (((backgroundFlags & 0x40) == 0) | (v3 ^ 1) & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = self->_shadowView2;
  }

  v14[8] = v13;
  [(UIView *)self _ensureViewsAreInstalledInRelativeOrder:v14 viewCount:9 insertionStartIndex:0];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = _UIBarBackground;
  [(UIView *)&v33 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(objc_class *)self[1].super.super.super.isa setFrame:?];
  if ([(UIView *)self->_customBackgroundView shouldUseExplicitGeometry])
  {
    [(UIView *)self->_customBackgroundView backgroundHeight1];
    self->_bg1LastLayoutHeight = v7;
    v8 = [(UIView *)self->_customBackgroundView bg2Enabled];
    v9 = 0.0;
    if (v8)
    {
      bg1LastLayoutHeight = self->_bg1LastLayoutHeight;
      [(UIView *)self->_customBackgroundView backgroundHeight2];
      v9 = bg1LastLayoutHeight + v11;
    }
  }

  else
  {
    self->_bg1LastLayoutHeight = v6;
    v9 = v6;
  }

  self->_bg2LastLayoutHeight = v9;
  v12 = [(UIView *)self traitCollection];
  [v12 displayScale];
  v14 = v13;

  if (LOBYTE(self->_groupName) == 1)
  {
    [(UIView *)self->_customBackgroundView bgInset];
    v16 = v15;
    v17 = 0.0;
    [(UIView *)self->_topInsetView setFrame:0.0, 0.0, v4, v15];
    [(UIView *)self->_effectView1 setFrame:0.0, 0.0, v4, self->_bg1LastLayoutHeight];
    [(UIImageView *)self->_colorAndImageView1 setFrame:0.0, v16, v4, self->_bg1LastLayoutHeight - v16];
    v18 = 0.0;
    if ([(UIView *)self->_customBackgroundView bg1HasShadow])
    {
      v19 = [(UIView *)self->_customBackgroundView bg1ShadowImage];
      v20 = v19;
      if (v19)
      {
        [v19 size];
        v18 = v21;
      }

      else if (v14 <= 1.0)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 1.0 / v14;
      }
    }

    [(UIView *)self->_shadowView1 setFrame:0.0, self->_bg1LastLayoutHeight, v4, v18];
    [(UIView *)self->_effectView2 setFrame:0.0, 0.0, v4, self->_bg2LastLayoutHeight];
    [(UIImageView *)self->_colorAndImageView2 setFrame:0.0, 0.0, v4, self->_bg2LastLayoutHeight];
    if ([(UIView *)self->_customBackgroundView bg2HasShadow])
    {
      v26 = [(UIView *)self->_customBackgroundView bg2ShadowImage];
      v27 = v26;
      if (v26)
      {
        [v26 size];
        v17 = v28;
      }

      else if (v14 <= 1.0)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 1.0 / v14;
      }
    }

    bg2LastLayoutHeight = self->_bg2LastLayoutHeight;
  }

  else
  {
    v17 = 0.0;
    [(UIView *)self->_topInsetView setFrame:0.0, v6, v4, 0.0];
    [(UIView *)self->_effectView1 setFrame:0.0, v6 - self->_bg1LastLayoutHeight, v4];
    [(UIImageView *)self->_colorAndImageView1 setFrame:0.0, v6 - self->_bg1LastLayoutHeight, v4];
    v22 = 0.0;
    if ([(UIView *)self->_customBackgroundView bg1HasShadow])
    {
      v23 = [(UIView *)self->_customBackgroundView bg1ShadowImage];
      v24 = v23;
      if (v23)
      {
        [v23 size];
        v22 = v25;
      }

      else if (v14 > 1.0)
      {
        v22 = 1.0 / v14;
      }

      else
      {
        v22 = 1.0;
      }
    }

    [(UIView *)self->_shadowView1 setFrame:0.0, v6 - self->_bg1LastLayoutHeight - v22, v4, v22];
    [(UIView *)self->_effectView2 setFrame:0.0, v6 - self->_bg2LastLayoutHeight, v4];
    [(UIImageView *)self->_colorAndImageView2 setFrame:0.0, v6 - self->_bg2LastLayoutHeight, v4];
    if ([(UIView *)self->_customBackgroundView bg2HasShadow])
    {
      v29 = [(UIView *)self->_customBackgroundView bg2ShadowImage];
      v30 = v29;
      if (v29)
      {
        [v29 size];
        v17 = v31;
      }

      else if (v14 > 1.0)
      {
        v17 = 1.0 / v14;
      }

      else
      {
        v17 = 1.0;
      }
    }

    bg2LastLayoutHeight = v6 - self->_bg2LastLayoutHeight - v17;
  }

  [(UIView *)self->_shadowView2 setFrame:0.0, bg2LastLayoutHeight, v4, v17];
}

- (void)_updateBackgroundViewVisiblity
{
  v3 = self[1].super.super.super.isa != 0;
  v4 = v3 | ~[(UIView *)self->_customBackgroundView bg2Enabled];
  [(UIView *)self->_effectView1 setHidden:v3];
  [(UIImageView *)self->_colorAndImageView1 setHidden:v3];
  [(UIView *)self->_shadowView1 setHidden:v3];
  [(UIView *)self->_effectView2 setHidden:v4];
  [(UIImageView *)self->_colorAndImageView2 setHidden:v4];
  shadowView2 = self->_shadowView2;

  [(UIView *)shadowView2 setHidden:v4];
}

- (_UIBarBackground)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIBarBackground;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIBarBackground *)v3 _setupBackgroundValues];
  }

  return v4;
}

- (_UIBarBackground)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIBarBackground;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIBarBackground *)v3 _setupBackgroundValues];
  }

  return v4;
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v5 = self->_layout;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(_UIBarBackgroundLayout *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(_UIBarBackgroundLayout *)v10 copy];
    layout = self->_layout;
    self->_layout = v8;

    [(UIVisualEffectView *)self->_effectView1 _setGroupName:self->_layout];
    [(UIVisualEffectView *)self->_effectView2 _setGroupName:self->_layout];
  }

LABEL_9:
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  if (self->_customBackgroundView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customBackgroundView, a3);
    v5 = v6;
  }
}

- (void)setCustomBackgroundView:(id)a3
{
  v5 = a3;
  isa = self[1].super.super.super.isa;
  if (isa != v5)
  {
    v8 = v5;
    [(objc_class *)isa removeFromSuperview];
    objc_storeStrong(&self[1].super.super.super.isa, a3);
    v7 = self[1].super.super.super.isa;
    if (v7)
    {
      [(UIView *)self insertSubview:v7 atIndex:0];
      [(UIView *)self bounds];
      [(objc_class *)self[1].super.super.super.isa setFrame:?];
    }

    [(_UIBarBackground *)self _updateBackgroundViewVisiblity];
    v5 = v8;
  }
}

- (void)transition:(unint64_t)a3 toLayout:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"_UIBarBackground.m" lineNumber:263 description:@"Not yet implemented"];

  v8 = self->_customBackgroundView;
  v9 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40___UIBarBackground_transition_toLayout___block_invoke;
  v11[3] = &unk_1E70F4638;
  v11[4] = self;
  v12 = v9;
  v10 = v8;
  v13 = v10;
  if (![UIView _addCompletion:v11])
  {
    [(_UIBarBackground *)self setLayout:v9];
  }
}

- (CGRect)frameForYOrigin:(double)a3 height:(double)a4
{
  [(UIView *)self bounds];
  v10 = v9 - a4 - a3;
  if (LOBYTE(self->_groupName))
  {
    v10 = a3;
  }

  v11 = a4;
  result.size.height = v11;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v7;
  return result;
}

- (void)_setupShadowView:(id)a3 effect:(id)a4 image:(id)a5 shadowColor:(id)a6 shadowTint:(id)a7 alpha:(double)a8
{
  v20[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a5;
  v18 = [v13 contentView];
  [v18 setImage:v17];

  [v18 setAlpha:a8];
  if (v14)
  {
    v20[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v13 setContentEffects:v19];

    if (v17)
    {
      [v18 setApplyTintColorToBackgroundColor:0];
      [v18 setBackgroundColor:0];
    }

    else
    {
      [v18 setApplyTintColorToBackgroundColor:1];
    }
  }

  else
  {
    [v13 setContentEffects:MEMORY[0x1E695E0F0]];
    [v18 setApplyTintColorToBackgroundColor:0];
    [v18 setBackgroundColor:v15];
    [v18 setTintColor:v16];
  }
}

- (void)transitionBackgroundViewsAnimated:(BOOL)a3
{
  if (a3 && (v6[0] = MEMORY[0x1E69E9820], v6[1] = 3221225472, v6[2] = __54___UIBarBackground_transitionBackgroundViewsAnimated___block_invoke, v6[3] = &unk_1E70F5AC0, v6[4] = self, [UIView _addCompletion:v6]))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54___UIBarBackground_transitionBackgroundViewsAnimated___block_invoke_2;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
    [(_UIBarBackground *)self updateBackground];
    [(UIView *)self layoutIfNeeded];
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54___UIBarBackground_transitionBackgroundViewsAnimated___block_invoke_3;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

@end