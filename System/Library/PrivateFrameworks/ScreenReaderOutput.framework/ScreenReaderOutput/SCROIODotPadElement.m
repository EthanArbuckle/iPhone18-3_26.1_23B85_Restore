@interface SCROIODotPadElement
- (NSString)address;
- (SCROIODotPadElement)initWithCentral:(id)a3 peripheral:(id)a4;
@end

@implementation SCROIODotPadElement

- (SCROIODotPadElement)initWithCentral:(id)a3 peripheral:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCROIODotPadElement;
  v9 = [(SCROIODotPadElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_central, a3);
    objc_storeStrong(&v10->_peripheral, a4);
    v10->_identifier = atomic_fetch_add_explicit(_currentIdentifier, 1u, memory_order_relaxed);
  }

  return v10;
}

- (NSString)address
{
  v2 = [(CBPeripheral *)self->_peripheral identifier];
  v3 = [v2 UUIDString];

  return v3;
}

@end