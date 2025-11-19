@interface UITextMenuLinkInteraction
@end

@implementation UITextMenuLinkInteraction

void __111___UITextMenuLinkInteraction_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = UIApp;
  v2 = [*(a1 + 32) interactionURL];
  [v1 openURL:v2 withCompletionHandler:0];
}

@end