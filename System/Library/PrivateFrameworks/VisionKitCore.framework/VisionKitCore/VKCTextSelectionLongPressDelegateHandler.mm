@interface VKCTextSelectionLongPressDelegateHandler
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (VKCTextSelectionLongPressHandlerDelegate)delegate;
@end

@implementation VKCTextSelectionLongPressDelegateHandler

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  delegate = [(VKCTextSelectionLongPressDelegateHandler *)self delegate];
  LOBYTE(self) = [delegate longPressHandler:self gestureRecognizer:recognizerCopy shouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];

  return self;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  delegate = [(VKCTextSelectionLongPressDelegateHandler *)self delegate];
  LOBYTE(self) = [delegate longPressHandler:self gestureRecognizer:recognizerCopy shouldRecieveTouch:touchCopy];

  return self;
}

- (VKCTextSelectionLongPressHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end