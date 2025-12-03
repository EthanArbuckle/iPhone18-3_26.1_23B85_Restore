@interface SearchUIWatchListIconImage
- (SearchUIWatchListIconImage)initWithArtwork:(id)artwork;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation SearchUIWatchListIconImage

- (SearchUIWatchListIconImage)initWithArtwork:(id)artwork
{
  artworkCopy = artwork;
  v9.receiver = self;
  v9.super_class = SearchUIWatchListIconImage;
  v6 = [(SearchUIWatchListIconImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artwork, artwork);
  }

  return v7;
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  styleCopy = style;
  handlerCopy = handler;
  [(SearchUIImage *)self size];
  v10 = v9 * scale;
  [(SearchUIImage *)self size];
  v12 = v11 * scale;
  artwork = [(SearchUIWatchListIconImage *)self artwork];
  v14 = [artwork bestArtworkVariantOfType:10 forSize:{v10, v12}];

  v15 = objc_opt_new();
  v16 = [v14 artworkURLForSize:@"png" format:{v10, v12}];
  [v15 setUrlValue:v16];

  [(SearchUIImage *)self setSfImage:v15];
  v17.receiver = self;
  v17.super_class = SearchUIWatchListIconImage;
  [(SearchUIImage *)&v17 loadImageWithScale:styleCopy isDarkStyle:handlerCopy completionHandler:scale];
}

@end