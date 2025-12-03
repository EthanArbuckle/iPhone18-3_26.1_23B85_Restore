@interface SBScreenFlash
+ (id)mainScreenFlasher;
- (SBScreenFlash)initWithScreen:(id)screen;
- (void)_createUIWithColor:(id)color;
- (void)_orderWindowFrontAndThenOut:(id)out withColor:(id)color;
- (void)_orderWindowOut:(id)out;
- (void)_tearDown;
- (void)flashColor:(id)color withCompletion:(id)completion;
- (void)flashWhiteWithCompletion:(id)completion;
@end

@implementation SBScreenFlash

- (SBScreenFlash)initWithScreen:(id)screen
{
  screenCopy = screen;
  v11.receiver = self;
  v11.super_class = SBScreenFlash;
  v6 = [(SBScreenFlash *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, screen);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    flashCompletionBlocks = v7->_flashCompletionBlocks;
    v7->_flashCompletionBlocks = v8;
  }

  return v7;
}

+ (id)mainScreenFlasher
{
  if (mainScreenFlasher___once != -1)
  {
    +[SBScreenFlash mainScreenFlasher];
  }

  v3 = mainScreenFlasher___sharedInstance;

  return v3;
}

void __34__SBScreenFlash_mainScreenFlasher__block_invoke()
{
  v0 = [SBScreenFlash alloc];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [(SBScreenFlash *)v0 initWithScreen:v3];
  v2 = mainScreenFlasher___sharedInstance;
  mainScreenFlasher___sharedInstance = v1;
}

- (void)flashWhiteWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D75348];
  completionCopy = completion;
  whiteColor = [v4 whiteColor];
  [(SBScreenFlash *)self flashColor:whiteColor withCompletion:completionCopy];
}

- (void)flashColor:(id)color withCompletion:(id)completion
{
  colorCopy = color;
  if (completion)
  {
    flashCompletionBlocks = self->_flashCompletionBlocks;
    v7 = [completion copy];
    [(NSMutableArray *)flashCompletionBlocks addObject:v7];
  }

  [(SBScreenFlash *)self _orderWindowFrontAndThenOut:self withColor:colorCopy];
}

- (void)_createUIWithColor:(id)color
{
  if (!self->_flashWindow)
  {
    v5 = SBApp;
    colorCopy = color;
    windowSceneManager = [v5 windowSceneManager];
    displayIdentity = [(UIScreen *)self->_screen displayIdentity];
    v14 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    v9 = [(SBWindow *)[SBSecureWindow alloc] initWithWindowScene:v14 role:@"SBTraitsParticipantRoleScreenFlash" debugName:@"ScreenFlash"];
    flashWindow = self->_flashWindow;
    self->_flashWindow = &v9->super.super.super;

    [(UIWindow *)self->_flashWindow setWindowLevel:*MEMORY[0x277D76A38]];
    [(UIWindow *)self->_flashWindow setUserInteractionEnabled:0];
    v11 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    [(UIWindow *)self->_flashWindow setRootViewController:v11];
    view = [v11 view];
    flashView = self->_flashView;
    self->_flashView = view;

    [(UIView *)self->_flashView setBackgroundColor:colorCopy];
  }
}

- (void)_tearDown
{
  [(UIWindow *)self->_flashWindow setHidden:1];
  self->_windowVisible = 0;
  flashWindow = self->_flashWindow;
  self->_flashWindow = 0;

  flashView = self->_flashView;
  self->_flashView = 0;
}

- (void)_orderWindowOut:(id)out
{
  outCopy = out;
  flashView = self->_flashView;
  if (flashView)
  {
    [(UIView *)flashView alpha];
    if (v6 != 0.0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __33__SBScreenFlash__orderWindowOut___block_invoke;
      v8[3] = &unk_2783A8C18;
      v8[4] = self;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __33__SBScreenFlash__orderWindowOut___block_invoke_2;
      v7[3] = &unk_2783A9398;
      v7[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7 completion:1.0];
    }
  }
}

void __33__SBScreenFlash__orderWindowOut___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(v3 + 24))
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [v3 _tearDown];
    v3 = *(a1 + 32);
  }

  v5 = [*(v3 + 8) copy];
  [*(*(a1 + 32) + 8) removeAllObjects];
  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_orderWindowFrontAndThenOut:(id)out withColor:(id)color
{
  v7[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__orderWindowOut_ object:0];
  if (!self->_windowVisible)
  {
    if (self->_flashWindow)
    {
      [(UIView *)self->_flashView setAlpha:1.0];
      [(UIView *)self->_flashView setBackgroundColor:colorCopy];
    }

    else
    {
      [(SBScreenFlash *)self _createUIWithColor:colorCopy];
    }

    [(UIWindow *)self->_flashWindow _orderFrontWithoutMakingKey];
    self->_windowVisible = 1;
  }

  v7[0] = *MEMORY[0x277CBE738];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(SBScreenFlash *)self performSelector:sel__orderWindowOut_ withObject:0 afterDelay:v6 inModes:0.1];
}

@end