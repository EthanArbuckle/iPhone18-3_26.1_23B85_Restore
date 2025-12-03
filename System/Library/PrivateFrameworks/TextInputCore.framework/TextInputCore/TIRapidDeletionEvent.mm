@interface TIRapidDeletionEvent
- (TIRapidDeletionEvent)initWithTIKeyboardState:(id)state;
@end

@implementation TIRapidDeletionEvent

- (TIRapidDeletionEvent)initWithTIKeyboardState:(id)state
{
  v4.receiver = self;
  v4.super_class = TIRapidDeletionEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:state andActionType:7];
}

@end