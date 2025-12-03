@interface UIPickerTableViewWrapperCell
- (UIEdgeInsets)wrappedViewInsets;
- (UIPickerTableViewWrapperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_anyDateLabel;
- (void)_setIsCenterCell:(BOOL)cell shouldModifyAlphaOfView:(BOOL)view;
- (void)_updateWrappedView;
- (void)_updateWrappedViewFrame;
- (void)prepareForReuse;
- (void)resizeSubviewsWithOldSize:(CGSize)size;
- (void)setWrappedView:(id)view;
- (void)setWrappedViewInsets:(UIEdgeInsets)insets;
@end

@implementation UIPickerTableViewWrapperCell

- (UIPickerTableViewWrapperCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = UIPickerTableViewWrapperCell;
  v4 = [(UIPickerTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(UITableViewCell *)v4 setBackgroundColor:v5];

    [(UITableViewCell *)v4 setSelectionStyle:0];
    v6 = [UIView alloc];
    [(UIView *)v4 bounds];
    v7 = [(UIView *)v6 initWithFrame:?];
    wrappedViewContainer = v4->_wrappedViewContainer;
    v4->_wrappedViewContainer = v7;

    [(UIView *)v4->_wrappedViewContainer setAutoresizingMask:0];
    [(UIView *)v4 addSubview:v4->_wrappedViewContainer];
  }

  return v4;
}

- (void)_setIsCenterCell:(BOOL)cell shouldModifyAlphaOfView:(BOOL)view
{
  if (view)
  {
    wrappedViewContainer = self->_wrappedViewContainer;
    v7 = 0.447;
    if (cell)
    {
      v7 = 1.0;
    }

    [(UIView *)wrappedViewContainer setAlpha:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      useDigitFont = [(UIView *)self->_wrappedView useDigitFont];
      if (cell)
      {
        if (useDigitFont)
        {
          style = [(UIPickerTableViewCell *)self style];
          traitCollection = [(UIView *)self traitCollection];
          v11 = [style centerCellDigitFontWithTraitCollection:traitCollection];
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      if (useDigitFont)
      {
        style = [(UIPickerTableViewCell *)self style];
        traitCollection = [(UIView *)self traitCollection];
        v11 = [style nonCenterCellDigitFontWithTraitCollection:traitCollection];
        goto LABEL_17;
      }
    }

    else if (cell)
    {
LABEL_12:
      style = [(UIPickerTableViewCell *)self style];
      traitCollection = [(UIView *)self traitCollection];
      v11 = [style centerCellFontWithTraitCollection:traitCollection];
      goto LABEL_17;
    }

    style = [(UIPickerTableViewCell *)self style];
    traitCollection = [(UIView *)self traitCollection];
    v11 = [style nonCenterCellFontWithTraitCollection:traitCollection];
LABEL_17:
    v17 = v11;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      titleLabel = [(UIView *)self->_wrappedView titleLabel];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = v17;
      if ((isKindOfClass & 1) == 0)
      {
LABEL_22:

        return;
      }

      dateLabel = [(UIView *)self->_wrappedView dateLabel];
      [dateLabel setFont:v17];

      titleLabel = [(UIView *)self->_wrappedView weekdayLabel];
    }

    v16 = titleLabel;
    [titleLabel setFont:v17];

    v14 = v17;
    goto LABEL_22;
  }
}

- (void)_updateWrappedViewFrame
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  width = self->_wrappedViewSize.width;
  height = self->_wrappedViewSize.height;
  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIPickerTableViewWrapperCell *)self wrappedViewInsets];
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 - (v15 + v19);
  v22 = v14 - (v17 + v21);
  v30.origin.x = v3;
  v30.origin.y = v4;
  v30.size.width = width;
  v30.size.height = height;
  IsEmpty = CGRectIsEmpty(v30);
  if (IsEmpty)
  {
    v24 = v22;
  }

  else
  {
    v24 = height;
  }

  if (IsEmpty)
  {
    v25 = v20;
  }

  else
  {
    v25 = width;
  }

  v26 = round(v16 + (v20 - v25) * 0.5);
  wrappedView = self->_wrappedView;
  v28 = round(v18 + (v22 - v24) * 0.5);

  [(UIView *)wrappedView setFrame:v26, v28];
}

- (void)_updateWrappedView
{
  p_wrappedViewSize = &self->_wrappedViewSize;
  wrappedView = self->_wrappedView;
  if (wrappedView)
  {
    [(UIView *)wrappedView frame];
    p_wrappedViewSize->width = v5;
    p_wrappedViewSize->height = v6;
  }

  else
  {
    *p_wrappedViewSize = *MEMORY[0x1E695F060];
  }

  backgroundColor = [(UIView *)self->_wrappedView backgroundColor];

  if (!backgroundColor)
  {
    v8 = +[UIColor clearColor];
    [(UIView *)self->_wrappedView setBackgroundColor:v8];
  }

  [(UIPickerTableViewWrapperCell *)self _updateWrappedViewFrame];

  [(UITableViewCell *)self setSelectionStyle:0];
}

- (void)setWrappedView:(id)view
{
  viewCopy = view;
  wrappedView = self->_wrappedView;
  v7 = viewCopy;
  if (wrappedView != viewCopy)
  {
    [(UIView *)wrappedView removeFromSuperview];
    objc_storeStrong(&self->_wrappedView, view);
    [(UIView *)self->_wrappedViewContainer addSubview:self->_wrappedView];
  }

  [(UIPickerTableViewWrapperCell *)self _updateWrappedView];
}

- (void)setWrappedViewInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_wrappedViewInsets.top, v3), vceqq_f64(*&self->_wrappedViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_wrappedViewInsets = insets;
    [(UIPickerTableViewWrapperCell *)self _updateWrappedViewFrame];
  }
}

- (void)resizeSubviewsWithOldSize:(CGSize)size
{
  [(UIPickerTableViewWrapperCell *)self _updateWrappedViewFrame:size.width];
  wrappedView = self->_wrappedView;
  if (wrappedView)
  {
    p_wrappedViewSize = &self->_wrappedViewSize;
    [(UIView *)wrappedView frame];
    p_wrappedViewSize->width = v6;
    p_wrappedViewSize->height = v7;
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = UIPickerTableViewWrapperCell;
  [(UITableViewCell *)&v3 prepareForReuse];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_wrappedView setChecked:0];
  }
}

- (id)_anyDateLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleLabel = [(UIView *)self->_wrappedView titleLabel];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      titleLabel = [(UIView *)self->_wrappedView dateLabel];
    }

    else
    {
      titleLabel = 0;
    }
  }

  return titleLabel;
}

- (UIEdgeInsets)wrappedViewInsets
{
  top = self->_wrappedViewInsets.top;
  left = self->_wrappedViewInsets.left;
  bottom = self->_wrappedViewInsets.bottom;
  right = self->_wrappedViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end