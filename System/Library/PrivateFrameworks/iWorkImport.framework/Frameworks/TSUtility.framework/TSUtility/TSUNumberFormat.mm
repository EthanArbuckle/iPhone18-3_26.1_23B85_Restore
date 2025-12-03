@interface TSUNumberFormat
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0;
+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 formatName:(id)self8;
- (BOOL)customFormatShouldAutoInsertPercentSymbol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)usesTabs;
- (NSString)description;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 prefixString:(id)self1 suffixString:(id)self2 isCustom:(BOOL)self3;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 interstitialStrings:(id)self8 interstitialStringInsertionIndexes:(id)self9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)placeholder minimumIntegerWidth:(unsigned __int8)width decimalWidth:(unsigned __int8)decimalWidth numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)digits numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)placeholderDigits isTextFormat:(BOOL)format formatName:(id)name customFormatKey:(id)key;
- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 suffixString:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initCustomFormatWithFormatString:(id)string currencyCode:(id)code showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)accuracy scaleFactor:(double)factor interstitialStrings:(id)strings interstitialStringInsertionIndexes:(id)indexes indexFromRightOfLastDigitPlaceholder:(unsigned __int16)self0 minimumIntegerWidth:(unsigned __int8)self1 decimalWidth:(unsigned __int8)self2 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)self3 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)self4 isTextFormat:(BOOL)self5 formatName:(id)self6;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)numberFormatBySettingNegativeStyle:(unsigned __int8)style;
- (id)numberFormatBySettingUseAccountingStyle:(BOOL)style;
- (id)stringFromDouble:(double)double locale:(id)locale;
- (id)stringFromDouble:(double)double locale:(id)locale decimalPlaces:(unsigned __int16)places minimumDecimalPlaces:(unsigned __int16)decimalPlaces forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromDouble:(double)double locale:(id)locale forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places;
- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places forceSuppressMinusSign:(BOOL)sign;
- (id)stringFromString:(id)string;
- (unint64_t)hash;
- (unsigned)decimalPlaces;
- (void)dealloc;
- (void)setFormatName:(id)name;
@end

@implementation TSUNumberFormat

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0
{
  LOWORD(v12) = __PAIR16__(accuracy, separator);
  v10 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:negativeStyle showThousandsSeparator:v12 fractionAccuracy:?];

  return v10;
}

+ (id)numberFormatWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 formatName:(id)self8
{
  BYTE6(v22) = 0;
  *(&v22 + 2) = 0;
  LOWORD(v22) = 0;
  BYTE5(v21) = custom;
  BYTE4(v21) = sign;
  WORD1(v21) = basePlaces;
  LOBYTE(v21) = base;
  LOWORD(v20) = __PAIR16__(accuracy, separator);
  v18 = [[self alloc] initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:negativeStyle showThousandsSeparator:factor fractionAccuracy:v20 prefixString:prefixString suffixString:suffixString scaleFactor:v21 base:0 basePlaces:0 baseUseMinusSign:v22 isCustom:name interstitialStrings:0 interstitialStringInsertionIndexes:? indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];

  return v18;
}

- (id)initCustomFormatWithFormatString:(id)string currencyCode:(id)code showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)accuracy scaleFactor:(double)factor interstitialStrings:(id)strings interstitialStringInsertionIndexes:(id)indexes indexFromRightOfLastDigitPlaceholder:(unsigned __int16)self0 minimumIntegerWidth:(unsigned __int8)self1 decimalWidth:(unsigned __int8)self2 numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)self3 numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)self4 isTextFormat:(BOOL)self5 formatName:(id)self6
{
  *(&v19 + 5) = __PAIR16__(format, placeholderDigits);
  *(&v19 + 3) = __PAIR16__(digits, decimalWidth);
  BYTE2(v19) = width;
  LOWORD(v19) = placeholder;
  *(&v18 + 2) = 16842752;
  LOBYTE(v18) = 10;
  BYTE1(v17) = accuracy;
  LOBYTE(v17) = separator;
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:0 decimalPlaces:string currencyCode:0 useAccountingStyle:code negativeStyle:0 showThousandsSeparator:0 fractionAccuracy:factor prefixString:v17 suffixString:0 scaleFactor:0 base:v18 basePlaces:strings baseUseMinusSign:indexes isCustom:v19 interstitialStrings:name interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0
{
  BYTE6(v11) = 1;
  WORD2(v11) = 0;
  BYTE2(v11) = 10;
  LOWORD(v11) = __PAIR16__(accuracy, separator);
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:base:basePlaces:baseUseMinusSign:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:negativeStyle fractionAccuracy:v11 base:? basePlaces:? baseUseMinusSign:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 base:(unsigned __int8)self1 basePlaces:(unsigned __int16)self2 baseUseMinusSign:(BOOL)self3
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = 0;
  BYTE4(v15) = sign;
  WORD1(v15) = basePlaces;
  LOBYTE(v15) = base;
  LOWORD(v14) = __PAIR16__(accuracy, separator);
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:negativeStyle fractionAccuracy:1.0 prefixString:v14 suffixString:0 scaleFactor:0 base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 prefixString:(id)self1 suffixString:(id)self2 isCustom:(BOOL)self3
{
  BYTE6(v16) = 0;
  *(&v16 + 2) = 0;
  LOWORD(v16) = 0;
  BYTE5(v15) = custom;
  BYTE4(v15) = 1;
  WORD1(v15) = 0;
  LOBYTE(v15) = 10;
  LOWORD(v14) = __PAIR16__(accuracy, separator);
  return [TSUNumberFormat initWithValueType:"initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:" formatString:*&type decimalPlaces:string currencyCode:places useAccountingStyle:code negativeStyle:style showThousandsSeparator:negativeStyle fractionAccuracy:1.0 prefixString:v14 suffixString:prefixString scaleFactor:suffixString base:v15 basePlaces:0 baseUseMinusSign:0 isCustom:v16 interstitialStrings:0 interstitialStringInsertionIndexes:0 indexFromRightOfLastDigitPlaceholder:? minimumIntegerWidth:? decimalWidth:? numberOfNonSpaceIntegerPlaceholderDigits:? numberOfNonSpaceDecimalPlaceholderDigits:? isTextFormat:? formatName:? customFormatKey:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 suffixString:(id)self1
{
  LOBYTE(v13) = 0;
  LOWORD(v12) = __PAIR16__(accuracy, separator);
  return [(TSUNumberFormat *)self initWithValueType:*&type formatString:string decimalPlaces:places currencyCode:code useAccountingStyle:style negativeStyle:negativeStyle showThousandsSeparator:v12 fractionAccuracy:0 prefixString:suffixString suffixString:v13 isCustom:?];
}

- (TSUNumberFormat)initWithValueType:(int)type formatString:(id)string decimalPlaces:(unsigned __int16)places currencyCode:(id)code useAccountingStyle:(BOOL)style negativeStyle:(unsigned __int8)negativeStyle showThousandsSeparator:(BOOL)separator fractionAccuracy:(char)self0 prefixString:(id)self1 suffixString:(id)self2 scaleFactor:(double)self3 base:(unsigned __int8)self4 basePlaces:(unsigned __int16)self5 baseUseMinusSign:(BOOL)self6 isCustom:(BOOL)self7 interstitialStrings:(id)self8 interstitialStringInsertionIndexes:(id)self9 indexFromRightOfLastDigitPlaceholder:(unsigned __int16)placeholder minimumIntegerWidth:(unsigned __int8)width decimalWidth:(unsigned __int8)decimalWidth numberOfNonSpaceIntegerPlaceholderDigits:(unsigned __int8)digits numberOfNonSpaceDecimalPlaceholderDigits:(unsigned __int8)placeholderDigits isTextFormat:(BOOL)format formatName:(id)name customFormatKey:(id)key
{
  negativeStyleCopy = negativeStyle;
  styleCopy = style;
  v33 = *&type;
  v53.receiver = self;
  v53.super_class = TSUNumberFormat;
  v34 = [(TSUNumberFormat *)&v53 init];
  v35 = v34;
  if (v34)
  {
    v34->_formatStringContainsTabCharacter = 0;
    v52 = styleCopy;
    if (custom)
    {
      if (!string)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v36, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 310, 0, "Passed a nil format string while creating a custom format!");
        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v35->_formatString = string;
      v35->_formatStringRequiresSuppressionOfMinusSign = 0;
      v37 = [string length];
      if (v37)
      {
        v38 = v37;
        for (i = 0; i != v38; ++i)
        {
          v40 = [string characterAtIndex:i];
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
      if (styleCopy)
      {
        v42 = 2;
      }

      else
      {
        v42 = negativeStyleCopy;
      }

      if (v33 != 1)
      {
        v42 = negativeStyleCopy;
      }

      if (v33 == 3)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      if (string)
      {
        v44 = [TSUNumberFormatter formatString:string transformedForNegativeStyle:v43];
      }

      else
      {
        v44 = [TSUNumberFormatter defaultFormatStringForValueType:v33 negativeStyle:v43];
      }

      v35->_formatString = v44;
      v35->_formatStringRequiresSuppressionOfMinusSign = negativeStyleCopy == 1;
    }

    placeholderDigitsCopy2 = placeholderDigits;
    if (code)
    {
      codeCopy = code;
    }

    else
    {
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"];
      v49 = v47;
      placeholderDigitsCopy2 = placeholderDigits;
      [TSUAssertionHandler handleFailureInFunction:v49 file:v48 lineNumber:352 isFatal:0 description:"We require the currencyCode from the locale you are using, don't pass in nil."];
      +[TSUAssertionHandler logBacktraceThrottled];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat initWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:prefixString:suffixString:scaleFactor:base:basePlaces:baseUseMinusSign:isCustom:interstitialStrings:interstitialStringInsertionIndexes:indexFromRightOfLastDigitPlaceholder:minimumIntegerWidth:decimalWidth:numberOfNonSpaceIntegerPlaceholderDigits:numberOfNonSpaceDecimalPlaceholderDigits:isTextFormat:formatName:customFormatKey:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v50, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 353, 0, "No locale passed in, falling to back current locale.");
      +[TSUAssertionHandler logBacktraceThrottled];
      codeCopy = [+[TSULocale currentLocale](TSULocale currencyCode];
    }

    v35->_currencyCode = codeCopy;
    v35->_valueType = v33;
    v35->_decimalPlaces = places;
    v35->_negativeStyle = negativeStyleCopy;
    v35->_showThousandsSeparator = separator;
    v35->_useAccountingStyle = v52;
    v35->_fractionAccuracy = accuracy;
    v35->_scaleFactor = factor;
    v35->_isCustom = custom;
    v35->_customFormatKey = key;
    v35->_interstitialStrings = strings;
    v35->_interstitialStringInsertionIndexes = indexes;
    v35->_isTextFormat = format;
    v35->_indexFromRightOfLastDigitPlaceholder = placeholder;
    v35->_minimumIntegerWidth = width;
    v35->_decimalWidth = decimalWidth;
    v35->_numberOfNonSpaceIntegerPlaceholderDigits = digits;
    v35->_numberOfNonSpaceDecimalPlaceholderDigits = placeholderDigitsCopy2;
    v35->_formatName = name;
    v35->_base = base;
    v35->_basePlaces = basePlaces;
    v35->_baseUseMinusSign = sign;
    v35->_suffixString = [suffixString copy];
    v35->_prefixString = [prefixString copy];
    if (custom)
    {
      v35->_formatContainsSpecialTokens = 0;
    }
  }

  return v35;
}

- (id)numberFormatBySettingNegativeStyle:(unsigned __int8)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  valueType = [(TSUNumberFormat *)self valueType];
  formatString = [(TSUNumberFormat *)self formatString];
  decimalPlaces = [(TSUNumberFormat *)self decimalPlaces];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  usesAccountingStyle = [(TSUNumberFormat *)self usesAccountingStyle];
  showThousandsSeparator = [(TSUNumberFormat *)self showThousandsSeparator];
  fractionAccuracy = [(TSUNumberFormat *)self fractionAccuracy];
  BYTE5(v15) = self->_isCustom;
  BYTE4(v15) = self->_baseUseMinusSign;
  WORD1(v15) = self->_basePlaces;
  LOBYTE(v15) = self->_base;
  BYTE1(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:usesAccountingStyle negativeStyle:styleCopy showThousandsSeparator:self->_scaleFactor fractionAccuracy:v14 prefixString:self->_prefixString suffixString:self->_suffixString scaleFactor:v15 base:self->_formatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
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
  BYTE5(v15) = self->_isCustom;
  BYTE4(v15) = self->_baseUseMinusSign;
  WORD1(v15) = self->_basePlaces;
  LOBYTE(v15) = self->_base;
  BYTE1(v14) = fractionAccuracy;
  LOBYTE(v14) = showThousandsSeparator;
  return [v5 numberFormatWithValueType:valueType formatString:formatString decimalPlaces:decimalPlaces currencyCode:currencyCode useAccountingStyle:styleCopy negativeStyle:negativeStyle showThousandsSeparator:self->_scaleFactor fractionAccuracy:v14 prefixString:self->_prefixString suffixString:self->_suffixString scaleFactor:v15 base:self->_formatName basePlaces:? baseUseMinusSign:? isCustom:? formatName:?];
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

- (void)setFormatName:(id)name
{
  nameCopy = name;

  self->_formatName = name;
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

- (id)stringFromDouble:(double)double locale:(id)locale forceSuppressMinusSign:(BOOL)sign
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)double locale:(id)locale
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places forceSuppressMinusSign:(BOOL)sign
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)double locale:(id)locale minimumDecimalPlaces:(unsigned __int16)places
{
  [(TSUNumberFormat *)self decimalPlaces];

  return MEMORY[0x2821F9670](self, sel_stringFromDouble_locale_decimalPlaces_minimumDecimalPlaces_forceSuppressMinusSign_);
}

- (id)stringFromDouble:(double)double locale:(id)locale decimalPlaces:(unsigned __int16)places minimumDecimalPlaces:(unsigned __int16)decimalPlaces forceSuppressMinusSign:(BOOL)sign
{
  valueType = self->_valueType;
  formatString = [(TSUNumberFormat *)self formatString];
  currencyCode = [(TSUNumberFormat *)self currencyCode];
  hasValidDecimalPlaces = [(TSUNumberFormat *)self hasValidDecimalPlaces];
  HIBYTE(v10) = self->_formatContainsSpecialTokens;
  LOBYTE(v10) = self->_isCustom;
  return sub_2770402CC(valueType, places, decimalPlaces, sign, formatString, currencyCode, hasValidDecimalPlaces, self->_interstitialStrings, double, self->_scaleFactor, self->_interstitialStringInsertionIndexes, __SPAIR64__(*&self->_numberOfHashDecimalPlaceholders, *&self->_minimumIntegerWidth), self->_formatStringRequiresSuppressionOfMinusSign, self->_isTextFormat, v10, *&self->_formatContainsIntegerToken, [(TSUNumberFormat *)self showThousandsSeparator], self->_useAccountingStyle, *&self->_useScientificFormattingAutomatically, self->_base, self->_basePlaces, self->_baseUseMinusSign, self->_fractionAccuracy, locale);
}

- (id)stringFromString:(id)string
{
  if (!self->_isTextFormat)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUNumberFormat stringFromString:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 655, 0, "Attempt to generate a string from a string with a non-text number format!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v6 = [MEMORY[0x277CCAB68] stringWithString:self->_formatString];
  [v6 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{TSUCustomNumberFormatTextReplacementCharacter), string, 0, 0, objc_msgSend(v6, "length")}];
  return v6;
}

- (BOOL)isEquivalent:(id)equivalent
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  valueType = self->_valueType;
  if (valueType != *(equivalent + 2))
  {
    goto LABEL_26;
  }

  if (valueType > 2)
  {
    switch(valueType)
    {
      case 3:
        decimalPlaces = self->_decimalPlaces;
        v7 = *(equivalent + 6);
        goto LABEL_29;
      case 4:
        decimalPlaces = self->_fractionAccuracy;
        v7 = *(equivalent + 15);
        goto LABEL_29;
      case 5:
        if (self->_base == *(equivalent + 28) && self->_basePlaces == *(equivalent + 15))
        {
          decimalPlaces = self->_baseUseMinusSign;
          v7 = *(equivalent + 27);
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

  if (!valueType)
  {
LABEL_7:
    if (self->_decimalPlaces == *(equivalent + 6) && self->_negativeStyle == *(equivalent + 14))
    {
      decimalPlaces = self->_showThousandsSeparator;
      v7 = *(equivalent + 17);
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

  if (self->_decimalPlaces != *(equivalent + 6))
  {
    goto LABEL_26;
  }

  currencyCode = self->_currencyCode;
  if (!(currencyCode | *(equivalent + 7)) || (v8 = [(NSString *)currencyCode isEqualToString:?]))
  {
    if (self->_negativeStyle == *(equivalent + 14) && self->_showThousandsSeparator == *(equivalent + 17))
    {
      decimalPlaces = self->_useAccountingStyle;
      v7 = *(equivalent + 16);
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_valueType != *(equal + 2))
  {
    goto LABEL_38;
  }

  formatString = self->_formatString;
  if (formatString | *(equal + 6))
  {
    v6 = [(NSString *)formatString isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_decimalPlaces != *(equal + 6))
  {
    goto LABEL_38;
  }

  currencyCode = self->_currencyCode;
  if (currencyCode | *(equal + 7))
  {
    v6 = [(NSString *)currencyCode isEqualToString:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_useAccountingStyle != *(equal + 16) || self->_negativeStyle != *(equal + 14) || self->_showThousandsSeparator != *(equal + 17) || self->_fractionAccuracy != *(equal + 15) || self->_formatStringRequiresSuppressionOfMinusSign != *(equal + 18) || self->_isCustom != *(equal + 21))
  {
    goto LABEL_38;
  }

  customFormatKey = self->_customFormatKey;
  if (customFormatKey | *(equal + 11))
  {
    v6 = [(NSUUID *)customFormatKey isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_scaleFactor != *(equal + 5) || self->_formatStringContainsTabCharacter != *(equal + 22) || self->_requiresFractionReplacement != *(equal + 25))
  {
    goto LABEL_38;
  }

  interstitialStrings = self->_interstitialStrings;
  if (interstitialStrings | *(equal + 8))
  {
    v6 = [(NSArray *)interstitialStrings isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  interstitialStringInsertionIndexes = self->_interstitialStringInsertionIndexes;
  if (interstitialStringInsertionIndexes | *(equal + 9))
  {
    v6 = [(NSIndexSet *)interstitialStringInsertionIndexes isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_indexFromRightOfLastDigitPlaceholder != *(equal + 17) || self->_isTextFormat != *(equal + 26) || self->_minimumIntegerWidth != *(equal + 36) || self->_decimalWidth != *(equal + 37) || self->_numberOfNonSpaceIntegerPlaceholderDigits != *(equal + 38) || self->_numberOfNonSpaceDecimalPlaceholderDigits != *(equal + 39))
  {
    goto LABEL_38;
  }

  formatName = self->_formatName;
  if (formatName | *(equal + 10))
  {
    v6 = [(NSString *)formatName isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if (self->_base != *(equal + 28) || self->_basePlaces != *(equal + 15) || self->_baseUseMinusSign != *(equal + 27))
  {
LABEL_38:
    LOBYTE(v6) = 0;
    return v6;
  }

  suffixString = self->_suffixString;
  if (!(suffixString | *(equal + 13)) || (v6 = [(NSString *)suffixString isEqual:?]) != 0)
  {
    prefixString = self->_prefixString;
    if (prefixString | *(equal + 12))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSUMutableNumberFormat allocWithZone:zone];
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