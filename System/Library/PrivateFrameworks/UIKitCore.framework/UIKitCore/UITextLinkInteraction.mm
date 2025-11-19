@interface UITextLinkInteraction
+ (id)interactionWithShouldProxyContextMenuDelegate:(BOOL)a3;
@end

@implementation UITextLinkInteraction

+ (id)interactionWithShouldProxyContextMenuDelegate:(BOOL)a3
{
  v3 = [[_UITextMenuLinkInteraction alloc] initWithShouldProxyContextMenuDelegate:a3];

  return v3;
}

@end