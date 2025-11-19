@interface VKCTextSelectionLongPressDelegateHandler
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (VKCTextSelectionLongPressHandlerDelegate)delegate;
@end

@implementation VKCTextSelectionLongPressDelegateHandler

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCTextSelectionLongPressDelegateHandler *)self delegate];
  LOBYTE(self) = [v8 longPressHandler:self gestureRecognizer:v7 shouldRequireFailureOfGestureRecognizer:v6];

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VKCTextSelectionLongPressDelegateHandler *)self delegate];
  LOBYTE(self) = [v8 longPressHandler:self gestureRecognizer:v7 shouldRecieveTouch:v6];

  return self;
}

- (VKCTextSelectionLongPressHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end