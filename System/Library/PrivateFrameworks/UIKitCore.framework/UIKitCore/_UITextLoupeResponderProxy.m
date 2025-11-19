@interface _UITextLoupeResponderProxy
+ (id)_proxyWithResponder:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (UIResponder)responder;
- (_UITextLoupeResponderProxyDelegate)delegate;
- (id)nextResponder;
@end

@implementation _UITextLoupeResponderProxy

+ (id)_proxyWithResponder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  objc_storeWeak(v5 + 2, v4);

  return v5;
}

- (id)nextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(_UITextLoupeResponderProxy *)self delegate];
  LOBYTE(a3) = [v7 canPerformAction:a3 withSender:v6];

  return a3;
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