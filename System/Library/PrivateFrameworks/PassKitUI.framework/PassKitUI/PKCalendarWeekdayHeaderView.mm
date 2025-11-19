@interface PKCalendarWeekdayHeaderView
- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKCalendarWeekdayHeaderView)initWithWeekdayString:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKCalendarWeekdayHeaderView

- (PKCalendarWeekdayHeaderView)initWithWeekdayString:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCalendarWeekdayHeaderView;
  v5 = [(PKCalendarWeekdayHeaderView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v5->_label;
    v5->_label = v6;

    v8 = v5->_label;
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC40], 2, *MEMORY[0x1E69DB980]);
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)v5->_label setText:v4];
    v10 = v5->_label;
    v11 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UILabel *)v10 setTextColor:v11];

    [(PKCalendarWeekdayHeaderView *)v5 addSubview:v5->_label];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCalendarWeekdayHeaderView;
  [(PKCalendarWeekdayHeaderView *)&v3 layoutSubviews];
  [(PKCalendarWeekdayHeaderView *)self bounds];
  [(PKCalendarWeekdayHeaderView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKCalendarWeekdayHeaderView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)a3 isTemplateLayout:(BOOL)a4
{
  width = a3.size.width;
  [(UILabel *)self->_label sizeThatFits:a3.size.width, 3.40282347e38];
  PKRectCenteredIntegralRect();
  v8 = v7;
  if (!a4)
  {
    [(UILabel *)self->_label setFrame:?];
  }

  v9 = v8 + 0.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

@end