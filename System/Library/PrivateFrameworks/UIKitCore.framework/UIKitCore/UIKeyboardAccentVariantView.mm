@interface UIKeyboardAccentVariantView
+ (CGSize)preferredContentViewSizeForKey:(id)key withTraits:(id)traits;
- (BOOL)updateSelectedVariantIndexForKey:(id)key atPoint:(CGPoint)point;
- (UIKeyboardAccentVariantView)initWithFrame:(CGRect)frame;
- (id)nextResponder;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
- (void)updateHighlightForSelectedVariantIndex:(int64_t)index;
- (void)updateRenderConfig:(id)config;
@end

@implementation UIKeyboardAccentVariantView

- (UIKeyboardAccentVariantView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = UIKeyboardAccentVariantView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cells = v3->_cells;
    v3->_cells = v4;

    v6 = +[UIColor greenColor];
    cGColor = [v6 CGColor];
    layer = [(UIView *)v3 layer];
    [layer setBorderColor:cGColor];

    layer2 = [(UIView *)v3 layer];
    [layer2 setBorderWidth:1.0];
  }

  return v3;
}

+ (CGSize)preferredContentViewSizeForKey:(id)key withTraits:(id)traits
{
  subtrees = [key subtrees];
  v5 = [subtrees count];

  v6 = v5 * 36.0 + 4.0;
  v7 = 52.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  keyplaneCopy = keyplane;
  keyCopy = key;
  if ([(NSMutableArray *)self->_cells count])
  {
    -[UIKeyboardAccentVariantView updateHighlightForSelectedVariantIndex:](self, "updateHighlightForSelectedVariantIndex:", [keyCopy selectedVariantIndex]);
  }

  else
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__15;
    v13[4] = __Block_byref_object_dispose__15;
    leadingAnchor = [(UIView *)self leadingAnchor];
    subtrees = [keyCopy subtrees];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__UIKeyboardAccentVariantView_updateForKeyplane_key___block_invoke;
    v9[3] = &unk_1E70F7EB0;
    v10 = keyCopy;
    selfCopy = self;
    v12 = v13;
    [subtrees enumerateObjectsUsingBlock:v9];

    _Block_object_dispose(v13, 8);
  }
}

void __53__UIKeyboardAccentVariantView_updateForKeyplane_key___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [UIKeyboardAccentVariantViewCell alloc];
  v7 = [(UIKeyboardAccentVariantViewCell *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = [v5 representedString];

  [(UIKeyboardAccentVariantViewCell *)v7 setAccentedChar:v8];
  if ([*(a1 + 32) selectedVariantIndex] == a3)
  {
    [(UIKeyboardAccentVariantViewCell *)v7 setHighlighted:1];
  }

  [*(*(a1 + 40) + 408) addObject:v7];
  v18 = v7;
  [(UIView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 40) addSubview:v18];
  if (a3)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 8.0;
  }

  v10 = [(UIView *)v18 leadingAnchor];
  v11 = [v10 constraintEqualToAnchor:*(*(*(a1 + 48) + 8) + 40) constant:v9];
  [v11 setActive:1];

  v12 = [(UIView *)v18 topAnchor];
  v13 = [*(a1 + 40) topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:4.0];
  [v14 setActive:1];

  v15 = [(UIView *)v18 trailingAnchor];

  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

- (void)updateHighlightForSelectedVariantIndex:(int64_t)index
{
  [(NSMutableArray *)self->_cells enumerateObjectsUsingBlock:&__block_literal_global_67];
  if ([(NSMutableArray *)self->_cells count]> index)
  {
    v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:index];
    [v5 setHighlighted:1];
  }
}

- (BOOL)updateSelectedVariantIndexForKey:(id)key atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  keyCopy = key;
  selectedVariantIndex = [keyCopy selectedVariantIndex];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0x7FEFFFFFFFFFFFFFLL;
  cells = self->_cells;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__UIKeyboardAccentVariantView_updateSelectedVariantIndexForKey_atPoint___block_invoke;
  v14[3] = &unk_1E70F7EF8;
  *&v14[6] = x;
  *&v14[7] = y;
  v14[4] = v15;
  v14[5] = &v16;
  [(NSMutableArray *)cells enumerateObjectsUsingBlock:v14];
  if (v17[3] == 0x7FFFFFFFFFFFFFFFLL || (-[NSMutableArray objectAtIndexedSubscript:](self->_cells, "objectAtIndexedSubscript:"), v10 = objc_claimAutoreleasedReturnValue(), [v10 setHighlighted:1], v10, v11 = v17[3], objc_msgSend(keyCopy, "setSelectedVariantIndex:", v11), v11 == selectedVariantIndex))
  {
    v12 = 0;
  }

  else
  {
    [(UIKeyboardAccentVariantView *)self updateHighlightForSelectedVariantIndex:v11];
    v12 = 1;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __72__UIKeyboardAccentVariantView_updateSelectedVariantIndexForKey_atPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  result = [a2 center];
  v8 = v5 - v7;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  v9 = *(*(a1 + 32) + 8);
  if (v8 < *(v9 + 24))
  {
    *(v9 + 24) = v8;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

- (void)updateRenderConfig:(id)config
{
  configCopy = config;
  cells = self->_cells;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__UIKeyboardAccentVariantView_updateRenderConfig___block_invoke;
  v7[3] = &unk_1E70F7F20;
  v8 = configCopy;
  v6 = configCopy;
  [(NSMutableArray *)cells enumerateObjectsUsingBlock:v7];
}

- (id)nextResponder
{
  touchForwardingView = [(UIKeyboardAccentVariantView *)self touchForwardingView];
  v4 = touchForwardingView;
  if (touchForwardingView)
  {
    nextResponder = touchForwardingView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardAccentVariantView;
    nextResponder = [(UIView *)&v8 nextResponder];
  }

  v6 = nextResponder;

  return v6;
}

@end