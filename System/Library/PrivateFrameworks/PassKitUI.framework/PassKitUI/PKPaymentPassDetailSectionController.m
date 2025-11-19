@interface PKPaymentPassDetailSectionController
- (PKPaymentPassDetailSectionController)init;
- (id)checkmarkCellWithText:(id)a3 forTableView:(id)a4;
- (id)defaultCellWithTextColor:(id)a3 forTableView:(id)a4;
- (id)disabledCellWithText:(id)a3 forTableView:(id)a4;
- (id)infoCellWithDescription:(id)a3 forTableView:(id)a4;
- (id)infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6;
- (id)infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 reuseIdentifier:(id)a6 forTableView:(id)a7;
- (id)linkCellWithText:(id)a3 forTableView:(id)a4;
- (id)settingsTableCellWithTitle:(id)a3 action:(SEL)a4 setOn:(BOOL)a5 enabled:(BOOL)a6;
- (id)spinnerCellForTableView:(id)a3;
- (id)stackedInfoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6;
- (id)subtitleCellForTableView:(id)a3;
- (id)switchCellWithText:(id)a3 forTableView:(id)a4;
- (id)textFieldTableCellWithTitle:(id)a3 textValue:(id)a4 action:(SEL)a5 keyboardType:(int64_t)a6;
- (id)value1CellWithTextColor:(id)a3 forTableView:(id)a4;
- (void)_applyDefaultDynamicStylingToCell:(id)a3;
- (void)_applyDefaultStaticStylingToCell:(id)a3;
- (void)reportPassDetailsAnalyticsForTappedButtonTag:(id)a3 additionalAnalytics:(id)a4 pass:(id)a5;
- (void)reportPassDetailsAnalyticsForTappedRowTag:(id)a3 additionalAnalytics:(id)a4 pass:(id)a5;
- (void)reportPassDetailsAnalyticsForToggleTag:(id)a3 toggleResult:(BOOL)a4 additionalAnalytics:(id)a5 pass:(id)a6;
- (void)showSpinner:(BOOL)a3 inCell:(id)a4 detailText:(id)a5;
- (void)showSpinner:(BOOL)a3 inCell:(id)a4 overrideTextColor:(id)a5;
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

- (void)_applyDefaultStaticStylingToCell:(id)a3
{
  if (self->_highlightColor)
  {
    v4 = MEMORY[0x1E69DD250];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v7 setBackgroundColor:self->_highlightColor];
    [v5 setSelectedBackgroundView:v7];
  }

  else
  {
    [a3 setSelectedBackgroundView:0];
  }

  PKAccessibilityIDDefaultCellSet(a3);
}

- (void)_applyDefaultDynamicStylingToCell:(id)a3
{
  v3 = a3;
  [v3 setAccessoryType:0];
  [v3 setSelectionStyle:3];
  PKAccessibilityIDDefaultCellSet(v3);
}

- (id)defaultCellWithTextColor:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v7];
  v8 = [v7 textLabel];
  [v8 setText:0];
  [v8 setTextColor:v6];

  [v8 setNumberOfLines:0];
  [v7 setAccessoryView:0];

  return v7;
}

- (id)value1CellWithTextColor:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"Cell-Value1"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"Cell-Value1"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v7];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v7];
  v8 = [v7 textLabel];
  [v8 setText:0];
  [v8 setTextColor:v6];

  [v7 setAccessoryView:0];

  return v7;
}

- (id)subtitleCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"SubtitleCell"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SubtitleCell"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v4];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v4];

  return v4;
}

- (id)spinnerCellForTableView:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"spinnerCell"];
  if (!v4)
  {
    v4 = [[PKLeftAlignedSpinnerCell alloc] initWithStyle:0 reuseIdentifier:@"spinnerCell"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v4];
    [(PKLeftAlignedSpinnerCell *)v4 setAccessoryType:0];
    [(PKLeftAlignedSpinnerCell *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (id)switchCellWithText:(id)a3 forTableView:(id)a4
{
  v5 = a3;
  v6 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v6];
  v7 = [(PKSettingTableCell *)v6 textLabel];
  [v7 setText:v5];

  primaryTextColor = self->_primaryTextColor;
  v9 = [(PKSettingTableCell *)v6 textLabel];
  v10 = v9;
  if (primaryTextColor)
  {
    [v9 setTextColor:self->_primaryTextColor];
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] labelColor];
    [v10 setTextColor:v11];
  }

  return v6;
}

- (id)settingsTableCellWithTitle:(id)a3 action:(SEL)a4 setOn:(BOOL)a5 enabled:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = [[PKSettingTableCell alloc] initWithStyle:0 reuseIdentifier:@"PKSettingTableCellReuseIdentifier"];
  [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v11];
  primaryTextColor = self->_primaryTextColor;
  v13 = [(PKSettingTableCell *)v11 textLabel];
  v14 = v13;
  if (primaryTextColor)
  {
    [v13 setTextColor:self->_primaryTextColor];
  }

  else
  {
    v15 = [MEMORY[0x1E69DC888] labelColor];
    [v14 setTextColor:v15];
  }

  v16 = [(PKSettingTableCell *)v11 textLabel];
  [v16 setText:v10];

  [(PKSettingTableCell *)v11 setTarget:self action:a4];
  [(PKSettingTableCell *)v11 setOn:v7];
  [(PKSettingTableCell *)v11 setUserInteractionEnabled:v6];

  return v11;
}

- (id)textFieldTableCellWithTitle:(id)a3 textValue:(id)a4 action:(SEL)a5 keyboardType:(int64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[PKTextFieldTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PKTextFieldTableCellReuseIdentifier"];
  [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v12];
  primaryTextColor = self->_primaryTextColor;
  v14 = [(PKTextFieldTableViewCell *)v12 textLabel];
  v15 = v14;
  if (primaryTextColor)
  {
    [v14 setTextColor:self->_primaryTextColor];
  }

  else
  {
    v16 = [MEMORY[0x1E69DC888] labelColor];
    [v15 setTextColor:v16];
  }

  v17 = [(PKTextFieldTableViewCell *)v12 textLabel];
  [v17 setText:v11];
  v18 = v11 != 0;

  [(PKTextFieldTableViewCell *)v12 setSelectionStyle:0];
  v19 = [(PKTextFieldTableViewCell *)v12 textField];
  [v19 setTextAlignment:2 * v18];
  [v19 setText:v10];

  [v19 setKeyboardType:a6];
  [v19 setClearButtonMode:1];
  [v19 addTarget:self action:a5 forControlEvents:0x20000];

  return v12;
}

- (id)disabledCellWithText:(id)a3 forTableView:(id)a4
{
  v6 = MEMORY[0x1E69DC888];
  v7 = a4;
  v8 = a3;
  v9 = [v6 placeholderTextColor];
  v10 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:v9 forTableView:v7];

  v11 = [v10 textLabel];
  [v11 setText:v8];

  [v10 setSelectionStyle:0];

  return v10;
}

- (id)linkCellWithText:(id)a3 forTableView:(id)a4
{
  linkTextColor = self->_linkTextColor;
  if (linkTextColor)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:linkTextColor forTableView:v7];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    v11 = a4;
    v12 = a3;
    v7 = [v10 systemBlueColor];
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:v7 forTableView:v11];
  }

  v13 = [v9 textLabel];
  [v13 setText:a3];

  return v9;
}

- (id)checkmarkCellWithText:(id)a3 forTableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  primaryTextColor = self->_primaryTextColor;
  if (primaryTextColor)
  {
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:primaryTextColor forTableView:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:v10 forTableView:v7];
  }

  v11 = [v9 textLabel];
  [v11 setText:v6];

  if (self->_linkTextColor)
  {
    [v9 setTintColor:?];
  }

  return v9;
}

- (id)infoCellWithDescription:(id)a3 forTableView:(id)a4
{
  detailTextColor = self->_detailTextColor;
  if (detailTextColor)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:detailTextColor forTableView:v7];
  }

  else
  {
    v10 = MEMORY[0x1E69DC888];
    v11 = a4;
    v12 = a3;
    v7 = [v10 secondaryLabelColor];
    v9 = [(PKPaymentPassDetailSectionController *)self defaultCellWithTextColor:v7 forTableView:v11];
  }

  v13 = [v9 textLabel];
  [v13 setText:a3];

  [v9 setSelectionStyle:0];

  return v9;
}

- (id)infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 stringWithFormat:@"CellStyle-%ld", a5];
  v15 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v13 detailText:v12 cellStyle:a5 reuseIdentifier:v14 forTableView:v11];

  return v15;
}

- (id)infoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 reuseIdentifier:(id)a6 forTableView:(id)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [a7 dequeueReusableCellWithIdentifier:v12];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:a5 reuseIdentifier:v12];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v15];
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v15];
  v16 = [v15 textLabel];
  [v16 setText:v14];

  if (self->_primaryTextColor)
  {
    [v16 setTextColor:?];
  }

  else
  {
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v16 setTextColor:v17];
  }

  [v16 setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  v18 = [v15 detailTextLabel];
  [v18 setLineBreakMode:4];
  [v18 setText:v13];

  if (self->_detailTextColor)
  {
    [v18 setTextColor:?];
  }

  else
  {
    v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v18 setTextColor:v19];
  }

  [v18 setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];

  return v15;
}

- (id)stackedInfoCellWithPrimaryText:(id)a3 detailText:(id)a4 cellStyle:(int64_t)a5 forTableView:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a6 dequeueReusableCellWithIdentifier:@"StackedInfoCellIdentifier"];
  if (!v12)
  {
    v12 = [[PKStackedLabelCell alloc] initWithStyle:a5 reuseIdentifier:@"StackedInfoCellIdentifier"];
    [(PKPaymentPassDetailSectionController *)self _applyDefaultStaticStylingToCell:v12];
    if (self->_primaryTextColor)
    {
      [(PKStackedLabelCell *)v12 setTitleTextColor:?];
    }

    else
    {
      v13 = [MEMORY[0x1E69DC888] labelColor];
      [(PKStackedLabelCell *)v12 setTitleTextColor:v13];
    }

    if (self->_detailTextColor)
    {
      [(PKStackedLabelCell *)v12 setDetailTextColor:?];
    }

    else
    {
      v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(PKStackedLabelCell *)v12 setDetailTextColor:v14];
    }
  }

  [(PKPaymentPassDetailSectionController *)self _applyDefaultDynamicStylingToCell:v12];
  [(PKStackedLabelCell *)v12 setTitleText:v11];

  [(PKStackedLabelCell *)v12 setDetailText:v10];

  return v12;
}

- (void)showSpinner:(BOOL)a3 inCell:(id)a4 detailText:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  [(PKPaymentPassDetailSectionController *)self showSpinner:v6 inCell:v9 overrideTextColor:0];
  v10 = [v9 detailTextLabel];

  [v10 setText:v8];
}

- (void)showSpinner:(BOOL)a3 inCell:(id)a4 overrideTextColor:(id)a5
{
  v6 = a3;
  v15 = a5;
  v8 = a4;
  v9 = [v8 textLabel];
  primaryTextColor = v15;
  if (v15 || (primaryTextColor = self->_primaryTextColor) != 0)
  {
    v11 = primaryTextColor;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] labelColor];
  }

  v12 = v11;
  if (v6)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    v14 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

    v12 = v14;
  }

  else
  {
    v13 = 0;
  }

  [v9 setTextColor:v12];
  [v8 setAccessoryView:v13];
}

- (void)reportPassDetailsAnalyticsForTappedRowTag:(id)a3 additionalAnalytics:(id)a4 pass:(id)a5
{
  v19[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *MEMORY[0x1E69BAC20];
    v10 = *MEMORY[0x1E69BA680];
    v18[0] = *MEMORY[0x1E69BABE8];
    v18[1] = v10;
    v11 = *MEMORY[0x1E69BA7C8];
    v19[0] = v9;
    v19[1] = v11;
    v18[2] = *MEMORY[0x1E69BB170];
    v19[2] = v7;
    v12 = MEMORY[0x1E695DF20];
    v13 = a5;
    v14 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:3];
    v15 = [v14 mutableCopy];

    if (v8)
    {
      [v15 addEntriesFromDictionary:v8];
    }

    v16 = MEMORY[0x1E69B8540];
    v17 = [v15 copy];
    [v16 reportDashboardEventIfNecessary:v17 forPass:v13];
  }
}

- (void)reportPassDetailsAnalyticsForTappedButtonTag:(id)a3 additionalAnalytics:(id)a4 pass:(id)a5
{
  v19[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = *MEMORY[0x1E69BAC20];
    v10 = *MEMORY[0x1E69BA680];
    v18[0] = *MEMORY[0x1E69BABE8];
    v18[1] = v10;
    v11 = *MEMORY[0x1E69BA6F0];
    v19[0] = v9;
    v19[1] = v11;
    v18[2] = *MEMORY[0x1E69BA440];
    v19[2] = v7;
    v12 = MEMORY[0x1E695DF20];
    v13 = a5;
    v14 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:3];
    v15 = [v14 mutableCopy];

    if (v8)
    {
      [v15 addEntriesFromDictionary:v8];
    }

    v16 = MEMORY[0x1E69B8540];
    v17 = [v15 copy];
    [v16 reportDashboardEventIfNecessary:v17 forPass:v13];
  }
}

- (void)reportPassDetailsAnalyticsForToggleTag:(id)a3 toggleResult:(BOOL)a4 additionalAnalytics:(id)a5 pass:(id)a6
{
  v8 = a4;
  v24[4] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (v9)
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
    if (!v8)
    {
      v15 = MEMORY[0x1E69BB2F8];
    }

    v16 = *v15;
    v24[2] = v9;
    v24[3] = v16;
    v17 = MEMORY[0x1E695DF20];
    v18 = a6;
    v19 = [v17 dictionaryWithObjects:v24 forKeys:v23 count:4];
    v20 = [v19 mutableCopy];

    if (v10)
    {
      [v20 addEntriesFromDictionary:v10];
    }

    v21 = MEMORY[0x1E69B8540];
    v22 = [v20 copy];
    [v21 reportDashboardEventIfNecessary:v22 forPass:v18];
  }
}

@end