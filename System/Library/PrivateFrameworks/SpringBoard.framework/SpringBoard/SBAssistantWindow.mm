@interface SBAssistantWindow
- (BOOL)allowsTouchPassThrough;
- (SBAssistantWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hostedSceneIdentityTokens;
- (void)_usesWindowServerHitTesting;
- (void)dealloc;
- (void)setAllowsTouchPassThrough:(BOOL)through;
@end

@implementation SBAssistantWindow

- (SBAssistantWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name
{
  sceneCopy = scene;
  v15.receiver = self;
  v15.super_class = SBAssistantWindow;
  v9 = [(SBWindow *)&v15 initWithWindowScene:sceneCopy rootViewController:0 layoutStrategy:0 role:role debugName:name];
  if (v9)
  {
    v10 = [SBAssistantRootViewController alloc];
    screen = [sceneCopy screen];
    v12 = [(SBAssistantRootViewController *)v10 initWithScreen:screen];
    v14.receiver = v9;
    v14.super_class = SBAssistantWindow;
    [(SBAssistantWindow *)&v14 setRootViewController:v12];

    [(SBAssistantWindow *)v9 setWindowLevel:*MEMORY[0x277D76EE8] + 25.0];
    [(SBAssistantWindow *)v9 setAccessibilityIdentifier:@"siri-interface-window"];
    [(SBAssistantWindow *)v9 setAllowsTouchPassThrough:0];
  }

  return v9;
}

- (void)dealloc
{
  v4.receiver = self;
  v4.super_class = SBAssistantWindow;
  [(SBAssistantWindow *)&v4 setRootViewController:0];
  v3.receiver = self;
  v3.super_class = SBAssistantWindow;
  [(SBWindow *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBAssistantWindow;
  v5 = [(SBAssistantWindow *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  windowCopy = window;
  if ([(SBAssistantWindow *)self allowsTouchPassThrough])
  {
    if (self != windowCopy)
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    v15.receiver = self;
    v12 = &v15;
  }

  else
  {
    selfCopy = self;
    v12 = &selfCopy;
  }

  v12->super_class = SBAssistantWindow;
  selfCopy = [(objc_super *)v12 _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:x, y, selfCopy];
LABEL_7:

  return selfCopy;
}

- (id)hostedSceneIdentityTokens
{
  v15[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__145;
  v13 = __Block_byref_object_dispose__145;
  v14 = 0;
  _sbWindowScene = [(UIWindow *)self _sbWindowScene];
  assistantController = [_sbWindowScene assistantController];
  isVisible = [assistantController isVisible];

  if (isVisible)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__SBAssistantWindow_hostedSceneIdentityTokens__block_invoke;
    v8[3] = &unk_2783ACCF0;
    v8[4] = &v9;
    [mEMORY[0x277D0AAD8] enumerateScenesWithBlock:v8];
  }

  if (v10[5])
  {
    v15[0] = v10[5];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __46__SBAssistantWindow_hostedSceneIdentityTokens__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if ([v12 isActive])
  {
    v5 = [v12 settings];
    if ([v5 isForeground])
    {
      v6 = [v12 clientHandle];
      v7 = [v6 bundleIdentifier];
      v8 = [v7 isEqualToString:@"com.apple.siri"];

      if (v8)
      {
        v9 = [v12 identityToken];
        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

- (BOOL)allowsTouchPassThrough
{
  layer = [(SBAssistantWindow *)self layer];
  hitTestsAsOpaque = [layer hitTestsAsOpaque];

  return hitTestsAsOpaque ^ 1;
}

- (void)setAllowsTouchPassThrough:(BOOL)through
{
  throughCopy = through;
  layer = [(SBAssistantWindow *)self layer];
  [layer setHitTestsAsOpaque:!throughCopy];
}

- (void)_usesWindowServerHitTesting
{
  if (self)
  {
    return [self allowsTouchPassThrough];
  }

  return self;
}

@end