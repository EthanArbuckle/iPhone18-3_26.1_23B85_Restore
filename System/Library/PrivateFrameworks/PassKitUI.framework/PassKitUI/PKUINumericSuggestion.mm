@interface PKUINumericSuggestion
+ (id)suggestionWithNumericSuggestion:(id)a3;
- (PKUINumericSuggestion)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKUINumericSuggestion

+ (id)suggestionWithNumericSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 value];
  v6 = [v3 currencyCode];
  v7 = PKMutableNumberFormatterForCurrencyCodeExcludingCurrencySymbols();
  [v7 setUsesGroupingSeparator:0];
  [v7 setAlwaysShowsDecimalSeparator:0];
  [v7 setMinimumFractionDigits:0];
  [v7 setGeneratesDecimalNumbers:1];
  [v7 setPositivePrefix:&stru_1F3BD7330];
  [v7 setPositiveSuffix:&stru_1F3BD7330];
  [v7 setNegativeSuffix:&stru_1F3BD7330];
  v8 = [v5 pk_isIntegralNumber];
  v9 = 0;
  if ((v8 & 1) == 0)
  {
    v9 = [v7 maximumFractionDigits];
  }

  [v7 setMinimumFractionDigits:v9];
  v10 = [v7 stringFromNumber:v5];
  v11 = [(UITextSuggestion *)PKUINumericSuggestion textSuggestionWithInputText:v10];
  [v11 setHeaderText:v4];
  if (v6)
  {
    v12 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v5 currency:v6 exponent:0];
    v13 = [v12 minimalFormattedStringValue];
    [v11 setDisplayText:v13];
  }

  [v11 setNumericSuggestion:v3];

  return v11;
}

- (PKUINumericSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKUINumericSuggestion;
  v5 = [(UITextSuggestion *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numericSuggestion"];
    numericSuggestion = v5->_numericSuggestion;
    v5->_numericSuggestion = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(UITextSuggestion *)+[PKUINumericSuggestion allocWithZone:](PKUINumericSuggestion init];
  v6 = [(PKNumericSuggestion *)self->_numericSuggestion copyWithZone:a3];
  numericSuggestion = v5->_numericSuggestion;
  v5->_numericSuggestion = v6;

  return v5;
}

@end