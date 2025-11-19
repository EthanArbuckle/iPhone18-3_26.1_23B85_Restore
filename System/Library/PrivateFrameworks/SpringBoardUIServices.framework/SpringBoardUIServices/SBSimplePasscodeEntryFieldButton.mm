@interface SBSimplePasscodeEntryFieldButton
- (SBSimplePasscodeEntryFieldButton)initWithFrame:(CGRect)a3 paddingOutsideRing:(UIEdgeInsets)a4 useLightStyle:(BOOL)a5;
- (void)layoutSubviews;
- (void)setRevealed:(BOOL)revealed animated:(BOOL)a4 delay:(double)a5;
@end

@implementation SBSimplePasscodeEntryFieldButton

- (void)layoutSubviews
{
  ringView = self->_ringView;
  [(SBSimplePasscodeEntryFieldButton *)self bounds];
  [(UIView *)ringView setFrame:v4 + self->_paddingOutsideRing.left, v5 + self->_paddingOutsideRing.top, v6 - (self->_paddingOutsideRing.left + self->_paddingOutsideRing.right), v7 - (self->_paddingOutsideRing.top + self->_paddingOutsideRing.bottom)];
  v8 = self->_ringView;
  [(UIView *)v8 frame];

  [(UIView *)v8 _setCornerRadius:v9 * 0.5];
}

- (SBSimplePasscodeEntryFieldButton)initWithFrame:(CGRect)a3 paddingOutsideRing:(UIEdgeInsets)a4 useLightStyle:(BOOL)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v26.receiver = self;
  v26.super_class = SBSimplePasscodeEntryFieldButton;
  v10 = [(SBSimplePasscodeEntryFieldButton *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v11 = v10;
  if (v10)
  {
    v10->_useLightStyle = a5;
    p_top = &v10->_paddingOutsideRing.top;
    v10->_paddingOutsideRing.top = top;
    v10->_paddingOutsideRing.left = left;
    v10->_paddingOutsideRing.bottom = bottom;
    v10->_paddingOutsideRing.right = right;
    [(SBSimplePasscodeEntryFieldButton *)v10 setUserInteractionEnabled:0];
    if (v11->_useLightStyle)
    {
      [MEMORY[0x1E69DC888] blackColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v13 = ;
    objc_storeStrong(&v11->_color, v13);

    v14 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SBSimplePasscodeEntryFieldButton *)v11 bounds];
    v19 = [v14 initWithFrame:{v15 + v11->_paddingOutsideRing.left, *p_top + v16, v17 - (v11->_paddingOutsideRing.left + v11->_paddingOutsideRing.right), v18 - (*p_top + v11->_paddingOutsideRing.bottom)}];
    ringView = v11->_ringView;
    v11->_ringView = v19;

    [(SBSimplePasscodeEntryFieldButton *)v11 addSubview:v11->_ringView];
    v21 = v11->_ringView;
    [(UIView *)v21 frame];
    [(UIView *)v21 _setCornerRadius:v22 * 0.5];
    v23 = [(UIView *)v11->_ringView layer];
    [v23 setBorderColor:{-[UIColor cgColor](v11->_color, "cgColor")}];

    v24 = [(UIView *)v11->_ringView layer];
    [MEMORY[0x1E69D3FE8] pinFixedDigitEntryFieldIndicatorStrokeSize];
    [v24 setBorderWidth:?];
  }

  return v11;
}

- (void)setRevealed:(BOOL)revealed animated:(BOOL)a4 delay:(double)a5
{
  if (fabs(a5) < 2.22044605e-16 || self->_revealed != revealed)
  {
    self->_revealed = revealed;
    v9 = !a4 || revealed;
    if (!v9)
    {
      self->_animatingUnreveal = 1;
      revealed = self->_revealed;
    }

    v14[5] = v5;
    v14[6] = v6;
    v10 = !v9;
    v11 = 0.392500013;
    if (revealed)
    {
      v11 = 0.0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__SBSimplePasscodeEntryFieldButton_setRevealed_animated_delay___block_invoke;
    v14[3] = &unk_1E789DA38;
    v14[4] = self;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__SBSimplePasscodeEntryFieldButton_setRevealed_animated_delay___block_invoke_2;
    v12[3] = &unk_1E789E2F8;
    v13 = v10;
    v12[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v14 options:v12 animations:v11 completion:a5];
  }
}

void __63__SBSimplePasscodeEntryFieldButton_setRevealed_animated_delay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 409) == 1)
  {
    v3 = *(v2 + 448);
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
  }

  v4 = v3;
  [*(*(a1 + 32) + 456) setBackgroundColor:v3];
}

uint64_t __63__SBSimplePasscodeEntryFieldButton_setRevealed_animated_delay___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    *(*(result + 32) + 464) = 0;
  }

  return result;
}

@end