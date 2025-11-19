@interface SearchUIWatchListIconImage
- (SearchUIWatchListIconImage)initWithArtwork:(id)a3;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUIWatchListIconImage

- (SearchUIWatchListIconImage)initWithArtwork:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIWatchListIconImage;
  v6 = [(SearchUIWatchListIconImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artwork, a3);
  }

  return v7;
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  [(SearchUIImage *)self size];
  v10 = v9 * a3;
  [(SearchUIImage *)self size];
  v12 = v11 * a3;
  v13 = [(SearchUIWatchListIconImage *)self artwork];
  v14 = [v13 bestArtworkVariantOfType:10 forSize:{v10, v12}];

  v15 = objc_opt_new();
  v16 = [v14 artworkURLForSize:@"png" format:{v10, v12}];
  [v15 setUrlValue:v16];

  [(SearchUIImage *)self setSfImage:v15];
  v17.receiver = self;
  v17.super_class = SearchUIWatchListIconImage;
  [(SearchUIImage *)&v17 loadImageWithScale:v5 isDarkStyle:v8 completionHandler:a3];
}

@end