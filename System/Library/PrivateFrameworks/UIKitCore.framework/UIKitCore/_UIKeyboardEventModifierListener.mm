@interface _UIKeyboardEventModifierListener
- (_UIKeyboardEventModifierListenerDelegate)delegate;
- (void)handleKeyboardEvent:(id)event;
@end

@implementation _UIKeyboardEventModifierListener

- (void)handleKeyboardEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy modifierFlags] & 0xFFFFFFFFFFFEFFFFLL;
  currentModifierFlags = self->_currentModifierFlags;
  self->_currentModifierFlags = v4;
  if ([eventCopy _isModifierKey])
  {
    [eventCopy _isKeyDown];
  }

  else
  {
    _isGlobeKey = [eventCopy _isGlobeKey];
    if ([eventCopy _isKeyDown] && (_isGlobeKey & 1) == 0)
    {
      delegate = [(_UIKeyboardEventModifierListener *)self delegate];
      [delegate modifierListenerDidPressNonModifierKey:self];
      goto LABEL_8;
    }
  }

  if (currentModifierFlags == v4)
  {
    goto LABEL_9;
  }

  delegate = [(_UIKeyboardEventModifierListener *)self delegate];
  [delegate modifierListener:self didUpdateModifierFlag:currentModifierFlags ^ v4];
LABEL_8:

LABEL_9:
}

- (_UIKeyboardEventModifierListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end