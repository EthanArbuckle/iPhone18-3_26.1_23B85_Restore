@interface WFPodcastShowContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
@end

@implementation WFPodcastShowContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Podcasts (plural)", @"Podcasts");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Podcast", @"Podcast");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6996FD8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v3 = WFLocalizedContentPropertyNameMarker(@"Feed URL");
  v4 = [v2 keyPath:@"object.feedURL" name:v3 class:objc_opt_class()];
  v17[0] = v4;
  v5 = MEMORY[0x1E6996D90];
  v6 = WFLocalizedContentPropertyNameMarker(@"Genre");
  v7 = [v5 keyPath:@"object.genre" name:v6 class:objc_opt_class()];
  v17[1] = v7;
  v8 = MEMORY[0x1E6996D90];
  v9 = WFLocalizedContentPropertyNameMarker(@"Episode Count");
  v10 = [v8 keyPath:@"object.trackCount" name:v9 class:objc_opt_class()];
  v17[2] = v10;
  v11 = MEMORY[0x1E6996D90];
  v12 = WFLocalizedContentPropertyNameMarker(@"Artist");
  v13 = [v11 keyPath:@"object.artistName" name:v12 class:objc_opt_class()];
  v17[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  thumbnailCopy = thumbnail;
  v8 = thumbnailCopy;
  if (thumbnailCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__WFPodcastShowContentItem_getListThumbnail_forSize___block_invoke;
    v10[3] = &unk_1E837D710;
    v11 = thumbnailCopy;
    [(WFiTunesObjectContentItem *)self getArtworkForSize:v10 completionHandler:width, height];
  }

  return 1;
}

void __53__WFPodcastShowContentItem_getListThumbnail_forSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__WFPodcastShowContentItem_getListThumbnail_forSize___block_invoke_2;
  v6[3] = &unk_1E837E1F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    podcastObject = [(WFPodcastShowContentItem *)self podcastObject];
    artistName = [podcastObject artistName];
    (*(subtitle + 2))(subtitleCopy, artistName);
  }

  return 1;
}

@end