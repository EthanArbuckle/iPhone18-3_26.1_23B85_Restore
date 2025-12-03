@interface SUArtworkCellConfiguration
- (id)_artworkImageForURL:(id)l dataProvider:(id)provider;
- (id)artworkImageForItemImage:(id)image;
- (id)artworkImageForURL:(id)l;
- (id)copyImageDataProvider;
- (void)cancelArtworkRequests;
- (void)dealloc;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)reloadAfterArtworkLoad;
- (void)setRepresentedObject:(id)object;
@end

@implementation SUArtworkCellConfiguration

- (void)dealloc
{
  [(SUArtworkCellConfiguration *)self cancelArtworkRequests];

  self->_artworkLoadOperations = 0;
  self->_artworkByURL = 0;
  v3.receiver = self;
  v3.super_class = SUArtworkCellConfiguration;
  [(SUArrayCellConfiguration *)&v3 dealloc];
}

- (id)artworkImageForItemImage:(id)image
{
  v5 = [image URL];
  if (v5)
  {
    v6 = v5;
    copyImageDataProvider = [(SUArtworkCellConfiguration *)self copyImageDataProvider];
    [image imageScale];
    [copyImageDataProvider setInputImageScale:?];
    v8 = [(SUArtworkCellConfiguration *)self _artworkImageForURL:v6 dataProvider:copyImageDataProvider];

    return v8;
  }

  else
  {
    context = self->super.super._context;

    return [context placeholderImage];
  }
}

- (id)artworkImageForURL:(id)l
{
  if (l)
  {
    copyImageDataProvider = [(SUArtworkCellConfiguration *)self copyImageDataProvider];
    v6 = [(SUArtworkCellConfiguration *)self _artworkImageForURL:l dataProvider:copyImageDataProvider];

    return v6;
  }

  else
  {
    context = self->super.super._context;

    return [context placeholderImage];
  }
}

- (void)cancelArtworkRequests
{
  v15 = *MEMORY[0x1E69E9840];
  imagePool = [self->super.super._context imagePool];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  artworkLoadOperations = self->_artworkLoadOperations;
  v5 = [(NSMutableArray *)artworkLoadOperations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(artworkLoadOperations);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setDelegate:0];
        [imagePool cancelOperation:v9];
      }

      v6 = [(NSMutableArray *)artworkLoadOperations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_artworkByURL removeAllObjects];
  [(NSMutableArray *)self->_artworkLoadOperations removeAllObjects];
}

- (id)copyImageDataProvider
{
  imageProvider = [self->super.super._context imageProvider];

  return [imageProvider copy];
}

- (void)reloadAfterArtworkLoad
{
  [(SUArrayCellConfiguration *)self reloadData];
  view = [(SUCellConfiguration *)self view];

  [(SUCellConfigurationView *)view reloadView];
}

- (void)setRepresentedObject:(id)object
{
  if (self->super.super._representedObject != object)
  {
    v8 = v3;
    v9 = v4;
    [(SUArtworkCellConfiguration *)self cancelArtworkRequests];
    v7.receiver = self;
    v7.super_class = SUArtworkCellConfiguration;
    [(SUCellConfiguration *)&v7 setRepresentedObject:object];
  }
}

- (void)operation:(id)operation failedWithError:(id)error
{
  [operation setDelegate:{0, error}];
  artworkLoadOperations = self->_artworkLoadOperations;

  [(NSMutableArray *)artworkLoadOperations removeObject:operation];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  if (output)
  {
    if (!self->_artworkByURL)
    {
      self->_artworkByURL = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = [objc_msgSend(operation "requestProperties")];
    [(NSMutableDictionary *)self->_artworkByURL setObject:output forKey:v7];
    [objc_msgSend(self->super.super._context "imageCache")];
    [(SUArtworkCellConfiguration *)self reloadAfterArtworkLoad];
  }

  [operation setDelegate:0];
  artworkLoadOperations = self->_artworkLoadOperations;

  [(NSMutableArray *)artworkLoadOperations removeObject:operation];
}

- (id)_artworkImageForURL:(id)l dataProvider:(id)provider
{
  result = [(NSMutableDictionary *)self->_artworkByURL objectForKey:?];
  if (!result)
  {
    result = [objc_msgSend(self->super.super._context "imageCache")];
    if (!result)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69E47E0]);
      [v8 setDataProvider:provider];
      [v8 setDelegate:self];
      [v8 setUrlKnownToBeTrusted:1];
      [v8 setShouldMessageMainThread:1];
      v9 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:l];
      [v8 setRequestProperties:v9];

      artworkLoadOperations = self->_artworkLoadOperations;
      if (!artworkLoadOperations)
      {
        artworkLoadOperations = objc_alloc_init(MEMORY[0x1E695DF70]);
        self->_artworkLoadOperations = artworkLoadOperations;
      }

      [(NSMutableArray *)artworkLoadOperations addObject:v8];
      [objc_msgSend(self->super.super._context "imagePool")];
      placeholderImage = [self->super.super._context placeholderImage];

      return placeholderImage;
    }
  }

  return result;
}

@end