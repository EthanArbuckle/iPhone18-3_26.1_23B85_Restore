@interface SUArtworkCellConfiguration
- (id)_artworkImageForURL:(id)a3 dataProvider:(id)a4;
- (id)artworkImageForItemImage:(id)a3;
- (id)artworkImageForURL:(id)a3;
- (id)copyImageDataProvider;
- (void)cancelArtworkRequests;
- (void)dealloc;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)reloadAfterArtworkLoad;
- (void)setRepresentedObject:(id)a3;
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

- (id)artworkImageForItemImage:(id)a3
{
  v5 = [a3 URL];
  if (v5)
  {
    v6 = v5;
    v7 = [(SUArtworkCellConfiguration *)self copyImageDataProvider];
    [a3 imageScale];
    [v7 setInputImageScale:?];
    v8 = [(SUArtworkCellConfiguration *)self _artworkImageForURL:v6 dataProvider:v7];

    return v8;
  }

  else
  {
    context = self->super.super._context;

    return [context placeholderImage];
  }
}

- (id)artworkImageForURL:(id)a3
{
  if (a3)
  {
    v5 = [(SUArtworkCellConfiguration *)self copyImageDataProvider];
    v6 = [(SUArtworkCellConfiguration *)self _artworkImageForURL:a3 dataProvider:v5];

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
  v3 = [self->super.super._context imagePool];
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
        [v3 cancelOperation:v9];
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
  v2 = [self->super.super._context imageProvider];

  return [v2 copy];
}

- (void)reloadAfterArtworkLoad
{
  [(SUArrayCellConfiguration *)self reloadData];
  v3 = [(SUCellConfiguration *)self view];

  [(SUCellConfigurationView *)v3 reloadView];
}

- (void)setRepresentedObject:(id)a3
{
  if (self->super.super._representedObject != a3)
  {
    v8 = v3;
    v9 = v4;
    [(SUArtworkCellConfiguration *)self cancelArtworkRequests];
    v7.receiver = self;
    v7.super_class = SUArtworkCellConfiguration;
    [(SUCellConfiguration *)&v7 setRepresentedObject:a3];
  }
}

- (void)operation:(id)a3 failedWithError:(id)a4
{
  [a3 setDelegate:{0, a4}];
  artworkLoadOperations = self->_artworkLoadOperations;

  [(NSMutableArray *)artworkLoadOperations removeObject:a3];
}

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  if (a4)
  {
    if (!self->_artworkByURL)
    {
      self->_artworkByURL = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = [objc_msgSend(a3 "requestProperties")];
    [(NSMutableDictionary *)self->_artworkByURL setObject:a4 forKey:v7];
    [objc_msgSend(self->super.super._context "imageCache")];
    [(SUArtworkCellConfiguration *)self reloadAfterArtworkLoad];
  }

  [a3 setDelegate:0];
  artworkLoadOperations = self->_artworkLoadOperations;

  [(NSMutableArray *)artworkLoadOperations removeObject:a3];
}

- (id)_artworkImageForURL:(id)a3 dataProvider:(id)a4
{
  result = [(NSMutableDictionary *)self->_artworkByURL objectForKey:?];
  if (!result)
  {
    result = [objc_msgSend(self->super.super._context "imageCache")];
    if (!result)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69E47E0]);
      [v8 setDataProvider:a4];
      [v8 setDelegate:self];
      [v8 setUrlKnownToBeTrusted:1];
      [v8 setShouldMessageMainThread:1];
      v9 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:a3];
      [v8 setRequestProperties:v9];

      artworkLoadOperations = self->_artworkLoadOperations;
      if (!artworkLoadOperations)
      {
        artworkLoadOperations = objc_alloc_init(MEMORY[0x1E695DF70]);
        self->_artworkLoadOperations = artworkLoadOperations;
      }

      [(NSMutableArray *)artworkLoadOperations addObject:v8];
      [objc_msgSend(self->super.super._context "imagePool")];
      v11 = [self->super.super._context placeholderImage];

      return v11;
    }
  }

  return result;
}

@end