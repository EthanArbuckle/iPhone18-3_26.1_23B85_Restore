@interface _UITextLayoutFragmentView
- (void)drawRect:(CGRect)a3;
@end

@implementation _UITextLayoutFragmentView

- (void)drawRect:(CGRect)a3
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v6 = [(_UITextLayoutFragmentViewBase *)self layoutFragment];
  [v6 layoutFragmentFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(_UITextLayoutFragmentViewBase *)self clipRect];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38___UITextLayoutFragmentView_drawRect___block_invoke;
  v19[3] = &unk_1E70F32F0;
  v19[4] = self;
  v19[5] = v5;
  _UITextCanvasDrawWithFadedEdgesInContext(v5, v19, v8, v10, v12, v14, v15, v16, v17, v18);
}

@end