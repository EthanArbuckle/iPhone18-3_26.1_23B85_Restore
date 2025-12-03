@interface PKCalendarDayView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCalendarDayView)initWithDate:(id)date dayString:(id)string delegate:(id)delegate;
- (double)verticalMarginWithBounds:(CGRect)bounds;
- (void)layoutSubviews;
- (void)setDecorationView:(id)view;
- (void)setHideDayLabel:(BOOL)label;
- (void)setSelectable:(BOOL)selectable;
- (void)setSelected:(BOOL)selected;
@end

@implementation PKCalendarDayView

- (PKCalendarDayView)initWithDate:(id)date dayString:(id)string delegate:(id)delegate
{
  dateCopy = date;
  stringCopy = string;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PKCalendarDayView;
  v12 = [(PKCalendarDayView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, date);
    objc_storeStrong(&v13->_delegate, delegate);
    v14 = [[PKCalendarDayLabelView alloc] initWithDayString:stringCopy];
    dayLabelView = v13->_dayLabelView;
    v13->_dayLabelView = v14;

    [(PKCalendarDayView *)v13 addSubview:v13->_dayLabelView];
  }

  return v13;
}

- (void)setSelected:(BOOL)selected
{
  [(PKCalendarDayLabelView *)self->_dayLabelView setSelected:selected];

  [(PKCalendarDayView *)self setNeedsLayout];
}

- (void)setSelectable:(BOOL)selectable
{
  if (self->_selectable != selectable)
  {
    self->_selectable = selectable;
    tapRecognizer = self->_tapRecognizer;
    if (selectable)
    {
      if (!tapRecognizer)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__viewTapped];
        v7 = self->_tapRecognizer;
        self->_tapRecognizer = v6;

        v8 = self->_tapRecognizer;

        [(PKCalendarDayView *)self addGestureRecognizer:v8];
      }
    }

    else
    {
      if (tapRecognizer)
      {
        [(PKCalendarDayView *)self removeGestureRecognizer:self->_tapRecognizer];
        v5 = self->_tapRecognizer;
      }

      else
      {
        v5 = 0;
      }

      self->_tapRecognizer = 0;
    }
  }
}

- (void)setHideDayLabel:(BOOL)label
{
  if (self->_hideDayLabel != label)
  {
    self->_hideDayLabel = label;
    [(PKCalendarDayLabelView *)self->_dayLabelView setHidden:?];
  }
}

- (void)setDecorationView:(id)view
{
  viewCopy = view;
  decorationView = self->_decorationView;
  if (decorationView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)decorationView removeFromSuperview];
    objc_storeStrong(&self->_decorationView, view);
    [(PKCalendarDayView *)self addSubview:self->_decorationView];
    [(PKCalendarDayView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (double)verticalMarginWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PKCalendarDayLabelView *)self->_dayLabelView labelFrameForBounds:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MaxY = CGRectGetMaxY(v17);
  v18.origin.x = v8;
  v18.origin.y = v10;
  v18.size.width = v12;
  v18.size.height = v14;
  return fmax(MaxY - CGRectGetMaxY(v18), 0.0);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCalendarDayView;
  [(PKCalendarDayView *)&v3 layoutSubviews];
  [(PKCalendarDayView *)self bounds];
  [(PKCalendarDayView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKCalendarDayView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  v8 = MEMORY[0x1E695F058];
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  [(PKCalendarDayLabelView *)self->_dayLabelView sizeThatFits:bounds.size.width, 1.79769313e308];
  PKRectCenteredXInRect();
  v14 = v13;
  v15 = v12;
  if (!self->_decorationView)
  {
    v20 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (layout)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  rect = v12;
  v16 = v11;
  [(PKCalendarDayLabelView *)self->_dayLabelView isSelected];
  [(UIView *)self->_decorationView sizeThatFits:width, 1.79769313e308];
  v32.origin.y = 0.0;
  v32.origin.x = v14;
  v32.size.width = v16;
  v32.size.height = rect;
  CGRectGetMaxY(v32);
  PKRectCenteredXInRect();
  v9 = v17;
  v10 = v18;
  v20 = v19;
  v29 = v21;
  v22 = v16;
  v23 = v16;
  v15 = rect;
  [(PKCalendarDayLabelView *)self->_dayLabelView labelFrameForBounds:v14, 0.0, v23, rect];
  if (v20 < v24)
  {
    [(PKCalendarDayLabelView *)self->_dayLabelView totalSpacingBetweenTextAndLabel];
    v9 = v9 + v25 * 0.5;
  }

  v11 = v22;
  v26 = v29;
  if (!layout)
  {
LABEL_5:
    [(PKCalendarDayLabelView *)self->_dayLabelView setFrame:v14, 0.0, v11, v15];
    [(UIView *)self->_decorationView setFrame:v9, v10, v20, v26];
  }

LABEL_6:
  v27 = width;
  v28 = height;
  result.height = v28;
  result.width = v27;
  return result;
}

@end