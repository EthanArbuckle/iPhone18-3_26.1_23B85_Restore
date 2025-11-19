@interface SiriUITextTemplateViewController
- (void)_textTemplateViewDisclosed:(id)a3;
- (void)loadView;
@end

@implementation SiriUITextTemplateViewController

- (void)loadView
{
  v3 = [SiriUITextTemplateView alloc];
  v4 = [(SiriUITemplateViewController *)self templateModel];
  v5 = [(SiriUITextTemplateView *)v3 initWithDataSource:v4];

  [(SiriUITextTemplateView *)v5 addTargetForDisclosure:self action:sel__textTemplateViewDisclosed_];
  [(SiriUILabelStackTemplateView *)v5 setDelegate:self];
  [(SiriUITextTemplateViewController *)self setView:v5];
}

- (void)_textTemplateViewDisclosed:(id)a3
{
  v4 = [(SiriUITemplateViewController *)self delegate];
  [v4 presentDetailsForTemplateViewController:self];
}

@end