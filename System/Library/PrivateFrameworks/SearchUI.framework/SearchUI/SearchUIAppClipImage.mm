@interface SearchUIAppClipImage
- (SearchUIAppClipImage)initWithSFImage:(id)image;
- (id)loadImageWithImageData:(id)data scale:(double)scale isDarkStyle:(BOOL)style;
@end

@implementation SearchUIAppClipImage

- (SearchUIAppClipImage)initWithSFImage:(id)image
{
  v9.receiver = self;
  v9.super_class = SearchUIAppClipImage;
  v3 = [(SearchUIImage *)&v9 initWithSFImage:image];
  v4 = v3;
  if (v3)
  {
    [(SearchUIImage *)v3 size];
    if (v6 == *MEMORY[0x1E695F060] && v5 == *(MEMORY[0x1E695F060] + 8))
    {
      [SearchUIAppIconImage sizeForVariant:4];
      [(SearchUIAppClipImage *)v4 setSize:?];
    }
  }

  return v4;
}

- (id)loadImageWithImageData:(id)data scale:(double)scale isDarkStyle:(BOOL)style
{
  v9.receiver = self;
  v9.super_class = SearchUIAppClipImage;
  v6 = [(SearchUIImage *)&v9 loadImageWithImageData:data scale:style isDarkStyle:?];
  [(SearchUIImage *)self size];
  v7 = [SearchUIWebClipIconImage convertImage:"convertImage:ofSize:withShape:scale:" ofSize:v6 withShape:5 scale:?];

  return v7;
}

@end