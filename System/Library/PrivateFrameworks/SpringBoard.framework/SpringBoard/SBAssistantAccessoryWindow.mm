@interface SBAssistantAccessoryWindow
- (SBAssistantAccessoryWindow)initWithWindowScene:(id)scene rootViewController:(id)controller layoutStrategy:(id)strategy role:(id)role debugName:(id)name;
@end

@implementation SBAssistantAccessoryWindow

- (SBAssistantAccessoryWindow)initWithWindowScene:(id)scene rootViewController:(id)controller layoutStrategy:(id)strategy role:(id)role debugName:(id)name
{
  v10.receiver = self;
  v10.super_class = SBAssistantAccessoryWindow;
  v7 = [(SBWindow *)&v10 initWithWindowScene:scene rootViewController:controller layoutStrategy:strategy role:role debugName:name];
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