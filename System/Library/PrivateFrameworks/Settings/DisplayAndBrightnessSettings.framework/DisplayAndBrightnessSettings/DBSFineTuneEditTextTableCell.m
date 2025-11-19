@interface DBSFineTuneEditTextTableCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation DBSFineTuneEditTextTableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = DBSFineTuneEditTextTableCell;
  [(PSEditableTableCell *)&v44 refreshCellContentsWithSpecifier:v4];
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [v5 userInterfaceLayoutDirection] != 1;

  v7 = [(PSEditableTableCell *)self textField];
  [v7 setTextAlignment:2 * v6];
  v8 = [MEMORY[0x277D3FA48] appearance];
  v9 = [v8 altTextColor];
  v10 = [(DBSFineTuneEditTextTableCell *)self _accessibilityHigherContrastTintColorForColor:v9];
  [v7 setTextColor:v10];

  v11 = MEMORY[0x277D74300];
  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v12 pointSize];
  v13 = [v11 monospacedDigitSystemFontOfSize:? weight:?];
  [v7 setFont:v13];

  v42 = *MEMORY[0x277D3FEC0];
  v14 = [v4 objectForKeyedSubscript:?];
  [v14 doubleValue];
  self->_minValue = v15;

  v16 = *MEMORY[0x277D3FEB8];
  v43 = v4;
  v17 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3FEB8]];
  [v17 doubleValue];
  self->_maxValue = v18;

  self->_valueValid = 0;
  v19 = [v7 text];
  v20 = [v19 length];

  if (v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v21 setNumberStyle:1];
    v22 = [v7 text];
    v23 = [v21 numberFromString:v22];
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

  v35 = [v7 font];
  [(UILabel *)self->_validationLabel setFont:v35];

  v36 = MEMORY[0x277CCACA8];
  v37 = DBS_LocalizedStringForFineTune(@"VALIDATION_MESSAGE");
  v38 = [v36 stringWithFormat:v37, v29, v31];
  [(UILabel *)self->_validationLabel setText:v38];

  v39 = [v7 textColor];
  [(UILabel *)self->_validationLabel setTextColor:v39];

  [(UILabel *)self->_validationLabel setHidden:0];
  v40 = [v43 identifier];
  if ([v40 isEqual:@"MEASURED_WHITE_POINT_X"] & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"MEASURED_WHITE_POINT_Y") & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"MEASURED_LUMINANCE"))
  {
    v41 = 1;
LABEL_15:
    self->_hideIfValid = v41;
    goto LABEL_16;
  }

  if (([v40 isEqual:@"TARGET_WHITE_POINT_X"] & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"TARGET_WHITE_POINT_Y") & 1) != 0 || objc_msgSend(v40, "isEqual:", @"TARGET_LUMINANCE"))
  {
    v41 = 0;
    goto LABEL_15;
  }

LABEL_16:
  [(DBSFineTuneEditTextTableCell *)self addSubview:self->_validationLabel];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v12 = 1;
  [v11 setNumberStyle:1];
  v13 = [v11 groupingSeparator];
  v14 = [v11 decimalSeparator];
  v15 = [v9 text];
  v16 = [v15 stringByReplacingCharactersInRange:location withString:{length, v10}];

  if (([v16 isEqualToString:v14] & 1) == 0)
  {
    v40 = v9;
    if ([v16 length])
    {
      v17 = [v16 componentsSeparatedByString:v13];
      v18 = [v17 count];

      v19 = [v16 stringByReplacingOccurrencesOfString:v13 withString:&stru_2834977A0];
      v20 = [v11 numberFromString:v19];
      if (!v20)
      {
        v12 = 0;
LABEL_27:

        v9 = v40;
        goto LABEL_28;
      }

      v21 = v18 - 1;
      if ([v19 containsString:v14])
      {
        v37 = v18 - 1;
        v22 = [v16 rangeOfString:v14];
        v24 = [v16 substringFromIndex:v22 + v23];
        v38 = [v24 containsString:v13];
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

      [v20 doubleValue];
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

    v20 = [(PSTableCell *)self specifier];
    v34(v19, v35, v16, v20);
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
    v3 = [MEMORY[0x277D3FA48] appearance];
    v4 = [v3 altTextColor];
    v5 = [(DBSFineTuneEditTextTableCell *)self _accessibilityHigherContrastTintColorForColor:v4];
    [(UILabel *)self->_validationLabel setTextColor:v5];

    hideIfValid = self->_hideIfValid;
  }

  else
  {
    v7 = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)self->_validationLabel setTextColor:v7];

    hideIfValid = 0;
  }

  [(UILabel *)self->_validationLabel setHidden:hideIfValid];
  v8 = [(DBSFineTuneEditTextTableCell *)self effectiveUserInterfaceLayoutDirection];
  [(UILabel *)self->_validationLabel frame];
  v10 = v9;
  [(UILabel *)self->_validationLabel sizeThatFits:v11, v12];
  v14 = v13;
  v16 = v15;
  v17 = [(PSEditableTableCell *)self textField];
  [v17 frame];
  if (v8)
  {
    v22 = 100.0;
  }

  else
  {
    v18 = CGRectGetMaxX(*&v18) - v14;
    v22 = -100.0;
  }

  v23 = v18 + v22;

  v24 = [(PSEditableTableCell *)self textField];
  [v24 frame];
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