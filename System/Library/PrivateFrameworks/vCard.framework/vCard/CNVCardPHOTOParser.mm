@interface CNVCardPHOTOParser
+ (id)clipRectInfoFromString:(id)string;
+ (id)parseClipRectsWithParser:(id)parser;
+ (void)parseBase64:(BOOL)base64 parser:(id)parser callback:(id)callback;
@end

@implementation CNVCardPHOTOParser

+ (void)parseBase64:(BOOL)base64 parser:(id)parser callback:(id)callback
{
  base64Copy = base64;
  parserCopy = parser;
  callbackCopy = callback;
  v9 = [self parseClipRectsWithParser:parserCopy];
  v10 = [parserCopy parameterValuesForName:@"VALUE"];
  v11 = base64Copy & ~[v10 _cn_any:&__block_literal_global_1];
  v12 = [parserCopy parameterValuesForName:@"VND-63-MEMOJI-DETAILS"];
  if ((*(*MEMORY[0x277CFBCF8] + 16))())
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CBEA90]);
    firstObject = [v12 firstObject];
    v13 = [v14 initWithBase64EncodedString:firstObject options:0];
  }

  v16 = parserCopy;
  if (v11 && ([parserCopy parseBase64Data], data = objc_claimAutoreleasedReturnValue(), v16 = parserCopy, data))
  {
    _cn_decodeBase64IgnoringWhitespace = [data _cn_decodeBase64IgnoringWhitespace];
    callbackCopy[2](callbackCopy, _cn_decodeBase64IgnoringWhitespace, &stru_288651EC0, v9, v13);
  }

  else
  {
    parseRemainingLine = [v16 parseRemainingLine];
    v20 = parseRemainingLine;
    v21 = &stru_288651EC0;
    if (parseRemainingLine)
    {
      v21 = parseRemainingLine;
    }

    _cn_decodeBase64IgnoringWhitespace = v21;

    data = [MEMORY[0x277CBEA90] data];
    callbackCopy[2](callbackCopy, data, _cn_decodeBase64IgnoringWhitespace, v9, v13);
  }
}

+ (id)parseClipRectsWithParser:(id)parser
{
  v4 = [parser parameterValuesForName:@"X-ABCROP-RECTANGLE"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CNVCardPHOTOParser_parseClipRectsWithParser___block_invoke;
  v7[3] = &__block_descriptor_40_e32___NSDictionary_16__0__NSString_8l;
  v7[4] = self;
  v5 = [v4 _cn_compactMap:v7];

  return v5;
}

+ (id)clipRectInfoFromString:(id)string
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = [string componentsSeparatedByString:@"&"];
  if ([v3 count] >= 6)
  {
    v5 = [v3 objectAtIndex:0];
    v6 = [v3 objectAtIndex:1];
    integerValue = [v6 integerValue];

    v8 = [v3 objectAtIndex:2];
    integerValue2 = [v8 integerValue];

    v10 = [v3 objectAtIndex:3];
    integerValue3 = [v10 integerValue];

    v12 = [v3 objectAtIndex:4];
    integerValue4 = [v12 integerValue];

    v14 = [MEMORY[0x277CCAE60] valueWithRect:{integerValue, integerValue2, integerValue3, integerValue4}];
    v15 = [v3 objectAtIndex:5];
    v16 = [v15 dataUsingEncoding:1];
    _cn_decodeBase64 = [v16 _cn_decodeBase64];

    v4 = 0;
    if (v5)
    {
      if (v14 && _cn_decodeBase64 != 0)
      {
        v21[0] = @"kABImageInfoImageTypeKey";
        v21[1] = @"kABImageInfoClipRectKey";
        v22[0] = v5;
        v22[1] = v14;
        v21[2] = @"kABImageInfoHashKey";
        v22[2] = _cn_decodeBase64;
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