@interface UITextLinkInteraction
+ (id)interactionWithShouldProxyContextMenuDelegate:(BOOL)delegate;
@end

@implementation UITextLinkInteraction

+ (id)interactionWithShouldProxyContextMenuDelegate:(BOOL)delegate
{
  v3 = [[_UITextMenuLinkInteraction alloc] initWithShouldProxyContextMenuDelegate:delegate];

  return v3;
}

@end