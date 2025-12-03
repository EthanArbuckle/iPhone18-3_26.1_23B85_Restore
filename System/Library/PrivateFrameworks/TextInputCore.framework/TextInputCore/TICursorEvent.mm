@interface TICursorEvent
- (TICursorEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TICursorEvent

- (TICursorEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TICursorEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:2];
}

@end