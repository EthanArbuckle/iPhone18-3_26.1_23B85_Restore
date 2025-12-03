@interface _UICalendarDecorationImageView
- (_UICalendarDecorationImageView)initWithFrame:(CGRect)frame;
- (void)_updateSymbolConfiguration;
- (void)setDecorationSize:(int64_t)size;
@end

@implementation _UICalendarDecorationImageView

- (_UICalendarDecorationImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UICalendarDecorationImageView;
  v3 = [(UIImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_decorationSize = 1;
    [(_UICalendarDecorationImageView *)v3 _updateSymbolConfiguration];
  }

  return v4;
}

- (void)setDecorationSize:(int64_t)size
{
  if (self->_decorationSize != size)
  {
    self->_decorationSize = size;
    [(_UICalendarDecorationImageView *)self _updateSymbolConfiguration];
  }
}

- (void)_updateSymbolConfiguration
{
  decorationSize = [(_UICalendarDecorationImageView *)self decorationSize];
  if (decorationSize < 3)
  {
    v4 = decorationSize + 1;
  }

  else
  {
    v4 = -1;
  }

  v5 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCaption2" scale:v4];
  [(UIImageView *)self setPreferredSymbolConfiguration:v5];
}

@end