@interface OKMicaResourceLoader
- (BOOL)canLoadResourceWithURL:(id)l;
- (id)copyResource:(id)resource;
- (id)loadResourceWithURL:(id)l withPresentationViewController:(id)controller;
- (void)deleteResource:(id)resource;
@end

@implementation OKMicaResourceLoader

- (BOOL)canLoadResourceWithURL:(id)l
{
  v3 = [objc_msgSend(l "absoluteString")];

  return [v3 isEqualToString:@"caar"];
}

- (id)loadResourceWithURL:(id)l withPresentationViewController:(id)controller
{
  v4 = [[OKWidgetMicaDocument alloc] initWithURL:l];

  return v4;
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
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKMicaResourceLoader.m" line:35 andFormat:@"Bad argument in %s", "-[OKMicaResourceLoader copyResource:]"];
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
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKMicaResourceLoader.m" line:46 andFormat:@"Bad argument in %s", "-[OKMicaResourceLoader deleteResource:]"];
  }
}

@end