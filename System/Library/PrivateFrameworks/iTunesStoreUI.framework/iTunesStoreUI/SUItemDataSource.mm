@interface SUItemDataSource
+ (id)sharedDataSource;
+ (void)setSharedDataSource:(id)a3;
- (id)_newDownloadForDocumentItem:(id)a3 storeOffer:(id)a4;
- (id)_newDownloadForPodcastEpisode:(id)a3 storeOffer:(id)a4;
- (id)_newDownloadMetadataForPodcastEpisode:(id)a3 storeOffer:(id)a4;
- (id)_newTonePurchaseWithPurchase:(id)a3;
- (id)_thumbnailImageForItem:(id)a3;
- (id)newExternalDownloadWithItem:(id)a3 storeOffer:(id)a4;
- (id)newItemWithItemDictionary:(id)a3;
- (id)newPurchaseWithItem:(id)a3 storeOffer:(id)a4;
- (id)typeStringForItemType:(int64_t)a3;
- (int64_t)estimatedDiskSpaceNeededForItem:(id)a3 storeOffer:(id)a4;
- (int64_t)itemTypeForItem:(id)a3;
- (int64_t)itemTypeForTypeString:(id)a3;
@end

@implementation SUItemDataSource

+ (void)setSharedDataSource:(id)a3
{
  _os_nospin_lock_lock();
  if (__SharedInstance_3 != a3)
  {

    __SharedInstance_3 = a3;
  }

  _os_nospin_lock_unlock();
}

+ (id)sharedDataSource
{
  _os_nospin_lock_lock();
  v2 = __SharedInstance_3;
  if (!__SharedInstance_3)
  {
    v2 = objc_alloc_init(objc_opt_class());
    __SharedInstance_3 = v2;
  }

  v3 = v2;
  _os_nospin_lock_unlock();
  return v3;
}

- (int64_t)estimatedDiskSpaceNeededForItem:(id)a3 storeOffer:(id)a4
{
  v5 = [objc_msgSend(a4 "offerMedia")];
  if ([a3 itemType] == 2000)
  {
    return (v5 * 2.5);
  }

  else
  {
    return v5;
  }
}

- (int64_t)itemTypeForItem:(id)a3
{
  result = -[SUItemDataSource itemTypeForTypeString:](self, "itemTypeForTypeString:", [a3 itemTypeString]);
  if (!result)
  {
    v6 = [a3 stringValueForProperty:@"type"];

    return [(SUItemDataSource *)self itemTypeForTypeString:v6];
  }

  return result;
}

- (int64_t)itemTypeForTypeString:(id)a3
{
  v4 = &qword_1E8166560;
  v5 = 31;
  while (![*(v4 - 1) isEqualToString:a3])
  {
    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

- (id)newExternalDownloadWithItem:(id)a3 storeOffer:(id)a4
{
  if ([a3 itemType] == 11 || (v7 = objc_msgSend(a3, "itemMediaKind"), objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69D4CF0])))
  {

    return [(SUItemDataSource *)self _newDownloadForDocumentItem:a3 storeOffer:a4];
  }

  else if ([a3 itemType] == 1007)
  {

    return [(SUItemDataSource *)self _newDownloadForPodcastEpisode:a3 storeOffer:a4];
  }

  else
  {
    return 0;
  }
}

- (id)newItemWithItemDictionary:(id)a3
{
  v4 = [[SUItem alloc] initWithDictionary:a3];
  [(SUItem *)v4 setItemType:[(SUItemDataSource *)self itemTypeForItem:v4]];
  return v4;
}

- (id)newPurchaseWithItem:(id)a3 storeOffer:(id)a4
{
  if ([objc_msgSend(a4 "buyParameters")])
  {
    v7 = [objc_alloc(MEMORY[0x1E69D4908]) initWithItemDictionary:{objc_msgSend(a3, "itemDictionary")}];
    v8 = [objc_alloc(MEMORY[0x1E69D4998]) initWithItem:v7 offer:a4];
    v9 = [(SUItemDataSource *)self _thumbnailImageForItem:a3];
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isPrerendered")}];
      [v8 setValue:v11 forDownloadProperty:*MEMORY[0x1E69D4B60]];
      v12 = [objc_msgSend(v10 "URL")];
      [v8 setValue:v12 forDownloadProperty:*MEMORY[0x1E69D4C10]];
    }

    v13 = [a3 itemType];
    if (v8 && (v13 == 1011 || v13 == 1005))
    {
      v14 = [(SUItemDataSource *)self _newTonePurchaseWithPurchase:v8];
      [v14 setAllowedToneStyles:{objc_msgSend(a4, "allowedToneStyles")}];

      return v14;
    }
  }

  else
  {
    [a3 itemType];
    return 0;
  }

  return v8;
}

- (id)typeStringForItemType:(int64_t)a3
{
  v3 = &qword_1E8166560;
  v4 = 31;
  while (*v3 != a3)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

- (id)_newDownloadForDocumentItem:(id)a3 storeOffer:(id)a4
{
  v6 = [objc_msgSend(a4 "offerMedia")];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E69D48C0]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v8 setValue:v9 forProperty:*MEMORY[0x1E69D4BC0]];
  v10 = [objc_alloc(MEMORY[0x1E69D4908]) initWithItemDictionary:{objc_msgSend(a3, "itemDictionary")}];
  v11 = [objc_alloc(MEMORY[0x1E69D48E8]) initWithItem:v10 offer:a4];
  [v11 setKind:*MEMORY[0x1E69D4AD8]];
  [v8 setValuesWithStoreDownloadMetadata:v11];

  v12 = objc_alloc(MEMORY[0x1E69D48C8]);
  v13 = [v12 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", v7)}];
  [v8 addAsset:v13 forType:*MEMORY[0x1E69D4AA0]];

  return v8;
}

- (id)_newDownloadForPodcastEpisode:(id)a3 storeOffer:(id)a4
{
  v7 = [objc_msgSend(a4 "offerMedia")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E69D48C0]);
  v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v9 setValue:v10 forProperty:*MEMORY[0x1E69D4BC0]];
  v11 = [(SUItemDataSource *)self _newDownloadMetadataForPodcastEpisode:a3 storeOffer:a4];
  [v9 setValuesWithStoreDownloadMetadata:v11];

  v12 = objc_alloc(MEMORY[0x1E69D48C8]);
  v13 = [v12 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", v8)}];
  [v9 addAsset:v13 forType:*MEMORY[0x1E69D4AA0]];

  v14 = [objc_msgSend(a3 "itemImageCollection")];
  if (v14 || (v14 = [objc_msgSend(objc_msgSend(a3 "containerItem")]) != 0)
  {
    v15 = v14;
    v16 = objc_alloc(MEMORY[0x1E69D48C8]);
    v17 = [v16 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", objc_msgSend(v15, "URL"))}];
    [v9 addAsset:v17 forType:*MEMORY[0x1E69D4A98]];
  }

  v18 = [a3 stringValueForProperty:@"podcast-feed-url"];
  if (v18 || (v18 = [objc_msgSend(a3 "containerItem")]) != 0)
  {
    v19 = v18;
    v20 = objc_alloc(MEMORY[0x1E69D48C8]);
    v21 = [v20 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v19))}];
    [v9 addAsset:v21 forType:*MEMORY[0x1E69D4AA8]];
  }

  return v9;
}

- (id)_newDownloadMetadataForPodcastEpisode:(id)a3 storeOffer:(id)a4
{
  v7 = [objc_msgSend(a3 "itemDictionary")];
  v8 = [v7 objectForKey:@"url"];
  if (v8)
  {
    v9 = [objc_msgSend(MEMORY[0x1E695DFF8] URLWithString:{v8), "sanitizedURL"}];
    if (v9)
    {
      [v7 setObject:objc_msgSend(v9 forKey:{"absoluteString"), @"url"}];
    }
  }

  if (![v7 objectForKey:@"podcast-feed-url"])
  {
    v10 = [objc_msgSend(a3 "containerItem")];
    if (v10)
    {
      [v7 setObject:v10 forKey:@"podcast-feed-url"];
    }
  }

  v11 = [objc_msgSend(a4 "offerMedia")];
  if ((v11 & 0x8000000000000000) == 0)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v11), @"duration"}];
  }

  v12 = [objc_alloc(MEMORY[0x1E69D48E8]) initWithDictionary:v7];
  [v12 setItemIdentifier:{objc_msgSend(a3, "itemIdentifier")}];
  [v12 setSubtitle:{objc_msgSend(a3, "artistName")}];
  [v12 setThumbnailImageURL:{objc_msgSend(-[SUItemDataSource _thumbnailImageForItem:](self, "_thumbnailImageForItem:", a3), "URL")}];
  [v12 setTitle:{objc_msgSend(a3, "unmodifiedTitle")}];
  v13 = [objc_msgSend(a4 "playableMedia")];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69D4D00]];
  v15 = MEMORY[0x1E69D4B10];
  if (!v14)
  {
    v15 = MEMORY[0x1E69D4AE8];
  }

  [v12 setKind:*v15];

  return v12;
}

- (id)_newTonePurchaseWithPurchase:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69D49E8]);
  [v4 setAccountIdentifier:{objc_msgSend(a3, "accountIdentifier")}];
  [v4 setBuyParameters:{objc_msgSend(a3, "buyParameters")}];
  [v4 setDownloadProperties:{objc_msgSend(a3, "downloadProperties")}];
  return v4;
}

- (id)_thumbnailImageForItem:(id)a3
{
  v4 = [a3 itemImageCollection];
  v5 = [objc_msgSend(a3 "containerItem")];
  if ([a3 itemType] == 2000)
  {
    v6 = [a3 softwareType];
    if ([v6 isEqualToString:*MEMORY[0x1E69D4C20]])
    {
      v7 = [v4 imagesForKind:*MEMORY[0x1E69D4CD8]];
    }

    else
    {
      v7 = 0;
    }

    if (![v7 count])
    {
      v7 = [v4 imagesForKind:*MEMORY[0x1E69D4CA0]];
    }

    if ([v7 count])
    {

      return [v7 objectAtIndex:0];
    }

    v11 = 57.0;
    v12 = v4;
    v13 = 57.0;
  }

  else
  {
    result = [v4 bestImageForSize:{88.0, 88.0}];
    if (result)
    {
      return result;
    }

    result = [v5 bestImageForSize:{88.0, 88.0}];
    if (result)
    {
      return result;
    }

    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
    result = [v4 bestImageForSize:{*MEMORY[0x1E695F060], v10}];
    if (result)
    {
      return result;
    }

    v12 = v5;
    v11 = v9;
    v13 = v10;
  }

  return [v12 bestImageForSize:{v11, v13}];
}

@end