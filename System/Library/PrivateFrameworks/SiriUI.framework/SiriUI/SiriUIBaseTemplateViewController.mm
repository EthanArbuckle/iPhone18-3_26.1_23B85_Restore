@interface SiriUIBaseTemplateViewController
- (void)loadView;
@end

@implementation SiriUIBaseTemplateViewController

- (void)loadView
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SiriUIBaseTemplateViewController.m" lineNumber:16 description:@"-templateViewClass must return a subclass of SiriUIBaseTemplateView!"];
}

@end