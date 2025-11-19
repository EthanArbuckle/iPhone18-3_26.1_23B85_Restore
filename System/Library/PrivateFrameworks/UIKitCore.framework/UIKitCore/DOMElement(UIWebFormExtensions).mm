@interface DOMElement(UIWebFormExtensions)
- (void)getTextWritingDirection:()UIWebFormExtensions override:;
@end

@implementation DOMElement(UIWebFormExtensions)

- (void)getTextWritingDirection:()UIWebFormExtensions override:
{
  result = [objc_msgSend(a1 "ownerDocument")];
  v7 = result;
  if (a3)
  {
    result = [objc_msgSend(result "direction")];
    *a3 = result ^ 1;
  }

  if (a4)
  {
    result = [objc_msgSend(v7 "unicodeBidi")];
    *a4 = result;
  }

  return result;
}

@end