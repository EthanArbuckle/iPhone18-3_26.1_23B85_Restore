@interface SCROIODotPadElement
- (NSString)address;
- (SCROIODotPadElement)initWithCentral:(id)central peripheral:(id)peripheral;
@end

@implementation SCROIODotPadElement

- (SCROIODotPadElement)initWithCentral:(id)central peripheral:(id)peripheral
{
  centralCopy = central;
  peripheralCopy = peripheral;
  v12.receiver = self;
  v12.super_class = SCROIODotPadElement;
  v9 = [(SCROIODotPadElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_central, central);
    objc_storeStrong(&v10->_peripheral, peripheral);
    v10->_identifier = atomic_fetch_add_explicit(_currentIdentifier, 1u, memory_order_relaxed);
  }

  return v10;
}

- (NSString)address
{
  identifier = [(CBPeripheral *)self->_peripheral identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

@end