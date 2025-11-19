@interface OKResourceLoader
+ (id)resourceLoader;
- (BOOL)canLoadResourceWithURL:(id)a3;
- (id)copyResource:(id)a3;
- (id)loadResourceWithURL:(id)a3 withPresentationViewController:(id)a4;
- (void)deleteResource:(id)a3;
@end

@implementation OKResourceLoader

+ (id)resourceLoader
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)canLoadResourceWithURL:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKResourceLoader.m" line:21 andFormat:@"%s method need to be overrided", "-[OKResourceLoader canLoadResourceWithURL:]"];
  }

  return 0;
}

- (id)loadResourceWithURL:(id)a3 withPresentationViewController:(id)a4
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKResourceLoader.m" line:27 andFormat:@"%s method need to be overrided", "-[OKResourceLoader loadResourceWithURL:withPresentationViewController:]"];
  }

  return 0;
}

- (id)copyResource:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKResourceLoader.m" line:33 andFormat:@"%s method need to be overrided", "-[OKResourceLoader copyResource:]"];
  }

  return 0;
}

- (void)deleteResource:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Materials/OKResourceLoader.m" line:39 andFormat:@"%s method need to be overrided", "-[OKResourceLoader deleteResource:]"];
  }
}

@end