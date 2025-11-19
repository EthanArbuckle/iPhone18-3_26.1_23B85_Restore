@interface SBOrientationTransformWrapperViewController
- (BSUIOrientationTransformWrapperView)view;
- (void)loadView;
@end

@implementation SBOrientationTransformWrapperViewController

- (BSUIOrientationTransformWrapperView)view
{
  v4.receiver = self;
  v4.super_class = SBOrientationTransformWrapperViewController;
  v2 = [(SBOrientationTransformWrapperViewController *)&v4 view];

  return v2;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277CF0D78]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(SBOrientationTransformWrapperViewController *)self setView:v4];
}

@end