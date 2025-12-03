@interface UIInputSwitcherSegmentedTableCell
+ (CGSize)preferredSizeWithSegmentCount:(unint64_t)count;
- (UIInputSwitcherSegmentedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setUsesDarkTheme:(BOOL)theme;
- (void)updateSelectionWithPoint:(CGPoint)point;
@end

@implementation UIInputSwitcherSegmentedTableCell

- (UIInputSwitcherSegmentedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = UIInputSwitcherSegmentedTableCell;
  v4 = [(UIInputSwitcherTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
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

+ (CGSize)preferredSizeWithSegmentCount:(unint64_t)count
{
  v3 = count * 64.0 + (count + 1) * 9.0;
  v4 = 51.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = UIInputSwitcherSegmentedTableCell;
  [(UIInputSwitcherTableCell *)&v4 setSelected:0 animated:animated];
}

- (void)updateSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIInputSwitcherSegmentedTableCell *)self setSelected:1 animated:0];
  segmentControl = [(UIInputSwitcherSegmentedTableCell *)self segmentControl];
  [segmentControl updateSelectionWithPoint:{x, y}];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5 + 9.0;
  v8 = v7 + -18.0;
  v10 = v9 + 0.0;
  segmentControl = [(UIInputSwitcherSegmentedTableCell *)self segmentControl];
  [segmentControl setFrame:{v6, v10, v8, v4}];
}

- (void)setUsesDarkTheme:(BOOL)theme
{
  themeCopy = theme;
  v6.receiver = self;
  v6.super_class = UIInputSwitcherSegmentedTableCell;
  [(UIInputSwitcherTableCell *)&v6 setUsesDarkTheme:?];
  segmentControl = [(UIInputSwitcherSegmentedTableCell *)self segmentControl];
  [segmentControl setUsesDarkTheme:themeCopy];
}

@end