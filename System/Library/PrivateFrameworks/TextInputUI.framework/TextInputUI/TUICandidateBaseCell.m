@interface TUICandidateBaseCell
- (TUICandidateBaseCell)initWithFrame:(CGRect)a3;
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateBackground:(id)a3 color:(id)a4;
- (void)updateColors;
@end

@implementation TUICandidateBaseCell

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v19.receiver = self;
  v19.super_class = TUICandidateBaseCell;
  [(TUICandidateBaseCell *)&v19 setHighlighted:?];
  v5 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(TUICandidateBaseCell *)self style];
    v7 = [v6 performScalingAnimationOnCellHighlight];

    if (v7)
    {
      if (v3)
      {
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __39__TUICandidateBaseCell_setHighlighted___block_invoke;
        v17 = &unk_1E72D83A0;
        v18 = self;
        v8 = &v14;
      }

      else
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __39__TUICandidateBaseCell_setHighlighted___block_invoke_2;
        v12 = &unk_1E72D83A0;
        v13 = self;
        v8 = &v9;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:{0.1, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
    }
  }

  else
  {
  }

  [(TUICandidateBaseCell *)self updateColors];
}

uint64_t __39__TUICandidateBaseCell_setHighlighted___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.95, 0.95);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __39__TUICandidateBaseCell_setHighlighted___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TUICandidateBaseCell;
  [(TUICandidateBaseCell *)&v4 setSelected:a3];
  [(TUICandidateBaseCell *)self updateColors];
}

- (void)updateBackground:(id)a3 color:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13)
  {
    v7 = [(TUICandidateBaseCell *)self backgroundImageView];

    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [(TUICandidateBaseCell *)self bounds];
      v9 = [v8 initWithFrame:?];
      [(TUICandidateBaseCell *)self setBackgroundImageView:v9];
    }

    v10 = [(TUICandidateBaseCell *)self backgroundImageView];
    [v10 setImage:v13];

    v11 = [(TUICandidateBaseCell *)self backgroundImageView];
    [(TUICandidateBaseCell *)self setBackgroundView:v11];

    v12 = 0;
  }

  else
  {
    [(TUICandidateBaseCell *)self setBackgroundView:0];
    v12 = v6;
  }

  [(TUICandidateBaseCell *)self setBackgroundColor:v12];
}

- (id)cellBackgroundImage
{
  if (([(TUICandidateBaseCell *)self isSelected]& 1) != 0 || [(TUICandidateBaseCell *)self isHighlighted])
  {
    v3 = [(TUICandidateBaseCell *)self style];
    v4 = [v3 highlightedCellBackgroundImage];
  }

  else
  {
    v3 = [(TUICandidateBaseCell *)self style];
    v4 = [v3 cellBackgroundImage];
  }

  v5 = v4;

  return v5;
}

- (id)cellBackgroundColor
{
  v3 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(TUICandidateBaseCell *)self style];
    v5 = [v4 spaceConfirmationCandidateCellBackgroundColor];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (([(TUICandidateBaseCell *)self isHighlighted]& 1) != 0 || v6 | (([(TUICandidateBaseCell *)self isSelected]& 1) == 0))
  {
    if (([(TUICandidateBaseCell *)self isSelected]& 1) != 0 || [(TUICandidateBaseCell *)self isHighlighted])
    {
      v7 = [(TUICandidateBaseCell *)self style];
      v8 = [v7 highlightedBackgroundColor];
    }

    else
    {
      v7 = [(TUICandidateBaseCell *)self style];
      v8 = [v7 cellBackgroundColor];
    }
  }

  else
  {
    v7 = [(TUICandidateBaseCell *)self style];
    v8 = [v7 spaceConfirmationCandidateCellBackgroundColor];
  }

  v9 = v8;

  return v9;
}

- (void)updateColors
{
  v4 = [(TUICandidateBaseCell *)self cellBackgroundImage];
  v3 = [(TUICandidateBaseCell *)self cellBackgroundColor];
  [(TUICandidateBaseCell *)self updateBackground:v4 color:v3];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = TUICandidateBaseCell;
  [(TUICandidateBaseCell *)&v9 layoutSubviews];
  [(TUICandidateBaseCell *)self updateColors];
  v3 = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(TUICandidateBaseCell *)self style];
    v5 = [v4 applyCornerRadiusToAllCandidates];

    if (!v5)
    {
      return;
    }

    v3 = [(TUICandidateBaseCell *)self style];
    [v3 cellCornerRadius];
    v7 = v6;
    v8 = [(TUICandidateBaseCell *)self layer];
    [v8 setCornerRadius:v7];
  }
}

- (TUICandidateBaseCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = TUICandidateBaseCell;
  return [(TUICandidateBaseCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end