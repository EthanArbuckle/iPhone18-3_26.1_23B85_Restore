@interface UITextInteraction
+ (UITextInteraction)textInteractionForMode:(UITextInteractionMode)mode;
+ (double)_maximumBeamSnappingLength;
+ (id)textInteractionsForSet:(int64_t)a3;
- (BOOL)_shouldObscureTextInput;
- (BOOL)_textInputIsInteractive;
- (BOOL)_textInputLivesInKeyWindow;
- (BOOL)containerChangesSelectionOnOneFingerTap;
- (BOOL)currentSelectionContainsPoint:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)inGesture;
- (BOOL)interaction_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)selection:(id)a3 containsPoint:(CGPoint)a4;
- (BOOL)shouldAllowWithTouchTypes:(id)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5;
- (BOOL)shouldHandleFormGestureAtLocation:(CGPoint)a3;
- (NSArray)gesturesForFailureRequirements;
- (UIResponder)textInput;
- (UITextCursorAssertionController)_assertionController;
- (UITextInteraction)init;
- (UITextInteraction)interactionWithClass:(Class)a3;
- (UITextInteraction)interactionWithGestureForName:(id)a3;
- (UITextInteraction)parent;
- (UITextInteraction)root;
- (UITextInteractionMode)textInteractionMode;
- (UITextInteraction_AssistantDelegate)assistantDelegate;
- (UIView)gestureRecognizerHostView;
- (UIView)view;
- (double)distanceBetweenPoint:(CGPoint)a3 andRects:(id)a4;
- (id)_textInput;
- (id)_transientState;
- (id)defaultDoubleTapRecognizerWithAction:(SEL)a3;
- (id)defaultTapRecognizerWithAction:(SEL)a3;
- (id)defaultTripleTapRecognizerWithAction:(SEL)a3;
- (id)delegate;
- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4;
- (id)recognizerForName:(id)a3;
- (int64_t)textInteractionSet;
- (void)_applyTransientState:(id)a3;
- (void)_beginSelectionChange;
- (void)_callDelegateWillMoveTextRangeExtentAtPoint:(CGPoint)a3;
- (void)_cancelRecognizerWithName:(id)a3;
- (void)_cleanUpFeedbackForGesture;
- (void)_createFeedbackIfNecessary;
- (void)_endSelectionChange;
- (void)_performGestureType:(int64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 forTouchType:(int64_t)a7;
- (void)_playFeedbackForCursorMovement;
- (void)_prepareFeedbackForGesture;
- (void)_presentTextEditMenuWithOverrideMenu:(id)a3;
- (void)_setLinkInteractionSession:(id)a3;
- (void)addChild:(id)a3;
- (void)addGestureRecognizer:(id)a3 withName:(id)a4;
- (void)addIndirectChild:(id)a3;
- (void)cancelLinkInteractionSession;
- (void)didMoveToView:(id)a3;
- (void)disableClearsOnInsertion;
- (void)finishSetup;
- (void)removeChild:(id)a3;
- (void)removeGestureRecognizerWithName:(id)a3;
- (void)setInGesture:(BOOL)a3;
- (void)updateTextInputSourceForScribbleGesture:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UITextInteraction

- (UITextInteraction)root
{
  v2 = self;
  p_parent = &v2->_parent;
  WeakRetained = objc_loadWeakRetained(&v2->_parent);

  if (WeakRetained)
  {
    do
    {
      p_isa = objc_loadWeakRetained(p_parent);

      p_parent = p_isa + 1;
      v6 = objc_loadWeakRetained(p_isa + 1);

      v2 = p_isa;
    }

    while (v6);
  }

  else
  {
    p_isa = &v2->super.isa;
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
    v4 = [MEMORY[0x1E695DF70] array];
    children = v3->_children;
    v3->_children = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    gestures = v3->_gestures;
    v3->_gestures = v6;

    v8 = [MEMORY[0x1E695DF90] dictionary];
    gestureMap = v3->_gestureMap;
    v3->_gestureMap = v8;
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
  v3 = [(UITextInteraction *)self root];
  v4 = v3;
  if (!v3 || v3 == self)
  {
    [(UITextInteraction *)self _setLinkInteractionSession:0];
  }

  else
  {
    [(UITextInteraction *)v3 cancelLinkInteractionSession];
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
    v7 = [v6 assistantDelegate];
LABEL_7:
    v4 = v7;

    goto LABEL_8;
  }

  v8 = objc_loadWeakRetained(&self->_textInput);

  if (v8)
  {
    v6 = objc_loadWeakRetained(&self->_textInput);
    v7 = [v6 interactionAssistant];
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
  v3 = [(UITextInteraction *)self root];
  v4 = [v3 textInput];

  if (!v4)
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
        v4 = objc_loadWeakRetained(&self->_view);
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

  return v4;
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

          v9 = [*(*(&v13 + 1) + 8 * i) _transientState];
          if (v9)
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            [v3 setObject:v9 forKey:v11];
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
    v5 = WeakRetained;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_parent);
    v5 = [v6 delegate];
  }

  return v5;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: cluster may not be nil", self}];
    v4 = 0;
  }

  v5 = [v4 parent];

  if (v5)
  {
    v6 = [v7 parent];
    [v6 removeChild:v7];
  }

  objc_storeWeak(v7 + 1, self);
  [(NSMutableArray *)self->_children addObject:v7];
}

- (void)addIndirectChild:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: cluster may not be nil", self}];
    v4 = 0;
  }

  objc_storeWeak(v4 + 1, self);
}

- (void)removeChild:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695D940];
  v10 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: cluster may not be nil", self}];
    v4 = 0;
  }

  v6 = [v4 parent];

  if (v6 != self)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *v5;
    v9 = [v10 parent];
    [v7 raise:v8 format:{@"%@: cluster has a different parent (%@)", self, v9}];
  }

  objc_storeWeak(v10 + 1, 0);
  [(NSMutableArray *)self->_children removeObject:v10];
}

- (UITextInteraction)interactionWithGestureForName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_gestureMap objectForKey:v4];
  if (v5)
  {
    v6 = self;
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

          v12 = [*(*(&v14 + 1) + 8 * i) interactionWithGestureForName:{v4, v14}];
          if (v12)
          {
            v6 = v12;

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

    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (UITextInteraction)interactionWithClass:(Class)a3
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

        v10 = [v9 interactionWithClass:{a3, v13}];
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

- (void)_applyTransientState:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v13 = [v4 objectForKey:{v12, v14}];

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
  v2 = [(UITextInteraction *)self assistantDelegate];
  v3 = [v2 _assertionController];

  return v3;
}

- (void)addGestureRecognizer:(id)a3 withName:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 setName:v6];
  if ([(UITextInteraction *)self doesControlDelegate])
  {
    [v10 setDelegate:self];
  }

  v7 = [v10 _pairedGestureIdentifiers];
  [v7 addObject:v6];

  [(NSMutableArray *)self->_gestures addObject:v10];
  [(NSMutableDictionary *)self->_gestureMap setObject:v10 forKey:v6];

  v8 = [(UITextInteraction *)self gestureRecognizerHostView];
  v9 = v8;
  if (v8)
  {
    [(UIView *)v8 _addGestureRecognizer:v10 atEnd:0];
  }
}

- (void)removeGestureRecognizerWithName:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_gestureMap objectForKey:?];
  if ([(NSMutableArray *)self->_gestures containsObject:v4])
  {
    v5 = [(UITextInteraction *)self gestureRecognizerHostView];
    v6 = v5;
    if (v5)
    {
      [v5 removeGestureRecognizer:v4];
    }

    if ([(UITextInteraction *)self doesControlDelegate])
    {
      [v4 setDelegate:0];
    }

    [(NSMutableArray *)self->_gestures removeObject:v4];
    [(NSMutableDictionary *)self->_gestureMap removeObjectForKey:v7];
  }
}

- (id)recognizerForName:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteraction *)self interactionWithGestureForName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [*(v5 + 32) objectForKey:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_cancelRecognizerWithName:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(UITextInteraction *)self root];
    v6 = [v5 recognizerForName:v4];

    if (v6)
    {
      v7 = [UIApp _gestureEnvironment];
      v9[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      [(UIGestureEnvironment *)v7 _cancelGestureRecognizers:v8];
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

  v4 = [(UITextInteraction *)self root];
  v5 = [v4 textInteractionMode];

  return v5;
}

- (void)setInGesture:(BOOL)a3
{
  v3 = a3;
  self->_inGesture = a3;
  v5 = [(UITextInteraction *)self delegate];
  v6 = v5;
  if (v5)
  {
    v10 = v5;
    if (v3)
    {
      v7 = objc_opt_respondsToSelector();
      v6 = v10;
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      v8 = [(UITextInteraction *)self root];
      [v10 interactionWillBegin:v8];
    }

    else
    {
      v9 = objc_opt_respondsToSelector();
      v6 = v10;
      if ((v9 & 1) == 0)
      {
        goto LABEL_8;
      }

      v8 = [(UITextInteraction *)self root];
      [v10 interactionDidEnd:v8];
    }

    v6 = v10;
  }

LABEL_8:
}

- (BOOL)shouldAllowWithTouchTypes:(id)a3 atPoint:(CGPoint)a4 toBegin:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
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

        if (![*(*(&v17 + 1) + 8 * i) shouldAllowWithTouchTypes:v9 atPoint:v5 toBegin:{x, y, v17}])
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

- (void)_callDelegateWillMoveTextRangeExtentAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UITextInteraction *)self delegate];
    [v8 _willMoveTextRangeExtentAtPoint:{x, y}];
  }
}

- (void)willMoveToView:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  [(UITextInteraction *)self cancelLinkInteractionSession];
  if (!a3)
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
      v23 = [v22 interactionAssistant];
      v24 = [v23 externalInteractions];

      if (v24 == self)
      {
        v25 = objc_loadWeakRetained(&self->_textInput);
        v26 = [v25 inputDelegate];
        v27 = [(UITextInteraction *)self interactionInputDelegate];

        if (v26 == v27)
        {
          v28 = [(UITextInteraction *)self interactionInputDelegate];
          [v28 setRootInteraction:0];

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

- (void)didMoveToView:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  v5 = objc_storeWeak(&self->_view, v4);

  v6 = v5;
  if (!v4)
  {
    goto LABEL_25;
  }

  v7 = [(UITextInteraction *)self gestureRecognizerHostView];
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

        [(UIView *)v7 _addGestureRecognizer:0 atEnd:?];
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
    v33 = [v32 markedTextOverlay];

    if (v31 == v33)
    {
      goto LABEL_20;
    }

    v34 = objc_loadWeakRetained(&self->_textInput);
    v35 = [v34 interactionAssistant];

    if (!v35)
    {
      v36 = objc_loadWeakRetained(&self->_textInput);
      [v36 __createInteractionAssistantIfNecessaryWithMode:self->_textInteractionMode];
    }

    v37 = objc_loadWeakRetained(&self->_textInput);
    [v37 __prepareInteractionAssistantIfNecessary];

    v38 = objc_loadWeakRetained(&self->_textInput);
    v39 = [v38 interactionAssistant];
    [v39 setExternalInteractions:self];

    v40 = objc_alloc_init(UITextInteractionInputDelegate);
    [(UITextInteraction *)self setInteractionInputDelegate:v40];

    v41 = [(UITextInteraction *)self interactionInputDelegate];
    [v41 setRootInteraction:self];

    v21 = objc_loadWeakRetained(&self->_textInput);
    v42 = [(UITextInteraction *)self interactionInputDelegate];
    [v21 setInputDelegate:v42];
  }

LABEL_20:
  v22 = objc_loadWeakRetained(&self->_delegate);
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = objc_loadWeakRetained(&self->_delegate);
    v25 = [v24 interactionShouldSuppressSystemUI:self];

    v26 = [(UITextInteraction *)self assistantDelegate];
    [v26 setSuppressSystemUI:v25];
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
  v4 = [WeakRetained interactionAssistant];
  v5 = [v4 externalInteractions];

  if (v5 == self)
  {
    v7 = objc_loadWeakRetained(&self->_textInput);
    v13 = [(NSMutableArray *)v7 interactionAssistant];
    v14 = [v13 interactions];
    v6 = [v14 gesturesForFailureRequirements];
  }

  else
  {
    v6 = [(NSMutableArray *)self->_gestures mutableCopy];
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

          v12 = [*(*(&v16 + 1) + 8 * i) gesturesForFailureRequirements];
          [v6 addObjectsFromArray:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

+ (UITextInteraction)textInteractionForMode:(UITextInteractionMode)mode
{
  v4 = objc_alloc_init(UITextInteraction);
  v4->_textInteractionMode = mode;

  return v4;
}

+ (id)textInteractionsForSet:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return [a1 textInteractionForMode:v4];
}

- (int64_t)textInteractionSet
{
  v2 = [(UITextInteraction *)self textInteractionMode];
  if (v2 == UITextInteractionModeNonEditable)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)_performGestureType:(int64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 forTouchType:(int64_t)a7
{
  y = a6.y;
  x = a6.x;
  v11 = a5.y;
  v12 = a5.x;
  v15 = @"UITextInteractionNameInteractiveRefinement";
  if (a7 == 3)
  {
    v15 = @"UITextInteractionNameLoupe";
  }

  v16 = @"UITextInteractionNameDoubleTap";
  v17 = @"UITextInteractionNameSingleTap";
  if (a3 != 1)
  {
    v17 = 0;
  }

  if (a3 != 2)
  {
    v16 = v17;
  }

  if ((a3 - 3) >= 2)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v27 = [(UITextInteraction *)self root];
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v20 = [WeakRetained interactionAssistant];
  v21 = [v20 externalInteractions];

  if (v21 == self)
  {
    v23 = objc_loadWeakRetained(&self->_textInput);
    v24 = [v23 interactionAssistant];
    v25 = [v24 interactions];

    v22 = v25;
  }

  else
  {
    v22 = v27;
  }

  v28 = v22;
  v26 = [v22 interactionWithGestureForName:v18];
  [v26 _performGestureType:a3 state:a4 location:a7 locationOfFirstTouch:v12 forTouchType:{v11, x, y}];
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
  v3 = [(UITextInteraction *)self feedbackBehaviour];
  v4 = [v3 isActive];

  if ((v4 & 1) == 0)
  {
    v5 = [(UITextInteraction *)self feedbackBehaviour];
    [v5 activateWithCompletionBlock:0];
  }
}

- (void)_cleanUpFeedbackForGesture
{
  v3 = [(UITextInteraction *)self feedbackBehaviour];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = [(UITextInteraction *)self feedbackBehaviour];
    [v5 deactivate];
  }
}

- (void)_playFeedbackForCursorMovement
{
  v2 = [(UITextInteraction *)self feedbackBehaviour];
  [v2 transitionToState:@"preview" ended:1];
}

- (void)_setLinkInteractionSession:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteraction *)self root];
  v6 = v5;
  if (v5)
  {
    v7 = v5 == self;
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
    [(UITextInteraction *)v6 _setLinkInteractionSession:v4];
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
  objc_setAssociatedObject(self, &_MergedGlobals_1325, v4, 1);
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
  v3 = [(UITextInteraction *)self _textInput];
  v4 = v3;
  if (v3)
  {
    if (self->_viewOverridesInteractivityState)
    {
      v5 = [v3 _isInteractiveDespiteResponderStatus];
    }

    else
    {
      v5 = [v3 isFirstResponder];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_textInputLivesInKeyWindow
{
  v2 = [(UITextInteraction *)self _textInput];
  v3 = [v2 _responderWindow];

  if ([v3 _isTextEffectsWindow])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 _isApplicationKeyWindow];
  }

  return v4;
}

- (BOOL)containerChangesSelectionOnOneFingerTap
{
  v2 = [(UITextInteraction *)self _textInput];
  v3 = (objc_opt_respondsToSelector() & 1) == 0 || ([v2 isEditing] & 1) != 0 || !objc_msgSend(v2, "hasText") || (objc_msgSend(v2, "clearingBehavior") - 4) < 0xFFFFFFFFFFFFFFFELL;

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

- (BOOL)selection:(id)a3 containsPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 selectedRange];
  v9 = [v8 _isRanged];

  if (!v9)
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
    v23 = [v7 selectionRects];
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(v23);
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

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
  v13 = [v7 selectedRange];
  [v12 _boundingRectForRange:v13];
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

- (BOOL)currentSelectionContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(UITextInteraction *)self assistantDelegate];
  v7 = [v6 activeSelection];
  LOBYTE(v5) = [(UITextInteraction *)v5 selection:v7 containsPoint:x, y];

  return v5;
}

- (id)rangeWithTextAlternatives:(id *)a3 atPosition:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained rangeWithTextAlternatives:a3 atPosition:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)distanceBetweenPoint:(CGPoint)a3 andRects:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v18 + 1) + 8 * i) rect];
        UIDistanceBetweenPointAndRect(x, y, v12, v13, v14, v15);
        if (v10 > v16)
        {
          v10 = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 3.40282347e38;
  }

  return v10;
}

- (BOOL)shouldHandleFormGestureAtLocation:(CGPoint)a3
{
  v11 = a3;
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
  v7 = [v6 formElement];
  if (v7)
  {
    WebThreadLock();
    v8 = [v6 approximateNodeAtViewportLocation:&v11];
    v9 = [v7 isSameNode:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)defaultTripleTapRecognizerWithAction:(SEL)a3
{
  v3 = [[UITextTapRecognizer alloc] initWithTarget:self action:a3];
  [(UITapGestureRecognizer *)v3 setAllowableMovement:60.0];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:3];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];

  return v3;
}

- (id)defaultDoubleTapRecognizerWithAction:(SEL)a3
{
  v3 = [[UITextTapRecognizer alloc] initWithTarget:self action:a3];
  [(UITapGestureRecognizer *)v3 setAllowableMovement:60.0];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];
  [(UITapGestureRecognizer *)v3 _setDelaysRecognitionForGreaterTapCounts:1];

  return v3;
}

- (id)defaultTapRecognizerWithAction:(SEL)a3
{
  v3 = [[UITextTapRecognizer alloc] initWithTarget:self action:a3];
  [(UITapGestureRecognizer *)v3 setAllowableMovement:10.0];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];

  return v3;
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  LOBYTE(self) = [(UITextInteraction *)self shouldHandleFormGestureAtLocation:v7, v9];
  return self;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteraction *)self delegate];
  v6 = [(UITextInteraction *)self assistantDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 view];
    [v4 locationInView:v7];
    v9 = v8;
    v11 = v10;

    if (([v5 interactionShouldBegin:self atPoint:{v9, v11}] & 1) == 0)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 interactionShouldBegin:self])
  {
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 overrideGestureRecognizerShouldBegin:v4] || !-[UITextInteraction interaction_gestureRecognizerShouldBegin:](self, "interaction_gestureRecognizerShouldBegin:", v4))
  {
    goto LABEL_10;
  }

  [(UITextInteraction *)self updateTextInputSourceForScribbleGesture:v4];
  v12 = 1;
LABEL_11:

  return v12;
}

- (void)updateTextInputSourceForScribbleGesture:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v5 = [v4 touchesForTap];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v6)
    {
      v7 = *v31;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        if ([v9 type] == 2)
        {
          goto LABEL_20;
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v30 objects:v40 count:16];
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
  v5 = [v4 _allActiveTouches];
  v10 = [v5 countByEnumeratingWithState:&v26 objects:v39 count:16];
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
      objc_enumerationMutation(v5);
    }

    v9 = *(*(&v26 + 1) + 8 * v12);
    if ([v9 type] == 2)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [v5 countByEnumeratingWithState:&v26 objects:v39 count:16];
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

  v14 = [v4 view];
  [v13 locationInView:v14];
  v16 = v15;
  v18 = v17;

  v19 = [(UITextInteraction *)self view];
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
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<PKScribbleInteractionWrapper> getPKScribbleInteractionInView(UIView *__strong)"];
    [v24 handleFailureInFunction:v25 file:@"UITextInteraction.m" lineNumber:59 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v21 = v20(v19);

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
  v3 = [v2 beamSettings];

  [v3 maxSnapLength];
  v5 = v4;

  return v5;
}

- (void)_beginSelectionChange
{
  v5 = [(UITextInteraction *)self view];
  if (([v5 _conformsToProtocolUIAsyncTextInputClient] & 1) == 0)
  {
    v3 = [(UITextInteraction *)self view];
    v4 = [v3 _conformsToProtocolBETextInput];

    if (v4)
    {
      return;
    }

    v5 = [(UITextInteraction *)self view];
    [v5 beginSelectionChange];
  }
}

- (void)_endSelectionChange
{
  v5 = [(UITextInteraction *)self view];
  if (([v5 _conformsToProtocolUIAsyncTextInputClient] & 1) == 0)
  {
    v3 = [(UITextInteraction *)self view];
    v4 = [v3 _conformsToProtocolBETextInput];

    if (v4)
    {
      return;
    }

    v5 = [(UITextInteraction *)self view];
    [v5 endSelectionChange];
  }
}

- (BOOL)interaction_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(UITextInteraction *)self assistantDelegate];
  v7 = [(UITextInteraction *)self view];
  v8 = [v5 view];

  if (WebKitFramework && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (v8 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 _hasSubviewContainingWebContent:v8];
    }
  }

  else
  {
    v10 = v7;
    v11 = [(UITextInteraction *)self root];
    v12 = [v11 textInput];

    v13 = v10;
    if (v12)
    {
      v14 = [(UITextInteraction *)self root];
      v15 = [v14 textInput];
      v13 = [v15 textInputView];
    }

    if ([v10 isEqual:v8] & 1) != 0 || (objc_msgSend(v13, "isDescendantOfView:", v8))
    {
      v9 = 1;
    }

    else
    {
      v16 = [v6 _legacySelectionView];
      v17 = [v16 rangeView];
      if (v17 == v8)
      {
        v9 = 1;
      }

      else
      {
        v18 = [v6 _selectionViewManager];
        if ([v18 _isManagedSelectionSubview:v8])
        {
          v9 = 1;
        }

        else if (_UITextViewAllowSelectionContainerInTextLayoutCanvas() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v19 = [v10 selectionContainerView];
          v9 = v19 == v8;
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _isPointerTouch];
  v9 = [(UITextInteraction *)self assistantDelegate];
  [v9 setAutomaticSelectionCommandsSuppressedForPointerTouchType:v8];

  v10 = [(UITextInteraction *)self assistantDelegate];
  LODWORD(v9) = [v10 supportsIndirectInteractions];

  if (v9 && ![(UITextInteraction *)self _shouldAllowEnforcedTouchTypeForTouch:v7 forGestureRecognizer:v6])
  {
    v13 = 0;
  }

  else
  {
    v11 = [(UITextInteraction *)self assistantDelegate];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 overrideGestureRecognizer:v6 shouldReceiveTouch:v7];
    }

    else
    {
      v12 = [(UITextInteraction *)self interaction_gestureRecognizer:v6 shouldReceiveTouch:v7];
    }

    v13 = v12;
  }

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [a4 _pairedGestureIdentifiersAndCreate:0];
  if (v6)
  {
    v7 = [v5 _pairedGestureIdentifiersAndCreate:0];
    v8 = [v7 intersectsSet:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_presentTextEditMenuWithOverrideMenu:(id)a3
{
  v4 = a3;
  v6 = [(UITextInteraction *)self assistantDelegate];
  v5 = [v6 _editMenuAssistant];
  [v5 _presentEditMenuWithPreferredDirection:0 overrideMenu:v4];
}

@end