@interface TSUCustomFormatData
+ (id)customFormatData;
- (BOOL)isEqual:(id)equal;
- (TSUCustomFormatData)init;
- (TSUCustomFormatData)initWithCustomFormatData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)p_copySelfTo:(id)to;
@end

@implementation TSUCustomFormatData

+ (id)customFormatData
{
  v2 = objc_alloc_init(TSUCustomFormatData);

  return v2;
}

- (TSUCustomFormatData)initWithCustomFormatData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = TSUCustomFormatData;
  v5 = [(TSUCustomFormatData *)&v7 init];
  if (v5)
  {
    [dataCopy p_copySelfTo:v5];
    v5->_formatCacheKey = atomic_fetch_add(&qword_280A62C08, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v5;
}

- (TSUCustomFormatData)init
{
  v4.receiver = self;
  v4.super_class = TSUCustomFormatData;
  result = [(TSUCustomFormatData *)&v4 init];
  if (result)
  {
    result->_fractionAccuracy = -3;
    *&result->_showThousandsSeparator = 0;
    result->_formatContainsIntegerToken = 1;
    add = atomic_fetch_add(&qword_280A62C08, 0xFFFFFFFFFFFFFFFFLL);
    result->_scaleFactor = 1.0;
    result->_formatCacheKey = add;
  }

  return result;
}

- (void)p_copySelfTo:(id)to
{
  toCopy = to;
  formatString = [(TSUCustomFormatData *)self formatString];
  [toCopy setFormatString:formatString];

  interstitialStrings = [(TSUCustomFormatData *)self interstitialStrings];
  [toCopy setInterstitialStrings:interstitialStrings];

  interstitialStringInsertionIndexes = [(TSUCustomFormatData *)self interstitialStringInsertionIndexes];
  [toCopy setInterstitialStringInsertionIndexes:interstitialStringInsertionIndexes];

  [(TSUCustomFormatData *)self scaleFactor];
  [toCopy setScaleFactor:?];
  [toCopy setFractionAccuracy:{-[TSUCustomFormatData fractionAccuracy](self, "fractionAccuracy")}];
  [toCopy setMinimumIntegerWidth:{-[TSUCustomFormatData minimumIntegerWidth](self, "minimumIntegerWidth")}];
  [toCopy setDecimalWidth:{-[TSUCustomFormatData decimalWidth](self, "decimalWidth")}];
  [toCopy setNumberOfNonSpaceIntegerPlaceholderDigits:{-[TSUCustomFormatData numberOfNonSpaceIntegerPlaceholderDigits](self, "numberOfNonSpaceIntegerPlaceholderDigits")}];
  [toCopy setNumberOfNonSpaceDecimalPlaceholderDigits:{-[TSUCustomFormatData numberOfNonSpaceDecimalPlaceholderDigits](self, "numberOfNonSpaceDecimalPlaceholderDigits")}];
  [toCopy setIndexFromRightOfLastDigitPlaceholder:{-[TSUCustomFormatData indexFromRightOfLastDigitPlaceholder](self, "indexFromRightOfLastDigitPlaceholder")}];
  [toCopy setNumberOfHashDecimalPlaceholders:{-[TSUCustomFormatData numberOfHashDecimalPlaceholders](self, "numberOfHashDecimalPlaceholders")}];
  [toCopy setTotalNumberOfDecimalPlaceholdersInFormat:-[TSUCustomFormatData totalNumberOfDecimalPlaceholdersInFormat](self, "totalNumberOfDecimalPlaceholdersInFormat")];
  [toCopy setCurrencyCodeIndex:{-[TSUCustomFormatData currencyCodeIndex](self, "currencyCodeIndex")}];
  [toCopy setShowThousandsSeparator:{-[TSUCustomFormatData showThousandsSeparator](self, "showThousandsSeparator")}];
  [toCopy setUseAccountingStyle:{-[TSUCustomFormatData useAccountingStyle](self, "useAccountingStyle")}];
  [toCopy setRequiresFractionReplacement:{-[TSUCustomFormatData requiresFractionReplacement](self, "requiresFractionReplacement")}];
  [toCopy setIsConditional:{-[TSUCustomFormatData isConditional](self, "isConditional")}];
  [toCopy setFormatContainsIntegerToken:{-[TSUCustomFormatData formatContainsIntegerToken](self, "formatContainsIntegerToken")}];
  [toCopy setIsComplexFormat:-[TSUCustomFormatData isComplexFormat](self, "isComplexFormat")];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(TSUCustomFormatData *)[TSUMutableCustomFormatData allocWithZone:?]];
  [(TSUCustomFormatData *)self p_copySelfTo:v4];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (!v6)
  {
    goto LABEL_30;
  }

  showThousandsSeparator = [(TSUCustomFormatData *)self showThousandsSeparator];
  if (showThousandsSeparator != [v6 showThousandsSeparator])
  {
    goto LABEL_30;
  }

  useAccountingStyle = [(TSUCustomFormatData *)self useAccountingStyle];
  if (useAccountingStyle != [v6 useAccountingStyle])
  {
    goto LABEL_30;
  }

  requiresFractionReplacement = [(TSUCustomFormatData *)self requiresFractionReplacement];
  if (requiresFractionReplacement != [v6 requiresFractionReplacement])
  {
    goto LABEL_30;
  }

  isConditional = [(TSUCustomFormatData *)self isConditional];
  if (isConditional != [v6 isConditional])
  {
    goto LABEL_30;
  }

  formatContainsIntegerToken = [(TSUCustomFormatData *)self formatContainsIntegerToken];
  if (formatContainsIntegerToken != [v6 formatContainsIntegerToken])
  {
    goto LABEL_30;
  }

  isComplexFormat = [(TSUCustomFormatData *)self isComplexFormat];
  if (isComplexFormat != [v6 isComplexFormat])
  {
    goto LABEL_30;
  }

  fractionAccuracy = [(TSUCustomFormatData *)self fractionAccuracy];
  if (fractionAccuracy != [v6 fractionAccuracy])
  {
    goto LABEL_30;
  }

  minimumIntegerWidth = [(TSUCustomFormatData *)self minimumIntegerWidth];
  if (minimumIntegerWidth != [v6 minimumIntegerWidth])
  {
    goto LABEL_30;
  }

  decimalWidth = [(TSUCustomFormatData *)self decimalWidth];
  if (decimalWidth != [v6 decimalWidth])
  {
    goto LABEL_30;
  }

  numberOfNonSpaceIntegerPlaceholderDigits = [(TSUCustomFormatData *)self numberOfNonSpaceIntegerPlaceholderDigits];
  if (numberOfNonSpaceIntegerPlaceholderDigits != [v6 numberOfNonSpaceIntegerPlaceholderDigits])
  {
    goto LABEL_30;
  }

  numberOfNonSpaceDecimalPlaceholderDigits = [(TSUCustomFormatData *)self numberOfNonSpaceDecimalPlaceholderDigits];
  if (numberOfNonSpaceDecimalPlaceholderDigits != [v6 numberOfNonSpaceDecimalPlaceholderDigits])
  {
    goto LABEL_30;
  }

  indexFromRightOfLastDigitPlaceholder = [(TSUCustomFormatData *)self indexFromRightOfLastDigitPlaceholder];
  if (indexFromRightOfLastDigitPlaceholder != [v6 indexFromRightOfLastDigitPlaceholder])
  {
    goto LABEL_30;
  }

  numberOfHashDecimalPlaceholders = [(TSUCustomFormatData *)self numberOfHashDecimalPlaceholders];
  if (numberOfHashDecimalPlaceholders != [v6 numberOfHashDecimalPlaceholders])
  {
    goto LABEL_30;
  }

  totalNumberOfDecimalPlaceholdersInFormat = [(TSUCustomFormatData *)self totalNumberOfDecimalPlaceholdersInFormat];
  if (totalNumberOfDecimalPlaceholdersInFormat != [v6 totalNumberOfDecimalPlaceholdersInFormat])
  {
    goto LABEL_30;
  }

  [(TSUCustomFormatData *)self scaleFactor];
  v22 = v21;
  [v6 scaleFactor];
  if (v22 != v23)
  {
    goto LABEL_30;
  }

  currencyCodeIndex = [(TSUCustomFormatData *)self currencyCodeIndex];
  if (currencyCodeIndex != [v6 currencyCodeIndex])
  {
    goto LABEL_30;
  }

  formatString = [(TSUCustomFormatData *)self formatString];

  if (formatString)
  {
    formatString2 = [(TSUCustomFormatData *)self formatString];
    formatString3 = [v6 formatString];
    v28 = [formatString2 isEqualToString:formatString3];

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    formatString4 = [v6 formatString];

    if (formatString4)
    {
      goto LABEL_30;
    }
  }

  interstitialStrings = [(TSUCustomFormatData *)self interstitialStrings];

  if (interstitialStrings)
  {
    interstitialStrings2 = [(TSUCustomFormatData *)self interstitialStrings];
    interstitialStrings3 = [v6 interstitialStrings];
    v33 = [interstitialStrings2 isEqualToArray:interstitialStrings3];

    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    interstitialStrings4 = [v6 interstitialStrings];

    if (interstitialStrings4)
    {
      goto LABEL_30;
    }
  }

  interstitialStringInsertionIndexes = [(TSUCustomFormatData *)self interstitialStringInsertionIndexes];

  if (!interstitialStringInsertionIndexes)
  {
    interstitialStringInsertionIndexes2 = [v6 interstitialStringInsertionIndexes];

    if (!interstitialStringInsertionIndexes2)
    {
      goto LABEL_28;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_31;
  }

  interstitialStringInsertionIndexes3 = [(TSUCustomFormatData *)self interstitialStringInsertionIndexes];
  interstitialStringInsertionIndexes4 = [v6 interstitialStringInsertionIndexes];
  v38 = [interstitialStringInsertionIndexes3 isEqualToIndexSet:interstitialStringInsertionIndexes4];

  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  v39 = 1;
LABEL_31:

  return v39;
}

- (unint64_t)hash
{
  formatString = [(TSUCustomFormatData *)self formatString];
  v3 = [formatString hash];

  return v3;
}

@end