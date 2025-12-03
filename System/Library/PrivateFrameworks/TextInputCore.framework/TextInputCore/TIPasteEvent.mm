@interface TIPasteEvent
- (TIPasteEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TIPasteEvent

- (TIPasteEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TIPasteEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:9];
}

@end