@interface PKPaymentPassDetailSectionController
- (PKPaymentPassDetailSectionController)init;
- (id)checkmarkCellWithText:(id)text forTableView:(id)view;
- (id)defaultCellWithTextColor:(id)color forTableView:(id)view;
- (id)disabledCellWithText:(id)text forTableView:(id)view;
- (id)infoCellWithDescription:(id)description forTableView:(id)view;
- (id)infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view;
- (id)infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style reuseIdentifier:(id)identifier forTableView:(id)view;
- (id)linkCellWithText:(id)text forTableView:(id)view;
- (id)settingsTableCellWithTitle:(id)title action:(SEL)action setOn:(BOOL)on enabled:(BOOL)enabled;
- (id)spinnerCellForTableView:(id)view;
- (id)stackedInfoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view;
- (id)subtitleCellForTableView:(id)view;
- (id)switchCellWithText:(id)text forTableView:(id)view;
- (id)textFieldTableCellWithTitle:(id)title textValue:(id)value action:(SEL)action keyboardType:(int64_t)type;
- (id)value1CellWithTextColor:(id)color forTableView:(id)view;
- (void)_applyDefaultDynamicStylingToCell:(id)cell;
- (void)_applyDefaultStaticStylingToCell:(id)cell;
- (void)reportPassDetailsAnalyticsForTappedButtonTag:(id)tag additionalAnalytics:(id)analytics pass:(id)pass;
- (void)reportPassDetailsAnalyticsForTappedRowTag:(id)tag additionalAnalytics:(id)analytics pass:(id)pass;
- (void)reportPassDetailsAnalyticsForToggleTag:(id)tag toggleResult:(BOOL)result additionalAnalytics:(id)analytics pass:(id)pass;
- (void)showSpinner:(BOOL)spinner inCell:(id)cell detailText:(id)text;
- (void)showSpinner:(BOOL)spinner inCell:(id)cell overrideTextColor:(id)color;
@end

@implementation PKPaymentPassDetailSectionController

- (PKPaymentPassDetailSectionController)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentPassDetailSectionController;
  result = [(PKPaymentPassDetailSectionController *)&v3 init];
  if (result)
  {
    result->_currentSegment = 0;
  }

  return result;
}

- (void)_applyDefaultStaticStylingToCell:(id)cell
{
  if (self->_highlightColor)
  {
    v4 = MEMORY[0x1E69DD250];
    cellCopy = cell;
    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v7 setBackgroundColor:self->_highlightColor];
    [cellCopy setSelectedBackgroundView:v7];
  }

  else
  {
    [cell setSelectedBackgroundView:0];
  }

  PKAccessibilityIDDefaultCellSet(cell);
}

- (void)_applyDefaultDynamicStylingToCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setAccessoryType:0];
  [cellCopy setSelectionStyle:3];
  PKAccessibilityIDDefaultCellSet(cellCopy);
}

- (id)defaultCellWithTextColor:(id)color forTableView:(id)view
{
  colorCopy = color;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v7];
  textLabel = [v7 textLabel];
  [textLabel setText:0];
  [textLabel setTextColor:colorCopy];

  [textLabel setNumberOfLines:0];
  [v7 setAccessoryView:0];

  return v7;
}

- (id)value1CellWithTextColor:(id)color forTableView:(id)view
{
  colorCopy = color;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell-Value1"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"Cell-Value1"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v7];
  textLabel = [v7 textLabel];
  [textLabel setText:0];
  [textLabel setTextColor:colorCopy];

  [v7 setAccessoryView:0];

  return v7;
}

- (id)subtitleCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"SubtitleCell"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SubtitleCell"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v4];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v4];

  return v4;
}

- (id)spinnerCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"spinnerCell"];
  if (!v4)
  {
    v4 = [[PKLeftAlignedSpinnerCell alloc] initWithStyle:0 reuseIdentifier:@"spinnerCell"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v4];
    [(PKLeftAlignedSpinnerCell *)v4 setAccessoryType:0];
    [(PKLeftAlignedSpinnerCell *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)switchCellWithText:(id)text forTableView:(id)view
{
  textCopy = text;
  v6 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v6];
  textLabel = [(PKSettingTableCell *)v6 textLabel];
  [textLabel setText:textCopy];

  primaryTextColor = self->_primaryTextColor;
  textLabel2 = [(PKSettingTableCell *)v6 textLabel];
  v10 = textLabel2;
  if (primaryTextColor)
  {
    [textLabel2 setTextColor:self->_primaryTextColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v10 setTextColor:labelColor];
  }

  return v6;
}

- (id)settingsTableCellWithTitle:(id)title action:(SEL)action setOn:(BOOL)on enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  onCopy = on;
  titleCopy = title;
  v11 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v11];
  primaryTextColor = self->_primaryTextColor;
  textLabel = [(PKSettingTableCell *)v11 textLabel];
  v14 = textLabel;
  if (primaryTextColor)
  {
    [textLabel setTextColor:self->_primaryTextColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v14 setTextColor:labelColor];
  }

  textLabel2 = [(PKSettingTableCell *)v11 textLabel];
  [textLabel2 setText:titleCopy];

  [(PKSettingTableCell *)v11 setTarget:self action:action];
  [(PKSettingTableCell *)v11 setOn:onCopy];
  [(PKSettingTableCell *)v11 setUserInteractionEnabled:enabledCopy];

  return v11;
}

- (id)textFieldTableCellWithTitle:(id)title textValue:(id)value action:(SEL)action keyboardType:(int64_t)type
{
  valueCopy = value;
  titleCopy = title;
  v12 = [[PKTextFieldTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PKTextFieldTableCellReuseIdentifier"];
  [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v12];
  primaryTextColor = self->_primaryTextColor;
  textLabel = [(PKTextFieldTableViewCell *)v12 textLabel];
  v15 = textLabel;
  if (primaryTextColor)
  {
    [textLabel setTextColor:self->_primaryTextColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v15 setTextColor:labelColor];
  }

  textLabel2 = [(PKTextFieldTableViewCell *)v12 textLabel];
  [textLabel2 setText:titleCopy];
  v18 = titleCopy != 0;

  [(PKTextFieldTableViewCell *)v12 setSelectionStyle:0];
  textField = [(PKTextFieldTableViewCell *)v12 textField];
  [textField setTextAlignment:2 * v18];
  [textField setText:valueCopy];

  [textField setKeyboardType:type];
  [textField setClearButtonMode:1];
  [textField addTarget:self action:action forControlEvents:0x20000];

  return v12;
}

- (id)disabledCellWithText:(id)text forTableView:(id)view
{
  v6 = MEMORY[0x1E69DC888];
  viewCopy = view;
  textCopy = text;
  placeholderTextColor = [v6 placeholderTextColor];
  v10 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:placeholderTextColor forTableView:viewCopy];

  textLabel = [v10 textLabel];
  [textLabel setText:textCopy];

  [v10 setSelectionStyle:0];

  return v10;
}

- (id)linkCellWithText:(id)text forTableView:(id)view
{
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    viewCopy = view;
    textCopy = text;
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:linkTextColor forTableView:viewCopy];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    viewCopy2 = view;
    textCopy2 = text;
    viewCopy = [v10 systemBlueColor];
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:viewCopy forTableView:viewCopy2];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:text];

  return v9;
}

- (id)checkmarkCellWithText:(id)text forTableView:(id)view
{
  textCopy = text;
  viewCopy = view;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:primaryTextColor forTableView:viewCopy];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:labelColor forTableView:viewCopy];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:textCopy];

  if (self->_linkTextColor)
  {
    [v9 setTintColor:?];
  }

  return v9;
}

- (id)infoCellWithDescription:(id)description forTableView:(id)view
{
  detailTextColor = self->_detailTextColor;
  if (detailTextColor)
  {
    viewCopy = view;
    descriptionCopy = description;
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:detailTextColor forTableView:viewCopy];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    viewCopy2 = view;
    descriptionCopy2 = description;
    viewCopy = [v10 secondaryLabelColor];
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:viewCopy forTableView:viewCopy2];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:description];

  [v9 setSelectionStyle:0];

  return v9;
}

- (id)infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view
{
  v10 = MEMORY[0x1E696AEC0];
  viewCopy = view;
  detailTextCopy = detailText;
  textCopy = text;
  style = [v10 stringWithFormat:@"CellStyle-%ld", style];
  v15 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:textCopy detailText:detailTextCopy cellStyle:style reuseIdentifier:style forTableView:viewCopy];

  return v15;
}

- (id)infoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style reuseIdentifier:(id)identifier forTableView:(id)view
{
  identifierCopy = identifier;
  detailTextCopy = detailText;
  textCopy = text;
  v15 = [view dequeueReusableCellWithIdentifier:identifierCopy];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:style reuseIdentifier:identifierCopy];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v15];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v15];
  textLabel = [v15 textLabel];
  [textLabel setText:textCopy];

  if (self->_primaryTextColor)
  {
    [textLabel setTextColor:?];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [textLabel setTextColor:labelColor];
  }

  [textLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  detailTextLabel = [v15 detailTextLabel];
  [detailTextLabel setLineBreakMode:4];
  [detailTextLabel setText:detailTextCopy];

  if (self->_detailTextColor)
  {
    [detailTextLabel setTextColor:?];
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [detailTextLabel setTextColor:secondaryLabelColor];
  }

  [detailTextLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v15;
}

- (id)stackedInfoCellWithPrimaryText:(id)text detailText:(id)detailText cellStyle:(int64_t)style forTableView:(id)view
{
  detailTextCopy = detailText;
  textCopy = text;
  v12 = [view dequeueReusableCellWithIdentifier:@"StackedInfoCellIdentifier"];
  if (!v12)
  {
    v12 = [[PKStackedLabelCell alloc] initWithStyle:style reuseIdentifier:@"StackedInfoCellIdentifier"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v12];
    if (self->_primaryTextColor)
    {
      [(PKStackedLabelCell *)v12 setTitleTextColor:?];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(PKStackedLabelCell *)v12 setTitleTextColor:labelColor];
    }

    if (self->_detailTextColor)
    {
      [(PKStackedLabelCell *)v12 setDetailTextColor:?];
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(PKStackedLabelCell *)v12 setDetailTextColor:secondaryLabelColor];
    }
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v12];
  [(PKStackedLabelCell *)v12 setTitleText:textCopy];

  [(PKStackedLabelCell *)v12 setDetailText:detailTextCopy];

  return v12;
}

- (void)showSpinner:(BOOL)spinner inCell:(id)cell detailText:(id)text
{
  spinnerCopy = spinner;
  textCopy = text;
  cellCopy = cell;
  [(PKPaymentPassDetailSectionController *)self showSpinner:spinnerCopy inCell:cellCopy overrideTextColor:0];
  detailTextLabel = [cellCopy detailTextLabel];

  [detailTextLabel setText:textCopy];
}

- (void)showSpinner:(BOOL)spinner inCell:(id)cell overrideTextColor:(id)color
{
  spinnerCopy = spinner;
  colorCopy = color;
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  primaryTextColor = colorCopy;
  if (colorCopy || (primaryTextColor = self->_primaryTextColor) != 0)
  {
    labelColor = primaryTextColor;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v12 = labelColor;
  if (spinnerCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v12 = tertiaryLabelColor;
  }

  else
  {
    v13 = 0;
  }

  [textLabel setTextColor:v12];
  [cellCopy setAccessoryView:v13];
}

- (void)reportPassDetailsAnalyticsForTappedRowTag:(id)tag additionalAnalytics:(id)analytics pass:(id)pass
{
  v19[3] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  analyticsCopy = analytics;
  if (tagCopy)
  {
    v9 = *MEMORY[0x1E69BAC20];
    v10 = *MEMORY[0x1E69BA680];
    v18[0] = *MEMORY[0x1E69BABE8];
    v18[1] = v10;
    v11 = *MEMORY[0x1E69BA7C8];
    v19[0] = v9;
    v19[1] = v11;
    v18[2] = *MEMORY[0x1E69BB170];
    v19[2] = tagCopy;
    v12 = MEMORY[0x1E695DF20];
    passCopy = pass;
    v14 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:3];
    v15 = [v14 mutableCopy];

    if (analyticsCopy)
    {
      [v15 addEntriesFromDictionary:analyticsCopy];
    }

    v16 = MEMORY[0x1E69B8540];
    v17 = [v15 copy];
    [v16 reportDashboardEventIfNecessary:v17 forPass:passCopy];
  }
}

- (void)reportPassDetailsAnalyticsForTappedButtonTag:(id)tag additionalAnalytics:(id)analytics pass:(id)pass
{
  v19[3] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  analyticsCopy = analytics;
  if (tagCopy)
  {
    v9 = *MEMORY[0x1E69BAC20];
    v10 = *MEMORY[0x1E69BA680];
    v18[0] = *MEMORY[0x1E69BABE8];
    v18[1] = v10;
    v11 = *MEMORY[0x1E69BA6F0];
    v19[0] = v9;
    v19[1] = v11;
    v18[2] = *MEMORY[0x1E69BA440];
    v19[2] = tagCopy;
    v12 = MEMORY[0x1E695DF20];
    passCopy = pass;
    v14 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:3];
    v15 = [v14 mutableCopy];

    if (analyticsCopy)
    {
      [v15 addEntriesFromDictionary:analyticsCopy];
    }

    v16 = MEMORY[0x1E69B8540];
    v17 = [v15 copy];
    [v16 reportDashboardEventIfNecessary:v17 forPass:passCopy];
  }
}

- (void)reportPassDetailsAnalyticsForToggleTag:(id)tag toggleResult:(BOOL)result additionalAnalytics:(id)analytics pass:(id)pass
{
  resultCopy = result;
  v24[4] = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  analyticsCopy = analytics;
  if (tagCopy)
  {
    v11 = *MEMORY[0x1E69BAC20];
    v12 = *MEMORY[0x1E69BA680];
    v23[0] = *MEMORY[0x1E69BABE8];
    v23[1] = v12;
    v13 = *MEMORY[0x1E69BA7E8];
    v24[0] = v11;
    v24[1] = v13;
    v14 = *MEMORY[0x1E69BB2F0];
    v23[2] = *MEMORY[0x1E69BB320];
    v23[3] = v14;
    v15 = MEMORY[0x1E69BB300];
    if (!resultCopy)
    {
      v15 = MEMORY[0x1E69BB2F8];
    }

    v16 = *v15;
    v24[2] = tagCopy;
    v24[3] = v16;
    v17 = MEMORY[0x1E695DF20];
    passCopy = pass;
    v19 = [v17 dictionaryWithObjects:v24 forKeys:v23 count:4];
    v20 = [v19 mutableCopy];

    if (analyticsCopy)
    {
      [v20 addEntriesFromDictionary:analyticsCopy];
    }

    v21 = MEMORY[0x1E69B8540];
    v22 = [v20 copy];
    [v21 reportDashboardEventIfNecessary:v22 forPass:passCopy];
  }
}

@end