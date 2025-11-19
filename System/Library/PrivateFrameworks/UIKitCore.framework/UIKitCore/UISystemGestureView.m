@interface UISystemGestureView
- (CGRect)_responderSelectionRectForWindow:(id)a3;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation UISystemGestureView

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v9 = [(UIView *)self isUserInteractionEnabled];
    v8 = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 136316162;
    v12 = "[UISystemGestureView setUserInteractionEnabled:]";
    v13 = 1024;
    v14 = v9;
    v15 = 1024;
    v16 = v3;
    v17 = 2112;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "%s: Modifying userInteractionEnabled is not supported: old: %d; new: %d; self: %@; \n%@", buf, 0x2Cu);
LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

  v5 = *(__UILogGetCategoryCachedImpl("Assert", &setUserInteractionEnabled____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = [(UIView *)self isUserInteractionEnabled];
    v8 = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 136316162;
    v12 = "[UISystemGestureView setUserInteractionEnabled:]";
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v3;
    v17 = 2112;
    v18 = self;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s: Modifying userInteractionEnabled is not supported: old: %d; new: %d; self: %@; \n%@", buf, 0x2Cu);
    goto LABEL_4;
  }

LABEL_6:
  v10.receiver = self;
  v10.super_class = UISystemGestureView;
  [(UIView *)&v10 setUserInteractionEnabled:v3];
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v10 = [(UIView *)self window];
  if (v10 == a5)
  {
    v13.receiver = self;
    v13.super_class = UISystemGestureView;
    v11 = [(UIView *)&v13 _hitTest:a4 withEvent:a5 windowServerHitTestWindow:x, y];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGRect)_responderSelectionRectForWindow:(id)a3
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