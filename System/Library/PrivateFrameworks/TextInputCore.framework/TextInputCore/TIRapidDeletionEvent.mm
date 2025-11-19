@interface TIRapidDeletionEvent
- (TIRapidDeletionEvent)initWithTIKeyboardState:(id)a3;
@end

@implementation TIRapidDeletionEvent

- (TIRapidDeletionEvent)initWithTIKeyboardState:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIRapidDeletionEvent;
  return [(TIContextChangeEvent *)&v4 initWithTIKeyboardState:a3 andActionType:7];
}

@end