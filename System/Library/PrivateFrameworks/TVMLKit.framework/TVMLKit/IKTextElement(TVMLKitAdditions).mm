@interface IKTextElement(TVMLKitAdditions)
- (id)tv_attributedString;
- (id)tv_attributedStringReplacingSFSymbols:()TVMLKitAdditions;
- (id)tv_attributedStringWithForegroundColor:()TVMLKitAdditions textAlignment:;
- (id)tv_paragraphStyleForDefaultStyle:()TVMLKitAdditions;
- (id)tv_paragraphStyleForDefaultStyle:()TVMLKitAdditions withTextAlignment:;
- (id)tv_textAttributes;
- (uint64_t)tv_associatedViewElement;
- (uint64_t)tv_textStyle;
@end

@implementation IKTextElement(TVMLKitAdditions)

- (id)tv_attributedString
{
  v17 = 0;
  v2 = [self attributedStringWithFontHandler:&__block_literal_global_2 defaultAttributes:&v17];
  v3 = v17;
  v4 = [v2 mutableCopy];
  tv_currentParagraphStyle = [v4 tv_currentParagraphStyle];
  v6 = tv_currentParagraphStyle;
  if (tv_currentParagraphStyle)
  {
    defaultParagraphStyle = tv_currentParagraphStyle;
  }

  else
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v8 = defaultParagraphStyle;

  style = [self style];
  v10 = [self tv_paragraphStyleForDefaultStyle:v8 withTextAlignment:{objc_msgSend(style, "tv_textAlignment")}];

  v11 = *MEMORY[0x277D74118];
  [v4 addAttribute:*MEMORY[0x277D74118] value:v10 range:{0, objc_msgSend(v4, "length")}];
  v12 = [v3 mutableCopy];

  [v12 setObject:v10 forKeyedSubscript:v11];
  v13 = [v4 copy];
  v14 = [v12 copy];
  [v13 tv_setDefaultAttributes:v14];

  if (+[TVMLUtilities mainBundleSupportsSFSymbols])
  {
    v15 = [self tv_attributedStringReplacingSFSymbols:v13];

    v13 = v15;
  }

  return v13;
}

- (id)tv_attributedStringWithForegroundColor:()TVMLKitAdditions textAlignment:
{
  v19 = 0;
  v6 = [self attributedStringWithFontHandler:&__block_literal_global_53_0 foregroundColor:a3 textAlignment:a4 defaultAttributes:&v19];
  v7 = v19;
  v8 = [v6 mutableCopy];
  tv_currentParagraphStyle = [v8 tv_currentParagraphStyle];
  v10 = tv_currentParagraphStyle;
  if (tv_currentParagraphStyle)
  {
    defaultParagraphStyle = tv_currentParagraphStyle;
  }

  else
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  v12 = defaultParagraphStyle;

  v13 = [self tv_paragraphStyleForDefaultStyle:v12 withTextAlignment:a4];
  v14 = *MEMORY[0x277D74118];
  [v8 addAttribute:*MEMORY[0x277D74118] value:v13 range:{0, objc_msgSend(v8, "length")}];
  v15 = [v7 mutableCopy];

  [v15 setObject:v13 forKeyedSubscript:v14];
  v16 = [v8 copy];
  v17 = [v15 copy];
  [v16 tv_setDefaultAttributes:v17];

  return v16;
}

- (uint64_t)tv_textStyle
{
  elementName = [self elementName];
  if ([elementName isEqualToString:@"title"])
  {
    v2 = 1;
  }

  else if ([elementName isEqualToString:@"subtitle"])
  {
    v2 = 2;
  }

  else if ([elementName isEqualToString:@"description"])
  {
    v2 = 3;
  }

  else if ([elementName isEqualToString:@"decorationLabel"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)tv_textAttributes
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  style = [self style];
  v4 = [TVMLUtilities fontFromStyle:style];

  [dictionary setObject:v4 forKey:*MEMORY[0x277D740A8]];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v6 = [self tv_paragraphStyleForDefaultStyle:defaultParagraphStyle];

  [dictionary setObject:v6 forKey:*MEMORY[0x277D74118]];
  style2 = [self style];
  tv_color = [style2 tv_color];
  color = [tv_color color];

  if (color)
  {
    [dictionary setObject:color forKey:*MEMORY[0x277D740C0]];
  }

  style3 = [self style];
  tv_textShadow = [style3 tv_textShadow];

  if (tv_textShadow)
  {
    [dictionary setObject:tv_textShadow forKey:*MEMORY[0x277D74138]];
  }

  v12 = [dictionary copy];

  return v12;
}

- (id)tv_paragraphStyleForDefaultStyle:()TVMLKitAdditions
{
  v4 = a3;
  style = [self style];
  tv_textAlignment = [style tv_textAlignment];

  v7 = [self tv_paragraphStyleForDefaultStyle:v4 withTextAlignment:tv_textAlignment];

  return v7;
}

- (id)tv_paragraphStyleForDefaultStyle:()TVMLKitAdditions withTextAlignment:
{
  v6 = [a3 mutableCopy];
  style = [self style];
  [style tv_textHyphenationFactor];
  *&v8 = v8;
  [v6 setHyphenationFactor:v8];

  [v6 setLineBreakMode:4];
  [v6 setAlignment:a4];
  v9 = [v6 copy];

  return v9;
}

- (id)tv_attributedStringReplacingSFSymbols:()TVMLKitAdditions
{
  v3 = a3;
  if (textImageUnicodeImageMapping_onceToken != -1)
  {
    [IKTextElement(TVMLKitAdditions) tv_attributedStringReplacingSFSymbols:];
  }

  v4 = textImageUnicodeImageMapping_mapping;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  string = [v3 string];
  v8 = [v3 length];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__IKTextElement_TVMLKitAdditions__tv_attributedStringReplacingSFSymbols___block_invoke;
  v20[3] = &unk_279D6E680;
  v9 = v4;
  v21 = v9;
  v10 = v5;
  v22 = v10;
  v11 = v6;
  v23 = v11;
  [string enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v20}];

  if ([v10 count])
  {
    v12 = [v3 mutableCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __73__IKTextElement_TVMLKitAdditions__tv_attributedStringReplacingSFSymbols___block_invoke_2;
    v17[3] = &unk_279D6E6A8;
    v18 = v10;
    v13 = v12;
    v19 = v13;
    [v11 enumerateObjectsWithOptions:2 usingBlock:v17];
    v14 = v19;
    v15 = v13;
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

- (uint64_t)tv_associatedViewElement
{
  v2 = objc_opt_class();

  return [self tv_associatedViewElementWithDefaultClass:v2];
}

@end