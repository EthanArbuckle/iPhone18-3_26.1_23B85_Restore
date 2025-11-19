@interface RUITableViewRow
+ (id)_defaultFormatter;
+ (id)_formatterForDateYMD;
+ (id)_formatterForMonthAndDay;
+ (id)_formatterForYearAndMonth;
+ (id)_timeZoneAdjustedDateFromDate:(id)a3;
+ (void)initialize;
+ (void)resetLocale;
- (BOOL)_hasSubLabel;
- (BOOL)_matchesSearchTermComponent:(id)a3;
- (BOOL)indentWhileEditing;
- (BOOL)isCopyable;
- (BOOL)isEditingEnabled;
- (BOOL)loadAccessoryImage;
- (BOOL)matchesSearchTerm:(id)a3;
- (BOOL)rowSupportsLoadingIndicator;
- (BOOL)setSelectPageRowValue:(id)a3;
- (BOOL)supportsAutomaticSelection;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BOOL)wantsInlineActivityIndicator;
- (Class)tableCellClass;
- (NSString)copyText;
- (NSString)description;
- (NSString)label;
- (NSString)subLabel;
- (RUIPage)linkedPage;
- (RUITableView)tableView;
- (RUITableViewRowDelegate)delegate;
- (RUITextFieldChangeObserver)textFieldChangeObserver;
- (UIControl)control;
- (double)height;
- (float)rowHeightWithMax:(float)a3 peggedHeight:(float)a4 tableView:(id)a5 indexPath:(id)a6;
- (id)_cellSelectionStyleNumber;
- (id)_checkmarkAccessoryViewWithSelected:(BOOL)a3;
- (id)_datePickerFormatter;
- (id)copyTextFromCopyableAttribute;
- (id)dateFormatterCalendarIdentifier;
- (id)newConfiguredDatePicker;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)radioGroupSelectedColor;
- (id)selectOptions;
- (id)staticFunctions;
- (id)staticValues;
- (id)tableCell;
- (id)textColorForAttributeName:(id)a3;
- (id)textColorForAttributeName:(id)a3 defaultColorString:(id)a4;
- (id)viewForElementIdentifier:(id)a3;
- (int64_t)tableCellStyle;
- (void)_datePickerChanged:(id)a3;
- (void)_drawCustomImage:(BOOL)a3;
- (void)_setBackgroundColor;
- (void)_switchFlipped:(id)a3;
- (void)_updateCellSelectionStyle;
- (void)_updateContentForDisabledState;
- (void)_updateDetailLabel;
- (void)_updateTextColors;
- (void)accessoryImageLoaded;
- (void)activateDatePicker;
- (void)activateMarkdownURL:(id)a3;
- (void)configureAccessiblityWithTarget:(id)a3;
- (void)dealloc;
- (void)detailLabelActivatedLinkFromCell:(id)a3 completion:(id)a4;
- (void)didBecomeSelected;
- (void)parseBadge;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)populatePostbackDictionary:(id)a3;
- (void)reportInternalRenderEvent;
- (void)setAlignment:(int64_t)a3;
- (void)setAttributes:(id)a3;
- (void)setBadgeInTableCell:(id)a3;
- (void)setDate:(id)a3;
- (void)setDetailAndPlaceholderText;
- (void)setEditableTextFieldValue:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFocused:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setLabel:(id)a3;
- (void)setRowInvalid:(BOOL)a3;
- (void)setSelectRowValue:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectedRowTextColor;
- (void)setShowingProgressIndicator:(BOOL)a3;
- (void)setSourceXMLElement:(id)a3;
- (void)setSubLabel:(id)a3;
- (void)setValueFromString:(id)a3 notify:(BOOL)a4;
- (void)setupDatePickerWithCell:(id)a3;
- (void)startActivityIndicator;
- (void)tableCell;
- (void)textFieldEditingDidEnd:(id)a3;
- (void)updateDatePickerCell;
- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4;
@end

@implementation RUITableViewRow

- (id)staticValues
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"label"];
  [v2 setGetter:RUIJSTableRow_getProperty];
  [v2 setSetter:RUIJSTableRow_setProperty];
  [v2 setJSPropertyAttributes:8];
  v3 = objc_opt_new();
  [v3 setIdentifier:"subLabel"];
  [v3 setGetter:RUIJSTableRow_getProperty];
  [v3 setSetter:RUIJSTableRow_setProperty];
  [v3 setJSPropertyAttributes:8];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)staticFunctions
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setIdentifier:"updateRowAttributes"];
  [v2 setFunction:RUIJSTableRow_updateAttributes];
  [v2 setJSPropertyAttributes:0];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:a1 selector:sel_resetLocale name:*MEMORY[0x277CBE620] object:0];
  }
}

+ (id)_timeZoneAdjustedDateFromDate:(id)a3
{
  v3 = MEMORY[0x277CBEBB0];
  v4 = a3;
  v5 = [v3 systemTimeZone];
  v6 = [v4 dateByAddingTimeInterval:{objc_msgSend(v5, "secondsFromGMT")}];

  return v6;
}

+ (id)_formatterForDateYMD
{
  v2 = gYMDDateFormatter;
  if (!gYMDDateFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    v4 = gYMDDateFormatter;
    gYMDDateFormatter = v3;

    [gYMDDateFormatter setDateFormat:@"yyyy-MM-dd"];
    v5 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
    [gYMDDateFormatter setTimeZone:v5];
    v6 = objc_alloc(MEMORY[0x277CBEA80]);
    v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    [v7 setTimeZone:v5];
    [gYMDDateFormatter setCalendar:v7];

    v2 = gYMDDateFormatter;
  }

  return v2;
}

+ (id)_defaultFormatter
{
  v3 = gDefaultFormatter;
  if (!gDefaultFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = gDefaultFormatter;
    gDefaultFormatter = v4;

    v6 = [a1 _formatterForDateYMD];
    v7 = gDefaultFormatter;
    v8 = [v6 calendar];
    [v7 setCalendar:v8];

    v9 = gDefaultFormatter;
    v10 = [v6 timeZone];
    [v9 setTimeZone:v10];

    [gDefaultFormatter setLocalizedDateFormatFromTemplate:@"MMMMdyyyy"];
    v11 = gDefaultFormatter;
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    [v11 setCalendar:v12];

    v3 = gDefaultFormatter;
  }

  return v3;
}

+ (id)_formatterForMonthAndDay
{
  v3 = gMonthAndDayFormatter;
  if (!gMonthAndDayFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = gMonthAndDayFormatter;
    gMonthAndDayFormatter = v4;

    v6 = [a1 _formatterForDateYMD];
    v7 = gMonthAndDayFormatter;
    v8 = [v6 calendar];
    [v7 setCalendar:v8];

    v9 = gMonthAndDayFormatter;
    v10 = [v6 timeZone];
    [v9 setTimeZone:v10];

    v11 = gMonthAndDayFormatter;
    v12 = MEMORY[0x277CCA968];
    v13 = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [v12 dateFormatFromTemplate:@"d-MMMM" options:0 locale:v13];
    [v11 setDateFormat:v14];

    v3 = gMonthAndDayFormatter;
  }

  return v3;
}

- (void)setSourceXMLElement:(id)a3
{
  v4.receiver = self;
  v4.super_class = RUITableViewRow;
  [(RUIElement *)&v4 setSourceXMLElement:a3];
  [(RUITableViewRow *)self parseBadge];
}

+ (id)_formatterForYearAndMonth
{
  v3 = gYearAndMonthFormatter;
  if (!gYearAndMonthFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = gYearAndMonthFormatter;
    gYearAndMonthFormatter = v4;

    v6 = [a1 _formatterForDateYMD];
    v7 = gYearAndMonthFormatter;
    v8 = [v6 calendar];
    [v7 setCalendar:v8];

    v9 = gYearAndMonthFormatter;
    v10 = [v6 timeZone];
    [v9 setTimeZone:v10];

    v11 = gYearAndMonthFormatter;
    v12 = MEMORY[0x277CCA968];
    v13 = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [v12 dateFormatFromTemplate:@"MM/yyyy" options:0 locale:v13];
    [v11 setDateFormat:v14];

    v3 = gYearAndMonthFormatter;
  }

  return v3;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RUITableViewRow *)self detailButton];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(RUITableViewRow *)self tableCell];
    v9 = [v8 accessoryView];
  }

  else
  {
    v10 = [(RUIElement *)self identifier];
    v11 = [v10 isEqualToString:v4];

    if (v11)
    {
      v9 = [(RUITableViewRow *)self tableCell];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_datePickerFormatter
{
  datePickerFormatter = self->_datePickerFormatter;
  if (!datePickerFormatter)
  {
    datePickerMode = self->_datePickerMode;
    v5 = objc_opt_class();
    if (datePickerMode == 4)
    {
      v6 = [v5 _formatterForYearAndMonth];
    }

    else
    {
      if (datePickerMode == 4270)
      {
        [v5 _formatterForMonthAndDay];
      }

      else
      {
        [v5 _defaultFormatter];
      }
      v6 = ;
    }

    v7 = v6;
    v8 = [(RUITableViewRow *)self dateFormatterCalendarIdentifier];
    if (v8)
    {
      v9 = [(NSDateFormatter *)v7 copy];

      v10 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v8];
      [(NSDateFormatter *)v9 setCalendar:v10];

      v7 = v9;
    }

    v11 = self->_datePickerFormatter;
    self->_datePickerFormatter = v7;

    datePickerFormatter = self->_datePickerFormatter;
  }

  return datePickerFormatter;
}

+ (void)resetLocale
{
  v2 = gYMDDateFormatter;
  gYMDDateFormatter = 0;

  v3 = gDefaultFormatter;
  gDefaultFormatter = 0;

  v4 = gMonthAndDayFormatter;
  gMonthAndDayFormatter = 0;

  v5 = gYearAndMonthFormatter;
  gYearAndMonthFormatter = 0;
}

- (void)setAttributes:(id)a3
{
  v20 = self;
  v29 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [&unk_282D7AD40 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(&unk_282D7AD40);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v20}];

        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v8];
          v11 = [v10 stringByReplacingOccurrencesOfString:@"\\n" withString:@"\n"];
          [v3 setObject:v11 forKeyedSubscript:v8];
        }
      }

      v5 = [&unk_282D7AD40 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v5);
  }

  v12 = [v22 objectForKeyedSubscript:{@"mode", v20}];
  v13 = [v12 lowercaseString];

  if ([v13 isEqualToString:@"monthandday"])
  {
    v14 = 4270;
    v15 = v21;
  }

  else
  {
    v15 = v21;
    if ([v13 isEqualToString:@"yearandmonth"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }
  }

  v15[24] = v14;
  v16 = [v22 objectForKeyedSubscript:@"style"];
  v17 = [v16 lowercaseString];

  if ([v17 isEqualToString:@"compact"])
  {
    v18 = 2;
  }

  else if ([v17 isEqualToString:@"wheels"])
  {
    v18 = 1;
  }

  else
  {
    v18 = 3;
  }

  v15[25] = v18;
  v19 = v15[20];
  v15[20] = 0;

  v23.receiver = v15;
  v23.super_class = RUITableViewRow;
  [(RUIElement *)&v23 setAttributes:v3];
}

- (BOOL)_hasSubLabel
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"subLabel"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(RUITableViewRow *)self htmlSubLabelData];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (id)dateFormatterCalendarIdentifier
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"calendar"];

  if (v3 && ![v3 caseInsensitiveCompare:@"gregorian"])
  {
    v4 = *MEMORY[0x277CBE5C0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)textColorForAttributeName:(id)a3 defaultColorString:(id)a4
{
  v6 = MEMORY[0x277D75348];
  v7 = a4;
  v8 = a3;
  v9 = [(RUIElement *)self attributes];
  v10 = [v9 objectForKey:v8];

  v11 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v7];

  v12 = [v6 _remoteUI_colorWithString:v10 defaultColor:v11];

  return v12;
}

- (id)textColorForAttributeName:(id)a3
{
  v4 = MEMORY[0x277D75348];
  v5 = a3;
  v6 = [(RUIElement *)self attributes];
  v7 = [v6 objectForKey:v5];

  v8 = [v4 _remoteUI_colorWithString:v7];

  return v8;
}

- (id)radioGroupSelectedColor
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"radioGroupSelectedColor"];

  if (v4)
  {
    v5 = MEMORY[0x277D75348];
    v6 = [(RUIElement *)self attributes];
    v7 = [v6 objectForKey:@"radioGroupSelectedColor"];
    v8 = [v5 _remoteUI_colorWithString:v7];
  }

  else
  {
    v6 = [(RUIElement *)self style];
    v8 = [v6 radioGroupSelectedColor];
  }

  return v8;
}

- (void)configureAccessiblityWithTarget:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKey:@"class"];

  if ([v6 isEqualToString:@"editableText"])
  {
    v7 = [(RemoteUITableViewCell *)self->_tableCell editableTextField];

    v4 = v7;
  }

  v8.receiver = self;
  v8.super_class = RUITableViewRow;
  [(RUIElement *)&v8 configureAccessiblityWithTarget:v4];
}

- (void)_updateTextColors
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"class"];

  if ([(RUITableViewRow *)self isFocused])
  {
    v5 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    v6 = [(RUIElement *)self style];
    v7 = [v6 focusedRowTextColor];
    [v5 setTextColor:v7];

    v8 = [(RUIElement *)self style];
    v9 = [v8 focusedRowTextColor];
LABEL_7:
    v15 = v9;
    v19 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [v19 setTextColor:v15];

    goto LABEL_8;
  }

  v10 = [(RUIElement *)self attributes];
  v11 = [v10 objectForKeyedSubscript:@"labelColor"];

  if (!v11)
  {
    v16 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    v17 = [(RUIElement *)self style];
    v18 = [v17 labelRowTextColor];
    [v16 setTextColor:v18];

    v8 = [(RUIElement *)self style];
    v9 = [v8 labelRowTextColor];
    goto LABEL_7;
  }

  v12 = [(RUIElement *)self attributes];
  v13 = [v12 objectForKey:@"labelColor"];
  v14 = [v13 length];

  v8 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
  if (v14)
  {
    v15 = [(RUITableViewRow *)self textColorForAttributeName:@"labelColor"];
    [v8 setTextColor:v15];
  }

  else
  {
    v15 = [(RUIElement *)self style];
    v42 = [v15 labelRowTextColor];
    [v8 setTextColor:v42];
  }

LABEL_8:

  if ([(RUITableViewRow *)self _hasSubLabel])
  {
    v20 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    v21 = [(UITableViewCell *)self->_tableCell ruiValueLabel];
    v22 = [(RUIElement *)self attributes];
    v23 = [v22 objectForKeyedSubscript:@"subLabel"];

    if (v23)
    {
      if ([(RUITableViewRow *)self isFocused])
      {
        v24 = [(RUIElement *)self style];
        v25 = [v24 focusedRowTextColor];
        [v20 setTextColor:v25];
      }

      else
      {
        v24 = [(RUITableViewRow *)self textColorForAttributeName:@"subLabelColor" defaultColorString:@"secondaryLabelColor"];
        [v20 setTextColor:v24];
      }
    }

    objc_initWeak(&location, self);
    v32 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = __36__RUITableViewRow__updateTextColors__block_invoke;
    v51 = &unk_2782E9150;
    objc_copyWeak(&v52, &location);
    v33 = [v32 setMarkdownLinkHandler:&v48];
    detailLabelTapHandler = self->_detailLabelTapHandler;
    self->_detailLabelTapHandler = v33;

    v35 = [(RUIElement *)self attributes:v48];
    v36 = [v35 objectForKeyedSubscript:@"detailLabel"];

    if (v36)
    {
      if ([(RUITableViewRow *)self isFocused])
      {
        v37 = [(RUIElement *)self style];
        v38 = [v37 focusedRowTextColor];
        [v21 setTextColor:v38];
      }

      else
      {
        v37 = [(RUITableViewRow *)self textColorForAttributeName:@"detailLabelColor" defaultColorString:@"secondaryLabelColor"];
        [v21 setTextColor:v37];
      }
    }

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
    goto LABEL_27;
  }

  if (([v4 isEqualToString:@"link"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"label") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"button"))
  {
    v26 = [(RUIElement *)self attributes];
    v27 = [v26 objectForKey:@"detailLabel"];

    if (v27)
    {
      v28 = [(RUIElement *)self attributes];
      v20 = [v28 objectForKey:@"detailLinkURL"];

      if (v20)
      {
LABEL_28:

        goto LABEL_29;
      }

      v29 = [(RUITableViewRow *)self isFocused];
      v21 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
      if (v29)
      {
        v30 = [(RUIElement *)self style];
        v31 = [v30 focusedRowTextColor];
        [v21 setTextColor:v31];
      }

      else
      {
        v30 = [(RUITableViewRow *)self textColorForAttributeName:@"detailLabelColor" defaultColorString:@"secondaryLabelColor"];
        [v21 setTextColor:v30];
      }

LABEL_27:
      goto LABEL_28;
    }
  }

LABEL_29:
  if (-[RUIElement enabled](self, "enabled") && [v4 isEqualToString:@"button"])
  {
    v39 = [(RUIElement *)self attributes];
    v40 = [v39 objectForKey:@"accessory"];
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = [(RUIElement *)self attributes];
      v43 = [v41 objectForKey:@"detailLabel"];
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v44 = [(RUIElement *)self attributes];
        v45 = [v44 objectForKey:@"subLabel"];
        if (v45)
        {
        }

        else
        {
          v46 = [(RUIElement *)self attributes];
          v47 = [v46 objectForKey:@"placeholder"];

          if (v47)
          {
            goto LABEL_42;
          }

          v39 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
          v41 = [(RUIElement *)self style];
          v44 = [v41 buttonRowTextColor];
          [v39 setTextColor:v44];
        }
      }
    }
  }

LABEL_42:
}

void __36__RUITableViewRow__updateTextColors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activateMarkdownURL:v3];
}

- (void)_updateContentForDisabledState
{
  v3 = [(RUIElement *)self enabled];
  v4 = [(RUIElement *)self attributes];
  v20 = [v4 objectForKey:@"class"];

  if ([v20 isEqualToString:@"editableText"])
  {
    v5 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [v5 setEnabled:v3];

    v6 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v7 = v6;
    v8 = 0.5;
    if (v3)
    {
      v8 = 1.0;
    }

    [v6 setAlpha:v8];
  }

  v9 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
  [v9 setEnabled:v3];

  v10 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  v11 = [(UITableViewCell *)self->_tableCell ruiValueLabel];
  [v11 setEnabled:v3];
  v12 = [(RUIElement *)self attributes];
  v13 = [v12 objectForKeyedSubscript:@"subLabel"];
  if (v13)
  {
  }

  else
  {
    v14 = [(RUIElement *)self attributes];
    v15 = [v14 objectForKeyedSubscript:@"detailLabel"];

    if (!v15)
    {
      goto LABEL_9;
    }
  }

  [v10 setEnabled:v3];
LABEL_9:
  [(UISwitch *)self->_switchControl setEnabled:v3];
  [(RUITableViewRow *)self _updateCellSelectionStyle];
  v16 = [(UITableViewCell *)self->_tableCell ruiImageView];
  [v16 setEnabled:v3];

  v17 = [(UITableViewCell *)self->_tableCell ruiImageView];
  v18 = v17;
  v19 = 0.5;
  if (v3)
  {
    v19 = 1.0;
  }

  [v17 setAlpha:v19];

  [(RUITableViewRow *)self _updateTextColors];
}

- (void)_updateCellSelectionStyle
{
  v3 = [(RUIElement *)self enabled];
  v4 = [(RUIElement *)self attributes];
  v23 = [v4 objectForKey:@"class"];

  v5 = [(RUITableViewRow *)self tableView];
  v6 = [v5 tableView];
  if ([v6 allowsMultipleSelectionDuringEditing])
  {
    v7 = [(RUITableViewRow *)self tableView];
    v8 = [v7 tableView];
    v9 = [v8 isEditing];

    if (v9 & v3)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {

    v10 = 0;
  }

  v11 = [(RUIElement *)self attributes];
  v12 = [v11 objectForKeyedSubscript:@"editing"];

  if (v12)
  {
    v13 = [(RUIElement *)self attributes];
    v14 = [v13 objectForKeyedSubscript:@"editing"];
    v15 = [v14 BOOLValue];
    v16 = [(RUITableViewRow *)self tableCell];
    [v16 setEditing:v15];
  }

  if (!v3 || ([v23 isEqualToString:@"editableText"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"numberPicker") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"switch") & 1) != 0)
  {
    goto LABEL_19;
  }

  if (![v23 isEqualToString:@"label"])
  {
    if ([v23 isEqualToString:@"htmlLabel"])
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v17 = [(RUIElement *)self attributes];
  v18 = [v17 objectForKeyedSubscript:@"radioGroup"];
  if (!v18)
  {

    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v23 isEqualToString:@"htmlLabel"];

  if ((v20 & 1) == 0)
  {
LABEL_17:
    v10 = 3;
  }

LABEL_19:
  v21 = [(RUITableViewRow *)self _cellSelectionStyleNumber];
  v22 = v21;
  if (v21)
  {
    v10 = [v21 integerValue];
  }

  [(RemoteUITableViewCell *)self->_tableCell setSelectionStyle:v10];
}

- (id)_cellSelectionStyleNumber
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"selectionStyle"];

  if (v3)
  {
    v4 = [&unk_282D7ACE8 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAlignment:(int64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    v4 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [v4 setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];

    if ([(RUITableViewRow *)self tableCellStyle]== 3)
    {
      v5 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
      [v5 setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RUITableViewRow;
  [(RUIElement *)&v4 setEnabled:a3];
  if (self->_tableCell)
  {
    [(RUITableViewRow *)self _updateContentForDisabledState];
  }
}

- (void)setRowInvalid:(BOOL)a3
{
  v3 = a3;
  self->_rowInvalid = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tableCell = self->_tableCell;

    [(RemoteUITableViewCell *)tableCell setRowInvalid:v3];
  }
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    v4 = a3;
    self->_selected = a3;
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(RUITableViewRow *)self tableCell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(RUIElement *)self attributes];
      v10 = [v9 objectForKey:@"radioGroupSelectedColor"];

      v11 = [(RUITableViewRow *)self tableCell];
      v12 = v11;
      if (v10)
      {
        v13 = [(RUITableViewRow *)self radioGroupSelectedColor];
        [v12 _setRemoteUIAccessoryType:v6 withColor:v13];
      }

      else
      {
        [v11 setRemoteUIAccessoryType:v6];
      }
    }

    else
    {
      v12 = [(RUITableViewRow *)self tableCell];
      [v12 setAccessoryType:v6];
    }

    if (v4)
    {
      [(RUITableViewRow *)self radioGroupSelectedColor];
    }

    else
    {
      [(RUITableViewRow *)self textColorForAttributeName:@"labelColor" defaultColorString:@"labelColor"];
    }
    v40 = ;
    v14 = [(RUITableViewRow *)self tableCell];
    v15 = [v14 ruiTextLabel];
    [v15 setTextColor:v40];

    v16 = [(RUIElement *)self attributes];
    v17 = [v16 objectForKey:@"radioGroupSelectedColor"];

    if (v17)
    {
      v18 = [(RUITableViewRow *)self tableCell];
      v19 = [v18 ruiDetailTextLabel];
      [v19 setTextColor:v40];
    }

    v20 = [(RUIElement *)self attributes];
    v21 = [v20 objectForKey:@"accessory"];

    if ([v21 length] && objc_msgSend(v21, "isEqualToString:", @"checkmark.circle"))
    {
      v22 = [(RUITableViewRow *)self tableCell];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = [(RUITableViewRow *)self tableCell];
        [v24 setRemoteUIAccessoryType:0];
      }

      v25 = [(RUITableViewRow *)self _checkmarkAccessoryViewWithSelected:v4];
      [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryView:v25];
    }

    v26 = [(RUIElement *)self attributes];
    v27 = [v26 objectForKey:@"borderColor"];

    if (v27)
    {
      if (v4)
      {
        [MEMORY[0x277D75348] _remoteUI_colorWithString:v27];
      }

      else
      {
        [MEMORY[0x277D75348] clearColor];
      }
      v28 = ;
      v29 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v29 setCornerRadius:8.0];

      v30 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v30 setMasksToBounds:1];

      v31 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v31 setBorderColor:{objc_msgSend(v28, "CGColor")}];

      v32 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v32 setBorderWidth:3.0];

      v33 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v33 setShadowOffset:{2.0, 3.0}];

      v34 = [MEMORY[0x277D75348] lightGrayColor];
      v35 = [v34 CGColor];
      v36 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v36 setShadowColor:v35];

      v37 = [(RemoteUITableViewCell *)self->_tableCell layer];
      LODWORD(v38) = 1050253722;
      [v37 setShadowOpacity:v38];

      v39 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [v39 setShadowRadius:8.0];
    }

    [(RUITableViewRow *)self _drawCustomImage:v4];
  }
}

- (void)setFocused:(BOOL)a3
{
  if (self->_focused != a3)
  {
    self->_focused = a3;
    [(RUITableViewRow *)self _updateTextColors];
  }
}

- (RUITableView)tableView
{
  v2 = [(RUITableViewRow *)self section];
  v3 = [v2 parent];

  return v3;
}

- (BOOL)wantsInlineActivityIndicator
{
  if (![(RUITableViewRow *)self rowSupportsLoadingIndicator])
  {
    return 0;
  }

  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"shouldShowLoadingIndicator"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v6 = [(RUITableViewRow *)self tableView];
    v7 = [v6 page];
    v8 = [v7 activityIndicatorStyle];
    v5 = [v8 isEqualToString:@"activeElement"];
  }

  return v5;
}

- (void)setShowingProgressIndicator:(BOOL)a3
{
  if (self->_showingProgressIndicator != a3)
  {
    v3 = a3;
    self->_showingProgressIndicator = a3;
    v5 = [(RUITableViewRow *)self tableCell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(RUITableViewRow *)self tableCell];
      [v7 setActivityIndicatorVisible:self->_showingProgressIndicator];

      v10 = [(RUIElement *)self pageElement];
      v8 = [v10 page];
      v9 = [v8 view];
      [v9 setUserInteractionEnabled:!v3];
    }
  }
}

- (Class)tableCellClass
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained tableCellClassForTableViewRow:self];

  if (v4)
  {
    v5 = v4;
    goto LABEL_8;
  }

  v6 = [(RUIElement *)self attributes];
  v7 = [v6 objectForKeyedSubscript:@"detailLabel"];
  if (v7)
  {
    v8 = [(RUIElement *)self attributes];
    v9 = [v8 objectForKeyedSubscript:@"subLabel"];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(RUITableViewRow *)self htmlSubLabelData];
  v12 = [v11 length];

  v13 = [(RUIElement *)self attributes];
  v14 = [v13 objectForKeyedSubscript:@"subLabelNumberOfLines"];

  v15 = [(RUIElement *)self attributes];
  v16 = [v15 objectForKeyedSubscript:@"modernRow"];
  v17 = [v16 BOOLValue];

  if (!v17)
  {
    if ((v14 | v12) != 0 || v10)
    {
      v19 = [(RUIElement *)self style];
      v20 = +[RUIStyle osloStyle];
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    else
    {
      v21 = [(RUIElement *)self attributes];
      v22 = [v21 objectForKeyedSubscript:@"class"];
      if ([v22 isEqualToString:@"linkedOption"])
      {
      }

      else
      {
        v23 = [(RUIElement *)self attributes];
        v24 = [v23 objectForKeyedSubscript:@"class"];
        v25 = [v24 isEqualToString:@"selectPage"];

        if (!v25)
        {
          v26 = [(RUIElement *)self attributes];
          v27 = [v26 objectForKey:@"detailLinkURL"];
          if (v27)
          {
            v28 = v27;
            v29 = [(RUIElement *)self attributes];
            v30 = [v29 objectForKey:@"customDetailLink"];
            v31 = [v30 isEqualToString:@"true"];

            if (v31)
            {
              goto LABEL_7;
            }
          }

          else
          {
          }

          v32 = [(RUIElement *)self attributes];
          v33 = [v32 objectForKey:@"reducedImagePaddings"];
          [v33 isEqualToString:@"true"];
        }
      }
    }
  }

LABEL_7:
  v5 = objc_opt_class();
LABEL_8:

  return v5;
}

- (int64_t)tableCellStyle
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"class"];

  if (([v4 isEqualToString:@"editableText"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"numberPicker") & 1) == 0)
  {
    v6 = [(RUIElement *)self attributes];
    v7 = [v6 objectForKey:@"subLabel"];
    if (v7)
    {
      v8 = v7;
      v9 = [(RUIElement *)self attributes];
      v10 = [v9 objectForKey:@"detailLabel"];

      if (!v10)
      {
        v5 = 3;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v11 = [(RUIElement *)self attributes];
    v12 = [v11 objectForKey:@"detailLabel"];
    if (!v12)
    {
      v12 = [(RUIElement *)self attributes];
      v13 = [v12 objectForKey:@"placeholder"];
      if (!v13 && ([v4 isEqualToString:@"datePicker"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"select") & 1) == 0)
      {
        v15 = [v4 isEqualToString:@"selectPage"];

        if ((v15 & 1) == 0)
        {
          v5 = 0;
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    v5 = 1;
    goto LABEL_15;
  }

  v5 = 1000;
LABEL_15:

  return v5;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)self attributes];
  v19 = [v5 objectForKeyedSubscript:@"imageTintColor"];

  if (v19)
  {
    v6 = [MEMORY[0x277D75348] _remoteUI_colorWithString:?];
    v7 = [(UITableViewCell *)self->_tableCell ruiImageView];
    [v7 setTintColor:v6];
  }

  else
  {
    v6 = 0;
  }

  v8 = [(RUIElement *)self attributes];
  v9 = [v8 objectForKeyedSubscript:@"imagePadding"];
  v10 = [v9 integerValue];

  [(RemoteUITableViewCell *)self->_tableCell setImage:v4 padding:v6 tintColor:v10, v10, v10, v10];
  v11 = [(RUIElement *)self attributes];
  v12 = [v11 objectForKeyedSubscript:@"imageBackgroundColor"];

  if (v12)
  {
    v13 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v12];
    v14 = [(UITableViewCell *)self->_tableCell ruiImageView];
    [v14 setBackgroundColor:v13];
  }

  v15 = [(RUIElement *)self attributes];
  v16 = [v15 objectForKeyedSubscript:@"imageCornerRadius"];
  v17 = [v16 integerValue];

  v18 = [(UITableViewCell *)self->_tableCell ruiImageView];
  [v18 _setCornerRadius:v17];

  [(RemoteUITableViewCell *)self->_tableCell setNeedsLayout];
}

- (UIControl)control
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"class"];

  if ([v4 isEqualToString:@"switch"])
  {
    v5 = self->_switchControl;
LABEL_8:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqual:@"datePicker"])
  {
    v5 = [(RUITableViewRow *)self pickerView];
    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"numberPicker"))
  {
    v5 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (void)accessoryImageLoaded
{
  v13 = -1.0;
  v3 = [(RUIElement *)self URLAttributeForImageName:@"accessoryImage" getScale:&v13];
  if (v3)
  {
    v4 = +[RUIImageLoader sharedImageLoader];
    v5 = [v4 imageForURL:v3 loadIfAbsent:0];
    if (v5)
    {
      v6 = [MEMORY[0x277D755B8] imageWithCGImage:v5 scale:0 orientation:v13];
      tableCell = self->_tableCell;
      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
      [(RemoteUITableViewCell *)tableCell setAccessoryView:v8];
    }

    v9 = [v4 notificationCenter];
    v10 = RUIImageLoaderDidLoadImageNotification;
    v11 = [v3 absoluteString];
    v12 = [(__CFString *)v10 stringByAppendingString:v11];
    [v9 removeObserver:self name:v12 object:0];
  }
}

- (BOOL)loadAccessoryImage
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"accessorySystemImage"];

  if (v4)
  {
    v5 = [(RUIElement *)self attributes];
    v6 = [v5 objectForKeyedSubscript:@"accessorySymbolRenderingMode"];
    v7 = [(RUIElement *)self systemImageNamed:v4 symbolRenderingMode:v6];

    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    v9 = [(RUIElement *)self attributes];
    v10 = [v9 objectForKeyedSubscript:@"accessoryTintColor"];

    if (v10)
    {
      v11 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v10];
      [v8 setTintColor:v11];
    }

    [(RemoteUITableViewCell *)self->_tableCell setAccessoryView:v8];

    v12 = 1;
  }

  else
  {
    v22 = -1.0;
    v13 = [(RUIElement *)self URLAttributeForImageName:@"accessoryImage" getScale:&v22];
    v12 = v13 != 0;
    if (v13)
    {
      v14 = +[RUIImageLoader sharedImageLoader];
      v15 = [v14 imageForURL:v13 loadIfAbsent:1];
      if (v15)
      {
        v16 = [MEMORY[0x277D755B8] imageWithCGImage:v15 scale:0 orientation:v22];
        tableCell = self->_tableCell;
        v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v16];
        [(RemoteUITableViewCell *)tableCell setAccessoryView:v18];
      }

      else
      {
        v16 = [v14 notificationCenter];
        v19 = RUIImageLoaderDidLoadImageNotification;
        v18 = [v13 absoluteString];
        v20 = [(__CFString *)v19 stringByAppendingString:v18];
        [v16 addObserver:self selector:sel_accessoryImageLoaded name:v20 object:0];
      }
    }
  }

  return v12;
}

- (id)tableCell
{
  v146 = *MEMORY[0x277D85DE8];
  if (self->_tableCell)
  {
    goto LABEL_155;
  }

  v3 = [(RUIElement *)self attributes];
  v135 = [v3 objectForKey:@"class"];

  v4 = [objc_alloc(-[RUITableViewRow tableCellClass](self "tableCellClass"))];
  tableCell = self->_tableCell;
  self->_tableCell = v4;

  [(RUITableViewRow *)self setBadgeInTableCell:self->_tableCell];
  v6 = v135;
  if (([v135 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v135, "isEqualToString:", @"numberPicker"))
  {
    v7 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v8 = [(RUIElement *)self attributes];
    v9 = [v8 objectForKey:@"placeholder"];
    [v7 setPlaceholder:v9];

    v10 = [(RUIElement *)self attributes];
    v11 = [v10 objectForKey:@"value"];

    if (!v11)
    {
      v12 = [(RUIElement *)self attributes];
      v13 = [v12 objectForKey:@"clientValue"];

      if ([v13 isEqualToString:@"phoneNumber"] && (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, !v15))
      {
        v138 = 0;
        v139 = &v138;
        v140 = 0x2020000000;
        v35 = getCTSettingCopyMyPhoneNumberSymbolLoc_ptr;
        v141 = getCTSettingCopyMyPhoneNumberSymbolLoc_ptr;
        if (!getCTSettingCopyMyPhoneNumberSymbolLoc_ptr)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v143 = __getCTSettingCopyMyPhoneNumberSymbolLoc_block_invoke;
          v144 = &unk_2782E8258;
          v145 = &v138;
          __getCTSettingCopyMyPhoneNumberSymbolLoc_block_invoke(&buf);
          v35 = v139[3];
        }

        _Block_object_dispose(&v138, 8);
        if (!v35)
        {
          [RUITableViewRow tableCell];
        }

        v11 = v35();
      }

      else
      {
        v11 = 0;
      }
    }

    [(RUITableViewRow *)self setEditableTextFieldValue:v11];
    v16 = [(RemoteUITableViewCell *)self->_tableCell editableTextField];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v16 addTarget:WeakRetained action:sel_textFieldStartedEditing_ forEvents:0x10000];

    v18 = [(RemoteUITableViewCell *)self->_tableCell editableTextField];
    [v18 addTarget:self action:sel_textFieldEditingDidEnd_ forControlEvents:0x40000];

    v19 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [v19 setDelegate:self];
    v20 = [(RUIElement *)self attributes];
    v21 = [v20 objectForKey:@"keyboardType"];

    if ([v21 isEqualToString:@"email"])
    {
      v22 = 1;
      v23 = 7;
    }

    else if ([v21 isEqualToString:@"url"])
    {
      v22 = 1;
      v23 = 3;
    }

    else if ([v21 isEqualToString:@"asciiCapable"])
    {
      v22 = 0;
      v23 = 1;
    }

    else if ([v21 isEqualToString:@"numbersAndPunctuation"])
    {
      v22 = 0;
      v23 = 2;
    }

    else if ([v21 isEqualToString:@"numberPad"])
    {
      v22 = 0;
      v23 = 4;
    }

    else if ([v21 isEqualToString:@"phonePad"])
    {
      v22 = 0;
      v23 = 5;
    }

    else if ([v21 isEqualToString:@"namePhonePad"])
    {
      v22 = 0;
      v23 = 6;
    }

    else
    {
      v22 = 0;
      if (![v21 isEqualToString:@"decimalPad"])
      {
        goto LABEL_63;
      }

      v23 = 8;
    }

    [v19 setKeyboardType:v23];
LABEL_63:
    v46 = [(RUIElement *)self attributes];
    v47 = [v46 objectForKey:@"autocapitalizationType"];

    if ([v47 isEqualToString:@"none"])
    {
      v48 = 0;
    }

    else if ([v47 isEqualToString:@"words"])
    {
      v48 = 1;
    }

    else if ([v47 isEqualToString:@"sentences"])
    {
      v48 = 2;
    }

    else
    {
      if (![v47 isEqualToString:@"allCharacters"])
      {
        goto LABEL_72;
      }

      v48 = 3;
    }

    [v19 setAutocapitalizationType:v48];
LABEL_72:
    v49 = [(RUIElement *)self attributes];
    v50 = [v49 objectForKey:@"secure"];
    v51 = [v50 BOOLValue];

    if (v51)
    {
      [v19 setSecureTextEntry:1];
    }

    else if (!v22)
    {
LABEL_76:
      v52 = [(RUIElement *)self attributes];
      v53 = [v52 objectForKey:@"disableAutocorrection"];
      v54 = [v53 BOOLValue];

      if (v54)
      {
        [v19 setAutocorrectionType:1];
        [v19 setShortcutConversionType:1];
      }

      v55 = [(RUIElement *)self attributes];
      v56 = [v55 objectForKey:@"disableAutocapitalization"];

      if (v56)
      {
        NSLog(&cfstr_WarningRemoteu.isa);
        if ([v56 BOOLValue])
        {
          [v19 setAutocapitalizationType:0];
        }
      }

      v57 = [(RUIElement *)self attributes];
      v58 = [v57 objectForKey:@"suffix"];

      if ([v58 length])
      {
        v59 = [(RUITableViewRow *)self textColorForAttributeName:@"suffixColor"];
        [v19 _setSuffix:v58 withColor:v59];
      }

      v60 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
      v61 = [(RUITableViewRow *)self textColorForAttributeName:@"textColor"];
      [v60 setTextColor:v61];

      goto LABEL_84;
    }

    [v19 setAutocapitalizationType:0];
    [v19 setAutocorrectionType:1];
    goto LABEL_76;
  }

  if ([v135 isEqualToString:@"switch"])
  {
    if (+[RUIPlatform isAppleTV])
    {
      if (_isInternalInstall())
      {
        v24 = _RUILoggingFacility();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_21B93D000, v24, OS_LOG_TYPE_DEFAULT, "AppleTV does not support switchRow", &buf, 2u);
        }
      }
    }

    else if (!self->_switchControl)
    {
      v25 = objc_alloc(MEMORY[0x277D75AE8]);
      v26 = [v25 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      switchControl = self->_switchControl;
      self->_switchControl = v26;

      [(UISwitch *)self->_switchControl addTarget:self action:sel__switchFlipped_ forControlEvents:4096];
    }

    [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryView:self->_switchControl];
    v28 = [(RUIElement *)self attributes];
    v29 = [v28 objectForKey:@"on"];
    if ([v29 BOOLValue])
    {
    }

    else
    {
      v32 = [(RUIElement *)self attributes];
      v33 = [v32 objectForKey:@"value"];
      v34 = [v33 BOOLValue];

      if (!v34)
      {
LABEL_33:
        self->_switchValue = [(UISwitch *)self->_switchControl isOn];
        goto LABEL_84;
      }
    }

    [(UISwitch *)self->_switchControl setOn:1];
    goto LABEL_33;
  }

  if ([v135 isEqualToString:@"datePicker"])
  {
    [(RUITableViewRow *)self setupDatePickerWithCell:self->_tableCell];
    goto LABEL_84;
  }

  if ([v135 isEqualToString:@"select"])
  {
    v30 = [(RUIElement *)self attributes];
    v31 = [v30 objectForKey:@"value"];
    [(RUITableViewRow *)self setSelectRowValue:v31];

LABEL_51:
    goto LABEL_84;
  }

  if ([v135 hasPrefix:@"html"] && -[NSData length](self->_data, "length"))
  {
    if (([v135 isEqualToString:@"htmlLabel"] & 1) == 0)
    {
      v36 = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
      v37 = [v36 webView];
      [v37 setUserInteractionEnabled:0];

      v6 = v135;
    }

    if ([v6 isEqualToString:@"htmlLink"])
    {
      v38 = [(RemoteUITableViewCell *)self->_tableCell contentView];
      [v38 setUserInteractionEnabled:0];
    }

    v39 = self->_tableCell;
    data = self->_data;
    v30 = [(RUIElement *)self sourceURL];
    [(RemoteUITableViewCell *)v39 setHTMLData:data sourceURL:v30 delegate:self];
    goto LABEL_51;
  }

  if ([v135 isEqualToString:@"linkedOption"])
  {
    v30 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [v30 setLineBreakMode:0];
    [v30 setNumberOfLines:0];
    goto LABEL_51;
  }

  if ([v135 isEqualToString:@"selectPage"])
  {
    v41 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [v41 setLineBreakMode:0];
    [v41 setNumberOfLines:0];
    v42 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v42 setLineBreakMode:0];
    [v42 setNumberOfLines:0];
    v43 = [(RUIElement *)self attributes];
    v44 = [v43 objectForKeyedSubscript:@"align"];

    if (v44)
    {
      v45 = self->_tableCell;
      if (![RUIParser textAlignmentForString:v44])
      {
        [(RemoteUITableViewCell *)v45 setLeftAlignDetailLabel:1];
      }
    }

    [(RUITableViewRow *)self setDetailAndPlaceholderText];
  }

LABEL_84:
  v62 = [(RUIElement *)self attributes];
  v134 = [v62 objectForKey:@"label"];

  if ([v134 length])
  {
    v63 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [v63 setText:v134];

    v64 = [(RUIElement *)self attributes];
    v65 = [v64 objectForKeyedSubscript:@"labelNumberOfLines"];

    if (v65)
    {
      v66 = [v65 integerValue];
      v67 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [v67 setNumberOfLines:v66];
    }

    v68 = [(RUIElement *)self attributes];
    v69 = [v68 objectForKeyedSubscript:@"labelTextStyle"];
    v70 = [(RUIElement *)self textStyleWithString:v69];

    if (v70)
    {
      v71 = [MEMORY[0x277D74300] preferredFontForTextStyle:v70];
      v72 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [v72 setFont:v71];

      v73 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [v73 setAdjustsFontForContentSizeCategory:1];
    }
  }

  v74 = [(RUIElement *)self attributes];
  v75 = [v74 objectForKey:@"indentation"];

  if ([v75 length])
  {
    [(RemoteUITableViewCell *)self->_tableCell setIndentationLevel:1];
    v76 = self->_tableCell;
    [v75 floatValue];
    [(RemoteUITableViewCell *)v76 setIndentationWidth:v77];
  }

  v78 = [(RemoteUITableViewCell *)self->_tableCell textLabel];
  [v78 setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];

  if ([(RUITableViewRow *)self alignment]&& [(RUITableViewRow *)self tableCellStyle]== 3)
  {
    v79 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v79 setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];
  }

  v80 = [(RUIElement *)self attributes];
  v81 = [v80 objectForKey:@"subLabel"];
  if ([v81 length])
  {
  }

  else
  {
    v82 = [(RUITableViewRow *)self htmlSubLabelData];
    v83 = [v82 length] == 0;

    if (v83)
    {
      goto LABEL_117;
    }
  }

  v84 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  v85 = [(UITableViewCell *)self->_tableCell ruiValueLabel];
  v86 = [(RUIElement *)self attributes];
  v87 = [v86 objectForKey:@"subLabel"];

  v88 = [(RUIElement *)self attributes];
  v89 = [v88 objectForKey:@"detailLabel"];

  v90 = self->_tableCell;
  v91 = [(RUITableViewRow *)self htmlSubLabelData];
  v92 = [(RUIElement *)self sourceURL];
  [(RemoteUITableViewCell *)v90 setHTMLSubLabelData:v91 sourceURL:v92 delegate:self];

  if ([v87 length])
  {
    v93 = [(RUIElement *)self attributes];
    v94 = [v93 objectForKeyedSubscript:@"subLabelNumberOfLines"];

    if (v94)
    {
      [v84 setNumberOfLines:{objc_msgSend(v94, "integerValue")}];
    }

    v95 = [(RUIElement *)self attributes];
    v96 = [v95 objectForKeyedSubscript:@"subLabelTextStyle"];
    v97 = [(RUIElement *)self textStyleWithString:v96];

    if (v97)
    {
      v98 = [MEMORY[0x277D74300] preferredFontForTextStyle:v97];
      [v84 setFont:v98];

      [v84 setAdjustsFontForContentSizeCategory:1];
    }

    [v84 setMarkdown:v87 baseURL:0];
  }

  if ([v89 length])
  {
    [v85 setText:v89];
    v99 = [(RUITableViewRow *)self textColorForAttributeName:@"detailLabelColor"];
    [v85 setTextColor:v99];
  }

  v100 = [(RUIElement *)self style];
  v101 = +[RUIStyle osloStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v102 = [(RUIElement *)self attributes];
    v103 = [v102 objectForKeyedSubscript:@"detailLabel"];
    v104 = v103 == 0;

    if (!v104)
    {
      if ([v89 length])
      {
        v105 = [(RUIElement *)self attributes];
        v106 = [v105 objectForKey:@"detailLinkURL"];

        if (v106)
        {
          objc_initWeak(&buf, self);
          v107 = self->_tableCell;
          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 3221225472;
          v136[2] = __28__RUITableViewRow_tableCell__block_invoke;
          v136[3] = &unk_2782E9178;
          objc_copyWeak(&v137, &buf);
          [(RemoteUITableViewCell *)v107 setDetailLinkText:v89 handler:v136];
          objc_destroyWeak(&v137);
          objc_destroyWeak(&buf);
        }

        else
        {
          [v84 setText:v89];
        }
      }

      if ([v87 length])
      {
        [v85 setMarkdown:v87 baseURL:0];
      }
    }
  }

  else
  {
  }

LABEL_117:
  [(RUITableViewRow *)self _updateDetailLabel];
  v108 = [(RUIElement *)self attributes];
  v109 = [v108 objectForKey:@"invalid"];
  v110 = [v109 BOOLValue];

  if (v110)
  {
    self->_rowInvalid = 1;
  }

  else if (!self->_rowInvalid)
  {
    goto LABEL_121;
  }

  [(RemoteUITableViewCell *)self->_tableCell setRowInvalid:1];
LABEL_121:
  v111 = [(RUIElement *)self attributes];
  v112 = [v111 objectForKey:@"accessory"];

  v113 = [(RUITableViewRow *)self detailButton];

  if (!v113)
  {
    if (([v112 isEqualToString:@"disclosure"] & 1) != 0 || objc_msgSend(v135, "isEqualToString:", @"selectPage"))
    {
      [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:1];
    }

    else if ([v112 isEqualToString:@"detailDisclosure"])
    {
      [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:2];
    }

    else if ([v112 isEqualToString:@"checkmark"])
    {
      [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:3];
    }

    else if ([v112 isEqualToString:@"none"])
    {
      [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:0];
    }

    else if ([v112 isEqualToString:@"spinner"])
    {
      [(RemoteUITableViewCell *)self->_tableCell setActivityIndicatorVisible:1];
    }

    goto LABEL_138;
  }

  if ([v112 length] && _isInternalInstall())
  {
    v114 = _RUILoggingFacility();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v135;
      _os_log_impl(&dword_21B93D000, v114, OS_LOG_TYPE_DEFAULT, "%@ has a detail button and an accessory. Ignoring accessory.", &buf, 0xCu);
    }
  }

  v115 = [(RUITableViewRow *)self detailButton];
  if ([v115 visibility] == 1)
  {
  }

  else
  {
    v116 = [(RUITableViewRow *)self detailButton];
    v117 = [v116 visibility] == 0;

    if (!v117)
    {
      goto LABEL_134;
    }
  }

  [(RemoteUITableViewCell *)self->_tableCell setEditingAccessoryType:4];
LABEL_134:
  v118 = [(RUITableViewRow *)self detailButton];
  if ([v118 visibility] == 2)
  {

LABEL_137:
    [(RemoteUITableViewCell *)self->_tableCell setAccessoryType:4];
    goto LABEL_138;
  }

  v119 = [(RUITableViewRow *)self detailButton];
  v120 = [v119 visibility] == 0;

  if (v120)
  {
    goto LABEL_137;
  }

LABEL_138:
  if ([(RUITableViewRow *)self isSelected])
  {
    [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:3];
    v121 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    v122 = [(RUIElement *)self style];
    v123 = [v122 radioGroupSelectedColor];
    [v121 setTextColor:v123];
  }

  if ([v112 isEqualToString:@"checkmark.circle"])
  {
    [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:0];
    v124 = [(RUITableViewRow *)self _checkmarkAccessoryViewWithSelected:[(RUITableViewRow *)self isSelected]];
    [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryView:v124];
  }

  [(RUITableViewRow *)self updateDatePickerCell];
  if ([(RUIElement *)self loadImage])
  {
    [(RemoteUITableViewCell *)self->_tableCell setClipsContents:1];
  }

  [(RUITableViewRow *)self loadAccessoryImage];
  v125 = [(RUIElement *)self attributes];
  v126 = [v125 objectForKey:@"firstResponder"];

  if ([v126 BOOLValue])
  {
    if (([v135 isEqualToString:@"editableText"] & 1) != 0 || (objc_msgSend(v135, "isEqualToString:", @"numberPicker") & 1) != 0 || (objc_msgSend(v135, "isEqualToString:", @"select") & 1) != 0 || objc_msgSend(v135, "isEqualToString:", @"datePicker"))
    {
      v127 = objc_loadWeakRetained(&self->_delegate);
      [v127 rowIsFirstResponder:self];
    }

    else
    {
      NSLog(&cfstr_WarningFirstre.isa, v135);
    }
  }

  v128 = [(RUIElement *)self attributes];
  v129 = [v128 objectForKey:@"forceFullSizeDetailLabel"];

  if ([v129 BOOLValue])
  {
    [(RemoteUITableViewCell *)self->_tableCell setForceFullSizeDetailLabel:1];
  }

  v130 = [(RUIElement *)self attributes];
  v131 = [v130 objectForKey:@"leftAlignDetailLabel"];

  if ([v131 BOOLValue])
  {
    [(RemoteUITableViewCell *)self->_tableCell setLeftAlignDetailLabel:1];
  }

  [(RUITableViewRow *)self _updateContentForDisabledState];

LABEL_155:
  [(RUITableViewRow *)self setSelectedRowTextColor];
  [(RUITableViewRow *)self _drawCustomImage:[(RUITableViewRow *)self isSelected]];
  [(RUITableViewRow *)self _setBackgroundColor];
  [(RUITableViewRow *)self _updateDetailLabel];
  v132 = self->_tableCell;

  return v132;
}

void __28__RUITableViewRow_tableCell__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained detailLabelActivatedLinkFromCell:v6 completion:v5];
}

- (void)updateDatePickerCell
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"class"];
  v5 = [v4 isEqualToString:@"datePicker"];

  if (v5)
  {
    tableCell = self->_tableCell;
    v7 = [(RUITableViewRow *)self wasEverSelected];
    v8 = [(RUITableViewRow *)self date];
    v9 = [(RUITableViewRow *)self _datePickerFormatter];
    [(RemoteUITableViewCell *)tableCell setupDatePickerCellWithElement:self renderPlaceHolder:!v7 date:v8 dateFormatter:v9];

    v10 = [(RemoteUITableViewCell *)self->_tableCell detailTextLabel];
    [v10 setText:0];

    v11 = [(RemoteUITableViewCell *)self->_tableCell textLabel];
    [v11 setText:0];
  }
}

- (void)_updateDetailLabel
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"class"];

  if (([v4 isEqualToString:@"link"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"label") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"button"))
  {
    v5 = [(RUIElement *)self attributes];
    v6 = [v5 objectForKey:@"detailLabel"];

    if (v6)
    {
      v7 = [(RUIElement *)self attributes];
      v8 = [v7 objectForKey:@"detailLabel"];

      v9 = [(RUIElement *)self attributes];
      v10 = [v9 objectForKeyedSubscript:@"alternateDetailLabel"];

      if (-[RUITableViewRow showAlternateDetailLabel](self, "showAlternateDetailLabel") && [v10 length])
      {
        v11 = v10;

        v8 = v11;
      }

      if ([v8 length])
      {
        v12 = [(RUIElement *)self attributes];
        v13 = [v12 objectForKey:@"detailLinkURL"];

        if (v13)
        {
          objc_initWeak(&location, self);
          tableCell = self->_tableCell;
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __37__RUITableViewRow__updateDetailLabel__block_invoke;
          v16[3] = &unk_2782E9178;
          objc_copyWeak(&v17, &location);
          [(RemoteUITableViewCell *)tableCell setDetailLinkText:v8 handler:v16];
          objc_destroyWeak(&v17);
          objc_destroyWeak(&location);
        }

        else
        {
          v15 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
          [v15 setText:v8];
        }
      }
    }
  }
}

void __37__RUITableViewRow__updateDetailLabel__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained detailLabelActivatedLinkFromCell:v6 completion:v5];
}

- (id)newConfiguredDatePicker
{
  v3 = [(RUITableViewRow *)self dateFormatterCalendarIdentifier];
  if (v3)
  {
    [MEMORY[0x277CBEA80] calendarWithIdentifier:v3];
  }

  else
  {
    [MEMORY[0x277CBEA80] currentCalendar];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v4 setTimeZone:v5];

  v6 = objc_alloc(MEMORY[0x277D753E8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setCalendar:v4];
  v8 = +[RUITableViewRow _formatterForDateYMD];
  v9 = [v8 timeZone];
  [v7 setTimeZone:v9];

  [v7 setAutoresizingMask:10];
  [v7 addTarget:self action:sel__datePickerChanged_ forControlEvents:4096];
  [v7 setDatePickerMode:{-[RUITableViewRow datePickerMode](self, "datePickerMode")}];
  v10 = [(RUITableViewRow *)self date];
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    v10 = [RUITableViewRow _timeZoneAdjustedDateFromDate:v11];
  }

  v12 = [v7 calendar];
  v13 = [v12 components:30 fromDate:v10];

  [v13 setHour:0];
  [v13 setMinute:0];
  [v13 setSecond:0];
  v14 = [v7 calendar];
  v15 = [v14 dateFromComponents:v13];

  v16 = [(RUITableViewRow *)self dateMin];
  [v7 setMinimumDate:v16];

  v17 = [(RUITableViewRow *)self dateMax];
  [v7 setMaximumDate:v17];

  [v7 setDate:v15 animated:0];
  return v7;
}

- (void)setupDatePickerWithCell:(id)a3
{
  v21 = a3;
  v4 = [(RUIElement *)self attributes];
  v5 = [v4 objectForKey:@"value"];

  v6 = [(RUIElement *)self attributes];
  v7 = [v6 objectForKey:@"minValue"];

  v8 = [(RUIElement *)self attributes];
  v9 = [v8 objectForKey:@"maxValue"];

  if ([v5 length])
  {
    v10 = +[RUITableViewRow _formatterForDateYMD];
    [v10 dateFromString:v5];
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    [RUITableViewRow _timeZoneAdjustedDateFromDate:v10];
  }
  v11 = ;
  [(RUITableViewRow *)self setDate:v11];

  if ([v7 length])
  {
    v12 = +[RUITableViewRow _formatterForDateYMD];
    v13 = [v12 dateFromString:v7];
    [(RUITableViewRow *)self setDateMin:v13];
  }

  if ([v9 length])
  {
    if ([v9 isEqualToString:@"today"])
    {
      v14 = [MEMORY[0x277CBEAA8] date];
      [(RUITableViewRow *)self setDateMax:v14];
    }

    else
    {
      v14 = +[RUITableViewRow _formatterForDateYMD];
      v15 = [v14 dateFromString:v9];
      [(RUITableViewRow *)self setDateMax:v15];
    }
  }

  if ([(RUITableViewRow *)self datePickerStyle]== 2)
  {
    v16 = [v21 ruiDetailTextLabel];
    [v16 setHidden:1];

    v17 = [(RUITableViewRow *)self newConfiguredDatePicker];
    [v17 setUserInteractionEnabled:0];
    [(RUITableViewRow *)self setPickerView:v17];
    [v21 setRemoteUIAccessoryView:v17];
  }

  else
  {
    v18 = [(RUIElement *)self attributes];
    v17 = [v18 objectForKey:@"placeholder"];

    v19 = v17;
    if (!v17)
    {
      v18 = [(RUITableViewRow *)self _datePickerFormatter];
      v19 = [v18 stringFromDate:self->_date];
    }

    v20 = [v21 ruiDetailTextLabel];
    [v20 setText:v19];

    if (!v17)
    {
    }
  }
}

- (void)activateDatePicker
{
  v3 = [(RUITableViewRow *)self pickerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(RUITableViewRow *)self pickerView];
    v5 = [v6 datePickerMode];
    if (v5 <= 3)
    {
      [v6 _compactStyleSetActiveComponent:qword_21BA91F80[v5]];
    }
  }
}

- (void)setDetailAndPlaceholderText
{
  v3 = [(RUIElement *)self attributes];
  v10 = [v3 objectForKey:@"detailLabel"];

  v4 = [(RUIElement *)self attributes];
  v5 = [v4 objectForKey:@"placeholder"];

  v6 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  if ([v10 length])
  {
    [v6 setText:v10];
    v7 = [(RUIElement *)self style];
    v8 = [v7 selectPageDetailTextColor];
  }

  else
  {
    if (![v5 length])
    {
      goto LABEL_6;
    }

    [v6 setText:v5];
    v7 = objc_alloc_init(MEMORY[0x277D75BB8]);
    v8 = [v7 _placeholderColor];
  }

  v9 = v8;
  [v6 setTextColor:v8];

LABEL_6:
}

- (BOOL)_matchesSearchTermComponent:(id)a3
{
  v4 = a3;
  v5 = [(RUITableViewRow *)self searchTerms];

  if (v5)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v6 = [(RUITableViewRow *)self searchTerms];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__RUITableViewRow__matchesSearchTermComponent___block_invoke;
    v17[3] = &unk_2782E91A0;
    v18 = v4;
    v19 = &v20;
    [v6 enumerateObjectsUsingBlock:v17];

    v7 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v8 = [(RUIElement *)self attributes];
    v9 = [v8 objectForKeyedSubscript:@"label"];
    v10 = [v9 localizedStandardContainsString:v4];

    if (v10 & 1) != 0 || (-[RUIElement attributes](self, "attributes"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:@"subLabel"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "localizedStandardContainsString:", v4), v12, v11, (v13))
    {
      v7 = 1;
    }

    else
    {
      v14 = [(RUIElement *)self attributes];
      v15 = [v14 objectForKeyedSubscript:@"detailLabel"];
      v7 = [v15 localizedStandardContainsString:v4];
    }
  }

  return v7 & 1;
}

uint64_t __47__RUITableViewRow__matchesSearchTermComponent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 localizedStandardContainsString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)matchesSearchTerm:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__RUITableViewRow_matchesSearchTerm___block_invoke;
  v8[3] = &unk_2782E91C8;
  v8[4] = self;
  v8[5] = &v9;
  [v6 enumerateObjectsUsingBlock:v8];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return self;
}

uint64_t __37__RUITableViewRow_matchesSearchTerm___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    result = [*(a1 + 32) _matchesSearchTermComponent:a2];
    v2 = *(*(a1 + 40) + 8);
  }

  else
  {
    result = 0;
  }

  *(v2 + 24) = result;
  return result;
}

- (void)setSelectedRowTextColor
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"class"];
  v5 = [v4 isEqualToString:@"selectPage"];

  if (v5)
  {
    v6 = [(RUIElement *)self style];
    v11 = [v6 selectPageDetailTextColor];

    v7 = [(RUIElement *)self attributes];
    v8 = [v7 objectForKeyedSubscript:@"selectPageRowColor"];

    if (v8)
    {
      v9 = [(RUITableViewRow *)self textColorForAttributeName:@"selectPageRowColor"];

      v11 = v9;
    }

    v10 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v10 setTextColor:v11];
  }
}

- (void)setSelectRowValue:(id)a3
{
  v4 = a3;
  self->_selectedRow = -1;
  v14 = v4;
  if ([v4 length] && -[NSMutableArray count](self->_selectOptions, "count"))
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_selectOptions objectAtIndex:v5];
      v7 = [v6 value];
      v8 = [v7 isEqualToString:v14];

      if (v8)
      {
        break;
      }

      if ([(NSMutableArray *)self->_selectOptions count]<= ++v5)
      {
        goto LABEL_8;
      }
    }

    self->_selectedRow = v5;
    v9 = [v6 label];
    v10 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v10 setText:v9];
  }

LABEL_8:
  if (self->_selectedRow < 0)
  {
    v11 = [(RUIElement *)self attributes];
    v12 = [v11 objectForKey:@"placeholder"];
    v13 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v13 setText:v12];
  }
}

- (BOOL)setSelectPageRowValue:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [(RUITableViewRow *)self selectOptions];
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = *v40;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 value];
        v11 = [v4 isEqualToString:v10];

        if (v11)
        {
          v34 = v5;
          v12 = [(RUIElement *)self attributes];
          v13 = [v12 mutableCopy];

          v14 = [v9 value];
          [v13 setObject:v14 forKeyedSubscript:@"value"];

          v15 = [v9 label];
          [v13 setObject:v15 forKeyedSubscript:@"detailLabel"];

          v16 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
          v17 = [v9 label];
          [v16 setText:v17];

          v33 = v13;
          [(RUITableViewRow *)self setAttributes:v13];
          v18 = [(RUITableViewRow *)self linkedPage];
          v19 = [v18 tableViewOM];
          v20 = [v19 sections];
          v21 = [v20 firstObject];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v32 = v21;
          v22 = [v21 rows];
          v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v36;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v35 + 1) + 8 * j);
                v28 = [v27 attributes];
                v29 = [v28 objectForKeyedSubscript:@"value"];
                v30 = [v29 isEqualToString:v4];

                [v27 setSelected:v30];
              }

              v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v24);
          }

          LOBYTE(v6) = 1;
          v5 = v34;
          goto LABEL_18;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v6;
}

- (void)setValueFromString:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RUIElement *)self attributes];
  v8 = [v7 objectForKey:@"class"];

  if ([v8 isEqualToString:@"editableText"])
  {
    v9 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v10 = [v9 text];
    v11 = [v10 isEqualToString:v6];

    if (v11)
    {
      goto LABEL_15;
    }

    v12 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [v12 setText:v6];

    goto LABEL_13;
  }

  if ([v8 isEqualToString:@"switch"])
  {
    v13 = [(UISwitch *)self->_switchControl isOn];
    if (v13 == [v6 BOOLValue])
    {
      goto LABEL_15;
    }

    -[UISwitch setOn:](self->_switchControl, "setOn:", [v6 BOOLValue]);
    goto LABEL_13;
  }

  if (![v8 isEqualToString:@"datePicker"])
  {
    if ([v8 isEqualToString:@"select"])
    {
      [(RUITableViewRow *)self setSelectRowValue:v6];
      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"selectPage"])
    {
      if ([(RUITableViewRow *)self setSelectPageRowValue:v6])
      {
LABEL_13:
        if (v4)
        {
LABEL_14:
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained rowDidChange:self action:1];

          goto LABEL_15;
        }

        goto LABEL_15;
      }

      if (!_isInternalInstall())
      {
        goto LABEL_15;
      }

      v19 = _RUILoggingFacility();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v23 = 138412290;
      v24 = v6;
      v20 = "Warning: No selectPageRow linkedOption found with value '%@'";
    }

    else
    {
      if (!_isInternalInstall())
      {
        goto LABEL_15;
      }

      v19 = _RUILoggingFacility();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v23 = 138412290;
      v24 = v8;
      v20 = "Warning: Attempt to set value on row with class '%@' which is not settable";
    }

    v21 = v19;
    v22 = 12;
    goto LABEL_30;
  }

  if (![v6 length])
  {
    if (!_isInternalInstall())
    {
      goto LABEL_15;
    }

    v19 = _RUILoggingFacility();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      v20 = "Warning: Ignoring empty date value";
      v21 = v19;
      v22 = 2;
LABEL_30:
      _os_log_impl(&dword_21B93D000, v21, OS_LOG_TYPE_DEFAULT, v20, &v23, v22);
    }

LABEL_31:

    goto LABEL_15;
  }

  v14 = +[RUITableViewRow _formatterForDateYMD];
  v15 = [v14 dateFromString:v6];

  v16 = [(RUITableViewRow *)self date];
  v17 = [v16 isEqual:v15];

  if (!v17)
  {
    [(RUITableViewRow *)self setDate:v15];

    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (BOOL)supportsAutomaticSelection
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKey:@"class"];

  if ([v3 isEqualToString:@"datePicker"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"select"];
  }

  return v4;
}

- (void)populatePostbackDictionary:(id)a3
{
  v25 = a3;
  v4 = [(RUIElement *)self attributes];
  v5 = [v4 objectForKey:@"postback"];

  if (![v5 length])
  {
    v6 = [(RUIElement *)self attributes];
    v7 = [v6 objectForKey:@"id"];

    v5 = v7;
  }

  v8 = [(RUITableViewRow *)self tableCell];
  if ([v5 length])
  {
    v9 = [(RUIElement *)self attributes];
    v10 = [v9 objectForKey:@"class"];

    if (([v10 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"numberPicker"))
    {
      v11 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
      v12 = [v11 text];

      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = &stru_282D68F58;
      }

      [v25 setValue:v13 forKey:v5];

      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"switch"])
    {
      v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[UISwitch isOn](self->_switchControl, "isOn")}];
      [v25 setValue:v22 forKey:v5];
LABEL_35:

      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"datePicker"])
    {
      [v25 setValue:self->_date forKey:v5];
LABEL_10:

      goto LABEL_11;
    }

    if ([v10 isEqualToString:@"select"])
    {
      if (self->_selectedRow < 0)
      {
        goto LABEL_10;
      }

      v22 = [(NSMutableArray *)self->_selectOptions objectAtIndex:?];
      v23 = [v22 value];
    }

    else
    {
      if (![v10 isEqualToString:@"selectPage"])
      {
        goto LABEL_10;
      }

      v22 = [(RUIElement *)self attributes];
      v23 = [v22 objectForKeyedSubscript:@"value"];
    }

    v24 = v23;
    [v25 setValue:v23 forKey:v5];

    goto LABEL_35;
  }

LABEL_11:
  v14 = [(RUIElement *)self attributes];
  v15 = [v14 objectForKey:@"radioGroup"];

  if ([v15 length] && -[RemoteUITableViewCell remoteUIAccessoryType](self->_tableCell, "remoteUIAccessoryType") == 3)
  {
    v16 = [(RUIElement *)self attributes];
    v17 = [v16 objectForKey:@"value"];

    if ([v17 length])
    {
      [v25 setValue:v17 forKey:v15];
    }
  }

  v18 = [(RUIElement *)self attributes];
  v19 = [v18 objectForKey:@"accessory"];

  if ([v15 length] && objc_msgSend(v19, "isEqualToString:", @"checkmark.circle") && -[RUITableViewRow isSelected](self, "isSelected"))
  {
    v20 = [(RUIElement *)self attributes];
    v21 = [v20 objectForKey:@"value"];

    if ([v21 length])
    {
      [v25 setValue:v21 forKey:v15];
    }
  }
}

- (id)selectOptions
{
  selectOptions = self->_selectOptions;
  if (!selectOptions)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_selectOptions;
    self->_selectOptions = v4;

    selectOptions = self->_selectOptions;
  }

  return selectOptions;
}

- (BOOL)isCopyable
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"isCopyable"];

  v5 = [(RUIElement *)self attributes];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 objectForKeyedSubscript:@"isCopyable"];
    v8 = [(NSString *)v7 BOOLValue];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:@"copyableAttribute"];

    if (v9)
    {
      return 1;
    }

    v11 = [(RUIElement *)self attributes];
    v6 = [v11 objectForKey:@"class"];

    if (![v6 isEqualToString:@"label"])
    {
      v8 = 0;
      goto LABEL_4;
    }

    v7 = [(RUITableViewRow *)self copyText];
    v8 = v7 != 0;
  }

LABEL_4:
  return v8;
}

- (NSString)copyText
{
  v3 = [(RUITableViewRow *)self copyTextFromCopyableAttribute];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    v6 = [(UITableViewCell *)self->_tableCell ruiValueLabel];
    v7 = [v6 text];

    if (!v7)
    {
      v8 = [v5 text];
      if (v8)
      {
        v7 = v8;
      }

      else
      {
        v9 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
        v7 = [v9 text];
      }
    }

    v4 = v7;
  }

  return v4;
}

- (id)copyTextFromCopyableAttribute
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKey:@"copyableAttribute"];

  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RUITableViewRow;
  [(RUIElement *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKeyedSubscript:@"class"];
  v7 = [(RUIElement *)self attributes];
  v8 = [v7 objectForKeyedSubscript:@"label"];
  v9 = [v3 stringWithFormat:@"<%@: %p, rowClass: '%@', label: '%@'>", v4, self, v6, v8];

  return v9;
}

- (void)startActivityIndicator
{
  if ([(RUITableViewRow *)self wantsInlineActivityIndicator])
  {

    [(RUITableViewRow *)self setShowingProgressIndicator:1];
  }
}

- (void)setDate:(id)a3
{
  v5 = a3;
  if (self->_date != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_date, a3);
    v6 = [(RUITableViewRow *)self _datePickerFormatter];
    v7 = [v6 stringFromDate:self->_date];
    v8 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v8 setText:v7];

    [(RUITableViewRow *)self updateDatePickerCell];
    v5 = v9;
  }
}

- (void)_datePickerChanged:(id)a3
{
  v4 = [a3 date];
  [(RUITableViewRow *)self setDate:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rowDidChange:self action:1];
}

- (double)height
{
  height = self->_height;
  if (height <= 0.0)
  {
    v3 = [(RUIElement *)self attributes];
    v4 = [v3 objectForKey:@"height"];
    [v4 floatValue];
    height = v5;
  }

  return height;
}

- (float)rowHeightWithMax:(float)a3 peggedHeight:(float)a4 tableView:(id)a5 indexPath:(id)a6
{
  v9 = a5;
  v10 = [(RUIElement *)self attributes];
  v11 = [v10 objectForKeyedSubscript:@"class"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  v14 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  [(RUITableViewRow *)self height];
  v17 = v16;
  if (v16 > 0.0 && (IsAccessibilityContentSizeCategory & 1) == 0)
  {
    v13 = v16;
    goto LABEL_21;
  }

  if ([v11 hasPrefix:@"html"])
  {
    v18 = [(RUITableViewRow *)self tableCell];
    [(RemoteUITableViewCell *)self->_tableCell frame];
    if (v19 < 44.0)
    {
      [(RemoteUITableViewCell *)self->_tableCell setFrame:?];
    }

    p_cachedSize = &self->_cachedSize;
    width = self->_cachedSize.width;
    [(RemoteUITableViewCell *)self->_tableCell webViewWidth];
    if (width != v22 || (height = self->_cachedSize.height, height == 0.0))
    {
      v24 = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
      [(RemoteUITableViewCell *)self->_tableCell webViewWidth];
      [v24 heightForWidth:?];
      self->_cachedSize.height = v25 + 1.0 + 32.0;

      height = self->_cachedSize.height;
      if (height > a3)
      {
        height = a4;
        self->_cachedSize.height = a4;
        if (a3 > 0.0)
        {
          v26 = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
          v27 = [v26 webView];
          v28 = [v27 _scrollView];
          [v28 setBounces:1];

          v29 = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
          v30 = [v29 webView];
          v31 = [v30 _scrollView];
          [v31 setScrollEnabled:1];

          height = p_cachedSize->height;
        }
      }
    }

    v12 = fmax(height, 44.0);
    goto LABEL_3;
  }

  v32 = [(RUITableViewRow *)self tableCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = *MEMORY[0x277D76F30];
  }

  else
  {
    if (IsAccessibilityContentSizeCategory)
    {
LABEL_2:
      v12 = *MEMORY[0x277D76F30];
LABEL_3:
      v13 = v12;
      goto LABEL_21;
    }

    v36 = [(RUITableViewRow *)self tableCell];
    v37 = [v36 textLabel];
    if ([v37 numberOfLines] == 1)
    {
      v38 = [(RUITableViewRow *)self tableCell];
      v39 = [v38 detailTextLabel];
      v40 = [v39 numberOfLines] != 1;
    }

    else
    {
      v40 = 1;
    }

    v41 = [(RUITableViewRow *)self tableCellStyle];
    if (v40 || v41 == 3)
    {
      v42 = [v9 readableContentGuide];
      [v42 layoutFrame];
      v44 = v43;

      v45 = [(RemoteUITableViewCell *)self->_tableCell contentView];
      [v45 layoutMargins];
      v47 = v46;
      v48 = [(RemoteUITableViewCell *)self->_tableCell contentView];
      [v48 layoutMargins];
      v50 = v44 - (v47 + v49);

      v51 = [(UITableViewCell *)self->_tableCell ruiImageView];
      v52 = [v51 image];

      if (v52)
      {
        v53 = [(UITableViewCell *)self->_tableCell ruiImageView];
        [v53 size];
        v50 = v50 - v54;
      }

      v55 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      v56 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [v55 textRectForBounds:objc_msgSend(v56 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, v50, 1.79769313e308}];
      v58 = v57;

      v59 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
      [v59 sizeThatFits:{v50, 1.79769313e308}];
      v61 = v60;

      v62 = v58 + v61 + 31.0;
      v63 = [(RUITableViewRow *)self tableCell];
      v64 = [v63 ruiDetailTextLabel];
      v65 = [v64 text];
      v66 = [v65 length];

      if (v66)
      {
        v17 = v62 + -1.5;
      }

      else
      {
        v17 = v62;
      }
    }
  }

  if (v17 > 44.0)
  {
    v34 = v17;
    v13 = v34;
  }

  else
  {
    v13 = -1.0;
  }

LABEL_21:

  return v13;
}

- (void)_switchFlipped:(id)a3
{
  if (self->_switchValue != [(UISwitch *)self->_switchControl isOn])
  {
    self->_switchValue = [(UISwitch *)self->_switchControl isOn];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rowDidChange:self action:2];
  }
}

- (BOOL)rowSupportsLoadingIndicator
{
  v3 = [(RUIElement *)self attributes];
  v4 = [v3 objectForKeyedSubscript:@"class"];

  if ([v4 isEqualToString:@"link"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"switch"))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(RUITableViewRow *)self detailButton];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)indentWhileEditing
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"indentWhileEditing"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isEditingEnabled
{
  v2 = [(RUIElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"editingEnabled"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  if ([(NSMutableArray *)self->_selectOptions count:a3]> a4)
  {
    v7 = [(NSMutableArray *)self->_selectOptions objectAtIndex:a4];
    v8 = [v7 label];
    v9 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [v9 setText:v8];

    self->_selectedRow = a4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rowDidChange:self action:1];
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  if ([(NSMutableArray *)self->_selectOptions count:a3]<= a4)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_selectOptions objectAtIndex:a4];
    v8 = [v7 label];
  }

  return v8;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rowDidEndEditing:self];

  return 1;
}

- (void)setEditableTextFieldValue:(id)a3
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
  v6 = [v5 text];
  v7 = [WeakRetained textFieldRow:self changeCharactersInRange:0 replacementString:{objc_msgSend(v6, "length"), v13}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v9 = v8;
    v10 = v7;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v9 = v8;
    if (isKindOfClass)
    {
      v12 = [v7 firstObject];
      [v9 setText:v12];

      goto LABEL_7;
    }

    v10 = v13;
  }

  [v8 setText:v10];
LABEL_7:
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained textFieldRow:self changeCharactersInRange:location replacementString:{length, v10}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 text];
    v14 = [v13 stringByReplacingCharactersInRange:location withString:{length, v10}];

    v15 = [v12 isEqualToString:v14];
    if ((v15 & 1) == 0)
    {
      [v9 setText:v12];
    }

LABEL_19:

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 count])
  {
    v14 = [v12 objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v9 setText:v14];
      if ([v12 count] >= 2)
      {
        v17 = [v12 objectAtIndex:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v17 intValue];
          if ([v12 count] < 3)
          {
            v20 = 0;
          }

          else
          {
            v23 = v18;
            v19 = [v12 objectAtIndex:2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [v19 intValue];
            }

            else
            {
              v20 = 0;
            }

            v18 = v23;
          }

          [v9 setSelectionRange:{v18, v20}];
        }
      }
    }

    v15 = isKindOfClass ^ 1;
    goto LABEL_19;
  }

  v15 = 1;
LABEL_20:
  v21 = objc_loadWeakRetained(&self->_delegate);
  [v21 rowDidChange:self action:1];

  return v15 & 1;
}

- (void)textFieldEditingDidEnd:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textFieldChangeObserver);
  [WeakRetained textFieldEditingDidEnd:v4];
}

- (void)activateMarkdownURL:(id)a3
{
  v4 = a3;
  v5 = [(RUIElement *)self attributes];
  v8 = [v5 mutableCopy];

  v6 = [v4 absoluteString];

  [v8 setObject:v6 forKeyedSubscript:@"url"];
  v7 = [[RUIElement alloc] initWithAttributes:v8 parent:self];
  [(RUIElement *)self performAction:2 forElement:v7 completion:0];
}

- (void)detailLabelActivatedLinkFromCell:(id)a3 completion:(id)a4
{
  v10 = a4;
  v5 = [(RUIElement *)self attributes];
  v6 = [v5 objectForKey:@"detailLinkURL"];

  if (v6)
  {
    v7 = [(RUIElement *)self attributes];
    v8 = [v7 mutableCopy];

    [v8 setObject:v6 forKeyedSubscript:@"url"];
    v9 = [[RUIElement alloc] initWithAttributes:v8 parent:self];
    [(RUIElement *)self performAction:2 forElement:v9 completion:v10];
  }
}

- (void)webContainerView:(id)a3 didClickLinkWithURL:(id)a4
{
  v5 = a4;
  v6 = [(RUIElement *)self attributes];
  v9 = [v6 mutableCopy];

  v7 = [v5 absoluteString];

  [v9 setObject:v7 forKeyedSubscript:@"url"];
  v8 = [[RUIElement alloc] initWithAttributes:v9 parent:self];
  [(RUIElement *)self performAction:2 forElement:v8 completion:0];
}

- (id)_checkmarkAccessoryViewWithSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
  v6 = [MEMORY[0x277D755D0] configurationWithFont:v5];
  if (v3)
  {
    v7 = @"checkmark.circle.fill";
  }

  else
  {
    v7 = @"circle";
  }

  v8 = [MEMORY[0x277D755B8] systemImageNamed:v7 withConfiguration:v6];
  v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
  v10 = [(RUIElement *)self attributes];
  v11 = [v10 objectForKey:@"checkedColor"];

  if (v11)
  {
    if (v3)
    {
      [MEMORY[0x277D75348] _remoteUI_colorWithString:v11];
    }

    else
    {
      [MEMORY[0x277D75348] lightGrayColor];
    }
    v12 = ;
    [v9 setTintColor:v12];
  }

  return v9;
}

- (void)_drawCustomImage:(BOOL)a3
{
  v65 = a3;
  v69[2] = *MEMORY[0x277D85DE8];
  v4 = [(RUIElement *)self attributes];
  v5 = [v4 objectForKey:@"imageText"];

  v6 = [(RUIElement *)self attributes];
  v7 = [v6 objectForKey:@"lightImageTextColor"];

  v8 = [(RUIElement *)self attributes];
  v9 = [v8 objectForKey:@"darkImageTextColor"];

  v10 = [(RUIElement *)self attributes];
  v67 = [v10 objectForKey:@"selectedLightImageTextColor"];

  v11 = [(RUIElement *)self attributes];
  v12 = [v11 objectForKey:@"selectedDarkImageTextColor"];

  v13 = [(RUIElement *)self attributes];
  v14 = [v13 objectForKey:@"darkBackgroundColor"];

  v15 = [(RUIElement *)self attributes];
  v16 = [v15 objectForKey:@"lightBackgroundColor"];

  v17 = [(RUIElement *)self attributes];
  v18 = [v17 objectForKey:@"selectedDarkColor"];

  v19 = [(RUIElement *)self attributes];
  v20 = [v19 objectForKey:@"selectedLightColor"];

  v21 = v20;
  v22 = v16;
  v23 = v5;
  if (v5 || v7 || v9 || v14 || v16 || v18 || v21 || v67 || v12)
  {
    v63 = v14;
    v59 = v21;
    if (v21)
    {
      [MEMORY[0x277D75348] _remoteUI_colorWithString:?];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }
    v64 = ;
    if (v16)
    {
      [MEMORY[0x277D75348] _remoteUI_colorWithString:v16];
    }

    else
    {
      [MEMORY[0x277D75348] systemLightGrayColor];
    }
    v24 = ;
    if (v67)
    {
      [MEMORY[0x277D75348] _remoteUI_colorWithString:v67];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v25 = ;
    v61 = v7;
    v62 = v18;
    v58 = v22;
    if (v7)
    {
      [MEMORY[0x277D75348] _remoteUI_colorWithString:v7];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v26 = ;
    v27 = [MEMORY[0x277D75C80] _currentTraitCollection];
    v28 = [v27 userInterfaceStyle];

    v60 = v12;
    if (v28 == 2)
    {
      if (v62)
      {
        v29 = [MEMORY[0x277D75348] _remoteUI_colorWithString:?];

        v64 = v29;
      }

      if (v14)
      {
        v30 = [MEMORY[0x277D75348] _remoteUI_colorWithString:?];

        v24 = v30;
      }

      if (v12)
      {
        v31 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v12];

        v25 = v31;
      }

      if (v9)
      {
        [MEMORY[0x277D75348] _remoteUI_colorWithString:v9];
      }

      else
      {
        [MEMORY[0x277D75348] whiteColor];
      }
      v34 = ;
      v32 = v65;

      v33 = v34;
    }

    else
    {
      v32 = v65;
      v33 = v26;
    }

    if (v32)
    {
      v35 = v64;
    }

    else
    {
      v35 = v24;
    }

    v66 = v25;
    v57 = v33;
    if (v32)
    {
      v33 = v25;
    }

    v36 = MEMORY[0x277D74300];
    v37 = v33;
    v38 = v35;
    v56 = [v36 systemFontOfSize:17.0];
    v39 = *MEMORY[0x277D740C0];
    v68[0] = *MEMORY[0x277D740A8];
    v68[1] = v39;
    v69[0] = v56;
    v69[1] = v37;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
    v41 = v23;
    [v23 boundingRectWithSize:1 options:v40 attributes:0 context:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v43 = v42;
    v45 = v44;
    v46 = [MEMORY[0x277D759A0] mainScreen];
    [v46 scale];
    v48 = v47;
    v70.width = 77.0;
    v70.height = 40.0;
    UIGraphicsBeginImageContextWithOptions(v70, 0, v48);

    v49 = [(RemoteUITableViewCell *)self->_tableCell imageView];
    v50 = [v49 image];
    [v50 drawInRect:{0.0, 0.0, 77.0, 40.0}];

    CurrentContext = UIGraphicsGetCurrentContext();
    [v38 setFill];

    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v71.size.width = 77.0;
    v71.size.height = 40.0;
    CGContextFillRect(CurrentContext, v71);
    v23 = v41;
    [v41 drawAtPoint:v40 withAttributes:{38.5 - v43 * 0.5, 20.0 - v45 * 0.5}];
    v52 = UIGraphicsGetImageFromCurrentImageContext();
    v53 = [(RemoteUITableViewCell *)self->_tableCell imageView];
    [v53 setImage:v52];

    v54 = [(RemoteUITableViewCell *)self->_tableCell imageView];
    [v54 _setCornerRadius:8.0];

    v55 = [(RemoteUITableViewCell *)self->_tableCell imageView];

    [v55 setClipsToBounds:1];
    UIGraphicsEndImageContext();

    v7 = v61;
    v21 = v59;
    v12 = v60;
    v18 = v62;
    v14 = v63;
    v22 = v58;
  }
}

- (void)_setBackgroundColor
{
  v3 = [(RUIElement *)self attributes];
  v6 = [v3 objectForKeyedSubscript:@"backgroundColor"];

  v4 = v6;
  if (v6)
  {
    v5 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v6];
    [(RemoteUITableViewCell *)self->_tableCell setBackgroundColor:v5];

    v4 = v6;
  }
}

- (void)didBecomeSelected
{
  [(RUITableViewRow *)self setWasEverSelected:1];

  [(RUITableViewRow *)self updateDatePickerCell];
}

- (NSString)label
{
  v3 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
  v4 = [v3 attributedText];
  v5 = [v4 string];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    v6 = [v7 text];
  }

  return v6;
}

- (void)setLabel:(id)a3
{
  tableCell = self->_tableCell;
  v4 = a3;
  v5 = [(UITableViewCell *)tableCell ruiTextLabel];
  [v5 setMarkdown:v4 baseURL:0];
}

- (NSString)subLabel
{
  v3 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  v4 = [v3 attributedText];
  v5 = [v4 string];

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    v6 = [v7 text];
  }

  return v6;
}

- (void)setSubLabel:(id)a3
{
  tableCell = self->_tableCell;
  v4 = a3;
  v5 = [(UITableViewCell *)tableCell ruiDetailTextLabel];
  [v5 setMarkdown:v4 baseURL:0];
}

- (RUITableViewRowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RUITextFieldChangeObserver)textFieldChangeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_textFieldChangeObserver);

  return WeakRetained;
}

- (RUIPage)linkedPage
{
  WeakRetained = objc_loadWeakRetained(&self->_linkedPage);

  return WeakRetained;
}

- (void)parseBadge
{
  v2 = self;
  RUITableViewRow.parseBadge()();
}

- (void)setBadgeInTableCell:(id)a3
{
  v4 = a3;
  v5 = self;
  RUITableViewRow.setBadge(in:)(v4);
}

- (void)reportInternalRenderEvent
{
  v2 = self;
  RUITableViewRow.reportInternalRenderEvent()();
}

- (void)tableCell
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef RUICTSettingCopyMyPhoneNumber()"];
  [v0 handleFailureInFunction:v1 file:@"RUITableViewRow.m" lineNumber:51 description:{@"%s", dlerror()}];

  __break(1u);
}

@end