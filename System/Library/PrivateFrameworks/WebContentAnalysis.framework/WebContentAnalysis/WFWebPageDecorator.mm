@interface WFWebPageDecorator
+ (id)_plainTextWithSelector:(SEL)selector object:(id)object;
+ (id)plainTextWithWebPageData:(id)data;
+ (id)plainTextWithWebPageString:(id)string;
+ (id)webPageWithData:(id)data;
+ (id)webPageWithData:(id)data URLString:(id)string;
+ (id)webPageWithString:(id)string;
+ (id)webPageWithString:(id)string URLString:(id)lString;
- (WFWebPageDecorator)initWithWebPageData:(id)data;
- (WFWebPageDecorator)initWithWebPageString:(id)string;
- (WFWebPageDecorator)initWithWebPageStripper:(id)stripper;
- (id)imageAltsText;
- (id)linkTitlesText;
- (id)plainText;
- (id)plainTextAttributeWithSelector:(SEL)selector title:(id)title weight:(int)weight;
- (id)rawPlainText;
- (int64_t)numberOfImages;
- (int64_t)numberOfKnownImagePixels;
- (int64_t)numberOfUnknownSizedImages;
- (void)_cacheImgProperties;
- (void)dealloc;
@end

@implementation WFWebPageDecorator

+ (id)_plainTextWithSelector:(SEL)selector object:(id)object
{
  v6 = objc_alloc(objc_opt_class());
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 performSelector:selector withObject:object];
    plainText = [v7 plainText];

    return plainText;
  }

  else
  {
    v10 = [objc_opt_class() description];
    v11 = NSStringFromSelector(selector);
    NSLog(&cfstr_DoesnTAsnwerTo.isa, v10, v11);
    return &stru_28826CB10;
  }
}

+ (id)plainTextWithWebPageData:(id)data
{
  v4 = objc_opt_class();

  return [v4 _plainTextWithSelector:sel_initWithWebPageData_ object:data];
}

+ (id)plainTextWithWebPageString:(id)string
{
  v4 = objc_opt_class();

  return [v4 _plainTextWithSelector:sel_initWithWebPageString_ object:string];
}

+ (id)webPageWithData:(id)data
{
  v3 = [objc_alloc(objc_opt_class()) initWithWebPageData:data];

  return v3;
}

+ (id)webPageWithData:(id)data URLString:(id)string
{
  v5 = [objc_alloc(objc_opt_class()) initWithWebPageData:data];
  [v5 setURLString:string];

  return v5;
}

+ (id)webPageWithString:(id)string
{
  v3 = [objc_alloc(objc_opt_class()) initWithWebPageString:string];

  return v3;
}

+ (id)webPageWithString:(id)string URLString:(id)lString
{
  v5 = [objc_alloc(objc_opt_class()) initWithWebPageString:string];
  [v5 setURLString:lString];

  return v5;
}

- (WFWebPageDecorator)initWithWebPageData:(id)data
{
  v4 = [WFTreeHTMLStripper treeStripperWithData:data];

  return [(WFWebPageDecorator *)self initWithWebPageStripper:v4];
}

- (WFWebPageDecorator)initWithWebPageString:(id)string
{
  v4 = [WFTreeHTMLStripper treeStripperWithString:string];

  return [(WFWebPageDecorator *)self initWithWebPageStripper:v4];
}

- (WFWebPageDecorator)initWithWebPageStripper:(id)stripper
{
  v6.receiver = self;
  v6.super_class = WFWebPageDecorator;
  v4 = [(WFWebPageDecorator *)&v6 init];
  if (v4)
  {
    v4->webPageStripper = stripper;
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
  images = [(WFWebPageDecorator *)self images];

  return [images count];
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
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  links = [(WFWebPageDecorator *)self links];
  v5 = [links countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(links);
        }

        title = [*(*(&v12 + 1) + 8 * v8) title];
        if (title)
        {
          [string appendFormat:@"%@\n", title];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [links countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return string;
}

- (id)plainTextAttributeWithSelector:(SEL)selector title:(id)title weight:(int)weight
{
  v9 = objc_opt_new();
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v10 = [(WFWebPageDecorator *)self performSelector:selector]) != 0)
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

  [v9 appendString:title];
  [v9 appendString:@"\n"];
  if (weight >= 1)
  {
    do
    {
      [v9 appendString:v11];
      [v9 appendString:@"\n"];
      --weight;
    }

    while (weight);
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
  rawPlainText = [(WFWebPageDecorator *)self rawPlainText];

  return [WFPostprocessor postprocessPlainTextWebPage:rawPlainText];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFWebPageDecorator;
  [(WFWebPageDecorator *)&v3 dealloc];
}

@end