@interface WFWebPageToTrainingText
+ (id)signatureForCategory:(unint64_t)a3;
- (id)rawPlainText;
- (void)dealloc;
- (void)setCategorySignature:(id)a3;
@end

@implementation WFWebPageToTrainingText

+ (id)signatureForCategory:(unint64_t)a3
{
  result = 0;
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        return WFWebPageToTrainingText_Category3;
      }

      else
      {
        return WFWebPageToTrainingText_Category4;
      }
    }

    else if (a3 == 1)
    {
      return WFWebPageToTrainingText_Category1;
    }

    else if (a3 == 2)
    {
      return WFWebPageToTrainingText_Category2;
    }
  }

  else if (a3 <= 6)
  {
    if (a3 == 5)
    {
      return WFWebPageToTrainingText_Category5;
    }

    else
    {
      return WFWebPageToTrainingText_Category6;
    }
  }

  else
  {
    switch(a3)
    {
      case 7uLL:
        return WFWebPageToTrainingText_Category7;
      case 8uLL:
        return WFWebPageToTrainingText_Category8;
      case 9uLL:
        return WFWebPageToTrainingText_Category9;
    }
  }

  return result;
}

- (void)setCategorySignature:(id)a3
{
  v5 = a3;

  self->categorySignature = a3;
}

- (id)rawPlainText
{
  v3 = objc_opt_new();
  [v3 appendString:WFWebPageToTrainingText_Signature];
  [v3 appendString:@"\n"];
  v4 = [(WFWebPageToTrainingText *)self categorySignature];
  if (v4)
  {
    [v3 appendString:v4];
  }

  [v3 appendString:@"\n"];
  [v3 appendString:@"\n"];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_pageTitle, @"=========", 15)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_tags, @"=========", 5)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_metaTagDescription, @"=========", 10)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:weight:](self, "plainTextAttributeWithSelector:title:weight:", sel_metaTagKeywords, @"=========", 10)}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_imageAltsText, @"========="}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_linkTitlesText, @"========="}];
  [v3 appendString:{-[WFWebPageDecorator plainTextAttributeWithSelector:title:](self, "plainTextAttributeWithSelector:title:", sel_pageContent, @"========="}];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFWebPageToTrainingText;
  [(WFWebPageDecorator *)&v3 dealloc];
}

@end