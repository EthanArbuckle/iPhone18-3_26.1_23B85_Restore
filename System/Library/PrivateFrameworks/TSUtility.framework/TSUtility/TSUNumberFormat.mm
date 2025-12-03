@interface TSUNumberFormat
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0;
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3;
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 formatName:(id)self8;
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 scaleFactor:(double)self1 isCustom:(BOOL)self2 formatName:(id)self3;
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 suffixString:(id)self1;
- (BOOL)customFormatShouldAutoInsertPercentSymbol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)usesTabs;
- (NSString)description;
- (TSUNumberFormat)init;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 interstitialStrings:(id)self8 interstitialStringInsertionIndexes:(id)self9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)placeholder minimumIntegerWidth:(unsigned __int8)width decimalWidth:(unsigned __int8)decimalWidth numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)digits numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)placeholderDigits isTextFormat:(BOOL)format formatName:(id)name;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 suffixString:(id)self1;
- (id)chartLabelStringFromDouble:(double)double;
- (id)chartLabelStringFromDouble:(double)double forceSuppressMinusSign:(BOOL)sign;
- (id)chartLabelStringNofixFromDouble:(double)double;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initCustomFormatWithFormatString:(id)string currencyCode:(id)code showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)accuracy scaleFactor:(double)factor interstitialStrings:(id)strings interstitialStringInsertionIndexes:(id)indexes indexFromRightOfLastDigitPlaceholder:(unsigned __int16)self0 minimumIntegerWidth:(unsigned __int8)self1 decimalWidth:(unsigned __int8)self2 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)self3 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)self4 isTextFormat:(BOOL)self5 formatName:(id)self6;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)numberFormatByIncrementingDecimalPlaces:(signed __int16)places;
- (id)numberFormatBySettingBase:(unsigned __int8)base;
- (id)numberFormatBySettingBasePlaces:(unsigned __int16)places;
- (id)numberFormatBySettingBaseRepresentNegativeWithMinus:(BOOL)minus;
- (id)numberFormatBySettingCurrencyCode:(id)code;
- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)places;
- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)places andNegativeStyle:(int)style;
- (id)numberFormatBySettingFractionAccuracy:(int)accuracy;
- (id)numberFormatBySettingNegativeStyle:(int)style;
- (id)numberFormatBySettingPrefixString:(id)string;
- (id)numberFormatBySettingShowThousandsSeparator:(BOOL)separator;
- (id)numberFormatBySettingSuffixString:(id)string;
- (id)numberFormatBySettingUseAccountingStyle:(BOOL)style;
- (id)numberFormatBySettingValueType:(int)type;
- (id)stringFromDouble:(double)double;
- (id)stringFromDouble:(double)double decimalPlaces:(unsigned __int16)places minimumDecimalPlaces:(unsigned __int16)decimalPlaces forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromDouble:(double)double forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromDouble:(double)double minimumDecimalPlaces:(unsigned __int16)places;
- (id)stringFromDouble:(double)double minimumDecimalPlaces:(unsigned __int16)places forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromString:(id)string;
- (unint64_t)hash;
- (unsigned)decimalPlaces;
- (void)dealloc;
- (void)setFormatName:(id)name;
@end

@implementation TSUNumberFormat

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0
{
  HIDWORD(v12) = accuracy;
  LOBYTE(v12) = separator;
  v10 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:*&negativeStyle showThousandsSeparator:v12 fractionAccuracy:?];

  return v10;
}

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 suffixString:(id)self1
{
  HIDWORD(v13) = accuracy;
  LOBYTE(v13) = separator;
  v11 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:*&negativeStyle showThousandsSeparator:v13 fractionAccuracy:suffixString suffixString:?];

  return v11;
}

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3
{
  BYTE4(v16) = sign;
  WORD1(v16) = basePlaces;
  LOBYTE(v16) = base;
  HIDWORD(v15) = accuracy;
  LOBYTE(v15) = separator;
  v13 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:negativeStyle showThousandsSeparator:v15 fractionAccuracy:v16 base:? basePlaces:? baseUseMinusSign:?];

  return v13;
}

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 scaleFactor:(double)self1 isCustom:(BOOL)self2 formatName:(id)self3
{
  BYTE6(v17) = 0;
  *(&v17 + 2) = 0;
  LOWORD(v17) = 0;
  BYTE5(v16) = custom;
  BYTE4(v16) = 1;
  WORD1(v16) = 0;
  LOBYTE(v16) = 10;
  HIDWORD(v15) = accuracy;
  LOBYTE(v15) = separator;
  v13 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:*&negativeStyle showThousandsSeparator:factor fractionAccuracy:v15 prefixString:0 suffixString:0 scaleFactor:v16 base:0 basePlaces:0 baseUseMinusSign:v17 isCustom:name interstitialStrings:? interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];

  return v13;
}

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 formatName:(id)self8
{
  BYTE6(v22) = 0;
  *(&v22 + 2) = 0;
  LOWORD(v22) = 0;
  BYTE5(v21) = custom;
  BYTE4(v21) = sign;
  WORD1(v21) = basePlaces;
  LOBYTE(v21) = base;
  HIDWORD(v20) = accuracy;
  LOBYTE(v20) = separator;
  v18 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:negativeStyle showThousandsSeparator:factor fractionAccuracy:v20 prefixString:prefixString suffixString:suffixString scaleFactor:v21 base:0 basePlaces:0 baseUseMinusSign:v22 isCustom:name interstitialStrings:? interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];

  return v18;
}

- (TSUNumberFormat)init
{
  HIDWORD(v3) = -1;
  LOBYTE(v3) = 1;
  return [(TSUNumberFormat *)self initWithValueType:0 formatString:0 decimalPlaces:2 currencyCode:0 useAccountingStyle:0 negativeStyle:0 showThousandsSeparator:v3 fractionAccuracy:?];
}

- (id)initCustomFormatWithFormatString:(id)string currencyCode:(id)code showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)accuracy scaleFactor:(double)factor interstitialStrings:(id)strings interstitialStringInsertionIndexes:(id)indexes indexFromRightOfLastDigitPlaceholder:(unsigned __int16)self0 minimumIntegerWidth:(unsigned __int8)self1 decimalWidth:(unsigned __int8)self2 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)self3 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)self4 isTextFormat:(BOOL)self5 formatName:(id)self6
{
  *(&v19 + 5) = __PAIR16__(format, placeholderDigits);
  *(&v19 + 3) = __PAIR16__(digits, decimalWidth);
  BYTE2(v19) = width;
  LOWORD(v19) = placeholder;
  *(&v18 + 2) = 16842752;
  LOBYTE(v18) = 10;
  HIDWORD(v17) = accuracy;
  LOBYTE(v17) = separator;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" formatString:0 decimalPlaces:string currencyCode:0 useAccountingStyle:code negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:factor prefixString:v17 suffixString:0 scaleFactor:0 base:v18 basePlaces:strings baseUseMinusSign:indexes isCustom:v19 interstitialStrings:name interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0
{
  BYTE4(v12) = 1;
  WORD1(v12) = 0;
  LOBYTE(v12) = 10;
  HIDWORD(v11) = accuracy;
  LOBYTE(v11) = separator;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:*&negativeStyle fractionAccuracy:v11 base:v12 basePlaces:? baseUseMinusSign:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = 0;
  BYTE4(v15) = sign;
  WORD1(v15) = basePlaces;
  LOBYTE(v15) = base;
  HIDWORD(v14) = accuracy;
  LOBYTE(v14) = separator;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:*&negativeStyle fractionAccuracy:1.0 prefixString:v14 suffixString:0 scaleFactor:0 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 suffixString:(id)self1
{
  BYTE6(v14) = 0;
  *(&v14 + 2) = 0;
  LOWORD(v14) = 0;
  *(&v13 + 2) = 0x10000;
  LOBYTE(v13) = 10;
  HIDWORD(v12) = accuracy;
  LOBYTE(v12) = separator;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:*&negativeStyle fractionAccuracy:1.0 prefixString:v12 suffixString:0 scaleFactor:suffixString base:v13 basePlaces:0 baseUseMinusSign:0 isCustom:v14 interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(int)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(int)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 interstitialStrings:(id)self8 interstitialStringInsertionIndexes:(id)self9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)placeholder minimumIntegerWidth:(unsigned __int8)width decimalWidth:(unsigned __int8)decimalWidth numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)digits numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)placeholderDigits isTextFormat:(BOOL)format formatName:(id)name
{
  styleCopy = style;
  v48.receiver = self;
  v31 = *&type;
  v48.super_class = TSUNumberFormat;
  v32 = [(TSUNumberFormat *)&v48 init];
  v33 = v32;
  if (v32)
  {
    v32->mFormatStringContainsTabCharacter = 0;
    v46 = styleCopy;
    if (custom)
    {
      if (!string)
      {
        v34 = +[TSUAssertionHandler currentHandler];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:]"];
        [v34 handleFailureInFunction:v35 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 376, @"Passed a nil format string while creating a custom format!"}];
      }

      v33->mFormatString = string;
      v33->mFormatStringRequiresSuppressionOfMinusSign = 0;
      v36 = [string length];
      if (v36)
      {
        v37 = v36;
        for (i = 0; i != v37; ++i)
        {
          v39 = [string characterAtIndex:i];
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
      if (styleCopy)
      {
        negativeStyleCopy2 = 2;
      }

      else
      {
        negativeStyleCopy2 = negativeStyle;
      }

      if (v31 != 1)
      {
        negativeStyleCopy2 = negativeStyle;
      }

      if (v31 == 3)
      {
        v42 = 0;
      }

      else
      {
        v42 = negativeStyleCopy2;
      }

      if (string)
      {
        v43 = [TSUNumberFormatter formatString:string transformedForNegativeStyle:v42];
      }

      else
      {
        v43 = [TSUNumberFormatter defaultFormatStringForValueType:v31 negativeStyle:v42];
      }

      v33->mFormatString = v43;
      v33->mFormatStringRequiresSuppressionOfMinusSign = negativeStyle == 1;
    }

    if (code)
    {
      codeCopy = code;
    }

    else
    {
      codeCopy = +[TSUNumberFormatter currentLocaleCurrencyCode];
    }

    v33->mCurrencyCode = codeCopy;
    v33->mValueType = v31;
    v33->mDecimalPlaces = places;
    v33->mNegativeStyle = negativeStyle;
    v33->mShowThousandsSeparator = separator;
    v33->mUseAccountingStyle = v46;
    v33->mFractionAccuracy = accuracy;
    v33->mScaleFactor = factor;
    v33->mIsCustom = custom;
    v33->mInterstitialStrings = strings;
    v33->mInterstitialStringInsertionIndexes = indexes;
    v33->mIsTextFormat = format;
    v33->mIndexFromRightOfLastDigitPlaceholder = placeholder;
    v33->mMinimumIntegerWidth = width;
    v33->mDecimalWidth = decimalWidth;
    v33->mNumberOfNonSpaceIntegerPlaceholderDigits = digits;
    v33->mNumberOfNonSpaceDecimalPlaceholderDigits = placeholderDigits;
    v33->mFormatName = name;
    v33->mBase = base;
    v33->mBasePlaces = basePlaces;
    v33->mBaseUseMinusSign = sign;
    v33->mSuffixString = [suffixString copy];
    v33->mPrefixString = [prefixString copy];
    if (custom)
    {
      v33->mFormatContainsSpecialTokens = 0;
    }
  }

  return v33;
}

- (id)numberFormatBySettingValueType:(int)type
{
  v3 = *&type;
  valueType = [(TSUNumberFormat *)self valueType];
  if ((v3 - 1) <= 1 && valueType == v3)
  {
    v6 = [(TSUNumberFormat *)self copy];

    return v6;
  }

  else
  {
    decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
    currencyCode = [(TSUNumberFormat *)self currencyCode];
    if (v3 == 1)
    {
      decimalPlaces = +[TSUNumberFormatter defaultDecimalPlacesForCurrencyCode:](TSUNumberFormatter, "defaultDecimalPlacesForCurrencyCode:", +[TSUNumberFormatter currentLocaleCurrencyCode]);
      v10 = 0;
    }

    else
    {
      v10 = currencyCode;
    }

    v11 = ((v3 - 1) < 2) | [(TSUNumberFormat *)self showThousandsSeparator];
    v12 = objc_opt_class();
    usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
    negativeStyle = [(TSUNumberFormat *)self negativeStyle];
    fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
    BYTE5(v17) = 0;
    BYTE4(v17) = self->mBaseUseMinusSign;
    WORD1(v17) = self->mBasePlaces;
    LOBYTE(v17) = self->mBase;
    HIDWORD(v16) = fractionAccuracy;
    LOBYTE(v16) = v11 & 1;
    return [v12 numberFormatWithValueType:v3 formatString:0 decimalPlaces:decimalPlaces currencyCode:v10 useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:1.0 fractionAccuracy:v16 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v17 base:0 basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
  }
}

- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)places
{
  placesCopy = places;
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:placesCopy currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingPrefixString:(id)string
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = fractionAccuracy;
  LOBYTE(v15) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:string suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingSuffixString:(id)string
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = fractionAccuracy;
  LOBYTE(v15) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:string scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatByIncrementingDecimalPlaces:(signed __int16)places
{
  placesCopy = places;
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  if ((placesCopy & 0x80000000) == 0 || (v6 = 0, -placesCopy <= decimalPlaces))
  {
    v6 = decimalPlaces + placesCopy;
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
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  BYTE4(v18) = self->mBaseUseMinusSign;
  WORD1(v18) = self->mBasePlaces;
  LOBYTE(v18) = self->mBase;
  HIDWORD(v17) = fractionAccuracy;
  LOBYTE(v17) = showThousandsSeparator;
  return [v8 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:v7 currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:v17 fractionAccuracy:v18 base:? basePlaces:? baseUseMinusSign:?];
}

- (id)numberFormatBySettingCurrencyCode:(id)code
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:code useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingNegativeStyle:(int)style
{
  v3 = *&style;
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:v3 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingDecimalPlaces:(unsigned __int16)places andNegativeStyle:(int)style
{
  v4 = *&style;
  placesCopy = places;
  v7 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = fractionAccuracy;
  LOBYTE(v15) = showThousandsSeparator;
  return [v7 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:placesCopy currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:v4 showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingShowThousandsSeparator:(BOOL)separator
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = separator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingFractionAccuracy:(int)accuracy
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = accuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingUseAccountingStyle:(BOOL)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v15 + 2) = *&self->mBasePlaces;
  LOBYTE(v15) = self->mBase;
  HIDWORD(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:styleCopy negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v14 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v15 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingBase:(unsigned __int8)base
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  *(&v16 + 2) = *&self->mBasePlaces;
  LOBYTE(v16) = base;
  HIDWORD(v15) = fractionAccuracy;
  LOBYTE(v15) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingBasePlaces:(unsigned __int16)places
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  WORD2(v16) = *&self->mBaseUseMinusSign;
  WORD1(v16) = places;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = fractionAccuracy;
  LOBYTE(v15) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (id)numberFormatBySettingBaseRepresentNegativeWithMinus:(BOOL)minus
{
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  negativeStyle = [(TSUNumberFormat *)self negativeStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  BYTE5(v16) = self->mIsCustom;
  BYTE4(v16) = minus;
  WORD1(v16) = self->mBasePlaces;
  LOBYTE(v16) = self->mBase;
  HIDWORD(v15) = fractionAccuracy;
  LOBYTE(v15) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:negativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v15 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v16 base:self->mFormatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
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

- (void)setFormatName:(id)name
{
  nameCopy = name;

  self->mFormatName = name;
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

- (id)chartLabelStringNofixFromDouble:(double)double
{
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  if (decimalPlaces == kTSUNumberFormatterDecimalPlacesAsManyAsNecessary)
  {

    return [(TSUNumberFormat *)self stringFromDouble:3 decimalPlaces:0 minimumDecimalPlaces:0 forceSuppressMinusSign:double];
  }

  else
  {

    return [(TSUNumberFormat *)self stringFromDouble:0 forceSuppressMinusSign:double];
  }
}

- (id)chartLabelStringFromDouble:(double)double
{
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  if (decimalPlaces == kTSUNumberFormatterDecimalPlacesAsManyAsNecessary)
  {
    v6 = [(TSUNumberFormat *)self stringFromDouble:3 decimalPlaces:0 minimumDecimalPlaces:0 forceSuppressMinusSign:double];
  }

  else
  {
    v6 = [(TSUNumberFormat *)self stringFromDouble:0 forceSuppressMinusSign:double];
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

- (id)chartLabelStringFromDouble:(double)double forceSuppressMinusSign:(BOOL)sign
{
  signCopy = sign;
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  if (decimalPlaces == kTSUNumberFormatterDecimalPlacesAsManyAsNecessary)
  {
    v8 = [(TSUNumberFormat *)self stringFromDouble:3 decimalPlaces:0 minimumDecimalPlaces:signCopy forceSuppressMinusSign:double];
  }

  else
  {
    v8 = [(TSUNumberFormat *)self stringFromDouble:signCopy forceSuppressMinusSign:double];
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

- (id)stringFromDouble:(double)double forceSuppressMinusSign:(BOOL)sign
{
  [(TSUNumberFormat *)self decimalPlaces];

  return [TSUNumberFormat stringFromDouble:"stringFromDouble:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" decimalPlaces:double minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)double
{
  [(TSUNumberFormat *)self decimalPlaces];

  return [TSUNumberFormat stringFromDouble:"stringFromDouble:decimalPlaces:minimumDecimalPlaces:forceSuppressMinusSign:" decimalPlaces:double minimumDecimalPlaces:? forceSuppressMinusSign:?];
}

- (id)stringFromDouble:(double)double minimumDecimalPlaces:(unsigned __int16)places forceSuppressMinusSign:(BOOL)sign
{
  signCopy = sign;
  placesCopy = places;
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];

  return [(TSUNumberFormat *)self stringFromDouble:decimalPlaces decimalPlaces:placesCopy minimumDecimalPlaces:signCopy forceSuppressMinusSign:double];
}

- (id)stringFromDouble:(double)double minimumDecimalPlaces:(unsigned __int16)places
{
  placesCopy = places;
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];

  return [(TSUNumberFormat *)self stringFromDouble:decimalPlaces decimalPlaces:placesCopy minimumDecimalPlaces:0 forceSuppressMinusSign:double];
}

- (id)stringFromDouble:(double)double decimalPlaces:(unsigned __int16)places minimumDecimalPlaces:(unsigned __int16)decimalPlaces forceSuppressMinusSign:(BOOL)sign
{
  signCopy = sign;
  mValueType = self->mValueType;
  formatString = [(TSUNumberFormat *)self formatString];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  hasValidDecimalPlaces = [(TSUNumberFormat *)self hasValidDecimalPlaces];
  HIBYTE(v11) = self->mRequiresFractionReplacement;
  LOBYTE(v11) = self->mFormatContainsIntegerToken;
  HIBYTE(v10) = self->mFormatContainsSpecialTokens;
  LOBYTE(v10) = self->mIsCustom;
  HIWORD(v9) = self->mIndexFromRightOfLastDigitPlaceholder;
  WORD2(v9) = *&self->mNumberOfHashDecimalPlaceholders;
  LODWORD(v9) = *&self->mMinimumIntegerWidth;
  return TSUNumberFormatStringFromDouble(mValueType, places, decimalPlaces, signCopy, formatString, currencyCode, hasValidDecimalPlaces, self->mInterstitialStrings, double, self->mScaleFactor, self->mInterstitialStringInsertionIndexes, v9, self->mFormatStringRequiresSuppressionOfMinusSign, self->mIsTextFormat, v10, v11, [(TSUNumberFormat *)self showThousandsSeparator], self->mUseAccountingStyle, *&self->mUseScientificFormattingAutomatically, self->mBase, self->mBasePlaces, self->mBaseUseMinusSign, self->mFractionAccuracy);
}

- (id)stringFromString:(id)string
{
  if (!self->mIsTextFormat)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat stringFromString:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUNumberFormat.m"), 1076, @"Attempt to generate a string from a string with a non-text number format!"}];
  }

  v7 = [MEMORY[0x277CCAB68] stringWithString:self->mFormatString];
  [v7 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), string, 0, 0, objc_msgSend(v7, "length")}];
  return v7;
}

- (BOOL)isEquivalent:(id)equivalent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  mValueType = self->mValueType;
  if (mValueType != *(equivalent + 2))
  {
    goto LABEL_26;
  }

  if (mValueType > 2)
  {
    switch(mValueType)
    {
      case 3:
        mDecimalPlaces = self->mDecimalPlaces;
        v7 = *(equivalent + 12);
        goto LABEL_29;
      case 4:
        mDecimalPlaces = self->mFractionAccuracy;
        v7 = *(equivalent + 13);
        goto LABEL_29;
      case 5:
        if (self->mBase == *(equivalent + 80) && self->mBasePlaces == *(equivalent + 41))
        {
          mDecimalPlaces = self->mBaseUseMinusSign;
          v7 = *(equivalent + 84);
          goto LABEL_29;
        }

LABEL_26:
        LOBYTE(v8) = 0;
        return v8;
    }

LABEL_17:

    LOBYTE(v8) = [(TSUNumberFormat *)self isEqual:equivalent];
    return v8;
  }

  if (!mValueType)
  {
LABEL_7:
    if (self->mDecimalPlaces == *(equivalent + 12) && self->mNegativeStyle == *(equivalent + 11))
    {
      mDecimalPlaces = self->mShowThousandsSeparator;
      v7 = *(equivalent + 48);
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

  if (self->mDecimalPlaces != *(equivalent + 12))
  {
    goto LABEL_26;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (!(mCurrencyCode | *(equivalent + 4)) || (v8 = [(NSString *)mCurrencyCode isEqualToString:?]))
  {
    if (self->mNegativeStyle == *(equivalent + 11) && self->mShowThousandsSeparator == *(equivalent + 48))
    {
      mDecimalPlaces = self->mUseAccountingStyle;
      v7 = *(equivalent + 40);
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->mValueType != *(equal + 2))
  {
    goto LABEL_36;
  }

  mFormatString = self->mFormatString;
  if (mFormatString | *(equal + 2))
  {
    v6 = [(NSString *)mFormatString isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mDecimalPlaces != *(equal + 12))
  {
    goto LABEL_36;
  }

  mCurrencyCode = self->mCurrencyCode;
  if (mCurrencyCode | *(equal + 4))
  {
    v6 = [(NSString *)mCurrencyCode isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mUseAccountingStyle != *(equal + 40) || self->mNegativeStyle != *(equal + 11) || self->mShowThousandsSeparator != *(equal + 48) || self->mFractionAccuracy != *(equal + 13) || self->mFormatStringRequiresSuppressionOfMinusSign != *(equal + 56) || self->mIsCustom != *(equal + 85) || self->mScaleFactor != *(equal + 11) || self->mFormatStringContainsTabCharacter != *(equal + 96) || self->mRequiresFractionReplacement != *(equal + 101))
  {
    goto LABEL_36;
  }

  mInterstitialStrings = self->mInterstitialStrings;
  if (mInterstitialStrings | *(equal + 13))
  {
    v6 = [(NSArray *)mInterstitialStrings isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  mInterstitialStringInsertionIndexes = self->mInterstitialStringInsertionIndexes;
  if (mInterstitialStringInsertionIndexes | *(equal + 14))
  {
    v6 = [(NSIndexSet *)mInterstitialStringInsertionIndexes isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mIndexFromRightOfLastDigitPlaceholder != *(equal + 60) || self->mIsTextFormat != *(equal + 122) || self->mMinimumIntegerWidth != *(equal + 123) || self->mDecimalWidth != *(equal + 124) || self->mNumberOfNonSpaceIntegerPlaceholderDigits != *(equal + 125) || self->mNumberOfNonSpaceDecimalPlaceholderDigits != *(equal + 126))
  {
    goto LABEL_36;
  }

  mFormatName = self->mFormatName;
  if (mFormatName | *(equal + 16))
  {
    v6 = [(NSString *)mFormatName isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->mBase != *(equal + 80) || self->mBasePlaces != *(equal + 41) || self->mBaseUseMinusSign != *(equal + 84))
  {
LABEL_36:
    LOBYTE(v6) = 0;
    return v6;
  }

  mSuffixString = self->mSuffixString;
  if (!(mSuffixString | *(equal + 9)) || (v6 = [(NSString *)mSuffixString isEqual:?]) != 0)
  {
    mPrefixString = self->mPrefixString;
    if (mPrefixString | *(equal + 8))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  BYTE6(v8) = self->mIsTextFormat;
  *(&v8 + 2) = *&self->mMinimumIntegerWidth;
  LOWORD(v8) = self->mIndexFromRightOfLastDigitPlaceholder;
  *(&v7 + 2) = *&self->mBasePlaces;
  LOBYTE(v7) = self->mBase;
  HIDWORD(v6) = self->mFractionAccuracy;
  LOBYTE(v6) = self->mShowThousandsSeparator;
  return [v4 initWithValueType:self->mValueType formatString:self->mFormatString decimalPlaces:self->mDecimalPlaces currencyCode:self->mCurrencyCode useAccountingStyle:self->mUseAccountingStyle negativeStyle:self->mNegativeStyle showThousandsSeparator:self->mScaleFactor fractionAccuracy:v6 prefixString:self->mPrefixString suffixString:self->mSuffixString scaleFactor:v7 base:self->mInterstitialStrings basePlaces:self->mInterstitialStringInsertionIndexes baseUseMinusSign:v8 isCustom:self->mFormatName interstitialStrings:? interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSUMutableNumberFormat allocWithZone:zone];
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