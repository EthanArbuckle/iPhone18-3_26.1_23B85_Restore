@interface _UIHostedFocusSystemDelegateProxy
- (BOOL)_focusSystem:(id)a3 containsChildOfHostEnvironment:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (_UIHostedFocusSystemDelegate)delegate;
- (_UIHostedFocusSystemDelegateProxy)initWithFocusSystem:(id)a3 delegate:(id)a4;
- (id)_focusSystem:(id)a3 focusItemsInRect:(CGRect)a4;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation _UIHostedFocusSystemDelegateProxy

- (_UIHostedFocusSystemDelegateProxy)initWithFocusSystem:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = _UIHostedFocusSystemDelegateProxy;
  v7 = [(_UIHostedFocusSystemDelegateProxy *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_focusSystem = a3;
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_UIHostedFocusSystem *)self->_focusSystem _hostFocusSystem];
    v7 = [v6 delegate];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 methodSignatureForSelector:a3];
  }

  else
  {
    v7 = [(_UIHostedFocusSystem *)self->_focusSystem _hostFocusSystem];
    v9 = [v7 delegate];
    v8 = [v9 methodSignatureForSelector:a3];
  }

  return v8;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v7 = [(_UIHostedFocusSystem *)self->_focusSystem _hostFocusSystem];
    v6 = [v7 delegate];
  }

  return v6;
}

- (BOOL)_focusSystem:(id)a3 containsChildOfHostEnvironment:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained _focusSystem:v7 containsChildOfHostEnvironment:v6];

  return v9;
}

- (id)_focusSystem:(id)a3 focusItemsInRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained _focusSystem:v9 focusItemsInRect:{x, y, width, height}];

  return v11;
}

- (_UIHostedFocusSystemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end