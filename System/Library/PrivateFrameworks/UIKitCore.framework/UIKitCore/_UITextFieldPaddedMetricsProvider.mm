@interface _UITextFieldPaddedMetricsProvider
- (CGRect)contentFrameForBounds:(CGRect)a3;
- (CGSize)intrinsicSizeForContentSize:(CGSize)a3;
- (UIEdgeInsets)padding;
- (_UITextFieldPaddedMetricsProvider)init;
- (_UITextFieldPaddedMetricsProvider)initWithPerEdgePadding:(UIEdgeInsets)a3;
- (_UITextFieldPaddedMetricsProvider)initWithSymmetricalPadding:(CGSize)a3;
@end

@implementation _UITextFieldPaddedMetricsProvider

- (_UITextFieldPaddedMetricsProvider)init
{
  v3.receiver = self;
  v3.super_class = _UITextFieldPaddedMetricsProvider;
  result = [(_UITextFieldPaddedMetricsProvider *)&v3 init];
  if (result)
  {
    *&result->_padding.bottom = 0u;
    *&result->_padding.top = 0u;
  }

  return result;
}

- (_UITextFieldPaddedMetricsProvider)initWithSymmetricalPadding:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = _UITextFieldPaddedMetricsProvider;
  result = [(_UITextFieldPaddedMetricsProvider *)&v6 init];
  if (result)
  {
    result->_padding.top = height;
    result->_padding.left = width;
    result->_padding.bottom = height;
    result->_padding.right = width;
  }

  return result;
}

- (_UITextFieldPaddedMetricsProvider)initWithPerEdgePadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = _UITextFieldPaddedMetricsProvider;
  result = [(_UITextFieldPaddedMetricsProvider *)&v8 init];
  if (result)
  {
    result->_padding.top = top;
    result->_padding.left = left;
    result->_padding.bottom = bottom;
    result->_padding.right = right;
  }

  return result;
}

- (CGRect)contentFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    top = self->_padding.top;
    left = self->_padding.left;
    v10 = width - left - self->_padding.right;
    width = fmax(v10, 0.0);
    if (v10 >= 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10 * 0.5;
    }

    v12 = height - top - self->_padding.bottom;
    v13 = v12 * 0.5;
    if (v12 >= 0.0)
    {
      v13 = 0.0;
    }

    height = fmax(v12, 0.0);
    x = x + left + v11;
    y = y + top + v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)intrinsicSizeForContentSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  [(_UITextFieldPaddedMetricsProvider *)self minimumIntrinsicHeight];
  if (v4 > 0.0)
  {
    v5 = dyld_program_sdk_at_least();
    [(_UITextFieldPaddedMetricsProvider *)self minimumIntrinsicHeight];
    v7 = fmax(height, v6);
    if (v5)
    {
      v6 = v7;
    }

    height = v6;
  }

  v8.f64[0] = height;
  v8.f64[1] = width;
  v9 = vsubq_f64(v8, vsubq_f64(vnegq_f64(*&self->_padding.bottom), *&self->_padding.top));
  v10 = v9.f64[1];
  result.height = v9.f64[0];
  result.width = v10;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end