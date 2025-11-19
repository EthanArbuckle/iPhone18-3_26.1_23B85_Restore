@interface CNVCardDataAnalyzer
+ (BOOL)data:(id)a3 containsParam:(id)a4 value:(id)a5 encoding:(unint64_t)a6;
+ (BOOL)data:(id)a3 containsString:(id)a4 encoding:(unint64_t)a5;
+ (BOOL)data:(id)a3 containsSubdata:(id)a4;
+ (BOOL)data:(id)a3 hasPrefix:(id)a4;
+ (BOOL)data:(id)a3 isVersion30WithPrefix:(id)a4 encoding:(unint64_t)a5;
+ (BOOL)tryUTF16BEBOMVCard:(id)a3 analysis:(CNVCardDataAnalysis *)a4;
+ (BOOL)tryUTF16ByInferrence:(id)a3 analysis:(CNVCardDataAnalysis *)a4;
+ (BOOL)tryUTF16LEBOMVCard:(id)a3 analysis:(CNVCardDataAnalysis *)a4;
+ (BOOL)tryUTF16WithByteOrderMarker:(id)a3 analysis:(CNVCardDataAnalysis *)a4;
+ (BOOL)tryVCardEncoding:(unint64_t)a3 data:(id)a4 analysis:(CNVCardDataAnalysis *)a5;
+ (CNVCardDataAnalysis)analyzeData:(id)a3;
+ (id)data:(id)a3 byPrependingData:(id)a4;
+ (unsigned)data:(id)a3 byteAtIndex:(unint64_t)a4;
@end

@implementation CNVCardDataAnalyzer

+ (CNVCardDataAnalysis)analyzeData:(id)a3
{
  v4 = a3;
  v7 = 0;
  v8 = 0;
  if ([v4 length] && (objc_msgSend(a1, "tryUTF8VCard:analysis:", v4, &v7) & 1) == 0 && (objc_msgSend(a1, "tryUTF16LEVCard:analysis:", v4, &v7) & 1) == 0 && (objc_msgSend(a1, "tryUTF16BEVCard:analysis:", v4, &v7) & 1) == 0 && (objc_msgSend(a1, "tryUTF16LEBOMVCard:analysis:", v4, &v7) & 1) == 0 && (objc_msgSend(a1, "tryUTF16BEBOMVCard:analysis:", v4, &v7) & 1) == 0 && (objc_msgSend(a1, "tryUTF16WithByteOrderMarker:analysis:", v4, &v7) & 1) == 0)
  {
    [a1 tryUTF16ByInferrence:v4 analysis:&v7];
  }

  v5 = v7;
  v6 = v8;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

+ (BOOL)tryUTF16LEBOMVCard:(id)a3 analysis:(CNVCardDataAnalysis *)a4
{
  v6 = a3;
  v7 = [@"BEGIN:VCARD" dataUsingEncoding:2483028224];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:"\xFF\xFE" length:2];
  v9 = [a1 data:v7 byPrependingData:v8];

  v10 = [a1 data:v6 isVersion30WithPrefix:v9 encoding:2483028224];
  if (v10)
  {
    a4->var0 = 2483028224;
    a4->var1 = 1;
  }

  return v10;
}

+ (BOOL)tryUTF16BEBOMVCard:(id)a3 analysis:(CNVCardDataAnalysis *)a4
{
  v6 = a3;
  v7 = [@"BEGIN:VCARD" dataUsingEncoding:2415919360];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:"\xFE\xFF" length:2];
  v9 = [a1 data:v7 byPrependingData:v8];

  v10 = [a1 data:v6 isVersion30WithPrefix:v9 encoding:2415919360];
  if (v10)
  {
    a4->var0 = 2415919360;
    a4->var1 = 1;
  }

  return v10;
}

+ (BOOL)tryVCardEncoding:(unint64_t)a3 data:(id)a4 analysis:(CNVCardDataAnalysis *)a5
{
  v8 = a4;
  v9 = [@"BEGIN:VCARD" dataUsingEncoding:a3];
  v10 = [a1 data:v8 isVersion30WithPrefix:v9 encoding:a3];

  if (v10)
  {
    a5->var0 = a3;
  }

  return v10;
}

+ (BOOL)data:(id)a3 isVersion30WithPrefix:(id)a4 encoding:(unint64_t)a5
{
  v8 = a3;
  if ([a1 data:v8 hasPrefix:a4])
  {
    if ([a1 data:v8 containsString:@"VERSION:3.0" encoding:a5])
    {
      v9 = 1;
    }

    else
    {
      v9 = [a1 data:v8 containsParam:@"VERSION" value:@"3.0" encoding:a5];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)data:(id)a3 containsString:(id)a4 encoding:(unint64_t)a5
{
  v8 = a3;
  v9 = [a4 dataUsingEncoding:a5];
  LOBYTE(a4) = [a1 data:v8 containsSubdata:v9];

  return a4;
}

+ (BOOL)data:(id)a3 containsParam:(id)a4 value:(id)a5 encoding:(unint64_t)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [a4 dataUsingEncoding:a6];
  v12 = [v9 rangeOfData:v11 options:0 range:{0, objc_msgSend(v9, "length")}];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0;
  }

  else
  {
    v15 = v12 + v13;
    [v9 length];
    v29 = v10;
    v28 = [v10 dataUsingEncoding:a6];
    v16 = [v9 rangeOfData:? options:? range:?];
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

            v23 = [*(*(&v30 + 1) + 8 * i) dataUsingEncoding:a6];
            v24 = [v9 rangeOfData:v23 options:0 range:{v15, v20}];

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

    v10 = v29;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)tryUTF16WithByteOrderMarker:(id)a3 analysis:(CNVCardDataAnalysis *)a4
{
  v6 = a3;
  v7 = [a1 data:v6 byteAtIndex:0];
  v8 = [a1 data:v6 byteAtIndex:1];

  if (v7 == 254 && v8 == 255)
  {
    v9 = 2415919360;
LABEL_7:
    a4->var0 = v9;
    result = 1;
    a4->var1 = 1;
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

+ (BOOL)tryUTF16ByInferrence:(id)a3 analysis:(CNVCardDataAnalysis *)a4
{
  v6 = a3;
  v7 = [v6 length];
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
    if (![a1 data:v6 byteAtIndex:v10])
    {
      ++v12;
    }

    if (![a1 data:v6 byteAtIndex:v10 + 1])
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
    a4->var0 = v14;
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

+ (unsigned)data:(id)a3 byteAtIndex:(unint64_t)a4
{
  v5 = 0;
  [a3 getBytes:&v5 range:{a4, 1}];
  return v5;
}

+ (BOOL)data:(id)a3 hasPrefix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 rangeOfData:v5 options:0 range:{0, objc_msgSend(v6, "length")}];

  return v7 == 0;
}

+ (BOOL)data:(id)a3 containsSubdata:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 rangeOfData:v5 options:0 range:{0, objc_msgSend(v6, "length")}];

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

+ (id)data:(id)a3 byPrependingData:(id)a4
{
  v5 = MEMORY[0x277CBEB28];
  v6 = a4;
  v7 = a3;
  v8 = [v5 data];
  [v8 appendData:v6];

  [v8 appendData:v7];

  return v8;
}

@end