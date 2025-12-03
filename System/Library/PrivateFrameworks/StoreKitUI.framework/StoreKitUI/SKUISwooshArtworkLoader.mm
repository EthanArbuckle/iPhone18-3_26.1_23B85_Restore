@interface SKUISwooshArtworkLoader
- (BOOL)loadImageForObject:(id)object URL:(id)l reason:(int64_t)reason;
- (BOOL)loadImageForObject:(id)object artworkRequest:(id)request reason:(int64_t)reason;
- (SKUISwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh;
- (UIImage)placeholderImage;
- (id)cachedImageForObject:(id)object;
- (unint64_t)artworkRequestIdentifierForObject:(id)object;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)deprioritizePendingImageLoads;
- (void)setImageDataConsumer:(id)consumer;
- (void)setPlaceholderColorWithColorScheme:(id)scheme;
@end

@implementation SKUISwooshArtworkLoader

- (SKUISwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh
{
  loaderCopy = loader;
  swooshCopy = swoosh;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISwooshArtworkLoader initWithArtworkLoader:swoosh:];
  }

  v16.receiver = self;
  v16.super_class = SKUISwooshArtworkLoader;
  v9 = [(SKUISwooshArtworkLoader *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_artworkLoader, loader);
    objc_storeStrong(&v10->_swooshViewController, swoosh);
    v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    artworkRequestIDs = v10->_artworkRequestIDs;
    v10->_artworkRequestIDs = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    outstandingRequestIDs = v10->_outstandingRequestIDs;
    v10->_outstandingRequestIDs = v13;
  }

  return v10;
}

- (unint64_t)artworkRequestIdentifierForObject:(id)object
{
  v3 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:object];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)cachedImageForObject:(id)object
{
  v4 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:object];
  v5 = v4;
  if (v4)
  {
    v6 = -[SKUIResourceLoader cachedResourceForRequestIdentifier:](self->_artworkLoader, "cachedResourceForRequestIdentifier:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deprioritizePendingImageLoads
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__39;
  v9 = __Block_byref_object_dispose__39;
  v10 = 0;
  outstandingRequestIDs = self->_outstandingRequestIDs;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SKUISwooshArtworkLoader_deprioritizePendingImageLoads__block_invoke;
  v4[3] = &unk_2781FCC68;
  v4[4] = self;
  v4[5] = &v5;
  [(NSMutableIndexSet *)outstandingRequestIDs enumerateIndexesUsingBlock:v4];
  if (v6[5])
  {
    [(NSMutableIndexSet *)self->_outstandingRequestIDs removeIndexes:?];
  }

  _Block_object_dispose(&v5, 8);
}

uint64_t __56__SKUISwooshArtworkLoader_deprioritizePendingImageLoads__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 32) + 8) trySetReason:0 forRequestWithIdentifier:a2];
  if ((result & 1) == 0)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    return [v5 addIndex:a2];
  }

  return result;
}

- (BOOL)loadImageForObject:(id)object URL:(id)l reason:(int64_t)reason
{
  objectCopy = object;
  lCopy = l;
  v10 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:objectCopy];
  v11 = v10;
  if (v10 && -[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_artworkLoader, "trySetReason:forRequestWithIdentifier:", reason, [v10 unsignedIntegerValue]))
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    v13 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIArtworkRequest *)v13 setDataConsumer:self->_imageDataConsumer];
    [(SKUIArtworkRequest *)v13 setDelegate:self];
    [(SKUIArtworkRequest *)v13 setURL:lCopy];
    v12 = [(SKUIResourceLoader *)self->_artworkLoader loadResourceWithRequest:v13 reason:1];
    if (v12)
    {
      requestIdentifier = [(SKUIResourceRequest *)v13 requestIdentifier];
      [(NSMutableIndexSet *)self->_outstandingRequestIDs addIndex:requestIdentifier];
      artworkRequestIDs = self->_artworkRequestIDs;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:requestIdentifier];
      [(NSMapTable *)artworkRequestIDs setObject:v16 forKey:objectCopy];
    }
  }

  return v12;
}

- (BOOL)loadImageForObject:(id)object artworkRequest:(id)request reason:(int64_t)reason
{
  objectCopy = object;
  requestCopy = request;
  v10 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:objectCopy];
  v11 = v10;
  if (v10 && -[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_artworkLoader, "trySetReason:forRequestWithIdentifier:", reason, [v10 unsignedIntegerValue]) || (objc_msgSend(requestCopy, "setDelegate:", self), !-[SKUIResourceLoader loadResourceWithRequest:reason:](self->_artworkLoader, "loadResourceWithRequest:reason:", requestCopy, 1)))
  {
    v15 = 0;
  }

  else
  {
    requestIdentifier = [requestCopy requestIdentifier];
    [(NSMutableIndexSet *)self->_outstandingRequestIDs addIndex:requestIdentifier];
    artworkRequestIDs = self->_artworkRequestIDs;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:requestIdentifier];
    [(NSMapTable *)artworkRequestIDs setObject:v14 forKey:objectCopy];

    v15 = 1;
  }

  return v15;
}

- (UIImage)placeholderImage
{
  placeholderImage = self->_placeholderImage;
  if (!placeholderImage)
  {
    imageDataConsumer = [(SKUISwooshArtworkLoader *)self imageDataConsumer];
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v6 = [imageDataConsumer imageForColor:v5];
    v7 = self->_placeholderImage;
    self->_placeholderImage = v6;

    placeholderImage = self->_placeholderImage;
  }

  return placeholderImage;
}

- (void)setImageDataConsumer:(id)consumer
{
  consumerCopy = consumer;
  if (self->_imageDataConsumer != consumerCopy)
  {
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = 0;
    v7 = consumerCopy;

    objc_storeStrong(&self->_imageDataConsumer, consumer);
    consumerCopy = v7;
  }
}

- (void)setPlaceholderColorWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  v13 = schemeCopy;
  if (!schemeCopy)
  {
    v7 = MEMORY[0x277D75348];
    v8 = 0.8;
    v9 = 1.0;
LABEL_11:
    v6 = [v7 colorWithWhite:v8 alpha:v9];
    goto LABEL_12;
  }

  schemeStyle = [schemeCopy schemeStyle];
  v6 = 0;
  if (schemeStyle > 1)
  {
    if (schemeStyle != 2)
    {
      if (schemeStyle != 3)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v7 = MEMORY[0x277D75348];
    v9 = 0.2;
    v8 = 0.0;
    goto LABEL_11;
  }

  if (!schemeStyle)
  {
    goto LABEL_10;
  }

  if (schemeStyle == 1)
  {
LABEL_9:
    v7 = MEMORY[0x277D75348];
    v9 = 0.2;
    v8 = 1.0;
    goto LABEL_11;
  }

LABEL_12:
  imageDataConsumer = [(SKUISwooshArtworkLoader *)self imageDataConsumer];
  v11 = [imageDataConsumer imageForColor:v6];
  placeholderImage = self->_placeholderImage;
  self->_placeholderImage = v11;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  outstandingRequestIDs = self->_outstandingRequestIDs;
  imageCopy = image;
  requestCopy = request;
  -[NSMutableIndexSet removeIndex:](outstandingRequestIDs, "removeIndex:", [requestCopy requestIdentifier]);
  [(SKUISwooshArtworkLoader *)self setImage:imageCopy forRequest:requestCopy];

  [requestCopy setDelegate:0];
}

- (void)initWithArtworkLoader:swoosh:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISwooshArtworkLoader initWithArtworkLoader:swoosh:]";
}

@end