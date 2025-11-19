@interface TICutEvent
- (TICutEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TICutEvent

- (TICutEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TICutEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:8];
}

@end