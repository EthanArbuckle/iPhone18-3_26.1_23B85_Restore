@interface TIUnknownContextChangeEvent
- (TIUnknownContextChangeEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TIUnknownContextChangeEvent

- (TIUnknownContextChangeEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIUnknownContextChangeEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:12];
}

@end