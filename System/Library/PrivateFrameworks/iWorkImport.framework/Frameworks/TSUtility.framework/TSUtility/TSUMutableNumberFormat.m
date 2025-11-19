@interface TSUMutableNumberFormat
- (void)p_copyIVarsFromNumberFormat:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setCustomFormatKey:(id)a3;
- (void)setNegativeStyle:(unsigned __int8)a3;
- (void)setNilValueForKey:(id)a3;
- (void)setPrefixString:(id)a3;
- (void)setSuffixString:(id)a3;
- (void)setUseAccountingStyle:(BOOL)a3;
@end

@implementation TSUMutableNumberFormat

- (void)p_copyIVarsFromNumberFormat:(id)a3
{
  if (a3 == self)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMutableNumberFormat p_copyIVarsFromNumberFormat:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 1133, 0, "It's not safe to copy an object onto itself");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  self->super._valueType = *(a3 + 2);

  self->super._formatString = *(a3 + 6);
  self->super._decimalPlaces = *(a3 + 6);

  self->super._currencyCode = *(a3 + 7);
  self->super._useAccountingStyle = *(a3 + 16);
  self->super._negativeStyle = *(a3 + 14);
  self->super._showThousandsSeparator = *(a3 + 17);
  self->super._fractionAccuracy = *(a3 + 15);
  self->super._formatStringRequiresSuppressionOfMinusSign = *(a3 + 18);
  self->super._useScientificFormattingAutomatically = *(a3 + 19);
  self->super._ignoreDecimalPlacesForZeroValue = *(a3 + 20);

  self->super._prefixString = *(a3 + 12);
  self->super._suffixString = *(a3 + 13);
  self->super._base = *(a3 + 28);
  self->super._basePlaces = *(a3 + 15);
  self->super._baseUseMinusSign = *(a3 + 27);
  self->super._isCustom = *(a3 + 21);
  self->super._customFormatKey = *(a3 + 11);
  self->super._scaleFactor = *(a3 + 5);
  self->super._formatStringContainsTabCharacter = *(a3 + 22);
  self->super._formatContainsSpecialTokens = *(a3 + 23);
  self->super._formatContainsIntegerToken = *(a3 + 24);
  self->super._numberOfHashDecimalPlaceholders = *(a3 + 32);
  self->super._totalNumberOfDecimalPlaceholdersInFormat = *(a3 + 33);
  self->super._requiresFractionReplacement = *(a3 + 25);

  self->super._interstitialStrings = *(a3 + 8);
  self->super._interstitialStringInsertionIndexes = *(a3 + 9);
  self->super._indexFromRightOfLastDigitPlaceholder = *(a3 + 17);
  self->super._isTextFormat = *(a3 + 26);
  self->super._minimumIntegerWidth = *(a3 + 36);
  self->super._decimalWidth = *(a3 + 37);
  self->super._numberOfNonSpaceIntegerPlaceholderDigits = *(a3 + 38);
  self->super._numberOfNonSpaceDecimalPlaceholderDigits = *(a3 + 39);

  self->super._formatName = *(a3 + 10);
}

- (void)setPrefixString:(id)a3
{
  prefixString = self->super._prefixString;
  if (prefixString != a3)
  {

    self->super._prefixString = [a3 copy];
  }
}

- (void)setSuffixString:(id)a3
{
  suffixString = self->super._suffixString;
  if (suffixString != a3)
  {

    self->super._suffixString = [a3 copy];
  }
}

- (void)setCurrencyCode:(id)a3
{
  currencyCode = self->super._currencyCode;
  if (currencyCode != a3)
  {

    self->super._currencyCode = [a3 copy];
  }
}

- (void)setNegativeStyle:(unsigned __int8)a3
{
  [(TSUNumberFormat *)self numberFormatBySettingNegativeStyle:a3];

  MEMORY[0x2821F9670](self, sel_p_copyIVarsFromNumberFormat_);
}

- (void)setUseAccountingStyle:(BOOL)a3
{
  [(TSUNumberFormat *)self numberFormatBySettingUseAccountingStyle:a3];

  MEMORY[0x2821F9670](self, sel_p_copyIVarsFromNumberFormat_);
}

- (void)setNilValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"currencyCode"])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMutableNumberFormat setNilValueForKey:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 1230, 0, "We require a locale to set the currencyCode properly, don't set it to nil.");
    +[TSUAssertionHandler logBacktraceThrottled];
    v6 = [+[TSULocale currentLocale](TSULocale currencyCode];
    v7 = @"currencyCode";
  }

  else if ([a3 isEqualToString:@"prefixString"])
  {
    v6 = &stru_28862C2A0;
    v7 = @"prefixString";
  }

  else
  {
    if (![a3 isEqualToString:@"suffixString"])
    {
      v8.receiver = self;
      v8.super_class = TSUMutableNumberFormat;
      [(TSUMutableNumberFormat *)&v8 setNilValueForKey:a3];
      return;
    }

    v6 = &stru_28862C2A0;
    v7 = @"suffixString";
  }

  [(TSUMutableNumberFormat *)self setValue:v6 forKey:v7];
}

- (void)setCustomFormatKey:(id)a3
{
  customFormatKey = self->super._customFormatKey;
  if (customFormatKey != a3)
  {

    self->super._customFormatKey = a3;
  }
}

@end