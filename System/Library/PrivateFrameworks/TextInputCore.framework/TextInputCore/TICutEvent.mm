@interface TICutEvent
- (TICutEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TICutEvent

- (TICutEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TICutEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:8];
}

@end