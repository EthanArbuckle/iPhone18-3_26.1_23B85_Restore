@interface UISystemGestureView
- (CGRect)_responderSelectionRectForWindow:(id)window;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation UISystemGestureView

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v21 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 136316162;
    v12 = "[UISystemGestureView setUserInteractionEnabled:]";
    v13 = 1024;
    v14 = isUserInteractionEnabled;
    v15 = 1024;
    v16 = enabledCopy;
    v17 = 2112;
    selfCopy2 = self;
    v19 = 2112;
    v20 = callStackSymbols;
    _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "%s: Modifying userInteractionEnabled is not supported: old: %d; new: %d; self: %@; \n%@", buf, 0x2Cu);
LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

  v5 = *(__UILogGetCategoryCachedImpl("Assert", &setUserInteractionEnabled____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    isUserInteractionEnabled2 = [(UIView *)self isUserInteractionEnabled];
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 136316162;
    v12 = "[UISystemGestureView setUserInteractionEnabled:]";
    v13 = 1024;
    v14 = isUserInteractionEnabled2;
    v15 = 1024;
    v16 = enabledCopy;
    v17 = 2112;
    selfCopy2 = self;
    v19 = 2112;
    v20 = callStackSymbols;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s: Modifying userInteractionEnabled is not supported: old: %d; new: %d; self: %@; \n%@", buf, 0x2Cu);
    goto LABEL_4;
  }

LABEL_6:
  v10.receiver = self;
  v10.super_class = UISystemGestureView;
  [(UIView *)&v10 setUserInteractionEnabled:enabledCopy];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  window = [(UIView *)self window];
  if (window == window)
  {
    v13.receiver = self;
    v13.super_class = UISystemGestureView;
    v11 = [(UIView *)&v13 _hitTest:event withEvent:window windowServerHitTestWindow:x, y];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)_responderSelectionRectForWindow:(id)window
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end