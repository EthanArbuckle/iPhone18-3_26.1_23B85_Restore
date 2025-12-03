@interface TSUMutableNumberFormat
- (void)p_copyIVarsFromNumberFormat:(id)format;
- (void)setCurrencyCode:(id)code;
- (void)setCustomFormatKey:(id)key;
- (void)setNegativeStyle:(unsigned __int8)style;
- (void)setNilValueForKey:(id)key;
- (void)setPrefixString:(id)string;
- (void)setSuffixString:(id)string;
- (void)setUseAccountingStyle:(BOOL)style;
@end

@implementation TSUMutableNumberFormat

- (void)p_copyIVarsFromNumberFormat:(id)format
{
  if (format == self)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMutableNumberFormat p_copyIVarsFromNumberFormat:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 1133, 0, "It's not safe to copy an object onto itself");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  self->super._valueType = *(format + 2);

  self->super._formatString = *(format + 6);
  self->super._decimalPlaces = *(format + 6);

  self->super._currencyCode = *(format + 7);
  self->super._useAccountingStyle = *(format + 16);
  self->super._negativeStyle = *(format + 14);
  self->super._showThousandsSeparator = *(format + 17);
  self->super._fractionAccuracy = *(format + 15);
  self->super._formatStringRequiresSuppressionOfMinusSign = *(format + 18);
  self->super._useScientificFormattingAutomatically = *(format + 19);
  self->super._ignoreDecimalPlacesForZeroValue = *(format + 20);

  self->super._prefixString = *(format + 12);
  self->super._suffixString = *(format + 13);
  self->super._base = *(format + 28);
  self->super._basePlaces = *(format + 15);
  self->super._baseUseMinusSign = *(format + 27);
  self->super._isCustom = *(format + 21);
  self->super._customFormatKey = *(format + 11);
  self->super._scaleFactor = *(format + 5);
  self->super._formatStringContainsTabCharacter = *(format + 22);
  self->super._formatContainsSpecialTokens = *(format + 23);
  self->super._formatContainsIntegerToken = *(format + 24);
  self->super._numberOfHashDecimalPlaceholders = *(format + 32);
  self->super._totalNumberOfDecimalPlaceholdersInFormat = *(format + 33);
  self->super._requiresFractionReplacement = *(format + 25);

  self->super._interstitialStrings = *(format + 8);
  self->super._interstitialStringInsertionIndexes = *(format + 9);
  self->super._indexFromRightOfLastDigitPlaceholder = *(format + 17);
  self->super._isTextFormat = *(format + 26);
  self->super._minimumIntegerWidth = *(format + 36);
  self->super._decimalWidth = *(format + 37);
  self->super._numberOfNonSpaceIntegerPlaceholderDigits = *(format + 38);
  self->super._numberOfNonSpaceDecimalPlaceholderDigits = *(format + 39);

  self->super._formatName = *(format + 10);
}

- (void)setPrefixString:(id)string
{
  prefixString = self->super._prefixString;
  if (prefixString != string)
  {

    self->super._prefixString = [string copy];
  }
}

- (void)setSuffixString:(id)string
{
  suffixString = self->super._suffixString;
  if (suffixString != string)
  {

    self->super._suffixString = [string copy];
  }
}

- (void)setCurrencyCode:(id)code
{
  currencyCode = self->super._currencyCode;
  if (currencyCode != code)
  {

    self->super._currencyCode = [code copy];
  }
}

- (void)setNegativeStyle:(unsigned __int8)style
{
  [(TSUNumberFormat *)self numberFormatBySettingNegativeStyle:style];

  MEMORY[0x2821F9670](self, sel_p_copyIVarsFromNumberFormat_);
}

- (void)setUseAccountingStyle:(BOOL)style
{
  [(TSUNumberFormat *)self numberFormatBySettingUseAccountingStyle:style];

  MEMORY[0x2821F9670](self, sel_p_copyIVarsFromNumberFormat_);
}

- (void)setNilValueForKey:(id)key
{
  if ([key isEqualToString:@"currencyCode"])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMutableNumberFormat setNilValueForKey:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 1230, 0, "We require a locale to set the currencyCode properly, don't set it to nil.");
    +[TSUAssertionHandler logBacktraceThrottled];
    currencyCode = [+[TSULocale currentLocale](TSULocale currencyCode];
    v7 = @"currencyCode";
  }

  else if ([key isEqualToString:@"prefixString"])
  {
    currencyCode = &stru_28862C2A0;
    v7 = @"prefixString";
  }

  else
  {
    if (![key isEqualToString:@"suffixString"])
    {
      v8.receiver = self;
      v8.super_class = TSUMutableNumberFormat;
      [(TSUMutableNumberFormat *)&v8 setNilValueForKey:key];
      return;
    }

    currencyCode = &stru_28862C2A0;
    v7 = @"suffixString";
  }

  [(TSUMutableNumberFormat *)self setValue:currencyCode forKey:v7];
}

- (void)setCustomFormatKey:(id)key
{
  customFormatKey = self->super._customFormatKey;
  if (customFormatKey != key)
  {

    self->super._customFormatKey = key;
  }
}

@end