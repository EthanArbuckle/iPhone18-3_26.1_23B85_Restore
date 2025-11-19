@interface _UICarTitleView
- (CGSize)intrinsicContentSize;
- (void)_updateLayout;
- (void)_updateText;
- (void)setLargeText:(BOOL)a3;
- (void)setText:(id)a3;
- (void)setView:(id)a3;
@end

@implementation _UICarTitleView

- (void)_updateText
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = [(_UICarTitleView *)self text];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UICarTitleView *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(_UICarTitleView *)self view];
      v8 = [(_UICarTitleView *)self extraConstraints];

      if (!v8)
      {
        if (_UISMCBarsEnabled())
        {
          v9 = [v7 heightAnchor];
          v10 = [(UIView *)self heightAnchor];
          v11 = [v9 constraintEqualToAnchor:v10];
          v20[0] = v11;
          v12 = [v7 centerYAnchor];
          v13 = [(UIView *)self centerYAnchor];
          v14 = [v12 constraintEqualToAnchor:v13];
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

          v9 = [v7 firstBaselineAnchor];
          v10 = [(UIView *)self topAnchor];
          v11 = [v9 constraintEqualToAnchor:v10 constant:v16];
          v19 = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
          [(_UICarTitleView *)self setExtraConstraints:v12];
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

      [v7 setFont:v17];

      [v7 setTextAlignment:v18];
      [v7 sizeToFit];
    }
  }
}

- (void)setText:(id)a3
{
  v10 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v5 = MEMORY[0x1E69977A0];
    v6 = [(_UICarTitleView *)self extraConstraints];
    [v5 deactivateConstraints:v6];

    [(_UICarTitleView *)self setExtraConstraints:0];
    objc_storeStrong(&self->_text, a3);
    if (self->_text)
    {
      v7 = [UILabel alloc];
      v8 = [(UILabel *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v8 setText:v10];
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

- (void)setView:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  text = self->_text;
  self->_text = 0;

  v6 = MEMORY[0x1E69977A0];
  v7 = [(_UICarTitleView *)self extraConstraints];
  [v6 deactivateConstraints:v7];

  [(_UICarTitleView *)self setExtraConstraints:0];
  view = self->_view;
  self->_view = v4;
  v9 = v4;

  v10 = [(UIView *)v9 topAnchor];
  v11 = [(UIView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v17[0] = v12;
  v13 = [(UIView *)v9 bottomAnchor];
  v14 = [(UIView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v17[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  [(_UICarTitleView *)self setExtraConstraints:v16];
  [(_UICarTitleView *)self _updateLayout];
}

- (void)setLargeText:(BOOL)a3
{
  if (self->_largeText != a3)
  {
    self->_largeText = a3;
    [(_UICarTitleView *)self _updateText];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(_UICarTitleView *)self view];
  [v2 intrinsicContentSize];
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
  v3 = [(UIView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v8 = [(_UICarTitleView *)self view];

  if (v8)
  {
    v9 = [(_UICarTitleView *)self view];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(_UICarTitleView *)self view];
    [(UIView *)self addSubview:v10];

    v11 = [(_UICarTitleView *)self extraConstraints];
    v12 = [v11 mutableCopy];

    v13 = [(UIView *)self->_view leadingAnchor];
    v14 = [(UIView *)self leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v24[0] = v15;
    v16 = [(UIView *)self->_view trailingAnchor];
    v17 = [(UIView *)self trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v24[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v12 addObjectsFromArray:v19];

    [MEMORY[0x1E69977A0] activateConstraints:v12];
  }
}

@end