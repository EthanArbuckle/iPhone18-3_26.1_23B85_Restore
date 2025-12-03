@interface SKUIBadgeTextAttachmentLoader
- (BOOL)loadImageForBadge:(id)badge layout:(id)layout reason:(int64_t)reason;
- (SKUIBadgeTextAttachmentLoader)initWithResourceLoader:(id)loader;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)connectStringView:(id)view;
@end

@implementation SKUIBadgeTextAttachmentLoader

- (SKUIBadgeTextAttachmentLoader)initWithResourceLoader:(id)loader
{
  loaderCopy = loader;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIBadgeTextAttachmentLoader initWithResourceLoader:];
  }

  v13.receiver = self;
  v13.super_class = SKUIBadgeTextAttachmentLoader;
  v6 = [(SKUIBadgeTextAttachmentLoader *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceLoader, loader);
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    imageRequests = v7->_imageRequests;
    v7->_imageRequests = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    stringViews = v7->_stringViews;
    v7->_stringViews = v10;
  }

  return v7;
}

- (void)connectStringView:(id)view
{
  stringViews = self->_stringViews;
  viewCopy = view;
  [(NSHashTable *)stringViews addObject:viewCopy];
}

- (BOOL)loadImageForBadge:(id)badge layout:(id)layout reason:(int64_t)reason
{
  badgeCopy = badge;
  layoutCopy = layout;
  imageURL = [badgeCopy imageURL];
  if (imageURL && ([badgeCopy image], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    p_isa = [(NSMapTable *)self->_imageRequests objectForKey:badgeCopy];
    if (p_isa && [(SKUIResourceLoader *)self->_resourceLoader trySetReason:reason forRequestWithIdentifier:p_isa[1]])
    {
      v12 = 0;
    }

    else
    {
      v14 = objc_alloc_init(SKUIArtworkRequest);
      v15 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
      [(SKUIArtworkRequest *)v14 setDataConsumer:v15];

      [(SKUIArtworkRequest *)v14 setDelegate:self];
      [(SKUIArtworkRequest *)v14 setURL:imageURL];
      v16 = objc_alloc_init(SKUIBadgeImageRequest);

      v16->_requestIdentifier = [(SKUIResourceRequest *)v14 requestIdentifier];
      objc_storeStrong(&v16->_stringLayout, layout);
      [(NSMapTable *)self->_imageRequests setObject:v16 forKey:badgeCopy];
      v12 = [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v14 reason:reason];

      p_isa = &v16->super.isa;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v33 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestIdentifier = [request requestIdentifier];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_imageRequests;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [(NSMapTable *)self->_imageRequests objectForKey:v12];
      v14 = v13;
      if (requestIdentifier == v13[1])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v12;
    v9 = v14[2];

    if (!v15)
    {
      goto LABEL_24;
    }

    [v15 setImage:imageCopy];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = self->_stringViews;
    v17 = [(NSHashTable *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          layout = [v21 layout];

          if (layout == v9)
          {
            v8 = v21;

            if (v8)
            {
              [(NSMapTable *)v8 setNeedsDisplay];
              [(NSHashTable *)self->_stringViews removeObject:v8];
            }

            goto LABEL_22;
          }
        }

        v18 = [(NSHashTable *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_22:
    [(NSMapTable *)self->_imageRequests removeObjectForKey:v15, v23];
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

LABEL_24:
}

- (void)initWithResourceLoader:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBadgeTextAttachmentLoader initWithResourceLoader:]";
}

@end