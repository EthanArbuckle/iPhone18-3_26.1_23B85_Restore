@interface PKCalendarMonthView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCalendarMonthView)init;
- (void)_formViewsWithDataSource:(id)source appearance:(id)appearance headerView:(id)view;
- (void)calendarDayViewTapped:(id)tapped withDate:(id)date;
- (void)layoutSubviews;
@end

@implementation PKCalendarMonthView

- (PKCalendarMonthView)init
{
  v9.receiver = self;
  v9.super_class = PKCalendarMonthView;
  v2 = [(PKCalendarMonthView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    layer = [(PKCalendarMonthView *)v2 layer];
    v5 = _UISolariumFeatureFlagEnabled();
    v6 = 10.0;
    if (v5)
    {
      v6 = 26.0;
    }

    [layer setCornerRadius:v6];
    [layer setMaskedCorners:15];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKCalendarMonthView *)v3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(PKCalendarMonthView *)v3 setClipsToBounds:1];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKCalendarMonthView;
  [(PKCalendarMonthView *)&v3 layoutSubviews];
  [(PKCalendarMonthView *)self bounds];
  [(PKCalendarMonthView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKCalendarMonthView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  x = bounds.origin.x;
  width = bounds.size.width;
  y = bounds.origin.y;
  v72 = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  if ([(NSArray *)self->_dayViews count])
  {
    v8 = [(NSArray *)self->_dayViews objectAtIndexedSubscript:0];
    [v8 count];
  }

  v9 = [(NSArray *)self->_dayViews count];
  v10 = width + -16.0;
  PKFloatRoundToPixel();
  v12 = v11;
  if ([(NSArray *)self->_dayViews count])
  {
    v13 = [(NSArray *)self->_dayViews objectAtIndexedSubscript:0];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [(NSArray *)self->_dayViews objectAtIndexedSubscript:0];
      v16 = [v15 objectAtIndexedSubscript:0];

      [v16 verticalMarginWithBounds:{x + 8.0, y + 0.0, v12, v12}];
      v7 = v17;
    }
  }

  v18 = v7 + 0.0;
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  headerView = self->_headerView;
  v62 = *(MEMORY[0x1E695F058] + 24);
  v63 = *MEMORY[0x1E695F058];
  if (headerView)
  {
    v22 = v7;
    v23 = *(MEMORY[0x1E695F058] + 16);
    [(UIView *)headerView sizeThatFits:width + -32.0, 3.40282347e38];
    v24 = width;
    PKRectCenteredXInRect();
    v53 = v25;
    v55 = v26;
    v57 = v27;
    v59 = v28;
    v20 = v23;
    v7 = v22;
    v18 = v22 + v18 + v28;
  }

  else
  {
    v24 = width;
    v57 = *(MEMORY[0x1E695F058] + 16);
    v59 = *(MEMORY[0x1E695F058] + 24);
    v53 = *MEMORY[0x1E695F058];
    v55 = *(MEMORY[0x1E695F058] + 8);
  }

  if (self->_headerSeparatorView)
  {
    PKUIPixelLength();
    v29 = v24;
    PKRectCenteredXInRect();
    v63 = v30;
    v64 = v31;
    v66 = v32;
    v62 = v33;
    v18 = v18 + v33;
  }

  else
  {
    v64 = v20;
    v66 = v19;
    v29 = v24;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v34 = self->_weekdayHeaders;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v68;
    v38 = 0.0;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v68 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v67 + 1) + 8 * i) sizeThatFits:{v10, 3.40282347e38, v53, v55, v57, *&v59}];
        v38 = fmax(v38, v40);
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v67 objects:v71 count:16];
    }

    while (v36);
  }

  else
  {
    v38 = 0.0;
  }

  v41 = v9;

  v42 = v18 + v38;
  if (!layout)
  {
    if ([(NSArray *)self->_weekdayHeaders count])
    {
      v43 = 0;
      do
      {
        v44 = [(NSArray *)self->_weekdayHeaders objectAtIndexedSubscript:v43, v53, v55, v57, *&v59];
        [v44 setFrame:{v43 * v12 + 8.0, v42, v12, v38}];

        ++v43;
      }

      while (v43 < [(NSArray *)self->_weekdayHeaders count]);
    }

    if ([(NSArray *)self->_weekdayHeaders count:v53])
    {
      v42 = v7 + v42;
    }

    if (v9)
    {
      v45 = 0;
      v46 = 0.0;
      do
      {
        v47 = [(NSArray *)self->_dayViews objectAtIndexedSubscript:v45];
        if ([v47 count])
        {
          v48 = 0;
          v49 = v7 + v42 + v46 * v12;
          do
          {
            v50 = [v47 objectAtIndexedSubscript:v48];
            [v50 setFrame:{v48 * v12 + 8.0, v49, v12, v12}];

            ++v48;
          }

          while (v48 < [v47 count]);
        }

        v46 = ++v45;
      }

      while (v45 < v41);
    }

    [(UIView *)self->_headerView setFrame:v54, v56, v58, v60];
    [(UIView *)self->_headerSeparatorView setFrame:v63, v66, v64, v62];
  }

  v51 = v7 + v12 * v41 + v7 + 10.0 + v42;
  v52 = v29;
  result.height = v51;
  result.width = v52;
  return result;
}

- (void)calendarDayViewTapped:(id)tapped withDate:(id)date
{
  tappedCopy = tapped;
  [(PKCalendarDayView *)self->_selectedDayView setSelected:0];
  selectedDayView = self->_selectedDayView;
  self->_selectedDayView = tappedCopy;
  v7 = tappedCopy;

  [(PKCalendarDayView *)self->_selectedDayView setSelected:1];
}

- (void)_formViewsWithDataSource:(id)source appearance:(id)appearance headerView:(id)view
{
  v76 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  appearanceCopy = appearance;
  viewCopy = view;
  viewCopy2 = view;
  selectedDayView = self->_selectedDayView;
  self->_selectedDayView = 0;

  [(UIView *)self->_headerView removeFromSuperview];
  [(UIView *)self->_headerSeparatorView removeFromSuperview];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = self->_weekdayHeaders;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v70;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v69 + 1) + 8 * i) removeFromSuperview];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v12);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  v15 = self->_dayViews;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v66;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v65 + 1) + 8 * j);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v62;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v62 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v61 + 1) + 8 * k) removeFromSuperview];
            }

            v23 = [v21 countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v23);
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v17);
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  calendarMonthStartDate = [sourceCopy calendarMonthStartDate];
  calendar = [sourceCopy calendar];
  numberOfWeeks = [sourceCopy numberOfWeeks];
  numberOfDaysInWeek = [sourceCopy numberOfDaysInWeek];
  v51 = numberOfWeeks;
  v28 = appearanceCopy;
  v29 = selfCopy;
  if (numberOfWeeks >= 1)
  {
    v30 = numberOfDaysInWeek;
    v31 = 0;
    v60 = 0;
    v50 = numberOfDaysInWeek;
    do
    {
      v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v53 = v31;
      v32 = v30;
      if (v30 >= 1)
      {
        do
        {
          v33 = objc_alloc_init(MEMORY[0x1E695DF10]);
          [v33 setDay:v31];
          v34 = [calendar dateByAddingComponents:v33 toDate:calendarMonthStartDate options:0];
          v35 = [sourceCopy stringForDay:v34];
          v36 = [[PKCalendarDayView alloc] initWithDate:v34 dayString:v35 delegate:v29];
          v37 = [v28 decorationViewForDayView:v36 date:v34];
          -[PKCalendarDayView setHideDayLabel:](v36, "setHideDayLabel:", [sourceCopy shouldShowDate:v34] ^ 1);
          -[PKCalendarDayView setSelectable:](v36, "setSelectable:", [sourceCopy canSelectDate:v34]);
          -[PKCalendarDayView setSelected:](v36, "setSelected:", [sourceCopy isDateSelected:v34]);
          [(PKCalendarDayView *)v36 setDecorationView:v37];
          [v59 addObject:v36];
          [(PKCalendarMonthView *)v29 addSubview:v36];
          if (!v60)
          {
            v38 = [sourceCopy stringForWeekday:v34];
            if (v38)
            {
              v39 = [[PKCalendarWeekdayHeaderView alloc] initWithWeekdayString:v38];
              [v54 addObject:v39];
              [(PKCalendarMonthView *)selfCopy addSubview:v39];

              v28 = appearanceCopy;
            }

            v29 = selfCopy;
          }

          ++v31;
          --v32;
        }

        while (v32);
      }

      [v52 addObject:v59];

      v30 = v50;
      v31 = v53 + v50;
      ++v60;
    }

    while (v60 != v51);
  }

  objc_storeStrong(&v29->_headerView, viewCopy);
  [(PKCalendarMonthView *)v29 addSubview:v29->_headerView];
  if (v29->_headerView)
  {
    v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
    headerSeparatorView = v29->_headerSeparatorView;
    v29->_headerSeparatorView = v40;

    v42 = v29->_headerSeparatorView;
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v42 setBackgroundColor:separatorColor];

    [(PKCalendarMonthView *)v29 addSubview:v29->_headerSeparatorView];
  }

  v44 = [v52 copy];
  dayViews = v29->_dayViews;
  v29->_dayViews = v44;

  v46 = [v54 count];
  if (v46)
  {
    v46 = [v54 copy];
  }

  weekdayHeaders = v29->_weekdayHeaders;
  v29->_weekdayHeaders = v46;
}

@end