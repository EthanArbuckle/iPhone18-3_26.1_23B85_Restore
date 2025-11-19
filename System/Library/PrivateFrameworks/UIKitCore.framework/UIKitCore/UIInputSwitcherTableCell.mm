@interface UIInputSwitcherTableCell
- (UIEdgeInsets)interactiveInsets;
- (UIInputSwitcherTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateRoundedCorners;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsesDarkTheme:(BOOL)a3;
@end

@implementation UIInputSwitcherTableCell

- (UIInputSwitcherTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIInputSwitcherTableCell;
  v4 = [(UITableViewCell *)&v8 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(UIInputSwitcherTableCellBackgroundView);
    [(UIView *)v5 setOpaque:0];
    [(UITableViewCell *)v4 setBackgroundView:v5];
    v6 = [(UITableViewCell *)v4 textLabel];
    [v6 setAllowsDefaultTighteningForTruncation:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = UIInputSwitcherTableCell;
  [(UITableViewCell *)&v42 layoutSubviews];
  v4 = [(UITableViewCell *)self accessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [(UITableViewCell *)self _textLabel:0];
    v7 = [(UITableViewCell *)self _detailTextLabel:0];
    v8 = [(UIView *)self _inheritedRenderConfig];
    v9 = [v8 colorAdaptiveBackground];

    if (v9)
    {
      v10 = [(UITableViewCell *)self backgroundView];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [v7 text];
      if (v19)
      {
        v2 = [v7 text];
        if ([v2 length])
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
      if (v19)
      {
      }

      v37 = [(UITableViewCell *)self backgroundView];
      [v37 frame];
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIInputSwitcherTableCell;
  [(UITableViewCell *)&v8 setSelected:a3 animated:a4];
  v6 = [(UITableViewCell *)self backgroundView];
  [v6 setSelected:v4];

  v7 = [(UITableViewCell *)self backgroundView];
  [v7 setNeedsDisplay];
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

  v6 = [(UIView *)self _inheritedRenderConfig];
  v7 = [v6 colorAdaptiveBackground];

  v8 = [(UIView *)self _inheritedRenderConfig];
  if ([v8 colorAdaptiveBackground])
  {
    v9 = 0;
  }

  else
  {
    v9 = [(UIInputSwitcherTableCell *)self isFirst]^ 1;
  }

  if (v7)
  {
    v10 = -1;
  }

  else
  {
    v10 = v5;
  }

  v11 = [(UITableViewCell *)self backgroundView];
  [v11 setDrawsBorder:v9];

  v12 = [(UITableViewCell *)self backgroundView];
  [v12 setRoundedCorners:v10];

  v13 = [(UITableViewCell *)self backgroundView];
  [v13 setNeedsDisplay];
}

- (void)setUsesDarkTheme:(BOOL)a3
{
  v3 = a3;
  self->_usesDarkTheme = a3;
  v5 = [(UITableViewCell *)self backgroundView];
  [v5 setUsesDarkTheme:v3];

  v6 = [(UITableViewCell *)self backgroundView];
  [v6 setNeedsDisplay];
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