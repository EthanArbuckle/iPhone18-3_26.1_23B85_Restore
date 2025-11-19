@interface TSUMutableNumberFormat
- (void)p_copyIVarsFromNumberFormat:(id)a3;
- (void)setCurrencyCode:(id)a3;
- (void)setNegativeStyle:(int)a3;
- (void)setNilValueForKey:(id)a3;
- (void)setPrefixString:(id)a3;
- (void)setSuffixString:(id)a3;
- (void)setUseAccountingStyle:(BOOL)a3;
- (void)setValueType:(int)a3;
@end

@implementation TSUMutableNumberFormat

- (void)p_copyIVarsFromNumberFormat:(id)a3
{
  if (a3 == self)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUMutableNumberFormat p_copyIVarsFromNumberFormat:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 1562, @"It's not safe to copy an object onto itself"}];
  }

  self->super.mValueType = *(a3 + 2);

  self->super.mFormatString = *(a3 + 2);
  self->super.mDecimalPlaces = *(a3 + 12);

  self->super.mCurrencyCode = *(a3 + 4);
  self->super.mUseAccountingStyle = *(a3 + 40);
  self->super.mNegativeStyle = *(a3 + 11);
  self->super.mShowThousandsSeparator = *(a3 + 48);
  self->super.mFractionAccuracy = *(a3 + 13);
  self->super.mFormatStringRequiresSuppressionOfMinusSign = *(a3 + 56);
  self->super.mUseScientificFormattingAutomatically = *(a3 + 57);
  self->super.mIgnoreDecimalPlacesForZeroValue = *(a3 + 58);

  self->super.mPrefixString = *(a3 + 8);
  self->super.mSuffixString = *(a3 + 9);
  self->super.mBase = *(a3 + 80);
  self->super.mBasePlaces = *(a3 + 41);
  self->super.mBaseUseMinusSign = *(a3 + 84);
  self->super.mIsCustom = *(a3 + 85);
  self->super.mScaleFactor = *(a3 + 11);
  self->super.mFormatStringContainsTabCharacter = *(a3 + 96);
  self->super.mFormatContainsSpecialTokens = *(a3 + 97);
  self->super.mFormatContainsIntegerToken = *(a3 + 98);
  self->super.mNumberOfHashDecimalPlaceholders = *(a3 + 99);
  self->super.mTotalNumberOfDecimalPlaceholdersInFormat = *(a3 + 100);
  self->super.mRequiresFractionReplacement = *(a3 + 101);

  self->super.mInterstitialStrings = *(a3 + 13);
  self->super.mInterstitialStringInsertionIndexes = *(a3 + 14);
  self->super.mIndexFromRightOfLastDigitPlaceholder = *(a3 + 60);
  self->super.mIsTextFormat = *(a3 + 122);
  self->super.mMinimumIntegerWidth = *(a3 + 123);
  self->super.mDecimalWidth = *(a3 + 124);
  self->super.mNumberOfNonSpaceIntegerPlaceholderDigits = *(a3 + 125);
  self->super.mNumberOfNonSpaceDecimalPlaceholderDigits = *(a3 + 126);

  self->super.mFormatName = *(a3 + 16);
}

- (void)setValueType:(int)a3
{
  if (self->super.mValueType == a3)
  {
    return;
  }

  v3 = *&a3;
  if (a3 == 1)
  {
    [(TSUMutableNumberFormat *)self willChangeValueForKey:@"decimalPlaces"];
    [(TSUMutableNumberFormat *)self willChangeValueForKey:@"currencyCode"];
  }

  else if ((a3 - 1) > 1)
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

- (void)setPrefixString:(id)a3
{
  mPrefixString = self->super.mPrefixString;
  if (mPrefixString != a3)
  {

    self->super.mPrefixString = [a3 copy];
  }
}

- (void)setSuffixString:(id)a3
{
  mSuffixString = self->super.mSuffixString;
  if (mSuffixString != a3)
  {

    self->super.mSuffixString = [a3 copy];
  }
}

- (void)setCurrencyCode:(id)a3
{
  mCurrencyCode = self->super.mCurrencyCode;
  if (mCurrencyCode != a3)
  {

    self->super.mCurrencyCode = [a3 copy];
  }
}

- (void)setNegativeStyle:(int)a3
{
  v4 = [(TSUNumberFormat *)self numberFormatBySettingNegativeStyle:*&a3];

  [(TSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setUseAccountingStyle:(BOOL)a3
{
  v4 = [(TSUNumberFormat *)self numberFormatBySettingUseAccountingStyle:a3];

  [(TSUMutableNumberFormat *)self p_copyIVarsFromNumberFormat:v4];
}

- (void)setNilValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"currencyCode"])
  {
    v5 = +[TSUNumberFormatter currentLocaleCurrencyCode];
    v6 = @"currencyCode";
  }

  else if ([a3 isEqualToString:@"prefixString"])
  {
    v5 = &stru_287DDF830;
    v6 = @"prefixString";
  }

  else
  {
    if (![a3 isEqualToString:@"suffixString"])
    {
      v7.receiver = self;
      v7.super_class = TSUMutableNumberFormat;
      [(TSUMutableNumberFormat *)&v7 setNilValueForKey:a3];
      return;
    }

    v5 = &stru_287DDF830;
    v6 = @"suffixString";
  }

  [(TSUMutableNumberFormat *)self setValue:v5 forKey:v6];
}

@end