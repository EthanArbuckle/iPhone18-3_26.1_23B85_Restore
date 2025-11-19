@interface _UITextItemHighlightView
- (UIEdgeInsets)_padding;
- (_UITextItemHighlightView)initWithFrame:(CGRect)a3;
- (void)_updateShape;
- (void)setFillColor:(id)a3;
- (void)setTextLineRects:(id)a3;
@end

@implementation _UITextItemHighlightView

- (_UITextItemHighlightView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UITextItemHighlightView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor systemFillColor];
    [(_UITextItemHighlightView *)v3 setFillColor:v4];
  }

  return v3;
}

- (void)setTextLineRects:(id)a3
{
  objc_storeStrong(&self->_textLineRects, a3);

  [(_UITextItemHighlightView *)self _updateShape];
}

- (void)setFillColor:(id)a3
{
  objc_storeStrong(&self->_fillColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(_UIShapeView *)self shapeLayer];
  [v7 setFillColor:v6];
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
  v3 = [(_UITextItemHighlightView *)self textLineRects];
  [(_UITextItemHighlightView *)self _padding];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UITextItemHighlightView *)self cornerRadius];
  v16 = _UIPreviewParametersGenerateTextPlatter(v3, v5, v7, v9, v11, v12);

  v13 = v16;
  v14 = [v16 CGPath];
  v15 = [(_UIShapeView *)self shapeLayer];
  [v15 setPath:v14];
}

@end