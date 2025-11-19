@interface SiriUIBaseTemplateViewController
- (void)loadView;
@end

@implementation SiriUIBaseTemplateViewController

- (void)loadView
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SiriUIBaseTemplateViewController.m" lineNumber:16 description:@"-templateViewClass must return a subclass of SiriUIBaseTemplateView!"];
}

@end