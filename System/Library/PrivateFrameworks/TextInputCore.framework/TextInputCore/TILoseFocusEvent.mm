@interface TILoseFocusEvent
- (TILoseFocusEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TILoseFocusEvent

- (TILoseFocusEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TILoseFocusEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:11];
}

@end