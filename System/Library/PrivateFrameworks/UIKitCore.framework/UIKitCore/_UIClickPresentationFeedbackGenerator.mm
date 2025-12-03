@interface _UIClickPresentationFeedbackGenerator
- (_UIClickPresentationFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view;
- (void)draggedAtLocation:(CGPoint)location;
- (void)poppedAtLocation:(CGPoint)location;
- (void)previewedAtLocation:(CGPoint)location;
- (void)userInteractionCancelledAtLocation:(CGPoint)location;
- (void)userInteractionEndedAtLocation:(CGPoint)location;
- (void)userInteractionStartedAtLocation:(CGPoint)location;
@end

@implementation _UIClickPresentationFeedbackGenerator

- (_UIClickPresentationFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view
{
  v5.receiver = self;
  v5.super_class = _UIClickPresentationFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v5 initWithConfiguration:configuration view:view];
}

- (void)previewedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _clickConfiguration = [(_UIClickPresentationFeedbackGenerator *)self _clickConfiguration];
  previewedPattern = [_clickConfiguration previewedPattern];
  [(UIFeedbackGenerator *)self _playFeedback:previewedPattern atLocation:x, y];
}

- (void)poppedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _clickConfiguration = [(_UIClickPresentationFeedbackGenerator *)self _clickConfiguration];
  poppedPattern = [_clickConfiguration poppedPattern];
  [(UIFeedbackGenerator *)self _playFeedback:poppedPattern atLocation:x, y];
}

- (void)draggedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _clickConfiguration = [(_UIClickPresentationFeedbackGenerator *)self _clickConfiguration];
  draggedPattern = [_clickConfiguration draggedPattern];
  [(UIFeedbackGenerator *)self _playFeedback:draggedPattern atLocation:x, y];
}

- (void)userInteractionStartedAtLocation:(CGPoint)location
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, location.x, location.y];

  [(UIFeedbackGenerator *)self activateWithCompletionBlock:0];
}

- (void)userInteractionEndedAtLocation:(CGPoint)location
{
  v10 = *MEMORY[0x1E69E9840];
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, location.x, location.y];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  isActive = [(UIFeedbackGenerator *)self isActive];
  if (has_internal_diagnostics)
  {
    if (!isActive)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Attempted to end user interaction on %@ when it was not active.", &v8, 0xCu);
      }
    }
  }

  else if (!isActive)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &userInteractionEndedAtLocation____s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempted to end user interaction on %@ when it was not active.", &v8, 0xCu);
    }
  }

  if ([(UIFeedbackGenerator *)self isActive])
  {
    [(UIFeedbackGenerator *)self deactivate];
  }
}

- (void)userInteractionCancelledAtLocation:(CGPoint)location
{
  v10 = *MEMORY[0x1E69E9840];
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, location.x, location.y];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  isActive = [(UIFeedbackGenerator *)self isActive];
  if (has_internal_diagnostics)
  {
    if (!isActive)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Attempted to cancel user interaction on %@ when it was not active.", &v8, 0xCu);
      }
    }
  }

  else if (!isActive)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &userInteractionCancelledAtLocation____s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempted to cancel user interaction on %@ when it was not active.", &v8, 0xCu);
    }
  }

  if ([(UIFeedbackGenerator *)self isActive])
  {
    [(UIFeedbackGenerator *)self deactivate];
  }
}

@end