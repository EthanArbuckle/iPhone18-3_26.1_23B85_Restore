@interface SearchUIAppClipImage
- (SearchUIAppClipImage)initWithSFImage:(id)a3;
- (id)loadImageWithImageData:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5;
@end

@implementation SearchUIAppClipImage

- (SearchUIAppClipImage)initWithSFImage:(id)a3
{
  v9.receiver = self;
  v9.super_class = SearchUIAppClipImage;
  v3 = [(SearchUIImage *)&v9 initWithSFImage:a3];
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

- (id)loadImageWithImageData:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = SearchUIAppClipImage;
  v6 = [(SearchUIImage *)&v9 loadImageWithImageData:a3 scale:a5 isDarkStyle:?];
  [(SearchUIImage *)self size];
  v7 = [SearchUIWebClipIconImage convertImage:"convertImage:ofSize:withShape:scale:" ofSize:v6 withShape:5 scale:?];

  return v7;
}

@end