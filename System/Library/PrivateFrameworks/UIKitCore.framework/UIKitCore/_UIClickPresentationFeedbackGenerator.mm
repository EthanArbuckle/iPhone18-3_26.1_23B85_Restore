@interface _UIClickPresentationFeedbackGenerator
- (_UIClickPresentationFeedbackGenerator)initWithConfiguration:(id)a3 view:(id)a4;
- (void)draggedAtLocation:(CGPoint)a3;
- (void)poppedAtLocation:(CGPoint)a3;
- (void)previewedAtLocation:(CGPoint)a3;
- (void)userInteractionCancelledAtLocation:(CGPoint)a3;
- (void)userInteractionEndedAtLocation:(CGPoint)a3;
- (void)userInteractionStartedAtLocation:(CGPoint)a3;
@end

@implementation _UIClickPresentationFeedbackGenerator

- (_UIClickPresentationFeedbackGenerator)initWithConfiguration:(id)a3 view:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIClickPresentationFeedbackGenerator;
  return [(UIFeedbackGenerator *)&v5 initWithConfiguration:a3 view:a4];
}

- (void)previewedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v7 = [(_UIClickPresentationFeedbackGenerator *)self _clickConfiguration];
  v6 = [v7 previewedPattern];
  [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
}

- (void)poppedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v7 = [(_UIClickPresentationFeedbackGenerator *)self _clickConfiguration];
  v6 = [v7 poppedPattern];
  [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
}

- (void)draggedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v7 = [(_UIClickPresentationFeedbackGenerator *)self _clickConfiguration];
  v6 = [v7 draggedPattern];
  [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
}

- (void)userInteractionStartedAtLocation:(CGPoint)a3
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, a3.x, a3.y];

  [(UIFeedbackGenerator *)self activateWithCompletionBlock:0];
}

- (void)userInteractionEndedAtLocation:(CGPoint)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, a3.x, a3.y];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = [(UIFeedbackGenerator *)self isActive];
  if (has_internal_diagnostics)
  {
    if (!v5)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        v9 = self;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Attempted to end user interaction on %@ when it was not active.", &v8, 0xCu);
      }
    }
  }

  else if (!v5)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &userInteractionEndedAtLocation____s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempted to end user interaction on %@ when it was not active.", &v8, 0xCu);
    }
  }

  if ([(UIFeedbackGenerator *)self isActive])
  {
    [(UIFeedbackGenerator *)self deactivate];
  }
}

- (void)userInteractionCancelledAtLocation:(CGPoint)a3
{
  v10 = *MEMORY[0x1E69E9840];
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, a3.x, a3.y];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v5 = [(UIFeedbackGenerator *)self isActive];
  if (has_internal_diagnostics)
  {
    if (!v5)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8 = 138412290;
        v9 = self;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Attempted to cancel user interaction on %@ when it was not active.", &v8, 0xCu);
      }
    }
  }

  else if (!v5)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &userInteractionCancelledAtLocation____s_category_0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempted to cancel user interaction on %@ when it was not active.", &v8, 0xCu);
    }
  }

  if ([(UIFeedbackGenerator *)self isActive])
  {
    [(UIFeedbackGenerator *)self deactivate];
  }
}

@end