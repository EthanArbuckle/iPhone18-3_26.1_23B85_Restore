@interface SiriUIActivityIndicatorTemplateViewController
- (void)loadView;
@end

@implementation SiriUIActivityIndicatorTemplateViewController

- (void)loadView
{
  v3 = [SiriUIActivityIndicatorTemplateView alloc];
  templateModel = [(SiriUITemplateViewController *)self templateModel];
  v5 = [(SiriUIActivityIndicatorTemplateView *)v3 initWithDataSource:templateModel];

  [(SiriUIActivityIndicatorTemplateViewController *)self setView:v5];
}

@end