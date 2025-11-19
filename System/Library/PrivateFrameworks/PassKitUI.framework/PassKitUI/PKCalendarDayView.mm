@interface PKCalendarDayView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCalendarDayView)initWithDate:(id)a3 dayString:(id)a4 delegate:(id)a5;
- (double)verticalMarginWithBounds:(CGRect)a3;
- (void)layoutSubviews;
- (void)setDecorationView:(id)a3;
- (void)setHideDayLabel:(BOOL)a3;
- (void)setSelectable:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation PKCalendarDayView

- (PKCalendarDayView)initWithDate:(id)a3 dayString:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PKCalendarDayView;
  v12 = [(PKCalendarDayView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, a3);
    objc_storeStrong(&v13->_delegate, a5);
    v14 = [[PKCalendarDayLabelView alloc] initWithDayString:v10];
    dayLabelView = v13->_dayLabelView;
    v13->_dayLabelView = v14;

    [(PKCalendarDayView *)v13 addSubview:v13->_dayLabelView];
  }

  return v13;
}

- (void)setSelected:(BOOL)a3
{
  [(PKCalendarDayLabelView *)self->_dayLabelView setSelected:a3];

  [(PKCalendarDayView *)self setNeedsLayout];
}

- (void)setSelectable:(BOOL)a3
{
  if (self->_selectable != a3)
  {
    self->_selectable = a3;
    tapRecognizer = self->_tapRecognizer;
    if (a3)
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

- (void)setHideDayLabel:(BOOL)a3
{
  if (self->_hideDayLabel != a3)
  {
    self->_hideDayLabel = a3;
    [(PKCalendarDayLabelView *)self->_dayLabelView setHidden:?];
  }
}

- (void)setDecorationView:(id)a3
{
  v5 = a3;
  decorationView = self->_decorationView;
  if (decorationView != v5)
  {
    v7 = v5;
    [(UIView *)decorationView removeFromSuperview];
    objc_storeStrong(&self->_decorationView, a3);
    [(PKCalendarDayView *)self addSubview:self->_decorationView];
    [(PKCalendarDayView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (double)verticalMarginWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKCalendarDayView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v8 = MEMORY[0x1E695F058];
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  [(PKCalendarDayLabelView *)self->_dayLabelView sizeThatFits:a3.size.width, 1.79769313e308];
  PKRectCenteredXInRect();
  v14 = v13;
  v15 = v12;
  if (!self->_decorationView)
  {
    v20 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (a4)
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
  if (!a4)
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