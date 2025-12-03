@interface _UISearchBarPromptContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)contentInset;
- (id)description;
- (void)layoutSubviews;
@end

@implementation _UISearchBarPromptContainerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(UILabel *)self->_promptLabel text:fits.width];
  v6 = [v5 length];

  if (v6)
  {
    useMini = [(_UISearchBarPromptContainerView *)self useMini];
    v8 = 22.0;
    if (!useMini)
    {
      v8 = 34.0;
    }
  }

  else
  {
    v8 = 0.0;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  text = [(UILabel *)self->_promptLabel text];
  v4 = [text length];

  if (v4)
  {
    [(UIView *)self bounds];
    top = self->_contentInset.top;
    left = self->_contentInset.left;
    v8 = v7 + left;
    v10 = v9 + top;
    v31 = v9 + top;
    v32 = v7 + left;
    v12 = v11 - (left + self->_contentInset.right);
    v14 = v13 - (top + self->_contentInset.bottom);
    [(UIView *)self->_promptLabel sizeToFit];
    [(UIView *)self->_promptLabel frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v34.origin.x = v8;
    v34.origin.y = v10;
    v34.size.width = v12;
    v34.size.height = v14;
    CGRectGetWidth(v34);
    v35.origin.x = v16;
    v35.origin.y = v18;
    v35.size.width = v20;
    v35.size.height = v22;
    CGRectGetWidth(v35);
    UIFloorToViewScale(self);
    v24 = v23;
    if ([(_UISearchBarPromptContainerView *)self useMini])
    {
      v25 = 3.0;
    }

    else
    {
      v25 = 12.0;
    }

    v36.origin.x = v24;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    Height = CGRectGetHeight(v36);
    [(UILabel *)self->_promptLabel _baselineOffsetFromBottom];
    v28 = v27;
    v37.origin.y = v31;
    v37.origin.x = v32;
    v37.size.width = v12;
    v37.size.height = v14;
    MaxY = CGRectGetMaxY(v37);
    promptLabel = self->_promptLabel;

    [(UILabel *)promptLabel setFrame:v24, v28 - Height + MaxY - v25, v20, v22];
  }
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = _UISearchBarPromptContainerView;
  v3 = [(UIView *)&v14 description];
  if (os_variant_has_internal_diagnostics())
  {
    text = [(UILabel *)self->_promptLabel text];
    v6 = [text length];

    if (v6)
    {
      text2 = [(UILabel *)self->_promptLabel text];
      v8 = [v3 stringByAppendingFormat:@" %@", text2];

      v3 = v8;
    }

    barMetrics = self->_barMetrics;
    if (barMetrics)
    {
      v10 = _UIBarMetricsDebugDescription(barMetrics);
      v11 = [v3 stringByAppendingFormat:@" %@", v10];

      v3 = v11;
    }

    v12 = *&self->_contentInset.bottom;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_contentInset.top), vceqzq_f64(v12))))))
    {
      v13 = [v3 stringByAppendingFormat:@" contentInset={%g, %g, %g, %g}", *&self->_contentInset.top, *&self->_contentInset.left, *&v12];

      v3 = v13;
    }
  }

  return v3;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end