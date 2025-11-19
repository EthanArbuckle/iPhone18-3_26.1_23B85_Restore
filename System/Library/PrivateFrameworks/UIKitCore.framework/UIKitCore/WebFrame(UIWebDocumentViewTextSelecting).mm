@interface WebFrame(UIWebDocumentViewTextSelecting)
- (BOOL)hasBodyElement;
@end

@implementation WebFrame(UIWebDocumentViewTextSelecting)

- (BOOL)hasBodyElement
{
  v1 = [a1 DOMDocument];
  v2 = [v1 documentElement];
  return !v1 || v2 == 0;
}

@end