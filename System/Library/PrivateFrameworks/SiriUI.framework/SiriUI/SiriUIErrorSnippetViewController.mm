@interface SiriUIErrorSnippetViewController
- (SiriUIErrorSnippetViewController)initWithError:(id)error;
- (void)loadView;
@end

@implementation SiriUIErrorSnippetViewController

- (SiriUIErrorSnippetViewController)initWithError:(id)error
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = SiriUIErrorSnippetViewController;
  v6 = [(SiriUISnippetViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SiriUI"];
    v9 = [v8 siriUILocalizedStringForKey:@"ERROR_SNIPPET_TITLE_GENERIC"];
    [(SiriUIErrorSnippetViewController *)v7 setTitle:v9];
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SiriUIErrorSnippetViewController *)self setView:v3];
}

@end