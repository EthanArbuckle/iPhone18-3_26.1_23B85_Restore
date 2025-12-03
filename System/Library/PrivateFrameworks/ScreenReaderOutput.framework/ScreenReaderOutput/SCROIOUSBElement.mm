@interface SCROIOUSBElement
- (SCROIOUSBElement)initWithIOObject:(unsigned int)object;
@end

@implementation SCROIOUSBElement

- (SCROIOUSBElement)initWithIOObject:(unsigned int)object
{
  v8.receiver = self;
  v8.super_class = SCROIOUSBElement;
  v4 = [(SCROIOElement *)&v8 initWithIOObject:?];
  v5 = v4;
  if (object && v4 && !IOObjectConformsTo(object, "IOUSBDevice") && !IOObjectConformsTo(object, "IOUSBDevice"))
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