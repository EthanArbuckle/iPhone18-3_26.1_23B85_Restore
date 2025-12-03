@interface WFTimeTriggerDayOfWeekCell
- (WFTimeTriggerDayOfWeekCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (WFTimeTriggerDayOfWeekCellDelegate)delegate;
- (void)setSelectedRecurrences:(id)recurrences;
- (void)setupConstraints;
- (void)tintColorDidChange;
- (void)toggleWeekdayButton:(id)button;
- (void)updateSelectedDays;
@end

@implementation WFTimeTriggerDayOfWeekCell

- (WFTimeTriggerDayOfWeekCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setupConstraints
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  buttons = [(WFTimeTriggerDayOfWeekCell *)self buttons];
  v5 = [buttons countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(buttons);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        widthAnchor = [v9 widthAnchor];
        v11 = [widthAnchor constraintEqualToConstant:48.0];

        LODWORD(v12) = 1144733696;
        [v11 setPriority:v12];
        [array addObject:v11];
        heightAnchor = [v9 heightAnchor];
        widthAnchor2 = [v9 widthAnchor];
        v15 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
        [array addObject:v15];
      }

      v6 = [buttons countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  stackView = [(WFTimeTriggerDayOfWeekCell *)self stackView];
  contentView = [(WFTimeTriggerDayOfWeekCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  v19 = [stackView wf_addConstraintsToFillLayoutGuide:layoutMarginsGuide];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)toggleWeekdayButton:(id)button
{
  v27 = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  if ([buttonCopy tag] <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTimeTriggerDayOfWeekCell.m" lineNumber:107 description:{@"Button tag was not setup: %@", buttonCopy}];
  }

  else
  {
    v6 = [buttonCopy tag];
    isSelected = [buttonCopy isSelected];
    currentHandler = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [currentHandler setWeekday:v6];
    selectedRecurrences = [(WFTimeTriggerDayOfWeekCell *)self selectedRecurrences];
    v10 = [selectedRecurrences mutableCopy];

    if (isSelected)
    {
      v21 = a2;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          if ([v16 weekday] == v6)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v18 = v16;

        if (!v18)
        {
          goto LABEL_12;
        }
      }

      else
      {
LABEL_11:

LABEL_12:
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:v21 object:self file:@"WFTimeTriggerDayOfWeekCell.m" lineNumber:129 description:{@"Asked to deselect date components (%@), which isn't in the set of currently-selected date components (%@)", currentHandler, v11}];

        v18 = 0;
      }

      [v11 removeObject:v18];
    }

    else
    {
      [v10 addObject:currentHandler];
    }

    [(WFTimeTriggerDayOfWeekCell *)self setSelectedRecurrences:v10];
    delegate = [(WFTimeTriggerDayOfWeekCell *)self delegate];
    selectedRecurrences2 = [(WFTimeTriggerDayOfWeekCell *)self selectedRecurrences];
    [delegate dayOfWeekPickerCell:self didChangeSelectedRecurrences:selectedRecurrences2];
  }
}

- (void)updateSelectedDays
{
  v19 = *MEMORY[0x277D85DE8];
  selectedRecurrences = [(WFTimeTriggerDayOfWeekCell *)self selectedRecurrences];
  v4 = [selectedRecurrences if_compactMap:&__block_literal_global_11535];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  buttons = [(WFTimeTriggerDayOfWeekCell *)self buttons];
  v6 = [buttons countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "tag")}];
        [v10 setSelected:{objc_msgSend(v4, "containsObject:", v11)}];

        if ([v10 isSelected])
        {
          [(WFTimeTriggerDayOfWeekCell *)self tintColor];
        }

        else
        {
          [MEMORY[0x277D75348] systemGrayColor];
        }
        v12 = ;
        [v10 setBackgroundColor:v12];

        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [v10 setTitleColor:whiteColor forState:0];
      }

      v7 = [buttons countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

id __48__WFTimeTriggerDayOfWeekCell_updateSelectedDays__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 weekday] < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "weekday")}];
  }

  return v3;
}

- (void)setSelectedRecurrences:(id)recurrences
{
  objc_storeStrong(&self->_selectedRecurrences, recurrences);

  [(WFTimeTriggerDayOfWeekCell *)self updateSelectedDays];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = WFTimeTriggerDayOfWeekCell;
  [(WFTimeTriggerDayOfWeekCell *)&v3 tintColorDidChange];
  [(WFTimeTriggerDayOfWeekCell *)self updateSelectedDays];
}

- (WFTimeTriggerDayOfWeekCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v26.receiver = self;
  v26.super_class = WFTimeTriggerDayOfWeekCell;
  v4 = [(WFTimeTriggerDayOfWeekCell *)&v26 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WFTimeTriggerDayOfWeekCell *)v4 setSelectionStyle:0];
    v6 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v5->_stackView;
    v5->_stackView = v6;

    [(UIStackView *)v5->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_stackView setSpacing:14.0];
    [(UIStackView *)v5->_stackView setDistribution:1];
    contentView = [(WFTimeTriggerDayOfWeekCell *)v5 contentView];
    [contentView addSubview:v5->_stackView];

    v9 = objc_opt_new();
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    veryShortWeekdaySymbols = [currentCalendar veryShortWeekdaySymbols];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    firstWeekday = [currentCalendar2 firstWeekday];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__WFTimeTriggerDayOfWeekCell_initWithStyle_reuseIdentifier___block_invoke;
    v22[3] = &unk_279EE7EF8;
    v14 = v5;
    v24 = v9;
    v25 = firstWeekday;
    v23 = v14;
    v15 = v9;
    [veryShortWeekdaySymbols enumerateObjectsUsingBlock:v22];
    [(WFTimeTriggerDayOfWeekCell *)v14 setButtons:v15];
    [(WFTimeTriggerDayOfWeekCell *)v14 setupConstraints];
    [(WFTimeTriggerDayOfWeekCell *)v14 updateSelectedDays];
    stackView = [(WFTimeTriggerDayOfWeekCell *)v14 stackView];
    contentView2 = [(WFTimeTriggerDayOfWeekCell *)v14 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    v19 = [stackView wf_addConstraintsToFillLayoutGuide:layoutMarginsGuide];

    v20 = v14;
  }

  return v5;
}

void __60__WFTimeTriggerDayOfWeekCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = [WFDayOfWeekButton buttonWithType:0];
  [v11 setTitle:v5 forState:0];

  v6 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277D74368] weight:17.0 design:*MEMORY[0x277D74410]];
  v7 = [v11 titleLabel];
  [v7 setFont:v6];

  v8 = [v11 titleLabel];
  [v8 setTextAlignment:1];

  [v11 setTag:a3 + 1];
  [v11 addTarget:*(a1 + 32) action:sel_toggleWeekdayButton_ forControlEvents:64];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([v11 tag] >= *(a1 + 48))
  {
    v10 = [v11 tag] - *(a1 + 48);
    [*(a1 + 40) insertObject:v11 atIndex:v10];
    v9 = [*(a1 + 32) stackView];
    [v9 insertArrangedSubview:v11 atIndex:v10];
  }

  else
  {
    [*(a1 + 40) addObject:v11];
    v9 = [*(a1 + 32) stackView];
    [v9 addArrangedSubview:v11];
  }
}

@end