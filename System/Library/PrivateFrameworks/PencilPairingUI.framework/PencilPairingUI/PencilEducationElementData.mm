@interface PencilEducationElementData
+ (id)elementDataForType:(int64_t)type languageID:(id)d;
+ (id)prefixForElementType:(int64_t)type;
@end

@implementation PencilEducationElementData

+ (id)elementDataForType:(int64_t)type languageID:(id)d
{
  dCopy = d;
  v7 = objc_alloc_init(PencilEducationElementData);
  v8 = [self prefixForElementType:type];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 stringByAppendingString:@"_"];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [(PencilEducationElementData *)v7 setLanguageID:dCopy];
    v12 = [v10 stringByAppendingString:@"TITLE"];
    v13 = [v11 localizedStringForKey:v12 value:&stru_286FDFDB8 table:@"PencilSettings"];
    [(PencilEducationElementData *)v7 setTitle:v13];

    v14 = [v10 stringByAppendingString:@"TEXT_CONTENT"];
    v15 = PKLocalizedStringForLanguageInBundle(v14, dCopy, v11, @"PencilSettings");
    [(PencilEducationElementData *)v7 setTextContent:v15];

    v16 = [v10 stringByAppendingString:@"PLACEHOLDER_TEXT_CONTENT"];
    v17 = PKLocalizedStringForLanguageInBundle(v16, dCopy, v11, @"PencilSettings");
    [(PencilEducationElementData *)v7 setPlaceholderTextContent:v17];

    [(PencilEducationElementData *)v7 setType:type];
  }

  return v7;
}

+ (id)prefixForElementType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_279A0A398[type];
  }
}

@end