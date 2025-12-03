@interface PKUINumericSuggestion
+ (id)suggestionWithNumericSuggestion:(id)suggestion;
- (PKUINumericSuggestion)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PKUINumericSuggestion

+ (id)suggestionWithNumericSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  title = [suggestionCopy title];
  value = [suggestionCopy value];
  currencyCode = [suggestionCopy currencyCode];
  v7 = PKMutableNumberFormatterForCurrencyCodeExcludingCurrencySymbols();
  [v7 setUsesGroupingSeparator:0];
  [v7 setAlwaysShowsDecimalSeparator:0];
  [v7 setMinimumFractionDigits:0];
  [v7 setGeneratesDecimalNumbers:1];
  [v7 setPositivePrefix:&stru_1F3BD7330];
  [v7 setPositiveSuffix:&stru_1F3BD7330];
  [v7 setNegativeSuffix:&stru_1F3BD7330];
  pk_isIntegralNumber = [value pk_isIntegralNumber];
  maximumFractionDigits = 0;
  if ((pk_isIntegralNumber & 1) == 0)
  {
    maximumFractionDigits = [v7 maximumFractionDigits];
  }

  [v7 setMinimumFractionDigits:maximumFractionDigits];
  v10 = [v7 stringFromNumber:value];
  v11 = [(UITextSuggestion *)PKUINumericSuggestion textSuggestionWithInputText:v10];
  [v11 setHeaderText:title];
  if (currencyCode)
  {
    v12 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:value currency:currencyCode exponent:0];
    minimalFormattedStringValue = [v12 minimalFormattedStringValue];
    [v11 setDisplayText:minimalFormattedStringValue];
  }

  [v11 setNumericSuggestion:suggestionCopy];

  return v11;
}

- (PKUINumericSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKUINumericSuggestion;
  v5 = [(UITextSuggestion *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numericSuggestion"];
    numericSuggestion = v5->_numericSuggestion;
    v5->_numericSuggestion = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(UITextSuggestion *)+[PKUINumericSuggestion allocWithZone:](PKUINumericSuggestion init];
  v6 = [(PKNumericSuggestion *)self->_numericSuggestion copyWithZone:zone];
  numericSuggestion = v5->_numericSuggestion;
  v5->_numericSuggestion = v6;

  return v5;
}

@end