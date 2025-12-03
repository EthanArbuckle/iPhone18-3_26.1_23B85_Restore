@interface UITextInteraction
+ (UITextInteraction)textInteractionForMode:(UITextInteractionMode)mode;
+ (double)_maximumBeamSnappingLength;
+ (id)textInteractionsForSet:(int64_t)set;
- (BOOL)_shouldObscureTextInput;
- (BOOL)_textInputIsInteractive;
- (BOOL)_textInputLivesInKeyWindow;
- (BOOL)containerChangesSelectionOnOneFingerTap;
- (BOOL)currentSelectionContainsPoint:(CGPoint)point;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)inGesture;
- (BOOL)interaction_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin;
- (BOOL)selection:(id)selection containsPoint:(CGPoint)point;
- (BOOL)shouldAllowWithTouchTypes:(id)types atPoint:(CGPoint)point toBegin:(BOOL)begin;
- (BOOL)shouldHandleFormGestureAtLocation:(CGPoint)location;
- (NSArray)gesturesForFailureRequirements;
- (UIResponder)textInput;
- (UITextCursorAssertionController)_assertionController;
- (UITextInteraction)init;
- (UITextInteraction)interactionWithClass:(Class)class;
- (UITextInteraction)interactionWithGestureForName:(id)name;
- (UITextInteraction)parent;
- (UITextInteraction)root;
- (UITextInteractionMode)textInteractionMode;
- (UITextInteraction_AssistantDelegate)assistantDelegate;
- (UIView)gestureRecognizerHostView;
- (UIView)view;
- (double)distanceBetweenPoint:(CGPoint)point andRects:(id)rects;
- (id)_textInput;
- (id)_transientState;
- (id)defaultDoubleTapRecognizerWithAction:(SEL)action;
- (id)defaultTapRecognizerWithAction:(SEL)action;
- (id)defaultTripleTapRecognizerWithAction:(SEL)action;
- (id)delegate;
- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position;
- (id)recognizerForName:(id)name;
- (int64_t)textInteractionSet;
- (void)_applyTransientState:(id)state;
- (void)_beginSelectionChange;
- (void)_callDelegateWillMoveTextRangeExtentAtPoint:(CGPoint)point;
- (void)_cancelRecognizerWithName:(id)name;
- (void)_cleanUpFeedbackForGesture;
- (void)_createFeedbackIfNecessary;
- (void)_endSelectionChange;
- (void)_performGestureType:(int64_t)type state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)touchType;
- (void)_playFeedbackForCursorMovement;
- (void)_prepareFeedbackForGesture;
- (void)_presentTextEditMenuWithOverrideMenu:(id)menu;
- (void)_setLinkInteractionSession:(id)session;
- (void)addChild:(id)child;
- (void)addGestureRecognizer:(id)recognizer withName:(id)name;
- (void)addIndirectChild:(id)child;
- (void)cancelLinkInteractionSession;
- (void)didMoveToView:(id)view;
- (void)disableClearsOnInsertion;
- (void)finishSetup;
- (void)removeChild:(id)child;
- (void)removeGestureRecognizerWithName:(id)name;
- (void)setInGesture:(BOOL)gesture;
- (void)updateTextInputSourceForScribbleGesture:(id)gesture;
- (void)willMoveToView:(id)view;
@end

@implementation UITextInteraction

- (UITextInteraction)root
{
  selfCopy = self;
  p_parent = &selfCopy->_parent;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_parent);

  if (WeakRetained)
  {
    do
    {
      p_isa = objc_loadWeakRetained(p_parent);

      p_parent = p_isa + 1;
      v6 = objc_loadWeakRetained(p_isa + 1);

      selfCopy = p_isa;
    }

    while (v6);
  }

  else
  {
    p_isa = &selfCopy->super.isa;
  }

  return p_isa;
}

- (UITextInteraction)init
{
  v11.receiver = self;
  v11.super_class = UITextInteraction;
  v2 = [(UITextInteraction *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_textInteractionMode = -1;
    array = [MEMORY[0x1E695DF70] array];
    children = v3->_children;
    v3->_children = array;

    array2 = [MEMORY[0x1E695DF70] array];
    gestures = v3->_gestures;
    v3->_gestures = array2;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    gestureMap = v3->_gestureMap;
    v3->_gestureMap = dictionary;
  }

  return v3;
}

- (UIView)gestureRecognizerHostView
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)cancelLinkInteractionSession
{
  root = [(UITextInteraction *)self root];
  v4 = root;
  if (!root || root == self)
  {
    [(UITextInteraction *)self _setLinkInteractionSession:0];
  }

  else
  {
    [(UITextInteraction *)root cancelLinkInteractionSession];
  }
}

- (UITextInteraction_AssistantDelegate)assistantDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_assistantDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_assistantDelegate);
    goto LABEL_8;
  }

  v5 = objc_loadWeakRetained(&self->_parent);

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_parent);
    assistantDelegate = [v6 assistantDelegate];
LABEL_7:
    v4 = assistantDelegate;

    goto LABEL_8;
  }

  v8 = objc_loadWeakRetained(&self->_textInput);

  if (v8)
  {
    v6 = objc_loadWeakRetained(&self->_textInput);
    assistantDelegate = [v6 interactionAssistant];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (UIResponder)textInput
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);

  return WeakRetained;
}

- (void)finishSetup
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_children;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) finishSetup];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (UITextInteraction)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (id)_textInput
{
  v19 = *MEMORY[0x1E69E9840];
  root = [(UITextInteraction *)self root];
  textInput = [root textInput];

  if (!textInput)
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      goto LABEL_4;
    }

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [WeakRetained conformsToProtocol:&unk_1EFE8B2D0];

    if (v6)
    {
      goto LABEL_4;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v10 = objc_loadWeakRetained(&self->_view);
      Class = object_getClass(v10);
      v12 = Class;
      v13 = objc_loadWeakRetained(&self->_view);
      v15 = 138412546;
      v16 = Class;
      v17 = 2048;
      v18 = v13;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "View <%@:%p> does not conform to UITextInput protocol", &v15, 0x16u);
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_textInput___s_category) + 8);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        textInput = objc_loadWeakRetained(&self->_view);
        goto LABEL_5;
      }

      v9 = v8;
      v10 = objc_loadWeakRetained(&self->_view);
      v11 = object_getClass(v10);
      v12 = v11;
      v13 = objc_loadWeakRetained(&self->_view);
      v15 = 138412546;
      v16 = v11;
      v17 = 2048;
      v18 = v13;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "View <%@:%p> does not conform to UITextInput protocol", &v15, 0x16u);
    }

LABEL_12:
    goto LABEL_4;
  }

LABEL_5:

  return textInput;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)_transientState
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_children count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableArray count](self->_children, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_children;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          _transientState = [*(*(&v13 + 1) + 8 * i) _transientState];
          if (_transientState)
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            [v3 setObject:_transientState forKey:v11];
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)inGesture
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_inGesture)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v3 = self->_children;
    v2 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v4 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v7 + 1) + 8 * i) inGesture])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v2;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    delegate = WeakRetained;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_parent);
    delegate = [v6 delegate];
  }

  return delegate;
}

- (void)addChild:(id)child
{
  childCopy = child;
  v7 = childCopy;
  if (!childCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: cluster may not be nil", self}];
    childCopy = 0;
  }

  parent = [childCopy parent];

  if (parent)
  {
    parent2 = [v7 parent];
    [parent2 removeChild:v7];
  }

  objc_storeWeak(v7 + 1, self);
  [(NSMutableArray *)self->_children addObject:v7];
}

- (void)addIndirectChild:(id)child
{
  childCopy = child;
  v5 = childCopy;
  if (!childCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: cluster may not be nil", self}];
    childCopy = 0;
  }

  objc_storeWeak(childCopy + 1, self);
}

- (void)removeChild:(id)child
{
  childCopy = child;
  v5 = MEMORY[0x1E695D940];
  v10 = childCopy;
  if (!childCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: cluster may not be nil", self}];
    childCopy = 0;
  }

  parent = [childCopy parent];

  if (parent != self)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *v5;
    parent2 = [v10 parent];
    [v7 raise:v8 format:{@"%@: cluster has a different parent (%@)", self, parent2}];
  }

  objc_storeWeak(v10 + 1, 0);
  [(NSMutableArray *)self->_children removeObject:v10];
}

- (UITextInteraction)interactionWithGestureForName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_gestureMap objectForKey:nameCopy];
  if (v5)
  {
    selfCopy = self;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_children;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) interactionWithGestureForName:{nameCopy, v14}];
          if (v12)
          {
            selfCopy = v12;

            goto LABEL_13;
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (UITextInteraction)interactionWithClass:(Class)class
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_children;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
LABEL_13:
          v11 = v10;
          goto LABEL_14;
        }

        v10 = [v9 interactionWithClass:{class, v13}];
        if (v10)
        {
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (void)_applyTransientState:(id)state
{
  v19 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [stateCopy objectForKey:{v12, v14}];

        [v10 _applyTransientState:v13];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (UITextCursorAssertionController)_assertionController
{
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _assertionController = [assistantDelegate _assertionController];

  return _assertionController;
}

- (void)addGestureRecognizer:(id)recognizer withName:(id)name
{
  recognizerCopy = recognizer;
  nameCopy = name;
  [recognizerCopy setName:nameCopy];
  if ([(UITextInteraction *)self doesControlDelegate])
  {
    [recognizerCopy setDelegate:self];
  }

  _pairedGestureIdentifiers = [recognizerCopy _pairedGestureIdentifiers];
  [_pairedGestureIdentifiers addObject:nameCopy];

  [(NSMutableArray *)self->_gestures addObject:recognizerCopy];
  [(NSMutableDictionary *)self->_gestureMap setObject:recognizerCopy forKey:nameCopy];

  gestureRecognizerHostView = [(UITextInteraction *)self gestureRecognizerHostView];
  v9 = gestureRecognizerHostView;
  if (gestureRecognizerHostView)
  {
    [(UIView *)gestureRecognizerHostView _addGestureRecognizer:recognizerCopy atEnd:0];
  }
}

- (void)removeGestureRecognizerWithName:(id)name
{
  nameCopy = name;
  v4 = [(NSMutableDictionary *)self->_gestureMap objectForKey:?];
  if ([(NSMutableArray *)self->_gestures containsObject:v4])
  {
    gestureRecognizerHostView = [(UITextInteraction *)self gestureRecognizerHostView];
    v6 = gestureRecognizerHostView;
    if (gestureRecognizerHostView)
    {
      [gestureRecognizerHostView removeGestureRecognizer:v4];
    }

    if ([(UITextInteraction *)self doesControlDelegate])
    {
      [v4 setDelegate:0];
    }

    [(NSMutableArray *)self->_gestures removeObject:v4];
    [(NSMutableDictionary *)self->_gestureMap removeObjectForKey:nameCopy];
  }
}

- (id)recognizerForName:(id)name
{
  nameCopy = name;
  v5 = [(UITextInteraction *)self interactionWithGestureForName:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [*(v5 + 32) objectForKey:nameCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_cancelRecognizerWithName:(id)name
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    nameCopy = name;
    root = [(UITextInteraction *)self root];
    v6 = [root recognizerForName:nameCopy];

    if (v6)
    {
      _gestureEnvironment = [UIApp _gestureEnvironment];
      v9[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [(UIGestureEnvironment *)_gestureEnvironment _cancelGestureRecognizers:v8];
    }
  }
}

- (UITextInteractionMode)textInteractionMode
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (!WeakRetained)
  {
    return self->_textInteractionMode;
  }

  root = [(UITextInteraction *)self root];
  textInteractionMode = [root textInteractionMode];

  return textInteractionMode;
}

- (void)setInGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  self->_inGesture = gesture;
  delegate = [(UITextInteraction *)self delegate];
  v6 = delegate;
  if (delegate)
  {
    v10 = delegate;
    if (gestureCopy)
    {
      v7 = objc_opt_respondsToSelector();
      v6 = v10;
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      root = [(UITextInteraction *)self root];
      [v10 interactionWillBegin:root];
    }

    else
    {
      v9 = objc_opt_respondsToSelector();
      v6 = v10;
      if ((v9 & 1) == 0)
      {
        goto LABEL_8;
      }

      root = [(UITextInteraction *)self root];
      [v10 interactionDidEnd:root];
    }

    v6 = v10;
  }

LABEL_8:
}

- (BOOL)shouldAllowWithTouchTypes:(id)types atPoint:(CGPoint)point toBegin:(BOOL)begin
{
  beginCopy = begin;
  y = point.y;
  x = point.x;
  v22 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_children;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![*(*(&v17 + 1) + 8 * i) shouldAllowWithTouchTypes:typesCopy atPoint:beginCopy toBegin:{x, y, v17}])
        {
          v15 = 0;
          goto LABEL_11;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_11:

  return v15;
}

- (void)_callDelegateWillMoveTextRangeExtentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(UITextInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(UITextInteraction *)self delegate];
    [delegate2 _willMoveTextRangeExtentAtPoint:{x, y}];
  }
}

- (void)willMoveToView:(id)view
{
  v40 = *MEMORY[0x1E69E9840];
  [(UITextInteraction *)self cancelLinkInteractionSession];
  if (!view)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = self->_gestures;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        v9 = 0;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v34 + 1) + 8 * v9);
          WeakRetained = objc_loadWeakRetained(&self->_view);
          [WeakRetained removeGestureRecognizer:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v7);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_children;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        v16 = 0;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * v16);
          v18 = objc_loadWeakRetained(&self->_view);
          [v18 removeInteraction:{v17, v30}];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v14);
    }

    v19 = objc_loadWeakRetained(&self->_assistantDelegate);
    if (v19 || (v19 = objc_loadWeakRetained(&self->_parent)) != 0)
    {
      v20 = v19;
LABEL_19:

      return;
    }

    v21 = objc_loadWeakRetained(&self->_textInput);

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->_textInput);
      interactionAssistant = [v22 interactionAssistant];
      externalInteractions = [interactionAssistant externalInteractions];

      if (externalInteractions == self)
      {
        v25 = objc_loadWeakRetained(&self->_textInput);
        inputDelegate = [v25 inputDelegate];
        interactionInputDelegate = [(UITextInteraction *)self interactionInputDelegate];

        if (inputDelegate == interactionInputDelegate)
        {
          interactionInputDelegate2 = [(UITextInteraction *)self interactionInputDelegate];
          [interactionInputDelegate2 setRootInteraction:0];

          v29 = objc_loadWeakRetained(&self->_textInput);
          [v29 setInputDelegate:0];

          [(UITextInteraction *)self setInteractionInputDelegate:0];
        }

        v20 = objc_loadWeakRetained(&self->_textInput);
        [v20 __tearDownInteractionAssistantIfNecessary];
        goto LABEL_19;
      }
    }
  }
}

- (void)didMoveToView:(id)view
{
  v53 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  v5 = objc_storeWeak(&self->_view, viewCopy);

  v6 = v5;
  if (!viewCopy)
  {
    goto LABEL_25;
  }

  gestureRecognizerHostView = [(UITextInteraction *)self gestureRecognizerHostView];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = self->_gestures;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      v12 = 0;
      do
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(UIView *)gestureRecognizerHostView _addGestureRecognizer:0 atEnd:?];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v10);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = self->_children;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        WeakRetained = objc_loadWeakRetained(&self->_view);
        [WeakRetained addInteraction:{v18, v43}];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v15);
  }

  v20 = objc_loadWeakRetained(&self->_assistantDelegate);
  if (v20 || (v20 = objc_loadWeakRetained(&self->_parent)) != 0)
  {
    v21 = v20;
  }

  else
  {
    v29 = objc_loadWeakRetained(&self->_textInput);
    if (!v29)
    {
      goto LABEL_20;
    }

    v30 = v29;
    v31 = objc_loadWeakRetained(&self->_view);
    v32 = +[UIKeyboardImpl activeInstance];
    markedTextOverlay = [v32 markedTextOverlay];

    if (v31 == markedTextOverlay)
    {
      goto LABEL_20;
    }

    v34 = objc_loadWeakRetained(&self->_textInput);
    interactionAssistant = [v34 interactionAssistant];

    if (!interactionAssistant)
    {
      v36 = objc_loadWeakRetained(&self->_textInput);
      [v36 __createInteractionAssistantIfNecessaryWithMode:self->_textInteractionMode];
    }

    v37 = objc_loadWeakRetained(&self->_textInput);
    [v37 __prepareInteractionAssistantIfNecessary];

    v38 = objc_loadWeakRetained(&self->_textInput);
    interactionAssistant2 = [v38 interactionAssistant];
    [interactionAssistant2 setExternalInteractions:self];

    v40 = objc_alloc_init(UITextInteractionInputDelegate);
    [(UITextInteraction *)self setInteractionInputDelegate:v40];

    interactionInputDelegate = [(UITextInteraction *)self interactionInputDelegate];
    [interactionInputDelegate setRootInteraction:self];

    v21 = objc_loadWeakRetained(&self->_textInput);
    interactionInputDelegate2 = [(UITextInteraction *)self interactionInputDelegate];
    [v21 setInputDelegate:interactionInputDelegate2];
  }

LABEL_20:
  v22 = objc_loadWeakRetained(&self->_delegate);
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = objc_loadWeakRetained(&self->_delegate);
    v25 = [v24 interactionShouldSuppressSystemUI:self];

    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    [assistantDelegate setSuppressSystemUI:v25];
  }

  v27 = objc_loadWeakRetained(&self->_view);
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    self->_viewOverridesInteractivityState = 1;
  }

LABEL_25:
}

- (NSArray)gesturesForFailureRequirements
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  interactionAssistant = [WeakRetained interactionAssistant];
  externalInteractions = [interactionAssistant externalInteractions];

  if (externalInteractions == self)
  {
    v7 = objc_loadWeakRetained(&self->_textInput);
    interactionAssistant2 = [(NSMutableArray *)v7 interactionAssistant];
    interactions = [interactionAssistant2 interactions];
    gesturesForFailureRequirements = [interactions gesturesForFailureRequirements];
  }

  else
  {
    gesturesForFailureRequirements = [(NSMutableArray *)self->_gestures mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_children;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          gesturesForFailureRequirements2 = [*(*(&v16 + 1) + 8 * i) gesturesForFailureRequirements];
          [gesturesForFailureRequirements addObjectsFromArray:gesturesForFailureRequirements2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return gesturesForFailureRequirements;
}

+ (UITextInteraction)textInteractionForMode:(UITextInteractionMode)mode
{
  v4 = objc_alloc_init(UITextInteraction);
  v4->_textInteractionMode = mode;

  return v4;
}

+ (id)textInteractionsForSet:(int64_t)set
{
  if (set == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (set)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return [self textInteractionForMode:v4];
}

- (int64_t)textInteractionSet
{
  textInteractionMode = [(UITextInteraction *)self textInteractionMode];
  if (textInteractionMode == UITextInteractionModeNonEditable)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (textInteractionMode)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)_performGestureType:(int64_t)type state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)touchType
{
  y = touch.y;
  x = touch.x;
  v11 = location.y;
  v12 = location.x;
  v15 = @"UITextInteractionNameInteractiveRefinement";
  if (touchType == 3)
  {
    v15 = @"UITextInteractionNameLoupe";
  }

  v16 = @"UITextInteractionNameDoubleTap";
  v17 = @"UITextInteractionNameSingleTap";
  if (type != 1)
  {
    v17 = 0;
  }

  if (type != 2)
  {
    v16 = v17;
  }

  if ((type - 3) >= 2)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  root = [(UITextInteraction *)self root];
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  interactionAssistant = [WeakRetained interactionAssistant];
  externalInteractions = [interactionAssistant externalInteractions];

  if (externalInteractions == self)
  {
    v23 = objc_loadWeakRetained(&self->_textInput);
    interactionAssistant2 = [v23 interactionAssistant];
    interactions = [interactionAssistant2 interactions];

    v22 = interactions;
  }

  else
  {
    v22 = root;
  }

  v28 = v22;
  v26 = [v22 interactionWithGestureForName:v18];
  [v26 _performGestureType:type state:state location:touchType locationOfFirstTouch:v12 forTouchType:{v11, x, y}];
}

- (void)_createFeedbackIfNecessary
{
  if (!self->_feedbackBehaviour)
  {
    v4 = [[_UIStatesFeedbackGenerator alloc] initWithStyle:0];
    feedbackBehaviour = self->_feedbackBehaviour;
    self->_feedbackBehaviour = v4;
  }
}

- (void)_prepareFeedbackForGesture
{
  feedbackBehaviour = [(UITextInteraction *)self feedbackBehaviour];
  isActive = [feedbackBehaviour isActive];

  if ((isActive & 1) == 0)
  {
    feedbackBehaviour2 = [(UITextInteraction *)self feedbackBehaviour];
    [feedbackBehaviour2 activateWithCompletionBlock:0];
  }
}

- (void)_cleanUpFeedbackForGesture
{
  feedbackBehaviour = [(UITextInteraction *)self feedbackBehaviour];
  isActive = [feedbackBehaviour isActive];

  if (isActive)
  {
    feedbackBehaviour2 = [(UITextInteraction *)self feedbackBehaviour];
    [feedbackBehaviour2 deactivate];
  }
}

- (void)_playFeedbackForCursorMovement
{
  feedbackBehaviour = [(UITextInteraction *)self feedbackBehaviour];
  [feedbackBehaviour transitionToState:@"preview" ended:1];
}

- (void)_setLinkInteractionSession:(id)session
{
  sessionCopy = session;
  root = [(UITextInteraction *)self root];
  v6 = root;
  if (root)
  {
    v7 = root == self;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Setting link interaction session on a non root interaction!", buf, 2u);
    }

LABEL_17:
    [(UITextInteraction *)v6 _setLinkInteractionSession:sessionCopy];
    goto LABEL_10;
  }

  if (v8)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A2278) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Setting link interaction session on a non root interaction!", v11, 2u);
    }

    goto LABEL_17;
  }

LABEL_9:
  objc_setAssociatedObject(self, &_MergedGlobals_1325, sessionCopy, 1);
LABEL_10:
}

- (BOOL)_shouldObscureTextInput
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained displaySecureTextUsingPlainText] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = WeakRetained;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 isSecureTextEntry] & v3;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_textInputIsInteractive
{
  _textInput = [(UITextInteraction *)self _textInput];
  v4 = _textInput;
  if (_textInput)
  {
    if (self->_viewOverridesInteractivityState)
    {
      _isInteractiveDespiteResponderStatus = [_textInput _isInteractiveDespiteResponderStatus];
    }

    else
    {
      _isInteractiveDespiteResponderStatus = [_textInput isFirstResponder];
    }

    v6 = _isInteractiveDespiteResponderStatus;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_textInputLivesInKeyWindow
{
  _textInput = [(UITextInteraction *)self _textInput];
  _responderWindow = [_textInput _responderWindow];

  if ([_responderWindow _isTextEffectsWindow])
  {
    _isApplicationKeyWindow = 1;
  }

  else
  {
    _isApplicationKeyWindow = [_responderWindow _isApplicationKeyWindow];
  }

  return _isApplicationKeyWindow;
}

- (BOOL)containerChangesSelectionOnOneFingerTap
{
  _textInput = [(UITextInteraction *)self _textInput];
  v3 = (objc_opt_respondsToSelector() & 1) == 0 || ([_textInput isEditing] & 1) != 0 || !objc_msgSend(_textInput, "hasText") || (objc_msgSend(_textInput, "clearingBehavior") - 4) < 0xFFFFFFFFFFFFFFFELL;

  return v3;
}

- (void)disableClearsOnInsertion
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_view);
    [v5 setClearingBehavior:0];
  }
}

- (BOOL)selection:(id)selection containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v41 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  selectedRange = [selectionCopy selectedRange];
  _isRanged = [selectedRange _isRanged];

  if (!_isRanged)
  {
LABEL_17:
    v22 = 0;
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    selectionRects = [selectionCopy selectionRects];
    v24 = [selectionRects countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(selectionRects);
          }

          [*(*(&v36 + 1) + 8 * i) rect];
          v32 = (44.0 - v30) * 0.5;
          v33 = -v32;
          if (v32 < 0.0)
          {
            v33 = -0.0;
          }

          v34 = -((44.0 - v31) * 0.5);
          if ((44.0 - v31) * 0.5 < 0.0)
          {
            v34 = -0.0;
          }

          v45 = CGRectInset(*&v28, v33, v34);
          v43.x = x;
          v43.y = y;
          if (CGRectContainsPoint(v45, v43))
          {

            v22 = 1;
            goto LABEL_19;
          }
        }

        v25 = [selectionRects countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_17;
  }

  v12 = objc_loadWeakRetained(&self->_view);
  selectedRange2 = [selectionCopy selectedRange];
  [v12 _boundingRectForRange:selectedRange2];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v44.origin.x = v15;
  v44.origin.y = v17;
  v44.size.width = v19;
  v44.size.height = v21;
  v42.x = x;
  v42.y = y;
  v22 = CGRectContainsPoint(v44, v42);
LABEL_19:

  return v22;
}

- (BOOL)currentSelectionContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  activeSelection = [assistantDelegate activeSelection];
  LOBYTE(selfCopy) = [(UITextInteraction *)selfCopy selection:activeSelection containsPoint:x, y];

  return selfCopy;
}

- (id)rangeWithTextAlternatives:(id *)alternatives atPosition:(id)position
{
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained rangeWithTextAlternatives:alternatives atPosition:positionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)distanceBetweenPoint:(CGPoint)point andRects:(id)rects
{
  y = point.y;
  x = point.x;
  v23 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [rectsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = 3.40282347e38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(rectsCopy);
        }

        [*(*(&v18 + 1) + 8 * i) rect];
        UIDistanceBetweenPointAndRect(x, y, v12, v13, v14, v15);
        if (v10 > v16)
        {
          v10 = v16;
        }
      }

      v8 = [rectsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 3.40282347e38;
  }

  return v10;
}

- (BOOL)shouldHandleFormGestureAtLocation:(CGPoint)location
{
  locationCopy = location;
  if (!WebKitFramework)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 1;
  }

  v6 = objc_loadWeakRetained(&self->_view);
  formElement = [v6 formElement];
  if (formElement)
  {
    WebThreadLock();
    v8 = [v6 approximateNodeAtViewportLocation:&locationCopy];
    v9 = [formElement isSameNode:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)defaultTripleTapRecognizerWithAction:(SEL)action
{
  v3 = [[UITextTapRecognizer alloc] initWithTarget:self action:action];
  [(UITapGestureRecognizer *)v3 setAllowableMovement:60.0];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:3];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];

  return v3;
}

- (id)defaultDoubleTapRecognizerWithAction:(SEL)action
{
  v3 = [[UITextTapRecognizer alloc] initWithTarget:self action:action];
  [(UITapGestureRecognizer *)v3 setAllowableMovement:60.0];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];
  [(UITapGestureRecognizer *)v3 _setDelaysRecognitionForGreaterTapCounts:1];

  return v3;
}

- (id)defaultTapRecognizerWithAction:(SEL)action
{
  v3 = [[UITextTapRecognizer alloc] initWithTarget:self action:action];
  [(UITapGestureRecognizer *)v3 setAllowableMovement:10.0];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];

  return v3;
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  [beginCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(UITextInteraction *)self shouldHandleFormGestureAtLocation:v7, v9];
  return self;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(UITextInteraction *)self delegate];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  if (objc_opt_respondsToSelector())
  {
    view = [beginCopy view];
    [beginCopy locationInView:view];
    v9 = v8;
    v11 = v10;

    if (([delegate interactionShouldBegin:self atPoint:{v9, v11}] & 1) == 0)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate interactionShouldBegin:self])
  {
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![assistantDelegate overrideGestureRecognizerShouldBegin:beginCopy] || !-[UITextInteraction interaction_gestureRecognizerShouldBegin:](self, "interaction_gestureRecognizerShouldBegin:", beginCopy))
  {
    goto LABEL_10;
  }

  [(UITextInteraction *)self updateTextInputSourceForScribbleGesture:beginCopy];
  v12 = 1;
LABEL_11:

  return v12;
}

- (void)updateTextInputSourceForScribbleGesture:(id)gesture
{
  v41 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  if (objc_opt_respondsToSelector())
  {
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    touchesForTap = [gestureCopy touchesForTap];
    v6 = [touchesForTap countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v6)
    {
      v7 = *v31;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(touchesForTap);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        if ([v9 type] == 2)
        {
          goto LABEL_20;
        }

        if (v6 == ++v8)
        {
          v6 = [touchesForTap countByEnumeratingWithState:&v30 objects:v40 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

LABEL_19:

    v13 = 0;
LABEL_27:
    v23 = +[UIKeyboardImpl sharedInstance];
    [v23 updateTextInputKeyboardSource];
    goto LABEL_28;
  }

  v28 = 0uLL;
  v29 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  touchesForTap = [gestureCopy _allActiveTouches];
  v10 = [touchesForTap countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *v27;
LABEL_13:
  v12 = 0;
  while (1)
  {
    if (*v27 != v11)
    {
      objc_enumerationMutation(touchesForTap);
    }

    v9 = *(*(&v26 + 1) + 8 * v12);
    if ([v9 type] == 2)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [touchesForTap countByEnumeratingWithState:&v26 objects:v39 count:16];
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  v13 = v9;

  if (!v13)
  {
    goto LABEL_27;
  }

  view = [gestureCopy view];
  [v13 locationInView:view];
  v16 = v15;
  v18 = v17;

  view2 = [(UITextInteraction *)self view];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v20 = off_1ED4A2280;
  v38 = off_1ED4A2280;
  if (!off_1ED4A2280)
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __getPKScribbleInteractionInViewSymbolLoc_block_invoke;
    v34[3] = &unk_1E70F2F20;
    v34[4] = &v35;
    __getPKScribbleInteractionInViewSymbolLoc_block_invoke(v34);
    v20 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v20)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<PKScribbleInteractionWrapper> getPKScribbleInteractionInView(UIView *__strong)"];
    [currentHandler handleFailureInFunction:v25 file:@"UITextInteraction.m" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v21 = v20(view2);

  if (v21)
  {
    v22 = [v21 shouldBeginAtLocation:{v16, v18}];

    if (!v22)
    {
      goto LABEL_27;
    }
  }

  v23 = +[UIKeyboardImpl sharedInstance];
  [v23 _updateTextInputPencilSource];
LABEL_28:
}

+ (double)_maximumBeamSnappingLength
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  beamSettings = [v2 beamSettings];

  [beamSettings maxSnapLength];
  v5 = v4;

  return v5;
}

- (void)_beginSelectionChange
{
  view = [(UITextInteraction *)self view];
  if (([view _conformsToProtocolUIAsyncTextInputClient] & 1) == 0)
  {
    view2 = [(UITextInteraction *)self view];
    _conformsToProtocolBETextInput = [view2 _conformsToProtocolBETextInput];

    if (_conformsToProtocolBETextInput)
    {
      return;
    }

    view = [(UITextInteraction *)self view];
    [view beginSelectionChange];
  }
}

- (void)_endSelectionChange
{
  view = [(UITextInteraction *)self view];
  if (([view _conformsToProtocolUIAsyncTextInputClient] & 1) == 0)
  {
    view2 = [(UITextInteraction *)self view];
    _conformsToProtocolBETextInput = [view2 _conformsToProtocolBETextInput];

    if (_conformsToProtocolBETextInput)
    {
      return;
    }

    view = [(UITextInteraction *)self view];
    [view endSelectionChange];
  }
}

- (BOOL)interaction_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  view = [(UITextInteraction *)self view];
  view2 = [touchCopy view];

  if (WebKitFramework && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (view2 == view)
    {
      v9 = 1;
    }

    else
    {
      v9 = [view _hasSubviewContainingWebContent:view2];
    }
  }

  else
  {
    v10 = view;
    root = [(UITextInteraction *)self root];
    textInput = [root textInput];

    textInputView = v10;
    if (textInput)
    {
      root2 = [(UITextInteraction *)self root];
      textInput2 = [root2 textInput];
      textInputView = [textInput2 textInputView];
    }

    if ([v10 isEqual:view2] & 1) != 0 || (objc_msgSend(textInputView, "isDescendantOfView:", view2))
    {
      v9 = 1;
    }

    else
    {
      _legacySelectionView = [assistantDelegate _legacySelectionView];
      rangeView = [_legacySelectionView rangeView];
      if (rangeView == view2)
      {
        v9 = 1;
      }

      else
      {
        _selectionViewManager = [assistantDelegate _selectionViewManager];
        if ([_selectionViewManager _isManagedSelectionSubview:view2])
        {
          v9 = 1;
        }

        else if (_UITextViewAllowSelectionContainerInTextLayoutCanvas() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          selectionContainerView = [v10 selectionContainerView];
          v9 = selectionContainerView == view2;
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  _isPointerTouch = [touchCopy _isPointerTouch];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [assistantDelegate setAutomaticSelectionCommandsSuppressedForPointerTouchType:_isPointerTouch];

  assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
  LODWORD(assistantDelegate) = [assistantDelegate2 supportsIndirectInteractions];

  if (assistantDelegate && ![(UITextInteraction *)self _shouldAllowEnforcedTouchTypeForTouch:touchCopy forGestureRecognizer:recognizerCopy])
  {
    v13 = 0;
  }

  else
  {
    assistantDelegate3 = [(UITextInteraction *)self assistantDelegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [assistantDelegate3 overrideGestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
    }

    else
    {
      v12 = [(UITextInteraction *)self interaction_gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
    }

    v13 = v12;
  }

  return v13;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  v6 = [gestureRecognizer _pairedGestureIdentifiersAndCreate:0];
  if (v6)
  {
    v7 = [recognizerCopy _pairedGestureIdentifiersAndCreate:0];
    v8 = [v7 intersectsSet:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_presentTextEditMenuWithOverrideMenu:(id)menu
{
  menuCopy = menu;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  [_editMenuAssistant _presentEditMenuWithPreferredDirection:0 overrideMenu:menuCopy];
}

@end