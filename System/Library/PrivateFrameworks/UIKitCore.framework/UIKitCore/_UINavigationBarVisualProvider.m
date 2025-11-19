@interface _UINavigationBarVisualProvider
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)a3;
- (CGSize)intrinsicContentSize;
- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins;
- (_UINavigationBarVisualProvider)initWithNavigationBar:(id)a3;
- (id)description;
- (id)restingHeights;
- (void)popAnimated:(BOOL)a3 completion:(id)a4;
- (void)pushAnimated:(BOOL)a3 completion:(id)a4;
- (void)setStack:(id)a3;
- (void)teardown;
@end

@implementation _UINavigationBarVisualProvider

- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)teardown
{
  stack = self->_stack;
  self->_navigationBar = 0;
  self->_stack = 0;
}

- (_UINavigationBarVisualProvider)initWithNavigationBar:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarVisualProvider;
  result = [(_UINavigationBarVisualProvider *)&v5 init];
  if (result)
  {
    result->_navigationBar = a3;
  }

  return result;
}

- (void)setStack:(id)a3
{
  v4 = a3;
  stack = self->_stack;
  if (stack != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_stack;
    self->_stack = v6;
    v8 = stack;

    [(_UINavigationBarVisualProvider *)self stackDidChangeFrom:v8];
    v4 = v9;
  }
}

- (CGSize)intrinsicContentSize
{
  [(_UINavigationBarVisualProvider *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)a3
{
  [(_UINavigationBarVisualProvider *)self sizeThatFits:a3, 0.0];
  v4 = v3;
  v5 = v3;
  result.var2 = v5;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- (id)restingHeights
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD98];
  [(_UINavigationBarVisualProvider *)self intrinsicContentSize];
  v4 = [v2 numberWithDouble:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)pushAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  navigationBar = self->_navigationBar;
  v7 = a4;
  v9 = [(UINavigationBar *)navigationBar _stack];
  v8 = [v9 transitionAssistant];
  (*(a4 + 2))(v7, v5, v8);
}

- (void)popAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a3;
  navigationBar = self->_navigationBar;
  v7 = a4;
  v9 = [(UINavigationBar *)navigationBar _stack];
  v8 = [v9 transitionAssistant];
  (*(a4 + 2))(v7, v5, v8);
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarVisualProvider;
  v3 = [(_UINavigationBarVisualProvider *)&v6 description];
  v4 = [v3 mutableCopy];

  [(_UINavigationBarVisualProvider *)self appendToDescription:v4];

  return v4;
}

@end