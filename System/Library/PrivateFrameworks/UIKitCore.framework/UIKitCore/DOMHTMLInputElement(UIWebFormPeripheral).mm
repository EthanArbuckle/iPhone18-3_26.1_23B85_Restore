@interface DOMHTMLInputElement(UIWebFormPeripheral)
- (id)createPeripheral;
@end

@implementation DOMHTMLInputElement(UIWebFormPeripheral)

- (id)createPeripheral
{
  if ([self isAssistedDateType])
  {
    v2 = [UIWebFormDateTimePeripheral createPeripheralWithDOMHTMLInputElement:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end