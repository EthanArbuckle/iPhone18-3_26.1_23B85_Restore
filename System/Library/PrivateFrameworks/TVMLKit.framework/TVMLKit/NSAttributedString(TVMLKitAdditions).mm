@interface NSAttributedString(TVMLKitAdditions)
- (double)boundingRectWithWidth:()TVMLKitAdditions lines:;
- (id)tv_currentParagraphStyle;
@end

@implementation NSAttributedString(TVMLKitAdditions)

- (id)tv_currentParagraphStyle
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  v13 = 0;
  if ([a1 length])
  {
    v2 = *MEMORY[0x277D74118];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__NSAttributedString_TVMLKitAdditions__tv_currentParagraphStyle__block_invoke;
    v7[3] = &unk_279D70E38;
    v7[4] = &v8;
    [a1 enumerateAttribute:v2 inRange:0 options:1 usingBlock:{0, v7}];
    v3 = [a1 length];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__NSAttributedString_TVMLKitAdditions__tv_currentParagraphStyle__block_invoke_2;
    v6[3] = &unk_279D70E38;
    v6[4] = &v8;
    [a1 enumerateAttribute:v2 inRange:v3 - 1 options:1 usingBlock:{0, v6}];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (double)boundingRectWithWidth:()TVMLKitAdditions lines:
{
  v6 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:a1];
  v7 = objc_alloc_init(MEMORY[0x277D74238]);
  [v6 addLayoutManager:v7];
  v8 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{a2, 1.79769313e308}];
  [v7 addTextContainer:v8];
  [v8 setMaximumNumberOfLines:a4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_26CE937F5;
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = v9;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10 = [v7 numberOfGlyphs];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NSAttributedString_TVMLKitAdditions__boundingRectWithWidth_lines___block_invoke;
  v13[3] = &unk_279D70E60;
  v13[4] = v14;
  v13[5] = &v15;
  v13[6] = a4;
  [v7 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v10, v13}];
  v11 = v16[4];
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);

  return v11;
}

@end