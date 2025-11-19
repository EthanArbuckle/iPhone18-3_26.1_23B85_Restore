@interface PencilHandwritingEducationElementData
+ (id)elementDataForType:(int64_t)a3 languageID:(id)a4;
+ (id)prefixForElementType:(int64_t)a3;
@end

@implementation PencilHandwritingEducationElementData

+ (id)elementDataForType:(int64_t)a3 languageID:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(PencilHandwritingEducationElementData);
  v8 = [a1 prefixForElementType:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByAppendingString:@"_"];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [(PencilHandwritingEducationElementData *)v7 setLanguageID:v6];
    if (a3)
    {
      v12 = objc_alloc(MEMORY[0x277CCA898]);
      v13 = [v10 stringByAppendingString:@"TITLE"];
      v14 = [v11 localizedStringForKey:v13 value:&stru_286FDFDB8 table:@"PencilSettings"];
      v15 = [v12 initWithString:v14];
      [(PencilHandwritingEducationElementData *)v7 setTitle:v15];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277D74270]);
      v16 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle"];
      v17 = [v16 imageWithRenderingMode:2];
      [v13 setImage:v17];

      v18 = objc_alloc(MEMORY[0x277CCAB48]);
      v19 = [v10 stringByAppendingString:@"TITLE_1"];
      v20 = [v11 localizedStringForKey:v19 value:&stru_286FDFDB8 table:@"PencilSettings"];
      v14 = [v18 initWithString:v20];

      v21 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v13];
      [v14 appendAttributedString:v21];

      v22 = objc_alloc(MEMORY[0x277CCAB48]);
      v23 = [v10 stringByAppendingString:@"TITLE_2"];
      v24 = [v11 localizedStringForKey:v23 value:&stru_286FDFDB8 table:@"PencilSettings"];
      v25 = [v22 initWithString:v24];
      [v14 appendAttributedString:v25];

      [(PencilHandwritingEducationElementData *)v7 setTitle:v14];
    }

    v26 = [v10 stringByAppendingString:@"TEXT_CONTENT"];
    v27 = PKLocalizedStringForLanguageInBundle(v26, v6, v11, @"PencilSettings");
    [(PencilHandwritingEducationElementData *)v7 setTextContent:v27];

    v28 = [v10 stringByAppendingString:@"PLACEHOLDER_TEXT_CONTENT"];
    v29 = PKLocalizedStringForLanguageInBundle(v28, v6, v11, @"PencilSettings");
    [(PencilHandwritingEducationElementData *)v7 setPlaceholderTextContent:v29];

    [(PencilHandwritingEducationElementData *)v7 setType:a3];
  }

  return v7;
}

+ (id)prefixForElementType:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"AUTO_REFINE";
  }
}

@end