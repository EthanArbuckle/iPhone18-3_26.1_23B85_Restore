@interface WFWebPageToTrainingText
+ (id)signatureForCategory:(unint64_t)category;
- (id)rawPlainText;
- (void)dealloc;
- (void)setCategorySignature:(id)signature;
@end

@implementation WFWebPageToTrainingText

+ (id)signatureForCategory:(unint64_t)category
{
  result = 0;
  if (category <= 4)
  {
    if (category > 2)
    {
      if (category == 3)
      {
        return WFWebPageToTrainingText_Category3;
      }

      else
      {
        return WFWebPageToTrainingText_Category4;
      }
    }

    else if (category == 1)
    {
      return WFWebPageToTrainingText_Category1;
    }

    else if (category == 2)
    {
      return WFWebPageToTrainingText_Category2;
    }
  }

  else if (category <= 6)
  {
    if (category == 5)
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
    switch(category)
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

- (void)setCategorySignature:(id)signature
{
  signatureCopy = signature;

  self->categorySignature = signature;
}

- (id)rawPlainText
{
  v3 = objc_opt_new();
  [v3 appendString:WFWebPageToTrainingText_Signature];
  [v3 appendString:@"\n"];
  categorySignature = [(WFWebPageToTrainingText *)self categorySignature];
  if (categorySignature)
  {
    [v3 appendString:categorySignature];
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