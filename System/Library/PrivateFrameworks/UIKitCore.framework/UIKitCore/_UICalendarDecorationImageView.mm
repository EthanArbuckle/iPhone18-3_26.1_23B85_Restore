@interface _UICalendarDecorationImageView
- (_UICalendarDecorationImageView)initWithFrame:(CGRect)a3;
- (void)_updateSymbolConfiguration;
- (void)setDecorationSize:(int64_t)a3;
@end

@implementation _UICalendarDecorationImageView

- (_UICalendarDecorationImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UICalendarDecorationImageView;
  v3 = [(UIImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_decorationSize = 1;
    [(_UICalendarDecorationImageView *)v3 _updateSymbolConfiguration];
  }

  return v4;
}

- (void)setDecorationSize:(int64_t)a3
{
  if (self->_decorationSize != a3)
  {
    self->_decorationSize = a3;
    [(_UICalendarDecorationImageView *)self _updateSymbolConfiguration];
  }
}

- (void)_updateSymbolConfiguration
{
  v3 = [(_UICalendarDecorationImageView *)self decorationSize];
  if (v3 < 3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = -1;
  }

  v5 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCaption2" scale:v4];
  [(UIImageView *)self setPreferredSymbolConfiguration:v5];
}

@end