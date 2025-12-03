@interface VUIMediaShareCoordinator
+ (BOOL)shouldShowShareForMediaItem:(id)item;
+ (void)shareMediaItem:(id)item metadata:(id)metadata;
@end

@implementation VUIMediaShareCoordinator

+ (BOOL)shouldShowShareForMediaItem:(id)item
{
  v3 = [item mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
  v4 = [v3 objectForKey:@"url"];
  v5 = [v3 objectForKey:@"title"];
  if ([v4 length])
  {
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)shareMediaItem:(id)item metadata:(id)metadata
{
  itemCopy = item;
  metadataCopy = metadata;
  v6 = [metadataCopy vui_stringForKey:@"imageUrl"];
  if (![(__CFString *)v6 length])
  {
    v7 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];

    v6 = v7;
  }

  v8 = [metadataCopy objectForKey:@"url"];
  v9 = [metadataCopy objectForKey:@"previewUrl"];
  v10 = [metadataCopy objectForKey:@"title"];
  v11 = [metadataCopy objectForKey:@"subtitle"];
  v12 = [metadataCopy objectForKey:@"groupActivityMetadata"];
  if (!v6)
  {
    v6 = &stru_1F5DB25C0;
  }

  v13 = [metadataCopy objectForKey:@"metrics"];

  v14 = +[VUIMetricsController sharedInstance];
  [v14 recordClick:v13];

  [VUIShareActivityViewController_iOS shareMediaItem:v8 previewURLString:v9 title:v10 subtitle:v11 imageURLStr:v6 groupActivityMetadata:v12 sourceView:0 userInterfaceStyle:2 completionHandler:&__block_literal_global_71];
}

@end