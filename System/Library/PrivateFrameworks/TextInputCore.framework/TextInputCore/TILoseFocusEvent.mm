@interface TILoseFocusEvent
- (TILoseFocusEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TILoseFocusEvent

- (TILoseFocusEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TILoseFocusEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:11];
}

@end