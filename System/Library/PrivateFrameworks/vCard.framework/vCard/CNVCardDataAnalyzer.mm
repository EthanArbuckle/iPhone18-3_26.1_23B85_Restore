@interface CNVCardDataAnalyzer
+ (BOOL)data:(id)data containsParam:(id)param value:(id)value encoding:(unint64_t)encoding;
+ (BOOL)data:(id)data containsString:(id)string encoding:(unint64_t)encoding;
+ (BOOL)data:(id)data containsSubdata:(id)subdata;
+ (BOOL)data:(id)data hasPrefix:(id)prefix;
+ (BOOL)data:(id)data isVersion30WithPrefix:(id)prefix encoding:(unint64_t)encoding;
+ (BOOL)tryUTF16BEBOMVCard:(id)card analysis:(CNVCardDataAnalysis *)analysis;
+ (BOOL)tryUTF16ByInferrence:(id)inferrence analysis:(CNVCardDataAnalysis *)analysis;
+ (BOOL)tryUTF16LEBOMVCard:(id)card analysis:(CNVCardDataAnalysis *)analysis;
+ (BOOL)tryUTF16WithByteOrderMarker:(id)marker analysis:(CNVCardDataAnalysis *)analysis;
+ (BOOL)tryVCardEncoding:(unint64_t)encoding data:(id)data analysis:(CNVCardDataAnalysis *)analysis;
+ (CNVCardDataAnalysis)analyzeData:(id)data;
+ (id)data:(id)data byPrependingData:(id)prependingData;
+ (unsigned)data:(id)data byteAtIndex:(unint64_t)index;
@end

@implementation CNVCardDataAnalyzer

+ (CNVCardDataAnalysis)analyzeData:(id)data
{
  dataCopy = data;
  v7 = 0;
  v8 = 0;
  if ([dataCopy length] && (objc_msgSend(self, "tryUTF8VCard:analysis:", dataCopy, &v7) & 1) == 0 && (objc_msgSend(self, "tryUTF16LEVCard:analysis:", dataCopy, &v7) & 1) == 0 && (objc_msgSend(self, "tryUTF16BEVCard:analysis:", dataCopy, &v7) & 1) == 0 && (objc_msgSend(self, "tryUTF16LEBOMVCard:analysis:", dataCopy, &v7) & 1) == 0 && (objc_msgSend(self, "tryUTF16BEBOMVCard:analysis:", dataCopy, &v7) & 1) == 0 && (objc_msgSend(self, "tryUTF16WithByteOrderMarker:analysis:", dataCopy, &v7) & 1) == 0)
  {
    [self tryUTF16ByInferrence:dataCopy analysis:&v7];
  }

  v5 = v7;
  v6 = v8;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

+ (BOOL)tryUTF16LEBOMVCard:(id)card analysis:(CNVCardDataAnalysis *)analysis
{
  cardCopy = card;
  v7 = [@"BEGIN:VCARD" dataUsingEncoding:2483028224];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:"\xFF\xFE" length:2];
  v9 = [self data:v7 byPrependingData:v8];

  v10 = [self data:cardCopy isVersion30WithPrefix:v9 encoding:2483028224];
  if (v10)
  {
    analysis->var0 = 2483028224;
    analysis->var1 = 1;
  }

  return v10;
}

+ (BOOL)tryUTF16BEBOMVCard:(id)card analysis:(CNVCardDataAnalysis *)analysis
{
  cardCopy = card;
  v7 = [@"BEGIN:VCARD" dataUsingEncoding:2415919360];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:"\xFE\xFF" length:2];
  v9 = [self data:v7 byPrependingData:v8];

  v10 = [self data:cardCopy isVersion30WithPrefix:v9 encoding:2415919360];
  if (v10)
  {
    analysis->var0 = 2415919360;
    analysis->var1 = 1;
  }

  return v10;
}

+ (BOOL)tryVCardEncoding:(unint64_t)encoding data:(id)data analysis:(CNVCardDataAnalysis *)analysis
{
  dataCopy = data;
  v9 = [@"BEGIN:VCARD" dataUsingEncoding:encoding];
  v10 = [self data:dataCopy isVersion30WithPrefix:v9 encoding:encoding];

  if (v10)
  {
    analysis->var0 = encoding;
  }

  return v10;
}

+ (BOOL)data:(id)data isVersion30WithPrefix:(id)prefix encoding:(unint64_t)encoding
{
  dataCopy = data;
  if ([self data:dataCopy hasPrefix:prefix])
  {
    if ([self data:dataCopy containsString:@"VERSION:3.0" encoding:encoding])
    {
      v9 = 1;
    }

    else
    {
      v9 = [self data:dataCopy containsParam:@"VERSION" value:@"3.0" encoding:encoding];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)data:(id)data containsString:(id)string encoding:(unint64_t)encoding
{
  dataCopy = data;
  v9 = [string dataUsingEncoding:encoding];
  LOBYTE(string) = [self data:dataCopy containsSubdata:v9];

  return string;
}

+ (BOOL)data:(id)data containsParam:(id)param value:(id)value encoding:(unint64_t)encoding
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  valueCopy = value;
  v11 = [param dataUsingEncoding:encoding];
  v12 = [dataCopy rangeOfData:v11 options:0 range:{0, objc_msgSend(dataCopy, "length")}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v15 = v12 + v13;
    [dataCopy length];
    v29 = valueCopy;
    v28 = [valueCopy dataUsingEncoding:encoding];
    v16 = [dataCopy rangeOfData:? options:? range:?];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v17 = v16;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = [&unk_28865B668 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = v17 - v15;
        v21 = *v31;
        v27 = v11;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(&unk_28865B668);
            }

            v23 = [*(*(&v30 + 1) + 8 * i) dataUsingEncoding:encoding];
            v24 = [dataCopy rangeOfData:v23 options:0 range:{v15, v20}];

            if (v24 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = 0;
              v11 = v27;
              goto LABEL_16;
            }
          }

          v19 = [&unk_28865B668 countByEnumeratingWithState:&v30 objects:v34 count:16];
          v14 = 1;
          v11 = v27;
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 1;
      }
    }

LABEL_16:

    valueCopy = v29;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)tryUTF16WithByteOrderMarker:(id)marker analysis:(CNVCardDataAnalysis *)analysis
{
  markerCopy = marker;
  v7 = [self data:markerCopy byteAtIndex:0];
  v8 = [self data:markerCopy byteAtIndex:1];

  if (v7 == 254 && v8 == 255)
  {
    v9 = 2415919360;
LABEL_7:
    analysis->var0 = v9;
    result = 1;
    analysis->var1 = 1;
    return result;
  }

  result = 0;
  if (v7 == 255 && v8 == 254)
  {
    v9 = 2483028224;
    goto LABEL_7;
  }

  return result;
}

+ (BOOL)tryUTF16ByInferrence:(id)inferrence analysis:(CNVCardDataAnalysis *)analysis
{
  inferrenceCopy = inferrence;
  v7 = [inferrenceCopy length];
  if (v7 >= 0x16)
  {
    v8 = 22;
  }

  else
  {
    v8 = v7;
  }

  if (v7 < 0x16)
  {
    goto LABEL_5;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    if (![self data:inferrenceCopy byteAtIndex:v10])
    {
      ++v12;
    }

    if (![self data:inferrenceCopy byteAtIndex:v10 + 1])
    {
      ++v11;
    }

    v10 += 2;
  }

  while (v10 < v8);
  v13 = vcvtd_n_f64_u64(v8, 1uLL);
  if (v12 / v13 > 0.8)
  {
    v14 = 2415919360;
LABEL_16:
    analysis->var0 = v14;
    v9 = 1;
    goto LABEL_17;
  }

  if (v11 / v13 > 0.8)
  {
    v14 = 2483028224;
    goto LABEL_16;
  }

LABEL_5:
  v9 = 0;
LABEL_17:

  return v9;
}

+ (unsigned)data:(id)data byteAtIndex:(unint64_t)index
{
  v5 = 0;
  [data getBytes:&v5 range:{index, 1}];
  return v5;
}

+ (BOOL)data:(id)data hasPrefix:(id)prefix
{
  prefixCopy = prefix;
  dataCopy = data;
  v7 = [dataCopy rangeOfData:prefixCopy options:0 range:{0, objc_msgSend(dataCopy, "length")}];

  return v7 == 0;
}

+ (BOOL)data:(id)data containsSubdata:(id)subdata
{
  subdataCopy = subdata;
  dataCopy = data;
  v7 = [dataCopy rangeOfData:subdataCopy options:0 range:{0, objc_msgSend(dataCopy, "length")}];

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

+ (id)data:(id)data byPrependingData:(id)prependingData
{
  v5 = MEMORY[0x277CBEB28];
  prependingDataCopy = prependingData;
  dataCopy = data;
  data = [v5 data];
  [data appendData:prependingDataCopy];

  [data appendData:dataCopy];

  return data;
}

@end