@interface SKUILockupSwooshArtworkLoader
- (BOOL)loadImageForItem:(id)item reason:(int64_t)reason;
- (BOOL)loadImageForVideo:(id)video reason:(int64_t)reason;
- (SKUILockupSwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh;
- (id)placeholderImageForItem:(id)item;
- (id)placeholderImageForVideo:(id)video;
- (void)loadImagesForNextPageWithReason:(int64_t)reason;
- (void)setImage:(id)image forRequest:(id)request;
@end

@implementation SKUILockupSwooshArtworkLoader

- (SKUILockupSwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh
{
  loaderCopy = loader;
  swooshCopy = swoosh;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshArtworkLoader initWithArtworkLoader:swoosh:];
  }

  v14.receiver = self;
  v14.super_class = SKUILockupSwooshArtworkLoader;
  v8 = [(SKUISwooshArtworkLoader *)&v14 initWithArtworkLoader:loaderCopy swoosh:swooshCopy];
  if (v8)
  {
    artworkContext = [swooshCopy artworkContext];
    context = v8->_context;
    v8->_context = artworkContext;

    videoImageConsumer = [swooshCopy videoImageConsumer];
    videoImageConsumer = v8->_videoImageConsumer;
    v8->_videoImageConsumer = videoImageConsumer;
  }

  return v8;
}

- (BOOL)loadImageForItem:(id)item reason:(int64_t)reason
{
  itemCopy = item;
  v7 = [(SKUIItemArtworkContext *)self->_context URLForItem:itemCopy];
  if (v7)
  {
    v8 = objc_alloc_init(SKUIArtworkRequest);
    v9 = [(SKUIItemArtworkContext *)self->_context dataConsumerForItem:itemCopy];
    [(SKUIArtworkRequest *)v8 setDataConsumer:v9];

    [(SKUIArtworkRequest *)v8 setURL:v7];
    v10 = [(SKUISwooshArtworkLoader *)self loadImageForObject:itemCopy artworkRequest:v8 reason:reason];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadImageForVideo:(id)video reason:(int64_t)reason
{
  videoCopy = video;
  [(SKUIVideoImageDataConsumer *)self->_videoImageConsumer landscapeSize];
  v8 = v7;
  v10 = v9;
  artworks = [videoCopy artworks];
  v12 = [artworks bestArtworkForScaledSize:{v8, v10}];
  v13 = [v12 URL];

  if (v13)
  {
    v14 = objc_alloc_init(SKUIArtworkRequest);
    [(SKUIArtworkRequest *)v14 setDataConsumer:self->_videoImageConsumer];
    [(SKUIArtworkRequest *)v14 setURL:v13];
    v15 = [(SKUISwooshArtworkLoader *)self loadImageForObject:videoCopy artworkRequest:v14 reason:reason];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)placeholderImageForItem:(id)item
{
  itemCopy = item;
  swooshViewController = [(SKUISwooshArtworkLoader *)self swooshViewController];
  artworkContext = [swooshViewController artworkContext];
  v7 = [artworkContext placeholderImageForItem:itemCopy];

  return v7;
}

- (id)placeholderImageForVideo:(id)video
{
  videoPlaceholderImage = self->_videoPlaceholderImage;
  if (!videoPlaceholderImage)
  {
    v5 = [(SKUIVideoImageDataConsumer *)self->_videoImageConsumer imageForColor:0 orientation:2];
    v6 = self->_videoPlaceholderImage;
    self->_videoPlaceholderImage = v5;

    videoPlaceholderImage = self->_videoPlaceholderImage;
  }

  return videoPlaceholderImage;
}

- (void)loadImagesForNextPageWithReason:(int64_t)reason
{
  swooshViewController = [(SKUISwooshArtworkLoader *)self swooshViewController];
  lockups = [swooshViewController lockups];

  v6 = [lockups count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [lockups objectAtIndex:v9 - 1];
      item = [v10 item];
      if (item)
      {
        v12 = [(SKUILockupSwooshArtworkLoader *)self loadImageForItem:item reason:reason];
        videos = [item videos];
        firstObject = [videos firstObject];

        if (firstObject)
        {
          [(SKUILockupSwooshArtworkLoader *)self loadImageForVideo:firstObject reason:reason];
        }

        v8 += v12;
      }

      if (v9 >= v7)
      {
        break;
      }

      ++v9;
    }

    while (v8 < 7);
  }
}

- (void)setImage:(id)image forRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  requestIdentifier = [requestCopy requestIdentifier];
  swooshViewController = [(SKUISwooshArtworkLoader *)self swooshViewController];
  lockups = [swooshViewController lockups];
  [swooshViewController indexPathsForVisibleItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v18 = swooshViewController;
    v19 = imageCopy;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [lockups objectAtIndex:{objc_msgSend(v13, "item")}];
        item = [v14 item];
        if (item)
        {
          if ([(SKUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:item]== requestIdentifier)
          {
            swooshViewController = v18;
            imageCopy = v19;
            [v18 setImage:v19 forItemAtIndex:{objc_msgSend(v13, "item")}];
LABEL_16:

            goto LABEL_17;
          }

          videos = [item videos];
          firstObject = [videos firstObject];

          if (firstObject && [(SKUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:firstObject]== requestIdentifier)
          {
            swooshViewController = v18;
            imageCopy = v19;
            [v18 setVideoThumbnail:v19 forItemAtIndex:{objc_msgSend(v13, "item")}];

            goto LABEL_16;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      swooshViewController = v18;
      imageCopy = v19;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v23.receiver = self;
  v23.super_class = SKUILockupSwooshArtworkLoader;
  [(SKUISwooshArtworkLoader *)&v23 setImage:imageCopy forRequest:requestCopy];
}

- (void)initWithArtworkLoader:swoosh:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshArtworkLoader initWithArtworkLoader:swoosh:]";
}

@end