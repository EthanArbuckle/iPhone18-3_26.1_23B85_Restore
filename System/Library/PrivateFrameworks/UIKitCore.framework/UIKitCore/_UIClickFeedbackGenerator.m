@interface _UIClickFeedbackGenerator
- (_UIClickFeedbackGenerator)initWithView:(id)a3;
- (void)pressedDownAtLocation:(CGPoint)a3;
- (void)pressedUpAtLocation:(CGPoint)a3;
- (void)userInteractionCancelledAtLocation:(CGPoint)a3;
- (void)userInteractionEndedAtLocation:(CGPoint)a3;
- (void)userInteractionStartedAtLocation:(CGPoint)a3;
@end

@implementation _UIClickFeedbackGenerator

- (_UIClickFeedbackGenerator)initWithView:(id)a3
{
  v4 = a3;
  v5 = +[_UIClickFeedbackGeneratorConfiguration defaultConfiguration];
  v8.receiver = self;
  v8.super_class = _UIClickFeedbackGenerator;
  v6 = [(UIFeedbackGenerator *)&v8 initWithConfiguration:v5 view:v4];

  return v6;
}

- (void)pressedDownAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v7 = [(_UIClickFeedbackGenerator *)self _clickConfiguration];
  v6 = [v7 clickDownPattern];
  [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
}

- (void)pressedUpAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v7 = [(_UIClickFeedbackGenerator *)self _clickConfiguration];
  v6 = [v7 clickUpPattern];
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &userInteractionEndedAtLocation____s_category) + 8);
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
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &userInteractionCancelledAtLocation____s_category) + 8);
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