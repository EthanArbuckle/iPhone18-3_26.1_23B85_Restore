@interface SiriUIActivityIndicatorTemplateViewController
- (void)loadView;
@end

@implementation SiriUIActivityIndicatorTemplateViewController

- (void)loadView
{
  v3 = [SiriUIActivityIndicatorTemplateView alloc];
  v4 = [(SiriUITemplateViewController *)self templateModel];
  v5 = [(SiriUIActivityIndicatorTemplateView *)v3 initWithDataSource:v4];

  [(SiriUIActivityIndicatorTemplateViewController *)self setView:v5];
}

@end