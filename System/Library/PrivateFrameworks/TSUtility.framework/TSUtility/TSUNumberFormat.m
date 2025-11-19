@interface TSUNumberFormat
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10;
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13;
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 formatName:(id)a18;
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 scaleFactor:(double)a11 isCustom:(BOOL)a12 formatName:(id)a13;
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 suffixString:(id)a11;
- (BOOL)customFormatShouldAutoInsertPercentSymbol;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)usesTabs;
- (NSString)description;
- (TSUNumberFormat)init;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 interstitialStrings:(id)a18 interstitialStringInsertionIndexes:(id)a19 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a20 minimumIntegerWidth:(unsigned __int8)a21 decimalWidth:(unsigned __int8)a22 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a23 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a24 isTextFormat:(BOOL)a25 formatName:(id)a26;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 suffixString:(id)a11;
- (id)chartLabelStringFromDouble:(double)a3;
- (id)chartLabelStringFromDouble:(double)a3 forceSuppressMinusSign:(BOOL)a4;
- (id)chartLabelStringNofixFromDouble:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initCustomFormatWithFormatString:(id)a3 currencyCode:(id)a4 showThousandsSeparator:(BOOL)a5 fractionAccuracy:(int)a6 scaleFactor:(double)a7 interstitialStrings:(id)a8 interstitialStringInsertionIndexes:(id)a9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a10 minimumIntegerWidth:(unsigned __int8)a11 decimalWidth:(unsigned __int8)a12 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a13 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a14 isTextFormat:(BOOL)a15 formatName:(id)a16;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)numberFormatByIncrementingDecimalPlaces:(signed __int16)a3;
- (id)numberFormatBySettingBase:(unsigned __int8)a3;
- (id)numberFormatBySettingBasePlaces:(unsigned __int16)a3;
- (id)numberFormatBySettingBaseRepresentNegativeWithMinus:(BOOL)a3;
- (id)numberFormatBySettingCurrencyCode:(id)a3;
- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)a3;
- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)a3 andNegativeStyle:(int)a4;
- (id)numberFormatBySettingFractionAccuracy:(int)a3;
- (id)numberFormatBySettingNegativeStyle:(int)a3;
- (id)numberFormatBySettingPrefixString:(id)a3;
- (id)numberFormatBySettingShowThousandsSeparator:(BOOL)a3;
- (id)numberFormatBySettingSuffixString:(id)a3;
- (id)numberFormatBySettingUseAccountingStyle:(BOOL)a3;
- (id)numberFormatBySettingValueType:(int)a3;
- (id)stringFromDouble:(double)a3;
- (id)stringFromDouble:(double)a3 decimalPlaces:(unsigned __int16)a4 minimumDecimalPlaces:(unsigned __int16)a5 forceSuppressMinusSign:(BOOL)a6;
- (id)stringFromDouble:(double)a3 forceSuppressMinusSign:(BOOL)a4;
- (id)stringFromDouble:(double)a3 minimumDecimalPlaces:(unsigned __int16)a4;
- (id)stringFromDouble:(double)a3 minimumDecimalPlaces:(unsigned __int16)a4 forceSuppressMinusSign:(BOOL)a5;
- (id)stringFromString:(id)a3;
- (unint64_t)hash;
- (unsigned)decimalPlaces;
- (void)dealloc;
- (void)setFormatName:(id)a3;
@end

@implementation TSUNumberFormat

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10
{
  HIDWORD(v12) = a10;
  LOBYTE(v12) = a9;
  v10 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:*&a8 showThousandsSeparator:v12 fractionAccuracy:?];

  return v10;
}

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 suffixString:(id)a11
{
  HIDWORD(v13) = a10;
  LOBYTE(v13) = a9;
  v11 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:*&a8 showThousandsSeparator:v13 fractionAccuracy:a11 suffixString:?];

  return v11;
}

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13
{
  BYTE4(v16) = a13;
  WORD1(v16) = a12;
  LOBYTE(v16) = a11;
  HIDWORD(v15) = a10;
  LOBYTE(v15) = a9;
  v13 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:a8 showThousandsSeparator:v15 fractionAccuracy:v16 base:? basePlaces:? baseUseMinusSign:?];

  return v13;
}

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 scaleFactor:(double)a11 isCustom:(BOOL)a12 formatName:(id)a13
{
  BYTE6(v17) = 0;
  *(&v17 + 2) = 0;
  LOWORD(v17) = 0;
  BYTE5(v16) = a12;
  BYTE4(v16) = 1;
  WORD1(v16) = 0;
  LOBYTE(v16) = 10;
  HIDWORD(v15) = a10;
  LOBYTE(v15) = a9;
  v13 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:*&a8 showThousandsSeparator:a11 fractionAccuracy:v15 prefixString:0 suffixString:0 scaleFactor:v16 base:0 basePlaces:0 baseUseMinusSign:v17 isCustom:a13 interstitialStrings:? interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];

  return v13;
}

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 formatName:(id)a18
{
  BYTE6(v22) = 0;
  *(&v22 + 2) = 0;
  LOWORD(v22) = 0;
  BYTE5(v21) = a17;
  BYTE4(v21) = a16;
  WORD1(v21) = a15;
  LOBYTE(v21) = a14;
  HIDWORD(v20) = a10;
  LOBYTE(v20) = a9;
  v18 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:a8 showThousandsSeparator:a13 fractionAccuracy:v20 prefixString:a11 suffixString:a12 scaleFactor:v21 base:0 basePlaces:0 baseUseMinusSign:v22 isCustom:a18 interstitialStrings:? interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];

  return v18;
}

- (TSUNumberFormat)init
{
  HIDWORD(v3) = -1;
  LOBYTE(v3) = 1;
  return [(TSUNumberFormat *)self initWithValueType:0 formatString:0 decimalPlaces:2 currencyCode:0 useAccountingStyle:0 negativeStyle:0 showThousandsSeparator:v3 fractionAccuracy:?];
}

- (id)initCustomFormatWithFormatString:(id)a3 currencyCode:(id)a4 showThousandsSeparator:(BOOL)a5 fractionAccuracy:(int)a6 scaleFactor:(double)a7 interstitialStrings:(id)a8 interstitialStringInsertionIndexes:(id)a9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a10 minimumIntegerWidth:(unsigned __int8)a11 decimalWidth:(unsigned __int8)a12 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a13 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a14 isTextFormat:(BOOL)a15 formatName:(id)a16
{
  *(&v19 + 5) = __PAIR16__(a15, a14);
  *(&v19 + 3) = __PAIR16__(a13, a12);
  BYTE2(v19) = a11;
  LOWORD(v19) = a10;
  *(&v18 + 2) = 16842752;
  LOBYTE(v18) = 10;
  HIDWORD(v17) = a6;
  LOBYTE(v17) = a5;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" formatString:0 decimalPlaces:a3 currencyCode:0 useAccountingStyle:a4 negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:a7 prefixString:v17 suffixString:0 scaleFactor:0 base:v18 basePlaces:a8 baseUseMinusSign:a9 isCustom:v19 interstitialStrings:a16 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10
{
  BYTE4(v12) = 1;
  WORD1(v12) = 0;
  LOBYTE(v12) = 10;
  HIDWORD(v11) = a10;
  LOBYTE(v11) = a9;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:*&a8 fractionAccuracy:v11 base:v12 basePlaces:? baseUseMinusSign:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = 0;
  BYTE4(v15) = a13;
  WORD1(v15) = a12;
  LOBYTE(v15) = a11;
  HIDWORD(v14) = a10;
  LOBYTE(v14) = a9;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:*&a8 fractionAccuracy:1.0 prefixString:v14 suffixString:0 scaleFactor:0 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 suffixString:(id)a11
{
  BYTE6(v14) = 0;
  *(&v14 + 2) = 0;
  LOWORD(v14) = 0;
  *(&v13 + 2) = 0x10000;
  LOBYTE(v13) = 10;
  HIDWORD(v12) = a10;
  LOBYTE(v12) = a9;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:*&a8 fractionAccuracy:1.0 prefixString:v12 suffixString:0 scaleFactor:a11 base:v13 basePlaces:0 baseUseMinusSign:0 isCustom:v14 interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(int)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(int)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 interstitialStrings:(id)a18 interstitialStringInsertionIndexes:(id)a19 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a20 minimumIntegerWidth:(unsigned __int8)a21 decimalWidth:(unsigned __int8)a22 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a23 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a24 isTextFormat:(BOOL)a25 formatName:(id)a26
{
  v28 = a7;
  v48.receiver = self;
  v31 = *&a3;
  v48.super_class = TSUNumberFormat;
  v32 = [(TSUNumberFormat *)&v48 init];
  v33 = v32;
  if (v32)
  {
    v32->mFormatStringContainsTabCharacter = 0;
    v46 = v28;
    if (a17)
    {
      if (!a4)
      {
        v34 = +[TSUAssertionHandler currentHandler];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:]"];
        [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 376, @"Passed a nil format string while creating a custom format!"}];
      }

      v33->mFormatString = a4;
      v33->mFormatStringRequiresSuppressionOfMinusSign = 0;
      v36 = [a4 length];
      if (v36)
      {
        v37 = v36;
        for (i = 0; i != v37; ++i)
        {
          v39 = [a4 characterAtIndex:i];
          p_mFormatStringContainsTabCharacter = &v33->mFormatStringContainsTabCharacter;
          if (v39 != 9)
          {
            p_mFormatStringContainsTabCharacter = &v33->mRequiresFractionReplacement;
            if (v39 != TSUCustomNumberFormatFractionReplacementCharacter)
            {
              continue;
            }
          }

          *p_mFormatStringContainsTabCharacter = 1;
        }
      }
    }

    else
    {
      if (v28)
      {
        v41 = 2;
      }

      else
      {
        v41 = a8;
      }

      if (v31 != 1)
      {
        v41 = a8;
      }

      if (v31 == 3)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      if (a4)
      {
        v43 = [TSUNumberFormatter formatString:a4 transformedForNegativeStyle:v42];
      }

      else
      {
        v43 = [TSUNumberFormatter defaultFormatStringForValueType:v31 negativeStyle:v42];
      }

      v33->mFormatString = v43;
      v33->mFormatStringRequiresSuppressionOfMinusSign = a8 == 1;
    }

    if (a6)
    {
      v44 = a6;
    }

    else
    {
      v44 = +[TSUNumberFormatter currentLocaleCurrencyCode];
    }

    v33->mCurrencyCode = v44;
    v33->mValueType = v31;
    v33->mDecimalPlaces = a5;
    v33->mNegativeStyle = a8;
    v33->mShowThousandsSeparator = a9;
    v33->mUseAccountingStyle = v46;
    v33->mFractionAccuracy = a10;
    v33->mScaleFactor = a13;
    v33->mIsCustom = a17;
    v33->mInterstitialStrings = a18;
    v33->mInterstitialStringInsertionIndexes = a19;
    v33->mIsTextFormat = a25;
    v33->mIndexFromRightOfLastDigitPlaceholder = a20;
    v33->mMinimumIntegerWidth = a21;
    v33->mDecimalWidth = a22;
    v33->mNumberOfNonSpaceIntegerPlaceholderDigits = a23;
    v33->mNumberOfNonSpaceDecimalPlaceholderDigits = a24;
    v33->mFormatName = a26;
    v33->mBase = a14;
    v33->mBasePlaces = a15;
    v33->mBaseUseMinusSign = a16;
    v33->mSuffixString = [a12 copy];
    v33->mPrefixString = [a11 copy];
    if (a17)
    {
      v33->mFormatContainsSpecialTokens = 0;
    }
  }

  return v33;
}

- (id)numberFormatBySettingValueType:(int)a3
{
  v3 = *&a3;
  v5 = [(TSUNumberFormat *)self valueType];
  if ((v3 - 1) <= 1 && v5 == v3)
  {
    v6 = [(TSUNumberFormat *)self copy];

    return v6;
  }

  else
  {
    v8 = [(TSUNumberFormat *)self decimalPlaces];
    v9 = [(TSUNumberFormat *)self currencyCode];
    if (v3 == 1)
    {
      v8 = +[TSUNumberFormatter defaultDecimalPlacesForCurrencyCode:](TSUNumberFormatter, "defaultDecimalPlacesForCurrencyCode:", +[TSUNumberFormatter currentLocaleCurrencyCode]);
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    v11 = ((v3 - 1) < 2) | [(TSUNumberFormat *)self showThousandsSeparator];
    v12 = objc_opt_class();
    v13 = [(TSUNumberFormat *)self usesAccountingStyle];
    v14 = [(TSUNumberFormat *)self negativeStyle];
    v15 = [(TSUNumberFormat *)self fractionAccuracy];
    BYTE5(v17) = 0;
    BYTE4(v17) = self->mBaseUseMinusSign;
    WORD1(v17) = self->mBasePlaces;
    LOBYTE(v17) = self->mBase;
    HIDWORD(v16) = v15;
    LOBYTE(v16) = v11 & 1;
    return [v12 numberFormatWithValueType:v3 formatString:0 decimalPlaces:v8 currencyCode:v10 useAccountingStyle:v13 negativeStyle:v14 showThousandsSeparator:1.0 fractionAccuracy:v16 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v17 base:0 basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
  }
}

- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self currencyCode];
  v9 = [(TSUNumberFormat *)self usesAccountingStyle];
  v10 = [(TSUNumberFormat *)self negativeStyle];
  v11 = [(TSUNumberFormat *)self showThousandsSeparator];
  v12 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v3 currencyCode:v8 useAccountingStyle:v9 negativeStyle:v10 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingPrefixString:(id)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  v13 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = v13;
  LOBYTE(v15) = v12;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:a3 suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingSuffixString:(id)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  v13 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = v13;
  LOBYTE(v15) = v12;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:a3 scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatByIncrementingDecimalPlaces:(signed __int16)a3
{
  v3 = a3;
  v5 = [(TSUNumberFormat *)self decimalPlaces];
  if ((v3 & 0x80000000) == 0 || (v6 = 0, -v3 <= v5))
  {
    v6 = v5 + v3;
  }

  if (v6 >= kTSUNumberFormatUserMaxNumberOfDecimalPlaces)
  {
    v7 = kTSUNumberFormatUserMaxNumberOfDecimalPlaces;
  }

  else
  {
    v7 = v6;
  }

  v8 = objc_opt_class();
  v9 = [(TSUNumberFormat *)self valueType];
  v10 = [(TSUNumberFormat *)self formatString];
  v11 = [(TSUNumberFormat *)self currencyCode];
  v12 = [(TSUNumberFormat *)self usesAccountingStyle];
  v13 = [(TSUNumberFormat *)self negativeStyle];
  v14 = [(TSUNumberFormat *)self showThousandsSeparator];
  v15 = [(TSUNumberFormat *)self fractionAccuracy];
  BYTE4(v18) = self->mBaseUseMinusSign;
  WORD1(v18) = self->mBasePlaces;
  LOBYTE(v18) = self->mBase;
  HIDWORD(v17) = v15;
  LOBYTE(v17) = v14;
  return [v8 numberFormatWithValueType:v9 formatString:v10 decimalPlaces:v7 currencyCode:v11 useAccountingStyle:v12 negativeStyle:v13 showThousandsSeparator:v17 fractionAccuracy:v18 base:? basePlaces:? baseUseMinusSign:?];
}

- (id)numberFormatBySettingCurrencyCode:(id)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self usesAccountingStyle];
  v10 = [(TSUNumberFormat *)self negativeStyle];
  v11 = [(TSUNumberFormat *)self showThousandsSeparator];
  v12 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:a3 useAccountingStyle:v9 negativeStyle:v10 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingNegativeStyle:(int)a3
{
  v3 = *&a3;
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self showThousandsSeparator];
  v12 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v3 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)a3 andNegativeStyle:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v7 = objc_opt_class();
  v8 = [(TSUNumberFormat *)self valueType];
  v9 = [(TSUNumberFormat *)self formatString];
  v10 = [(TSUNumberFormat *)self currencyCode];
  v11 = [(TSUNumberFormat *)self usesAccountingStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  v13 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = v13;
  LOBYTE(v15) = v12;
  return [v7 numberFormatWithValueType:v8 formatString:v9 decimalPlaces:v5 currencyCode:v10 useAccountingStyle:v11 negativeStyle:v4 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingShowThousandsSeparator:(BOOL)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = a3;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingFractionAccuracy:(int)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = a3;
  LOBYTE(v14) = v12;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingUseAccountingStyle:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self negativeStyle];
  v11 = [(TSUNumberFormat *)self showThousandsSeparator];
  v12 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v3 negativeStyle:v10 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingBase:(unsigned __int8)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  v13 = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = a3;
  HIDWORD(v15) = v13;
  LOBYTE(v15) = v12;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingBasePlaces:(unsigned __int16)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  v13 = [(TSUNumberFormat *)self fractionAccuracy];
  WORD2(v16) = *&self->mBaseUseMinusSign;
  WORD1(v16) = a3;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = v13;
  LOBYTE(v15) = v12;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingBaseRepresentNegativeWithMinus:(BOOL)a3
{
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self negativeStyle];
  v12 = [(TSUNumberFormat *)self showThousandsSeparator];
  v13 = [(TSUNumberFormat *)self fractionAccuracy];
  BYTE5(v16) = self->mIsCustom;
  BYTE4(v16) = a3;
  WORD1(v16) = self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = v13;
  LOBYTE(v15) = v12;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v11 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (void)dealloc
{
  self->mFormatString = 0;

  self->mCurrencyCode = 0;
  self->mInterstitialStrings = 0;

  self->mInterstitialStringInsertionIndexes = 0;
  self->mFormatName = 0;

  self->mPrefixString = 0;
  self->mSuffixString = 0;
  v3.receiver = self;
  v3.super_class = TSUNumberFormat;
  [(TSUNumberFormat *)&v3 dealloc];
}

- (void)setFormatName:(id)a3
{
  v5 = a3;

  self->mFormatName = a3;
}

- (unsigned)decimalPlaces
{
  if (self->mDecimalPlaces == kTSUNumberFormatInvalidDecimalPlaces)
  {
    return 0;
  }

  else
  {
    return self->mDecimalPlaces;
  }
}

- (BOOL)customFormatShouldAutoInsertPercentSymbol
{
  if (!self->mIsCustom)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat customFormatShouldAutoInsertPercentSymbol]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 908, @"not a custom format!"}];
  }

  [(TSUNumberFormat *)self scaleFactor];
  return v5 == 100.0;
}

- (BOOL)usesTabs
{
  if (self->mFormatStringContainsTabCharacter)
  {
    return 1;
  }

  else
  {
    return self->mValueType == 1 && self->mUseAccountingStyle;
  }
}

- (id)chartLabelStringNofixFromDouble:(double)a3
{
  v5 = [(TSUNumberFormat *)self decimalPlaces];
  if (v5 == kTSUNumberFormatterDecimalPlacesAsManyAsNecessary)
  {

    return [(TSUNumberFormat *)self stringFromDouble:3 decimalPlaces:0 minimumDecimalPlaces:0 forceSuppressMinusSign:a3];
  }

  else
  {

    return [(TSUNumberFormat *)self stringFromDouble:0 forceSuppressMinusSign:a3];
  }
}

- (id)chartLabelStringFromDouble:(double)a3
{
  v5 = [(TSUNumberFormat *)self decimalPlaces];
  if (v5 == kTSUNumberFormatterDecimalPlacesAsManyAsNecessary)
  {
    v6 = [(TSUNumberFormat *)self stringFromDouble:3 decimalPlaces:0 minimumDecimalPlaces:0 forceSuppressMinusSign:a3];
  }

  else
  {
    v6 = [(TSUNumberFormat *)self stringFromDouble:0 forceSuppressMinusSign:a3];
  }

  v7 = v6;
  if (self->mPrefixString && (v8 = [MEMORY[0x277CCACA8] stringWithString:?]) != 0)
  {
    result = [v8 stringByAppendingString:v7];
  }

  else
  {
    result = [MEMORY[0x277CCACA8] stringWithString:v7];
  }

  if (self->mSuffixString)
  {

    return [result stringByAppendingString:?];
  }

  return result;
}

- (id)chartLabelStringFromDouble:(double)a3 forceSuppressMinusSign:(BOOL)a4
{
  v4 = a4;
  v7 = [(TSUNumberFormat *)self decimalPlaces];
  if (v7 == kTSUNumberFormatterDecimalPlacesAsManyAsNecessary)
  {
    v8 = [(TSUNumberFormat *)self stringFromDouble:3 decimalPlaces:0 minimumDecimalPlaces:v4 forceSuppressMinusSign:a3];
  }

  else
  {
    v8 = [(TSUNumberFormat *)self stringFromDouble:v4 forceSuppressMinusSign:a3];
  }

  v9 = v8;
  if (self->mPrefixString && (v10 = [MEMORY[0x277CCACA8] stringWithString:?]) != 0)
  {
    result = [v10 stringByAppendingString:v9];
  }

  else
  {
    result = [MEMORY[0x277CCACA8] stringWithString:v9];
  }

  if (self->mSuffixString)
  {

    return [result stringByAppendingString:?];
  }

  return result;
}

- (id)stringFromDouble:(double)a3 forceSuppressMinusSign:(BOOL)a4
{
  [(TSUNumberFormat *)self decimalPlaces];

  return [TSUNumberFormat stringFromDouble:"stringFromDouble:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" decimalPlaces:a3 minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)a3
{
  [(TSUNumberFormat *)self decimalPlaces];

  return [TSUNumberFormat stringFromDouble:"stringFromDouble:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" decimalPlaces:a3 minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)a3 minimumDecimalPlaces:(unsigned __int16)a4 forceSuppressMinusSign:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(TSUNumberFormat *)self decimalPlaces];

  return [(TSUNumberFormat *)self stringFromDouble:v9 decimalPlaces:v6 minimumDecimalPlaces:v5 forceSuppressMinusSign:a3];
}

- (id)stringFromDouble:(double)a3 minimumDecimalPlaces:(unsigned __int16)a4
{
  v4 = a4;
  v7 = [(TSUNumberFormat *)self decimalPlaces];

  return [(TSUNumberFormat *)self stringFromDouble:v7 decimalPlaces:v4 minimumDecimalPlaces:0 forceSuppressMinusSign:a3];
}

- (id)stringFromDouble:(double)a3 decimalPlaces:(unsigned __int16)a4 minimumDecimalPlaces:(unsigned __int16)a5 forceSuppressMinusSign:(BOOL)a6
{
  v18 = a6;
  mValueType = self->mValueType;
  v16 = [(TSUNumberFormat *)self formatString];
  v14 = [(TSUNumberFormat *)self currencyCode];
  v12 = [(TSUNumberFormat *)self hasValidDecimalPlaces];
  HIBYTE(v11) = self->mRequiresFractionReplacement;
  LOBYTE(v11) = self->mFormatContainsIntegerToken;
  HIBYTE(v10) = self->mFormatContainsSpecialTokens;
  LOBYTE(v10) = self->mIsCustom;
  HIWORD(v9) = self->mIndexFromRightOfLastDigitPlaceholder;
  WORD2(v9) = *&self->mNumberOfHashDecimalPlaceholders;
  LODWORD(v9) = *&self->mMinimumIntegerWidth;
  return TSUNumberFormatStringFromDouble(mValueType, a4, a5, v18, v16, v14, v12, self->mInterstitialStrings, a3, self->mScaleFactor, self->mInterstitialStringInsertionIndexes, v9, self->mFormatStringRequiresSuppressionOfMinusSign, self->mIsTextFormat, v10, v11, [(TSUNumberFormat *)self showThousandsSeparator], self->mUseAccountingStyle, *&self->mUseScientificFormattingAutomatically, self->mBase, self->mBasePlaces, self->mBaseUseMinusSign, self->mFractionAccuracy);
}

- (id)stringFromString:(id)a3
{
  if (!self->mIsTextFormat)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat stringFromString:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 1076, @"Attempt to generate a string from a string with a non-text number format!"}];
  }

  v7 = [MEMORY[0x277CCAB68] stringWithString:self->mFormatString];
  [v7 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), a3, 0, 0, objc_msgSend(v7, "length")}];
  return v7;
}

- (BOOL)isEquivalent:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  mValueType = self->mValueType;
  if (mValueType != *(a3 + 2))
  {
    goto LABEL_26;
  }

  if (mValueType > 2)
  {
    switch(mValueType)
    {
      case 3:
        mDecimalPlaces = self->mDecimalPlaces;
        v7 = *(a3 + 12);
        goto LABEL_29;
      case 4:
        mDecimalPlaces = self->mFractionAccuracy;
        v7 = *(a3 + 13);
        goto LABEL_29;
      case 5:
        if (self->mBase == *(a3 + 80) && self->mBasePlaces == *(a3 + 41))
        {
          mDecimalPlaces = self->mBaseUseMinusSign;
          v7 = *(a3 + 84);
          goto LABEL_29;
        }

LABEL_26:
        LOBYTE(v8) = 0;
        return v8;
    }

LABEL_17:

    LOBYTE(v8) = [(TSUNumberFormat *)self isEqual:a3];
    return v8;
  }

  if (!mValueType)
  {
LABEL_7:
    if (self->mDecimalPlaces == *(a3 + 12) && self->mNegativeStyle == *(a3 + 11))
    {
      mDecimalPlaces = self->mShowThousandsSeparator;
      v7 = *(a3 + 48);
LABEL_29:
      LOBYTE(v8) = mDecimalPlaces == v7;
      return v8;
    }

    goto LABEL_26;
  }

  if (mValueType != 1)
  {
    if (mValueType == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (self->mDecimalPlaces != *(a3 + 12))
  {
    goto LABEL_26;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (!(mCurrencyCode | *(a3 + 4)) || (v8 = [(NSString *)mCurrencyCode isEqualToString:?]))
  {
    if (self->mNegativeStyle == *(a3 + 11) && self->mShowThousandsSeparator == *(a3 + 48))
    {
      mDecimalPlaces = self->mUseAccountingStyle;
      v7 = *(a3 + 40);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = self->mValueType << 24;
  v26 = [(NSString *)self->mFormatString hash]+ v3;
  v25 = self->mDecimalPlaces << 16;
  v23 = [(NSString *)self->mCurrencyCode hash];
  mUseAccountingStyle = self->mUseAccountingStyle;
  mNegativeStyle = self->mNegativeStyle;
  mShowThousandsSeparator = self->mShowThousandsSeparator;
  mFormatStringRequiresSuppressionOfMinusSign = self->mFormatStringRequiresSuppressionOfMinusSign;
  mFractionAccuracy = self->mFractionAccuracy;
  mIsCustom = self->mIsCustom;
  mScaleFactor = self->mScaleFactor;
  mFormatStringContainsTabCharacter = self->mFormatStringContainsTabCharacter;
  mRequiresFractionReplacement = self->mRequiresFractionReplacement;
  v14 = [(NSArray *)self->mInterstitialStrings hash];
  v4 = [(NSIndexSet *)self->mInterstitialStringInsertionIndexes hash];
  mIndexFromRightOfLastDigitPlaceholder = self->mIndexFromRightOfLastDigitPlaceholder;
  mIsTextFormat = self->mIsTextFormat;
  mMinimumIntegerWidth = self->mMinimumIntegerWidth;
  mDecimalWidth = self->mDecimalWidth;
  mNumberOfNonSpaceIntegerPlaceholderDigits = self->mNumberOfNonSpaceIntegerPlaceholderDigits;
  mNumberOfNonSpaceDecimalPlaceholderDigits = self->mNumberOfNonSpaceDecimalPlaceholderDigits;
  v11 = [(NSString *)self->mFormatName hash];
  v12 = [(NSString *)self->mSuffixString hash];
  return v26 + v23 + v25 + mUseAccountingStyle + mNegativeStyle + mShowThousandsSeparator + mFractionAccuracy + mFormatStringRequiresSuppressionOfMinusSign + mIsCustom + mScaleFactor + mFormatStringContainsTabCharacter + mRequiresFractionReplacement + v14 + v4 + mIndexFromRightOfLastDigitPlaceholder + mIsTextFormat + mMinimumIntegerWidth + mDecimalWidth + mNumberOfNonSpaceIntegerPlaceholderDigits + mNumberOfNonSpaceDecimalPlaceholderDigits + v11 + v12 + [(NSString *)self->mPrefixString hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->mValueType != *(a3 + 2))
  {
    goto LABEL_36;
  }

  mFormatString = self->mFormatString;
  if (mFormatString | *(a3 + 2))
  {
    v6 = [(NSString *)mFormatString isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mDecimalPlaces != *(a3 + 12))
  {
    goto LABEL_36;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (mCurrencyCode | *(a3 + 4))
  {
    v6 = [(NSString *)mCurrencyCode isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mUseAccountingStyle != *(a3 + 40) || self->mNegativeStyle != *(a3 + 11) || self->mShowThousandsSeparator != *(a3 + 48) || self->mFractionAccuracy != *(a3 + 13) || self->mFormatStringRequiresSuppressionOfMinusSign != *(a3 + 56) || self->mIsCustom != *(a3 + 85) || self->mScaleFactor != *(a3 + 11) || self->mFormatStringContainsTabCharacter != *(a3 + 96) || self->mRequiresFractionReplacement != *(a3 + 101))
  {
    goto LABEL_36;
  }

  mInterstitialStrings = self->mInterstitialStrings;
  if (mInterstitialStrings | *(a3 + 13))
  {
    v6 = [(NSArray *)mInterstitialStrings isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  mInterstitialStringInsertionIndexes = self->mInterstitialStringInsertionIndexes;
  if (mInterstitialStringInsertionIndexes | *(a3 + 14))
  {
    v6 = [(NSIndexSet *)mInterstitialStringInsertionIndexes isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mIndexFromRightOfLastDigitPlaceholder != *(a3 + 60) || self->mIsTextFormat != *(a3 + 122) || self->mMinimumIntegerWidth != *(a3 + 123) || self->mDecimalWidth != *(a3 + 124) || self->mNumberOfNonSpaceIntegerPlaceholderDigits != *(a3 + 125) || self->mNumberOfNonSpaceDecimalPlaceholderDigits != *(a3 + 126))
  {
    goto LABEL_36;
  }

  mFormatName = self->mFormatName;
  if (mFormatName | *(a3 + 16))
  {
    v6 = [(NSString *)mFormatName isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mBase != *(a3 + 80) || self->mBasePlaces != *(a3 + 41) || self->mBaseUseMinusSign != *(a3 + 84))
  {
LABEL_36:
    LOBYTE(v6) = 0;
    return v6;
  }

  mSuffixString = self->mSuffixString;
  if (!(mSuffixString | *(a3 + 9)) || (v6 = [(NSString *)mSuffixString isEqual:?]) != 0)
  {
    mPrefixString = self->mPrefixString;
    if (mPrefixString | *(a3 + 8))
    {

      LOBYTE(v6) = [(NSString *)mPrefixString isEqual:?];
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:200];
  [(NSString *)v3 appendFormat:@"TSUNumberFormat[%p]\n", self];
  if (self->mIsCustom)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Custom Format: %@\n", v4];
  [(NSString *)v3 appendFormat:@"Name: %@\n", self->mFormatName];
  [(NSString *)v3 appendFormat:@"Value Type: %@\n", TSUNumberFormatterStringFromValueType(self->mValueType)];
  [(NSString *)v3 appendFormat:@"Format String: %@\n", self->mFormatString];
  [(NSString *)v3 appendFormat:@"Decimal Places: %d\n", self->mDecimalPlaces];
  [(NSString *)v3 appendFormat:@"Currency Code: %@\n", self->mCurrencyCode];
  if (self->mUseAccountingStyle)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Use Accounting Style: %@\n", v5];
  [(NSString *)v3 appendFormat:@"Negative Style: %@\n", TSUNumberFormatterStringFromNegativeStyle(self->mNegativeStyle)];
  if (self->mShowThousandsSeparator)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Show Thousands Separator: %@\n", v6];
  [(NSString *)v3 appendFormat:@"Fraction Accuracy: %@\n", TSUNumberFormatterStringFromFractionAccuracy(self->mFractionAccuracy)];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  BYTE6(v8) = self->mIsTextFormat;
  *(&v8 + 2) = *&self->mMinimumIntegerWidth;
  LOWORD(v8) = self->mIndexFromRightOfLastDigitPlaceholder;
  *(&v7 + 2) = *&self->mBasePlaces;
  LOBYTE(v7) = self->mBase;
  HIDWORD(v6) = self->mFractionAccuracy;
  LOBYTE(v6) = self->mShowThousandsSeparator;
  return [v4 initWithValueType:self->mValueType formatString:self->mFormatString decimalPlaces:self->mDecimalPlaces currencyCode:self->mCurrencyCode useAccountingStyle:self->mUseAccountingStyle negativeStyle:self->mNegativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v6 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v7 base:self->mInterstitialStrings basePlaces:self->mInterstitialStringInsertionIndexes baseUseMinusSign:v8 isCustom:self->mFormatName interstitialStrings:? interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSUMutableNumberFormat allocWithZone:a3];
  BYTE6(v8) = self->mIsTextFormat;
  *(&v8 + 2) = *&self->mMinimumIntegerWidth;
  LOWORD(v8) = self->mIndexFromRightOfLastDigitPlaceholder;
  *(&v7 + 2) = *&self->mBasePlaces;
  LOBYTE(v7) = self->mBase;
  HIDWORD(v6) = self->mFractionAccuracy;
  LOBYTE(v6) = self->mShowThousandsSeparator;
  return [TSUNumberFormat initWithValueType:v4 formatString:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" decimalPlaces:self->mValueType currencyCode:self->mFormatString useAccountingStyle:self->mDecimalPlaces negativeStyle:self->mCurrencyCode showThousandsSeparator:self->mUseAccountingStyle fractionAccuracy:self->mNegativeStyle prefixString:self->mScaleFactor suffixString:v6 scaleFactor:self->mPrefixString base:self->mSuffixString basePlaces:v7 baseUseMinusSign:self->mInterstitialStrings isCustom:self->mInterstitialStringInsertionIndexes interstitialStrings:v8 interstitialStringInsertionIndexes:self->mFormatName indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

@end