@interface VideosExtrasViewElementViewController
- (VideosExtrasViewElementViewController)initWithViewElement:(id)a3;
- (void)viewDidLoad;
@end

@implementation VideosExtrasViewElementViewController

- (VideosExtrasViewElementViewController)initWithViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VideosExtrasViewElementViewController;
  v6 = [(VideosExtrasElementViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VideosExtrasViewElementViewController;
  [(VideosExtrasViewElementViewController *)&v4 viewDidLoad];
  v3 = [(VideosExtrasViewElementViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

@end