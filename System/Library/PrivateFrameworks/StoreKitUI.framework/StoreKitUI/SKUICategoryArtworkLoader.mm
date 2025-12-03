@interface SKUICategoryArtworkLoader
- (CGSize)imageSize;
- (SKUICategoryArtworkLoader)initWithArtworkLoader:(id)loader;
- (UIImage)placeholderImage;
- (id)cachedImageForCategory:(id)category;
- (void)addObserver:(id)observer;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)loadImageForCategory:(id)category reason:(int64_t)reason;
@end

@implementation SKUICategoryArtworkLoader

- (SKUICategoryArtworkLoader)initWithArtworkLoader:(id)loader
{
  loaderCopy = loader;
  if (!os_variant_has_internal_content() || !_os_feature_enabled_impl() || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    if (loaderCopy)
    {
      goto LABEL_5;
    }

LABEL_8:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil loader"];
    v5 = 0;
    goto LABEL_9;
  }

  [SKUICategoryArtworkLoader initWithArtworkLoader:];
  if (!loaderCopy)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10.receiver = self;
  v10.super_class = SKUICategoryArtworkLoader;
  v5 = [(SKUICategoryArtworkLoader *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    v7 = *(v5 + 1);
    *(v5 + 1) = v6;

    v8 = loaderCopy;
    self = *(v5 + 3);
    *(v5 + 3) = v8;
LABEL_9:
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  objc_initWeak(&location, observer);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  v7 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v7];

  objc_destroyWeak(&location);
}

- (id)cachedImageForCategory:(id)category
{
  v4 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:category];
  v5 = v4;
  if (v4)
  {
    v6 = -[SKUIResourceLoader cachedResourceForRequestIdentifier:](self->_loader, "cachedResourceForRequestIdentifier:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadImageForCategory:(id)category reason:(int64_t)reason
{
  categoryCopy = category;
  v6 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:?];
  v7 = v6;
  if (!v6 || !-[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_loader, "trySetReason:forRequestWithIdentifier:", reason, [v6 unsignedIntegerValue]))
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = v9;

    if (v10 == 2.0)
    {
      v11 = 100;
    }

    else
    {
      v11 = 50;
    }

    artworkProvider = [categoryCopy artworkProvider];
    v13 = [artworkProvider artworkURLForSize:v11];

    if (v13)
    {
      v14 = objc_alloc_init(SKUIArtworkRequest);
      [(SKUIArtworkRequest *)v14 setDataConsumer:self->_imageDataConsumer];
      [(SKUIArtworkRequest *)v14 setDelegate:self];
      [(SKUIArtworkRequest *)v14 setURL:v13];
      [(SKUIResourceLoader *)self->_loader loadResourceWithRequest:v14 reason:reason];
      artworkRequestIDs = self->_artworkRequestIDs;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v14, "requestIdentifier")}];
      [(NSMapTable *)artworkRequestIDs setObject:v16 forKey:categoryCopy];
    }
  }
}

- (UIImage)placeholderImage
{
  placeholderImage = self->_placeholderImage;
  if (!placeholderImage)
  {
    imageDataConsumer = self->_imageDataConsumer;
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
    v6 = [(SKUIImageDataConsumer *)imageDataConsumer imageForColor:v5];
    v7 = self->_placeholderImage;
    self->_placeholderImage = v6;

    placeholderImage = self->_placeholderImage;
  }

  return placeholderImage;
}

- (CGSize)imageSize
{
  v2 = 33.0;
  v3 = 33.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v32 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestIdentifier = [request requestIdentifier];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_artworkRequestIDs;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      v14 = [(NSMapTable *)self->_artworkRequestIDs objectForKey:v13];
      if (requestIdentifier == [v14 unsignedIntegerValue])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_22;
    }

    allObjects = [(NSHashTable *)self->_observers allObjects];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [allObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(allObjects);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v21 categoryArtworkLoader:self didLoadImage:imageCopy forCategory:v15];
          }
        }

        v18 = [allObjects countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }
  }

  else
  {
LABEL_9:
    v15 = v8;
  }

LABEL_22:
}

- (void)initWithArtworkLoader:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICategoryArtworkLoader initWithArtworkLoader:]";
}

@end