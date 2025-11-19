@interface _WTTextPlaceholderController
+ (BOOL)_delegateHasOpenPlaceholder:(id)a3;
+ (BOOL)_delegateImplementsInsertionMethods:(id)a3;
+ (BOOL)_delegateImplementsRemovalMethods:(id)a3;
+ (id)placeholderControllerForDelegate:(id)a3;
+ (void)removePlaceholderControllerForDelegate:(id)a3;
- (_WTTextPlaceholderController)initWithDelegate:(id)a3;
- (double)_widthRatioForIteration:(int)a3 isFinal:(BOOL)a4;
- (id)_visualRectsForRects:(id)a3 containerBounds:(CGRect)a4 caretRect:(CGRect)a5;
- (void)_beginShowingShimmerHighlightsWithCaretRect:(CGRect)a3;
- (void)_endShowingShimmerHighlightsWithCompletion:(id)a3;
- (void)_insertPlaceholderAndBeginShimmerWithCaretRect:(CGRect)a3 placeholderSize:(CGSize)a4;
- (void)beginPlaceholder;
- (void)endPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4;
- (void)textPreviewsForChunk:(id)a3 completion:(id)a4;
- (void)updateIsTextVisible:(BOOL)a3 forChunk:(id)a4 completion:(id)a5;
@end

@implementation _WTTextPlaceholderController

+ (id)placeholderControllerForDelegate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = objc_getAssociatedObject(v4, &_WTTextPlaceholderControllerIdentifier);
  if (v6)
  {
    goto LABEL_7;
  }

  if ([a1 _delegateImplementsInsertionMethods:v5] && objc_msgSend(a1, "_delegateImplementsRemovalMethods:", v5))
  {
    v6 = [[_WTTextPlaceholderController alloc] initWithDelegate:v5];
    objc_setAssociatedObject(v5, &_WTTextPlaceholderControllerIdentifier, v6, 0x301);
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

+ (void)removePlaceholderControllerForDelegate:(id)a3
{
  if (a3)
  {
    objc_setAssociatedObject(a3, &_WTTextPlaceholderControllerIdentifier, 0, 0x301);
  }
}

+ (BOOL)_delegateImplementsInsertionMethods:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

+ (BOOL)_delegateImplementsRemovalMethods:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

+ (BOOL)_delegateHasOpenPlaceholder:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_getAssociatedObject(a3, &_WTTextPlaceholderControllerIdentifier);
  if (v3)
  {
    v4 = v3[2] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_WTTextPlaceholderController)initWithDelegate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _WTTextPlaceholderController;
  v6 = [(_WTTextPlaceholderController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    completionHandlers = v7->_completionHandlers;
    v7->_completionHandlers = v8;

    v7->_completionLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)beginPlaceholder
{
  if ([objc_opt_class() _delegateImplementsRemovalMethods:self->_delegate])
  {
    if (self->_delegate && self->_placeholder)
    {
      [(_WTTextPlaceholderController *)self endPlaceholderAndWillInsertText:0 completion:0];
    }

    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v7 = [self->_delegate selectedTextRange];
      v8 = [v7 start];

      if (v8)
      {
        [self->_delegate caretRectForPosition:v8];
        x = v11.origin.x;
        y = v11.origin.y;
        width = v11.size.width;
        height = v11.size.height;
        if (CGRectIsNull(v11))
        {
          v9 = 60.0;
        }

        else
        {
          v9 = height + height;
        }
      }

      else
      {
        v9 = 60.0;
      }
    }

    else
    {
      v9 = 60.0;
    }

    [(_WTTextPlaceholderController *)self _insertPlaceholderAndBeginShimmerWithCaretRect:x placeholderSize:y, width, height, 0.0, v9];
  }
}

- (void)_insertPlaceholderAndBeginShimmerWithCaretRect:(CGRect)a3 placeholderSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (objc_opt_respondsToSelector())
  {
    v11 = [self->_delegate insertTextPlaceholderWithSize:{width, height}];
    placeholder = self->_placeholder;
    self->_placeholder = v11;

    [(_WTTextPlaceholderController *)self _beginShowingShimmerHighlightsWithCaretRect:x, y, v7, v6];
  }

  else if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95___WTTextPlaceholderController__insertPlaceholderAndBeginShimmerWithCaretRect_placeholderSize___block_invoke;
    v15[3] = &unk_1E8481070;
    v15[4] = self;
    *&v15[5] = x;
    *&v15[6] = y;
    *&v15[7] = v7;
    *&v15[8] = v6;
    [delegate insertTextPlaceholderWithSize:v15 completionHandler:{width, height}];
  }

  else
  {
    v14 = self->_placeholder;
    self->_placeholder = 0;
  }
}

- (double)_widthRatioForIteration:(int)a3 isFinal:(BOOL)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = xmmword_1D455A350;
  v7[1] = xmmword_1D455A360;
  v8 = 0x3FE999999999999ALL;
  pattern = self->_pattern;
  if (pattern == 1)
  {
    return *(v7 + a3 % 5);
  }

  result = 1.0;
  v6 = 0.5;
  if (!a4)
  {
    v6 = 1.0;
  }

  if (!pattern)
  {
    return v6;
  }

  return result;
}

- (id)_visualRectsForRects:(id)a3 containerBounds:(CGRect)a4 caretRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v14 = a3;
  if ([v14 count])
  {
    v15 = [v14 firstObject];
    v16 = [v15 writingDirection];

    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    if ([v14 count] == 1)
    {
      v18 = [v14 firstObject];
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      if (CGRectIsNull(v47) || ([v18 rect], CGRectGetHeight(v48) < height))
      {
        [v18 rect];
        height = CGRectGetHeight(v49);
      }

      [v18 rect];
      MinY = CGRectGetMinY(v50);
      [v18 rect];
      MaxY = CGRectGetMaxY(v51);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v22 isEqualToString:@"WKTextSelectionRect"];

      if (v23)
      {
        [v18 rect];
        MaxY = y + v24;
        MinY = y;
      }

      v25 = 0;
      do
      {
        if (MinY > MaxY)
        {
          break;
        }

        v26 = height + MinY;
        [(_WTTextPlaceholderController *)self _widthRatioForIteration:v25 isFinal:height + MinY > MaxY];
        v28 = v10 * v27;
        [v18 rect];
        MinX = CGRectGetMinX(v52);
        v30 = MinY + 1.5;
        [v18 rect];
        v31 = v10 - (v28 + CGRectGetMinX(v53) * -2.0);
        if (v16 != 1)
        {
          v31 = MinX;
        }

        v32 = [WTTextSelectionRect rectWithRect:v31, v30];
        [v17 addObject:v32];

        v25 = (v25 + 1);
        MinY = v26;
      }

      while (v26 <= MaxY);
    }

    else
    {
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x2020000000;
      v45 = 0;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __79___WTTextPlaceholderController__visualRectsForRects_containerBounds_caretRect___block_invoke;
      v34[3] = &unk_1E8481098;
      v39 = v12;
      v40 = v11;
      v41 = v10;
      v42 = v9;
      v35 = v14;
      v36 = self;
      v38 = v44;
      v43 = v16;
      v17 = v17;
      v37 = v17;
      [v35 enumerateObjectsUsingBlock:v34];

      _Block_object_dispose(v44, 8);
    }
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (void)_beginShowingShimmerHighlightsWithCaretRect:(CGRect)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v4 = [self->_delegate textInputView];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->_delegate;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  v6 = [(UITextPlaceholder *)self->_placeholder rects];
  [v5 bounds];
  v7 = [_WTTextPlaceholderController _visualRectsForRects:"_visualRectsForRects:containerBounds:caretRect:" containerBounds:v6 caretRect:?];

  Mutable = CGPathCreateMutable();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        [v14 rect];
        if (!CGRectIsEmpty(v44))
        {
          [v14 rect];
          v16 = v15 * 0.5;
          if (v15 * 0.5 < 0.0)
          {
            v16 = -(v15 * 0.5);
          }

          if (v16 <= 4.0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 4.0;
          }

          [v14 rect];
          v19 = v18 * 0.5;
          if (v18 * 0.5 < 0.0)
          {
            v19 = -(v18 * 0.5);
          }

          if (v19 <= 4.0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 4.0;
          }

          [v14 rect];
          CGPathAddRoundedRect(Mutable, 0, v45, v17, v20);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);
  }

  v21 = [[_WTTextPreview alloc] initWithContentPath:Mutable];
  textPreview = self->_textPreview;
  self->_textPreview = v21;

  CGPathRelease(Mutable);
  v23 = [[_WTTextEffectView alloc] initWithAsyncSource:self];
  [v5 bounds];
  [(_WTTextEffectView *)v23 setFrame:?];
  objc_storeStrong(&self->_effectView, v23);
  [v5 addSubview:self->_effectView];
  v24 = [[_WTTextRangeChunk alloc] initWithRange:0, 1];
  v25 = [v5 _WTIsDarkMode];
  v26 = 0.75;
  if (v25)
  {
    v26 = 0.5;
  }

  v27 = [MEMORY[0x1E69DC888] colorWithWhite:v26 alpha:{1.0, v38}];
  v28 = [[_WTSweepTextEffect alloc] initWithChunk:v24 effectView:v23];
  ponderingEffect = self->_ponderingEffect;
  self->_ponderingEffect = v28;

  [(_WTTextEffect *)self->_ponderingEffect setHidesOriginal:0];
  v30 = [v9 firstObject];
  [v30 rect];
  [(_WTSweepTextEffect *)self->_ponderingEffect setLineSize:v31, v32];

  v33 = [MEMORY[0x1E69DC888] clearColor];
  [(_WTSweepTextEffect *)self->_ponderingEffect setAnimateFromColor:v33];

  [(_WTSweepTextEffect *)self->_ponderingEffect setBaseFillColor:v27];
  v34 = [[_WTReplaceTextEffect alloc] initWithChunk:v24 effectView:v23];
  replaceTextEffect = self->_replaceTextEffect;
  self->_replaceTextEffect = v34;

  [(_WTReplaceTextEffect *)self->_replaceTextEffect setAnimateRemovalWhenDone:0];
  [(_WTTextEffect *)self->_replaceTextEffect setHidesOriginal:0];
  [(_WTTextEffect *)self->_replaceTextEffect setInvalidationDelay:0.5];
  v36 = [(_WTTextEffectView *)self->_effectView addEffect:self->_ponderingEffect];
  ponderingEffectUUID = self->_ponderingEffectUUID;
  self->_ponderingEffectUUID = v36;
}

- (void)textPreviewsForChunk:(id)a3 completion:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = self->_textPreview;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:v8 count:1];
  (*(a4 + 2))(v6, v7);
}

- (void)updateIsTextVisible:(BOOL)a3 forChunk:(id)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5);
  }
}

- (void)endPlaceholderAndWillInsertText:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    v7 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke;
    v16[3] = &unk_1E8480F88;
    v8 = &v17;
    objc_copyWeak(&v17, &location);
    v16[4] = v6;
    [(_WTTextPlaceholderController *)self _endShowingShimmerHighlightsWithCompletion:v16];
LABEL_6:
    v9 = (v7 + 4);
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_5;
    v10[3] = &unk_1E8480F88;
    v8 = &v11;
    objc_copyWeak(&v11, &location);
    v10[4] = v6;
    [(_WTTextPlaceholderController *)self _endShowingShimmerHighlightsWithCompletion:v10];
    goto LABEL_6;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_2;
  v12[3] = &unk_1E84810C0;
  v8 = &v14;
  objc_copyWeak(&v14, &location);
  v15 = a3;
  v13 = v6;
  [(_WTTextPlaceholderController *)self _endShowingShimmerHighlightsWithCompletion:v12];
  v9 = &v13;
LABEL_7:

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)_endShowingShimmerHighlightsWithCompletion:(id)a3
{
  v4 = a3;
  effectView = self->_effectView;
  if (effectView && [(_WTTextEffectView *)effectView hasActiveEffects])
  {
    if (v4)
    {
      os_unfair_lock_lock(&self->_completionLock);
      completionHandlers = self->_completionHandlers;
      v7 = MEMORY[0x1DA6D90E0](v4);
      [(NSMutableArray *)completionHandlers addObject:v7];

      os_unfair_lock_unlock(&self->_completionLock);
    }

    if (!self->_replaceEffectUUID || ![(_WTTextEffectView *)self->_effectView hasActiveEffect:?])
    {
      v8 = [(_WTTextEffectView *)self->_effectView removeEffect:self->_ponderingEffectUUID];
      v9 = [(_WTTextEffectView *)self->_effectView addEffect:self->_replaceTextEffect];
      replaceEffectUUID = self->_replaceEffectUUID;
      self->_replaceEffectUUID = v9;

      ponderingEffectUUID = self->_ponderingEffectUUID;
      self->_ponderingEffectUUID = 0;

      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __75___WTTextPlaceholderController__endShowingShimmerHighlightsWithCompletion___block_invoke;
      v12[3] = &unk_1E8480B20;
      objc_copyWeak(&v13, &location);
      [(_WTReplaceTextEffect *)self->_replaceTextEffect setCompletion:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

@end