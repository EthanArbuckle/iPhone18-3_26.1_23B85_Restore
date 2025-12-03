@interface _UIHostedFocusSystemDelegateProxy
- (BOOL)_focusSystem:(id)system containsChildOfHostEnvironment:(id)environment;
- (BOOL)respondsToSelector:(SEL)selector;
- (_UIHostedFocusSystemDelegate)delegate;
- (_UIHostedFocusSystemDelegateProxy)initWithFocusSystem:(id)system delegate:(id)delegate;
- (id)_focusSystem:(id)system focusItemsInRect:(CGRect)rect;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation _UIHostedFocusSystemDelegateProxy

- (_UIHostedFocusSystemDelegateProxy)initWithFocusSystem:(id)system delegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = _UIHostedFocusSystemDelegateProxy;
  v7 = [(_UIHostedFocusSystemDelegateProxy *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_focusSystem = system;
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    _hostFocusSystem = [(_UIHostedFocusSystem *)self->_focusSystem _hostFocusSystem];
    delegate = [_hostFocusSystem delegate];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _hostFocusSystem = objc_loadWeakRetained(&self->_delegate);
    v8 = [_hostFocusSystem methodSignatureForSelector:selector];
  }

  else
  {
    _hostFocusSystem = [(_UIHostedFocusSystem *)self->_focusSystem _hostFocusSystem];
    delegate = [_hostFocusSystem delegate];
    v8 = [delegate methodSignatureForSelector:selector];
  }

  return v8;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    _hostFocusSystem = [(_UIHostedFocusSystem *)self->_focusSystem _hostFocusSystem];
    delegate = [_hostFocusSystem delegate];
  }

  return delegate;
}

- (BOOL)_focusSystem:(id)system containsChildOfHostEnvironment:(id)environment
{
  environmentCopy = environment;
  systemCopy = system;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained _focusSystem:systemCopy containsChildOfHostEnvironment:environmentCopy];

  return v9;
}

- (id)_focusSystem:(id)system focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  systemCopy = system;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained _focusSystem:systemCopy focusItemsInRect:{x, y, width, height}];

  return v11;
}

- (_UIHostedFocusSystemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end