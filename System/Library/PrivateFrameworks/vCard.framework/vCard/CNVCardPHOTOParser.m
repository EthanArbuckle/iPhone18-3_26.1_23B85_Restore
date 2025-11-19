@interface CNVCardPHOTOParser
+ (id)clipRectInfoFromString:(id)a3;
+ (id)parseClipRectsWithParser:(id)a3;
+ (void)parseBase64:(BOOL)a3 parser:(id)a4 callback:(id)a5;
@end

@implementation CNVCardPHOTOParser

+ (void)parseBase64:(BOOL)a3 parser:(id)a4 callback:(id)a5
{
  v6 = a3;
  v22 = a4;
  v8 = a5;
  v9 = [a1 parseClipRectsWithParser:v22];
  v10 = [v22 parameterValuesForName:@"VALUE"];
  v11 = v6 & ~[v10 _cn_any:&__block_literal_global_1];
  v12 = [v22 parameterValuesForName:@"VND-63-MEMOJI-DETAILS"];
  if ((*(*MEMORY[0x277CFBCF8] + 16))())
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    v15 = [v12 firstObject];
    v13 = [v14 initWithBase64EncodedString:v15 options:0];
  }

  v16 = v22;
  if (v11 && ([v22 parseBase64Data], v17 = objc_claimAutoreleasedReturnValue(), v16 = v22, v17))
  {
    v18 = [v17 _cn_decodeBase64IgnoringWhitespace];
    v8[2](v8, v18, &stru_288651EC0, v9, v13);
  }

  else
  {
    v19 = [v16 parseRemainingLine];
    v20 = v19;
    v21 = &stru_288651EC0;
    if (v19)
    {
      v21 = v19;
    }

    v18 = v21;

    v17 = [MEMORY[0x277CBEA90] data];
    v8[2](v8, v17, v18, v9, v13);
  }
}

+ (id)parseClipRectsWithParser:(id)a3
{
  v4 = [a3 parameterValuesForName:@"X-ABCROP-RECTANGLE"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CNVCardPHOTOParser_parseClipRectsWithParser___block_invoke;
  v7[3] = &__block_descriptor_40_e32___NSDictionary_16__0__NSString_8l;
  v7[4] = a1;
  v5 = [v4 _cn_compactMap:v7];

  return v5;
}

+ (id)clipRectInfoFromString:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = [a3 componentsSeparatedByString:@"&"];
  if ([v3 count] >= 6)
  {
    v5 = [v3 objectAtIndex:0];
    v6 = [v3 objectAtIndex:1];
    v7 = [v6 integerValue];

    v8 = [v3 objectAtIndex:2];
    v9 = [v8 integerValue];

    v10 = [v3 objectAtIndex:3];
    v11 = [v10 integerValue];

    v12 = [v3 objectAtIndex:4];
    v13 = [v12 integerValue];

    v14 = [MEMORY[0x277CCAE60] valueWithRect:{v7, v9, v11, v13}];
    v15 = [v3 objectAtIndex:5];
    v16 = [v15 dataUsingEncoding:1];
    v17 = [v16 _cn_decodeBase64];

    v4 = 0;
    if (v5)
    {
      if (v14 && v17 != 0)
      {
        v21[0] = @"kABImageInfoImageTypeKey";
        v21[1] = @"kABImageInfoClipRectKey";
        v22[0] = v5;
        v22[1] = v14;
        v21[2] = @"kABImageInfoHashKey";
        v22[2] = v17;
        v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

@end