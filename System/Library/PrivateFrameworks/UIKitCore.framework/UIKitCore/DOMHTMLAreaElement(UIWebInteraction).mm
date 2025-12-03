@interface DOMHTMLAreaElement(UIWebInteraction)
- (id)absoluteQuadsAtPoint:()UIWebInteraction;
@end

@implementation DOMHTMLAreaElement(UIWebInteraction)

- (id)absoluteQuadsAtPoint:()UIWebInteraction
{
  ownerDocument = [self ownerDocument];
  webFrame = [ownerDocument webFrame];
  webView = [webFrame webView];

  [webView convertPoint:0 toView:{a2, a3}];
  v9 = [webView elementAtPoint:?];
  v10 = [v9 objectForKey:*MEMORY[0x1E69E2FE8]];

  v11 = [self absoluteQuadsWithOwner:v10];

  return v11;
}

@end