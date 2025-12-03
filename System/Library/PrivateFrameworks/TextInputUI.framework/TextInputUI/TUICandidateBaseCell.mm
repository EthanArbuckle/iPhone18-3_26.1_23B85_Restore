@interface TUICandidateBaseCell
- (TUICandidateBaseCell)initWithFrame:(CGRect)frame;
- (id)cellBackgroundColor;
- (id)cellBackgroundImage;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)updateBackground:(id)background color:(id)color;
- (void)updateColors;
@end

@implementation TUICandidateBaseCell

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v19.receiver = self;
  v19.super_class = TUICandidateBaseCell;
  [(TUICandidateBaseCell *)&v19 setHighlighted:?];
  style = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    style2 = [(TUICandidateBaseCell *)self style];
    performScalingAnimationOnCellHighlight = [style2 performScalingAnimationOnCellHighlight];

    if (performScalingAnimationOnCellHighlight)
    {
      if (highlightedCopy)
      {
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __39__TUICandidateBaseCell_setHighlighted___block_invoke;
        v17 = &unk_1E72D83A0;
        selfCopy = self;
        v8 = &v14;
      }

      else
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __39__TUICandidateBaseCell_setHighlighted___block_invoke_2;
        v12 = &unk_1E72D83A0;
        selfCopy2 = self;
        v8 = &v9;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:{0.1, v9, v10, v11, v12, selfCopy2, v14, v15, v16, v17, selfCopy}];
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

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = TUICandidateBaseCell;
  [(TUICandidateBaseCell *)&v4 setSelected:selected];
  [(TUICandidateBaseCell *)self updateColors];
}

- (void)updateBackground:(id)background color:(id)color
{
  backgroundCopy = background;
  colorCopy = color;
  if (backgroundCopy)
  {
    backgroundImageView = [(TUICandidateBaseCell *)self backgroundImageView];

    if (!backgroundImageView)
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      [(TUICandidateBaseCell *)self bounds];
      v9 = [v8 initWithFrame:?];
      [(TUICandidateBaseCell *)self setBackgroundImageView:v9];
    }

    backgroundImageView2 = [(TUICandidateBaseCell *)self backgroundImageView];
    [backgroundImageView2 setImage:backgroundCopy];

    backgroundImageView3 = [(TUICandidateBaseCell *)self backgroundImageView];
    [(TUICandidateBaseCell *)self setBackgroundView:backgroundImageView3];

    v12 = 0;
  }

  else
  {
    [(TUICandidateBaseCell *)self setBackgroundView:0];
    v12 = colorCopy;
  }

  [(TUICandidateBaseCell *)self setBackgroundColor:v12];
}

- (id)cellBackgroundImage
{
  if (([(TUICandidateBaseCell *)self isSelected]& 1) != 0 || [(TUICandidateBaseCell *)self isHighlighted])
  {
    style = [(TUICandidateBaseCell *)self style];
    highlightedCellBackgroundImage = [style highlightedCellBackgroundImage];
  }

  else
  {
    style = [(TUICandidateBaseCell *)self style];
    highlightedCellBackgroundImage = [style cellBackgroundImage];
  }

  v5 = highlightedCellBackgroundImage;

  return v5;
}

- (id)cellBackgroundColor
{
  style = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    style2 = [(TUICandidateBaseCell *)self style];
    spaceConfirmationCandidateCellBackgroundColor = [style2 spaceConfirmationCandidateCellBackgroundColor];
    v6 = spaceConfirmationCandidateCellBackgroundColor == 0;
  }

  else
  {
    v6 = 1;
  }

  if (([(TUICandidateBaseCell *)self isHighlighted]& 1) != 0 || v6 | (([(TUICandidateBaseCell *)self isSelected]& 1) == 0))
  {
    if (([(TUICandidateBaseCell *)self isSelected]& 1) != 0 || [(TUICandidateBaseCell *)self isHighlighted])
    {
      style3 = [(TUICandidateBaseCell *)self style];
      highlightedBackgroundColor = [style3 highlightedBackgroundColor];
    }

    else
    {
      style3 = [(TUICandidateBaseCell *)self style];
      highlightedBackgroundColor = [style3 cellBackgroundColor];
    }
  }

  else
  {
    style3 = [(TUICandidateBaseCell *)self style];
    highlightedBackgroundColor = [style3 spaceConfirmationCandidateCellBackgroundColor];
  }

  v9 = highlightedBackgroundColor;

  return v9;
}

- (void)updateColors
{
  cellBackgroundImage = [(TUICandidateBaseCell *)self cellBackgroundImage];
  cellBackgroundColor = [(TUICandidateBaseCell *)self cellBackgroundColor];
  [(TUICandidateBaseCell *)self updateBackground:cellBackgroundImage color:cellBackgroundColor];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = TUICandidateBaseCell;
  [(TUICandidateBaseCell *)&v9 layoutSubviews];
  [(TUICandidateBaseCell *)self updateColors];
  style = [(TUICandidateBaseCell *)self style];
  if (objc_opt_respondsToSelector())
  {
    style2 = [(TUICandidateBaseCell *)self style];
    applyCornerRadiusToAllCandidates = [style2 applyCornerRadiusToAllCandidates];

    if (!applyCornerRadiusToAllCandidates)
    {
      return;
    }

    style = [(TUICandidateBaseCell *)self style];
    [style cellCornerRadius];
    v7 = v6;
    layer = [(TUICandidateBaseCell *)self layer];
    [layer setCornerRadius:v7];
  }
}

- (TUICandidateBaseCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TUICandidateBaseCell;
  return [(TUICandidateBaseCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end