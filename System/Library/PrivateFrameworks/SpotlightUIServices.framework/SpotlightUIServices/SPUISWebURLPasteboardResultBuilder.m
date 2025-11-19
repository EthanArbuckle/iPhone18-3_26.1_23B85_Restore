@interface SPUISWebURLPasteboardResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISWebURLPasteboardResultBuilder)initWithResult:(id)a3;
- (id)buildBadgingImageWithThumbnail:(id)a3;
- (id)buildCopyItems;
- (id)buildPreviewButtonItems;
- (id)buildShareItems;
- (id)buildTitle;
- (id)pasteboardDescription;
@end

@implementation SPUISWebURLPasteboardResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SPUISWebURLPasteboardResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, v4))
  {
    v5 = [v4 contentTypeTree];
    v6 = [*MEMORY[0x277CE1E90] identifier];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SPUISWebURLPasteboardResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SPUISWebURLPasteboardResultBuilder;
  v5 = [(SPUISPasteboardResultBuilder *)&v12 initWithResult:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(SPUISResultBuilder *)v5 result];
    v8 = [v7 valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
    [(SPUISWebURLPasteboardResultBuilder *)v6 setUrl:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC31C8] withType:objc_opt_class()];
    [(SPUISWebURLPasteboardResultBuilder *)v6 setThumbnailData:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISWebURLPasteboardResultBuilder *)v6 setTitle:v10];
  }

  return v6;
}

- (id)buildTitle
{
  v3 = [(SPUISWebURLPasteboardResultBuilder *)self title];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SPUISWebURLPasteboardResultBuilder *)self url];
    v5 = [v6 absoluteString];
  }

  v7 = [MEMORY[0x277D4C598] textWithString:v5];

  return v7;
}

- (id)pasteboardDescription
{
  v3 = objc_opt_new();
  v4 = [*MEMORY[0x277CE1E90] localizedDescription];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  v5 = [(SPUISWebURLPasteboardResultBuilder *)self url];
  v6 = [v5 host];

  if ([v6 length])
  {
    [v3 addObject:v6];
  }

  v7 = [v3 componentsJoinedByString:@" · "];

  return v7;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISWebURLPasteboardResultBuilder;
    v5 = [(SPUISPasteboardResultBuilder *)&v7 buildBadgingImageWithThumbnail:v4];
  }

  return v5;
}

- (id)buildCopyItems
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISWebURLPasteboardResultBuilder *)self url];
  [v3 setUrl:v4];

  v8[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)buildShareItems
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISWebURLPasteboardResultBuilder *)self url];
  [v3 setUrlValue:v4];

  v8[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)buildPreviewButtonItems
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D4C550];
  v5 = [(SPUISWebURLPasteboardResultBuilder *)self url];
  v6 = [v4 punchoutWithURL:v5];
  [v3 setPunchout:v6];

  v7 = objc_opt_new();
  [v7 setSymbolName:@"safari"];
  [v7 setIsTemplate:1];
  v8 = objc_opt_new();
  [v8 setCommand:v3];
  [v8 setImage:v7];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Open in Browser" value:0 table:0];
  [v8 setTitle:v10];

  v14.receiver = self;
  v14.super_class = SPUISWebURLPasteboardResultBuilder;
  v11 = [(SPUISPasteboardResultBuilder *)&v14 buildPreviewButtonItems];
  v12 = [v11 arrayByAddingObject:v8];

  return v12;
}

@end