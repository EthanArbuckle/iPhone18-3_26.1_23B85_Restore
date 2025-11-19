@interface _UIFeedbackGeneratorGestureRecognizer
+ (id)gestureRecognizerForView:(void *)a3 feedbackGenerator:;
- (_UIFeedbackGeneratorGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (uint64_t)hasDeviceInputForLocation:(uint64_t *)a3 type:(double)a4 senderID:(double)a5;
- (void)__completeIfNecessary;
- (void)__moveEventToCompleted:(id)a3;
- (void)__removeCompletedInteractionsAfterDelay:(id)a3;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)_stopTrackingDragEvent:(uint64_t)a1;
- (void)_trackDragEvent:(uint64_t)a1;
- (void)_transformChangedWithEvent:(id)a3;
- (void)cleanupGestureRecognizerForFeedbackGenerator:(id *)a1;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIFeedbackGeneratorGestureRecognizer

- (_UIFeedbackGeneratorGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v12.receiver = self;
  v12.super_class = _UIFeedbackGeneratorGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v12 initWithTarget:a3 action:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    trackedTouches = v4->_trackedTouches;
    v4->_trackedTouches = v5;

    v7 = objc_opt_new();
    completedInteractions = v4->_completedInteractions;
    v4->_completedInteractions = v7;

    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:514];
    feedbackGenerators = v4->_feedbackGenerators;
    v4->_feedbackGenerators = v9;

    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v4 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:&unk_1EFE2E110];
    [(UIGestureRecognizer *)v4 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v4 setRequiresExclusiveTouchType:0];
    *&v4->super._gestureFlags |= 0x200000000000uLL;
  }

  return v4;
}

+ (id)gestureRecognizerForView:(void *)a3 feedbackGenerator:
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 gestureRecognizers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          [v12[38] addObject:v5];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = objc_opt_new();
  [v4 addGestureRecognizer:v12];
  [v12[38] addObject:v5];
LABEL_11:

  return v12;
}

- (void)cleanupGestureRecognizerForFeedbackGenerator:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    [a1[38] removeObject:v3];
    v4 = [a1[38] count];
    v3 = v6;
    if (!v4)
    {
      v5 = [a1 view];
      [v5 removeGestureRecognizer:a1];

      v3 = v6;
    }
  }
}

- (uint64_t)hasDeviceInputForLocation:(uint64_t *)a3 type:(double)a4 senderID:(double)a5
{
  v56 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = result;
    v10 = [*(result + 280) mutableCopy];
    [v10 unionSet:*(v9 + 312)];
    if (*(v9 + 328) == 1)
    {
      [v10 unionSet:*(v9 + 320)];
    }

    if (*(v9 + 288))
    {
      [v10 addObject:?];
    }

    if (*(v9 + 296))
    {
      [v10 addObject:?];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v49;
      v16 = 1.79769313e308;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          v19 = [v9 view];
          [v18 locationInView:v19];
          v21 = v20;
          v23 = v22;

          v24 = sqrt((a4 - v21) * (a4 - v21) + (a5 - v23) * (a5 - v23));
          if (v24 < v16)
          {
            v25 = v18;

            v14 = v25;
            v16 = v24;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v26 = *(__UILogGetCategoryCachedImpl("FeedbackGesture", &_MergedGlobals_13_9) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
        v28 = [v9 view];
        v29 = MEMORY[0x1E696AEC0];
        ClassName = object_getClassName(v28);
        v31 = [v29 stringWithFormat:@"<%s: %p>", ClassName, v28, v48];
        *buf = 138412290;
        v54 = v31;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEFAULT, "finding interaction on view (%@)", buf, 0xCu);
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (v14)
      {
        if (a2)
        {
          *a2 = 1;
        }

        if (a3)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v44 = 8;
          if (isKindOfClass)
          {
            v44 = 88;
          }

          *a3 = *&v14[v44];
        }

        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v45 = *(__UILogGetCategoryCachedImpl("FeedbackGesture", &qword_1ED4990D8) + 8);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_DEFAULT, "closest interaction is trackpad event", buf, 2u);
          }
        }

        v52 = 1;
      }

      else
      {
        if ((_UIFeedbackLoggingDisabled & 1) == 0)
        {
          v47 = *(__UILogGetCategoryCachedImpl("FeedbackGesture", &qword_1ED4990E0) + 8);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_DEFAULT, "no closest event found", buf, 2u);
          }
        }

        v52 = 0;
      }

      goto LABEL_56;
    }

    v32 = v14;
    v33 = [v32 type];
    v34 = [v32 _isPointerTouch];
    v35 = (v33 == 2) | v34;
    if ((v33 == 2) | v34 & 1)
    {
      v36 = v34;
      if (a2)
      {
        *a2 = v33 != 2;
      }

      if (a3)
      {
        if ((v34 & 1) == 0 || (v37 = [v32 _pointerSenderID]) == 0)
        {
          v37 = [v32 _senderID];
        }

        *a3 = v37;
      }

      if (_UIFeedbackLoggingDisabled)
      {
        goto LABEL_51;
      }

      v38 = *(__UILogGetCategoryCachedImpl("FeedbackGesture", &qword_1ED4990C8) + 8);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v39 = "pencil";
      if (v36)
      {
        v39 = "pointer";
      }

      *buf = 136315138;
      v54 = v39;
      v40 = "closest interaction is %s touch";
      v41 = v38;
      v42 = 12;
    }

    else
    {
      if (_UIFeedbackLoggingDisabled)
      {
        goto LABEL_51;
      }

      v46 = *(__UILogGetCategoryCachedImpl("FeedbackGesture", &qword_1ED4990D0) + 8);
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v40 = "closest interaction is other touch";
      v41 = v46;
      v42 = 2;
    }

    _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
LABEL_51:
    v52 = v35 & 1;

LABEL_56:
    return v52;
  }

  return result;
}

- (void)__completeIfNecessary
{
  if (![(NSMutableSet *)self->_trackedTouches count]&& !self->_trackedScrollEvent && !self->_trackedTransformEvent)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)__removeCompletedInteractionsAfterDelay:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___UIFeedbackGeneratorGestureRecognizer___removeCompletedInteractionsAfterDelay___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)__moveEventToCompleted:(id)a3
{
  v4 = a3;
  v5 = [(UIGestureRecognizer *)self view];
  v7 = [_UIFeedbackGeneratorGestureRecognizerCompletedEvent completedEventFromEvent:v4 inView:v5];

  [(NSMutableSet *)self->_completedInteractions addObject:v7];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  [(_UIFeedbackGeneratorGestureRecognizer *)self __removeCompletedInteractionsAfterDelay:v6];
}

- (void)_transformChangedWithEvent:(id)a3
{
  v7 = a3;
  v5 = [v7 phase];
  switch(v5)
  {
    case 4:
      goto LABEL_6;
    case 3:
      [(_UIFeedbackGeneratorGestureRecognizer *)self __moveEventToCompleted:v7];
LABEL_6:
      trackedTransformEvent = self->_trackedTransformEvent;
      self->_trackedTransformEvent = 0;

      [(_UIFeedbackGeneratorGestureRecognizer *)self __completeIfNecessary];
      break;
    case 1:
      objc_storeStrong(&self->_trackedTransformEvent, a3);
      break;
  }
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v7 = a3;
  v5 = [v7 phase];
  switch(v5)
  {
    case 5:
      goto LABEL_6;
    case 4:
      [(_UIFeedbackGeneratorGestureRecognizer *)self __moveEventToCompleted:v7];
LABEL_6:
      trackedScrollEvent = self->_trackedScrollEvent;
      self->_trackedScrollEvent = 0;

      [(_UIFeedbackGeneratorGestureRecognizer *)self __completeIfNecessary];
      break;
    case 2:
      objc_storeStrong(&self->_trackedScrollEvent, a3);
      break;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  trackedTouches = self->_trackedTouches;
  v6 = a3;
  [(NSMutableSet *)trackedTouches minusSet:v6];
  [(_UIFeedbackGeneratorGestureRecognizer *)self __completeIfNecessary];
  v7 = [v6 bs_map:&__block_literal_global_744];

  [(NSMutableSet *)self->_completedInteractions unionSet:v7];
  [(_UIFeedbackGeneratorGestureRecognizer *)self __removeCompletedInteractionsAfterDelay:v7];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  [(NSMutableSet *)self->_trackedTouches minusSet:?];
  if (![(NSMutableSet *)self->_trackedTouches count])
  {
    v5 = [v7 bs_map:&__block_literal_global_119_2];
    potentialDragTouches = self->_potentialDragTouches;
    self->_potentialDragTouches = v5;

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)_stopTrackingDragEvent:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 328) = 0;
    v3 = *(a1 + 320);
    *(a1 + 320) = 0;
    v4 = a2;

    [(UIGestureRecognizer *)a1 _removeActiveEvent:v4];
  }
}

- (void)_trackDragEvent:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    *(a1 + 328) = 1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(a1 + 320);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [v9 window];
          [v3 locationInView:v10];
          [v9 setLocationInWindow:?];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

@end