@interface SCROIOUSBElement
- (SCROIOUSBElement)initWithIOObject:(unsigned int)a3;
@end

@implementation SCROIOUSBElement

- (SCROIOUSBElement)initWithIOObject:(unsigned int)a3
{
  v8.receiver = self;
  v8.super_class = SCROIOUSBElement;
  v4 = [(SCROIOElement *)&v8 initWithIOObject:?];
  v5 = v4;
  if (a3 && v4 && !IOObjectConformsTo(a3, "IOUSBDevice") && !IOObjectConformsTo(a3, "IOUSBDevice"))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end