@interface SCLMutableInterruptEvent
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSender:(id)sender;
@end

@implementation SCLMutableInterruptEvent

- (void)setSender:(id)sender
{
  v4 = [sender copy];
  sender = self->super._sender;
  self->super._sender = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCLInterruptEvent alloc];

  return [(SCLInterruptEvent *)v4 _initWithEvent:self];
}

@end