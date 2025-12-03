@interface TSUMutableNumberFormat
- (void)p_copyIVarsFromNumberFormat:(id)format;
- (void)setCurrencyCode:(id)code;
- (void)setNegativeStyle:(int)style;
- (void)setNilValueForKey:(id)key;
- (void)setPrefixString:(id)string;
- (void)setSuffixString:(id)string;
- (void)setUseAccountingStyle:(BOOL)style;
- (void)setValueType:(int)type;
@end

@implementation TSUMutableNumberFormat

- (void)p_copyIVarsFromNumberFormat:(id)format
{
  if (format == self)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMutableNumberFormat p_copyIVarsFromNumberFormat:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 1562, @"It's not safe to copy an object onto itself"}];
  }

  self->super.mValueType = *(format + 2);

  self->super.mFormatString = *(format + 2);
  self->super.mDecimalPlaces = *(format + 12);

  self->super.mCurrencyCode = *(format + 4);
  self->super.mUseAccountingStyle = *(format + 40);
  self->super.mNegativeStyle = *(format + 11);
  self->super.mShowThousandsSeparator = *(format + 48);
  self->super.mFractionAccuracy = *(format + 13);
  self->super.mFormatStringRequiresSuppressionOfMinusSign = *(format + 56);
  self->super.mUseScientificFormattingAutomatically = *(format + 57);
  self->super.mIgnoreDecimalPlacesForZeroValue = *(format + 58);

  self->super.mPrefixString = *(format + 8);
  self->super.mSuffixString = *(format + 9);
  self->super.mBase = *(format + 80);
  self->super.mBasePlaces = *(format + 41);
  self->super.mBaseUseMinusSign = *(format + 84);
  self->super.mIsCustom = *(format + 85);
  self->super.mScaleFactor = *(format + 11);
  self->super.mFormatStringContainsTabCharacter = *(format + 96);
  self->super.mFormatContainsSpecialTokens = *(format + 97);
  self->super.mFormatContainsIntegerToken = *(format + 98);
  self->super.mNumberOfHashDecimalPlaceholders = *(format + 99);
  self->super.mTotalNumberOfDecimalPlaceholdersInFormat = *(format + 100);
  self->super.mRequiresFractionReplacement = *(format + 101);

  self->super.mInterstitialStrings = *(format + 13);
  self->super.mInterstitialStringInsertionIndexes = *(format + 14);
  self->super.mIndexFromRightOfLastDigitPlaceholder = *(format + 60);
  self->super.mIsTextFormat = *(format + 122);
  self->super.mMinimumIntegerWidth = *(format + 123);
  self->super.mDecimalWidth = *(format + 124);
  self->super.mNumberOfNonSpaceIntegerPlaceholderDigits = *(format + 125);
  self->super.mNumberOfNonSpaceDecimalPlaceholderDigits = *(format + 126);

  self->super.mFormatName = *(format + 16);
}

- (void)setValueType:(int)type
{
  if (self->super.mValueType == type)
  {
    return;
  }

  v3 = *&type;
  if (type == 1)
  {
    [(TSUMutableNumberFormat *)self willChangeValueForKey:@"decimalPlaces"];
    [(TSUMutableNumberFormat *)self willChangeValueForKey:@"currencyCode"];
  }

  else if ((type - 1) > 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  [(TSUMutableNumberFormat *)self willChangeValueForKey:@"showThousandsSeparator"];
  v5 = 1;
LABEL_7:
  [(TSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:[(TSUNumberFormat *)self numberFormatBySettingValueType:v3]];
  if (v3 == 1)
  {
    [(TSUMutableNumberFormat *)self didChangeValueForKey:@"decimalPlaces"];
    [(TSUMutableNumberFormat *)self didChangeValueForKey:@"currencyCode"];
  }

  if (v5)
  {

    [(TSUMutableNumberFormat *)self didChangeValueForKey:@"showThousandsSeparator"];
  }
}

- (void)setPrefixString:(id)string
{
  mPrefixString = self->super.mPrefixString;
  if (mPrefixString != string)
  {

    self->super.mPrefixString = [string copy];
  }
}

- (void)setSuffixString:(id)string
{
  mSuffixString = self->super.mSuffixString;
  if (mSuffixString != string)
  {

    self->super.mSuffixString = [string copy];
  }
}

- (void)setCurrencyCode:(id)code
{
  mCurrencyCode = self->super.mCurrencyCode;
  if (mCurrencyCode != code)
  {

    self->super.mCurrencyCode = [code copy];
  }
}

- (void)setNegativeStyle:(int)style
{
  v4 = [(TSUNumberFormat *)self numberFormatBySettingNegativeStyle:*&style];

  [(TSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setUseAccountingStyle:(BOOL)style
{
  v4 = [(TSUNumberFormat *)self numberFormatBySettingUseAccountingStyle:style];

  [(TSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setNilValueForKey:(id)key
{
  if ([key isEqualToString:@"currencyCode"])
  {
    v5 = +[TSUNumberFormatter currentLocaleCurrencyCode];
    v6 = @"currencyCode";
  }

  else if ([key isEqualToString:@"prefixString"])
  {
    v5 = &stru_287DDF830;
    v6 = @"prefixString";
  }

  else
  {
    if (![key isEqualToString:@"suffixString"])
    {
      v7.receiver = self;
      v7.super_class = TSUMutableNumberFormat;
      [(TSUMutableNumberFormat *)&v7 setNilValueForKey:key];
      return;
    }

    v5 = &stru_287DDF830;
    v6 = @"suffixString";
  }

  [(TSUMutableNumberFormat *)self setValue:v5 forKey:v6];
}

@end