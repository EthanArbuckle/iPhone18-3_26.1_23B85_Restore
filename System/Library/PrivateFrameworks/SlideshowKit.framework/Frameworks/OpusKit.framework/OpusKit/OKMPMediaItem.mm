@interface OKMPMediaItem
+ (id)urlForMediaObject:(id)object;
- (OKMPMediaItem)init;
- (OKMPMediaItem)initWithMPMediaItem:(id)item;
- (id)avAssetWithCompletionHandler:(id)handler;
- (id)createMetadataWithCompletionHandler:(id)handler;
- (id)createThumbnailImageForResolution:(unint64_t)resolution withMetadata:(id)metadata completionHandler:(id)handler;
- (id)resourceURLWithCompletionHandler:(id)handler;
- (void)_resolveAssetIfNeeded;
- (void)dealloc;
- (void)setMediaObject:(id)object;
@end

@implementation OKMPMediaItem

+ (id)urlForMediaObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [self urlForMPAsset:object];
}

- (OKMPMediaItem)init
{
  v3.receiver = self;
  v3.super_class = OKMPMediaItem;
  result = [(OKMPMediaItem *)&v3 init];
  if (result)
  {
    result->_mediaItem = 0;
  }

  return result;
}

- (OKMPMediaItem)initWithMPMediaItem:(id)item
{
  v5 = [objc_opt_class() urlForMPAsset:item];
  v10.receiver = self;
  v10.super_class = OKMPMediaItem;
  v6 = [(OKMediaItem *)&v10 initWithUniqueURL:v5];
  v7 = v6;
  if (v6)
  {
    if ([(OKMediaItem *)v6 uniqueURL])
    {
      v7->_mediaItem = item;
    }

    else
    {
      v8 = v7;
      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  mediaItem = self->_mediaItem;
  if (mediaItem)
  {

    self->_mediaItem = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMPMediaItem;
  [(OKMediaItem *)&v4 dealloc];
}

- (void)setMediaObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_opt_class() urlForMPAsset:{object), "isEqual:", -[OKMediaItem uniqueURL](self, "uniqueURL")}])
  {

    [(OKMPMediaItem *)self setMediaItem:object];
  }
}

- (void)_resolveAssetIfNeeded
{
  objc_sync_enter(self);
  if (![(OKMPMediaItem *)self mediaItem])
  {
    lastObject = [(NSArray *)[(NSString *)[(NSURL *)[(OKMediaItem *)self uniqueURL] absoluteString] componentsSeparatedByString:@"="] lastObject];
    v4 = objc_opt_new();
    [v4 setNumberStyle:1];
    v5 = [v4 numberFromString:lastObject];
    v6 = [MEMORY[0x277CD5E30] predicateWithValue:v5 forProperty:*MEMORY[0x277CD57D8]];
    v7 = objc_alloc_init(MEMORY[0x277CD5E38]);
    [v7 addFilterPredicate:v6];
    -[OKMPMediaItem setMediaItem:](self, "setMediaItem:", [objc_msgSend(v7 "items")]);
    if (v4)
    {
    }

    if (v7)
    {
    }
  }

  objc_sync_exit(self);
}

- (id)createMetadataWithCompletionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__OKMPMediaItem_createMetadataWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:handler];
}

uint64_t __53__OKMPMediaItem_createMetadataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, OKMediaItemMetadata **a3)
{
  [*(a1 + 32) _resolveAssetIfNeeded];
  v6 = objc_alloc_init(OKMediaItemMetadata);
  v7 = [objc_msgSend(*(a1 + 32) "mediaItem")];
  if (v7 == 65280)
  {
    v8 = 3;
    goto LABEL_5;
  }

  if (v7 == 255)
  {
    v8 = 1;
LABEL_5:
    [(OKMediaItemMetadata *)v6 setType:v8];
  }

  if ([(OKMediaItemMetadata *)v6 type]== 3 || [(OKMediaItemMetadata *)v6 type]== 1)
  {
    [objc_msgSend(*(a1 + 32) "mediaItem")];
    [(OKMediaItemMetadata *)v6 setDuration:?];
  }

  -[OKMediaItemMetadata setCreationDate:](v6, "setCreationDate:", [objc_msgSend(*(a1 + 32) "mediaItem")]);
  *a3 = v6;

  return [a2 finish];
}

- (id)createThumbnailImageForResolution:(unint64_t)resolution withMetadata:(id)metadata completionHandler:(id)handler
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__OKMPMediaItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke;
  v6[3] = &unk_279C8F8B8;
  v6[4] = self;
  v6[5] = resolution;
  return [(OKMediaItem *)self operationWithBlock:v6 completionHandlerWithObject:handler];
}

uint64_t __82__OKMPMediaItem_createThumbnailImageForResolution_withMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 32) _resolveAssetIfNeeded];
  *a3 = +[OKMediaImage mediaImageWithUIImage:](OKMediaImage, "mediaImageWithUIImage:", [objc_msgSend(objc_msgSend(*(a1 + 32) "mediaItem")]);

  return [a2 finish];
}

- (id)avAssetWithCompletionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__OKMPMediaItem_avAssetWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:handler];
}

uint64_t __46__OKMPMediaItem_avAssetWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 32) _resolveAssetIfNeeded];
  *a3 = [MEMORY[0x277CE63D8] assetWithURL:{objc_msgSend(objc_msgSend(*(a1 + 32), "mediaItem"), "assetURL")}];

  return [a2 finish];
}

- (id)resourceURLWithCompletionHandler:(id)handler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__OKMPMediaItem_resourceURLWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C8F720;
  v4[4] = self;
  return [(OKMediaItem *)self operationWithBlock:v4 completionHandlerWithObject:handler];
}

uint64_t __50__OKMPMediaItem_resourceURLWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [*(a1 + 32) _resolveAssetIfNeeded];
  *a3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "mediaItem")];

  return [a2 finish];
}

@end