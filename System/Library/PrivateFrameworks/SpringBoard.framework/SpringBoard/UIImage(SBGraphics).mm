@interface UIImage(SBGraphics)
- (BOOL)isAnimated;
- (CGImageRef)_newThumbnailWithImageSource:()SBGraphics forMaxPixelDimension:;
- (CGImageSourceRef)_newSource;
- (double)pixelSize;
- (id)_thumbnailFitToSize:()SBGraphics;
- (id)sbg_squareImage;
- (uint64_t)_newThumbnailWithJPEG:()SBGraphics forMaxPixelDimension:;
@end

@implementation UIImage(SBGraphics)

- (double)pixelSize
{
  cGImage = [self CGImage];
  if (!cGImage)
  {
    return *MEMORY[0x277CBF3A8];
  }

  v2 = cGImage;
  Width = CGImageGetWidth(cGImage);
  CGImageGetHeight(v2);
  return Width;
}

- (BOOL)isAnimated
{
  images = [self images];
  v2 = [images count] != 0;

  return v2;
}

- (id)sbg_squareImage
{
  [self size];
  if (v2 == v3)
  {
    selfCopy = self;
  }

  else
  {
    if (v2 <= v3)
    {
      v5 = v2;
    }

    else
    {
      v5 = v3;
    }

    [self scale];
    v7 = v6;
    v10.width = v5;
    v10.height = v5;
    UIGraphicsBeginImageContextWithOptions(v10, 0, v7);
    [self drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    selfCopy = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return selfCopy;
}

- (CGImageSourceRef)_newSource
{
  cGImage = [self CGImage];
  if (!cGImage)
  {
    return 0;
  }

  DataProvider = CGImageGetDataProvider(cGImage);
  if (!DataProvider)
  {
    return 0;
  }

  v3 = DataProvider;
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v5 = CGImageSourceCreateWithDataProvider(v3, dictionary);

  return v5;
}

- (id)_thumbnailFitToSize:()SBGraphics
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  if (a2 >= a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  v10 = v9 * v8;
  v11 = UIImageJPEGRepresentation(self, 1.0);
  if (v11)
  {
    v12 = [(UIImage *)self _newThumbnailWithJPEG:v11 forMaxPixelDimension:v10];
    if (v12)
    {
      v13 = v12;
LABEL_9:
      v16 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v13 scale:-[UIImage imageOrientation](self orientation:{"imageOrientation"), v8}];
      CFRelease(v13);
      goto LABEL_11;
    }
  }

  _newSource = [(UIImage *)self _newSource];
  if (_newSource)
  {
    v15 = _newSource;
    v13 = [(UIImage *)self _newThumbnailWithImageSource:_newSource forMaxPixelDimension:v10];
    CFRelease(v15);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (CGImageRef)_newThumbnailWithImageSource:()SBGraphics forMaxPixelDimension:
{
  if (!a4)
  {
    return 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v6 setObject:v7 forKey:*MEMORY[0x277CD3568]];

  *&v8 = self;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v6 setObject:v9 forKey:*MEMORY[0x277CD3660]];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a4, 0, v6);
  return ThumbnailAtIndex;
}

- (uint64_t)_newThumbnailWithJPEG:()SBGraphics forMaxPixelDimension:
{
  v11 = 0;
  if (!a4)
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = [[v5 alloc] initWithCapacity:1];
  *&v8 = self;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v7 setObject:v9 forKey:*MEMORY[0x277CD3660]];

  LODWORD(v9) = MEMORY[0x223D6C330](v6, v7, &v11);
  if (v9)
  {
    v11 = 0;
  }

  return v11;
}

@end