@interface _UIGestureStudyInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIView)view;
- (_UIGestureStudyInteraction)initWithDelegate:(id)delegate;
- (_UIGestureStudyInteractionDelegate)delegate;
- (id)_baseMetadataForTriggeredParticipant:(id)participant;
- (id)_numberOfActiveTouches;
- (id)_viewRegionForTriggeredParticipant:(id)participant;
- (void)_handleMetricsEvent:(id)event;
- (void)_reportEventForTriggeredParticipant:(id)participant;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UIGestureStudyInteraction

- (_UIGestureStudyInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

  if ((v8 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIGestureStudyInteraction.m" lineNumber:89 description:@"This interaction is only intended for use in SpringBoard."];
  }

  v13.receiver = self;
  v13.super_class = _UIGestureStudyInteraction;
  v9 = [(_UIGestureStudyInteraction *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(_UIGestureStudyInteraction *)v9 setDelegate:delegateCopy];
  }

  return v10;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  metricsGestureRecognizer = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];
  view = [(_UIGestureStudyInteraction *)self view];
  [metricsGestureRecognizer locationInView:view];
  v8 = v7;
  v10 = v9;

  view2 = [(_UIGestureStudyInteraction *)self view];
  [view2 convertPoint:spaceCopy toCoordinateSpace:{v8, v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)willMoveToView:(id)view
{
  forceClickInteraction = [(_UIGestureStudyInteraction *)self forceClickInteraction];
  view = [forceClickInteraction view];
  forceClickInteraction2 = [(_UIGestureStudyInteraction *)self forceClickInteraction];
  [view removeInteraction:forceClickInteraction2];

  longPressClickInteraction = [(_UIGestureStudyInteraction *)self longPressClickInteraction];
  view2 = [longPressClickInteraction view];
  longPressClickInteraction2 = [(_UIGestureStudyInteraction *)self longPressClickInteraction];
  [view2 removeInteraction:longPressClickInteraction2];

  metricsGestureRecognizer = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];
  view3 = [metricsGestureRecognizer view];
  metricsGestureRecognizer2 = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];
  [view3 removeGestureRecognizer:metricsGestureRecognizer2];
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    v5 = +[UIDevice currentDevice];
    _supportsForceTouch = [v5 _supportsForceTouch];

    if (_supportsForceTouch)
    {
      forceClickInteraction = [(_UIGestureStudyInteraction *)self forceClickInteraction];

      if (!forceClickInteraction)
      {
        v8 = [[_UIGestureStudyClickInteraction alloc] initWithTarget:self action:sel__interactionDidTrigger_ useForce:1];
        [(_UIGestureStudyInteraction *)self setForceClickInteraction:v8];
      }

      WeakRetained = objc_loadWeakRetained(&self->_view);
      forceClickInteraction2 = [(_UIGestureStudyInteraction *)self forceClickInteraction];
    }

    else
    {
      longPressClickInteraction = [(_UIGestureStudyInteraction *)self longPressClickInteraction];

      if (!longPressClickInteraction)
      {
        v12 = [[_UIGestureStudyClickInteraction alloc] initWithTarget:self action:sel__interactionDidTrigger_ useForce:0];
        [(_UIGestureStudyInteraction *)self setLongPressClickInteraction:v12];
      }

      WeakRetained = objc_loadWeakRetained(&self->_view);
      forceClickInteraction2 = [(_UIGestureStudyInteraction *)self longPressClickInteraction];
    }

    v13 = forceClickInteraction2;
    [WeakRetained addInteraction:forceClickInteraction2];

    metricsGestureRecognizer = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];

    if (!metricsGestureRecognizer)
    {
      v15 = [[_UIGestureStudyMetricsGestureRecognizer alloc] initWithTarget:self action:sel__handleMetricsEvent_];
      [(_UIGestureStudyInteraction *)self setMetricsGestureRecognizer:v15];

      metricsGestureRecognizer2 = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];
      [metricsGestureRecognizer2 setDelegate:self];
    }

    v17 = objc_loadWeakRetained(&self->_view);
    metricsGestureRecognizer3 = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];
    [v17 addGestureRecognizer:metricsGestureRecognizer3];
  }
}

- (void)_handleMetricsEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy state] != 3)
  {
    goto LABEL_9;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__218;
  v22 = __Block_byref_object_dispose__218;
  eventMetadata = [(_UIGestureStudyInteraction *)self eventMetadata];
  [(_UIGestureStudyInteraction *)self setEventMetadata:0];
  if (!v19[5])
  {
    [eventCopy movement];
    if (v5 >= 100.0)
    {
LABEL_8:
      _Block_object_dispose(&v18, 8);

LABEL_9:
      return;
    }
  }

  aBlock = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __50___UIGestureStudyInteraction__handleMetricsEvent___block_invoke;
  v15 = &unk_1E7127320;
  v17 = &v18;
  v16 = eventCopy;
  v6 = _Block_copy(&aBlock);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v7 = getAnalyticsSendEventLazySymbolLoc_ptr;
  v32 = getAnalyticsSendEventLazySymbolLoc_ptr;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAnalyticsSendEventLazySymbolLoc_block_invoke;
    v27 = &unk_1E70F2F20;
    v28 = &v29;
    v8 = CoreAnalyticsLibrary();
    v9 = dlsym(v8, "AnalyticsSendEventLazy");
    *(v28[1] + 24) = v9;
    getAnalyticsSendEventLazySymbolLoc_ptr = *(v28[1] + 24);
    v7 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (v7)
  {
    v7(@"com.apple.UIKit.CoverSheetStudy.v1", v6);

    goto LABEL_8;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool __AnalyticsSendEventLazy(NSString *__strong, NSDictionary<NSString *, NSObject *> *(^__strong)(void))"}];
  [currentHandler handleFailureInFunction:v11 file:@"_UIGestureStudyInteraction.m" lineNumber:22 description:{@"%s", dlerror(), aBlock, v13, v14, v15}];

  __break(1u);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  metricsGestureRecognizer = [(_UIGestureStudyInteraction *)self metricsGestureRecognizer];

  return metricsGestureRecognizer == recognizerCopy;
}

- (void)_reportEventForTriggeredParticipant:(id)participant
{
  participantCopy = participant;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v5 = getAnalyticsIsEventUsedSymbolLoc_ptr;
  v24 = getAnalyticsIsEventUsedSymbolLoc_ptr;
  if (!getAnalyticsIsEventUsedSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAnalyticsIsEventUsedSymbolLoc_block_invoke;
    v19 = &unk_1E70F2F20;
    v20 = &v21;
    v6 = CoreAnalyticsLibrary();
    v22[3] = dlsym(v6, "AnalyticsIsEventUsed");
    getAnalyticsIsEventUsedSymbolLoc_ptr = *(v20[1] + 24);
    v5 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v5)
  {
    if (v5(@"com.apple.UIKit.CoverSheetStudy.v1"))
    {
      v7 = objc_opt_new();
      v8 = [(_UIGestureStudyInteraction *)self _baseMetadataForTriggeredParticipant:participantCopy];
      [v7 addEntriesFromDictionary:v8];

      delegate = [(_UIGestureStudyInteraction *)self delegate];
      v10 = [delegate metadataForTriggeredInteraction:self];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __66___UIGestureStudyInteraction__reportEventForTriggeredParticipant___block_invoke;
      v14[3] = &unk_1E70F7970;
      v15 = v7;
      v11 = v7;
      [v10 enumerateKeysAndObjectsUsingBlock:v14];
      [(_UIGestureStudyInteraction *)self setEventMetadata:v11];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool __AnalyticsIsEventUsed(NSString *__strong)"];
    [currentHandler handleFailureInFunction:v13 file:@"_UIGestureStudyInteraction.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (id)_baseMetadataForTriggeredParticipant:(id)participant
{
  v27[5] = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  v26[0] = @"gesture_type";
  eventName = [participantCopy eventName];
  v27[0] = eventName;
  v26[1] = @"duration_on_event";
  [participantCopy duration];
  v7 = MEMORY[0x1E696AD98];
  v8 = 0.0;
  v9 = 0.0;
  if (v6 != 0.0)
  {
    v10 = fabs(v6);
    v11 = v6 / v10;
    v12 = log10(v10);
    v13 = __exp10(2.0 - vcvtpd_s64_f64(v12));
    v9 = v11 * (round(v10 * v13) / v13);
  }

  v14 = [v7 numberWithDouble:v9];
  v27[1] = v14;
  v26[2] = @"movement_on_event";
  [participantCopy movement];
  v16 = MEMORY[0x1E696AD98];
  if (v15 != 0.0)
  {
    v17 = fabs(v15);
    v18 = v15 / v17;
    v19 = log10(v17);
    v20 = __exp10(2.0 - vcvtpd_s64_f64(v19));
    v8 = v18 * (round(v17 * v20) / v20);
  }

  v21 = [v16 numberWithDouble:v8];
  v27[2] = v21;
  v26[3] = @"display_region";
  v22 = [(_UIGestureStudyInteraction *)self _viewRegionForTriggeredParticipant:participantCopy];
  v27[3] = v22;
  v26[4] = @"touch_count_on_event";
  _numberOfActiveTouches = [(_UIGestureStudyInteraction *)self _numberOfActiveTouches];
  v27[4] = _numberOfActiveTouches;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];

  return v24;
}

- (id)_viewRegionForTriggeredParticipant:(id)participant
{
  participantCopy = participant;
  view = [(_UIGestureStudyInteraction *)self view];
  [participantCopy locationInCoordinateSpace:view];
  v7 = v6;
  v9 = v8;

  view2 = [(_UIGestureStudyInteraction *)self view];
  if (view2 && (v11 = view2, -[_UIGestureStudyInteraction view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), [v12 bounds], v21.x = v7, v21.y = v9, v13 = CGRectContainsPoint(v22, v21), v12, v11, v13))
  {
    view3 = [(_UIGestureStudyInteraction *)self view];
    [view3 bounds];
    v15 = v7 / CGRectGetWidth(v23);
    view4 = [(_UIGestureStudyInteraction *)self view];
    [view4 bounds];
    v17 = v9 / CGRectGetHeight(v24);

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu, %lu", llround(v15 / 0.333333333), llround(v17 / 0.333333333)];
  }

  else
  {
    v18 = @"Unknown";
  }

  return v18;
}

- (id)_numberOfActiveTouches
{
  v2 = UIApp;
  view = [(_UIGestureStudyInteraction *)self view];
  _window = [view _window];
  v5 = [v2 _touchesEventForWindow:_window];

  v6 = MEMORY[0x1E696AD98];
  allTouches = [v5 allTouches];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(allTouches, "count")}];

  return v8;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UIGestureStudyInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end