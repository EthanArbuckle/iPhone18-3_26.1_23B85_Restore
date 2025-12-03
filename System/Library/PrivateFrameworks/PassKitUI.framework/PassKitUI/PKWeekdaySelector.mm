@interface PKWeekdaySelector
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKWeekdaySelector)init;
- (PKWeekdaySelectorDelegate)delegate;
- (void)_weekdayTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setFrame:(CGRect)frame;
- (void)setSelectedDays:(id)days possibleDays:(id)possibleDays;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PKWeekdaySelector

- (PKWeekdaySelector)init
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKWeekdaySelector;
  v2 = [(PKWeekdaySelector *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    selectedWeekdays = v2->_selectedWeekdays;
    v2->_selectedWeekdays = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v2->_stackView;
    v2->_stackView = v5;

    [(UIStackView *)v2->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v2->_stackView setDirectionalLayoutMargins:0.0, 10.0, 0.0, 10.0];
    [(UIStackView *)v2->_stackView setDistribution:1];
    [(UIStackView *)v2->_stackView setAlignment:0];
    [(UIStackView *)v2->_stackView setAxis:0];
    [(PKWeekdaySelector *)v2 addSubview:v2->_stackView];
    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    veryShortWeekdaySymbols = [autoupdatingCurrentCalendar veryShortWeekdaySymbols];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = veryShortWeekdaySymbols;
    v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [[PKCalendarDayLabelView alloc] initWithDayString:*(*(&v22 + 1) + 8 * i)];
          arrangedSubviews = [(UIStackView *)v2->_stackView arrangedSubviews];
          -[PKCalendarDayLabelView setTag:](v12, "setTag:", [arrangedSubviews count] + 1);

          v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v2 action:sel__weekdayTapped_];
          [(PKCalendarDayLabelView *)v12 addGestureRecognizer:v14];
          linkColor = [MEMORY[0x1E69DC888] linkColor];
          v16 = [linkColor colorWithAlphaComponent:0.2];

          [(PKCalendarDayLabelView *)v12 setHighlightBackgroundColor:v16];
          linkColor2 = [MEMORY[0x1E69DC888] linkColor];
          [(PKCalendarDayLabelView *)v12 setHighlightTextColor:linkColor2];

          [(PKCalendarDayLabelView *)v12 setHighlightPadding:20.0];
          grayColor = [MEMORY[0x1E69DC888] grayColor];
          [(PKCalendarDayLabelView *)v12 setDisabledTextColor:grayColor];

          [(UIStackView *)v2->_stackView addArrangedSubview:v12];
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }
  }

  return v2;
}

- (void)_weekdayTapped:(id)tapped
{
  view = [tapped view];
  isSelected = [view isSelected];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(view, "tag")}];
  selectedWeekdays = self->_selectedWeekdays;
  if (isSelected)
  {
    [(NSMutableSet *)selectedWeekdays removeObject:v5];
  }

  else
  {
    [(NSMutableSet *)selectedWeekdays addObject:v5];
  }

  [view setSelected:isSelected ^ 1u];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  allObjects = [(NSMutableSet *)self->_selectedWeekdays allObjects];
  [WeakRetained weekdaySelector:self didUpdateSelectedWeekdays:allObjects];
}

- (void)setSelectedDays:(id)days possibleDays:(id)possibleDays
{
  v27 = *MEMORY[0x1E69E9840];
  daysCopy = days;
  possibleDaysCopy = possibleDays;
  v21 = daysCopy;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:daysCopy];
  selectedWeekdays = self->_selectedWeekdays;
  self->_selectedWeekdays = v8;

  if (possibleDaysCopy)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:possibleDaysCopy];
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&self->_possibleWeekdays, v10);
  if (possibleDaysCopy)
  {
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v12 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "tag")}];
        [v16 setSelected:{-[NSMutableSet containsObject:](self->_selectedWeekdays, "containsObject:", v17)}];
        possibleWeekdays = self->_possibleWeekdays;
        if (possibleWeekdays)
        {
          v19 = [(NSMutableSet *)possibleWeekdays containsObject:v17];
        }

        else
        {
          v19 = 1;
        }

        [v16 setUserInteractionEnabled:v19];
      }

      v13 = [arrangedSubviews countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = PKWeekdaySelector;
  [(PKWeekdaySelector *)&v18 setUserInteractionEnabled:?];
  [(UIStackView *)self->_stackView setUserInteractionEnabled:enabledCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v6 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "tag")}];
        possibleWeekdays = self->_possibleWeekdays;
        if (possibleWeekdays)
        {
          v13 = [(NSMutableSet *)possibleWeekdays containsObject:v11];
        }

        else
        {
          v13 = 1;
        }

        [v10 setUserInteractionEnabled:enabledCopy & v13];
      }

      v7 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v8.receiver = self;
  v8.super_class = PKWeekdaySelector;
  [(PKWeekdaySelector *)&v8 setDirectionalLayoutMargins:?];
  [(UIStackView *)self->_stackView setDirectionalLayoutMargins:top, leading, bottom, trailing];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PKWeekdaySelector;
  [(PKWeekdaySelector *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKWeekdaySelector *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKWeekdaySelector;
  [(PKWeekdaySelector *)&v3 layoutSubviews];
  [(PKWeekdaySelector *)self bounds];
  [(PKWeekdaySelector *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKWeekdaySelector *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  width = bounds.size.width;
  v7 = [(UIStackView *)self->_stackView arrangedSubviews:bounds.origin.x];
  firstObject = [v7 firstObject];

  [firstObject sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;
  if (!layout)
  {
    [(UIStackView *)self->_stackView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, v9];
    [(UIStackView *)self->_stackView layoutSubviews];
  }

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (PKWeekdaySelectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end