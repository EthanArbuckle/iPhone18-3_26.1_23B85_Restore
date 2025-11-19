@interface SCLMutableInterruptEvent
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSender:(id)a3;
@end

@implementation SCLMutableInterruptEvent

- (void)setSender:(id)a3
{
  v4 = [a3 copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCLInterruptEvent alloc];

  return [(SCLInterruptEvent *)v4 _initWithEvent:self];
}

@end