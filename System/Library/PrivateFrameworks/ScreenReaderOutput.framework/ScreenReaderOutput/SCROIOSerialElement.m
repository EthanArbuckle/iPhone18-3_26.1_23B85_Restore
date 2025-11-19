@interface SCROIOSerialElement
- (NSString)description;
- (SCROIOSerialElement)initWithFileDescriptor:(int)a3;
@end

@implementation SCROIOSerialElement

- (SCROIOSerialElement)initWithFileDescriptor:(int)a3
{
  v6.receiver = self;
  v6.super_class = SCROIOSerialElement;
  v4 = [(SCROIOSerialElement *)&v6 init];
  v4->_fileDescriptor = a3;
  atomic_fetch_add_explicit(_currentIdentifier_0, 1u, memory_order_relaxed);
  [(SCROIOElement *)v4 setIdentifier:?];
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SCROIOSerialElement;
  v4 = [(SCROIOSerialElement *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ fd: %d", v4, self->_fileDescriptor];

  return v5;
}

@end