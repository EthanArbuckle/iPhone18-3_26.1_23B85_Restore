@interface TSUNumberFormat
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10;
+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 formatName:(id)a18;
- (BOOL)customFormatShouldAutoInsertPercentSymbol;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (BOOL)usesTabs;
- (NSString)description;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 prefixString:(id)a11 suffixString:(id)a12 isCustom:(BOOL)a13;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 interstitialStrings:(id)a18 interstitialStringInsertionIndexes:(id)a19 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a20 minimumIntegerWidth:(unsigned __int8)a21 decimalWidth:(unsigned __int8)a22 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a23 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a24 isTextFormat:(BOOL)a25 formatName:(id)a26 customFormatKey:(id)a27;
- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 suffixString:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initCustomFormatWithFormatString:(id)a3 currencyCode:(id)a4 showThousandsSeparator:(BOOL)a5 fractionAccuracy:(char)a6 scaleFactor:(double)a7 interstitialStrings:(id)a8 interstitialStringInsertionIndexes:(id)a9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a10 minimumIntegerWidth:(unsigned __int8)a11 decimalWidth:(unsigned __int8)a12 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a13 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a14 isTextFormat:(BOOL)a15 formatName:(id)a16;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)numberFormatBySettingNegativeStyle:(unsigned __int8)a3;
- (id)numberFormatBySettingUseAccountingStyle:(BOOL)a3;
- (id)stringFromDouble:(double)a3 locale:(id)a4;
- (id)stringFromDouble:(double)a3 locale:(id)a4 decimalPlaces:(unsigned __int16)a5 minimumDecimalPlaces:(unsigned __int16)a6 forceSuppressMinusSign:(BOOL)a7;
- (id)stringFromDouble:(double)a3 locale:(id)a4 forceSuppressMinusSign:(BOOL)a5;
- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5;
- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5 forceSuppressMinusSign:(BOOL)a6;
- (id)stringFromString:(id)a3;
- (unint64_t)hash;
- (unsigned)decimalPlaces;
- (void)dealloc;
- (void)setFormatName:(id)a3;
@end

@implementation TSUNumberFormat

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10
{
  LOWORD(v12) = __PAIR16__(a10, a9);
  v10 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:a8 showThousandsSeparator:v12 fractionAccuracy:?];

  return v10;
}

+ (id)numberFormatWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 formatName:(id)a18
{
  BYTE6(v22) = 0;
  *(&v22 + 2) = 0;
  LOWORD(v22) = 0;
  BYTE5(v21) = a17;
  BYTE4(v21) = a16;
  WORD1(v21) = a15;
  LOBYTE(v21) = a14;
  LOWORD(v20) = __PAIR16__(a10, a9);
  v18 = [[a1 alloc] initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:a8 showThousandsSeparator:a13 fractionAccuracy:v20 prefixString:a11 suffixString:a12 scaleFactor:v21 base:0 basePlaces:0 baseUseMinusSign:v22 isCustom:a18 interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];

  return v18;
}

- (id)initCustomFormatWithFormatString:(id)a3 currencyCode:(id)a4 showThousandsSeparator:(BOOL)a5 fractionAccuracy:(char)a6 scaleFactor:(double)a7 interstitialStrings:(id)a8 interstitialStringInsertionIndexes:(id)a9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a10 minimumIntegerWidth:(unsigned __int8)a11 decimalWidth:(unsigned __int8)a12 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a13 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a14 isTextFormat:(BOOL)a15 formatName:(id)a16
{
  *(&v19 + 5) = __PAIR16__(a15, a14);
  *(&v19 + 3) = __PAIR16__(a13, a12);
  BYTE2(v19) = a11;
  LOWORD(v19) = a10;
  *(&v18 + 2) = 16842752;
  LOBYTE(v18) = 10;
  BYTE1(v17) = a6;
  LOBYTE(v17) = a5;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:0 decimalPlaces:a3 currencyCode:0 useAccountingStyle:a4 negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:a7 prefixString:v17 suffixString:0 scaleFactor:0 base:v18 basePlaces:a8 baseUseMinusSign:a9 isCustom:v19 interstitialStrings:a16 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10
{
  BYTE6(v11) = 1;
  WORD2(v11) = 0;
  BYTE2(v11) = 10;
  LOWORD(v11) = __PAIR16__(a10, a9);
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:a8 fractionAccuracy:v11 base:? basePlaces:? baseUseMinusSign:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 base:(unsigned __int8)a11 basePlaces:(unsigned __int16)a12 baseUseMinusSign:(BOOL)a13
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = 0;
  BYTE4(v15) = a13;
  WORD1(v15) = a12;
  LOBYTE(v15) = a11;
  LOWORD(v14) = __PAIR16__(a10, a9);
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:a8 fractionAccuracy:1.0 prefixString:v14 suffixString:0 scaleFactor:0 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 prefixString:(id)a11 suffixString:(id)a12 isCustom:(BOOL)a13
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = a13;
  BYTE4(v15) = 1;
  WORD1(v15) = 0;
  LOBYTE(v15) = 10;
  LOWORD(v14) = __PAIR16__(a10, a9);
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&a3 decimalPlaces:a4 currencyCode:a5 useAccountingStyle:a6 negativeStyle:a7 showThousandsSeparator:a8 fractionAccuracy:1.0 prefixString:v14 suffixString:a11 scaleFactor:a12 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 suffixString:(id)a11
{
  LOBYTE(v13) = 0;
  LOWORD(v12) = __PAIR16__(a10, a9);
  return [(TSUNumberFormat *)self initWithValueType:*&a3 formatString:a4 decimalPlaces:a5 currencyCode:a6 useAccountingStyle:a7 negativeStyle:a8 showThousandsSeparator:v12 fractionAccuracy:0 prefixString:a11 suffixString:v13 isCustom:?];
}

- (TSUNumberFormat)initWithValueType:(int)a3 formatString:(id)a4 decimalPlaces:(unsigned __int16)a5 currencyCode:(id)a6 useAccountingStyle:(BOOL)a7 negativeStyle:(unsigned __int8)a8 showThousandsSeparator:(BOOL)a9 fractionAccuracy:(char)a10 prefixString:(id)a11 suffixString:(id)a12 scaleFactor:(double)a13 base:(unsigned __int8)a14 basePlaces:(unsigned __int16)a15 baseUseMinusSign:(BOOL)a16 isCustom:(BOOL)a17 interstitialStrings:(id)a18 interstitialStringInsertionIndexes:(id)a19 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)a20 minimumIntegerWidth:(unsigned __int8)a21 decimalWidth:(unsigned __int8)a22 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)a23 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)a24 isTextFormat:(BOOL)a25 formatName:(id)a26 customFormatKey:(id)a27
{
  v28 = a8;
  v29 = a7;
  v33 = *&a3;
  v53.receiver = self;
  v53.super_class = TSUNumberFormat;
  v34 = [(TSUNumberFormat *)&v53 init];
  v35 = v34;
  if (v34)
  {
    v34->_formatStringContainsTabCharacter = 0;
    v52 = v29;
    if (a17)
    {
      if (!a4)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v36, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 310, 0, "Passed a nil format string while creating a custom format!");
        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v35->_formatString = a4;
      v35->_formatStringRequiresSuppressionOfMinusSign = 0;
      v37 = [a4 length];
      if (v37)
      {
        v38 = v37;
        for (i = 0; i != v38; ++i)
        {
          v40 = [a4 characterAtIndex:i];
          p_formatStringContainsTabCharacter = &v35->_formatStringContainsTabCharacter;
          if (v40 != 9)
          {
            p_formatStringContainsTabCharacter = &v35->_requiresFractionReplacement;
            if (v40 != 58400)
            {
              continue;
            }
          }

          *p_formatStringContainsTabCharacter = 1;
        }
      }
    }

    else
    {
      if (v29)
      {
        v42 = 2;
      }

      else
      {
        v42 = v28;
      }

      if (v33 != 1)
      {
        v42 = v28;
      }

      if (v33 == 3)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      if (a4)
      {
        v44 = [TSUNumberFormatter formatString:a4 transformedForNegativeStyle:v43];
      }

      else
      {
        v44 = [TSUNumberFormatter defaultFormatStringForValueType:v33 negativeStyle:v43];
      }

      v35->_formatString = v44;
      v35->_formatStringRequiresSuppressionOfMinusSign = v28 == 1;
    }

    v45 = a24;
    if (a6)
    {
      v46 = a6;
    }

    else
    {
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"];
      v49 = v47;
      v45 = a24;
      [TSUAssertionHandler handleFailureInFunction:v49 file:v48 lineNumber:352 isFatal:0 description:"We require the currencyCode from the locale you are using, don't pass in nil."];
      +[TSUAssertionHandler logBacktraceThrottled];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v50, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 353, 0, "No locale passed in, falling to back current locale.");
      +[TSUAssertionHandler logBacktraceThrottled];
      v46 = [+[TSULocale currentLocale](TSULocale currencyCode];
    }

    v35->_currencyCode = v46;
    v35->_valueType = v33;
    v35->_decimalPlaces = a5;
    v35->_negativeStyle = v28;
    v35->_showThousandsSeparator = a9;
    v35->_useAccountingStyle = v52;
    v35->_fractionAccuracy = a10;
    v35->_scaleFactor = a13;
    v35->_isCustom = a17;
    v35->_customFormatKey = a27;
    v35->_interstitialStrings = a18;
    v35->_interstitialStringInsertionIndexes = a19;
    v35->_isTextFormat = a25;
    v35->_indexFromRightOfLastDigitPlaceholder = a20;
    v35->_minimumIntegerWidth = a21;
    v35->_decimalWidth = a22;
    v35->_numberOfNonSpaceIntegerPlaceholderDigits = a23;
    v35->_numberOfNonSpaceDecimalPlaceholderDigits = v45;
    v35->_formatName = a26;
    v35->_base = a14;
    v35->_basePlaces = a15;
    v35->_baseUseMinusSign = a16;
    v35->_suffixString = [a12 copy];
    v35->_prefixString = [a11 copy];
    if (a17)
    {
      v35->_formatContainsSpecialTokens = 0;
    }
  }

  return v35;
}

- (id)numberFormatBySettingNegativeStyle:(unsigned __int8)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(TSUNumberFormat *)self valueType];
  v7 = [(TSUNumberFormat *)self formatString];
  v8 = [(TSUNumberFormat *)self decimalPlaces];
  v9 = [(TSUNumberFormat *)self currencyCode];
  v10 = [(TSUNumberFormat *)self usesAccountingStyle];
  v11 = [(TSUNumberFormat *)self showThousandsSeparator];
  v12 = [(TSUNumberFormat *)self fractionAccuracy];
  BYTE5(v15) = self->_isCustom;
  BYTE4(v15) = self->_baseUseMinusSign;
  WORD1(v15) = self->_basePlaces;
  LOBYTE(v15) = self->_base;
  BYTE1(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v10 negativeStyle:v3 showThousandsSeparator:self->_scaleFactor fractionAccuracy:v14 prefixString:self->_prefixString suffixString:self->_suffixString scaleFactor:v15 base:self->_formatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
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
  BYTE5(v15) = self->_isCustom;
  BYTE4(v15) = self->_baseUseMinusSign;
  WORD1(v15) = self->_basePlaces;
  LOBYTE(v15) = self->_base;
  BYTE1(v14) = v12;
  LOBYTE(v14) = v11;
  return [v5 numberFormatWithValueType:v6 formatString:v7 decimalPlaces:v8 currencyCode:v9 useAccountingStyle:v3 negativeStyle:v10 showThousandsSeparator:self->_scaleFactor fractionAccuracy:v14 prefixString:self->_prefixString suffixString:self->_suffixString scaleFactor:v15 base:self->_formatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
}

- (void)dealloc
{
  self->_formatString = 0;

  self->_currencyCode = 0;
  self->_interstitialStrings = 0;

  self->_interstitialStringInsertionIndexes = 0;
  self->_formatName = 0;

  self->_prefixString = 0;
  self->_suffixString = 0;

  self->_customFormatKey = 0;
  v3.receiver = self;
  v3.super_class = TSUNumberFormat;
  [(TSUNumberFormat *)&v3 dealloc];
}

- (void)setFormatName:(id)a3
{
  v5 = a3;

  self->_formatName = a3;
}

- (unsigned)decimalPlaces
{
  if (self->_decimalPlaces == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return self->_decimalPlaces;
  }
}

- (BOOL)customFormatShouldAutoInsertPercentSymbol
{
  if (!self->_isCustom)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat customFormatShouldAutoInsertPercentSymbol]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 567, 0, "not a custom format!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  [(TSUNumberFormat *)self scaleFactor];
  return v4 == 100.0;
}

- (BOOL)usesTabs
{
  if (self->_formatStringContainsTabCharacter)
  {
    return 1;
  }

  else
  {
    return self->_valueType == 1 && self->_useAccountingStyle;
  }
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 forceSuppressMinusSign:(BOOL)a5
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)a3 locale:(id)a4
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5 forceSuppressMinusSign:(BOOL)a6
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 minimumDecimalPlaces:(unsigned __int16)a5
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)a3 locale:(id)a4 decimalPlaces:(unsigned __int16)a5 minimumDecimalPlaces:(unsigned __int16)a6 forceSuppressMinusSign:(BOOL)a7
{
  valueType = self->_valueType;
  v15 = [(TSUNumberFormat *)self formatString];
  v14 = [(TSUNumberFormat *)self currencyCode];
  v12 = [(TSUNumberFormat *)self hasValidDecimalPlaces];
  HIBYTE(v10) = self->_formatContainsSpecialTokens;
  LOBYTE(v10) = self->_isCustom;
  return sub_2770402CC(valueType, a5, a6, a7, v15, v14, v12, self->_interstitialStrings, a3, self->_scaleFactor, self->_interstitialStringInsertionIndexes, __SPAIR64__(*&self->_numberOfHashDecimalPlaceholders, *&self->_minimumIntegerWidth), self->_formatStringRequiresSuppressionOfMinusSign, self->_isTextFormat, v10, *&self->_formatContainsIntegerToken, [(TSUNumberFormat *)self showThousandsSeparator], self->_useAccountingStyle, *&self->_useScientificFormattingAutomatically, self->_base, self->_basePlaces, self->_baseUseMinusSign, self->_fractionAccuracy, a4);
}

- (id)stringFromString:(id)a3
{
  if (!self->_isTextFormat)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat stringFromString:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 655, 0, "Attempt to generate a string from a string with a non-text number format!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v6 = [MEMORY[0x277CCAB68] stringWithString:self->_formatString];
  [v6 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), a3, 0, 0, objc_msgSend(v6, "length")}];
  return v6;
}

- (BOOL)isEquivalent:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  valueType = self->_valueType;
  if (valueType != *(a3 + 2))
  {
    goto LABEL_26;
  }

  if (valueType > 2)
  {
    switch(valueType)
    {
      case 3:
        decimalPlaces = self->_decimalPlaces;
        v7 = *(a3 + 6);
        goto LABEL_29;
      case 4:
        decimalPlaces = self->_fractionAccuracy;
        v7 = *(a3 + 15);
        goto LABEL_29;
      case 5:
        if (self->_base == *(a3 + 28) && self->_basePlaces == *(a3 + 15))
        {
          decimalPlaces = self->_baseUseMinusSign;
          v7 = *(a3 + 27);
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

  if (!valueType)
  {
LABEL_7:
    if (self->_decimalPlaces == *(a3 + 6) && self->_negativeStyle == *(a3 + 14))
    {
      decimalPlaces = self->_showThousandsSeparator;
      v7 = *(a3 + 17);
LABEL_29:
      LOBYTE(v8) = decimalPlaces == v7;
      return v8;
    }

    goto LABEL_26;
  }

  if (valueType != 1)
  {
    if (valueType == 2)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (self->_decimalPlaces != *(a3 + 6))
  {
    goto LABEL_26;
  }

  currencyCode = self->_currencyCode;
  if (!(currencyCode | *(a3 + 7)) || (v8 = [(NSString *)currencyCode isEqualToString:?]))
  {
    if (self->_negativeStyle == *(a3 + 14) && self->_showThousandsSeparator == *(a3 + 17))
    {
      decimalPlaces = self->_useAccountingStyle;
      v7 = *(a3 + 16);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = self->_valueType << 24;
  v27 = [(NSString *)self->_formatString hash]+ v3;
  v26 = self->_decimalPlaces << 16;
  v24 = [(NSString *)self->_currencyCode hash];
  useAccountingStyle = self->_useAccountingStyle;
  negativeStyle = self->_negativeStyle;
  showThousandsSeparator = self->_showThousandsSeparator;
  formatStringRequiresSuppressionOfMinusSign = self->_formatStringRequiresSuppressionOfMinusSign;
  fractionAccuracy = self->_fractionAccuracy;
  isCustom = self->_isCustom;
  v18 = [(NSUUID *)self->_customFormatKey hash];
  scaleFactor = self->_scaleFactor;
  formatStringContainsTabCharacter = self->_formatStringContainsTabCharacter;
  requiresFractionReplacement = self->_requiresFractionReplacement;
  v14 = [(NSArray *)self->_interstitialStrings hash];
  v4 = [(NSIndexSet *)self->_interstitialStringInsertionIndexes hash];
  indexFromRightOfLastDigitPlaceholder = self->_indexFromRightOfLastDigitPlaceholder;
  isTextFormat = self->_isTextFormat;
  minimumIntegerWidth = self->_minimumIntegerWidth;
  decimalWidth = self->_decimalWidth;
  numberOfNonSpaceIntegerPlaceholderDigits = self->_numberOfNonSpaceIntegerPlaceholderDigits;
  numberOfNonSpaceDecimalPlaceholderDigits = self->_numberOfNonSpaceDecimalPlaceholderDigits;
  v11 = [(NSString *)self->_formatName hash];
  v12 = [(NSString *)self->_suffixString hash];
  return v27 + v24 + v26 + useAccountingStyle + negativeStyle + showThousandsSeparator + fractionAccuracy + formatStringRequiresSuppressionOfMinusSign + isCustom + v18 + scaleFactor + formatStringContainsTabCharacter + requiresFractionReplacement + v14 + v4 + indexFromRightOfLastDigitPlaceholder + isTextFormat + minimumIntegerWidth + decimalWidth + numberOfNonSpaceIntegerPlaceholderDigits + numberOfNonSpaceDecimalPlaceholderDigits + v11 + v12 + [(NSString *)self->_prefixString hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_valueType != *(a3 + 2))
  {
    goto LABEL_38;
  }

  formatString = self->_formatString;
  if (formatString | *(a3 + 6))
  {
    v6 = [(NSString *)formatString isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_decimalPlaces != *(a3 + 6))
  {
    goto LABEL_38;
  }

  currencyCode = self->_currencyCode;
  if (currencyCode | *(a3 + 7))
  {
    v6 = [(NSString *)currencyCode isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_useAccountingStyle != *(a3 + 16) || self->_negativeStyle != *(a3 + 14) || self->_showThousandsSeparator != *(a3 + 17) || self->_fractionAccuracy != *(a3 + 15) || self->_formatStringRequiresSuppressionOfMinusSign != *(a3 + 18) || self->_isCustom != *(a3 + 21))
  {
    goto LABEL_38;
  }

  customFormatKey = self->_customFormatKey;
  if (customFormatKey | *(a3 + 11))
  {
    v6 = [(NSUUID *)customFormatKey isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_scaleFactor != *(a3 + 5) || self->_formatStringContainsTabCharacter != *(a3 + 22) || self->_requiresFractionReplacement != *(a3 + 25))
  {
    goto LABEL_38;
  }

  interstitialStrings = self->_interstitialStrings;
  if (interstitialStrings | *(a3 + 8))
  {
    v6 = [(NSArray *)interstitialStrings isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  interstitialStringInsertionIndexes = self->_interstitialStringInsertionIndexes;
  if (interstitialStringInsertionIndexes | *(a3 + 9))
  {
    v6 = [(NSIndexSet *)interstitialStringInsertionIndexes isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_indexFromRightOfLastDigitPlaceholder != *(a3 + 17) || self->_isTextFormat != *(a3 + 26) || self->_minimumIntegerWidth != *(a3 + 36) || self->_decimalWidth != *(a3 + 37) || self->_numberOfNonSpaceIntegerPlaceholderDigits != *(a3 + 38) || self->_numberOfNonSpaceDecimalPlaceholderDigits != *(a3 + 39))
  {
    goto LABEL_38;
  }

  formatName = self->_formatName;
  if (formatName | *(a3 + 10))
  {
    v6 = [(NSString *)formatName isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_base != *(a3 + 28) || self->_basePlaces != *(a3 + 15) || self->_baseUseMinusSign != *(a3 + 27))
  {
LABEL_38:
    LOBYTE(v6) = 0;
    return v6;
  }

  suffixString = self->_suffixString;
  if (!(suffixString | *(a3 + 13)) || (v6 = [(NSString *)suffixString isEqual:?]) != 0)
  {
    prefixString = self->_prefixString;
    if (prefixString | *(a3 + 12))
    {

      LOBYTE(v6) = [(NSString *)prefixString isEqual:?];
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
  if (self->_isCustom)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Custom Format: %@\n", v4];
  [(NSString *)v3 appendFormat:@"Name: %@\n", self->_formatName];
  [(NSString *)v3 appendFormat:@"Value Type: %@\n", sub_2770440B4(self->_valueType)];
  [(NSString *)v3 appendFormat:@"Format String: %@\n", self->_formatString];
  [(NSString *)v3 appendFormat:@"Decimal Places: %d\n", self->_decimalPlaces];
  [(NSString *)v3 appendFormat:@"Currency Code: %@\n", self->_currencyCode];
  if (self->_useAccountingStyle)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Use Accounting Style: %@\n", v5];
  [(NSString *)v3 appendFormat:@"Negative Style: %@\n", sub_2770440D8(self->_negativeStyle)];
  if (self->_showThousandsSeparator)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [(NSString *)v3 appendFormat:@"Show Thousands Separator: %@\n", v6];
  [(NSString *)v3 appendFormat:@"Fraction Accuracy: %@\n", sub_2770440FC(self->_fractionAccuracy)];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  BYTE6(v8) = self->_isTextFormat;
  *(&v8 + 2) = *&self->_minimumIntegerWidth;
  LOWORD(v8) = self->_indexFromRightOfLastDigitPlaceholder;
  BYTE5(v7) = self->_isCustom;
  BYTE4(v7) = self->_baseUseMinusSign;
  WORD1(v7) = self->_basePlaces;
  LOBYTE(v7) = self->_base;
  BYTE1(v6) = self->_fractionAccuracy;
  LOBYTE(v6) = self->_showThousandsSeparator;
  return [v4 initWithValueType:self->_valueType formatString:self->_formatString decimalPlaces:self->_decimalPlaces currencyCode:self->_currencyCode useAccountingStyle:self->_useAccountingStyle negativeStyle:self->_negativeStyle showThousandsSeparator:self->_scaleFactor fractionAccuracy:v6 prefixString:self->_prefixString suffixString:self->_suffixString scaleFactor:v7 base:self->_interstitialStrings basePlaces:self->_interstitialStringInsertionIndexes baseUseMinusSign:v8 isCustom:self->_formatName interstitialStrings:self->_customFormatKey interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TSUMutableNumberFormat allocWithZone:a3];
  BYTE6(v8) = self->_isTextFormat;
  *(&v8 + 2) = *&self->_minimumIntegerWidth;
  LOWORD(v8) = self->_indexFromRightOfLastDigitPlaceholder;
  BYTE5(v7) = self->_isCustom;
  BYTE4(v7) = self->_baseUseMinusSign;
  WORD1(v7) = self->_basePlaces;
  LOBYTE(v7) = self->_base;
  BYTE1(v6) = self->_fractionAccuracy;
  LOBYTE(v6) = self->_showThousandsSeparator;
  return [TSUNumberFormat initWithValueType:v4 formatString:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" decimalPlaces:self->_valueType currencyCode:self->_formatString useAccountingStyle:self->_decimalPlaces negativeStyle:self->_currencyCode showThousandsSeparator:self->_useAccountingStyle fractionAccuracy:self->_negativeStyle prefixString:self->_scaleFactor suffixString:v6 scaleFactor:self->_prefixString base:self->_suffixString basePlaces:v7 baseUseMinusSign:self->_interstitialStrings isCustom:self->_interstitialStringInsertionIndexes interstitialStrings:v8 interstitialStringInsertionIndexes:self->_formatName indexFromRightOfLastDigitPlaceholder:self->_customFormatKey minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

@end