@interface UIKeyboardEmojiVariantView
+ (CGSize)preferredContentViewSizeForKey:(id)a3 withTraits:(id)a4;
- (BOOL)updateSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4;
- (UIKeyboardEmojiVariantView)initWithFrame:(CGRect)a3;
- (id)nextResponder;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
- (void)updateHighlightForSelectedVariantIndex:(int64_t)a3;
- (void)updateRenderConfig:(id)a3;
@end

@implementation UIKeyboardEmojiVariantView

- (UIKeyboardEmojiVariantView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = UIKeyboardEmojiVariantView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cells = v3->_cells;
    v3->_cells = v4;
  }

  return v3;
}

+ (CGSize)preferredContentViewSizeForKey:(id)a3 withTraits:(id)a4
{
  v4 = [a3 subtrees];
  v5 = [v4 count] - 1;

  v6 = v5 * 44.0 + 13.0 + 24.0;
  v7 = 56.0;
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
    -[UIKeyboardEmojiVariantView updateHighlightForSelectedVariantIndex:](self, "updateHighlightForSelectedVariantIndex:", [v7 selectedVariantIndex]);
  }

  else
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__68;
    v12[4] = __Block_byref_object_dispose__68;
    v13 = [(UIView *)self leadingAnchor];
    v8 = [v7 subtrees];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__UIKeyboardEmojiVariantView_updateForKeyplane_key___block_invoke;
    v9[3] = &unk_1E70F7EB0;
    v9[4] = self;
    v10 = v7;
    v11 = v12;
    [v8 enumerateObjectsUsingBlock:v9];

    _Block_object_dispose(v12, 8);
  }
}

void __52__UIKeyboardEmojiVariantView_updateForKeyplane_key___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  if ([v21 displayType] == 50)
  {
    v5 = [UIKeyboardEmojiVariantDivider alloc];
    v6 = [(UIKeyboardEmojiVariantDivider *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 408);
    *(v7 + 408) = v6;

    v9 = *(*(a1 + 32) + 408);
  }

  else
  {
    v10 = [UIKeyboardEmojiVariantViewCell alloc];
    v9 = [(UIKeyboardEmojiVariantViewCell *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v11 = [v21 representedString];
    [(UIKeyboardEmojiVariantViewCell *)v9 setEmoji:v11];

    if ([*(a1 + 40) selectedVariantIndex] == a3)
    {
      [(UIKeyboardEmojiVariantViewCell *)v9 setHighlighted:1];
    }

    [*(*(a1 + 32) + 416) addObject:v9];
  }

  [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 32) addSubview:v9];
  if (a3)
  {
    v12 = 6.0;
  }

  else
  {
    v12 = 9.0;
  }

  v13 = [(UIView *)v9 leadingAnchor];
  v14 = [v13 constraintEqualToAnchor:*(*(*(a1 + 48) + 8) + 40) constant:v12];
  [v14 setActive:1];

  v15 = [(UIView *)v9 topAnchor];
  v16 = [*(a1 + 32) topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:3.0];
  [v17 setActive:1];

  v18 = [(UIView *)v9 trailingAnchor];
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

- (void)updateHighlightForSelectedVariantIndex:(int64_t)a3
{
  [(NSMutableArray *)self->_cells enumerateObjectsUsingBlock:&__block_literal_global_182];
  if (!a3 || (--a3, a3))
  {
    if (a3 < [(NSMutableArray *)self->_cells count])
    {
      v5 = [(NSMutableArray *)self->_cells objectAtIndexedSubscript:a3];
      [v5 setHighlighted:1];
    }
  }
}

- (BOOL)updateSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 selectedVariantIndex];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0x7FEFFFFFFFFFFFFFLL;
  cells = self->_cells;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__UIKeyboardEmojiVariantView_updateSelectedVariantIndexForKey_atPoint___block_invoke;
  v15[3] = &unk_1E7106168;
  *&v15[6] = x;
  *&v15[7] = y;
  v15[4] = v16;
  v15[5] = &v17;
  [(NSMutableArray *)cells enumerateObjectsUsingBlock:v15];
  if (v18[3] == 0x7FFFFFFFFFFFFFFFLL || ((-[NSMutableArray objectAtIndexedSubscript:](self->_cells, "objectAtIndexedSubscript:"), v10 = objc_claimAutoreleasedReturnValue(), [v10 setHighlighted:1], v10, v11 = v18[3], v11 <= 0) ? (v12 = v18[3]) : (v12 = v11 + 1), objc_msgSend(v7, "setSelectedVariantIndex:", v12), v12 == v8))
  {
    v13 = 0;
  }

  else
  {
    [(UIKeyboardEmojiVariantView *)self updateHighlightForSelectedVariantIndex:v12];
    v13 = 1;
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);

  return v13;
}

uint64_t __71__UIKeyboardEmojiVariantView_updateSelectedVariantIndexForKey_atPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
  v7[2] = __49__UIKeyboardEmojiVariantView_updateRenderConfig___block_invoke;
  v7[3] = &unk_1E7106190;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)cells enumerateObjectsUsingBlock:v7];
  [(UIKeyboardEmojiVariantDivider *)self->_divider setRenderConfig:v6];
}

- (id)nextResponder
{
  v3 = [(UIKeyboardEmojiVariantView *)self touchForwardingView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardEmojiVariantView;
    v5 = [(UIView *)&v8 nextResponder];
  }

  v6 = v5;

  return v6;
}

@end