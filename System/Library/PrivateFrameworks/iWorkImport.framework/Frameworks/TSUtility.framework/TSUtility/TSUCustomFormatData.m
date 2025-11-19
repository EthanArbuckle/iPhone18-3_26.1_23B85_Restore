@interface TSUCustomFormatData
+ (id)customFormatData;
- (BOOL)isEqual:(id)a3;
- (TSUCustomFormatData)init;
- (TSUCustomFormatData)initWithCustomFormatData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)p_copySelfTo:(id)a3;
@end

@implementation TSUCustomFormatData

+ (id)customFormatData
{
  v2 = objc_alloc_init(TSUCustomFormatData);

  return v2;
}

- (TSUCustomFormatData)initWithCustomFormatData:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TSUCustomFormatData;
  v5 = [(TSUCustomFormatData *)&v7 init];
  if (v5)
  {
    [v4 p_copySelfTo:v5];
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

- (void)p_copySelfTo:(id)a3
{
  v7 = a3;
  v4 = [(TSUCustomFormatData *)self formatString];
  [v7 setFormatString:v4];

  v5 = [(TSUCustomFormatData *)self interstitialStrings];
  [v7 setInterstitialStrings:v5];

  v6 = [(TSUCustomFormatData *)self interstitialStringInsertionIndexes];
  [v7 setInterstitialStringInsertionIndexes:v6];

  [(TSUCustomFormatData *)self scaleFactor];
  [v7 setScaleFactor:?];
  [v7 setFractionAccuracy:{-[TSUCustomFormatData fractionAccuracy](self, "fractionAccuracy")}];
  [v7 setMinimumIntegerWidth:{-[TSUCustomFormatData minimumIntegerWidth](self, "minimumIntegerWidth")}];
  [v7 setDecimalWidth:{-[TSUCustomFormatData decimalWidth](self, "decimalWidth")}];
  [v7 setNumberOfNonSpaceIntegerPlaceholderDigits:{-[TSUCustomFormatData numberOfNonSpaceIntegerPlaceholderDigits](self, "numberOfNonSpaceIntegerPlaceholderDigits")}];
  [v7 setNumberOfNonSpaceDecimalPlaceholderDigits:{-[TSUCustomFormatData numberOfNonSpaceDecimalPlaceholderDigits](self, "numberOfNonSpaceDecimalPlaceholderDigits")}];
  [v7 setIndexFromRightOfLastDigitPlaceholder:{-[TSUCustomFormatData indexFromRightOfLastDigitPlaceholder](self, "indexFromRightOfLastDigitPlaceholder")}];
  [v7 setNumberOfHashDecimalPlaceholders:{-[TSUCustomFormatData numberOfHashDecimalPlaceholders](self, "numberOfHashDecimalPlaceholders")}];
  [v7 setTotalNumberOfDecimalPlaceholdersInFormat:-[TSUCustomFormatData totalNumberOfDecimalPlaceholdersInFormat](self, "totalNumberOfDecimalPlaceholdersInFormat")];
  [v7 setCurrencyCodeIndex:{-[TSUCustomFormatData currencyCodeIndex](self, "currencyCodeIndex")}];
  [v7 setShowThousandsSeparator:{-[TSUCustomFormatData showThousandsSeparator](self, "showThousandsSeparator")}];
  [v7 setUseAccountingStyle:{-[TSUCustomFormatData useAccountingStyle](self, "useAccountingStyle")}];
  [v7 setRequiresFractionReplacement:{-[TSUCustomFormatData requiresFractionReplacement](self, "requiresFractionReplacement")}];
  [v7 setIsConditional:{-[TSUCustomFormatData isConditional](self, "isConditional")}];
  [v7 setFormatContainsIntegerToken:{-[TSUCustomFormatData formatContainsIntegerToken](self, "formatContainsIntegerToken")}];
  [v7 setIsComplexFormat:-[TSUCustomFormatData isComplexFormat](self, "isComplexFormat")];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(TSUCustomFormatData *)[TSUMutableCustomFormatData allocWithZone:?]];
  [(TSUCustomFormatData *)self p_copySelfTo:v4];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = [(TSUCustomFormatData *)self showThousandsSeparator];
  if (v7 != [v6 showThousandsSeparator])
  {
    goto LABEL_30;
  }

  v8 = [(TSUCustomFormatData *)self useAccountingStyle];
  if (v8 != [v6 useAccountingStyle])
  {
    goto LABEL_30;
  }

  v9 = [(TSUCustomFormatData *)self requiresFractionReplacement];
  if (v9 != [v6 requiresFractionReplacement])
  {
    goto LABEL_30;
  }

  v10 = [(TSUCustomFormatData *)self isConditional];
  if (v10 != [v6 isConditional])
  {
    goto LABEL_30;
  }

  v11 = [(TSUCustomFormatData *)self formatContainsIntegerToken];
  if (v11 != [v6 formatContainsIntegerToken])
  {
    goto LABEL_30;
  }

  v12 = [(TSUCustomFormatData *)self isComplexFormat];
  if (v12 != [v6 isComplexFormat])
  {
    goto LABEL_30;
  }

  v13 = [(TSUCustomFormatData *)self fractionAccuracy];
  if (v13 != [v6 fractionAccuracy])
  {
    goto LABEL_30;
  }

  v14 = [(TSUCustomFormatData *)self minimumIntegerWidth];
  if (v14 != [v6 minimumIntegerWidth])
  {
    goto LABEL_30;
  }

  v15 = [(TSUCustomFormatData *)self decimalWidth];
  if (v15 != [v6 decimalWidth])
  {
    goto LABEL_30;
  }

  v16 = [(TSUCustomFormatData *)self numberOfNonSpaceIntegerPlaceholderDigits];
  if (v16 != [v6 numberOfNonSpaceIntegerPlaceholderDigits])
  {
    goto LABEL_30;
  }

  v17 = [(TSUCustomFormatData *)self numberOfNonSpaceDecimalPlaceholderDigits];
  if (v17 != [v6 numberOfNonSpaceDecimalPlaceholderDigits])
  {
    goto LABEL_30;
  }

  v18 = [(TSUCustomFormatData *)self indexFromRightOfLastDigitPlaceholder];
  if (v18 != [v6 indexFromRightOfLastDigitPlaceholder])
  {
    goto LABEL_30;
  }

  v19 = [(TSUCustomFormatData *)self numberOfHashDecimalPlaceholders];
  if (v19 != [v6 numberOfHashDecimalPlaceholders])
  {
    goto LABEL_30;
  }

  v20 = [(TSUCustomFormatData *)self totalNumberOfDecimalPlaceholdersInFormat];
  if (v20 != [v6 totalNumberOfDecimalPlaceholdersInFormat])
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

  v24 = [(TSUCustomFormatData *)self currencyCodeIndex];
  if (v24 != [v6 currencyCodeIndex])
  {
    goto LABEL_30;
  }

  v25 = [(TSUCustomFormatData *)self formatString];

  if (v25)
  {
    v26 = [(TSUCustomFormatData *)self formatString];
    v27 = [v6 formatString];
    v28 = [v26 isEqualToString:v27];

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v29 = [v6 formatString];

    if (v29)
    {
      goto LABEL_30;
    }
  }

  v30 = [(TSUCustomFormatData *)self interstitialStrings];

  if (v30)
  {
    v31 = [(TSUCustomFormatData *)self interstitialStrings];
    v32 = [v6 interstitialStrings];
    v33 = [v31 isEqualToArray:v32];

    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = [v6 interstitialStrings];

    if (v34)
    {
      goto LABEL_30;
    }
  }

  v35 = [(TSUCustomFormatData *)self interstitialStringInsertionIndexes];

  if (!v35)
  {
    v40 = [v6 interstitialStringInsertionIndexes];

    if (!v40)
    {
      goto LABEL_28;
    }

LABEL_30:
    v39 = 0;
    goto LABEL_31;
  }

  v36 = [(TSUCustomFormatData *)self interstitialStringInsertionIndexes];
  v37 = [v6 interstitialStringInsertionIndexes];
  v38 = [v36 isEqualToIndexSet:v37];

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
  v2 = [(TSUCustomFormatData *)self formatString];
  v3 = [v2 hash];

  return v3;
}

@end