@interface DOMElement(BrowserExtras)
- (BOOL)inDocument;
- (uint64_t)isHidden;
@end

@implementation DOMElement(BrowserExtras)

- (BOOL)inDocument
{
  selfCopy = self;
  ownerDocument = [selfCopy ownerDocument];
  do
  {
    v3 = selfCopy;
    selfCopy = [selfCopy parentNode];
  }

  while (selfCopy && selfCopy != ownerDocument);

  return selfCopy != 0;
}

- (uint64_t)isHidden
{
  if (![self offsetWidth] || !objc_msgSend(self, "offsetHeight"))
  {
    return 1;
  }

  ownerDocument = [self ownerDocument];
  v3 = [ownerDocument getComputedStyle:self pseudoElement:&stru_1EFB14550];

  v4 = [v3 getPropertyValue:@"visibility"];
  LODWORD(ownerDocument) = [v4 isEqualToString:@"visible"];

  v5 = ownerDocument ^ 1;
  return v5;
}

@end