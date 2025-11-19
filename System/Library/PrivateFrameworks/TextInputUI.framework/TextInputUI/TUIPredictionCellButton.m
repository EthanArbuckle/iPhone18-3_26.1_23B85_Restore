@interface TUIPredictionCellButton
- (TUIPredictionCellButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TUIPredictionCellButton

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TUIPredictionCellButton;
  [(TUIPredictionCellButton *)&v5 setHighlighted:?];
  [(TUIPredictionViewCell *)self->_cellView setHighlighted:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIPredictionCellButton;
  [(TUIPredictionCellButton *)&v3 layoutSubviews];
  [(TUIPredictionCellButton *)self bounds];
  [(TUIPredictionViewCell *)self->_cellView setFrame:?];
}

- (TUIPredictionCellButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = TUIPredictionCellButton;
  v3 = [(TUIPredictionCellButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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