@interface PKTextfieldTableViewSettingsRowCurrencyFormatter
- (BOOL)isEqual:(id)a3;
- (PKTextfieldTableViewSettingsRowCurrencyFormatter)initWithCurrencyCode:(id)a3;
- (id)formattedValueFromInput:(id)a3;
- (id)numberFromInput:(id)a3;
- (id)submissionValueFromFormattedInput:(id)a3;
@end

@implementation PKTextfieldTableViewSettingsRowCurrencyFormatter

- (PKTextfieldTableViewSettingsRowCurrencyFormatter)initWithCurrencyCode:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKTextfieldTableViewSettingsRowCurrencyFormatter;
  v5 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)&v20 init];
  if (v5)
  {
    v6 = [v4 copy];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v6;

    v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    currencyFormatter = v5->_currencyFormatter;
    v5->_currencyFormatter = v9;

    [(NSNumberFormatter *)v5->_currencyFormatter setCurrencyCode:v5->_currencyCode];
    [(NSNumberFormatter *)v5->_currencyFormatter setNumberStyle:2];
    [(NSNumberFormatter *)v5->_currencyFormatter setMinimumFractionDigits:0];
    [(NSNumberFormatter *)v5->_currencyFormatter setLocale:v8];
    v11 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    amountFormatter = v5->_amountFormatter;
    v5->_amountFormatter = v11;

    v13 = v5->_amountFormatter;
    v14 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(NSNumberFormatter *)v13 setMinimum:v14];

    [(NSNumberFormatter *)v5->_amountFormatter setLocale:v8];
    v15 = MEMORY[0x1E695DFD8];
    v16 = [(NSNumberFormatter *)v5->_currencyFormatter groupingSeparator];
    v17 = [(NSNumberFormatter *)v5->_currencyFormatter currencySymbol];
    v18 = [v15 setWithObjects:{v16, v17, @" ", @" ", 0}];

    [(PKTextFieldTableViewSettingsRowFormatter *)v5 setFormatPaddingCharacters:v18];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (PKEqualObjects())
    {
      v9.receiver = self;
      v9.super_class = PKTextfieldTableViewSettingsRowCurrencyFormatter;
      v7 = [(PKTextFieldTableViewSettingsRowFormatter *)&v9 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)formattedValueFromInput:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(PKTextfieldTableViewSettingsRowCurrencyFormatter *)self numberFromInput:v4];
    v6 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:v5];

    v4 = v6;
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)numberFromInput:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = [(NSNumberFormatter *)self->_currencyFormatter groupingSeparator];
    v8 = [v6 stringByReplacingOccurrencesOfString:v7 withString:&stru_1F3BD7330];

    v9 = [(NSNumberFormatter *)self->_currencyFormatter currencySymbol];
    v4 = [v8 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F3BD7330];

    v10 = [(NSNumberFormatter *)self->_amountFormatter numberFromString:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)submissionValueFromFormattedInput:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKTextfieldTableViewSettingsRowCurrencyFormatter;
  v4 = [(PKTextFieldTableViewSettingsRowFormatter *)&v8 submissionValueFromFormattedInput:a3];
  v5 = v4;
  if (self->_currencyFormatter)
  {
    v6 = [v4 stringByApplyingTransform:*MEMORY[0x1E695DA50] reverse:0];

    v5 = v6;
  }

  return v5;
}

@end