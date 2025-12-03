@interface SBFButton
- (BOOL)_drawingAsSelected;
- (SBFButton)initWithFrame:(CGRect)frame;
- (void)_touchUpInside;
- (void)_updateSelected:(BOOL)selected highlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SBFButton

- (SBFButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBFButton;
  v3 = [(SBFButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBFButton *)v3 addTarget:v3 action:sel__touchUpInside forControlEvents:64];
  }

  return v4;
}

- (void)_touchUpInside
{
  v3 = [(SBFButton *)self isSelected]^ 1;

  [(SBFButton *)self _updateSelected:v3 highlighted:0];
}

- (BOOL)_drawingAsSelected
{
  if ([(SBFButton *)self isSelected]&& ![(SBFButton *)self isHighlighted])
  {
    return 1;
  }

  if (([(SBFButton *)self isSelected]& 1) != 0)
  {
    return 0;
  }

  return [(SBFButton *)self isHighlighted];
}

- (void)_updateSelected:(BOOL)selected highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  selectedCopy = selected;
  _drawingAsSelected = [(SBFButton *)self _drawingAsSelected];
  v9.receiver = self;
  v9.super_class = SBFButton;
  [(SBFButton *)&v9 setSelected:selectedCopy];
  v8.receiver = self;
  v8.super_class = SBFButton;
  [(SBFButton *)&v8 setHighlighted:highlightedCopy];
  if (_drawingAsSelected != [(SBFButton *)self _drawingAsSelected])
  {
    [(SBFButton *)self _updateForStateChange];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isHighlighted = [(SBFButton *)self isHighlighted];

  [(SBFButton *)self _updateSelected:selectedCopy highlighted:isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isSelected = [(SBFButton *)self isSelected];

  [(SBFButton *)self _updateSelected:isSelected highlighted:highlightedCopy];
}

@end