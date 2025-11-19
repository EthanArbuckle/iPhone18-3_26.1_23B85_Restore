@interface OKMicaResourceLoader
- (BOOL)canLoadResourceWithURL:(id)a3;
- (id)copyResource:(id)a3;
- (id)loadResourceWithURL:(id)a3 withPresentationViewController:(id)a4;
- (void)deleteResource:(id)a3;
@end

@implementation OKMicaResourceLoader

- (BOOL)canLoadResourceWithURL:(id)a3
{
  v3 = [objc_msgSend(a3 "absoluteString")];

  return [v3 isEqualToString:@"caar"];
}

- (id)loadResourceWithURL:(id)a3 withPresentationViewController:(id)a4
{
  v4 = [[OKWidgetMicaDocument alloc] initWithURL:a3];

  return v4;
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
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKMicaResourceLoader.m" line:35 andFormat:@"Bad argument in %s", "-[OKMicaResourceLoader copyResource:]"];
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
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKMicaResourceLoader.m" line:46 andFormat:@"Bad argument in %s", "-[OKMicaResourceLoader deleteResource:]"];
  }
}

@end