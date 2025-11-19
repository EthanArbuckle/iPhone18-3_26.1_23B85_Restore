@interface TIPasteEvent
- (TIPasteEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TIPasteEvent

- (TIPasteEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIPasteEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:9];
}

@end