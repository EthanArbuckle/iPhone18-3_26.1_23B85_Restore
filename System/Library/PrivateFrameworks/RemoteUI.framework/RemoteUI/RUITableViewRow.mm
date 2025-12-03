@interface RUITableViewRow
+ (id)_defaultFormatter;
+ (id)_formatterForDateYMD;
+ (id)_formatterForMonthAndDay;
+ (id)_formatterForYearAndMonth;
+ (id)_timeZoneAdjustedDateFromDate:(id)date;
+ (void)initialize;
+ (void)resetLocale;
- (BOOL)_hasSubLabel;
- (BOOL)_matchesSearchTermComponent:(id)component;
- (BOOL)indentWhileEditing;
- (BOOL)isCopyable;
- (BOOL)isEditingEnabled;
- (BOOL)loadAccessoryImage;
- (BOOL)matchesSearchTerm:(id)term;
- (BOOL)rowSupportsLoadingIndicator;
- (BOOL)setSelectPageRowValue:(id)value;
- (BOOL)supportsAutomaticSelection;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
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
- (float)rowHeightWithMax:(float)max peggedHeight:(float)height tableView:(id)view indexPath:(id)path;
- (id)_cellSelectionStyleNumber;
- (id)_checkmarkAccessoryViewWithSelected:(BOOL)selected;
- (id)_datePickerFormatter;
- (id)copyTextFromCopyableAttribute;
- (id)dateFormatterCalendarIdentifier;
- (id)newConfiguredDatePicker;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)radioGroupSelectedColor;
- (id)selectOptions;
- (id)staticFunctions;
- (id)staticValues;
- (id)tableCell;
- (id)textColorForAttributeName:(id)name;
- (id)textColorForAttributeName:(id)name defaultColorString:(id)string;
- (id)viewForElementIdentifier:(id)identifier;
- (int64_t)tableCellStyle;
- (void)_datePickerChanged:(id)changed;
- (void)_drawCustomImage:(BOOL)image;
- (void)_setBackgroundColor;
- (void)_switchFlipped:(id)flipped;
- (void)_updateCellSelectionStyle;
- (void)_updateContentForDisabledState;
- (void)_updateDetailLabel;
- (void)_updateTextColors;
- (void)accessoryImageLoaded;
- (void)activateDatePicker;
- (void)activateMarkdownURL:(id)l;
- (void)configureAccessiblityWithTarget:(id)target;
- (void)dealloc;
- (void)detailLabelActivatedLinkFromCell:(id)cell completion:(id)completion;
- (void)didBecomeSelected;
- (void)parseBadge;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)populatePostbackDictionary:(id)dictionary;
- (void)reportInternalRenderEvent;
- (void)setAlignment:(int64_t)alignment;
- (void)setAttributes:(id)attributes;
- (void)setBadgeInTableCell:(id)cell;
- (void)setDate:(id)date;
- (void)setDetailAndPlaceholderText;
- (void)setEditableTextFieldValue:(id)value;
- (void)setEnabled:(BOOL)enabled;
- (void)setFocused:(BOOL)focused;
- (void)setImage:(id)image;
- (void)setLabel:(id)label;
- (void)setRowInvalid:(BOOL)invalid;
- (void)setSelectRowValue:(id)value;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedRowTextColor;
- (void)setShowingProgressIndicator:(BOOL)indicator;
- (void)setSourceXMLElement:(id)element;
- (void)setSubLabel:(id)label;
- (void)setValueFromString:(id)string notify:(BOOL)notify;
- (void)setupDatePickerWithCell:(id)cell;
- (void)startActivityIndicator;
- (void)tableCell;
- (void)textFieldEditingDidEnd:(id)end;
- (void)updateDatePickerCell;
- (void)webContainerView:(id)view didClickLinkWithURL:(id)l;
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
  if (objc_opt_class() == self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_resetLocale name:*MEMORY[0x277CBE620] object:0];
  }
}

+ (id)_timeZoneAdjustedDateFromDate:(id)date
{
  v3 = MEMORY[0x277CBEBB0];
  dateCopy = date;
  systemTimeZone = [v3 systemTimeZone];
  v6 = [dateCopy dateByAddingTimeInterval:{objc_msgSend(systemTimeZone, "secondsFromGMT")}];

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

    _formatterForDateYMD = [self _formatterForDateYMD];
    v7 = gDefaultFormatter;
    calendar = [_formatterForDateYMD calendar];
    [v7 setCalendar:calendar];

    v9 = gDefaultFormatter;
    timeZone = [_formatterForDateYMD timeZone];
    [v9 setTimeZone:timeZone];

    [gDefaultFormatter setLocalizedDateFormatFromTemplate:@"MMMMdyyyy"];
    v11 = gDefaultFormatter;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [v11 setCalendar:currentCalendar];

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

    _formatterForDateYMD = [self _formatterForDateYMD];
    v7 = gMonthAndDayFormatter;
    calendar = [_formatterForDateYMD calendar];
    [v7 setCalendar:calendar];

    v9 = gMonthAndDayFormatter;
    timeZone = [_formatterForDateYMD timeZone];
    [v9 setTimeZone:timeZone];

    v11 = gMonthAndDayFormatter;
    v12 = MEMORY[0x277CCA968];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [v12 dateFormatFromTemplate:@"d-MMMM" options:0 locale:currentLocale];
    [v11 setDateFormat:v14];

    v3 = gMonthAndDayFormatter;
  }

  return v3;
}

- (void)setSourceXMLElement:(id)element
{
  v4.receiver = self;
  v4.super_class = RUITableViewRow;
  [(RUIElement *)&v4 setSourceXMLElement:element];
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

    _formatterForDateYMD = [self _formatterForDateYMD];
    v7 = gYearAndMonthFormatter;
    calendar = [_formatterForDateYMD calendar];
    [v7 setCalendar:calendar];

    v9 = gYearAndMonthFormatter;
    timeZone = [_formatterForDateYMD timeZone];
    [v9 setTimeZone:timeZone];

    v11 = gYearAndMonthFormatter;
    v12 = MEMORY[0x277CCA968];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [v12 dateFormatFromTemplate:@"MM/yyyy" options:0 locale:currentLocale];
    [v11 setDateFormat:v14];

    v3 = gYearAndMonthFormatter;
  }

  return v3;
}

- (id)viewForElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  detailButton = [(RUITableViewRow *)self detailButton];
  identifier = [detailButton identifier];
  v7 = [identifier isEqualToString:identifierCopy];

  if (v7)
  {
    tableCell = [(RUITableViewRow *)self tableCell];
    accessoryView = [tableCell accessoryView];
  }

  else
  {
    identifier2 = [(RUIElement *)self identifier];
    v11 = [identifier2 isEqualToString:identifierCopy];

    if (v11)
    {
      accessoryView = [(RUITableViewRow *)self tableCell];
    }

    else
    {
      accessoryView = 0;
    }
  }

  return accessoryView;
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
      _formatterForYearAndMonth = [v5 _formatterForYearAndMonth];
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
      _formatterForYearAndMonth = ;
    }

    v7 = _formatterForYearAndMonth;
    dateFormatterCalendarIdentifier = [(RUITableViewRow *)self dateFormatterCalendarIdentifier];
    if (dateFormatterCalendarIdentifier)
    {
      v9 = [(NSDateFormatter *)v7 copy];

      v10 = [MEMORY[0x277CBEA80] calendarWithIdentifier:dateFormatterCalendarIdentifier];
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

- (void)setAttributes:(id)attributes
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
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
        v9 = [v3 objectForKeyedSubscript:{v8, selfCopy}];

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

  v12 = [attributesCopy objectForKeyedSubscript:{@"mode", selfCopy}];
  lowercaseString = [v12 lowercaseString];

  if ([lowercaseString isEqualToString:@"monthandday"])
  {
    v14 = 4270;
    v15 = v21;
  }

  else
  {
    v15 = v21;
    if ([lowercaseString isEqualToString:@"yearandmonth"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }
  }

  v15[24] = v14;
  v16 = [attributesCopy objectForKeyedSubscript:@"style"];
  lowercaseString2 = [v16 lowercaseString];

  if ([lowercaseString2 isEqualToString:@"compact"])
  {
    v18 = 2;
  }

  else if ([lowercaseString2 isEqualToString:@"wheels"])
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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"subLabel"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    htmlSubLabelData = [(RUITableViewRow *)self htmlSubLabelData];
    v5 = [htmlSubLabelData length] != 0;
  }

  return v5;
}

- (id)dateFormatterCalendarIdentifier
{
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"calendar"];

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

- (id)textColorForAttributeName:(id)name defaultColorString:(id)string
{
  v6 = MEMORY[0x277D75348];
  stringCopy = string;
  nameCopy = name;
  attributes = [(RUIElement *)self attributes];
  v10 = [attributes objectForKey:nameCopy];

  v11 = [MEMORY[0x277D75348] _remoteUI_colorWithString:stringCopy];

  v12 = [v6 _remoteUI_colorWithString:v10 defaultColor:v11];

  return v12;
}

- (id)textColorForAttributeName:(id)name
{
  v4 = MEMORY[0x277D75348];
  nameCopy = name;
  attributes = [(RUIElement *)self attributes];
  v7 = [attributes objectForKey:nameCopy];

  v8 = [v4 _remoteUI_colorWithString:v7];

  return v8;
}

- (id)radioGroupSelectedColor
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"radioGroupSelectedColor"];

  if (v4)
  {
    v5 = MEMORY[0x277D75348];
    attributes2 = [(RUIElement *)self attributes];
    v7 = [attributes2 objectForKey:@"radioGroupSelectedColor"];
    radioGroupSelectedColor = [v5 _remoteUI_colorWithString:v7];
  }

  else
  {
    attributes2 = [(RUIElement *)self style];
    radioGroupSelectedColor = [attributes2 radioGroupSelectedColor];
  }

  return radioGroupSelectedColor;
}

- (void)configureAccessiblityWithTarget:(id)target
{
  targetCopy = target;
  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKey:@"class"];

  if ([v6 isEqualToString:@"editableText"])
  {
    editableTextField = [(RemoteUITableViewCell *)self->_tableCell editableTextField];

    targetCopy = editableTextField;
  }

  v8.receiver = self;
  v8.super_class = RUITableViewRow;
  [(RUIElement *)&v8 configureAccessiblityWithTarget:targetCopy];
}

- (void)_updateTextColors
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"class"];

  if ([(RUITableViewRow *)self isFocused])
  {
    ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    style = [(RUIElement *)self style];
    focusedRowTextColor = [style focusedRowTextColor];
    [ruiTextLabel setTextColor:focusedRowTextColor];

    style2 = [(RUIElement *)self style];
    focusedRowTextColor2 = [style2 focusedRowTextColor];
LABEL_7:
    style4 = focusedRowTextColor2;
    ruiEditableTextField = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [ruiEditableTextField setTextColor:style4];

    goto LABEL_8;
  }

  attributes2 = [(RUIElement *)self attributes];
  v11 = [attributes2 objectForKeyedSubscript:@"labelColor"];

  if (!v11)
  {
    ruiTextLabel2 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    style3 = [(RUIElement *)self style];
    labelRowTextColor = [style3 labelRowTextColor];
    [ruiTextLabel2 setTextColor:labelRowTextColor];

    style2 = [(RUIElement *)self style];
    focusedRowTextColor2 = [style2 labelRowTextColor];
    goto LABEL_7;
  }

  attributes3 = [(RUIElement *)self attributes];
  v13 = [attributes3 objectForKey:@"labelColor"];
  v14 = [v13 length];

  style2 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
  if (v14)
  {
    style4 = [(RUITableViewRow *)self textColorForAttributeName:@"labelColor"];
    [style2 setTextColor:style4];
  }

  else
  {
    style4 = [(RUIElement *)self style];
    labelRowTextColor2 = [style4 labelRowTextColor];
    [style2 setTextColor:labelRowTextColor2];
  }

LABEL_8:

  if ([(RUITableViewRow *)self _hasSubLabel])
  {
    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    ruiValueLabel = [(UITableViewCell *)self->_tableCell ruiValueLabel];
    attributes4 = [(RUIElement *)self attributes];
    v23 = [attributes4 objectForKeyedSubscript:@"subLabel"];

    if (v23)
    {
      if ([(RUITableViewRow *)self isFocused])
      {
        style5 = [(RUIElement *)self style];
        focusedRowTextColor3 = [style5 focusedRowTextColor];
        [ruiDetailTextLabel setTextColor:focusedRowTextColor3];
      }

      else
      {
        style5 = [(RUITableViewRow *)self textColorForAttributeName:@"subLabelColor" defaultColorString:@"secondaryLabelColor"];
        [ruiDetailTextLabel setTextColor:style5];
      }
    }

    objc_initWeak(&location, self);
    ruiDetailTextLabel2 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = __36__RUITableViewRow__updateTextColors__block_invoke;
    v51 = &unk_2782E9150;
    objc_copyWeak(&v52, &location);
    v33 = [ruiDetailTextLabel2 setMarkdownLinkHandler:&v48];
    detailLabelTapHandler = self->_detailLabelTapHandler;
    self->_detailLabelTapHandler = v33;

    v35 = [(RUIElement *)self attributes:v48];
    v36 = [v35 objectForKeyedSubscript:@"detailLabel"];

    if (v36)
    {
      if ([(RUITableViewRow *)self isFocused])
      {
        style6 = [(RUIElement *)self style];
        focusedRowTextColor4 = [style6 focusedRowTextColor];
        [ruiValueLabel setTextColor:focusedRowTextColor4];
      }

      else
      {
        style6 = [(RUITableViewRow *)self textColorForAttributeName:@"detailLabelColor" defaultColorString:@"secondaryLabelColor"];
        [ruiValueLabel setTextColor:style6];
      }
    }

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
    goto LABEL_27;
  }

  if (([v4 isEqualToString:@"link"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"label") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"button"))
  {
    attributes5 = [(RUIElement *)self attributes];
    v27 = [attributes5 objectForKey:@"detailLabel"];

    if (v27)
    {
      attributes6 = [(RUIElement *)self attributes];
      ruiDetailTextLabel = [attributes6 objectForKey:@"detailLinkURL"];

      if (ruiDetailTextLabel)
      {
LABEL_28:

        goto LABEL_29;
      }

      isFocused = [(RUITableViewRow *)self isFocused];
      ruiValueLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
      if (isFocused)
      {
        style7 = [(RUIElement *)self style];
        focusedRowTextColor5 = [style7 focusedRowTextColor];
        [ruiValueLabel setTextColor:focusedRowTextColor5];
      }

      else
      {
        style7 = [(RUITableViewRow *)self textColorForAttributeName:@"detailLabelColor" defaultColorString:@"secondaryLabelColor"];
        [ruiValueLabel setTextColor:style7];
      }

LABEL_27:
      goto LABEL_28;
    }
  }

LABEL_29:
  if (-[RUIElement enabled](self, "enabled") && [v4 isEqualToString:@"button"])
  {
    attributes7 = [(RUIElement *)self attributes];
    v40 = [attributes7 objectForKey:@"accessory"];
    if (v40)
    {
      attributes8 = v40;
    }

    else
    {
      attributes8 = [(RUIElement *)self attributes];
      v43 = [attributes8 objectForKey:@"detailLabel"];
      if (v43)
      {
        attributes9 = v43;
      }

      else
      {
        attributes9 = [(RUIElement *)self attributes];
        v45 = [attributes9 objectForKey:@"subLabel"];
        if (v45)
        {
        }

        else
        {
          attributes10 = [(RUIElement *)self attributes];
          v47 = [attributes10 objectForKey:@"placeholder"];

          if (v47)
          {
            goto LABEL_42;
          }

          attributes7 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
          attributes8 = [(RUIElement *)self style];
          attributes9 = [attributes8 buttonRowTextColor];
          [attributes7 setTextColor:attributes9];
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
  enabled = [(RUIElement *)self enabled];
  attributes = [(RUIElement *)self attributes];
  v20 = [attributes objectForKey:@"class"];

  if ([v20 isEqualToString:@"editableText"])
  {
    ruiEditableTextField = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [ruiEditableTextField setEnabled:enabled];

    ruiEditableTextField2 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v7 = ruiEditableTextField2;
    v8 = 0.5;
    if (enabled)
    {
      v8 = 1.0;
    }

    [ruiEditableTextField2 setAlpha:v8];
  }

  ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
  [ruiTextLabel setEnabled:enabled];

  ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  ruiValueLabel = [(UITableViewCell *)self->_tableCell ruiValueLabel];
  [ruiValueLabel setEnabled:enabled];
  attributes2 = [(RUIElement *)self attributes];
  v13 = [attributes2 objectForKeyedSubscript:@"subLabel"];
  if (v13)
  {
  }

  else
  {
    attributes3 = [(RUIElement *)self attributes];
    v15 = [attributes3 objectForKeyedSubscript:@"detailLabel"];

    if (!v15)
    {
      goto LABEL_9;
    }
  }

  [ruiDetailTextLabel setEnabled:enabled];
LABEL_9:
  [(UISwitch *)self->_switchControl setEnabled:enabled];
  [(RUITableViewRow *)self _updateCellSelectionStyle];
  ruiImageView = [(UITableViewCell *)self->_tableCell ruiImageView];
  [ruiImageView setEnabled:enabled];

  ruiImageView2 = [(UITableViewCell *)self->_tableCell ruiImageView];
  v18 = ruiImageView2;
  v19 = 0.5;
  if (enabled)
  {
    v19 = 1.0;
  }

  [ruiImageView2 setAlpha:v19];

  [(RUITableViewRow *)self _updateTextColors];
}

- (void)_updateCellSelectionStyle
{
  enabled = [(RUIElement *)self enabled];
  attributes = [(RUIElement *)self attributes];
  v23 = [attributes objectForKey:@"class"];

  tableView = [(RUITableViewRow *)self tableView];
  v5TableView = [tableView tableView];
  if ([v5TableView allowsMultipleSelectionDuringEditing])
  {
    tableView2 = [(RUITableViewRow *)self tableView];
    v7TableView = [tableView2 tableView];
    isEditing = [v7TableView isEditing];

    if (isEditing & enabled)
    {
      integerValue = 3;
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {

    integerValue = 0;
  }

  attributes2 = [(RUIElement *)self attributes];
  v12 = [attributes2 objectForKeyedSubscript:@"editing"];

  if (v12)
  {
    attributes3 = [(RUIElement *)self attributes];
    v14 = [attributes3 objectForKeyedSubscript:@"editing"];
    bOOLValue = [v14 BOOLValue];
    tableCell = [(RUITableViewRow *)self tableCell];
    [tableCell setEditing:bOOLValue];
  }

  if (!enabled || ([v23 isEqualToString:@"editableText"] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"numberPicker") & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", @"switch") & 1) != 0)
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

  attributes4 = [(RUIElement *)self attributes];
  v18 = [attributes4 objectForKeyedSubscript:@"radioGroup"];
  if (!v18)
  {

    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v23 isEqualToString:@"htmlLabel"];

  if ((v20 & 1) == 0)
  {
LABEL_17:
    integerValue = 3;
  }

LABEL_19:
  _cellSelectionStyleNumber = [(RUITableViewRow *)self _cellSelectionStyleNumber];
  v22 = _cellSelectionStyleNumber;
  if (_cellSelectionStyleNumber)
  {
    integerValue = [_cellSelectionStyleNumber integerValue];
  }

  [(RemoteUITableViewCell *)self->_tableCell setSelectionStyle:integerValue];
}

- (id)_cellSelectionStyleNumber
{
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"selectionStyle"];

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

- (void)setAlignment:(int64_t)alignment
{
  if (self->_alignment != alignment)
  {
    self->_alignment = alignment;
    ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [ruiTextLabel setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];

    if ([(RUITableViewRow *)self tableCellStyle]== 3)
    {
      ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
      [ruiDetailTextLabel setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = RUITableViewRow;
  [(RUIElement *)&v4 setEnabled:enabled];
  if (self->_tableCell)
  {
    [(RUITableViewRow *)self _updateContentForDisabledState];
  }
}

- (void)setRowInvalid:(BOOL)invalid
{
  invalidCopy = invalid;
  self->_rowInvalid = invalid;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tableCell = self->_tableCell;

    [(RemoteUITableViewCell *)tableCell setRowInvalid:invalidCopy];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected != selected)
  {
    selectedCopy = selected;
    self->_selected = selected;
    if (selected)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    tableCell = [(RUITableViewRow *)self tableCell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      attributes = [(RUIElement *)self attributes];
      v10 = [attributes objectForKey:@"radioGroupSelectedColor"];

      tableCell2 = [(RUITableViewRow *)self tableCell];
      tableCell3 = tableCell2;
      if (v10)
      {
        radioGroupSelectedColor = [(RUITableViewRow *)self radioGroupSelectedColor];
        [tableCell3 _setRemoteUIAccessoryType:v6 withColor:radioGroupSelectedColor];
      }

      else
      {
        [tableCell2 setRemoteUIAccessoryType:v6];
      }
    }

    else
    {
      tableCell3 = [(RUITableViewRow *)self tableCell];
      [tableCell3 setAccessoryType:v6];
    }

    if (selectedCopy)
    {
      [(RUITableViewRow *)self radioGroupSelectedColor];
    }

    else
    {
      [(RUITableViewRow *)self textColorForAttributeName:@"labelColor" defaultColorString:@"labelColor"];
    }
    v40 = ;
    tableCell4 = [(RUITableViewRow *)self tableCell];
    ruiTextLabel = [tableCell4 ruiTextLabel];
    [ruiTextLabel setTextColor:v40];

    attributes2 = [(RUIElement *)self attributes];
    v17 = [attributes2 objectForKey:@"radioGroupSelectedColor"];

    if (v17)
    {
      tableCell5 = [(RUITableViewRow *)self tableCell];
      ruiDetailTextLabel = [tableCell5 ruiDetailTextLabel];
      [ruiDetailTextLabel setTextColor:v40];
    }

    attributes3 = [(RUIElement *)self attributes];
    v21 = [attributes3 objectForKey:@"accessory"];

    if ([v21 length] && objc_msgSend(v21, "isEqualToString:", @"checkmark.circle"))
    {
      tableCell6 = [(RUITableViewRow *)self tableCell];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        tableCell7 = [(RUITableViewRow *)self tableCell];
        [tableCell7 setRemoteUIAccessoryType:0];
      }

      v25 = [(RUITableViewRow *)self _checkmarkAccessoryViewWithSelected:selectedCopy];
      [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryView:v25];
    }

    attributes4 = [(RUIElement *)self attributes];
    v27 = [attributes4 objectForKey:@"borderColor"];

    if (v27)
    {
      if (selectedCopy)
      {
        [MEMORY[0x277D75348] _remoteUI_colorWithString:v27];
      }

      else
      {
        [MEMORY[0x277D75348] clearColor];
      }
      v28 = ;
      layer = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer setCornerRadius:8.0];

      layer2 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer2 setMasksToBounds:1];

      layer3 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer3 setBorderColor:{objc_msgSend(v28, "CGColor")}];

      layer4 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer4 setBorderWidth:3.0];

      layer5 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer5 setShadowOffset:{2.0, 3.0}];

      lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
      cGColor = [lightGrayColor CGColor];
      layer6 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer6 setShadowColor:cGColor];

      layer7 = [(RemoteUITableViewCell *)self->_tableCell layer];
      LODWORD(v38) = 1050253722;
      [layer7 setShadowOpacity:v38];

      layer8 = [(RemoteUITableViewCell *)self->_tableCell layer];
      [layer8 setShadowRadius:8.0];
    }

    [(RUITableViewRow *)self _drawCustomImage:selectedCopy];
  }
}

- (void)setFocused:(BOOL)focused
{
  if (self->_focused != focused)
  {
    self->_focused = focused;
    [(RUITableViewRow *)self _updateTextColors];
  }
}

- (RUITableView)tableView
{
  section = [(RUITableViewRow *)self section];
  parent = [section parent];

  return parent;
}

- (BOOL)wantsInlineActivityIndicator
{
  if (![(RUITableViewRow *)self rowSupportsLoadingIndicator])
  {
    return 0;
  }

  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"shouldShowLoadingIndicator"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    tableView = [(RUITableViewRow *)self tableView];
    page = [tableView page];
    activityIndicatorStyle = [page activityIndicatorStyle];
    bOOLValue = [activityIndicatorStyle isEqualToString:@"activeElement"];
  }

  return bOOLValue;
}

- (void)setShowingProgressIndicator:(BOOL)indicator
{
  if (self->_showingProgressIndicator != indicator)
  {
    indicatorCopy = indicator;
    self->_showingProgressIndicator = indicator;
    tableCell = [(RUITableViewRow *)self tableCell];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      tableCell2 = [(RUITableViewRow *)self tableCell];
      [tableCell2 setActivityIndicatorVisible:self->_showingProgressIndicator];

      pageElement = [(RUIElement *)self pageElement];
      page = [pageElement page];
      view = [page view];
      [view setUserInteractionEnabled:!indicatorCopy];
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

  attributes = [(RUIElement *)self attributes];
  v7 = [attributes objectForKeyedSubscript:@"detailLabel"];
  if (v7)
  {
    attributes2 = [(RUIElement *)self attributes];
    v9 = [attributes2 objectForKeyedSubscript:@"subLabel"];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  htmlSubLabelData = [(RUITableViewRow *)self htmlSubLabelData];
  v12 = [htmlSubLabelData length];

  attributes3 = [(RUIElement *)self attributes];
  v14 = [attributes3 objectForKeyedSubscript:@"subLabelNumberOfLines"];

  attributes4 = [(RUIElement *)self attributes];
  v16 = [attributes4 objectForKeyedSubscript:@"modernRow"];
  bOOLValue = [v16 BOOLValue];

  if (!bOOLValue)
  {
    if ((v14 | v12) != 0 || v10)
    {
      style = [(RUIElement *)self style];
      v20 = +[RUIStyle osloStyle];
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    else
    {
      attributes5 = [(RUIElement *)self attributes];
      v22 = [attributes5 objectForKeyedSubscript:@"class"];
      if ([v22 isEqualToString:@"linkedOption"])
      {
      }

      else
      {
        attributes6 = [(RUIElement *)self attributes];
        v24 = [attributes6 objectForKeyedSubscript:@"class"];
        v25 = [v24 isEqualToString:@"selectPage"];

        if (!v25)
        {
          attributes7 = [(RUIElement *)self attributes];
          v27 = [attributes7 objectForKey:@"detailLinkURL"];
          if (v27)
          {
            v28 = v27;
            attributes8 = [(RUIElement *)self attributes];
            v30 = [attributes8 objectForKey:@"customDetailLink"];
            v31 = [v30 isEqualToString:@"true"];

            if (v31)
            {
              goto LABEL_7;
            }
          }

          else
          {
          }

          attributes9 = [(RUIElement *)self attributes];
          v33 = [attributes9 objectForKey:@"reducedImagePaddings"];
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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"class"];

  if (([v4 isEqualToString:@"editableText"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"numberPicker") & 1) == 0)
  {
    attributes2 = [(RUIElement *)self attributes];
    v7 = [attributes2 objectForKey:@"subLabel"];
    if (v7)
    {
      v8 = v7;
      attributes3 = [(RUIElement *)self attributes];
      v10 = [attributes3 objectForKey:@"detailLabel"];

      if (!v10)
      {
        v5 = 3;
        goto LABEL_15;
      }
    }

    else
    {
    }

    attributes4 = [(RUIElement *)self attributes];
    attributes5 = [attributes4 objectForKey:@"detailLabel"];
    if (!attributes5)
    {
      attributes5 = [(RUIElement *)self attributes];
      v13 = [attributes5 objectForKey:@"placeholder"];
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

- (void)setImage:(id)image
{
  imageCopy = image;
  attributes = [(RUIElement *)self attributes];
  v19 = [attributes objectForKeyedSubscript:@"imageTintColor"];

  if (v19)
  {
    v6 = [MEMORY[0x277D75348] _remoteUI_colorWithString:?];
    ruiImageView = [(UITableViewCell *)self->_tableCell ruiImageView];
    [ruiImageView setTintColor:v6];
  }

  else
  {
    v6 = 0;
  }

  attributes2 = [(RUIElement *)self attributes];
  v9 = [attributes2 objectForKeyedSubscript:@"imagePadding"];
  integerValue = [v9 integerValue];

  [(RemoteUITableViewCell *)self->_tableCell setImage:imageCopy padding:v6 tintColor:integerValue, integerValue, integerValue, integerValue];
  attributes3 = [(RUIElement *)self attributes];
  v12 = [attributes3 objectForKeyedSubscript:@"imageBackgroundColor"];

  if (v12)
  {
    v13 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v12];
    ruiImageView2 = [(UITableViewCell *)self->_tableCell ruiImageView];
    [ruiImageView2 setBackgroundColor:v13];
  }

  attributes4 = [(RUIElement *)self attributes];
  v16 = [attributes4 objectForKeyedSubscript:@"imageCornerRadius"];
  integerValue2 = [v16 integerValue];

  ruiImageView3 = [(UITableViewCell *)self->_tableCell ruiImageView];
  [ruiImageView3 _setCornerRadius:integerValue2];

  [(RemoteUITableViewCell *)self->_tableCell setNeedsLayout];
}

- (UIControl)control
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"class"];

  if ([v4 isEqualToString:@"switch"])
  {
    pickerView = self->_switchControl;
LABEL_8:
    v6 = pickerView;
    goto LABEL_9;
  }

  if ([v4 isEqual:@"datePicker"])
  {
    pickerView = [(RUITableViewRow *)self pickerView];
    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"numberPicker"))
  {
    pickerView = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
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

    notificationCenter = [v4 notificationCenter];
    v10 = RUIImageLoaderDidLoadImageNotification;
    absoluteString = [v3 absoluteString];
    v12 = [(__CFString *)v10 stringByAppendingString:absoluteString];
    [notificationCenter removeObserver:self name:v12 object:0];
  }
}

- (BOOL)loadAccessoryImage
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"accessorySystemImage"];

  if (v4)
  {
    attributes2 = [(RUIElement *)self attributes];
    v6 = [attributes2 objectForKeyedSubscript:@"accessorySymbolRenderingMode"];
    v7 = [(RUIElement *)self systemImageNamed:v4 symbolRenderingMode:v6];

    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    attributes3 = [(RUIElement *)self attributes];
    v10 = [attributes3 objectForKeyedSubscript:@"accessoryTintColor"];

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
        notificationCenter = [MEMORY[0x277D755B8] imageWithCGImage:v15 scale:0 orientation:v22];
        tableCell = self->_tableCell;
        absoluteString = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:notificationCenter];
        [(RemoteUITableViewCell *)tableCell setAccessoryView:absoluteString];
      }

      else
      {
        notificationCenter = [v14 notificationCenter];
        v19 = RUIImageLoaderDidLoadImageNotification;
        absoluteString = [v13 absoluteString];
        v20 = [(__CFString *)v19 stringByAppendingString:absoluteString];
        [notificationCenter addObserver:self selector:sel_accessoryImageLoaded name:v20 object:0];
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

  attributes = [(RUIElement *)self attributes];
  v135 = [attributes objectForKey:@"class"];

  v4 = [objc_alloc(-[RUITableViewRow tableCellClass](self "tableCellClass"))];
  tableCell = self->_tableCell;
  self->_tableCell = v4;

  [(RUITableViewRow *)self setBadgeInTableCell:self->_tableCell];
  v6 = v135;
  if (([v135 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v135, "isEqualToString:", @"numberPicker"))
  {
    ruiEditableTextField = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    attributes2 = [(RUIElement *)self attributes];
    v9 = [attributes2 objectForKey:@"placeholder"];
    [ruiEditableTextField setPlaceholder:v9];

    attributes3 = [(RUIElement *)self attributes];
    v11 = [attributes3 objectForKey:@"value"];

    if (!v11)
    {
      attributes4 = [(RUIElement *)self attributes];
      v13 = [attributes4 objectForKey:@"clientValue"];

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
    editableTextField = [(RemoteUITableViewCell *)self->_tableCell editableTextField];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [editableTextField addTarget:WeakRetained action:sel_textFieldStartedEditing_ forEvents:0x10000];

    editableTextField2 = [(RemoteUITableViewCell *)self->_tableCell editableTextField];
    [editableTextField2 addTarget:self action:sel_textFieldEditingDidEnd_ forControlEvents:0x40000];

    ruiEditableTextField2 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [ruiEditableTextField2 setDelegate:self];
    attributes5 = [(RUIElement *)self attributes];
    v21 = [attributes5 objectForKey:@"keyboardType"];

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

    [ruiEditableTextField2 setKeyboardType:v23];
LABEL_63:
    attributes6 = [(RUIElement *)self attributes];
    v47 = [attributes6 objectForKey:@"autocapitalizationType"];

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

    [ruiEditableTextField2 setAutocapitalizationType:v48];
LABEL_72:
    attributes7 = [(RUIElement *)self attributes];
    v50 = [attributes7 objectForKey:@"secure"];
    bOOLValue = [v50 BOOLValue];

    if (bOOLValue)
    {
      [ruiEditableTextField2 setSecureTextEntry:1];
    }

    else if (!v22)
    {
LABEL_76:
      attributes8 = [(RUIElement *)self attributes];
      v53 = [attributes8 objectForKey:@"disableAutocorrection"];
      bOOLValue2 = [v53 BOOLValue];

      if (bOOLValue2)
      {
        [ruiEditableTextField2 setAutocorrectionType:1];
        [ruiEditableTextField2 setShortcutConversionType:1];
      }

      attributes9 = [(RUIElement *)self attributes];
      v56 = [attributes9 objectForKey:@"disableAutocapitalization"];

      if (v56)
      {
        NSLog(&cfstr_WarningRemoteu.isa);
        if ([v56 BOOLValue])
        {
          [ruiEditableTextField2 setAutocapitalizationType:0];
        }
      }

      attributes10 = [(RUIElement *)self attributes];
      v58 = [attributes10 objectForKey:@"suffix"];

      if ([v58 length])
      {
        v59 = [(RUITableViewRow *)self textColorForAttributeName:@"suffixColor"];
        [ruiEditableTextField2 _setSuffix:v58 withColor:v59];
      }

      ruiEditableTextField3 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
      v61 = [(RUITableViewRow *)self textColorForAttributeName:@"textColor"];
      [ruiEditableTextField3 setTextColor:v61];

      goto LABEL_84;
    }

    [ruiEditableTextField2 setAutocapitalizationType:0];
    [ruiEditableTextField2 setAutocorrectionType:1];
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
    attributes11 = [(RUIElement *)self attributes];
    v29 = [attributes11 objectForKey:@"on"];
    if ([v29 BOOLValue])
    {
    }

    else
    {
      attributes12 = [(RUIElement *)self attributes];
      v33 = [attributes12 objectForKey:@"value"];
      bOOLValue3 = [v33 BOOLValue];

      if (!bOOLValue3)
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
    attributes13 = [(RUIElement *)self attributes];
    v31 = [attributes13 objectForKey:@"value"];
    [(RUITableViewRow *)self setSelectRowValue:v31];

LABEL_51:
    goto LABEL_84;
  }

  if ([v135 hasPrefix:@"html"] && -[NSData length](self->_data, "length"))
  {
    if (([v135 isEqualToString:@"htmlLabel"] & 1) == 0)
    {
      webContainerView = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
      webView = [webContainerView webView];
      [webView setUserInteractionEnabled:0];

      v6 = v135;
    }

    if ([v6 isEqualToString:@"htmlLink"])
    {
      contentView = [(RemoteUITableViewCell *)self->_tableCell contentView];
      [contentView setUserInteractionEnabled:0];
    }

    v39 = self->_tableCell;
    data = self->_data;
    attributes13 = [(RUIElement *)self sourceURL];
    [(RemoteUITableViewCell *)v39 setHTMLData:data sourceURL:attributes13 delegate:self];
    goto LABEL_51;
  }

  if ([v135 isEqualToString:@"linkedOption"])
  {
    attributes13 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [attributes13 setLineBreakMode:0];
    [attributes13 setNumberOfLines:0];
    goto LABEL_51;
  }

  if ([v135 isEqualToString:@"selectPage"])
  {
    ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [ruiTextLabel setLineBreakMode:0];
    [ruiTextLabel setNumberOfLines:0];
    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel setLineBreakMode:0];
    [ruiDetailTextLabel setNumberOfLines:0];
    attributes14 = [(RUIElement *)self attributes];
    v44 = [attributes14 objectForKeyedSubscript:@"align"];

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
  attributes15 = [(RUIElement *)self attributes];
  v134 = [attributes15 objectForKey:@"label"];

  if ([v134 length])
  {
    ruiTextLabel2 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    [ruiTextLabel2 setText:v134];

    attributes16 = [(RUIElement *)self attributes];
    v65 = [attributes16 objectForKeyedSubscript:@"labelNumberOfLines"];

    if (v65)
    {
      integerValue = [v65 integerValue];
      ruiTextLabel3 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [ruiTextLabel3 setNumberOfLines:integerValue];
    }

    attributes17 = [(RUIElement *)self attributes];
    v69 = [attributes17 objectForKeyedSubscript:@"labelTextStyle"];
    v70 = [(RUIElement *)self textStyleWithString:v69];

    if (v70)
    {
      v71 = [MEMORY[0x277D74300] preferredFontForTextStyle:v70];
      ruiTextLabel4 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [ruiTextLabel4 setFont:v71];

      ruiTextLabel5 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [ruiTextLabel5 setAdjustsFontForContentSizeCategory:1];
    }
  }

  attributes18 = [(RUIElement *)self attributes];
  v75 = [attributes18 objectForKey:@"indentation"];

  if ([v75 length])
  {
    [(RemoteUITableViewCell *)self->_tableCell setIndentationLevel:1];
    v76 = self->_tableCell;
    [v75 floatValue];
    [(RemoteUITableViewCell *)v76 setIndentationWidth:v77];
  }

  textLabel = [(RemoteUITableViewCell *)self->_tableCell textLabel];
  [textLabel setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];

  if ([(RUITableViewRow *)self alignment]&& [(RUITableViewRow *)self tableCellStyle]== 3)
  {
    ruiDetailTextLabel2 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel2 setTextAlignment:{-[RUITableViewRow alignment](self, "alignment")}];
  }

  attributes19 = [(RUIElement *)self attributes];
  v81 = [attributes19 objectForKey:@"subLabel"];
  if ([v81 length])
  {
  }

  else
  {
    htmlSubLabelData = [(RUITableViewRow *)self htmlSubLabelData];
    v83 = [htmlSubLabelData length] == 0;

    if (v83)
    {
      goto LABEL_117;
    }
  }

  ruiDetailTextLabel3 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  ruiValueLabel = [(UITableViewCell *)self->_tableCell ruiValueLabel];
  attributes20 = [(RUIElement *)self attributes];
  v87 = [attributes20 objectForKey:@"subLabel"];

  attributes21 = [(RUIElement *)self attributes];
  v89 = [attributes21 objectForKey:@"detailLabel"];

  v90 = self->_tableCell;
  htmlSubLabelData2 = [(RUITableViewRow *)self htmlSubLabelData];
  sourceURL = [(RUIElement *)self sourceURL];
  [(RemoteUITableViewCell *)v90 setHTMLSubLabelData:htmlSubLabelData2 sourceURL:sourceURL delegate:self];

  if ([v87 length])
  {
    attributes22 = [(RUIElement *)self attributes];
    v94 = [attributes22 objectForKeyedSubscript:@"subLabelNumberOfLines"];

    if (v94)
    {
      [ruiDetailTextLabel3 setNumberOfLines:{objc_msgSend(v94, "integerValue")}];
    }

    attributes23 = [(RUIElement *)self attributes];
    v96 = [attributes23 objectForKeyedSubscript:@"subLabelTextStyle"];
    v97 = [(RUIElement *)self textStyleWithString:v96];

    if (v97)
    {
      v98 = [MEMORY[0x277D74300] preferredFontForTextStyle:v97];
      [ruiDetailTextLabel3 setFont:v98];

      [ruiDetailTextLabel3 setAdjustsFontForContentSizeCategory:1];
    }

    [ruiDetailTextLabel3 setMarkdown:v87 baseURL:0];
  }

  if ([v89 length])
  {
    [ruiValueLabel setText:v89];
    v99 = [(RUITableViewRow *)self textColorForAttributeName:@"detailLabelColor"];
    [ruiValueLabel setTextColor:v99];
  }

  style = [(RUIElement *)self style];
  v101 = +[RUIStyle osloStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    attributes24 = [(RUIElement *)self attributes];
    v103 = [attributes24 objectForKeyedSubscript:@"detailLabel"];
    v104 = v103 == 0;

    if (!v104)
    {
      if ([v89 length])
      {
        attributes25 = [(RUIElement *)self attributes];
        v106 = [attributes25 objectForKey:@"detailLinkURL"];

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
          [ruiDetailTextLabel3 setText:v89];
        }
      }

      if ([v87 length])
      {
        [ruiValueLabel setMarkdown:v87 baseURL:0];
      }
    }
  }

  else
  {
  }

LABEL_117:
  [(RUITableViewRow *)self _updateDetailLabel];
  attributes26 = [(RUIElement *)self attributes];
  v109 = [attributes26 objectForKey:@"invalid"];
  bOOLValue4 = [v109 BOOLValue];

  if (bOOLValue4)
  {
    self->_rowInvalid = 1;
  }

  else if (!self->_rowInvalid)
  {
    goto LABEL_121;
  }

  [(RemoteUITableViewCell *)self->_tableCell setRowInvalid:1];
LABEL_121:
  attributes27 = [(RUIElement *)self attributes];
  v112 = [attributes27 objectForKey:@"accessory"];

  detailButton = [(RUITableViewRow *)self detailButton];

  if (!detailButton)
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

  detailButton2 = [(RUITableViewRow *)self detailButton];
  if ([detailButton2 visibility] == 1)
  {
  }

  else
  {
    detailButton3 = [(RUITableViewRow *)self detailButton];
    v117 = [detailButton3 visibility] == 0;

    if (!v117)
    {
      goto LABEL_134;
    }
  }

  [(RemoteUITableViewCell *)self->_tableCell setEditingAccessoryType:4];
LABEL_134:
  detailButton4 = [(RUITableViewRow *)self detailButton];
  if ([detailButton4 visibility] == 2)
  {

LABEL_137:
    [(RemoteUITableViewCell *)self->_tableCell setAccessoryType:4];
    goto LABEL_138;
  }

  detailButton5 = [(RUITableViewRow *)self detailButton];
  v120 = [detailButton5 visibility] == 0;

  if (v120)
  {
    goto LABEL_137;
  }

LABEL_138:
  if ([(RUITableViewRow *)self isSelected])
  {
    [(RemoteUITableViewCell *)self->_tableCell setRemoteUIAccessoryType:3];
    ruiTextLabel6 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    style2 = [(RUIElement *)self style];
    radioGroupSelectedColor = [style2 radioGroupSelectedColor];
    [ruiTextLabel6 setTextColor:radioGroupSelectedColor];
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
  attributes28 = [(RUIElement *)self attributes];
  v126 = [attributes28 objectForKey:@"firstResponder"];

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

  attributes29 = [(RUIElement *)self attributes];
  v129 = [attributes29 objectForKey:@"forceFullSizeDetailLabel"];

  if ([v129 BOOLValue])
  {
    [(RemoteUITableViewCell *)self->_tableCell setForceFullSizeDetailLabel:1];
  }

  attributes30 = [(RUIElement *)self attributes];
  v131 = [attributes30 objectForKey:@"leftAlignDetailLabel"];

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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"class"];
  v5 = [v4 isEqualToString:@"datePicker"];

  if (v5)
  {
    tableCell = self->_tableCell;
    wasEverSelected = [(RUITableViewRow *)self wasEverSelected];
    date = [(RUITableViewRow *)self date];
    _datePickerFormatter = [(RUITableViewRow *)self _datePickerFormatter];
    [(RemoteUITableViewCell *)tableCell setupDatePickerCellWithElement:self renderPlaceHolder:!wasEverSelected date:date dateFormatter:_datePickerFormatter];

    detailTextLabel = [(RemoteUITableViewCell *)self->_tableCell detailTextLabel];
    [detailTextLabel setText:0];

    textLabel = [(RemoteUITableViewCell *)self->_tableCell textLabel];
    [textLabel setText:0];
  }
}

- (void)_updateDetailLabel
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"class"];

  if (([v4 isEqualToString:@"link"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"label") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"button"))
  {
    attributes2 = [(RUIElement *)self attributes];
    v6 = [attributes2 objectForKey:@"detailLabel"];

    if (v6)
    {
      attributes3 = [(RUIElement *)self attributes];
      v8 = [attributes3 objectForKey:@"detailLabel"];

      attributes4 = [(RUIElement *)self attributes];
      v10 = [attributes4 objectForKeyedSubscript:@"alternateDetailLabel"];

      if (-[RUITableViewRow showAlternateDetailLabel](self, "showAlternateDetailLabel") && [v10 length])
      {
        v11 = v10;

        v8 = v11;
      }

      if ([v8 length])
      {
        attributes5 = [(RUIElement *)self attributes];
        v13 = [attributes5 objectForKey:@"detailLinkURL"];

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
          ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
          [ruiDetailTextLabel setText:v8];
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
  dateFormatterCalendarIdentifier = [(RUITableViewRow *)self dateFormatterCalendarIdentifier];
  if (dateFormatterCalendarIdentifier)
  {
    [MEMORY[0x277CBEA80] calendarWithIdentifier:dateFormatterCalendarIdentifier];
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
  timeZone = [v8 timeZone];
  [v7 setTimeZone:timeZone];

  [v7 setAutoresizingMask:10];
  [v7 addTarget:self action:sel__datePickerChanged_ forControlEvents:4096];
  [v7 setDatePickerMode:{-[RUITableViewRow datePickerMode](self, "datePickerMode")}];
  date = [(RUITableViewRow *)self date];
  if (!date)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    date = [RUITableViewRow _timeZoneAdjustedDateFromDate:date2];
  }

  calendar = [v7 calendar];
  v13 = [calendar components:30 fromDate:date];

  [v13 setHour:0];
  [v13 setMinute:0];
  [v13 setSecond:0];
  calendar2 = [v7 calendar];
  v15 = [calendar2 dateFromComponents:v13];

  dateMin = [(RUITableViewRow *)self dateMin];
  [v7 setMinimumDate:dateMin];

  dateMax = [(RUITableViewRow *)self dateMax];
  [v7 setMaximumDate:dateMax];

  [v7 setDate:v15 animated:0];
  return v7;
}

- (void)setupDatePickerWithCell:(id)cell
{
  cellCopy = cell;
  attributes = [(RUIElement *)self attributes];
  v5 = [attributes objectForKey:@"value"];

  attributes2 = [(RUIElement *)self attributes];
  v7 = [attributes2 objectForKey:@"minValue"];

  attributes3 = [(RUIElement *)self attributes];
  v9 = [attributes3 objectForKey:@"maxValue"];

  if ([v5 length])
  {
    date = +[RUITableViewRow _formatterForDateYMD];
    [date dateFromString:v5];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [RUITableViewRow _timeZoneAdjustedDateFromDate:date];
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
      date2 = [MEMORY[0x277CBEAA8] date];
      [(RUITableViewRow *)self setDateMax:date2];
    }

    else
    {
      date2 = +[RUITableViewRow _formatterForDateYMD];
      v15 = [date2 dateFromString:v9];
      [(RUITableViewRow *)self setDateMax:v15];
    }
  }

  if ([(RUITableViewRow *)self datePickerStyle]== 2)
  {
    ruiDetailTextLabel = [cellCopy ruiDetailTextLabel];
    [ruiDetailTextLabel setHidden:1];

    newConfiguredDatePicker = [(RUITableViewRow *)self newConfiguredDatePicker];
    [newConfiguredDatePicker setUserInteractionEnabled:0];
    [(RUITableViewRow *)self setPickerView:newConfiguredDatePicker];
    [cellCopy setRemoteUIAccessoryView:newConfiguredDatePicker];
  }

  else
  {
    attributes4 = [(RUIElement *)self attributes];
    newConfiguredDatePicker = [attributes4 objectForKey:@"placeholder"];

    v19 = newConfiguredDatePicker;
    if (!newConfiguredDatePicker)
    {
      attributes4 = [(RUITableViewRow *)self _datePickerFormatter];
      v19 = [attributes4 stringFromDate:self->_date];
    }

    ruiDetailTextLabel2 = [cellCopy ruiDetailTextLabel];
    [ruiDetailTextLabel2 setText:v19];

    if (!newConfiguredDatePicker)
    {
    }
  }
}

- (void)activateDatePicker
{
  pickerView = [(RUITableViewRow *)self pickerView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    pickerView2 = [(RUITableViewRow *)self pickerView];
    datePickerMode = [pickerView2 datePickerMode];
    if (datePickerMode <= 3)
    {
      [pickerView2 _compactStyleSetActiveComponent:qword_21BA91F80[datePickerMode]];
    }
  }
}

- (void)setDetailAndPlaceholderText
{
  attributes = [(RUIElement *)self attributes];
  v10 = [attributes objectForKey:@"detailLabel"];

  attributes2 = [(RUIElement *)self attributes];
  v5 = [attributes2 objectForKey:@"placeholder"];

  ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  if ([v10 length])
  {
    [ruiDetailTextLabel setText:v10];
    style = [(RUIElement *)self style];
    selectPageDetailTextColor = [style selectPageDetailTextColor];
  }

  else
  {
    if (![v5 length])
    {
      goto LABEL_6;
    }

    [ruiDetailTextLabel setText:v5];
    style = objc_alloc_init(MEMORY[0x277D75BB8]);
    selectPageDetailTextColor = [style _placeholderColor];
  }

  v9 = selectPageDetailTextColor;
  [ruiDetailTextLabel setTextColor:selectPageDetailTextColor];

LABEL_6:
}

- (BOOL)_matchesSearchTermComponent:(id)component
{
  componentCopy = component;
  searchTerms = [(RUITableViewRow *)self searchTerms];

  if (searchTerms)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    searchTerms2 = [(RUITableViewRow *)self searchTerms];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__RUITableViewRow__matchesSearchTermComponent___block_invoke;
    v17[3] = &unk_2782E91A0;
    v18 = componentCopy;
    v19 = &v20;
    [searchTerms2 enumerateObjectsUsingBlock:v17];

    v7 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    attributes = [(RUIElement *)self attributes];
    v9 = [attributes objectForKeyedSubscript:@"label"];
    v10 = [v9 localizedStandardContainsString:componentCopy];

    if (v10 & 1) != 0 || (-[RUIElement attributes](self, "attributes"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectForKeyedSubscript:@"subLabel"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "localizedStandardContainsString:", componentCopy), v12, v11, (v13))
    {
      v7 = 1;
    }

    else
    {
      attributes2 = [(RUIElement *)self attributes];
      v15 = [attributes2 objectForKeyedSubscript:@"detailLabel"];
      v7 = [v15 localizedStandardContainsString:componentCopy];
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

- (BOOL)matchesSearchTerm:(id)term
{
  termCopy = term;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [termCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"class"];
  v5 = [v4 isEqualToString:@"selectPage"];

  if (v5)
  {
    style = [(RUIElement *)self style];
    selectPageDetailTextColor = [style selectPageDetailTextColor];

    attributes2 = [(RUIElement *)self attributes];
    v8 = [attributes2 objectForKeyedSubscript:@"selectPageRowColor"];

    if (v8)
    {
      v9 = [(RUITableViewRow *)self textColorForAttributeName:@"selectPageRowColor"];

      selectPageDetailTextColor = v9;
    }

    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel setTextColor:selectPageDetailTextColor];
  }
}

- (void)setSelectRowValue:(id)value
{
  valueCopy = value;
  self->_selectedRow = -1;
  v14 = valueCopy;
  if ([valueCopy length] && -[NSMutableArray count](self->_selectOptions, "count"))
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_selectOptions objectAtIndex:v5];
      value = [v6 value];
      v8 = [value isEqualToString:v14];

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
    label = [v6 label];
    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel setText:label];
  }

LABEL_8:
  if (self->_selectedRow < 0)
  {
    attributes = [(RUIElement *)self attributes];
    v12 = [attributes objectForKey:@"placeholder"];
    ruiDetailTextLabel2 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel2 setText:v12];
  }
}

- (BOOL)setSelectPageRowValue:(id)value
{
  v45 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selectOptions = [(RUITableViewRow *)self selectOptions];
  v6 = [selectOptions countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = *v40;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(selectOptions);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        value = [v9 value];
        v11 = [valueCopy isEqualToString:value];

        if (v11)
        {
          v34 = selectOptions;
          attributes = [(RUIElement *)self attributes];
          v13 = [attributes mutableCopy];

          value2 = [v9 value];
          [v13 setObject:value2 forKeyedSubscript:@"value"];

          label = [v9 label];
          [v13 setObject:label forKeyedSubscript:@"detailLabel"];

          ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
          label2 = [v9 label];
          [ruiDetailTextLabel setText:label2];

          v33 = v13;
          [(RUITableViewRow *)self setAttributes:v13];
          linkedPage = [(RUITableViewRow *)self linkedPage];
          tableViewOM = [linkedPage tableViewOM];
          sections = [tableViewOM sections];
          firstObject = [sections firstObject];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v32 = firstObject;
          rows = [firstObject rows];
          v23 = [rows countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                  objc_enumerationMutation(rows);
                }

                v27 = *(*(&v35 + 1) + 8 * j);
                attributes2 = [v27 attributes];
                v29 = [attributes2 objectForKeyedSubscript:@"value"];
                v30 = [v29 isEqualToString:valueCopy];

                [v27 setSelected:v30];
              }

              v24 = [rows countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v24);
          }

          LOBYTE(v6) = 1;
          selectOptions = v34;
          goto LABEL_18;
        }
      }

      v6 = [selectOptions countByEnumeratingWithState:&v39 objects:v44 count:16];
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

- (void)setValueFromString:(id)string notify:(BOOL)notify
{
  notifyCopy = notify;
  v25 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  attributes = [(RUIElement *)self attributes];
  v8 = [attributes objectForKey:@"class"];

  if ([v8 isEqualToString:@"editableText"])
  {
    ruiEditableTextField = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    text = [ruiEditableTextField text];
    v11 = [text isEqualToString:stringCopy];

    if (v11)
    {
      goto LABEL_15;
    }

    ruiEditableTextField2 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    [ruiEditableTextField2 setText:stringCopy];

    goto LABEL_13;
  }

  if ([v8 isEqualToString:@"switch"])
  {
    isOn = [(UISwitch *)self->_switchControl isOn];
    if (isOn == [stringCopy BOOLValue])
    {
      goto LABEL_15;
    }

    -[UISwitch setOn:](self->_switchControl, "setOn:", [stringCopy BOOLValue]);
    goto LABEL_13;
  }

  if (![v8 isEqualToString:@"datePicker"])
  {
    if ([v8 isEqualToString:@"select"])
    {
      [(RUITableViewRow *)self setSelectRowValue:stringCopy];
      goto LABEL_13;
    }

    if ([v8 isEqualToString:@"selectPage"])
    {
      if ([(RUITableViewRow *)self setSelectPageRowValue:stringCopy])
      {
LABEL_13:
        if (notifyCopy)
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
      v24 = stringCopy;
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

  if (![stringCopy length])
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
  v15 = [v14 dateFromString:stringCopy];

  date = [(RUITableViewRow *)self date];
  v17 = [date isEqual:v15];

  if (!v17)
  {
    [(RUITableViewRow *)self setDate:v15];

    if (!notifyCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (BOOL)supportsAutomaticSelection
{
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKey:@"class"];

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

- (void)populatePostbackDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  attributes = [(RUIElement *)self attributes];
  v5 = [attributes objectForKey:@"postback"];

  if (![v5 length])
  {
    attributes2 = [(RUIElement *)self attributes];
    v7 = [attributes2 objectForKey:@"id"];

    v5 = v7;
  }

  tableCell = [(RUITableViewRow *)self tableCell];
  if ([v5 length])
  {
    attributes3 = [(RUIElement *)self attributes];
    v10 = [attributes3 objectForKey:@"class"];

    if (([v10 isEqualToString:@"editableText"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"numberPicker"))
    {
      ruiEditableTextField = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
      text = [ruiEditableTextField text];

      if (text)
      {
        v13 = text;
      }

      else
      {
        v13 = &stru_282D68F58;
      }

      [dictionaryCopy setValue:v13 forKey:v5];

      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"switch"])
    {
      attributes4 = [MEMORY[0x277CCABB0] numberWithBool:{-[UISwitch isOn](self->_switchControl, "isOn")}];
      [dictionaryCopy setValue:attributes4 forKey:v5];
LABEL_35:

      goto LABEL_10;
    }

    if ([v10 isEqualToString:@"datePicker"])
    {
      [dictionaryCopy setValue:self->_date forKey:v5];
LABEL_10:

      goto LABEL_11;
    }

    if ([v10 isEqualToString:@"select"])
    {
      if (self->_selectedRow < 0)
      {
        goto LABEL_10;
      }

      attributes4 = [(NSMutableArray *)self->_selectOptions objectAtIndex:?];
      value = [attributes4 value];
    }

    else
    {
      if (![v10 isEqualToString:@"selectPage"])
      {
        goto LABEL_10;
      }

      attributes4 = [(RUIElement *)self attributes];
      value = [attributes4 objectForKeyedSubscript:@"value"];
    }

    v24 = value;
    [dictionaryCopy setValue:value forKey:v5];

    goto LABEL_35;
  }

LABEL_11:
  attributes5 = [(RUIElement *)self attributes];
  v15 = [attributes5 objectForKey:@"radioGroup"];

  if ([v15 length] && -[RemoteUITableViewCell remoteUIAccessoryType](self->_tableCell, "remoteUIAccessoryType") == 3)
  {
    attributes6 = [(RUIElement *)self attributes];
    v17 = [attributes6 objectForKey:@"value"];

    if ([v17 length])
    {
      [dictionaryCopy setValue:v17 forKey:v15];
    }
  }

  attributes7 = [(RUIElement *)self attributes];
  v19 = [attributes7 objectForKey:@"accessory"];

  if ([v15 length] && objc_msgSend(v19, "isEqualToString:", @"checkmark.circle") && -[RUITableViewRow isSelected](self, "isSelected"))
  {
    attributes8 = [(RUIElement *)self attributes];
    v21 = [attributes8 objectForKey:@"value"];

    if ([v21 length])
    {
      [dictionaryCopy setValue:v21 forKey:v15];
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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"isCopyable"];

  attributes2 = [(RUIElement *)self attributes];
  v6 = attributes2;
  if (v4)
  {
    copyText = [attributes2 objectForKeyedSubscript:@"isCopyable"];
    bOOLValue = [(NSString *)copyText BOOLValue];
  }

  else
  {
    v9 = [attributes2 objectForKeyedSubscript:@"copyableAttribute"];

    if (v9)
    {
      return 1;
    }

    attributes3 = [(RUIElement *)self attributes];
    v6 = [attributes3 objectForKey:@"class"];

    if (![v6 isEqualToString:@"label"])
    {
      bOOLValue = 0;
      goto LABEL_4;
    }

    copyText = [(RUITableViewRow *)self copyText];
    bOOLValue = copyText != 0;
  }

LABEL_4:
  return bOOLValue;
}

- (NSString)copyText
{
  copyTextFromCopyableAttribute = [(RUITableViewRow *)self copyTextFromCopyableAttribute];
  if ([copyTextFromCopyableAttribute length])
  {
    v4 = copyTextFromCopyableAttribute;
  }

  else
  {
    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    ruiValueLabel = [(UITableViewCell *)self->_tableCell ruiValueLabel];
    text = [ruiValueLabel text];

    if (!text)
    {
      text2 = [ruiDetailTextLabel text];
      if (text2)
      {
        text = text2;
      }

      else
      {
        ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
        text = [ruiTextLabel text];
      }
    }

    v4 = text;
  }

  return v4;
}

- (id)copyTextFromCopyableAttribute
{
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKey:@"copyableAttribute"];

  attributes2 = [(RUIElement *)self attributes];
  v6 = [attributes2 objectForKey:v4];

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RUITableViewRow;
  [(RUIElement *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKeyedSubscript:@"class"];
  attributes2 = [(RUIElement *)self attributes];
  v8 = [attributes2 objectForKeyedSubscript:@"label"];
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

- (void)setDate:(id)date
{
  dateCopy = date;
  if (self->_date != dateCopy)
  {
    v9 = dateCopy;
    objc_storeStrong(&self->_date, date);
    _datePickerFormatter = [(RUITableViewRow *)self _datePickerFormatter];
    v7 = [_datePickerFormatter stringFromDate:self->_date];
    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel setText:v7];

    [(RUITableViewRow *)self updateDatePickerCell];
    dateCopy = v9;
  }
}

- (void)_datePickerChanged:(id)changed
{
  date = [changed date];
  [(RUITableViewRow *)self setDate:date];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rowDidChange:self action:1];
}

- (double)height
{
  height = self->_height;
  if (height <= 0.0)
  {
    attributes = [(RUIElement *)self attributes];
    v4 = [attributes objectForKey:@"height"];
    [v4 floatValue];
    height = v5;
  }

  return height;
}

- (float)rowHeightWithMax:(float)max peggedHeight:(float)height tableView:(id)view indexPath:(id)path
{
  viewCopy = view;
  attributes = [(RUIElement *)self attributes];
  v11 = [attributes objectForKeyedSubscript:@"class"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
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
    tableCell = [(RUITableViewRow *)self tableCell];
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
      webContainerView = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
      [(RemoteUITableViewCell *)self->_tableCell webViewWidth];
      [webContainerView heightForWidth:?];
      self->_cachedSize.height = v25 + 1.0 + 32.0;

      height = self->_cachedSize.height;
      if (height > max)
      {
        height = height;
        self->_cachedSize.height = height;
        if (max > 0.0)
        {
          webContainerView2 = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
          webView = [webContainerView2 webView];
          _scrollView = [webView _scrollView];
          [_scrollView setBounces:1];

          webContainerView3 = [(RemoteUITableViewCell *)self->_tableCell webContainerView];
          webView2 = [webContainerView3 webView];
          _scrollView2 = [webView2 _scrollView];
          [_scrollView2 setScrollEnabled:1];

          height = p_cachedSize->height;
        }
      }
    }

    v12 = fmax(height, 44.0);
    goto LABEL_3;
  }

  tableCell2 = [(RUITableViewRow *)self tableCell];
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

    tableCell3 = [(RUITableViewRow *)self tableCell];
    textLabel = [tableCell3 textLabel];
    if ([textLabel numberOfLines] == 1)
    {
      tableCell4 = [(RUITableViewRow *)self tableCell];
      detailTextLabel = [tableCell4 detailTextLabel];
      v40 = [detailTextLabel numberOfLines] != 1;
    }

    else
    {
      v40 = 1;
    }

    tableCellStyle = [(RUITableViewRow *)self tableCellStyle];
    if (v40 || tableCellStyle == 3)
    {
      readableContentGuide = [viewCopy readableContentGuide];
      [readableContentGuide layoutFrame];
      v44 = v43;

      contentView = [(RemoteUITableViewCell *)self->_tableCell contentView];
      [contentView layoutMargins];
      v47 = v46;
      contentView2 = [(RemoteUITableViewCell *)self->_tableCell contentView];
      [contentView2 layoutMargins];
      v50 = v44 - (v47 + v49);

      ruiImageView = [(UITableViewCell *)self->_tableCell ruiImageView];
      image = [ruiImageView image];

      if (image)
      {
        ruiImageView2 = [(UITableViewCell *)self->_tableCell ruiImageView];
        [ruiImageView2 size];
        v50 = v50 - v54;
      }

      ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      ruiTextLabel2 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
      [ruiTextLabel textRectForBounds:objc_msgSend(ruiTextLabel2 limitedToNumberOfLines:{"numberOfLines"), 0.0, 0.0, v50, 1.79769313e308}];
      v58 = v57;

      ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
      [ruiDetailTextLabel sizeThatFits:{v50, 1.79769313e308}];
      v61 = v60;

      v62 = v58 + v61 + 31.0;
      tableCell5 = [(RUITableViewRow *)self tableCell];
      ruiDetailTextLabel2 = [tableCell5 ruiDetailTextLabel];
      text = [ruiDetailTextLabel2 text];
      v66 = [text length];

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

- (void)_switchFlipped:(id)flipped
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
  attributes = [(RUIElement *)self attributes];
  v4 = [attributes objectForKeyedSubscript:@"class"];

  if ([v4 isEqualToString:@"link"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"switch"))
  {
    v5 = 1;
  }

  else
  {
    detailButton = [(RUITableViewRow *)self detailButton];
    v5 = detailButton != 0;
  }

  return v5;
}

- (BOOL)indentWhileEditing
{
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"indentWhileEditing"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEditingEnabled
{
  attributes = [(RUIElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"editingEnabled"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  if ([(NSMutableArray *)self->_selectOptions count:view]> row)
  {
    v7 = [(NSMutableArray *)self->_selectOptions objectAtIndex:row];
    label = [v7 label];
    ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    [ruiDetailTextLabel setText:label];

    self->_selectedRow = row;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rowDidChange:self action:1];
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  if ([(NSMutableArray *)self->_selectOptions count:view]<= row)
  {
    label = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_selectOptions objectAtIndex:row];
    label = [v7 label];
  }

  return label;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained rowDidEndEditing:self];

  return 1;
}

- (void)setEditableTextFieldValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  ruiEditableTextField = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
  text = [ruiEditableTextField text];
  v7 = [WeakRetained textFieldRow:self changeCharactersInRange:0 replacementString:{objc_msgSend(text, "length"), valueCopy}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ruiEditableTextField2 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v9 = ruiEditableTextField2;
    v10 = v7;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    ruiEditableTextField2 = [(UITableViewCell *)self->_tableCell ruiEditableTextField];
    v9 = ruiEditableTextField2;
    if (isKindOfClass)
    {
      firstObject = [v7 firstObject];
      [v9 setText:firstObject];

      goto LABEL_7;
    }

    v10 = valueCopy;
  }

  [ruiEditableTextField2 setText:v10];
LABEL_7:
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained textFieldRow:self changeCharactersInRange:location replacementString:{length, stringCopy}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [fieldCopy text];
    v14 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    v15 = [v12 isEqualToString:v14];
    if ((v15 & 1) == 0)
    {
      [fieldCopy setText:v12];
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
      [fieldCopy setText:v14];
      if ([v12 count] >= 2)
      {
        v17 = [v12 objectAtIndex:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          intValue = [v17 intValue];
          if ([v12 count] < 3)
          {
            intValue2 = 0;
          }

          else
          {
            v23 = intValue;
            v19 = [v12 objectAtIndex:2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              intValue2 = [v19 intValue];
            }

            else
            {
              intValue2 = 0;
            }

            intValue = v23;
          }

          [fieldCopy setSelectionRange:{intValue, intValue2}];
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

- (void)textFieldEditingDidEnd:(id)end
{
  endCopy = end;
  WeakRetained = objc_loadWeakRetained(&self->_textFieldChangeObserver);
  [WeakRetained textFieldEditingDidEnd:endCopy];
}

- (void)activateMarkdownURL:(id)l
{
  lCopy = l;
  attributes = [(RUIElement *)self attributes];
  v8 = [attributes mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"url"];
  v7 = [[RUIElement alloc] initWithAttributes:v8 parent:self];
  [(RUIElement *)self performAction:2 forElement:v7 completion:0];
}

- (void)detailLabelActivatedLinkFromCell:(id)cell completion:(id)completion
{
  completionCopy = completion;
  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKey:@"detailLinkURL"];

  if (v6)
  {
    attributes2 = [(RUIElement *)self attributes];
    v8 = [attributes2 mutableCopy];

    [v8 setObject:v6 forKeyedSubscript:@"url"];
    v9 = [[RUIElement alloc] initWithAttributes:v8 parent:self];
    [(RUIElement *)self performAction:2 forElement:v9 completion:completionCopy];
  }
}

- (void)webContainerView:(id)view didClickLinkWithURL:(id)l
{
  lCopy = l;
  attributes = [(RUIElement *)self attributes];
  v9 = [attributes mutableCopy];

  absoluteString = [lCopy absoluteString];

  [v9 setObject:absoluteString forKeyedSubscript:@"url"];
  v8 = [[RUIElement alloc] initWithAttributes:v9 parent:self];
  [(RUIElement *)self performAction:2 forElement:v8 completion:0];
}

- (id)_checkmarkAccessoryViewWithSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
  v6 = [MEMORY[0x277D755D0] configurationWithFont:v5];
  if (selectedCopy)
  {
    v7 = @"checkmark.circle.fill";
  }

  else
  {
    v7 = @"circle";
  }

  v8 = [MEMORY[0x277D755B8] systemImageNamed:v7 withConfiguration:v6];
  v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
  attributes = [(RUIElement *)self attributes];
  v11 = [attributes objectForKey:@"checkedColor"];

  if (v11)
  {
    if (selectedCopy)
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

- (void)_drawCustomImage:(BOOL)image
{
  imageCopy = image;
  v69[2] = *MEMORY[0x277D85DE8];
  attributes = [(RUIElement *)self attributes];
  v5 = [attributes objectForKey:@"imageText"];

  attributes2 = [(RUIElement *)self attributes];
  v7 = [attributes2 objectForKey:@"lightImageTextColor"];

  attributes3 = [(RUIElement *)self attributes];
  v9 = [attributes3 objectForKey:@"darkImageTextColor"];

  attributes4 = [(RUIElement *)self attributes];
  v67 = [attributes4 objectForKey:@"selectedLightImageTextColor"];

  attributes5 = [(RUIElement *)self attributes];
  v12 = [attributes5 objectForKey:@"selectedDarkImageTextColor"];

  attributes6 = [(RUIElement *)self attributes];
  v14 = [attributes6 objectForKey:@"darkBackgroundColor"];

  attributes7 = [(RUIElement *)self attributes];
  v16 = [attributes7 objectForKey:@"lightBackgroundColor"];

  attributes8 = [(RUIElement *)self attributes];
  v18 = [attributes8 objectForKey:@"selectedDarkColor"];

  attributes9 = [(RUIElement *)self attributes];
  v20 = [attributes9 objectForKey:@"selectedLightColor"];

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
    _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
    userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];

    v60 = v12;
    if (userInterfaceStyle == 2)
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
      v32 = imageCopy;

      v33 = v34;
    }

    else
    {
      v32 = imageCopy;
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v48 = v47;
    v70.width = 77.0;
    v70.height = 40.0;
    UIGraphicsBeginImageContextWithOptions(v70, 0, v48);

    imageView = [(RemoteUITableViewCell *)self->_tableCell imageView];
    image = [imageView image];
    [image drawInRect:{0.0, 0.0, 77.0, 40.0}];

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
    imageView2 = [(RemoteUITableViewCell *)self->_tableCell imageView];
    [imageView2 setImage:v52];

    imageView3 = [(RemoteUITableViewCell *)self->_tableCell imageView];
    [imageView3 _setCornerRadius:8.0];

    imageView4 = [(RemoteUITableViewCell *)self->_tableCell imageView];

    [imageView4 setClipsToBounds:1];
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
  attributes = [(RUIElement *)self attributes];
  v6 = [attributes objectForKeyedSubscript:@"backgroundColor"];

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
  ruiTextLabel = [(UITableViewCell *)self->_tableCell ruiTextLabel];
  attributedText = [ruiTextLabel attributedText];
  string = [attributedText string];

  if ([string length])
  {
    text = string;
  }

  else
  {
    ruiTextLabel2 = [(UITableViewCell *)self->_tableCell ruiTextLabel];
    text = [ruiTextLabel2 text];
  }

  return text;
}

- (void)setLabel:(id)label
{
  tableCell = self->_tableCell;
  labelCopy = label;
  ruiTextLabel = [(UITableViewCell *)tableCell ruiTextLabel];
  [ruiTextLabel setMarkdown:labelCopy baseURL:0];
}

- (NSString)subLabel
{
  ruiDetailTextLabel = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
  attributedText = [ruiDetailTextLabel attributedText];
  string = [attributedText string];

  if ([string length])
  {
    text = string;
  }

  else
  {
    ruiDetailTextLabel2 = [(UITableViewCell *)self->_tableCell ruiDetailTextLabel];
    text = [ruiDetailTextLabel2 text];
  }

  return text;
}

- (void)setSubLabel:(id)label
{
  tableCell = self->_tableCell;
  labelCopy = label;
  ruiDetailTextLabel = [(UITableViewCell *)tableCell ruiDetailTextLabel];
  [ruiDetailTextLabel setMarkdown:labelCopy baseURL:0];
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
  selfCopy = self;
  RUITableViewRow.parseBadge()();
}

- (void)setBadgeInTableCell:(id)cell
{
  cellCopy = cell;
  selfCopy = self;
  RUITableViewRow.setBadge(in:)(cellCopy);
}

- (void)reportInternalRenderEvent
{
  selfCopy = self;
  RUITableViewRow.reportInternalRenderEvent()();
}

- (void)tableCell
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef RUICTSettingCopyMyPhoneNumber()"];
  [currentHandler handleFailureInFunction:v1 file:@"RUITableViewRow.m" lineNumber:51 description:{@"%s", dlerror()}];

  __break(1u);
}

@end