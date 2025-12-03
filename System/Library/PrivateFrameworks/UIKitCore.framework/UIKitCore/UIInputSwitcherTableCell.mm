@interface UIInputSwitcherTableCell
- (UIEdgeInsets)interactiveInsets;
- (UIInputSwitcherTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateRoundedCorners;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setUsesDarkTheme:(BOOL)theme;
@end

@implementation UIInputSwitcherTableCell

- (UIInputSwitcherTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = UIInputSwitcherTableCell;
  v4 = [(UITableViewCell *)&v8 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UIInputSwitcherTableCellBackgroundView);
    [(UIView *)v5 setOpaque:0];
    [(UITableViewCell *)v4 setBackgroundView:v5];
    textLabel = [(UITableViewCell *)v4 textLabel];
    [textLabel setAllowsDefaultTighteningForTruncation:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = UIInputSwitcherTableCell;
  [(UITableViewCell *)&v42 layoutSubviews];
  accessoryView = [(UITableViewCell *)self accessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [(UITableViewCell *)self _textLabel:0];
    v7 = [(UITableViewCell *)self _detailTextLabel:0];
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      backgroundView = [(UITableViewCell *)self backgroundView];
      [backgroundView frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      text = [v7 text];
      if (text)
      {
        text2 = [v7 text];
        if ([text2 length])
        {
          v20 = -18.0;
        }

        else
        {
          v20 = 0.0;
        }
      }

      else
      {
        v20 = 0.0;
      }

      [v6 setFrame:{v12 + 26.0, v14 + v20, v16 + -52.0, v18 - v20}];
      if (text)
      {
      }

      backgroundView2 = [(UITableViewCell *)self backgroundView];
      [backgroundView2 frame];
      [v7 setFrame:{v38 + 26.0, v40 + 22.0, v39 + -52.0, v41 + -22.0}];
    }

    else
    {
      [v6 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(UITableViewCell *)self frame];
      [v6 setFrame:{round(v28 + (v27 - v24) * 0.5), v22, v24, v26}];
      [v7 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      [(UITableViewCell *)self frame];
      [v7 setFrame:{round(v36 + (v35 - v32) * 0.5), v30, v32, v34}];
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = UIInputSwitcherTableCell;
  [(UITableViewCell *)&v8 setSelected:selected animated:animated];
  backgroundView = [(UITableViewCell *)self backgroundView];
  [backgroundView setSelected:selectedCopy];

  backgroundView2 = [(UITableViewCell *)self backgroundView];
  [backgroundView2 setNeedsDisplay];
}

- (void)_updateRoundedCorners
{
  if ([(UIInputSwitcherTableCell *)self usesStraightLeftEdge])
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  v4 = [(UIInputSwitcherTableCell *)self usesStraightLeftEdge]^ 1;
  if ([(UIInputSwitcherTableCell *)self isFirst]&& [(UIInputSwitcherTableCell *)self isLast])
  {
    v5 = v3 | v4 | 0xA;
  }

  else if ([(UIInputSwitcherTableCell *)self isFirst])
  {
    v5 = v4 | 2;
  }

  else if ([(UIInputSwitcherTableCell *)self isLast])
  {
    v5 = v3 | 8;
  }

  else
  {
    v5 = 0;
  }

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig2 colorAdaptiveBackground])
  {
    v9 = 0;
  }

  else
  {
    v9 = [(UIInputSwitcherTableCell *)self isFirst]^ 1;
  }

  if (colorAdaptiveBackground)
  {
    v10 = -1;
  }

  else
  {
    v10 = v5;
  }

  backgroundView = [(UITableViewCell *)self backgroundView];
  [backgroundView setDrawsBorder:v9];

  backgroundView2 = [(UITableViewCell *)self backgroundView];
  [backgroundView2 setRoundedCorners:v10];

  backgroundView3 = [(UITableViewCell *)self backgroundView];
  [backgroundView3 setNeedsDisplay];
}

- (void)setUsesDarkTheme:(BOOL)theme
{
  themeCopy = theme;
  self->_usesDarkTheme = theme;
  backgroundView = [(UITableViewCell *)self backgroundView];
  [backgroundView setUsesDarkTheme:themeCopy];

  backgroundView2 = [(UITableViewCell *)self backgroundView];
  [backgroundView2 setNeedsDisplay];
}

- (UIEdgeInsets)interactiveInsets
{
  top = self->_interactiveInsets.top;
  left = self->_interactiveInsets.left;
  bottom = self->_interactiveInsets.bottom;
  right = self->_interactiveInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end