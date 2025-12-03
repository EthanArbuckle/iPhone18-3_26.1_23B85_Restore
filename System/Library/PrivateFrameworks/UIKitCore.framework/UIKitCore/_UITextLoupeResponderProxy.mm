@interface _UITextLoupeResponderProxy
+ (id)_proxyWithResponder:(id)responder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (UIResponder)responder;
- (_UITextLoupeResponderProxyDelegate)delegate;
- (id)nextResponder;
@end

@implementation _UITextLoupeResponderProxy

+ (id)_proxyWithResponder:(id)responder
{
  responderCopy = responder;
  v5 = objc_alloc_init(self);
  objc_storeWeak(v5 + 2, responderCopy);

  return v5;
}

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  delegate = [(_UITextLoupeResponderProxy *)self delegate];
  LOBYTE(action) = [delegate canPerformAction:action withSender:senderCopy];

  return action;
}

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (_UITextLoupeResponderProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end