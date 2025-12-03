@interface _UITextServicesResponderProxy
+ (id)_proxyWithResponder:(id)responder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (UIResponder)responder;
- (_UITextServicesResponderProxyDelegate)delegate;
- (id)nextResponder;
- (void)_addShortcut:(id)shortcut;
- (void)_define:(id)_define;
- (void)_lookup:(id)_lookup;
- (void)_share:(id)_share;
- (void)_translate:(id)_translate;
@end

@implementation _UITextServicesResponderProxy

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
  delegate = [(_UITextServicesResponderProxy *)self delegate];
  LOBYTE(action) = [delegate canPerformAction:action withSender:senderCopy];

  return action;
}

- (void)_share:(id)_share
{
  _shareCopy = _share;
  delegate = [(_UITextServicesResponderProxy *)self delegate];
  [delegate _beginSessionWithType:8 sender:_shareCopy];
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(_UITextServicesResponderProxy *)self delegate];
  [delegate _beginSessionWithType:4 sender:shortcutCopy];
}

- (void)_define:(id)_define
{
  _defineCopy = _define;
  delegate = [(_UITextServicesResponderProxy *)self delegate];
  [delegate _beginSessionWithType:2 sender:_defineCopy];
}

- (void)_lookup:(id)_lookup
{
  _lookupCopy = _lookup;
  delegate = [(_UITextServicesResponderProxy *)self delegate];
  [delegate _beginSessionWithType:16 sender:_lookupCopy];
}

- (void)_translate:(id)_translate
{
  _translateCopy = _translate;
  delegate = [(_UITextServicesResponderProxy *)self delegate];
  [delegate _beginSessionWithType:32 sender:_translateCopy];
}

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (_UITextServicesResponderProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end