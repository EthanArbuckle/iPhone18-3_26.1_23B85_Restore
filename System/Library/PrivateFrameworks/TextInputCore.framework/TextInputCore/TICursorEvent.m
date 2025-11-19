@interface TICursorEvent
- (TICursorEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TICursorEvent

- (TICursorEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TICursorEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:2];
}

@end