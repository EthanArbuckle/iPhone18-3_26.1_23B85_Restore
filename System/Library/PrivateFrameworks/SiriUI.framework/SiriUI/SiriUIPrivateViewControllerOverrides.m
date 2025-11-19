@interface SiriUIPrivateViewControllerOverrides
+ (id)viewControllerForSnippet:(id)a3 sizeClass:(int64_t)a4;
@end

@implementation SiriUIPrivateViewControllerOverrides

+ (id)viewControllerForSnippet:(id)a3 sizeClass:(int64_t)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = SiriUIPrivatePeoplePickerViewController;
LABEL_3:
    v7 = [[v6 alloc] initWithSnippet:v5];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(SiriUICardSnippetViewController);
    [(SiriUICardSnippetViewController *)v7 configureContentWithSizeClass:a4];
    [(SiriUICardSnippetViewController *)v7 setSnippet:v5];
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