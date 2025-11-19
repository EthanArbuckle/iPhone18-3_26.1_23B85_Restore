@interface UIButtonLabel
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)_textColorFollowsTintColor;
- (CGSize)intrinsicContentSize;
- (CGSize)shadowOffset;
- (double)_paddingForBaselineSpacingFromEdge:(int)a3 toNeighborEdge:(int)a4;
- (id)_initWithFrame:(CGRect)a3 button:(id)a4;
- (void)_contentDidChange:(int64_t)a3 fromContent:(id)a4;
- (void)_internallySetNumberOfLines:(int64_t)a3;
- (void)_setFont:(id)a3 isDefaultForIdiom:(BOOL)a4;
- (void)_setWantsAutolayout;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setReverseShadow:(BOOL)a3;
- (void)setShadowOffset:(CGSize)a3;
@end

@implementation UIButtonLabel

- (BOOL)_textColorFollowsTintColor
{
  WeakRetained = objc_loadWeakRetained(&self->_button);
  v4 = [WeakRetained _isModernButton];

  if (v4)
  {
    v16 = 0;
    v5 = objc_loadWeakRetained(&self->_button);
    v6 = [v5 _titleColorForState:objc_msgSend(v5 suppressTintColorFollowing:{"state"), &v16}];

    v7 = 0;
    if ((v16 & 1) == 0)
    {
      v8 = objc_loadWeakRetained(&self->_button);
      v9 = [v8 _contentForState:{objc_msgSend(v8, "state")}];
      v10 = [v9 titleColor];
      if (v10)
      {
        v7 = 0;
      }

      else
      {
        v11 = objc_loadWeakRetained(&self->_button);
        v12 = [v11 _contentForState:0];
        v13 = [v12 titleColor];
        v7 = v13 == 0;
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
  v7 = [(UILabel *)self text];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = [(UILabel *)self font];
    v10 = v9;
    if (!v9)
    {
      v10 = +[UILabel defaultFont];
    }

    [@"X" _legacy_sizeWithFont:v10 forWidth:-[UILabel lineBreakMode](self lineBreakMode:{"lineBreakMode"), 3.40282347e38}];
    v6 = v11;
    if (!v9)
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

- (void)setNumberOfLines:(int64_t)a3
{
  self->_externallySetNumberOfLines = 1;
  v3.receiver = self;
  v3.super_class = UIButtonLabel;
  [(UILabel *)&v3 setNumberOfLines:a3];
}

- (void)_internallySetNumberOfLines:(int64_t)a3
{
  if (!self->_externallySetNumberOfLines)
  {
    v3.receiver = self;
    v3.super_class = UIButtonLabel;
    [(UILabel *)&v3 setNumberOfLines:a3];
  }
}

- (id)_initWithFrame:(CGRect)a3 button:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = UIButtonLabel;
  v10 = [(UILabel *)&v14 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_button, v9);
    v12 = v11;
  }

  return v11;
}

- (void)_setFont:(id)a3 isDefaultForIdiom:(BOOL)a4
{
  self->_fontIsDefaultForIdiom = a4;
  v4.receiver = self;
  v4.super_class = UIButtonLabel;
  [(UILabel *)&v4 setFont:a3];
}

- (void)setShadowOffset:(CGSize)a3
{
  v3 = -a3.width;
  v4 = -a3.height;
  if (self->_reverseShadow)
  {
    a3.width = -a3.width;
    a3.height = -a3.height;
  }

  v5.receiver = self;
  v5.super_class = UIButtonLabel;
  [(UILabel *)&v5 setShadowOffset:a3.width, a3.height, v3, v4];
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

- (void)setReverseShadow:(BOOL)a3
{
  if (self->_reverseShadow != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_reverseShadow = a3;
    v9.receiver = self;
    v9.super_class = UIButtonLabel;
    [(UILabel *)&v9 shadowOffset];
    v8.receiver = self;
    v8.super_class = UIButtonLabel;
    [(UILabel *)&v8 setShadowOffset:-v6, -v7];
  }
}

- (void)_contentDidChange:(int64_t)a3 fromContent:(id)a4
{
  v12.receiver = self;
  v12.super_class = UIButtonLabel;
  v6 = a4;
  [(UILabel *)&v12 _contentDidChange:a3 fromContent:v6];
  v7 = [(UILabel *)self lineBreakMode:v12.receiver];
  v8 = [v6 paragraphStyle];

  v9 = [v8 lineBreakMode];
  if ((a3 & 0x8000) != 0 && v7 != v9)
  {
    [(UIButtonLabel *)self _internallySetNumberOfLines:v7 > NSLineBreakByCharWrapping];
  }

  v10 = dyld_program_sdk_at_least();
  if ((a3 & 0x4000) != 0 && v10)
  {
    v11 = [(UIView *)self superview];
    if (objc_opt_respondsToSelector())
    {
      [v11 _titleViewLabelMetricsChanged];
    }
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIButtonLabel;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (double)_paddingForBaselineSpacingFromEdge:(int)a3 toNeighborEdge:(int)a4
{
  v5.receiver = self;
  v5.super_class = UIButtonLabel;
  [(UIView *)&v5 _paddingForBaselineSpacingFromEdge:*&a3 toNeighborEdge:*&a4];
  return result;
}

@end