@interface OKImageResourceLoader
- (id)copyResource:(id)resource;
- (id)loadResourceWithURL:(id)l withPresentationViewController:(id)controller;
- (void)deleteResource:(id)resource;
@end

@implementation OKImageResourceLoader

- (id)loadResourceWithURL:(id)l withPresentationViewController:(id)controller
{
  v5 = [objc_msgSend(controller "presentation")];
  [objc_msgSend(v5 "metadata")];
  v7 = v6;
  colorSpace = [controller colorSpace];

  return [v5 thumbnailImageForResolution:2048 aspectRatio:colorSpace scale:v7 quality:1.0 colorSpace:1.0];
}

- (id)copyResource:(id)resource
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [resource copy];
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

- (void)deleteResource:(id)resource
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (resource)
    {
    }
  }

  else if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKImageResourceLoader.m" line:55 andFormat:@"Bad argument in %s", "-[OKImageResourceLoader deleteResource:]"];
  }
}

@end