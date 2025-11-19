@interface WFTimeTriggerDayOfWeekCell
- (WFTimeTriggerDayOfWeekCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (WFTimeTriggerDayOfWeekCellDelegate)delegate;
- (void)setSelectedRecurrences:(id)a3;
- (void)setupConstraints;
- (void)tintColorDidChange;
- (void)toggleWeekdayButton:(id)a3;
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
  v3 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(WFTimeTriggerDayOfWeekCell *)self buttons];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [v9 widthAnchor];
        v11 = [v10 constraintEqualToConstant:48.0];

        LODWORD(v12) = 1144733696;
        [v11 setPriority:v12];
        [v3 addObject:v11];
        v13 = [v9 heightAnchor];
        v14 = [v9 widthAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        [v3 addObject:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = [(WFTimeTriggerDayOfWeekCell *)self stackView];
  v17 = [(WFTimeTriggerDayOfWeekCell *)self contentView];
  v18 = [v17 layoutMarginsGuide];
  v19 = [v16 wf_addConstraintsToFillLayoutGuide:v18];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

- (void)toggleWeekdayButton:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 tag] <= 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFTimeTriggerDayOfWeekCell.m" lineNumber:107 description:{@"Button tag was not setup: %@", v5}];
  }

  else
  {
    v6 = [v5 tag];
    v7 = [v5 isSelected];
    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v8 setWeekday:v6];
    v9 = [(WFTimeTriggerDayOfWeekCell *)self selectedRecurrences];
    v10 = [v9 mutableCopy];

    if (v7)
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
        v17 = [MEMORY[0x277CCA890] currentHandler];
        [v17 handleFailureInMethod:v21 object:self file:@"WFTimeTriggerDayOfWeekCell.m" lineNumber:129 description:{@"Asked to deselect date components (%@), which isn't in the set of currently-selected date components (%@)", v8, v11}];

        v18 = 0;
      }

      [v11 removeObject:v18];
    }

    else
    {
      [v10 addObject:v8];
    }

    [(WFTimeTriggerDayOfWeekCell *)self setSelectedRecurrences:v10];
    v19 = [(WFTimeTriggerDayOfWeekCell *)self delegate];
    v20 = [(WFTimeTriggerDayOfWeekCell *)self selectedRecurrences];
    [v19 dayOfWeekPickerCell:self didChangeSelectedRecurrences:v20];
  }
}

- (void)updateSelectedDays
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(WFTimeTriggerDayOfWeekCell *)self selectedRecurrences];
  v4 = [v3 if_compactMap:&__block_literal_global_11535];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(WFTimeTriggerDayOfWeekCell *)self buttons];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
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

        v13 = [MEMORY[0x277D75348] whiteColor];
        [v10 setTitleColor:v13 forState:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setSelectedRecurrences:(id)a3
{
  objc_storeStrong(&self->_selectedRecurrences, a3);

  [(WFTimeTriggerDayOfWeekCell *)self updateSelectedDays];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = WFTimeTriggerDayOfWeekCell;
  [(WFTimeTriggerDayOfWeekCell *)&v3 tintColorDidChange];
  [(WFTimeTriggerDayOfWeekCell *)self updateSelectedDays];
}

- (WFTimeTriggerDayOfWeekCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26.receiver = self;
  v26.super_class = WFTimeTriggerDayOfWeekCell;
  v4 = [(WFTimeTriggerDayOfWeekCell *)&v26 initWithStyle:0 reuseIdentifier:a4];
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
    v8 = [(WFTimeTriggerDayOfWeekCell *)v5 contentView];
    [v8 addSubview:v5->_stackView];

    v9 = objc_opt_new();
    v10 = [MEMORY[0x277CBEA80] currentCalendar];
    v11 = [v10 veryShortWeekdaySymbols];

    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [v12 firstWeekday];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__WFTimeTriggerDayOfWeekCell_initWithStyle_reuseIdentifier___block_invoke;
    v22[3] = &unk_279EE7EF8;
    v14 = v5;
    v24 = v9;
    v25 = v13;
    v23 = v14;
    v15 = v9;
    [v11 enumerateObjectsUsingBlock:v22];
    [(WFTimeTriggerDayOfWeekCell *)v14 setButtons:v15];
    [(WFTimeTriggerDayOfWeekCell *)v14 setupConstraints];
    [(WFTimeTriggerDayOfWeekCell *)v14 updateSelectedDays];
    v16 = [(WFTimeTriggerDayOfWeekCell *)v14 stackView];
    v17 = [(WFTimeTriggerDayOfWeekCell *)v14 contentView];
    v18 = [v17 layoutMarginsGuide];
    v19 = [v16 wf_addConstraintsToFillLayoutGuide:v18];

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