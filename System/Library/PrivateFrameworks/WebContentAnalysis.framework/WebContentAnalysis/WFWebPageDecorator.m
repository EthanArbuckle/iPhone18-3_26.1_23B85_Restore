@interface WFWebPageDecorator
+ (id)_plainTextWithSelector:(SEL)a3 object:(id)a4;
+ (id)plainTextWithWebPageData:(id)a3;
+ (id)plainTextWithWebPageString:(id)a3;
+ (id)webPageWithData:(id)a3;
+ (id)webPageWithData:(id)a3 URLString:(id)a4;
+ (id)webPageWithString:(id)a3;
+ (id)webPageWithString:(id)a3 URLString:(id)a4;
- (WFWebPageDecorator)initWithWebPageData:(id)a3;
- (WFWebPageDecorator)initWithWebPageString:(id)a3;
- (WFWebPageDecorator)initWithWebPageStripper:(id)a3;
- (id)imageAltsText;
- (id)linkTitlesText;
- (id)plainText;
- (id)plainTextAttributeWithSelector:(SEL)a3 title:(id)a4 weight:(int)a5;
- (id)rawPlainText;
- (int64_t)numberOfImages;
- (int64_t)numberOfKnownImagePixels;
- (int64_t)numberOfUnknownSizedImages;
- (void)_cacheImgProperties;
- (void)dealloc;
@end

@implementation WFWebPageDecorator

+ (id)_plainTextWithSelector:(SEL)a3 object:(id)a4
{
  v6 = objc_alloc(objc_opt_class());
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 performSelector:a3 withObject:a4];
    v8 = [v7 plainText];

    return v8;
  }

  else
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(a3);
    NSLog(&cfstr_DoesnTAsnwerTo.isa, v10, v11);
    return &stru_28826CB10;
  }
}

+ (id)plainTextWithWebPageData:(id)a3
{
  v4 = objc_opt_class();

  return [v4 _plainTextWithSelector:sel_initWithWebPageData_ object:a3];
}

+ (id)plainTextWithWebPageString:(id)a3
{
  v4 = objc_opt_class();

  return [v4 _plainTextWithSelector:sel_initWithWebPageString_ object:a3];
}

+ (id)webPageWithData:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithWebPageData:a3];

  return v3;
}

+ (id)webPageWithData:(id)a3 URLString:(id)a4
{
  v5 = [objc_alloc(objc_opt_class()) initWithWebPageData:a3];
  [v5 setURLString:a4];

  return v5;
}

+ (id)webPageWithString:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithWebPageString:a3];

  return v3;
}

+ (id)webPageWithString:(id)a3 URLString:(id)a4
{
  v5 = [objc_alloc(objc_opt_class()) initWithWebPageString:a3];
  [v5 setURLString:a4];

  return v5;
}

- (WFWebPageDecorator)initWithWebPageData:(id)a3
{
  v4 = [WFTreeHTMLStripper treeStripperWithData:a3];

  return [(WFWebPageDecorator *)self initWithWebPageStripper:v4];
}

- (WFWebPageDecorator)initWithWebPageString:(id)a3
{
  v4 = [WFTreeHTMLStripper treeStripperWithString:a3];

  return [(WFWebPageDecorator *)self initWithWebPageStripper:v4];
}

- (WFWebPageDecorator)initWithWebPageStripper:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFWebPageDecorator;
  v4 = [(WFWebPageDecorator *)&v6 init];
  if (v4)
  {
    v4->webPageStripper = a3;
  }

  return v4;
}

- (void)_cacheImgProperties
{
  if (!self->pageImagesPropertyCache)
  {
    self->pageImagesPropertyCache = [[WFImgArrayCache alloc] initWithArray:[(WFWebPageDecorator *)self images]];
  }
}

- (int64_t)numberOfImages
{
  v2 = [(WFWebPageDecorator *)self images];

  return [v2 count];
}

- (id)imageAltsText
{
  [(WFWebPageDecorator *)self _cacheImgProperties];
  pageImagesPropertyCache = self->pageImagesPropertyCache;

  return [(WFImgArrayCache *)pageImagesPropertyCache imageAlternativeDescriptions];
}

- (int64_t)numberOfUnknownSizedImages
{
  [(WFWebPageDecorator *)self _cacheImgProperties];
  pageImagesPropertyCache = self->pageImagesPropertyCache;

  return [(WFImgArrayCache *)pageImagesPropertyCache numberOfUnknownSizedImages];
}

- (int64_t)numberOfKnownImagePixels
{
  [(WFWebPageDecorator *)self _cacheImgProperties];
  pageImagesPropertyCache = self->pageImagesPropertyCache;

  return [(WFImgArrayCache *)pageImagesPropertyCache numberOfKnownImagePixels];
}

- (id)linkTitlesText
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(WFWebPageDecorator *)self links];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) title];
        if (v9)
        {
          [v3 appendFormat:@"%@\n", v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)plainTextAttributeWithSelector:(SEL)a3 title:(id)a4 weight:(int)a5
{
  v9 = objc_opt_new();
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v10 = [(WFWebPageDecorator *)self performSelector:a3]) != 0)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x277CCACA8] WF_stringFromArray:v11];
    }
  }

  else
  {
    v11 = &stru_28826CB10;
  }

  [v9 appendString:a4];
  [v9 appendString:@"\n"];
  if (a5 >= 1)
  {
    do
    {
      [v9 appendString:v11];
      [v9 appendString:@"\n"];
      --a5;
    }

    while (a5);
  }

  return v9;
}

- (id)rawPlainText
{
  v3 = objc_opt_new();
  [v3 appendString:@"[WFWebPageDecorator rawPlainText]"];
  [v3 appendString:@"\n"];
  [v3 appendString:@"\n"];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_pageTitle, @"======= pageTitle ======="}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_tags, @"======= tags ======="}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_metaTagDescription, @"======= metaTagDescription =======\n"}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_metaTagKeywords, @"======= metaTagKeywords =======\n"}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_scriptBlocks, @"======= scriptBlocks (array) =======\n"}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_imageAltsText, @"======= imageAltsText (array) =======\n"}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_pageContent, @"======= pageContent =======\n"}];

  return v3;
}

- (id)plainText
{
  v2 = [(WFWebPageDecorator *)self rawPlainText];

  return [WFPostprocessor postprocessPlainTextWebPage:v2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFWebPageDecorator;
  [(WFWebPageDecorator *)&v3 dealloc];
}

@end