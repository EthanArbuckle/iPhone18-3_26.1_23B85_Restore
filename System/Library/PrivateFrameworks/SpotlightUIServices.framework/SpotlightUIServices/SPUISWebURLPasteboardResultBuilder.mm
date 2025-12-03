@interface SPUISWebURLPasteboardResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISWebURLPasteboardResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCopyItems;
- (id)buildPreviewButtonItems;
- (id)buildShareItems;
- (id)buildTitle;
- (id)pasteboardDescription;
@end

@implementation SPUISWebURLPasteboardResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SPUISWebURLPasteboardResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, resultCopy))
  {
    contentTypeTree = [resultCopy contentTypeTree];
    identifier = [*MEMORY[0x277CE1E90] identifier];
    v7 = [contentTypeTree containsObject:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SPUISWebURLPasteboardResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = SPUISWebURLPasteboardResultBuilder;
  v5 = [(SPUISPasteboardResultBuilder *)&v12 initWithResult:resultCopy];
  v6 = v5;
  if (v5)
  {
    result = [(SPUISResultBuilder *)v5 result];
    v8 = [result valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
    [(SPUISWebURLPasteboardResultBuilder *)v6 setUrl:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC31C8] withType:objc_opt_class()];
    [(SPUISWebURLPasteboardResultBuilder *)v6 setThumbnailData:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F0] withType:objc_opt_class()];
    [(SPUISWebURLPasteboardResultBuilder *)v6 setTitle:v10];
  }

  return v6;
}

- (id)buildTitle
{
  title = [(SPUISWebURLPasteboardResultBuilder *)self title];
  v4 = title;
  if (title)
  {
    absoluteString = title;
  }

  else
  {
    v6 = [(SPUISWebURLPasteboardResultBuilder *)self url];
    absoluteString = [v6 absoluteString];
  }

  v7 = [MEMORY[0x277D4C598] textWithString:absoluteString];

  return v7;
}

- (id)pasteboardDescription
{
  v3 = objc_opt_new();
  localizedDescription = [*MEMORY[0x277CE1E90] localizedDescription];
  if ([localizedDescription length])
  {
    [v3 addObject:localizedDescription];
  }

  v5 = [(SPUISWebURLPasteboardResultBuilder *)self url];
  host = [v5 host];

  if ([host length])
  {
    [v3 addObject:host];
  }

  v7 = [v3 componentsJoinedByString:@" · "];

  return v7;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISWebURLPasteboardResultBuilder;
    v5 = [(SPUISPasteboardResultBuilder *)&v7 buildBadgingImageWithThumbnail:thumbnailCopy];
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
  buildPreviewButtonItems = [(SPUISPasteboardResultBuilder *)&v14 buildPreviewButtonItems];
  v12 = [buildPreviewButtonItems arrayByAddingObject:v8];

  return v12;
}

@end