@interface _UICalendarHeaderView
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (_UICalendarHeaderView)initWithDataModel:(id)a3 delegate:(id)a4;
- (_UICalendarHeaderViewDelegate)delegate;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_adjustMonth:(id)a3;
- (void)_setupDateFormatter;
- (void)_setupViewHierarchy;
- (void)_updateFont;
- (void)_updateMonthButtonEnablement;
- (void)_updateMonthButtonVisibility;
- (void)_updateMonthYearLabel;
- (void)didMoveToWindow;
- (void)didUpdateCalendar;
- (void)didUpdateLocale;
- (void)didUpdateTimeZone;
- (void)didUpdateVisibleMonth;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation _UICalendarHeaderView

- (_UICalendarHeaderView)initWithDataModel:(id)a3 delegate:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UICalendarHeaderView;
  v9 = [(UIView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_dataModel, a3);
    [(UIView *)v10 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
    [(UIView *)v10 setPreservesSuperviewLayoutMargins:1];
    [(_UICalendarHeaderView *)v10 _setupDateFormatter];
    [(_UICalendarHeaderView *)v10 _setupViewHierarchy];
    [(_UICalendarHeaderView *)v10 _updateMonthYearLabel];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [(UIView *)v10 registerForTraitChanges:v11 withAction:sel__updateFont];
  }

  return v10;
}

- (void)_setupDateFormatter
{
  v11 = [(_UICalendarDataModel *)self->_dataModel effectiveCalendar];
  v3 = [(_UICalendarDataModel *)self->_dataModel effectiveLocale];
  v4 = [(_UICalendarDataModel *)self->_dataModel effectiveTimeZone];
  v5 = objc_opt_new();
  [(NSDateFormatter *)v5 setFormattingContext:2];
  [(NSDateFormatter *)v5 setCalendar:v11];
  [(NSDateFormatter *)v5 setLocale:v3];
  [(NSDateFormatter *)v5 setTimeZone:v4];
  [(NSDateFormatter *)v5 setLocalizedDateFormatFromTemplate:@"MMMMy"];
  longFormatter = self->_longFormatter;
  self->_longFormatter = v5;
  v7 = v5;

  v8 = objc_opt_new();
  [(NSDateFormatter *)v8 setFormattingContext:2];
  [(NSDateFormatter *)v8 setCalendar:v11];
  [(NSDateFormatter *)v8 setLocale:v3];
  v9 = [v11 timeZone];
  [(NSDateFormatter *)v8 setTimeZone:v9];

  [(NSDateFormatter *)v8 setLocalizedDateFormatFromTemplate:@"MMMy"];
  shortFormatter = self->_shortFormatter;
  self->_shortFormatter = v8;
}

- (void)_setupViewHierarchy
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UICalendarViewGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [v4 nextPreviousMonthButtonConfiguration];
  v6 = [(UIView *)self traitCollection];
  v7 = (v5)[2](v5, v6);

  v8 = [UIImage systemImageNamed:@"chevron.backward"];
  [v7 setImage:v8];

  v9 = [UIButton buttonWithConfiguration:v7 primaryAction:0];
  [v9 addTarget:self action:sel__adjustMonth_ forControlEvents:0x2000];
  [(UIView *)self addSubview:v9];
  objc_storeStrong(&self->_previousMonthButton, v9);
  v10 = [UIImage systemImageNamed:@"chevron.forward"];
  [v7 setImage:v10];

  v11 = [UIButton buttonWithConfiguration:v7 primaryAction:0];
  [v11 addTarget:self action:sel__adjustMonth_ forControlEvents:0x2000];
  [(UIView *)self addSubview:v11];
  objc_storeStrong(&self->_nextMonthButton, v11);
  v12 = [v4 monthYearButtonConfiguration];
  v13 = [(UIView *)self traitCollection];
  v14 = (v12)[2](v12, v13);

  v15 = [(UIButton *)_UICalendarHeaderTitleButton buttonWithConfiguration:v14 primaryAction:0];
  v16 = [(UIView *)self traitCollection];
  [v15 setEnabled:{objc_msgSend(v16, "userInterfaceIdiom") != 5}];

  [(UIView *)self addSubview:v15];
  objc_storeStrong(&self->_monthYearButton, v15);
  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __44___UICalendarHeaderView__setupViewHierarchy__block_invoke;
  v21 = &unk_1E70F7450;
  objc_copyWeak(&v22, &location);
  v17 = [UIAction actionWithHandler:&v18];
  [v15 addAction:v17 forControlEvents:{0x2000, v18, v19, v20, v21}];

  [v9 setPreferredBehavioralStyle:1];
  [v11 setPreferredBehavioralStyle:1];
  [v15 setPreferredBehavioralStyle:1];
  [v9 setPointerInteractionEnabled:1];
  [v11 setPointerInteractionEnabled:1];
  [v15 setPointerInteractionEnabled:1];
  [(_UICalendarHeaderView *)self _updateFont];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)didUpdateCalendar
{
  [(_UICalendarHeaderView *)self _setupDateFormatter];

  [(_UICalendarHeaderView *)self _updateMonthYearLabel];
}

- (void)didUpdateLocale
{
  [(_UICalendarHeaderView *)self _setupDateFormatter];

  [(_UICalendarHeaderView *)self _updateMonthYearLabel];
}

- (void)didUpdateTimeZone
{
  [(_UICalendarHeaderView *)self _setupDateFormatter];

  [(_UICalendarHeaderView *)self _updateMonthYearLabel];
}

- (void)didUpdateVisibleMonth
{
  [(_UICalendarHeaderView *)self _updateMonthYearLabel];

  [(_UICalendarHeaderView *)self _updateMonthButtonEnablement];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UICalendarHeaderView;
  [(UIView *)&v4 didMoveToWindow];
  v3 = [(UIView *)self window];

  if (v3)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UICalendarHeaderView;
  [(UIView *)&v3 tintColorDidChange];
  if (self->_expanded)
  {
    [(_UICalendarHeaderView *)self _updateMonthYearLabel];
  }
}

- (void)_updateMonthYearLabel
{
  v13[2] = *MEMORY[0x1E69E9840];
  monthYearButton = self->_monthYearButton;
  longFormatter = self->_longFormatter;
  v5 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v6 = [v5 date];
  v7 = [(NSDateFormatter *)longFormatter stringFromDate:v6];
  v13[0] = v7;
  shortFormatter = self->_shortFormatter;
  v9 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v10 = [v9 date];
  v11 = [(NSDateFormatter *)shortFormatter stringFromDate:v10];
  v13[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  [(_UICalendarHeaderTitleButton *)monthYearButton updateTitles:v12 isExpanded:self->_expanded];

  [(UIView *)self setNeedsLayout];
}

- (void)_updateFont
{
  v3 = [(_UICalendarDataModel *)self->_dataModel fontDesign];
  [(_UICalendarHeaderTitleButton *)self->_monthYearButton setFontDesign:v3];

  [(UIView *)self invalidateIntrinsicContentSize];

  [(UIView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = _UICalendarHeaderView;
  [(UIView *)&v46 layoutSubviews];
  [(UIView *)self bounds];
  if (v3 != 0.0)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = _UICalendarViewGetPlatformMetrics([v4 userInterfaceIdiom]);

    v6 = [(UIView *)self _shouldReverseLayoutDirection];
    v7 = [v5 headerViewInsetsForLayoutMargins];
    [(UIView *)self directionalLayoutMargins];
    v8 = v7[2](v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v15;
    [(UIView *)self bounds];
    if (v6)
    {
      v20 = v14;
    }

    else
    {
      v20 = v10;
    }

    v21 = v20 + v16;
    v22 = v8 + v17;
    v23 = v18 - (v14 + v10);
    v24 = v19 - (v8 + v12);
    v44.origin.x = v20 + v16;
    v44.origin.y = v8 + v17;
    v44.size.width = v23;
    v44.size.height = v24;
    if (v6)
    {
      v25 = CGRectMinXEdge;
    }

    else
    {
      v25 = CGRectMaxXEdge;
    }

    previousMonthButton = self->_previousMonthButton;
    [(UIView *)self bounds];
    [(UIButton *)previousMonthButton sizeThatFits:v27, v28];
    v30 = v29;
    v32 = v31;
    nextMonthButton = self->_nextMonthButton;
    [(UIView *)self bounds];
    [(UIButton *)nextMonthButton sizeThatFits:v34, v35];
    v37 = v36;
    v39 = v38;
    v47.origin.x = v21;
    v47.origin.y = v22;
    v47.size.width = v23;
    v47.size.height = v24;
    CGRectDivide(v47, &slice, &v44, v37, v25);
    v48 = CGRectInset(slice, 0.0, (slice.size.height - v39) * 0.5);
    [(UIButton *)self->_nextMonthButton setFrame:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
    [v5 headerViewInterMonthButtonSpacing];
    if (v40 > 0.0)
    {
      CGRectDivide(v44, &slice, &v44, v40, v25);
    }

    CGRectDivide(v44, &slice, &v44, v30, v25);
    v49 = CGRectInset(slice, 0.0, (slice.size.height - v32) * 0.5);
    [(UIButton *)self->_previousMonthButton setFrame:v49.origin.x, v49.origin.y, v49.size.width, v49.size.height];
    [(_UICalendarHeaderTitleButton *)self->_monthYearButton sizeThatFits:v44.size.width, v44.size.height];
    v42 = v41;
    if (v6)
    {
      x = CGRectGetMaxX(v44) - v41;
    }

    else
    {
      x = v44.origin.x;
    }

    [(UIButton *)self->_monthYearButton setFrame:x, 0.0, v42, v44.size.height];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIView *)self traitCollection];
  v7 = _UICalendarViewGetPlatformMetrics([v6 userInterfaceIdiom]);

  v8 = [v7 headerViewIntrinsicLayoutMarginsForProposedLayoutMargins];
  [(UIView *)self layoutMargins];
  v9 = v8[2](v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(UIButton *)self->_nextMonthButton configuration];
  [v16 contentInsets];
  v18 = v11 + v15 - v17;

  v19 = v9 + v13;
  v20 = width - v18;
  [(_UICalendarHeaderTitleButton *)self->_monthYearButton sizeThatFits:width - v18, height];
  v22 = v21;
  v24 = v23;
  [(UIButton *)self->_previousMonthButton sizeThatFits:v20, height];
  v26 = v25;
  v28 = v27;
  [v7 headerViewInterMonthButtonSpacing];
  v30 = fmax(width - (v20 - (v22 + v29 + v26 + v26)), width);

  v31 = v30;
  v32 = fmax(v19 + v24, v28);
  result.height = v32;
  result.width = v31;
  return result;
}

- (void)_adjustMonth:(id)a3
{
  nextMonthButton = self->_nextMonthButton;
  v6 = [(_UICalendarHeaderView *)self delegate];
  v7 = v6;
  if (nextMonthButton == a3)
  {
    [v6 headerViewDidStepForward:self];
  }

  else
  {
    [v6 headerViewDidStepBackward:self];
  }
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(_UICalendarHeaderView *)self isExpanded]!= a3 && [(UIControl *)self->_monthYearButton isEnabled])
  {
    self->_expanded = v5;
    v7 = [(UIView *)self _shouldReverseLayoutDirection];
    memset(&v15, 0, sizeof(v15));
    if (v5)
    {
      v8 = 1.57079633;
      if (v7)
      {
        v8 = -1.57079633;
      }

      CGAffineTransformMakeRotation(&v15, v8);
    }

    else
    {
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *&v15.a = *MEMORY[0x1E695EFD0];
      *&v15.c = v9;
      *&v15.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = v15;
    v12[2] = __46___UICalendarHeaderView_setExpanded_animated___block_invoke;
    v12[3] = &unk_1E71016A8;
    v12[4] = self;
    v14 = v5;
    v10 = _Block_copy(v12);
    v11 = v10;
    if (v4)
    {
      [UIView animateWithDuration:0 delay:v10 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [_UIPointerSettingsDomain rootSettings:a3];
  v6 = [v5 navigationAndToolbarSettings];

  v7 = self->_monthYearButton;
  [(UIView *)v7 bounds];
  Height = CGRectGetHeight(v26);
  [v6 buttonMinimumHeight];
  v10 = v9 - Height;
  [(UIView *)v7 frame];
  v15 = -0.0;
  if (v10 * 0.5 > 0.0)
  {
    v15 = -(v10 * 0.5);
  }

  v27 = CGRectInset(*&v11, -4.0, v15);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  v19 = v27.size.height;
  v20 = [[UITargetedPreview alloc] initWithView:v7];

  v21 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v20];
  v22 = [UIPointerShape shapeWithRoundedRect:x, y, width, v19];
  v23 = [UIPointerStyle styleWithEffect:v21 shape:v22];

  return v23;
}

- (void)_updateMonthButtonEnablement
{
  v3 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v4 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v5 = [v4 previousMonth];
  v6 = [v3 _ui_containsMonth:v5];

  v7 = [(_UICalendarDataModel *)self->_dataModel availableDateRange];
  v8 = [(_UICalendarDataModel *)self->_dataModel visibleMonth];
  v9 = [v8 nextMonth];
  v10 = [v7 _ui_containsMonth:v9];

  [(UIButton *)self->_previousMonthButton setEnabled:v6];
  nextMonthButton = self->_nextMonthButton;

  [(UIButton *)nextMonthButton setEnabled:v10];
}

- (void)_updateMonthButtonVisibility
{
  if (self->_expanded)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [(UIView *)self->_previousMonthButton setAlpha:v3];
  nextMonthButton = self->_nextMonthButton;

  [(UIView *)nextMonthButton setAlpha:v3];
}

- (_UICalendarHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end