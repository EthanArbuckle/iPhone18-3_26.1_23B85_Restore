@interface _UICalendarHeaderTitleButton
- (CGAffineTransform)chevronTransform;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICalendarHeaderTitleButton)initWithFrame:(CGRect)a3;
- (void)_updateChevron;
- (void)_updateFont;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setChevronTransform:(CGAffineTransform *)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFontDesign:(id)a3;
- (void)updateTitles:(id)a3 isExpanded:(BOOL)a4;
@end

@implementation _UICalendarHeaderTitleButton

- (_UICalendarHeaderTitleButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UICalendarHeaderTitleButton;
  v3 = [(UIButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(_UIDatePickerLinkedLabel *)v4 setAdjustsFontForContentSizeCategory:1];
    v5 = +[UIColor labelColor];
    [(_UIDatePickerLinkedLabel *)v4 setTextColor:v5];

    [(UIView *)v3 addSubview:v4];
    monthYearLabel = v3->_monthYearLabel;
    v3->_monthYearLabel = v4;

    [(_UICalendarHeaderTitleButton *)v3 _updateChevron];
  }

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UICalendarHeaderTitleButton;
  [(UIButton *)&v4 setEnabled:a3];
  [(_UICalendarHeaderTitleButton *)self _updateChevron];
}

- (CGAffineTransform)chevronTransform
{
  result = self->_chevron;
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  return result;
}

- (void)setChevronTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(UIView *)self->_chevron setTransform:v4];
}

- (void)setFontDesign:(id)a3
{
  v5 = a3;
  if (self->_fontDesign != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_fontDesign, a3);
    [(_UICalendarHeaderTitleButton *)self _updateFont];
    v5 = v6;
  }
}

- (void)updateTitles:(id)a3 isExpanded:(BOOL)a4
{
  v6 = a3;
  v7 = [(UIView *)self traitCollection];
  v11 = _UICalendarViewGetPlatformMetrics([v7 userInterfaceIdiom]);

  [(_UIDatePickerLinkedLabel *)self->_monthYearLabel setTitles:v6];
  if (a4)
  {
    v8 = [v11 expandedMonthYearLabelColor];
    [(_UIDatePickerLinkedLabel *)self->_monthYearLabel setTextColor:v8];

    [v11 expandedMonthYearChevronColor];
  }

  else
  {
    v9 = [v11 monthYearLabelColor];
    [(_UIDatePickerLinkedLabel *)self->_monthYearLabel setTextColor:v9];

    [v11 monthYearChevronColor];
  }
  v10 = ;
  [(UIView *)self->_chevron setTintColor:v10];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UICalendarHeaderTitleButton;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    [(UIButton *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIView *)self traitCollection];
  v7 = _UICalendarViewGetPlatformMetrics([v6 userInterfaceIdiom]);

  [(UIImageView *)self->_chevron sizeThatFits:width, height];
  v10 = v9;
  if (self->_chevron)
  {
    v11 = v8 + 4.0;
  }

  else
  {
    v11 = v8;
  }

  [(_UIDatePickerLinkedLabel *)self->_monthYearLabel sizeThatFits:width, height];
  v13 = v11 + v12;
  v15 = fmax(v10, v14);
  [v7 monthYearContainerEdgeInsets];
  v18 = v13 - (v16 + v17);
  v21 = v15 - (v19 + v20);

  v22 = v18;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = _UICalendarHeaderTitleButton;
  [(UIButton *)&v49 layoutSubviews];
  v3 = [(UIView *)self traitCollection];
  v4 = _UICalendarViewGetPlatformMetrics([v3 userInterfaceIdiom]);

  [(UIView *)self bounds];
  v8 = v7;
  v10 = v9;
  v11 = v5;
  v12 = v6;
  chevron = self->_chevron;
  if (chevron)
  {
    [(UIImageView *)chevron sizeThatFits:v5, v6];
    v15 = v14;
    v48 = v16;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v48 = *(MEMORY[0x1E695F060] + 8);
  }

  [(_UIDatePickerLinkedLabel *)self->_monthYearLabel sizeThatFits:v11 - v15 + -4.0, v12];
  v18 = v17;
  v19 = [(UIView *)self _shouldReverseLayoutDirection];
  [v4 monthYearContainerEdgeInsets];
  v23 = v8 - v22;
  v25 = v10 - v24;
  v26 = v11 - (-v21 - v22);
  v27 = v12 - (-v20 - v24);
  v28 = v23;
  if (v19)
  {
    v50.origin.x = v23;
    v50.origin.y = v25;
    v50.size.width = v26;
    v50.size.height = v27;
    v28 = CGRectGetMaxX(v50) - v18;
  }

  [(_UIDatePickerLinkedLabel *)self->_monthYearLabel setFrame:v28, v25, v18, v27];
  if (self->_chevron)
  {
    v47 = v15;
    [(UIView *)self->_monthYearLabel layoutBelowIfNeeded];
    monthYearLabel = self->_monthYearLabel;
    v30 = [(_UIDatePickerLinkedLabel *)monthYearLabel contentLayoutGuide];
    [v30 layoutFrame];
    [(UIView *)monthYearLabel convertRect:self toView:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    rect = v37;

    v51.origin.x = v23;
    v51.origin.y = v25;
    v51.size.width = v26;
    v51.size.height = v27;
    v38 = (CGRectGetHeight(v51) - v48) * 0.5;
    v52.origin.x = v23;
    v52.origin.y = v25;
    v52.size.width = v26;
    v52.size.height = v27;
    v39 = CGRectGetMinY(v52) + v38;
    v40 = v32;
    v41 = v34;
    v42 = v36;
    v43 = rect;
    if (v19)
    {
      v44 = v47;
      v45 = CGRectGetMinX(*&v40) + -4.0 - v47;
    }

    else
    {
      v45 = CGRectGetMaxX(*&v40) + 4.0;
      v44 = v47;
    }

    [(UIImageView *)self->_chevron setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v44, v48];
    [(UIImageView *)self->_chevron setCenter:v44 * 0.5 + v45, v48 * 0.5 + v39];
  }
}

- (void)_updateChevron
{
  if ([(UIControl *)self isEnabled]|| (v3 = self->_chevron) == 0)
  {
    if ([(UIControl *)self isEnabled]&& !self->_chevron)
    {
      v5 = objc_opt_new();
      [(UIView *)v5 setUserInteractionEnabled:0];
      [(UIImageView *)v5 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
      v6 = [UIImage systemImageNamed:@"chevron.forward"];
      [(UIImageView *)v5 setImage:v6];

      [(UIView *)self addSubview:v5];
      chevron = self->_chevron;
      self->_chevron = v5;

      [(_UICalendarHeaderTitleButton *)self _updateFont];
    }
  }

  else
  {
    [(UIView *)v3 removeFromSuperview];
    v4 = self->_chevron;
    self->_chevron = 0;
  }
}

- (void)_updateFont
{
  v3 = [(UIView *)self traitCollection];
  v11 = _UICalendarViewGetPlatformMetrics([v3 userInterfaceIdiom]);

  v4 = [v11 monthYearLabelFontProvider];
  v5 = [(_UICalendarHeaderTitleButton *)self fontDesign];
  v6 = [(UIView *)self traitCollection];
  v7 = (v4)[2](v4, v5, v6);
  [(_UIDatePickerLinkedLabel *)self->_monthYearLabel setFont:v7];

  v8 = [v11 monthYearChevronSymbolConfiguration];
  v9 = [(UIView *)self traitCollection];
  v10 = (v8)[2](v8, v9);
  [(UIImageView *)self->_chevron setPreferredSymbolConfiguration:v10];
}

@end