@interface _UITextItemHighlightView
- (UIEdgeInsets)_padding;
- (_UITextItemHighlightView)initWithFrame:(CGRect)frame;
- (void)_updateShape;
- (void)setFillColor:(id)color;
- (void)setTextLineRects:(id)rects;
@end

@implementation _UITextItemHighlightView

- (_UITextItemHighlightView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UITextItemHighlightView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor systemFillColor];
    [(_UITextItemHighlightView *)v3 setFillColor:v4];
  }

  return v3;
}

- (void)setTextLineRects:(id)rects
{
  objc_storeStrong(&self->_textLineRects, rects);

  [(_UITextItemHighlightView *)self _updateShape];
}

- (void)setFillColor:(id)color
{
  objc_storeStrong(&self->_fillColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  shapeLayer = [(_UIShapeView *)self shapeLayer];
  [shapeLayer setFillColor:cGColor];
}

- (UIEdgeInsets)_padding
{
  v2 = -self->_verticalPadding;
  v3 = -self->_horizontalPadding;
  v4 = v2;
  v5 = v3;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updateShape
{
  textLineRects = [(_UITextItemHighlightView *)self textLineRects];
  [(_UITextItemHighlightView *)self _padding];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UITextItemHighlightView *)self cornerRadius];
  v16 = _UIPreviewParametersGenerateTextPlatter(textLineRects, v5, v7, v9, v11, v12);

  v13 = v16;
  cGPath = [v16 CGPath];
  shapeLayer = [(_UIShapeView *)self shapeLayer];
  [shapeLayer setPath:cGPath];
}

@end