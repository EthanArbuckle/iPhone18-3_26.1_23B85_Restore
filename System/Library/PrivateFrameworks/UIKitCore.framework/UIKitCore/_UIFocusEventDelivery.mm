@interface _UIFocusEventDelivery
- (BOOL)shouldDeliverFocusKeyboardEvent:(id)a3 toResponder:(id)a4;
- (BOOL)shouldSkipKeyboardShortcutLeaf:(id)a3 whenDeliveringFocusKeyboardEvent:(id)a4 toResponder:(id)a5;
- (UIFocusSystem)focusSystem;
- (_UIFocusEventDelivery)init;
- (_UIFocusEventDelivery)initWithFocusSystem:(id)a3;
- (void)willDeliverFocusKeyboardEvent:(id)a3;
@end

@implementation _UIFocusEventDelivery

- (_UIFocusEventDelivery)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Unable to initialize %@ by calling %@.", v7, v8}];

  return 0;
}

- (_UIFocusEventDelivery)initWithFocusSystem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIFocusEventDelivery;
  v5 = [(_UIFocusEventDelivery *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_focusSystem, v4);
    v7 = objc_opt_new();
    keyboardPressEventForwardingMap = v6->_keyboardPressEventForwardingMap;
    v6->_keyboardPressEventForwardingMap = v7;
  }

  return v6;
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  if (!WeakRetained)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIFocusEventDelivery.m" lineNumber:53 description:@"Unable to access focus system. This probably means that the focus system has been deallocated but its event delivery object is still around. This should never happen and is a UIKit bug."];
  }

  return WeakRetained;
}

- (BOOL)shouldDeliverFocusKeyboardEvent:(id)a3 toResponder:(id)a4
{
  v6 = a4;
  v18 = 0;
  v7 = a3;
  v8 = _UIFocusResponderMovementForPhysicalKeyboardEvent(v7, &v18);
  v9 = [(_UIFocusEventDelivery *)self keyboardPressEventForwardingMap];
  v10 = [v9 containsObject:v7];

  if ((v10 & 1) == 0)
  {
    v12 = [(_UIFocusEventDelivery *)self focusSystem];
    v13 = [v12 behavior];

    v14 = [v13 deliverKeyEventsToFocusEngine];
    if (v14 == 2)
    {
      if (self->_lastDeliveredMovement != v8 || ![(_UIFocusEventDelivery *)self _movementParticipatesInCooldown:v8]|| CFAbsoluteTimeGetCurrent() - self->_lastDeliveredTimestamp >= 0.5)
      {
        if (!v8)
        {
LABEL_13:
          v11 = 0;
          goto LABEL_14;
        }

        if ((v18 & 1) == 0 && ([v6 _shouldForwardMovementToFocusEngine:v8] & 1) == 0)
        {
          v16 = [v6 _window];
          v17 = [v16 _keyboardResponder];
          v11 = [v17 __isKindOfTypeSelectKeyInput];

          goto LABEL_14;
        }
      }
    }

    else if (v14 != 1)
    {
      goto LABEL_13;
    }

    v11 = 1;
LABEL_14:

    goto LABEL_15;
  }

  v11 = 1;
LABEL_15:

  return v11;
}

- (BOOL)shouldSkipKeyboardShortcutLeaf:(id)a3 whenDeliveringFocusKeyboardEvent:(id)a4 toResponder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _UIFocusResponderMovementForPhysicalKeyboardEvent(a4, 0);
  v11 = [(_UIFocusEventDelivery *)self focusSystem];
  v12 = [v11 behavior];

  v13 = [v12 skipKeyCommandsForKeyEvents];
  if (v13 == 1)
  {
    LOBYTE(v10) = 1;
  }

  else if (v13 == 2)
  {
    if (v10)
    {
      LOBYTE(v10) = [v9 _shouldSkipKeyboardShortcutLeaf:v8 forMovement:v10];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)willDeliverFocusKeyboardEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_lastDeliveredTimestamp = CFAbsoluteTimeGetCurrent();
  self->_lastDeliveredMovement = _UIFocusResponderMovementForPhysicalKeyboardEvent(v4, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 allPresses];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (![v10 phase] || objc_msgSend(v10, "phase") == 1 || objc_msgSend(v10, "phase") == 2)
        {

          [(NSMutableSet *)self->_keyboardPressEventForwardingMap addObject:v4];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableSet *)self->_keyboardPressEventForwardingMap removeObject:v4];
LABEL_13:
}

@end