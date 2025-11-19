@interface PencilEducationElementData
+ (id)elementDataForType:(int64_t)a3 languageID:(id)a4;
+ (id)prefixForElementType:(int64_t)a3;
@end

@implementation PencilEducationElementData

+ (id)elementDataForType:(int64_t)a3 languageID:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(PencilEducationElementData);
  v8 = [a1 prefixForElementType:a3];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByAppendingString:@"_"];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [(PencilEducationElementData *)v7 setLanguageID:v6];
    v12 = [v10 stringByAppendingString:@"TITLE"];
    v13 = [v11 localizedStringForKey:v12 value:&stru_286FDFDB8 table:@"PencilSettings"];
    [(PencilEducationElementData *)v7 setTitle:v13];

    v14 = [v10 stringByAppendingString:@"TEXT_CONTENT"];
    v15 = PKLocalizedStringForLanguageInBundle(v14, v6, v11, @"PencilSettings");
    [(PencilEducationElementData *)v7 setTextContent:v15];

    v16 = [v10 stringByAppendingString:@"PLACEHOLDER_TEXT_CONTENT"];
    v17 = PKLocalizedStringForLanguageInBundle(v16, v6, v11, @"PencilSettings");
    [(PencilEducationElementData *)v7 setPlaceholderTextContent:v17];

    [(PencilEducationElementData *)v7 setType:a3];
  }

  return v7;
}

+ (id)prefixForElementType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_279A0A398[a3];
  }
}

@end