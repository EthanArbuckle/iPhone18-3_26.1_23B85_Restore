@interface TIUnknownContextChangeEvent
- (TIUnknownContextChangeEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TIUnknownContextChangeEvent

- (TIUnknownContextChangeEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TIUnknownContextChangeEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:12];
}

@end