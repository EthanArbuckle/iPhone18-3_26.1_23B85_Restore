@interface _UIFocusEventDelivery
- (BOOL)shouldDeliverFocusKeyboardEvent:(id)event toResponder:(id)responder;
- (BOOL)shouldSkipKeyboardShortcutLeaf:(id)leaf whenDeliveringFocusKeyboardEvent:(id)event toResponder:(id)responder;
- (UIFocusSystem)focusSystem;
- (_UIFocusEventDelivery)init;
- (_UIFocusEventDelivery)initWithFocusSystem:(id)system;
- (void)willDeliverFocusKeyboardEvent:(id)event;
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

- (_UIFocusEventDelivery)initWithFocusSystem:(id)system
{
  systemCopy = system;
  v10.receiver = self;
  v10.super_class = _UIFocusEventDelivery;
  v5 = [(_UIFocusEventDelivery *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_focusSystem, systemCopy);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEventDelivery.m" lineNumber:53 description:@"Unable to access focus system. This probably means that the focus system has been deallocated but its event delivery object is still around. This should never happen and is a UIKit bug."];
  }

  return WeakRetained;
}

- (BOOL)shouldDeliverFocusKeyboardEvent:(id)event toResponder:(id)responder
{
  responderCopy = responder;
  v18 = 0;
  eventCopy = event;
  v8 = _UIFocusResponderMovementForPhysicalKeyboardEvent(eventCopy, &v18);
  keyboardPressEventForwardingMap = [(_UIFocusEventDelivery *)self keyboardPressEventForwardingMap];
  v10 = [keyboardPressEventForwardingMap containsObject:eventCopy];

  if ((v10 & 1) == 0)
  {
    focusSystem = [(_UIFocusEventDelivery *)self focusSystem];
    behavior = [focusSystem behavior];

    deliverKeyEventsToFocusEngine = [behavior deliverKeyEventsToFocusEngine];
    if (deliverKeyEventsToFocusEngine == 2)
    {
      if (self->_lastDeliveredMovement != v8 || ![(_UIFocusEventDelivery *)self _movementParticipatesInCooldown:v8]|| CFAbsoluteTimeGetCurrent() - self->_lastDeliveredTimestamp >= 0.5)
      {
        if (!v8)
        {
LABEL_13:
          __isKindOfTypeSelectKeyInput = 0;
          goto LABEL_14;
        }

        if ((v18 & 1) == 0 && ([responderCopy _shouldForwardMovementToFocusEngine:v8] & 1) == 0)
        {
          _window = [responderCopy _window];
          _keyboardResponder = [_window _keyboardResponder];
          __isKindOfTypeSelectKeyInput = [_keyboardResponder __isKindOfTypeSelectKeyInput];

          goto LABEL_14;
        }
      }
    }

    else if (deliverKeyEventsToFocusEngine != 1)
    {
      goto LABEL_13;
    }

    __isKindOfTypeSelectKeyInput = 1;
LABEL_14:

    goto LABEL_15;
  }

  __isKindOfTypeSelectKeyInput = 1;
LABEL_15:

  return __isKindOfTypeSelectKeyInput;
}

- (BOOL)shouldSkipKeyboardShortcutLeaf:(id)leaf whenDeliveringFocusKeyboardEvent:(id)event toResponder:(id)responder
{
  leafCopy = leaf;
  responderCopy = responder;
  v10 = _UIFocusResponderMovementForPhysicalKeyboardEvent(event, 0);
  focusSystem = [(_UIFocusEventDelivery *)self focusSystem];
  behavior = [focusSystem behavior];

  skipKeyCommandsForKeyEvents = [behavior skipKeyCommandsForKeyEvents];
  if (skipKeyCommandsForKeyEvents == 1)
  {
    LOBYTE(v10) = 1;
  }

  else if (skipKeyCommandsForKeyEvents == 2)
  {
    if (v10)
    {
      LOBYTE(v10) = [responderCopy _shouldSkipKeyboardShortcutLeaf:leafCopy forMovement:v10];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)willDeliverFocusKeyboardEvent:(id)event
{
  v16 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  self->_lastDeliveredTimestamp = CFAbsoluteTimeGetCurrent();
  self->_lastDeliveredMovement = _UIFocusResponderMovementForPhysicalKeyboardEvent(eventCopy, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allPresses = [eventCopy allPresses];
  v6 = [allPresses countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allPresses);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (![v10 phase] || objc_msgSend(v10, "phase") == 1 || objc_msgSend(v10, "phase") == 2)
        {

          [(NSMutableSet *)self->_keyboardPressEventForwardingMap addObject:eventCopy];
          goto LABEL_13;
        }
      }

      v7 = [allPresses countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSMutableSet *)self->_keyboardPressEventForwardingMap removeObject:eventCopy];
LABEL_13:
}

@end