@interface SiriUIProfileTemplateViewController
- (void)loadView;
@end

@implementation SiriUIProfileTemplateViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SiriUIProfileTemplateViewController;
  [(SiriUIBaseTemplateViewController *)&v4 loadView];
  view = [(SiriUIProfileTemplateViewController *)self view];
  [view setDelegate:self];
}

@end