@interface UIButtonLabel
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_textColorFollowsTintColor;
- (CGSize)intrinsicContentSize;
- (CGSize)shadowOffset;
- (double)_paddingForBaselineSpacingFromEdge:(int)edge toNeighborEdge:(int)neighborEdge;
- (id)_initWithFrame:(CGRect)frame button:(id)button;
- (void)_contentDidChange:(int64_t)change fromContent:(id)content;
- (void)_internallySetNumberOfLines:(int64_t)lines;
- (void)_setFont:(id)font isDefaultForIdiom:(BOOL)idiom;
- (void)_setWantsAutolayout;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setReverseShadow:(BOOL)shadow;
- (void)setShadowOffset:(CGSize)offset;
@end

@implementation UIButtonLabel

- (BOOL)_textColorFollowsTintColor
{
  WeakRetained = objc_loadWeakRetained(&self->_button);
  _isModernButton = [WeakRetained _isModernButton];

  if (_isModernButton)
  {
    v16 = 0;
    v5 = objc_loadWeakRetained(&self->_button);
    v6 = [v5 _titleColorForState:objc_msgSend(v5 suppressTintColorFollowing:{"state"), &v16}];

    v7 = 0;
    if ((v16 & 1) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_button);
      v9 = [v8 _contentForState:{objc_msgSend(v8, "state")}];
      titleColor = [v9 titleColor];
      if (titleColor)
      {
        v7 = 0;
      }

      else
      {
        v11 = objc_loadWeakRetained(&self->_button);
        v12 = [v11 _contentForState:0];
        titleColor2 = [v12 titleColor];
        v7 = titleColor2 == 0;
      }
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIButtonLabel;
    return [(UILabel *)&v15 _textColorFollowsTintColor];
  }

  return v7;
}

- (void)_setWantsAutolayout
{
  v3.receiver = self;
  v3.super_class = UIButtonLabel;
  [(UIView *)&v3 _setWantsAutolayout];
  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (CGSize)intrinsicContentSize
{
  v14.receiver = self;
  v14.super_class = UIButtonLabel;
  [(UILabel *)&v14 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  text = [(UILabel *)self text];
  v8 = [text length];

  if (!v8)
  {
    font = [(UILabel *)self font];
    v10 = font;
    if (!font)
    {
      v10 = +[UILabel defaultFont];
    }

    [@"X" _legacy_sizeWithFont:v10 forWidth:-[UILabel lineBreakMode](self lineBreakMode:{"lineBreakMode"), 3.40282347e38}];
    v6 = v11;
    if (!font)
    {
    }

    v4 = 0.0;
  }

  v12 = v4;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setNumberOfLines:(int64_t)lines
{
  self->_externallySetNumberOfLines = 1;
  v3.receiver = self;
  v3.super_class = UIButtonLabel;
  [(UILabel *)&v3 setNumberOfLines:lines];
}

- (void)_internallySetNumberOfLines:(int64_t)lines
{
  if (!self->_externallySetNumberOfLines)
  {
    v3.receiver = self;
    v3.super_class = UIButtonLabel;
    [(UILabel *)&v3 setNumberOfLines:lines];
  }
}

- (id)_initWithFrame:(CGRect)frame button:(id)button
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  buttonCopy = button;
  v14.receiver = self;
  v14.super_class = UIButtonLabel;
  height = [(UILabel *)&v14 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_button, buttonCopy);
    v12 = v11;
  }

  return v11;
}

- (void)_setFont:(id)font isDefaultForIdiom:(BOOL)idiom
{
  self->_fontIsDefaultForIdiom = idiom;
  v4.receiver = self;
  v4.super_class = UIButtonLabel;
  [(UILabel *)&v4 setFont:font];
}

- (void)setShadowOffset:(CGSize)offset
{
  v3 = -offset.width;
  v4 = -offset.height;
  if (self->_reverseShadow)
  {
    offset.width = -offset.width;
    offset.height = -offset.height;
  }

  v5.receiver = self;
  v5.super_class = UIButtonLabel;
  [(UILabel *)&v5 setShadowOffset:offset.width, offset.height, v3, v4];
}

- (CGSize)shadowOffset
{
  v5.receiver = self;
  v5.super_class = UIButtonLabel;
  [(UILabel *)&v5 shadowOffset];
  if (self->_reverseShadow)
  {
    v4 = -v4;
    v3 = -v3;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setReverseShadow:(BOOL)shadow
{
  if (self->_reverseShadow != shadow)
  {
    v10 = v3;
    v11 = v4;
    self->_reverseShadow = shadow;
    v9.receiver = self;
    v9.super_class = UIButtonLabel;
    [(UILabel *)&v9 shadowOffset];
    v8.receiver = self;
    v8.super_class = UIButtonLabel;
    [(UILabel *)&v8 setShadowOffset:-v6, -v7];
  }
}

- (void)_contentDidChange:(int64_t)change fromContent:(id)content
{
  v12.receiver = self;
  v12.super_class = UIButtonLabel;
  contentCopy = content;
  [(UILabel *)&v12 _contentDidChange:change fromContent:contentCopy];
  v7 = [(UILabel *)self lineBreakMode:v12.receiver];
  paragraphStyle = [contentCopy paragraphStyle];

  lineBreakMode = [paragraphStyle lineBreakMode];
  if ((change & 0x8000) != 0 && v7 != lineBreakMode)
  {
    [(UIButtonLabel *)self _internallySetNumberOfLines:v7 > NSLineBreakByCharWrapping];
  }

  v10 = dyld_program_sdk_at_least();
  if ((change & 0x4000) != 0 && v10)
  {
    superview = [(UIView *)self superview];
    if (objc_opt_respondsToSelector())
    {
      [superview _titleViewLabelMetricsChanged];
    }
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIButtonLabel;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (double)_paddingForBaselineSpacingFromEdge:(int)edge toNeighborEdge:(int)neighborEdge
{
  v5.receiver = self;
  v5.super_class = UIButtonLabel;
  [(UIView *)&v5 _paddingForBaselineSpacingFromEdge:*&edge toNeighborEdge:*&neighborEdge];
  return result;
}

@end