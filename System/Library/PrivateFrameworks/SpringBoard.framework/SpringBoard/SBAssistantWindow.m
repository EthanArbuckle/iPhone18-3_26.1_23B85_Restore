@interface SBAssistantWindow
- (BOOL)allowsTouchPassThrough;
- (SBAssistantWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hostedSceneIdentityTokens;
- (void)_usesWindowServerHitTesting;
- (void)dealloc;
- (void)setAllowsTouchPassThrough:(BOOL)a3;
@end

@implementation SBAssistantWindow

- (SBAssistantWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = SBAssistantWindow;
  v9 = [(SBWindow *)&v15 initWithWindowScene:v8 rootViewController:0 layoutStrategy:0 role:a4 debugName:a5];
  if (v9)
  {
    v10 = [SBAssistantRootViewController alloc];
    v11 = [v8 screen];
    v12 = [(SBAssistantRootViewController *)v10 initWithScreen:v11];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBAssistantWindow;
  v5 = [(SBAssistantWindow *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
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

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if ([(SBAssistantWindow *)self allowsTouchPassThrough])
  {
    if (self != v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v15.receiver = self;
    v12 = &v15;
  }

  else
  {
    v14 = self;
    v12 = &v14;
  }

  v12->super_class = SBAssistantWindow;
  v11 = [(objc_super *)v12 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y, v14];
LABEL_7:

  return v11;
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
  v2 = [(UIWindow *)self _sbWindowScene];
  v3 = [v2 assistantController];
  v4 = [v3 isVisible];

  if (v4)
  {
    v5 = [MEMORY[0x277D0AAD8] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__SBAssistantWindow_hostedSceneIdentityTokens__block_invoke;
    v8[3] = &unk_2783ACCF0;
    v8[4] = &v9;
    [v5 enumerateScenesWithBlock:v8];
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
  v2 = [(SBAssistantWindow *)self layer];
  v3 = [v2 hitTestsAsOpaque];

  return v3 ^ 1;
}

- (void)setAllowsTouchPassThrough:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBAssistantWindow *)self layer];
  [v4 setHitTestsAsOpaque:!v3];
}

- (void)_usesWindowServerHitTesting
{
  if (a1)
  {
    return [a1 allowsTouchPassThrough];
  }

  return a1;
}

@end