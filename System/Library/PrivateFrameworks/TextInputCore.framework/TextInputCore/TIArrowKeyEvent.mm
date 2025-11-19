@interface TIArrowKeyEvent
- (TIArrowKeyEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TIArrowKeyEvent

- (TIArrowKeyEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIArrowKeyEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:6];
}

@end