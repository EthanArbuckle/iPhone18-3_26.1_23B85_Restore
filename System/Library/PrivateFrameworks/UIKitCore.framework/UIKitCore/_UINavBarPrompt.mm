@interface _UINavBarPrompt
- (CGRect)_labelFrame;
- (CGRect)promptBounds;
- (CGSize)_updateLabelTextColorAndFontReturningShadowOffset;
- (_UINavBarPrompt)initWithNavBar:(id)bar;
- (void)layoutSubviews;
- (void)setPrompt:(id)prompt;
@end

@implementation _UINavBarPrompt

- (_UINavBarPrompt)initWithNavBar:(id)bar
{
  barCopy = bar;
  v14.receiver = self;
  v14.super_class = _UINavBarPrompt;
  v5 = [(UIView *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_navBar, barCopy);
    v7 = objc_alloc_init(UILabel);
    label = v6->_label;
    v6->_label = v7;

    [(UIView *)v6 setUserInteractionEnabled:0];
    v9 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v9];

    [(UIView *)v6 setContentMode:3];
    [(UIView *)v6->_label setOpaque:0];
    v10 = v6->_label;
    v11 = +[UIColor clearColor];
    [(UIView *)v10 setBackgroundColor:v11];

    v12 = v6->_label;
    [(_UINavBarPrompt *)v6 _labelFrame];
    [(UILabel *)v12 setFrame:?];
  }

  return v6;
}

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  text = [(UILabel *)self->_label text];

  v5 = promptCopy;
  if (text != promptCopy)
  {
    [(UILabel *)self->_label setText:promptCopy];
    [(UIView *)self setNeedsLayout];
    v5 = promptCopy;
  }
}

- (CGRect)_labelFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_navBar);
  _currentVisualStyle = [WeakRetained _currentVisualStyle];

  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v12 = v11;
  v14 = v13;
  v15 = v6 + round((v10 - v11) * 0.5);
  if (v15 >= 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  [_currentVisualStyle promptTextOffset];
  v18 = v8 + v17;

  v19 = v16;
  v20 = v18;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)promptBounds
{
  [(UIView *)self->_label frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)_updateLabelTextColorAndFontReturningShadowOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_navBar);
  _appearanceStorage = [WeakRetained _appearanceStorage];
  _currentVisualStyle = [WeakRetained _currentVisualStyle];
  textAttributes = [_appearanceStorage textAttributes];
  v7 = [textAttributes objectForKey:*off_1E70EC918];
  if (v7)
  {
    v8 = v7;
    [v7 pointSize];
    if (v9 == 0.0)
    {
      [_currentVisualStyle promptFontSize];
    }

    else
    {
      [v8 pointSize];
      v13 = v12;
      [_currentVisualStyle promptFontSize];
      v15 = v13 * v14;
      [_currentVisualStyle headingFontSize];
      v10 = round(v15 / v16);
    }

    v11 = [v8 fontWithSize:v10];
  }

  else
  {
    v11 = +[UINavigationBar defaultPromptFont];
  }

  if (([WeakRetained barStyle] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v17 = ;
  v18 = [textAttributes objectForKey:*off_1E70EC920];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;

  v22 = [textAttributes objectForKey:*off_1E70EC9B0];
  v23 = v22;
  if (v22)
  {
    shadowColor = [v22 shadowColor];
    [v23 shadowOffset];
    v26 = v25;
    v28 = v27;
  }

  else
  {
    shadowColor = 0;
    v26 = *MEMORY[0x1E695F060];
    v28 = *(MEMORY[0x1E695F060] + 8);
  }

  [(UILabel *)self->_label setTextColor:v21];
  if (shadowColor)
  {
    [(UILabel *)self->_label setShadowColor:shadowColor];
  }

  [(UILabel *)self->_label setFont:v11];

  v29 = v26;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)layoutSubviews
{
  [(_UINavBarPrompt *)self _updateLabelTextColorAndFontReturningShadowOffset];
  v4 = v3;
  v6 = v5;
  superview = [(UIView *)self->_label superview];

  if (superview)
  {
    label = self->_label;
    [(_UINavBarPrompt *)self _labelFrame];
    [(UILabel *)label setFrame:?];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33___UINavBarPrompt_layoutSubviews__block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIView performWithoutAnimation:v9];
  }

  [(UIView *)self addSubview:self->_label];
  [(UILabel *)self->_label setShadowOffset:v4, v6];
}

@end