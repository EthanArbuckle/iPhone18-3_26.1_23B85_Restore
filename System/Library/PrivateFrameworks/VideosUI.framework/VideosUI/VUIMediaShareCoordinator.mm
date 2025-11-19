@interface VUIMediaShareCoordinator
+ (BOOL)shouldShowShareForMediaItem:(id)a3;
+ (void)shareMediaItem:(id)a3 metadata:(id)a4;
@end

@implementation VUIMediaShareCoordinator

+ (BOOL)shouldShowShareForMediaItem:(id)a3
{
  v3 = [a3 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
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

+ (void)shareMediaItem:(id)a3 metadata:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v5 vui_stringForKey:@"imageUrl"];
  if (![(__CFString *)v6 length])
  {
    v7 = [v15 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AC0]];

    v6 = v7;
  }

  v8 = [v5 objectForKey:@"url"];
  v9 = [v5 objectForKey:@"previewUrl"];
  v10 = [v5 objectForKey:@"title"];
  v11 = [v5 objectForKey:@"subtitle"];
  v12 = [v5 objectForKey:@"groupActivityMetadata"];
  if (!v6)
  {
    v6 = &stru_1F5DB25C0;
  }

  v13 = [v5 objectForKey:@"metrics"];

  v14 = +[VUIMetricsController sharedInstance];
  [v14 recordClick:v13];

  [VUIShareActivityViewController_iOS shareMediaItem:v8 previewURLString:v9 title:v10 subtitle:v11 imageURLStr:v6 groupActivityMetadata:v12 sourceView:0 userInterfaceStyle:2 completionHandler:&__block_literal_global_71];
}

@end