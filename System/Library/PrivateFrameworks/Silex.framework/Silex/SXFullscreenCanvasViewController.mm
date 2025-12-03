@interface SXFullscreenCanvasViewController
- (SXFullscreenCanvasViewControllerDelegate)delegate;
- (id)keyCommands;
- (void)dismiss;
- (void)scrollToNext;
- (void)scrollToPrevious;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
    navigationItem = [(SXFullscreenCanvasViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v5];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v4 viewWillAppear:appear];
  [(SXFullscreenCanvasViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v4 viewDidAppear:appear];
  [(SXFullscreenCanvasViewController *)self becomeFirstResponder];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = SXFullscreenCanvasViewController;
  [(SXFullscreenCanvasViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  delegate = [(SXFullscreenCanvasViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SXFullscreenCanvasViewController *)self delegate];
    [delegate2 fullscreenCanvasViewController:self willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }
}

- (void)dismiss
{
  delegate = [(SXFullscreenCanvasViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(SXFullscreenCanvasViewController *)self delegate];
    [delegate2 fullScreenCanvasViewControllerWantsToDismiss:self];
  }
}

- (void)scrollToNext
{
  delegate = [(SXFullscreenCanvasViewController *)self delegate];
  [delegate handleNextCommand];
}

- (void)scrollToPrevious
{
  delegate = [(SXFullscreenCanvasViewController *)self delegate];
  [delegate handlePreviousCommand];
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