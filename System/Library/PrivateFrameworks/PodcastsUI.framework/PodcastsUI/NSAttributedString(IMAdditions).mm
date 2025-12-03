@interface NSAttributedString(IMAdditions)
+ (id)attributedStringWithTemplateString:()IMAdditions baseAttributes:snippetAttributes:snippets:;
+ (id)safeAttributedStringWithHTML:()IMAdditions attributes:;
- (id)attributedStringByTrimmingCharactersInCharacterSet:()IMAdditions;
- (id)attributedStringWithDefaultLineSpacing;
- (uint64_t)attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters;
@end

@implementation NSAttributedString(IMAdditions)

- (id)attributedStringByTrimmingCharactersInCharacterSet:()IMAdditions
{
  v4 = a3;
  string = [self string];
  invertedSet = [v4 invertedSet];

  v7 = [string rangeOfCharacterFromSet:invertedSet];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_282CBB070];
  }

  else
  {
    v9 = v7;
    v10 = [string rangeOfCharacterFromSet:invertedSet options:4];
    v8 = [self attributedSubstringFromRange:{v9, v11 - v9 + v10}];
  }

  v12 = v8;

  return v12;
}

- (uint64_t)attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters
{
  if (!attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [whitespaceAndNewlineCharacterSet mutableCopy];

    [v3 addCharactersInString:@"\uFFFC"];
    v4 = [v3 copy];
    v5 = attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters;
    attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters = v4;
  }

  return [self attributedStringByTrimmingCharactersInCharacterSet:?];
}

+ (id)attributedStringWithTemplateString:()IMAdditions baseAttributes:snippetAttributes:snippets:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12 attributes:v13];
  if ([v13 count])
  {
    v17 = [v13 mutableCopy];
    if ([v14 count])
    {
      [v17 addEntriesFromDictionary:v14];
    }
  }

  else
  {
    v17 = v14;
  }

  v30 = &a9;
  v18 = v15;
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    do
    {
      string = [v16 string];
      v22 = [string rangeOfString:@"%@"];
      v24 = v23;

      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v20 attributes:v17];
        [v16 replaceCharactersInRange:v22 withAttributedString:{v24, v25}];
      }

      v26 = v30++;
      v27 = *v26;

      v20 = v27;
    }

    while (v27);
  }

  v28 = [v16 copy];

  return v28;
}

- (id)attributedStringWithDefaultLineSpacing
{
  v2 = [self mutableCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = [self length];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = *MEMORY[0x277D74118];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__NSAttributedString_IMAdditions__attributedStringWithDefaultLineSpacing__block_invoke;
  v11[3] = &unk_2782BE2F8;
  v6 = defaultParagraphStyle;
  v12 = v6;
  v7 = v2;
  v13 = v7;
  v14 = &v15;
  [self enumerateAttribute:v5 inRange:0 options:v3 usingBlock:{0, v11}];
  if ((v16[3] & 1) == 0)
  {
    [v7 addAttribute:v5 value:v6 range:{0, v3}];
  }

  v8 = v13;
  v9 = v7;

  _Block_object_dispose(&v15, 8);

  return v9;
}

+ (id)safeAttributedStringWithHTML:()IMAdditions attributes:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v6 stringByReplacingOccurrencesOfString:@"</?\\s*i?frame[^>]*>" withString:&stru_282CBB070 options:1025 range:{0, objc_msgSend(v6, "length")}];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"</?\\s*img[^>]*>" withString:&stru_282CBB070 options:1025 range:{0, objc_msgSend(v7, "length")}];

  v31 = v8;
  v9 = [v8 dataUsingEncoding:10];
  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v36 = *MEMORY[0x277D74090];
  v37[0] = *MEMORY[0x277D740C8];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v12 = [v10 initWithData:v9 options:v11 documentAttributes:0 error:0];
  v13 = [v12 mutableCopy];

  v14 = [v13 length];
  string = [v13 string];
  v16 = [string rangeOfString:@"\u2028" options:0 range:{0, v14}];
  v18 = v17;

  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v13)
  {
    do
    {
      [v13 replaceCharactersInRange:v16 withString:{v18, @"\n"}];
      v19 = v16 + 1;
      if (v14 == v19)
      {
        break;
      }

      string2 = [v13 string];
      v16 = [string2 rangeOfString:@"\u2028" options:0 range:{v19, v14 - v19}];
      v18 = v21;
    }

    while (v16 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v22 = objc_alloc(MEMORY[0x277CBEB58]);
  v35 = *MEMORY[0x277D74118];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v24 = [v22 initWithArray:v23];

  v25 = [v13 length];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __75__NSAttributedString_IMAdditions__safeAttributedStringWithHTML_attributes___block_invoke;
  v32[3] = &unk_2782BE320;
  v26 = v13;
  v33 = v26;
  v34 = v24;
  v27 = v24;
  [v26 enumerateAttributesInRange:0 options:v25 usingBlock:{0, v32}];
  if (v5)
  {
    [v26 addAttributes:v5 range:{0, objc_msgSend(v26, "length")}];
  }

  v28 = v34;
  v29 = v26;

  return v26;
}

@end