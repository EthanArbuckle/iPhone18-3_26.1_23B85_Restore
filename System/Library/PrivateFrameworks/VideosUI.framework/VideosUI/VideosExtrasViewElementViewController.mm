@interface VideosExtrasViewElementViewController
- (VideosExtrasViewElementViewController)initWithViewElement:(id)element;
- (void)viewDidLoad;
@end

@implementation VideosExtrasViewElementViewController

- (VideosExtrasViewElementViewController)initWithViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = VideosExtrasViewElementViewController;
  v6 = [(VideosExtrasElementViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, element);
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VideosExtrasViewElementViewController;
  [(VideosExtrasViewElementViewController *)&v4 viewDidLoad];
  view = [(VideosExtrasViewElementViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
}

@end