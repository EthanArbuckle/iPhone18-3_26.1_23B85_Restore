@interface _UICarTitleView
- (CGSize)intrinsicContentSize;
- (void)_updateLayout;
- (void)_updateText;
- (void)setLargeText:(BOOL)text;
- (void)setText:(id)text;
- (void)setView:(id)view;
@end

@implementation _UICarTitleView

- (void)_updateText
{
  v20[2] = *MEMORY[0x1E69E9840];
  text = [(_UICarTitleView *)self text];
  if (text)
  {
    v4 = text;
    view = [(_UICarTitleView *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [(_UICarTitleView *)self view];
      extraConstraints = [(_UICarTitleView *)self extraConstraints];

      if (!extraConstraints)
      {
        if (_UISMCBarsEnabled())
        {
          heightAnchor = [view2 heightAnchor];
          heightAnchor2 = [(UIView *)self heightAnchor];
          v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
          v20[0] = v11;
          centerYAnchor = [view2 centerYAnchor];
          centerYAnchor2 = [(UIView *)self centerYAnchor];
          v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v20[1] = v14;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
          [(_UICarTitleView *)self setExtraConstraints:v15];
        }

        else
        {
          if ([(_UICarTitleView *)self largeText])
          {
            v16 = 32.0;
          }

          else
          {
            v16 = 28.0;
          }

          heightAnchor = [view2 firstBaselineAnchor];
          heightAnchor2 = [(UIView *)self topAnchor];
          v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:v16];
          v19 = v11;
          centerYAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
          [(_UICarTitleView *)self setExtraConstraints:centerYAnchor];
        }
      }

      if ([(_UICarTitleView *)self largeText])
      {
        if (_UISMCBarsEnabled())
        {
          [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleTitle1" weight:*off_1E70ECD20];
        }

        else
        {
          [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleTitle1" variant:1024];
        }
        v17 = ;
        v18 = 4;
      }

      else
      {
        v17 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" variant:1024];
        v18 = 1;
      }

      [view2 setFont:v17];

      [view2 setTextAlignment:v18];
      [view2 sizeToFit];
    }
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v5 = MEMORY[0x1E69977A0];
    extraConstraints = [(_UICarTitleView *)self extraConstraints];
    [v5 deactivateConstraints:extraConstraints];

    [(_UICarTitleView *)self setExtraConstraints:0];
    objc_storeStrong(&self->_text, text);
    if (self->_text)
    {
      v7 = [UILabel alloc];
      v8 = [(UILabel *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v8 setText:textCopy];
      [(UIView *)v8 setAdjustsFontForContentSizeCategory:1];
    }

    else
    {
      v8 = 0;
    }

    view = self->_view;
    self->_view = v8;

    [(_UICarTitleView *)self _updateText];
    [(_UICarTitleView *)self _updateLayout];
  }
}

- (void)setView:(id)view
{
  v17[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  text = self->_text;
  self->_text = 0;

  v6 = MEMORY[0x1E69977A0];
  extraConstraints = [(_UICarTitleView *)self extraConstraints];
  [v6 deactivateConstraints:extraConstraints];

  [(_UICarTitleView *)self setExtraConstraints:0];
  view = self->_view;
  self->_view = viewCopy;
  v9 = viewCopy;

  topAnchor = [(UIView *)v9 topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v17[0] = v12;
  bottomAnchor = [(UIView *)v9 bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v17[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  [(_UICarTitleView *)self setExtraConstraints:v16];
  [(_UICarTitleView *)self _updateLayout];
}

- (void)setLargeText:(BOOL)text
{
  if (self->_largeText != text)
  {
    self->_largeText = text;
    [(_UICarTitleView *)self _updateText];
  }
}

- (CGSize)intrinsicContentSize
{
  view = [(_UICarTitleView *)self view];
  [view intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_updateLayout
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  subviews = [(UIView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v20 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  view = [(_UICarTitleView *)self view];

  if (view)
  {
    view2 = [(_UICarTitleView *)self view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(_UICarTitleView *)self view];
    [(UIView *)self addSubview:view3];

    extraConstraints = [(_UICarTitleView *)self extraConstraints];
    v12 = [extraConstraints mutableCopy];

    leadingAnchor = [(UIView *)self->_view leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[0] = v15;
    trailingAnchor = [(UIView *)self->_view trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v12 addObjectsFromArray:v19];

    [MEMORY[0x1E69977A0] activateConstraints:v12];
  }
}

@end