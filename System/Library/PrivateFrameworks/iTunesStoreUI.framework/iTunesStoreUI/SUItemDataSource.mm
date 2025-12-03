@interface SUItemDataSource
+ (id)sharedDataSource;
+ (void)setSharedDataSource:(id)source;
- (id)_newDownloadForDocumentItem:(id)item storeOffer:(id)offer;
- (id)_newDownloadForPodcastEpisode:(id)episode storeOffer:(id)offer;
- (id)_newDownloadMetadataForPodcastEpisode:(id)episode storeOffer:(id)offer;
- (id)_newTonePurchaseWithPurchase:(id)purchase;
- (id)_thumbnailImageForItem:(id)item;
- (id)newExternalDownloadWithItem:(id)item storeOffer:(id)offer;
- (id)newItemWithItemDictionary:(id)dictionary;
- (id)newPurchaseWithItem:(id)item storeOffer:(id)offer;
- (id)typeStringForItemType:(int64_t)type;
- (int64_t)estimatedDiskSpaceNeededForItem:(id)item storeOffer:(id)offer;
- (int64_t)itemTypeForItem:(id)item;
- (int64_t)itemTypeForTypeString:(id)string;
@end

@implementation SUItemDataSource

+ (void)setSharedDataSource:(id)source
{
  _os_nospin_lock_lock();
  if (__SharedInstance_3 != source)
  {

    __SharedInstance_3 = source;
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

- (int64_t)estimatedDiskSpaceNeededForItem:(id)item storeOffer:(id)offer
{
  v5 = [objc_msgSend(offer "offerMedia")];
  if ([item itemType] == 2000)
  {
    return (v5 * 2.5);
  }

  else
  {
    return v5;
  }
}

- (int64_t)itemTypeForItem:(id)item
{
  result = -[SUItemDataSource itemTypeForTypeString:](self, "itemTypeForTypeString:", [item itemTypeString]);
  if (!result)
  {
    v6 = [item stringValueForProperty:@"type"];

    return [(SUItemDataSource *)self itemTypeForTypeString:v6];
  }

  return result;
}

- (int64_t)itemTypeForTypeString:(id)string
{
  v4 = &qword_1E8166560;
  v5 = 31;
  while (![*(v4 - 1) isEqualToString:string])
  {
    v4 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

- (id)newExternalDownloadWithItem:(id)item storeOffer:(id)offer
{
  if ([item itemType] == 11 || (v7 = objc_msgSend(item, "itemMediaKind"), objc_msgSend(v7, "isEqualToString:", *MEMORY[0x1E69D4CF0])))
  {

    return [(SUItemDataSource *)self _newDownloadForDocumentItem:item storeOffer:offer];
  }

  else if ([item itemType] == 1007)
  {

    return [(SUItemDataSource *)self _newDownloadForPodcastEpisode:item storeOffer:offer];
  }

  else
  {
    return 0;
  }
}

- (id)newItemWithItemDictionary:(id)dictionary
{
  v4 = [[SUItem alloc] initWithDictionary:dictionary];
  [(SUItem *)v4 setItemType:[(SUItemDataSource *)self itemTypeForItem:v4]];
  return v4;
}

- (id)newPurchaseWithItem:(id)item storeOffer:(id)offer
{
  if ([objc_msgSend(offer "buyParameters")])
  {
    v7 = [objc_alloc(MEMORY[0x1E69D4908]) initWithItemDictionary:{objc_msgSend(item, "itemDictionary")}];
    v8 = [objc_alloc(MEMORY[0x1E69D4998]) initWithItem:v7 offer:offer];
    v9 = [(SUItemDataSource *)self _thumbnailImageForItem:item];
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isPrerendered")}];
      [v8 setValue:v11 forDownloadProperty:*MEMORY[0x1E69D4B60]];
      v12 = [objc_msgSend(v10 "URL")];
      [v8 setValue:v12 forDownloadProperty:*MEMORY[0x1E69D4C10]];
    }

    itemType = [item itemType];
    if (v8 && (itemType == 1011 || itemType == 1005))
    {
      v14 = [(SUItemDataSource *)self _newTonePurchaseWithPurchase:v8];
      [v14 setAllowedToneStyles:{objc_msgSend(offer, "allowedToneStyles")}];

      return v14;
    }
  }

  else
  {
    [item itemType];
    return 0;
  }

  return v8;
}

- (id)typeStringForItemType:(int64_t)type
{
  v3 = &qword_1E8166560;
  v4 = 31;
  while (*v3 != type)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  return *(v3 - 1);
}

- (id)_newDownloadForDocumentItem:(id)item storeOffer:(id)offer
{
  v6 = [objc_msgSend(offer "offerMedia")];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E69D48C0]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v8 setValue:v9 forProperty:*MEMORY[0x1E69D4BC0]];
  v10 = [objc_alloc(MEMORY[0x1E69D4908]) initWithItemDictionary:{objc_msgSend(item, "itemDictionary")}];
  v11 = [objc_alloc(MEMORY[0x1E69D48E8]) initWithItem:v10 offer:offer];
  [v11 setKind:*MEMORY[0x1E69D4AD8]];
  [v8 setValuesWithStoreDownloadMetadata:v11];

  v12 = objc_alloc(MEMORY[0x1E69D48C8]);
  v13 = [v12 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", v7)}];
  [v8 addAsset:v13 forType:*MEMORY[0x1E69D4AA0]];

  return v8;
}

- (id)_newDownloadForPodcastEpisode:(id)episode storeOffer:(id)offer
{
  v7 = [objc_msgSend(offer "offerMedia")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E69D48C0]);
  v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v9 setValue:v10 forProperty:*MEMORY[0x1E69D4BC0]];
  v11 = [(SUItemDataSource *)self _newDownloadMetadataForPodcastEpisode:episode storeOffer:offer];
  [v9 setValuesWithStoreDownloadMetadata:v11];

  v12 = objc_alloc(MEMORY[0x1E69D48C8]);
  v13 = [v12 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", v8)}];
  [v9 addAsset:v13 forType:*MEMORY[0x1E69D4AA0]];

  v14 = [objc_msgSend(episode "itemImageCollection")];
  if (v14 || (v14 = [objc_msgSend(objc_msgSend(episode "containerItem")]) != 0)
  {
    v15 = v14;
    v16 = objc_alloc(MEMORY[0x1E69D48C8]);
    v17 = [v16 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", objc_msgSend(v15, "URL"))}];
    [v9 addAsset:v17 forType:*MEMORY[0x1E69D4A98]];
  }

  v18 = [episode stringValueForProperty:@"podcast-feed-url"];
  if (v18 || (v18 = [objc_msgSend(episode "containerItem")]) != 0)
  {
    v19 = v18;
    v20 = objc_alloc(MEMORY[0x1E69D48C8]);
    v21 = [v20 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v19))}];
    [v9 addAsset:v21 forType:*MEMORY[0x1E69D4AA8]];
  }

  return v9;
}

- (id)_newDownloadMetadataForPodcastEpisode:(id)episode storeOffer:(id)offer
{
  v7 = [objc_msgSend(episode "itemDictionary")];
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
    v10 = [objc_msgSend(episode "containerItem")];
    if (v10)
    {
      [v7 setObject:v10 forKey:@"podcast-feed-url"];
    }
  }

  v11 = [objc_msgSend(offer "offerMedia")];
  if ((v11 & 0x8000000000000000) == 0)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v11), @"duration"}];
  }

  v12 = [objc_alloc(MEMORY[0x1E69D48E8]) initWithDictionary:v7];
  [v12 setItemIdentifier:{objc_msgSend(episode, "itemIdentifier")}];
  [v12 setSubtitle:{objc_msgSend(episode, "artistName")}];
  [v12 setThumbnailImageURL:{objc_msgSend(-[SUItemDataSource _thumbnailImageForItem:](self, "_thumbnailImageForItem:", episode), "URL")}];
  [v12 setTitle:{objc_msgSend(episode, "unmodifiedTitle")}];
  v13 = [objc_msgSend(offer "playableMedia")];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69D4D00]];
  v15 = MEMORY[0x1E69D4B10];
  if (!v14)
  {
    v15 = MEMORY[0x1E69D4AE8];
  }

  [v12 setKind:*v15];

  return v12;
}

- (id)_newTonePurchaseWithPurchase:(id)purchase
{
  v4 = objc_alloc_init(MEMORY[0x1E69D49E8]);
  [v4 setAccountIdentifier:{objc_msgSend(purchase, "accountIdentifier")}];
  [v4 setBuyParameters:{objc_msgSend(purchase, "buyParameters")}];
  [v4 setDownloadProperties:{objc_msgSend(purchase, "downloadProperties")}];
  return v4;
}

- (id)_thumbnailImageForItem:(id)item
{
  itemImageCollection = [item itemImageCollection];
  v5 = [objc_msgSend(item "containerItem")];
  if ([item itemType] == 2000)
  {
    softwareType = [item softwareType];
    if ([softwareType isEqualToString:*MEMORY[0x1E69D4C20]])
    {
      v7 = [itemImageCollection imagesForKind:*MEMORY[0x1E69D4CD8]];
    }

    else
    {
      v7 = 0;
    }

    if (![v7 count])
    {
      v7 = [itemImageCollection imagesForKind:*MEMORY[0x1E69D4CA0]];
    }

    if ([v7 count])
    {

      return [v7 objectAtIndex:0];
    }

    v11 = 57.0;
    v12 = itemImageCollection;
    v13 = 57.0;
  }

  else
  {
    result = [itemImageCollection bestImageForSize:{88.0, 88.0}];
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
    result = [itemImageCollection bestImageForSize:{*MEMORY[0x1E695F060], v10}];
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