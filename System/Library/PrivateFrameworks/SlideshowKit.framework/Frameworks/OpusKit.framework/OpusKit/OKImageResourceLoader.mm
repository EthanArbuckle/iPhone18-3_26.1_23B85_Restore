@interface OKImageResourceLoader
- (id)copyResource:(id)a3;
- (id)loadResourceWithURL:(id)a3 withPresentationViewController:(id)a4;
- (void)deleteResource:(id)a3;
@end

@implementation OKImageResourceLoader

- (id)loadResourceWithURL:(id)a3 withPresentationViewController:(id)a4
{
  v5 = [objc_msgSend(a4 "presentation")];
  [objc_msgSend(v5 "metadata")];
  v7 = v6;
  v8 = [a4 colorSpace];

  return [v5 thumbnailImageForResolution:2048 aspectRatio:v8 scale:v7 quality:1.0 colorSpace:1.0];
}

- (id)copyResource:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [a3 copy];
  }

  else
  {
    if (*MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKImageResourceLoader.m" line:44 andFormat:@"Bad argument in %s", "-[OKImageResourceLoader copyResource:]"];
    }

    return 0;
  }
}

- (void)deleteResource:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3)
    {
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKImageResourceLoader.m" line:55 andFormat:@"Bad argument in %s", "-[OKImageResourceLoader deleteResource:]"];
  }
}

@end