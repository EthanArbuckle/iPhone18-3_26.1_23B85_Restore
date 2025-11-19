@interface _UIBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIOffset)textOffset;
- (_UIBadgeView)initWithText:(id)a3;
- (void)_applyTextToLabel;
- (void)_setUpLabelIfNecessary;
- (void)layoutSubviews;
- (void)setBadgeColor:(id)a3;
- (void)setStyle:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAttributes:(id)a3;
- (void)setTextOffset:(UIOffset)a3;
@end

@implementation _UIBadgeView

- (void)_setUpLabelIfNecessary
{
  v3 = [(NSString *)self->_text length];
  label = self->_label;
  if (v3)
  {
    if (!label)
    {
      v6 = objc_alloc_init(UILabel);
      v7 = self->_label;
      self->_label = v6;

      v8 = +[UIColor clearColor];
      [(UIView *)self->_label setBackgroundColor:v8];

      [(UIView *)self->_label setOpaque:0];
      v9 = self->_label;

      [(UIView *)self addSubview:v9];
    }
  }

  else
  {
    [(UIView *)label removeFromSuperview];
    v5 = self->_label;
    self->_label = 0;
  }
}

- (void)_applyTextToLabel
{
  if ([(NSString *)self->_text length])
  {
    if (qword_1ED4991C8 != -1)
    {
      dispatch_once(&qword_1ED4991C8, &__block_literal_global_82);
    }

    if (!self->_mergedTextAttributes)
    {
      v3 = [qword_1ED4991C0 mutableCopy];
      mergedTextAttributes = self->_mergedTextAttributes;
      self->_mergedTextAttributes = v3;

      v5 = [(_UIBadgeVisualStyle *)self->_style font];
      [(NSMutableDictionary *)self->_mergedTextAttributes setObject:v5 forKeyedSubscript:*off_1E70EC918];

      if ([(NSDictionary *)self->_textAttributes count])
      {
        [(NSMutableDictionary *)self->_mergedTextAttributes addEntriesFromDictionary:self->_textAttributes];
      }

      [(NSMutableDictionary *)self->_mergedTextAttributes removeObjectForKey:*off_1E70EC8D0];
    }

    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (self->_mergedTextAttributes)
    {
      v7 = self->_mergedTextAttributes;
    }

    else
    {
      v7 = qword_1ED4991C0;
    }

    v8 = [v6 initWithString:self->_text attributes:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [(UILabel *)self->_label setAttributedText:v8];
}

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_UIBadgeVisualStyle *)self->_style cornerRadius];
  [(UIView *)self _setContinuousCornerRadius:?];
  if (self->_badgeColor)
  {
    [(UIView *)self setBackgroundColor:?];
  }

  else
  {
    v7 = [(_UIBadgeVisualStyle *)self->_style defaultBadgeColor];
    [(UIView *)self setBackgroundColor:v7];
  }

  [(_UIBadgeView *)self _applyTextToLabel];
  [(UILabel *)self->_label sizeThatFits:v4, v6];
  v9 = v8;
  v11 = v10;
  UIFloorToViewScale(self);
  v13 = v12 + self->_textOffset.horizontal;
  UIFloorToViewScale(self);
  label = self->_label;
  v16 = v15 + self->_textOffset.vertical;

  [(UILabel *)label setFrame:v13, v16, v9, v11];
}

- (_UIBadgeView)initWithText:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self initWithFrame:0.0, 0.0, 24.0, 22.0];
  if (v5)
  {
    v6 = [v4 copy];
    text = v5->_text;
    v5->_text = v6;

    [(_UIBadgeView *)v5 _setUpLabelIfNecessary];
    [(_UIBadgeView *)v5 _applyTextToLabel];
    [(UIView *)v5 setUserInteractionEnabled:0];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UIBadgeVisualStyle *)self->_style cornerRadius:a3.width];
  v5 = v4 + v4;
  v6 = [(NSString *)self->_text length];
  v7 = v5;
  if (v6 >= 2)
  {
    [(_UIBadgeView *)self _setUpLabelIfNecessary];
    [(_UIBadgeView *)self _applyTextToLabel];
    [(_UIBadgeVisualStyle *)self->_style maxWidth];
    v9 = v8;
    [(_UIBadgeVisualStyle *)self->_style minWidth];
    v11 = v10;
    [(UILabel *)self->_label sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v13 = v12;
    [(_UIBadgeVisualStyle *)self->_style edgePadding];
    v7 = v13 + v14 + v14;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    if (v9 <= v7)
    {
      v7 = v9;
    }
  }

  v15 = v5;
  result.height = v15;
  result.width = v7;
  return result;
}

- (void)setText:(id)a3
{
  v4 = a3;
  text = self->_text;
  if (text != v4)
  {
    v9 = v4;
    v6 = [(NSString *)text isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_text;
      self->_text = v7;

      [(_UIBadgeView *)self _setUpLabelIfNecessary];
      [(_UIBadgeView *)self _applyTextToLabel];
      [(UIView *)self sizeToFit];
      [(UIView *)self setNeedsLayout];
      v4 = v9;
    }
  }
}

- (void)setTextAttributes:(id)a3
{
  v4 = a3;
  textAttributes = self->_textAttributes;
  if (textAttributes != v4)
  {
    v10 = v4;
    v6 = [(NSDictionary *)textAttributes isEqual:v4];
    v4 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v10 copy];
      v8 = self->_textAttributes;
      self->_textAttributes = v7;

      mergedTextAttributes = self->_mergedTextAttributes;
      self->_mergedTextAttributes = 0;

      [(UIView *)self setNeedsLayout];
      v4 = v10;
    }
  }
}

- (void)setBadgeColor:(id)a3
{
  v5 = a3;
  if (self->_badgeColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_badgeColor, a3);
    [(UIView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setTextOffset:(UIOffset)a3
{
  if (self->_textOffset.horizontal != a3.horizontal || self->_textOffset.vertical != a3.vertical)
  {
    self->_textOffset = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if (self->_style != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_style, a3);
    mergedTextAttributes = self->_mergedTextAttributes;
    self->_mergedTextAttributes = 0;

    [(UIView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (UIOffset)textOffset
{
  horizontal = self->_textOffset.horizontal;
  vertical = self->_textOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end