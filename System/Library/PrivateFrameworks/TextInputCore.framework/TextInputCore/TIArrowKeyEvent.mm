@interface TIArrowKeyEvent
- (TIArrowKeyEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TIArrowKeyEvent

- (TIArrowKeyEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TIArrowKeyEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:6];
}

@end