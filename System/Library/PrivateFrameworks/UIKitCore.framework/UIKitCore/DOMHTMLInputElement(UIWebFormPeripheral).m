@interface DOMHTMLInputElement(UIWebFormPeripheral)
- (id)createPeripheral;
@end

@implementation DOMHTMLInputElement(UIWebFormPeripheral)

- (id)createPeripheral
{
  if ([a1 isAssistedDateType])
  {
    v2 = [UIWebFormDateTimePeripheral createPeripheralWithDOMHTMLInputElement:a1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end