@interface UITextMagnifierCaret
+ (id)sharedCaretMagnifier;
- (BOOL)terminalPointPlacedCarefully;
- (CGPoint)offset;
- (UITextMagnifierCaret)initWithFrame;
- (void)beginMagnifyingTarget:(id)a3 text:(id)a4 magnificationPoint:(CGPoint)a5 offset:(CGPoint)a6 animated:(BOOL)a7;
- (void)remove;
- (void)updateFrameAndOffset;
- (void)zoomDownAnimation;
- (void)zoomUpAnimation;
@end

@implementation UITextMagnifierCaret

+ (id)sharedCaretMagnifier
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v4 = [v3 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[UIKeyboardImpl activeInstance];
    v7 = [v6 textInputTraits];
    v8 = [v7 textLoupeVisibility];

    v9 = SharedInstance;
    if (!SharedInstance && v8 != 1)
    {
      v10 = [[UITextMagnifierCaret alloc] initWithFrame];
      v11 = SharedInstance;
      SharedInstance = v10;

      v9 = SharedInstance;
    }

    if (v8 == 1)
    {
      v9 = 0;
    }

    v5 = v9;
  }

  return v5;
}

- (UITextMagnifierCaret)initWithFrame
{
  v3.receiver = self;
  v3.super_class = UITextMagnifierCaret;
  return [(UITextMagnifier *)&v3 initWithFrame:0.0, 0.0, 127.0, 127.0];
}

- (BOOL)terminalPointPlacedCarefully
{
  v3 = [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint historyCovers:0.5];
  [(UITextMagnifierTimeWeightedPoint *)self->super._weightedPoint distanceCoveredInInterval:0.5];
  return v4 < 10.0 && v3;
}

- (void)zoomUpAnimation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__UITextMagnifierCaret_zoomUpAnimation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [(UITextMagnifier *)self beginZoomUpAnimation:v2 withDuration:0.075];
}

uint64_t __39__UITextMagnifierCaret_zoomUpAnimation__block_invoke(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  [*(a1 + 32) bounds];
  CGAffineTransformMakeTranslation(&v8, 0.0, (v2 + v3) * 0.5);
  v6 = v8;
  CGAffineTransformScale(&v7, &v6, 0.25, 0.25);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

- (void)zoomDownAnimation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__UITextMagnifierCaret_zoomDownAnimation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [(UITextMagnifier *)self beginZoomDownAnimation:v2 withDuration:0 postponeHandler:0.15];
}

void __41__UITextMagnifierCaret_zoomDownAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v4 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  v7 = [v2 selectedTextRange];
  v8 = [v7 start];

  if (v8)
  {
    [v2 caretRectForPosition:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) superview];
    [v17 convertRect:*(*(a1 + 32) + 408) fromView:{v10, v12, v14, v16}];
    v19 = v18;
    v21 = v20;

    v22 = +[UIPeripheralHost sharedInstance];
    [v22 offHostPointForPoint:{v19, v21}];
  }

  v28.origin.x = v4;
  v28.origin.y = v3;
  v28.size.width = v6;
  v28.size.height = v5;
  if (!CGRectIsEmpty(v28))
  {
    [*(a1 + 32) frame];
    [*(a1 + 32) setFrame:{round(v4 + v6 * 0.5 - v24 * 0.5), round(v3 + v5 * 0.5 - v23 * 0.5)}];
  }

  CGAffineTransformMakeScale(&v27, 0.00787401575, 0.00787401575);
  v25 = *(a1 + 32);
  v26 = v27;
  [v25 setTransform:&v26];
}

- (void)remove
{
  v3.receiver = self;
  v3.super_class = UITextMagnifierCaret;
  [(UITextMagnifier *)&v3 remove];
  [(UITextMagnifier *)self setFrame:0.0, 0.0, 127.0, 127.0];
}

- (void)updateFrameAndOffset
{
  v3 = [(UIView *)self superview];
  [(UITextMagnifier *)self magnificationPoint];
  [v3 convertPoint:self->super._target fromView:?];
  v5 = v4;
  v7 = v6;

  v8 = +[UIPeripheralHost sharedInstance];
  [v8 offHostPointForPoint:{v5, v7}];
  v10 = v9;
  v12 = v11;

  [(UIView *)self bounds];
  v14 = v13;
  v16 = v15 * 0.5;
  v17 = v12 + v15 * 0.5;
  v18 = [(UIView *)self window];
  [v18 safeAreaInsets];
  v20 = v19;

  if (v17 + -60.0 >= v20 + 75.0)
  {
    v21 = 60.0;
  }

  else
  {
    v21 = v17 - (v20 + 75.0);
  }

  if (v12 - v21 >= 32.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v12 + -32.0;
  }

  if (v22 < 1.0)
  {
    v22 = 1.0;
  }

  self->_yOffset = v22;
  [(UITextMagnifierCaret *)self offset];
  v24 = v10 + v23;
  [(UITextMagnifierCaret *)self offset];
  v26 = floor(v14 * 0.5);
  v27 = v14 * 0.5 - v26 + floor(v24);
  v28 = v16 - v26 + floor(v12 + v25 - v21);

  [(UIView *)self setCenter:v27, v28];
}

- (void)beginMagnifyingTarget:(id)a3 text:(id)a4 magnificationPoint:(CGPoint)a5 offset:(CGPoint)a6 animated:(BOOL)a7
{
  v7 = a7;
  y = a6.y;
  x = a6.x;
  v10 = a5.y;
  v11 = a5.x;
  v14 = a4;
  v15 = a3;
  v16 = +[UITextMagnifierRanged sharedRangedMagnifier];
  [v16 stopMagnifying:0];

  [(UITextMagnifierCaret *)self setOffset:x, y];
  v17.receiver = self;
  v17.super_class = UITextMagnifierCaret;
  [(UITextMagnifier *)&v17 beginMagnifyingTarget:v15 text:v14 magnificationPoint:v7 offset:v11 animated:v10, x, y];
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end