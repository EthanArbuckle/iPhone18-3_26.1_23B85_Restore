@interface UIKeyboardAccentVariantView
+ (CGSize)preferredContentViewSizeForKey:(id)a3 withTraits:(id)a4;
- (BOOL)updateSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4;
- (UIKeyboardAccentVariantView)initWithFrame:(CGRect)a3;
- (id)nextResponder;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
- (void)updateHighlightForSelectedVariantIndex:(int64_t)a3;
- (void)updateRenderConfig:(id)a3;
@end

@implementation UIKeyboardAccentVariantView

- (UIKeyboardAccentVariantView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = UIKeyboardAccentVariantView;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cells = v3->_cells;
    v3->_cells = v4;

    v6 = +[UIColor greenColor];
    v7 = [v6 CGColor];
    v8 = [(UIView *)v3 layer];
    [v8 setBorderColor:v7];

    v9 = [(UIView *)v3 layer];
    [v9 setBorderWidth:1.0];
  }

  return v3;
}

+ (CGSize)preferredContentViewSizeForKey:(id)a3 withTraits:(id)a4
{
  v4 = [a3 subtrees];
  v5 = [v4 count];

  v6 = v5 * 36.0 + 4.0;
  v7 = 52.0;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->_cells count])
  {
    -[UIKeyboardAccentVariantView updateHighlightForSelectedVariantIndex:](self, "updateHighlightForSelectedVariantIndex:", [v7 selectedVariantIndex]);
  }

  else
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__15;
    v13[4] = __Block_byref_object_dispose__15;
    v14 = [(UIView *)self leadingAnchor];
    v8 = [v7 subtrees];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__UIKeyboardAccentVariantView_updateForKeyplane_key___block_invoke;
    v9[3] = &unk_1E70F7EB0;
    v10 = v7;
    v11 = self;
    v12 = v13;
    [v8 enumerateObjectsUsingBlock:v9];

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

- (void)updateHighlightForSelectedVariantIndex:(int64_t)a3
{
  [(NSMutableArray *)self->_cells enumerateObjectsUsingBlock:&__block_literal_global_67];
  if ([(NSMutableArray *)self->_cells count]> a3)
  {
    v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:a3];
    [v5 setHighlighted:1];
  }
}

- (BOOL)updateSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 selectedVariantIndex];
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
  if (v17[3] == 0x7FFFFFFFFFFFFFFFLL || (-[NSMutableArray objectAtIndexedSubscript:](self->_cells, "objectAtIndexedSubscript:"), v10 = objc_claimAutoreleasedReturnValue(), [v10 setHighlighted:1], v10, v11 = v17[3], objc_msgSend(v7, "setSelectedVariantIndex:", v11), v11 == v8))
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

- (void)updateRenderConfig:(id)a3
{
  v4 = a3;
  cells = self->_cells;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__UIKeyboardAccentVariantView_updateRenderConfig___block_invoke;
  v7[3] = &unk_1E70F7F20;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)cells enumerateObjectsUsingBlock:v7];
}

- (id)nextResponder
{
  v3 = [(UIKeyboardAccentVariantView *)self touchForwardingView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardAccentVariantView;
    v5 = [(UIView *)&v8 nextResponder];
  }

  v6 = v5;

  return v6;
}

@end