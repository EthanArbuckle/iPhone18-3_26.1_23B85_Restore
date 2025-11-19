@interface SBAssistantAccessoryWindow
- (SBAssistantAccessoryWindow)initWithWindowScene:(id)a3 rootViewController:(id)a4 layoutStrategy:(id)a5 role:(id)a6 debugName:(id)a7;
@end

@implementation SBAssistantAccessoryWindow

- (SBAssistantAccessoryWindow)initWithWindowScene:(id)a3 rootViewController:(id)a4 layoutStrategy:(id)a5 role:(id)a6 debugName:(id)a7
{
  v10.receiver = self;
  v10.super_class = SBAssistantAccessoryWindow;
  v7 = [(SBWindow *)&v10 initWithWindowScene:a3 rootViewController:a4 layoutStrategy:a5 role:a6 debugName:a7];
  v8 = v7;
  if (v7)
  {
    [(SBAssistantAccessoryWindow *)v7 setAccessibilityIdentifier:@"siri-effects-window"];
    [(SBAssistantAccessoryWindow *)v8 setOpaque:0];
    [(SBAssistantAccessoryWindow *)v8 setWindowLevel:*MEMORY[0x277D76EE8] + 25.0 + -0.5];
    [(SBAssistantAccessoryWindow *)v8 bs_setHitTestingDisabled:1];
  }

  return v8;
}

@end