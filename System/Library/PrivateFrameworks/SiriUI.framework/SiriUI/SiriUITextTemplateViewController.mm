@interface SiriUITextTemplateViewController
- (void)_textTemplateViewDisclosed:(id)disclosed;
- (void)loadView;
@end

@implementation SiriUITextTemplateViewController

- (void)loadView
{
  v3 = [SiriUITextTemplateView alloc];
  templateModel = [(SiriUITemplateViewController *)self templateModel];
  v5 = [(SiriUITextTemplateView *)v3 initWithDataSource:templateModel];

  [(SiriUITextTemplateView *)v5 addTargetForDisclosure:self action:sel__textTemplateViewDisclosed_];
  [(SiriUILabelStackTemplateView *)v5 setDelegate:self];
  [(SiriUITextTemplateViewController *)self setView:v5];
}

- (void)_textTemplateViewDisclosed:(id)disclosed
{
  delegate = [(SiriUITemplateViewController *)self delegate];
  [delegate presentDetailsForTemplateViewController:self];
}

@end