@interface WebFrame(UIWebDocumentViewTextSelecting)
- (BOOL)hasBodyElement;
@end

@implementation WebFrame(UIWebDocumentViewTextSelecting)

- (BOOL)hasBodyElement
{
  dOMDocument = [self DOMDocument];
  documentElement = [dOMDocument documentElement];
  return !dOMDocument || documentElement == 0;
}

@end