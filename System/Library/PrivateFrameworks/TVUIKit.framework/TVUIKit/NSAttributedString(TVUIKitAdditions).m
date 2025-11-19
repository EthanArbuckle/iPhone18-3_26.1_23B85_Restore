@interface NSAttributedString(TVUIKitAdditions)
- (double)boundingRectWithWidth:()TVUIKitAdditions lines:;
@end

@implementation NSAttributedString(TVUIKitAdditions)

- (double)boundingRectWithWidth:()TVUIKitAdditions lines:
{
  v6 = [objc_alloc(MEMORY[0x277D742D8]) initWithAttributedString:a1];
  v7 = objc_alloc_init(MEMORY[0x277D74238]);
  [v6 addLayoutManager:v7];
  v8 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{a2, 1.79769313e308}];
  [v7 addTextContainer:v8];
  [v8 setMaximumNumberOfLines:a4];
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_26D134E96;
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v22 = *MEMORY[0x277CBF3A0];
  v23 = v9;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v10 = [v7 numberOfGlyphs];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__NSAttributedString_TVUIKitAdditions__boundingRectWithWidth_lines___block_invoke;
  v16[3] = &unk_279D91040;
  v16[4] = v17;
  v16[5] = &v18;
  v16[6] = a4;
  [v7 enumerateLineFragmentsForGlyphRange:0 usingBlock:{v10, v16}];
  v11 = v19[4];
  v12 = *(v19 + 5);
  v13 = *(v19 + 6);
  v14 = *(v19 + 7);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);

  return v11;
}

@end