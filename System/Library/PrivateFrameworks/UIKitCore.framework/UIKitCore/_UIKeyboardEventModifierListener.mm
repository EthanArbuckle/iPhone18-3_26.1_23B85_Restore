@interface _UIKeyboardEventModifierListener
- (_UIKeyboardEventModifierListenerDelegate)delegate;
- (void)handleKeyboardEvent:(id)a3;
@end

@implementation _UIKeyboardEventModifierListener

- (void)handleKeyboardEvent:(id)a3
{
  v8 = a3;
  v4 = [v8 modifierFlags] & 0xFFFFFFFFFFFEFFFFLL;
  currentModifierFlags = self->_currentModifierFlags;
  self->_currentModifierFlags = v4;
  if ([v8 _isModifierKey])
  {
    [v8 _isKeyDown];
  }

  else
  {
    v7 = [v8 _isGlobeKey];
    if ([v8 _isKeyDown] && (v7 & 1) == 0)
    {
      v6 = [(_UIKeyboardEventModifierListener *)self delegate];
      [v6 modifierListenerDidPressNonModifierKey:self];
      goto LABEL_8;
    }
  }

  if (currentModifierFlags == v4)
  {
    goto LABEL_9;
  }

  v6 = [(_UIKeyboardEventModifierListener *)self delegate];
  [v6 modifierListener:self didUpdateModifierFlag:currentModifierFlags ^ v4];
LABEL_8:

LABEL_9:
}

- (_UIKeyboardEventModifierListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end