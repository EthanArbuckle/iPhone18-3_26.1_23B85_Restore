@interface UITextDataDetectedLinkInteractionHandler
@end

@implementation UITextDataDetectedLinkInteractionHandler

uint64_t __79___UITextDataDetectedLinkInteractionHandler__defaultDataDetectorsPrimaryAction__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setFallbackDriverStyle:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _presentMenuAtLocation:{v3, v4}];
}

void __79___UITextDataDetectedLinkInteractionHandler__defaultDataDetectorsPrimaryAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 48) sharedController];
  [v2 performAction:*(a1 + 32) inView:*(a1 + 40) interactionDelegate:0];
}

@end