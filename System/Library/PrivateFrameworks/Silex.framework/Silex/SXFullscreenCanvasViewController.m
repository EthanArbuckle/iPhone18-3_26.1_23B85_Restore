@interface SXFullscreenCanvasViewController
- (SXFullscreenCanvasViewControllerDelegate)delegate;
- (id)keyCommands;
- (void)dismiss;
- (void)scrollToNext;
- (void)scrollToPrevious;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SXFullscreenCanvasViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_dismiss];
  [v3 setWantsPriorityOverSystemBehavior:1];
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel_dismiss];
  [v4 setWantsPriorityOverSystemBehavior:1];
  [(SXFullscreenCanvasViewController *)self addKeyCommand:v3];
  [(SXFullscreenCanvasViewController *)self addKeyCommand:v4];
  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_dismiss];
    v6 = [(SXFullscreenCanvasViewController *)self navigationItem];
    [v6 setLeftBarButtonItem:v5];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v4 viewWillAppear:a3];
  [(SXFullscreenCanvasViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v4 viewDidAppear:a3];
  [(SXFullscreenCanvasViewController *)self becomeFirstResponder];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SXFullscreenCanvasViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SXFullscreenCanvasViewController *)self delegate];
    [v10 fullscreenCanvasViewController:self willTransitionToSize:v7 withTransitionCoordinator:{width, height}];
  }
}

- (void)dismiss
{
  v3 = [(SXFullscreenCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SXFullscreenCanvasViewController *)self delegate];
    [v5 fullScreenCanvasViewControllerWantsToDismiss:self];
  }
}

- (void)scrollToNext
{
  v2 = [(SXFullscreenCanvasViewController *)self delegate];
  [v2 handleNextCommand];
}

- (void)scrollToPrevious
{
  v2 = [(SXFullscreenCanvasViewController *)self delegate];
  [v2 handlePreviousCommand];
}

- (id)keyCommands
{
  v7[3] = *MEMORY[0x1E69E9840];
  if ([(SXFullscreenCanvasViewController *)self isTransitioning])
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_dismiss];
    [v3 setWantsPriorityOverSystemBehavior:1];
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_scrollToNext];
    [v4 setWantsPriorityOverSystemBehavior:1];
    v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_scrollToPrevious];
    [v5 setWantsPriorityOverSystemBehavior:1];
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = v5;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  }

  return v2;
}

- (SXFullscreenCanvasViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end