@interface TTRIRecurrenceOrdinalPickerViewController
- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4;
- (id)_leftColumn;
- (id)_rightColumn;
- (id)computeColumnWidthsWithFont:(id)a3;
- (id)newLabel;
- (id)pickerView:(id)a3 accessibilityLabelForComponent:(int64_t)a4;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (id)roundedSystemFontOfSize:(int64_t)a3;
- (id)titleForRow:(int64_t)a3 forComponent:(int64_t)a4;
- (int)dayMask;
- (int)ordinalValue;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)computeLabelFontAndColumnWidths;
- (void)loadView;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)updateFromRecurrenceRule:(id)a3;
- (void)updateRecurrenceRuleBuilder:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRIRecurrenceOrdinalPickerViewController

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75840]);
  v5 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setDataSource:self];
  [v5 setDelegate:self];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v4];

  [(TTRIRecurrenceOrdinalPickerViewController *)self setView:v5];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TTRIRecurrenceOrdinalPickerViewController;
  [(TTRIRecurrenceOrdinalPickerViewController *)&v4 viewDidLoad];
  v3 = [(TTRIRecurrenceOrdinalPickerViewController *)self pickerView];
  [v3 _setHostsLayoutEngine:0];
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(TTRIRecurrenceOrdinalPickerViewController *)self _rightColumn];
  }

  else
  {
    if (a4)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [(TTRIRecurrenceOrdinalPickerViewController *)self _leftColumn];
  }

  v8 = v7;
  v9 = [v7 count];

LABEL_7:
  return v9;
}

- (double)pickerView:(id)a3 widthForComponent:(int64_t)a4
{
  v6 = [(TTRIRecurrenceOrdinalPickerViewController *)self columnWidths];
  v7 = [v6 count];

  if (v7 <= 1)
  {
    [(TTRIRecurrenceOrdinalPickerViewController *)self computeLabelFontAndColumnWidths];
  }

  v8 = [(TTRIRecurrenceOrdinalPickerViewController *)self columnWidths];
  v9 = [v8 objectAtIndexedSubscript:a4];

  [v9 doubleValue];
  v11 = v10;

  return v11;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v9 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [(TTRIRecurrenceOrdinalPickerViewController *)self newLabel];
  }

  v11 = v10;
  v12 = [(TTRIRecurrenceOrdinalPickerViewController *)self titleForRow:a4 forComponent:a5];
  [v11 setText:v12];

  return v11;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [(TTRIRecurrenceOrdinalPickerViewController *)self delegate:a3];
  [v6 frequencyPickerUpdated:self];
}

- (id)pickerView:(id)a3 accessibilityLabelForComponent:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = RemindersUICoreBundleGet();
    v7 = v6;
    v8 = @"Day of The Week";
    goto LABEL_5;
  }

  if (!a4)
  {
    v6 = RemindersUICoreBundleGet();
    v7 = v6;
    v8 = @"Ordinal";
LABEL_5:
    v9 = [v6 localizedStringForKey:v8 value:v8 table:@"Localizable"];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)newLabel
{
  v3 = [(TTRIRecurrenceOrdinalPickerViewController *)self labelFont];

  if (!v3)
  {
    [(TTRIRecurrenceOrdinalPickerViewController *)self computeLabelFontAndColumnWidths];
  }

  v4 = objc_opt_new();
  v5 = [(TTRIRecurrenceOrdinalPickerViewController *)self labelFont];
  [v4 setFont:v5];

  [v4 setTextAlignment:1];
  return v4;
}

- (id)titleForRow:(int64_t)a3 forComponent:(int64_t)a4
{
  if (a4)
  {
    [(TTRIRecurrenceOrdinalPickerViewController *)self _rightColumn];
  }

  else
  {
    [(TTRIRecurrenceOrdinalPickerViewController *)self _leftColumn];
  }
  v5 = ;
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (void)computeLabelFontAndColumnWidths
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(TTRIRecurrenceOrdinalPickerViewController *)self pickerView];
  [v3 bounds];
  v5 = v4 + -46.0;

  v6 = [(TTRIRecurrenceOrdinalPickerViewController *)self roundedSystemFontOfSize:23];
  [(TTRIRecurrenceOrdinalPickerViewController *)self computeColumnWidthsWithFont:v6];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v31 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v28 + 1) + 8 * i) doubleValue];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  if (v11 > v5)
  {
    v14 = 23.0;
    do
    {
      v15 = v6;
      v6 = [(TTRIRecurrenceOrdinalPickerViewController *)self roundedSystemFontOfSize:v14];

      v16 = [(TTRIRecurrenceOrdinalPickerViewController *)self computeColumnWidthsWithFont:v6];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = v16;
      v17 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        v20 = 0.0;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v24 + 1) + 8 * j) doubleValue];
            v20 = v20 + v22;
          }

          v18 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v18);
      }

      else
      {
        v20 = 0.0;
      }

      if (v20 < v5)
      {
        break;
      }

      v14 = v14 + -1.0;
    }

    while (v14 > 12.0 && v20 > v5);
  }

  [(TTRIRecurrenceOrdinalPickerViewController *)self setLabelFont:v6];
  [(TTRIRecurrenceOrdinalPickerViewController *)self setColumnWidths:v7];
}

- (id)roundedSystemFontOfSize:(int64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D74300] systemFontOfSize:a3 weight:*MEMORY[0x277D74418]];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithDesign:*MEMORY[0x277D74368]];
  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:v3];

  return v7;
}

- (id)computeColumnWidthsWithFont:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setFont:v4];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = self;
  obj = [(TTRIRecurrenceOrdinalPickerViewController *)self _leftColumn];
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  v27 = v4;
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [(TTRIRecurrenceOrdinalPickerViewController *)v29 _rightColumn];
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v31;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v30 + 1) + 8 * j);
              [v5 setText:v12];
              [v5 intrinsicContentSize];
              v20 = ceil(v19);
              [v5 setText:v18];
              [v5 intrinsicContentSize];
              v22 = ceil(v21);
              if (v20 >= v10)
              {
                v10 = v20;
              }

              if (v22 >= v9)
              {
                v9 = v22;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v15);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v38[0] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v38[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  return v25;
}

- (void)updateRecurrenceRuleBuilder:(id)a3
{
  v4 = a3;
  [v4 setDays:{-[TTRIRecurrenceOrdinalPickerViewController dayMask](self, "dayMask")}];
  [v4 setOrdinalValue:{-[TTRIRecurrenceOrdinalPickerViewController ordinalValue](self, "ordinalValue")}];
}

- (void)updateFromRecurrenceRule:(id)a3
{
  v13 = a3;
  v4 = [v13 setPositions];
  v5 = [v4 firstObject];

  v6 = [v13 daysOfTheWeek];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if ([v6 count] == 1)
    {
      v8 = [v7 dayOfTheWeek] - 1;
    }

    else if ([v13 isWeekendRule])
    {
      v8 = 9;
    }

    else if ([v13 isWeekdayRule])
    {
      v8 = 8;
    }

    else if ([v13 isAnyDayRule])
    {
      v8 = 7;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v9 = [v7 weekNumber];

    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5)
    {
LABEL_14:
      v9 = [v5 integerValue];
    }
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(TTRIRecurrenceOrdinalPickerViewController *)self pickerView];
    [v10 selectRow:v8 inComponent:1 animated:0];
  }

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v9 <= 5)
    {
      v11 = v9 - 1;
    }

    else
    {
      v11 = 5;
    }

    v12 = [(TTRIRecurrenceOrdinalPickerViewController *)self pickerView];
    [v12 selectRow:v11 inComponent:0 animated:0];
  }
}

- (int)dayMask
{
  v2 = [(TTRIRecurrenceOrdinalPickerViewController *)self pickerView];
  v3 = [v2 selectedRowInComponent:1];

  if (v3 > 6)
  {
    if ((v3 - 7) > 2)
    {
      return 0;
    }

    else
    {
      return dword_21DC06020[v3 - 7];
    }
  }

  else
  {

    return [TTRIRecurrenceChooserController dayFromNumber:v3 + 1];
  }
}

- (int)ordinalValue
{
  v2 = [(TTRIRecurrenceOrdinalPickerViewController *)self pickerView];
  v3 = [v2 selectedRowInComponent:0];

  return v3 + 1;
}

- (id)_leftColumn
{
  if (_leftColumn_onceToken != -1)
  {
    [TTRIRecurrenceOrdinalPickerViewController _leftColumn];
  }

  v3 = _leftColumn___leftColumn;

  return v3;
}

void __56__TTRIRecurrenceOrdinalPickerViewController__leftColumn__block_invoke()
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13 = RemindersUICoreBundleGet();
  v12 = [v13 localizedStringForKey:@"first" value:@"first" table:@"Localizable"];
  v14[0] = v12;
  v0 = RemindersUICoreBundleGet();
  v1 = [v0 localizedStringForKey:@"second" value:@"second" table:@"Localizable"];
  v14[1] = v1;
  v2 = RemindersUICoreBundleGet();
  v3 = [v2 localizedStringForKey:@"third" value:@"third" table:@"Localizable"];
  v14[2] = v3;
  v4 = RemindersUICoreBundleGet();
  v5 = [v4 localizedStringForKey:@"fourth" value:@"fourth" table:@"Localizable"];
  v14[3] = v5;
  v6 = RemindersUICoreBundleGet();
  v7 = [v6 localizedStringForKey:@"fifth" value:@"fifth" table:@"Localizable"];
  v14[4] = v7;
  v8 = RemindersUICoreBundleGet();
  v9 = [v8 localizedStringForKey:@"last" value:@"last" table:@"Localizable"];
  v14[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:6];
  v11 = _leftColumn___leftColumn;
  _leftColumn___leftColumn = v10;
}

- (id)_rightColumn
{
  if (_rightColumn_onceToken != -1)
  {
    [TTRIRecurrenceOrdinalPickerViewController _rightColumn];
  }

  v3 = _rightColumn___rightColumn;

  return v3;
}

void __57__TTRIRecurrenceOrdinalPickerViewController__rightColumn__block_invoke()
{
  v15[10] = *MEMORY[0x277D85DE8];
  v14 = CUIKStringForDayOfWeekNotStandalone();
  v15[0] = v14;
  v13 = CUIKStringForDayOfWeekNotStandalone();
  v15[1] = v13;
  v12 = CUIKStringForDayOfWeekNotStandalone();
  v15[2] = v12;
  v0 = CUIKStringForDayOfWeekNotStandalone();
  v15[3] = v0;
  v1 = CUIKStringForDayOfWeekNotStandalone();
  v15[4] = v1;
  v2 = CUIKStringForDayOfWeekNotStandalone();
  v15[5] = v2;
  v3 = CUIKStringForDayOfWeekNotStandalone();
  v15[6] = v3;
  v4 = RemindersUICoreBundleGet();
  v5 = [v4 localizedStringForKey:@"day" value:@"day" table:@"Localizable"];
  v15[7] = v5;
  v6 = RemindersUICoreBundleGet();
  v7 = [v6 localizedStringForKey:@"weekday" value:@"weekday" table:@"Localizable"];
  v15[8] = v7;
  v8 = RemindersUICoreBundleGet();
  v9 = [v8 localizedStringForKey:@"weekend day" value:@"weekend day" table:@"Localizable"];
  v15[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];
  v11 = _rightColumn___rightColumn;
  _rightColumn___rightColumn = v10;
}

@end