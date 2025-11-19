@interface PKCalendarIconView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCalendarIconView)initWithDate:(id)a3 isDisabled:(BOOL)a4;
- (void)layoutSubviews;
@end

@implementation PKCalendarIconView

- (PKCalendarIconView)initWithDate:(id)a3 isDisabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v31.receiver = self;
  v31.super_class = PKCalendarIconView;
  v7 = [(PKCalendarIconView *)&v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v7)
  {
    if (_MergedGlobals_1_10 != -1)
    {
      dispatch_once(&_MergedGlobals_1_10, &__block_literal_global_218);
    }

    v8 = [qword_1EBD683C0 stringFromDate:v6];
    v30 = [v8 uppercaseString];

    v28 = [qword_1EBD683B8 stringFromDate:v6];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monthLabel = v7->_monthLabel;
    v7->_monthLabel = v9;

    v11 = [MEMORY[0x1E69DC888] redColor];
    v12 = v11;
    if (v4)
    {
      v13 = [v11 colorWithAlphaComponent:0.5];

      v12 = v13;
    }

    [(UILabel *)v7->_monthLabel setTextColor:v12, v28];
    [(UILabel *)v7->_monthLabel setTextAlignment:1];
    v14 = v7->_monthLabel;
    v15 = *MEMORY[0x1E69DDC40];
    v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC40], *MEMORY[0x1E69DB968]);
    [(UILabel *)v14 setFont:v16];

    [(UILabel *)v7->_monthLabel setText:v30];
    [(UILabel *)v7->_monthLabel setAdjustsFontSizeToFitWidth:1];
    [(PKCalendarIconView *)v7 addSubview:v7->_monthLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dayLabel = v7->_dayLabel;
    v7->_dayLabel = v17;

    v19 = [MEMORY[0x1E69DC888] labelColor];

    if (v4)
    {
      v20 = [v19 colorWithAlphaComponent:0.5];

      v19 = v20;
    }

    [(UILabel *)v7->_dayLabel setTextColor:v19];
    [(UILabel *)v7->_dayLabel setTextAlignment:1];
    v21 = v7->_dayLabel;
    v22 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], v15, *MEMORY[0x1E69DB980]);
    [(UILabel *)v21 setFont:v22];

    [(UILabel *)v7->_dayLabel setText:v29];
    [(UILabel *)v7->_dayLabel setAdjustsFontSizeToFitWidth:1];
    [(PKCalendarIconView *)v7 addSubview:v7->_dayLabel];
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [(UILabel *)v7->_monthLabel text];
    [v23 safelyAddObject:v24];

    v25 = [(UILabel *)v7->_dayLabel text];
    [v23 safelyAddObject:v25];

    v26 = [v23 componentsJoinedByString:{@", "}];
    [(PKCalendarIconView *)v7 setAccessibilityLabel:v26];
    [(PKCalendarIconView *)v7 setIsAccessibilityElement:1];
  }

  return v7;
}

uint64_t __46__PKCalendarIconView_initWithDate_isDisabled___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1EBD683B8;
  qword_1EBD683B8 = v0;

  v2 = qword_1EBD683B8;
  v3 = *MEMORY[0x1E695D850];
  v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v2 setCalendar:v4];

  [qword_1EBD683B8 setLocalizedDateFormatFromTemplate:@"d"];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v6 = qword_1EBD683C0;
  qword_1EBD683C0 = v5;

  v7 = qword_1EBD683C0;
  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v3];
  [v7 setCalendar:v8];

  v9 = qword_1EBD683C0;

  return [v9 setLocalizedDateFormatFromTemplate:@"MMM"];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCalendarIconView;
  [(PKCalendarIconView *)&v3 layoutSubviews];
  [(PKCalendarIconView *)self bounds];
  [(PKCalendarIconView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKCalendarIconView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  remainder = a3;
  memset(&slice, 0, sizeof(slice));
  [(UILabel *)self->_monthLabel sizeThatFits:a3.size.width, 3.40282347e38];
  v11 = v10;
  [(UILabel *)self->_dayLabel sizeThatFits:width, 3.40282347e38];
  v13 = v12;
  v14 = fmax(height - (v11 + v12), 0.0) * 0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectDivide(v28, &slice, &remainder, v14, CGRectMinYEdge);
  CGRectDivide(remainder, &slice, &remainder, v11, CGRectMinYEdge);
  PKRectCenteredXInRect();
  v24 = v15;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  CGRectDivide(remainder, &slice, &remainder, v13, CGRectMinYEdge);
  PKRectCenteredXInRect();
  if (!v4)
  {
    [(UILabel *)self->_dayLabel setFrame:?];
    [(UILabel *)self->_monthLabel setFrame:v24, v17 + 2.0, v19, v21];
  }

  v29.origin.x = v24;
  v29.origin.y = v17 + 2.0;
  v29.size.width = v19;
  v29.size.height = v21;
  MaxY = CGRectGetMaxY(v29);
  v23 = width;
  result.height = MaxY;
  result.width = v23;
  return result;
}

@end