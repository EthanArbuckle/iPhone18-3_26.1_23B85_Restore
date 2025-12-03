@interface SiriUIPrivateViewControllerOverrides
+ (id)viewControllerForSnippet:(id)snippet sizeClass:(int64_t)class;
@end

@implementation SiriUIPrivateViewControllerOverrides

+ (id)viewControllerForSnippet:(id)snippet sizeClass:(int64_t)class
{
  snippetCopy = snippet;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = SiriUIPrivatePeoplePickerViewController;
LABEL_3:
    v7 = [[v6 alloc] initWithSnippet:snippetCopy];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(SiriUICardSnippetViewController);
    [(SiriUICardSnippetViewController *)v7 configureContentWithSizeClass:class];
    [(SiriUICardSnippetViewController *)v7 setSnippet:snippetCopy];
  }

  else
  {
    if (SiriUIIsWhitePlatterSnippetBackgroundEnabledForAllSnippets())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = SiriUILegacyCardSnippetViewController;
          goto LABEL_3;
        }
      }
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

@end