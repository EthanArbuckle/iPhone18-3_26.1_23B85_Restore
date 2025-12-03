@interface DBSFineTuneEditTextTableCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation DBSFineTuneEditTextTableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v44.receiver = self;
  v44.super_class = DBSFineTuneEditTextTableCell;
  [(PSEditableTableCell *)&v44 refreshCellContentsWithSpecifier:specifierCopy];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] != 1;

  textField = [(PSEditableTableCell *)self textField];
  [textField setTextAlignment:2 * v6];
  appearance = [MEMORY[0x277D3FA48] appearance];
  altTextColor = [appearance altTextColor];
  v10 = [(DBSFineTuneEditTextTableCell *)self _accessibilityHigherContrastTintColorForColor:altTextColor];
  [textField setTextColor:v10];

  v11 = MEMORY[0x277D74300];
  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v12 pointSize];
  v13 = [v11 monospacedDigitSystemFontOfSize:? weight:?];
  [textField setFont:v13];

  v42 = *MEMORY[0x277D3FEC0];
  v14 = [specifierCopy objectForKeyedSubscript:?];
  [v14 doubleValue];
  self->_minValue = v15;

  v16 = *MEMORY[0x277D3FEB8];
  v43 = specifierCopy;
  v17 = [specifierCopy objectForKeyedSubscript:*MEMORY[0x277D3FEB8]];
  [v17 doubleValue];
  self->_maxValue = v18;

  self->_valueValid = 0;
  text = [textField text];
  v20 = [text length];

  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v21 setNumberStyle:1];
    text2 = [textField text];
    v23 = [v21 numberFromString:text2];
    [v23 doubleValue];
    v25 = v24;

    v26 = self->_minValue + -0.000001 < v25;
    if (self->_maxValue + 0.000001 <= v25)
    {
      v26 = 0;
    }

    self->_valueValid = v26;
  }

  else
  {
    self->_valueValid = 1;
  }

  v27 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v27 setNumberStyle:1];
  if (self->_maxValue >= 1.0)
  {
    [v27 setMinimumFractionDigits:1];
    [v27 setMaximumFractionDigits:1];
    [v27 setRoundingMode:2];
  }

  else
  {
    [v27 setMinimumIntegerDigits:1];
    [v27 setMaximumIntegerDigits:1];
    [v27 setMinimumFractionDigits:4];
    [v27 setMaximumFractionDigits:4];
  }

  v28 = [v43 objectForKeyedSubscript:v42];
  v29 = [v27 stringFromNumber:v28];

  v30 = [v43 objectForKeyedSubscript:v16];
  v31 = [v27 stringFromNumber:v30];

  validationLabel = self->_validationLabel;
  if (validationLabel)
  {
    [(UILabel *)validationLabel removeFromSuperview];
  }

  v33 = objc_alloc_init(MEMORY[0x277D756B8]);
  v34 = self->_validationLabel;
  self->_validationLabel = v33;

  font = [textField font];
  [(UILabel *)self->_validationLabel setFont:font];

  v36 = MEMORY[0x277CCACA8];
  v37 = DBS_LocalizedStringForFineTune(@"VALIDATION_MESSAGE");
  v38 = [v36 stringWithFormat:v37, v29, v31];
  [(UILabel *)self->_validationLabel setText:v38];

  textColor = [textField textColor];
  [(UILabel *)self->_validationLabel setTextColor:textColor];

  [(UILabel *)self->_validationLabel setHidden:0];
  identifier = [v43 identifier];
  if ([identifier isEqual:@"MEASURED_WHITE_POINT_X"] & 1) != 0 || (objc_msgSend(identifier, "isEqual:", @"MEASURED_WHITE_POINT_Y") & 1) != 0 || (objc_msgSend(identifier, "isEqual:", @"MEASURED_LUMINANCE"))
  {
    v41 = 1;
LABEL_15:
    self->_hideIfValid = v41;
    goto LABEL_16;
  }

  if (([identifier isEqual:@"TARGET_WHITE_POINT_X"] & 1) != 0 || (objc_msgSend(identifier, "isEqual:", @"TARGET_WHITE_POINT_Y") & 1) != 0 || objc_msgSend(identifier, "isEqual:", @"TARGET_LUMINANCE"))
  {
    v41 = 0;
    goto LABEL_15;
  }

LABEL_16:
  [(DBSFineTuneEditTextTableCell *)self addSubview:self->_validationLabel];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v12 = 1;
  [v11 setNumberStyle:1];
  groupingSeparator = [v11 groupingSeparator];
  decimalSeparator = [v11 decimalSeparator];
  text = [fieldCopy text];
  v16 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if (([v16 isEqualToString:decimalSeparator] & 1) == 0)
  {
    v40 = fieldCopy;
    if ([v16 length])
    {
      v17 = [v16 componentsSeparatedByString:groupingSeparator];
      v18 = [v17 count];

      v19 = [v16 stringByReplacingOccurrencesOfString:groupingSeparator withString:&stru_2834977A0];
      specifier = [v11 numberFromString:v19];
      if (!specifier)
      {
        v12 = 0;
LABEL_27:

        fieldCopy = v40;
        goto LABEL_28;
      }

      v21 = v18 - 1;
      if ([v19 containsString:decimalSeparator])
      {
        v37 = v18 - 1;
        v22 = [v16 rangeOfString:decimalSeparator];
        v24 = [v16 substringFromIndex:v22 + v23];
        v38 = [v24 containsString:groupingSeparator];
        v39 = [v19 length];

        v12 = 0;
        if (v39 > 6 || v38 || v37 >= 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12 = 0;
        if ([v19 length] > 4 || v21 > 1)
        {
          goto LABEL_27;
        }
      }

      [specifier doubleValue];
      v25 = v26;
    }

    else
    {
      v25 = 0.0;
    }

    v28 = self->_minValue + -0.000001 < v25 && self->_maxValue + 0.000001 > v25 || [v16 length] == 0;
    self->_valueValid = v28;
    [(DBSFineTuneEditTextTableCell *)self setNeedsLayout];
    [(DBSFineTuneEditTextTableCell *)self layoutIfNeeded];
    v29 = *MEMORY[0x277D3FBF0];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v29));
    v31 = WeakRetained;
    v32 = *MEMORY[0x277D3FBF8];
    if (*(&self->super.super.super.super.super.super.isa + v32))
    {
      v33 = *(&self->super.super.super.super.super.super.isa + v32);
    }

    else
    {
      v33 = 0;
    }

    v34 = [WeakRetained methodForSelector:v33];

    v19 = objc_loadWeakRetained((&self->super.super.super.super.super.super.isa + v29));
    if (*(&self->super.super.super.super.super.super.isa + v32))
    {
      v35 = *(&self->super.super.super.super.super.super.isa + v32);
    }

    else
    {
      v35 = 0;
    }

    specifier = [(PSTableCell *)self specifier];
    v34(v19, v35, v16, specifier);
    v12 = 1;
    goto LABEL_27;
  }

LABEL_28:

  return v12;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = DBSFineTuneEditTextTableCell;
  [(PSEditableTableCell *)&v27 layoutSubviews];
  if (self->_valueValid)
  {
    appearance = [MEMORY[0x277D3FA48] appearance];
    altTextColor = [appearance altTextColor];
    v5 = [(DBSFineTuneEditTextTableCell *)self _accessibilityHigherContrastTintColorForColor:altTextColor];
    [(UILabel *)self->_validationLabel setTextColor:v5];

    hideIfValid = self->_hideIfValid;
  }

  else
  {
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)self->_validationLabel setTextColor:systemRedColor];

    hideIfValid = 0;
  }

  [(UILabel *)self->_validationLabel setHidden:hideIfValid];
  effectiveUserInterfaceLayoutDirection = [(DBSFineTuneEditTextTableCell *)self effectiveUserInterfaceLayoutDirection];
  [(UILabel *)self->_validationLabel frame];
  v10 = v9;
  [(UILabel *)self->_validationLabel sizeThatFits:v11, v12];
  v14 = v13;
  v16 = v15;
  textField = [(PSEditableTableCell *)self textField];
  [textField frame];
  if (effectiveUserInterfaceLayoutDirection)
  {
    v22 = 100.0;
  }

  else
  {
    v18 = CGRectGetMaxX(*&v18) - v14;
    v22 = -100.0;
  }

  v23 = v18 + v22;

  textField2 = [(PSEditableTableCell *)self textField];
  [textField2 frame];
  MidY = CGRectGetMidY(v28);

  v29.origin.x = v23;
  v29.origin.y = v10;
  v29.size.width = v14;
  v29.size.height = v16;
  v26 = MidY - CGRectGetMidY(v29);
  v30.origin.x = v23;
  v30.origin.y = v10;
  v30.size.width = v14;
  v30.size.height = v16;
  v31 = CGRectOffset(v30, 0.0, v26);
  [(UILabel *)self->_validationLabel setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
}

@end