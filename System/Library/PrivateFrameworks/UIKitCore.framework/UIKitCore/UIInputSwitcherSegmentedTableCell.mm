@interface UIInputSwitcherSegmentedTableCell
+ (CGSize)preferredSizeWithSegmentCount:(unint64_t)a3;
- (UIInputSwitcherSegmentedTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsesDarkTheme:(BOOL)a3;
- (void)updateSelectionWithPoint:(CGPoint)a3;
@end

@implementation UIInputSwitcherSegmentedTableCell

- (UIInputSwitcherSegmentedTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIInputSwitcherSegmentedTableCell;
  v4 = [(UIInputSwitcherTableCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIInputSwitcherSegmentControl alloc];
    v6 = [(UIInputSwitcherSegmentControl *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    segmentControl = v4->_segmentControl;
    v4->_segmentControl = v6;

    [(UIInputSwitcherSegmentControl *)v4->_segmentControl setSelectedSegmentIndex:-1];
    [(UIInputSwitcherSegmentControl *)v4->_segmentControl setUsesDarkTheme:[(UIInputSwitcherTableCell *)v4 usesDarkTheme]];
    [(UIView *)v4 addSubview:v4->_segmentControl];
  }

  return v4;
}

+ (CGSize)preferredSizeWithSegmentCount:(unint64_t)a3
{
  v3 = a3 * 64.0 + (a3 + 1) * 9.0;
  v4 = 51.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = UIInputSwitcherSegmentedTableCell;
  [(UIInputSwitcherTableCell *)&v4 setSelected:0 animated:a4];
}

- (void)updateSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIInputSwitcherSegmentedTableCell *)self setSelected:1 animated:0];
  v6 = [(UIInputSwitcherSegmentedTableCell *)self segmentControl];
  [v6 updateSelectionWithPoint:{x, y}];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5 + 9.0;
  v8 = v7 + -18.0;
  v10 = v9 + 0.0;
  v11 = [(UIInputSwitcherSegmentedTableCell *)self segmentControl];
  [v11 setFrame:{v6, v10, v8, v4}];
}

- (void)setUsesDarkTheme:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UIInputSwitcherSegmentedTableCell;
  [(UIInputSwitcherTableCell *)&v6 setUsesDarkTheme:?];
  v5 = [(UIInputSwitcherSegmentedTableCell *)self segmentControl];
  [v5 setUsesDarkTheme:v3];
}

@end