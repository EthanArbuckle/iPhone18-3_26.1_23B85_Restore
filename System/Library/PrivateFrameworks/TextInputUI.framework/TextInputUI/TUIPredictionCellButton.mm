@interface TUIPredictionCellButton
- (TUIPredictionCellButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation TUIPredictionCellButton

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = TUIPredictionCellButton;
  [(TUIPredictionCellButton *)&v5 setHighlighted:?];
  [(TUIPredictionViewCell *)self->_cellView setHighlighted:highlightedCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIPredictionCellButton;
  [(TUIPredictionCellButton *)&v3 layoutSubviews];
  [(TUIPredictionCellButton *)self bounds];
  [(TUIPredictionViewCell *)self->_cellView setFrame:?];
}

- (TUIPredictionCellButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = TUIPredictionCellButton;
  v3 = [(TUIPredictionCellButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TUIPredictionViewCell alloc];
    v5 = [(TUIPredictionViewCell *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    cellView = v3->_cellView;
    v3->_cellView = v5;

    [(TUIPredictionViewCell *)v3->_cellView setUserInteractionEnabled:0];
    [(TUIPredictionCellButton *)v3 addSubview:v3->_cellView];
  }

  return v3;
}

@end