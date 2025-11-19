@interface _UITextKit2LayoutController
+ (BOOL)coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled;
- (CGRect)boundingRectForCharacterRange:(_NSRange)a3;
- (CGRect)boundingRectForRange:(id)a3;
- (CGRect)extraLineFragmentRect;
- (CGRect)insertionRectForPosition:(id)a3 typingAttributes:(id)a4 placeholderAttachment:(id)a5 textContainer:(id *)a6;
- (CGRect)unionRectForCharacterRange:(_NSRange)a3 bottomInset:(double)a4;
- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)a3;
- (CGRect)usedRectForTextContainer:(id)a3;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)documentRange;
- (_NSRange)characterRangeForTextRange:(id)a3;
- (_NSRange)characterRangeForTextRange:(id)a3 clippedToDocument:(BOOL)a4;
- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)a3 type:(int64_t)a4;
- (_UITextKit2LayoutController)initWithTextView:(id)a3 textContainer:(id)a4;
- (_UITextKit2LayoutController)initWithTextView:(id)a3 textContentStorage:(id)a4 textContainer:(id)a5;
- (double)baselineOffsetForFirstGlyph;
- (id)_locationWithOffset:(int64_t)a3;
- (id)_rangeForCharacterRange:(_NSRange)a3;
- (id)_updateSelectionWithTextRange:(id)a3 affinity:(int64_t)a4 typingAttributes:(id)a5;
- (id)_visualSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6;
- (id)_writingToolsMinimumContextualRangeForRange:(id)a3;
- (id)annotatedSubstringForRange:(id)a3;
- (id)annotationAttribute:(id)a3 atPosition:(id)a4;
- (id)attributedTextInRange:(id)a3;
- (id)attributesAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)characterRangesForTextRange:(id)a3 clippedToDocument:(BOOL)a4;
- (id)cursorPositionAtPoint:(CGPoint)a3 inContainer:(id)a4;
- (id)dequeueCanvasViewForTextContainer:(id)a3;
- (id)emptyTextRangeAtPosition:(id)a3;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 affinity:(int64_t)a6 anchorPositionOffset:(double)a7;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4 affinity:(int64_t)a5;
- (id)positionWithOffset:(int64_t)a3 affinity:(int64_t)a4;
- (id)previewRendererForRange:(id)a3 unifyRects:(BOOL)a4;
- (id)searchableObject;
- (id)selectionRectsForRange:(id)a3 fromView:(id)a4 forContainerPassingTest:(id)a5;
- (id)textContainerForPosition:(id)a3;
- (id)textLayoutManager:(id)a3 renderingAttributesForLink:(id)a4 atLocation:(id)a5 defaultAttributes:(id)a6;
- (id)textRangeForBounds:(CGRect)a3 inTextContainer:(id)a4 layoutIfNeeded:(BOOL)a5;
- (id)textRangeForCharacterRange:(_NSRange)a3;
- (id)textRangeForCharacterRanges:(id)a3;
- (id)textRangeForLineEnclosingPosition:(id)a3;
- (id)textRangeForLineEnclosingPosition:(id)a3 effectiveAffinity:(int64_t)a4;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (id)viewportRangeForTextContainer:(id)a3;
- (int64_t)baseWritingDirectionAtPosition:(id)a3;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (void)_invalidateTemporaryAttributesInRange:(id)a3;
- (void)_textContentStorageAddedUnsupportedAttribute:(id)a3;
- (void)addAnnotationAttribute:(id)a3 value:(id)a4 forRange:(id)a5;
- (void)addGhostedRange:(id)a3;
- (void)addInvisibleRange:(id)a3;
- (void)addRenderingAttributes:(id)a3 forRange:(id)a4;
- (void)dealloc;
- (void)ensureLayoutForBounds:(CGRect)a3 inTextContainer:(id)a4;
- (void)ensureLayoutForRange:(id)a3;
- (void)ensureLayoutForTextContainer:(id)a3;
- (void)enumerateTextLineFragmentsInRange:(id)a3 usingBlock:(id)a4;
- (void)enumerateTextSegmentsInRange:(id)a3 inTextContainer:(id)a4 usingBlock:(id)a5;
- (void)invalidateLayoutForRange:(id)a3;
- (void)removeAnnotationAttribute:(id)a3 forRange:(id)a4;
- (void)removeRenderingAttributes:(id)a3 forRange:(id)a4;
- (void)requestTextGeometryAtPosition:(id)a3 typingAttributes:(id)a4 resultBlock:(id)a5;
- (void)resetTextViewportLayoutControllerLayoutForPosition:(id)a3;
- (void)setDocumentObscured:(BOOL)a3;
- (void)setEditable:(BOOL)a3;
- (void)setUnobscuredRange:(id)a3;
@end

@implementation _UITextKit2LayoutController

- (UITextPosition)beginningOfDocument
{
  v3 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v4 = [v3 location];

  v5 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v4 affinity:0];

  return v5;
}

- (UITextRange)documentRange
{
  v7[1] = *MEMORY[0x1E69E9840];
  textContentStorage = self->_textContentStorage;
  v3 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v4 affinity:0];

  return v5;
}

- (double)baselineOffsetForFirstGlyph
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  if (([v3 isEmpty] & 1) == 0)
  {
    v4 = [off_1E70ECBF0 alloc];
    v5 = [v3 location];
    v6 = [v4 initWithLocation:v5];

    textLayoutManager = self->_textLayoutManager;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58___UITextKit2LayoutController_baselineOffsetForFirstGlyph__block_invoke;
    v10[3] = &unk_1E710A9E8;
    v10[4] = &v11;
    [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v6 type:0 options:0 usingBlock:v10];
  }

  v8 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v8;
}

+ (BOOL)coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled
{
  if (coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_onceToken != -1)
  {
    dispatch_once(&coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_onceToken, &__block_literal_global_270);
  }

  return coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled_coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled;
}

- (id)searchableObject
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v3 = [WeakRetained searchableObject];

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*off_1E70ECA18 object:0];

  v4.receiver = self;
  v4.super_class = _UITextKit2LayoutController;
  [(_UITextKit2LayoutController *)&v4 dealloc];
}

- (UITextPosition)endOfDocument
{
  v3 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v4 = [v3 endLocation];

  v5 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v4 affinity:0];

  return v5;
}

- (CGRect)extraLineFragmentRect
{
  v3 = [off_1E70ECBF0 alloc];
  v4 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v5 = [v4 endLocation];
  v6 = [v3 initWithLocation:v5];

  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = "";
  v7 = *(MEMORY[0x1E695F058] + 16);
  v22 = *MEMORY[0x1E695F058];
  v23 = v7;
  textLayoutManager = self->_textLayoutManager;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52___UITextKit2LayoutController_extraLineFragmentRect__block_invoke;
  v17[3] = &unk_1E710A9E8;
  v17[4] = &v18;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v6 type:0 options:13 usingBlock:v17];
  v9 = v19[4];
  v10 = v19[5];
  v11 = v19[6];
  v12 = v19[7];
  _Block_object_dispose(&v18, 8);

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (_UITextKit2LayoutController)initWithTextView:(id)a3 textContentStorage:(id)a4 textContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = _UITextKit2LayoutController;
  v11 = [(_UITextKit2LayoutController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_textView, v8);
    v13 = objc_alloc_init(off_1E70ECBD8);
    textLayoutManager = v12->_textLayoutManager;
    v12->_textLayoutManager = v13;

    [(NSTextLayoutManager *)v12->_textLayoutManager setTextContainer:v10];
    [(NSTextLayoutManager *)v12->_textLayoutManager setDelegate:v12];
    if (objc_opt_respondsToSelector())
    {
      v15 = v12->_textLayoutManager;
      WeakRetained = objc_loadWeakRetained(&v12->_textView);
      -[NSTextLayoutManager setBreaksLinesForInteractiveText:](v15, "setBreaksLinesForInteractiveText:", [WeakRetained isEditable]);
    }

    objc_storeStrong(&v12->_textContentStorage, a4);
    [(NSTextContentStorage *)v12->_textContentStorage addTextLayoutManager:v12->_textLayoutManager];
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v12 selector:sel__textContentStorageAddedUnsupportedAttribute_ name:*off_1E70ECA18 object:v12->_textContentStorage];

    v18 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    textCanvasViews = v12->_textCanvasViews;
    v12->_textCanvasViews = v18;
  }

  return v12;
}

- (_UITextKit2LayoutController)initWithTextView:(id)a3 textContainer:(id)a4
{
  v7 = a3;
  v8 = [a4 textLayoutManager];
  v27.receiver = self;
  v27.super_class = _UITextKit2LayoutController;
  v9 = [(_UITextKit2LayoutController *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_textView, v7);
    objc_storeStrong(&v10->_textLayoutManager, v8);
    v11 = [(NSTextLayoutManager *)v10->_textLayoutManager delegate];

    if (!v11)
    {
      [(NSTextLayoutManager *)v10->_textLayoutManager setDelegate:v10];
    }

    v12 = [v8 textContentManager];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:
        textContentStorage = v10->_textContentStorage;
        v10->_textContentStorage = v12;

        v14 = [MEMORY[0x1E696AD88] defaultCenter];
        [v14 addObserver:v10 selector:sel__textContentStorageAddedUnsupportedAttribute_ name:*off_1E70ECA18 object:v10->_textContentStorage];

        v15 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        textCanvasViews = v10->_textCanvasViews;
        v10->_textCanvasViews = v15;

        goto LABEL_7;
      }

      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v20 = NSStringFromClass(v21);
      v22 = MEMORY[0x1E696AEC0];
      v23 = v12;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

      [v18 handleFailureInMethod:a2 object:v10 file:@"_UITextKit2LayoutController.m" lineNumber:114 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"textLayoutManager.textContentManager", v20, v26}];
    }

    else
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [v18 handleFailureInMethod:a2 object:v10 file:@"_UITextKit2LayoutController.m" lineNumber:114 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"textLayoutManager.textContentManager", v20}];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

- (id)_locationWithOffset:(int64_t)a3
{
  v4 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v5 = [v4 documentRange];
  v6 = [v5 location];

  v7 = [v4 locationFromLocation:v6 withOffset:a3];

  return v7;
}

- (id)_rangeForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v6 = [v5 documentRange];
  v7 = [v6 location];
  v8 = [v5 locationFromLocation:v7 withOffset:location];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 endLocation];
  }

  v11 = v10;

  v12 = [v5 locationFromLocation:v11 withOffset:length];
  v13 = [[off_1E70ECBF0 alloc] initWithLocation:v11 endLocation:v12];

  return v13;
}

- (id)_updateSelectionWithTextRange:(id)a3 affinity:(int64_t)a4 typingAttributes:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [[off_1E70ECBF8 alloc] initWithRange:v8 affinity:a4 == 0 granularity:0];
    [v10 setTypingAttributes:v9];
    v18[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(NSTextLayoutManager *)self->_textLayoutManager setTextSelections:v11];

    v12 = [v10 textRanges];
    v13 = [v12 firstObject];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *v17 = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "textRange argument should not be nil.", v17, 2u);
      }
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_updateSelectionWithTextRange_affinity_typingAttributes____s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "textRange argument should not be nil.", v17, 2u);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (id)viewportRangeForTextContainer:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSTextLayoutManager *)self->_textLayoutManager viewportRangeForTextContainer:a3];
  v5 = v4;
  if (v4)
  {
    textContentStorage = self->_textContentStorage;
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v7 affinity:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)emptyTextRangeAtPosition:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [(_UITextKit2LayoutController *)self beginningOfDocument];
  }

  v5 = [off_1E70ECBF0 alloc];
  v6 = [v4 location];
  v7 = [v5 initWithLocation:v6];

  textContentStorage = self->_textContentStorage;
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v9 affinity:0];

  return v10;
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [(_UITextKit2LayoutController *)self beginningOfDocument];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v9 = v7;
LABEL_3:
  v10 = [v7 location];
  v11 = [v9 location];
  v12 = [v10 compare:v11];
  if (v12 == 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v12 != 1)
  {
    v10 = v11;
  }

  v14 = [[off_1E70ECBF0 alloc] initWithLocation:v13 endLocation:v10];
  if (!v14)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITextKit2LayoutController.m" lineNumber:238 description:{@"couldn't create text range with %@ and %@.", v7, v9}];
  }

  textContentStorage = self->_textContentStorage;
  v20[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = +[_UITextKitTextRange rangeWithTextContentManager:textRanges:startAffinity:endAffinity:](_UITextKitTextRange, "rangeWithTextContentManager:textRanges:startAffinity:endAffinity:", textContentStorage, v16, [v7 affinity], objc_msgSend(v9, "affinity"));

  return v17;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4 affinity:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    if (!v8)
    {
      v9 = [(_UITextKit2LayoutController *)self beginningOfDocument];
    }

    v10 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
    v11 = [v9 location];
    v12 = [v10 locationFromLocation:v11 withOffset:a4];

    if (v12)
    {
      v13 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v12 affinity:a5];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v9 = v8;
    v13 = v9;
  }

  return v13;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5 affinity:(int64_t)a6 anchorPositionOffset:(double)a7
{
  v12 = a3;
  v13 = [v12 location];
  v14 = [[off_1E70ECBF8 alloc] initWithLocation:v13 affinity:{objc_msgSend(v12, "affinity") == 0}];
  [v14 setAnchorPositionOffset:a7];
  if ((a4 - 2) >= 4)
  {
    v15 = 3;
  }

  else
  {
    v15 = a4;
  }

  v16 = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
  if (a5 < 1)
  {
    v17 = v14;
  }

  else
  {
    do
    {
      v17 = [v16 destinationSelectionForTextSelection:v14 direction:v15 destination:0 extending:0 confined:0];

      v14 = v17;
      --a5;
    }

    while (a5);
  }

  v18 = [v17 textRanges];
  if ([v18 count] == 1)
  {
    v19 = [v17 textRanges];
    v20 = [v19 firstObject];
    v21 = [v20 isEmpty];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v17 affinity];
  v23 = [v17 textRanges];
  v24 = v23;
  if (v22)
  {
    v25 = [v23 lastObject];
    [v25 endLocation];
  }

  else
  {
    v25 = [v23 firstObject];
    [v25 location];
  }
  v26 = ;

  if (v21)
  {
    a6 = [v17 affinity] == 0;
  }

  if (v26)
  {
    v27 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v26 affinity:a6];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)textRangeForLineEnclosingPosition:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit2LayoutController *)self textRangeForLineEnclosingPosition:v4 effectiveAffinity:[(_UITextKit2LayoutController *)self affinityForPosition:v4]];

  return v5;
}

- (id)textRangeForLineEnclosingPosition:(id)a3 effectiveAffinity:(int64_t)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v6 = [(_UITextKit2LayoutController *)self beginningOfDocument];
  }

  v35 = v6;
  v7 = [v6 location];
  v32 = self;
  v8 = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
  v9 = a4 == 0;
  v10 = [[off_1E70ECBF8 alloc] initWithLocation:v7 affinity:v9];
  v11 = [v8 destinationSelectionForTextSelection:v10 direction:1 destination:2 extending:0 confined:1];
  v33 = v10;
  v34 = v8;
  v12 = [v8 destinationSelectionForTextSelection:v10 direction:0 destination:2 extending:0 confined:1];
  v13 = [v11 textRanges];
  v14 = [v13 firstObject];
  v15 = [v14 location];

  v16 = [v12 textRanges];
  v17 = [v16 lastObject];
  v18 = [v17 endLocation];

  v19 = [v11 affinity];
  v20 = [v12 affinity];
  if (v15)
  {
    v21 = v18 == 0;
  }

  else
  {
    v21 = 1;
  }

  v31 = v7;
  if (v21)
  {
    v22 = [[off_1E70ECBF0 alloc] initWithLocation:v7];
    v23 = v9;
  }

  else
  {
    v24 = v20;
    v25 = [v15 compare:v18];
    if (v25 == 1)
    {
      v26 = v15;
    }

    else
    {
      v26 = v18;
    }

    if (v25 == 1)
    {
      v9 = v24;
    }

    else
    {
      v9 = v19;
    }

    if (v25 == 1)
    {
      v23 = v19;
    }

    else
    {
      v23 = v24;
    }

    if (v25 == 1)
    {
      v15 = v18;
    }

    v22 = [[off_1E70ECBF0 alloc] initWithLocation:v15 endLocation:v26];
    v18 = v26;
  }

  textContentStorage = v32->_textContentStorage;
  v36[0] = v22;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v29 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v28 startAffinity:!v9 endAffinity:v23 == 0];

  return v29;
}

- (id)_visualSelectionRangeForExtent:(id)a3 forPoint:(CGPoint)a4 fromPosition:(id)a5 inDirection:(int64_t)a6
{
  y = a4.y;
  x = a4.x;
  v38[1] = *MEMORY[0x1E69E9840];
  textLayoutManager = self->_textLayoutManager;
  v12 = a5;
  v13 = a3;
  v14 = [(NSTextLayoutManager *)textLayoutManager textSelectionNavigation];
  v15 = [v12 location];

  v16 = [[off_1E70ECBF8 alloc] initWithLocation:v15 affinity:a6 == 0];
  v17 = [v13 location];

  v18 = [(NSTextLayoutManager *)self->_textLayoutManager textContainerForLocation:v17];
  v19 = *MEMORY[0x1E695EFF8];
  v20 = *(MEMORY[0x1E695EFF8] + 8);
  [v18 size];
  v22 = v21;
  v24 = v23;
  [v18 textContainerOrigin];
  v26 = fmax(x - v25, 0.0);
  v28 = fmax(y - v27, 0.0);
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  if (!WeakRetained)
  {
    v28 = 0.0;
  }

  v38[0] = v16;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v31 = [v14 textSelectionsInteractingAtPoint:v17 inContainerAtLocation:v30 anchors:1 modifiers:1 selecting:v26 bounds:{v28, v19, v20, v22, v24}];

  v32 = [MEMORY[0x1E695DF70] array];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __96___UITextKit2LayoutController__visualSelectionRangeForExtent_forPoint_fromPosition_inDirection___block_invoke;
  v36[3] = &unk_1E710A9C0;
  v33 = v32;
  v37 = v33;
  [v31 enumerateObjectsUsingBlock:v36];
  if ([v33 count])
  {
    v34 = [_UITextKitTextRange rangeWithTextContentManager:self->_textContentStorage textRanges:v33 affinity:a6];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v5 = a4;
  v6 = [a3 location];
  v7 = [v5 location];

  v8 = [v6 compare:v7];
  return v8;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v6 = [(_UITextKit2LayoutController *)self beginningOfDocument];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = v6;
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v10 = [v6 location];
  v11 = [v8 location];
  v12 = [v9 offsetFromLocation:v10 toLocation:v11];

  return v12;
}

- (CGRect)insertionRectForPosition:(id)a3 typingAttributes:(id)a4 placeholderAttachment:(id)a5 textContainer:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v52 = 0;
  v53 = &v52;
  v54 = 0x4010000000;
  v55 = "";
  v13 = *(MEMORY[0x1E695F050] + 16);
  v56 = *MEMORY[0x1E695F050];
  v57 = v13;
  if (!v10)
  {
    v10 = [(_UITextKit2LayoutController *)self beginningOfDocument];
  }

  v14 = v10;
  v15 = [off_1E70ECBF0 alloc];
  v16 = [v14 location];
  v17 = [v15 initWithLocation:v16];

  if ([v14 affinity] == 1)
  {
    v18 = 17;
  }

  else
  {
    v18 = 1;
  }

  v19 = -[_UITextKit2LayoutController _updateSelectionWithTextRange:affinity:typingAttributes:](self, "_updateSelectionWithTextRange:affinity:typingAttributes:", v17, [v14 affinity], v11);

  [(NSTextLayoutManager *)self->_textLayoutManager ui_ensureLayoutForViewportBoundsAtRange:v19];
  textLayoutManager = self->_textLayoutManager;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke;
  v51[3] = &unk_1E710A9E8;
  v51[4] = &v52;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v19 type:1 options:v18 usingBlock:v51];
  if (CGRectIsNull(v53[1]))
  {
    v42 = a6;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__97;
    v49 = __Block_byref_object_dispose__97;
    v50 = 0;
    v21 = self->_textLayoutManager;
    v22 = [v19 location];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke_76;
    v44[3] = &unk_1E710AA10;
    v44[4] = &v45;
    v23 = [(NSTextLayoutManager *)v21 enumerateTextLayoutFragmentsFromLocation:v22 options:1 usingBlock:v44];

    v24 = v46[5];
    if (v24)
    {
      v25 = self->_textLayoutManager;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke_2;
      v43[3] = &unk_1E710A9E8;
      v43[4] = &v52;
      [(NSTextLayoutManager *)v25 enumerateTextSegmentsInRange:v24 type:1 options:v18 usingBlock:v43];
    }

    _Block_object_dispose(&v45, 8);

    a6 = v42;
  }

  if (!CGRectIsNull(v53[1]))
  {
    v26 = self->_textLayoutManager;
    v27 = [v14 location];
    v28 = [(NSTextLayoutManager *)v26 textContainerForLocation:v27];

    v29 = [v28 layoutOrientation];
    v30 = v53;
    v31 = 40;
    if (!v29)
    {
      v31 = 32;
    }

    v32 = 56;
    if (!v29)
    {
      v32 = 48;
    }

    *(&v53->origin.x + v31) = *(&v53->origin.x + v31) + -1.0;
    *(&v30->origin.x + v32) = 2.0;
    if (a6)
    {
      v33 = v28;
      *a6 = v28;
    }
  }

  x = v53[1].origin.x;
  y = v53[1].origin.y;
  width = v53[1].size.width;
  height = v53[1].size.height;

  _Block_object_dispose(&v52, 8);
  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (id)textRangeForBounds:(CGRect)a3 inTextContainer:(id)a4 layoutIfNeeded:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  v11 = [(NSMapTable *)self->_textCanvasViews objectForKey:a4];
  v12 = [v11 textRangeForBounds:v5 layoutIfNeeded:{x, y, width, height}];
  textContentStorage = self->_textContentStorage;
  v17[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v14 affinity:0];

  return v15;
}

- (id)attributesAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v7 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__97;
  v25 = __Block_byref_object_dispose__97;
  v26 = 0;
  v8 = [v7 location];
  v9 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64___UITextKit2LayoutController_attributesAtPosition_inDirection___block_invoke;
  v15[3] = &unk_1E710AA38;
  v19 = a2;
  v15[4] = self;
  v10 = v9;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v18 = &v21;
  v20 = a4;
  v12 = [v10 enumerateTextElementsFromLocation:v11 options:0 usingBlock:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (int64_t)baseWritingDirectionAtPosition:(id)a3
{
  textLayoutManager = self->_textLayoutManager;
  v4 = [a3 location];
  v5 = [(NSTextLayoutManager *)textLayoutManager baseWritingDirectionAtLocation:v4];

  return v5;
}

- (void)enumerateTextLineFragmentsInRange:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = self->_textLayoutManager;
  v8 = [a3 unionTextRange];
  v9 = [v8 location];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76___UITextKit2LayoutController_enumerateTextLineFragmentsInRange_usingBlock___block_invoke;
  v14[3] = &unk_1E710AA60;
  v15 = v8;
  v16 = v7;
  v17 = self;
  v18 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = [(NSTextLayoutManager *)v11 enumerateTextLayoutFragmentsFromLocation:v9 options:4 usingBlock:v14];
}

- (void)enumerateTextSegmentsInRange:(id)a3 inTextContainer:(id)a4 usingBlock:(id)a5
{
  v7 = a5;
  textLayoutManager = self->_textLayoutManager;
  v9 = [a3 unionTextRange];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87___UITextKit2LayoutController_enumerateTextSegmentsInRange_inTextContainer_usingBlock___block_invoke;
  v11[3] = &unk_1E710AA88;
  v12 = v7;
  v10 = v7;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v9 type:0 options:1 usingBlock:v11];
}

- (id)selectionRectsForRange:(id)a3 fromView:(id)a4 forContainerPassingTest:(id)a5
{
  v8 = a3;
  v27 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = -1;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v12 = v8;
  v13 = [v12 textKit2Ranges];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke;
  v37[3] = &unk_1E710AAD8;
  v42 = v48;
  v37[4] = self;
  v14 = v11;
  v38 = v14;
  v15 = v9;
  v41 = v15;
  v16 = v12;
  v39 = v16;
  v43 = &v53;
  v17 = v10;
  v40 = v17;
  v44 = &v49;
  v45 = v47;
  v46 = xmmword_18A6507C0;
  [v13 enumerateObjectsUsingBlock:v37];

  if ([v17 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_3;
    v31 = &unk_1E710AB00;
    v32 = v14;
    v33 = v27;
    v35 = v48;
    v36 = v47;
    v19 = v18;
    v34 = v19;
    [v17 enumerateObjectsUsingBlock:&v28];
    if ([v19 count])
    {
      v20 = v54[3];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0;
        v54[3] = 0;
      }

      if (v50[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = [v19 count];
        v50[3] = v21 - 1;
        v20 = v54[3];
      }

      v22 = [v19 objectAtIndexedSubscript:{v20, v27, v28, v29, v30, v31, v32, v33}];
      [v22 setContainsStart:1];

      v23 = [v19 objectAtIndexedSubscript:v50[3]];
      [v23 setContainsEnd:1];
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = MEMORY[0x1E695E0F0];
  if (v19)
  {
    v24 = v19;
  }

  v25 = v24;

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  return v25;
}

- (id)cursorPositionAtPoint:(CGPoint)a3 inContainer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(NSTextLayoutManager *)self->_textLayoutManager textContainers];
  v9 = [v8 indexOfObject:v7];

  v10 = [(NSTextLayoutManager *)self->_textLayoutManager rangeForTextContainerAtIndex:v9];
  v11 = [v10 location];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_textView);
    [v13 _convertPointFromRenderSpace:{x, y}];
    x = v14;
    y = v15;
  }

  v16 = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  [v7 size];
  v21 = [v16 textSelectionsInteractingAtPoint:v11 inContainerAtLocation:MEMORY[0x1E695E0F0] anchors:0 modifiers:1 selecting:x bounds:{y, v17, v18, v19, v20}];
  v22 = [v21 firstObject];
  v23 = [v22 textRanges];
  v24 = [v23 firstObject];

  v25 = [v22 affinity];
  if (v24)
  {
    v26 = v25 == 0;
    textContentStorage = self->_textContentStorage;
    v28 = [v24 location];
    v29 = [_UITextKitTextPosition positionWithTextContentManager:textContentStorage location:v28 affinity:v26];
  }

  else
  {
    v29 = [(_UITextKit2LayoutController *)self endOfDocument];
  }

  return v29;
}

- (void)_invalidateTemporaryAttributesInRange:(id)a3
{
  textCanvasViews = self->_textCanvasViews;
  v4 = a3;
  v5 = NSAllMapTableValues(textCanvasViews);
  [v5 makeObjectsPerformSelector:sel_invalidateTemporaryAttributesInRange_ withObject:v4];
}

- (void)addAnnotationAttribute:(id)a3 value:(id)a4 forRange:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 textKit2Ranges];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69___UITextKit2LayoutController_addAnnotationAttribute_value_forRange___block_invoke;
  v14[3] = &unk_1E710AB28;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 enumerateObjectsUsingBlock:v14];

  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:v10];
}

- (id)annotationAttribute:(id)a3 atPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__97;
  v20 = __Block_byref_object_dispose__97;
  v21 = 0;
  textLayoutManager = self->_textLayoutManager;
  v9 = [v7 location];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62___UITextKit2LayoutController_annotationAttribute_atPosition___block_invoke;
  v13[3] = &unk_1E710AB50;
  v15 = &v16;
  v10 = v6;
  v14 = v10;
  [(NSTextLayoutManager *)textLayoutManager enumerateTemporaryAttributesFromLocation:v9 reverse:0 usingBlock:v13];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)removeAnnotationAttribute:(id)a3 forRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 textKit2Ranges];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __66___UITextKit2LayoutController_removeAnnotationAttribute_forRange___block_invoke;
  v13 = &unk_1E710AB78;
  v14 = self;
  v15 = v6;
  v9 = v6;
  [v8 enumerateObjectsUsingBlock:&v10];

  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:v7, v10, v11, v12, v13, v14];
}

- (void)addRenderingAttributes:(id)a3 forRange:(id)a4
{
  v6 = a4;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __63___UITextKit2LayoutController_addRenderingAttributes_forRange___block_invoke;
  v11 = &unk_1E70F3898;
  v12 = v6;
  v13 = self;
  v7 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:&v8];
  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:v7, v8, v9, v10, v11];
}

- (void)removeRenderingAttributes:(id)a3 forRange:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [v7 textKit2Ranges];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __66___UITextKit2LayoutController_removeRenderingAttributes_forRange___block_invoke;
        v15[3] = &unk_1E710AB78;
        v15[4] = self;
        v15[5] = v12;
        [v13 enumerateObjectsUsingBlock:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:v7];
}

- (void)addGhostedRange:(id)a3
{
  v4 = a3;
  ghostedRanges = self->_ghostedRanges;
  v8 = v4;
  if (!ghostedRanges)
  {
    v6 = objc_opt_new();
    v7 = self->_ghostedRanges;
    self->_ghostedRanges = v6;

    v4 = v8;
    ghostedRanges = self->_ghostedRanges;
  }

  [(NSMutableSet *)ghostedRanges addObject:v4];
}

- (void)addInvisibleRange:(id)a3
{
  v4 = a3;
  invisibleRanges = self->_invisibleRanges;
  v8 = v4;
  if (!invisibleRanges)
  {
    v6 = objc_opt_new();
    v7 = self->_invisibleRanges;
    self->_invisibleRanges = v6;

    v4 = v8;
    invisibleRanges = self->_invisibleRanges;
  }

  [(NSMutableSet *)invisibleRanges addObject:v4];
}

- (void)setDocumentObscured:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    textContentStorage = self->_textContentStorage;
  }

  else
  {
    textContentStorage = 0;
  }

  v7 = textContentStorage;

  [(NSTextContentStorage *)v7 setObscured:v3];
}

- (void)setUnobscuredRange:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UITextKit2LayoutController;
  [(_UITextLayoutControllerBase *)&v10 setUnobscuredRange:a3];
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    textContentStorage = self->_textContentStorage;
  }

  else
  {
    textContentStorage = 0;
  }

  v6 = textContentStorage;

  v7 = [(_UITextLayoutControllerBase *)self unobscuredRange];
  v8 = [(_UITextKit2LayoutController *)self characterRangeForTextRange:v7];
  [(NSTextContentStorage *)v6 setUnobscuredRange:v8, v9];
}

- (void)setEditable:(BOOL)a3
{
  if (self->_editable != a3)
  {
    v3 = a3;
    self->_editable = a3;
    if (objc_opt_respondsToSelector())
    {
      textLayoutManager = self->_textLayoutManager;

      [(NSTextLayoutManager *)textLayoutManager setBreaksLinesForInteractiveText:v3];
    }
  }
}

- (id)attributedTextInRange:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v5;
  v8 = [v7 unionTextRange];
  v9 = [v8 location];

  v10 = [v7 unionTextRange];

  v11 = [v10 endLocation];

  v12 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53___UITextKit2LayoutController_attributedTextInRange___block_invoke;
  v21[3] = &unk_1E710ABA0;
  v26 = a2;
  v21[4] = self;
  v22 = v9;
  v23 = v12;
  v24 = v11;
  v13 = v6;
  v25 = v13;
  v14 = v11;
  v15 = v12;
  v16 = v9;
  v17 = [v15 enumerateTextElementsFromLocation:v16 options:0 usingBlock:v21];
  v18 = v25;
  v19 = v13;

  return v13;
}

- (id)annotatedSubstringForRange:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit2LayoutController *)self attributedTextInRange:v4];
  v6 = [v5 mutableCopy];

  [v6 removeAttribute:*off_1E70EC9B0 range:{0, objc_msgSend(v6, "length")}];
  v7 = [v4 unionTextRange];

  v8 = [v7 location];
  textLayoutManager = self->_textLayoutManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58___UITextKit2LayoutController_annotatedSubstringForRange___block_invoke;
  v16[3] = &unk_1E710ABC8;
  v17 = v7;
  v18 = v8;
  v10 = v6;
  v19 = v10;
  v11 = v8;
  v12 = v7;
  [(NSTextLayoutManager *)textLayoutManager enumerateTemporaryAttributesFromLocation:v11 reverse:0 usingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (id)_writingToolsMinimumContextualRangeForRange:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__97;
  v28 = __Block_byref_object_dispose__97;
  v29 = 0;
  if (([v6 isEmpty] & 1) == 0)
  {
    v7 = [v5 unionTextRange];
    v8 = [v7 location];

    v9 = [v5 unionTextRange];
    v10 = [v9 endLocation];

    textContentStorage = self->_textContentStorage;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75___UITextKit2LayoutController__writingToolsMinimumContextualRangeForRange___block_invoke;
    v19[3] = &unk_1E710ABF0;
    v19[4] = self;
    v22 = &v24;
    v23 = a2;
    v12 = v8;
    v20 = v12;
    v13 = v10;
    v21 = v13;
    v14 = [(NSTextContentStorage *)textContentStorage enumerateTextElementsFromLocation:v12 options:0 usingBlock:v19];
  }

  v15 = v5;
  if (v25[5])
  {
    v30[0] = v25[5];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v15 = [(_UITextKit2LayoutController *)self textRangeForTextKit2Ranges:v16];
  }

  v17 = v15;
  _Block_object_dispose(&v24, 8);

  return v17;
}

- (void)requestTextGeometryAtPosition:(id)a3 typingAttributes:(id)a4 resultBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = 0;
  v39 = &v38;
  v40 = 0x4010000000;
  v41 = "";
  v12 = *(MEMORY[0x1E695F050] + 16);
  v42 = *MEMORY[0x1E695F050];
  v43 = v12;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v13 = [off_1E70ECBF0 alloc];
  v14 = [v9 location];
  v15 = [v13 initWithLocation:v14];

  textLayoutManager = self->_textLayoutManager;
  v17 = [v15 endLocation];
  v18 = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:v17];

  if (!v18)
  {
    v27 = a2;
    v19 = [(NSTextLayoutManager *)self->_textLayoutManager textContainers];
    if ([v19 count] != 1)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"_UITextKit2LayoutController.m" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"textContainers.count == 1"}];
    }

    v18 = [v19 firstObject];
    v20 = [(NSTextLayoutManager *)self->_textLayoutManager rangeForTextContainerAtIndex:0];

    v21 = [v20 endLocation];
    v15 = [[off_1E70ECBF0 alloc] initWithLocation:v21];

    v22 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v21 affinity:0];

    v9 = v22;
    a2 = v27;
  }

  v23 = [(_UITextKit2LayoutController *)self _updateSelectionWithTextRange:v15 affinity:0 typingAttributes:v10];
  v24 = self->_textLayoutManager;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __90___UITextKit2LayoutController_requestTextGeometryAtPosition_typingAttributes_resultBlock___block_invoke;
  v28[3] = &unk_1E710AC18;
  v25 = v18;
  v29 = v25;
  v30 = self;
  v31 = &v38;
  v32 = &v34;
  v33 = a2;
  [(NSTextLayoutManager *)v24 enumerateTextSegmentsInRange:v15 type:0 options:0 usingBlock:v28];
  v11[2](v11, v25, v9, v39[4], v39[5], v39[6], v39[7], v35[3]);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

- (id)textContainerForPosition:(id)a3
{
  textLayoutManager = self->_textLayoutManager;
  v4 = [a3 location];
  v5 = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:v4];

  return v5;
}

- (id)dequeueCanvasViewForTextContainer:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_textCanvasViews objectForKey:v4];
  if (!v5)
  {
    v5 = [[_UITextLayoutCanvasView alloc] initWithTextLayoutManager:self->_textLayoutManager textContainer:v4];
    [(NSMapTable *)self->_textCanvasViews setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)previewRendererForRange:(id)a3 unifyRects:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [_UITextLayoutPreviewRenderer alloc];
  textLayoutManager = self->_textLayoutManager;
  v9 = [v6 unionTextRange];

  v10 = [(_UITextLayoutPreviewRenderer *)v7 initWithTextLayoutManager:textLayoutManager range:v9 unifyRects:v4];

  return v10;
}

- (void)ensureLayoutForTextContainer:(id)a3
{
  textLayoutManager = self->_textLayoutManager;
  v5 = a3;
  v6 = [(NSTextLayoutManager *)textLayoutManager textContainers];
  v7 = [v6 indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSTextLayoutManager *)self->_textLayoutManager rangeForTextContainerAtIndex:v7];
    if (v8)
    {
      v9 = v8;
      [(NSTextLayoutManager *)self->_textLayoutManager ensureLayoutForRange:v8];
      v8 = v9;
    }
  }
}

- (void)ensureLayoutForBounds:(CGRect)a3 inTextContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  textLayoutManager = self->_textLayoutManager;
  v10 = a4;
  v11 = [(NSTextLayoutManager *)textLayoutManager textContainers];
  v12 = [v11 lastObject];

  if (v12 == v10)
  {
    v13 = self->_textLayoutManager;

    [(NSTextLayoutManager *)v13 ensureLayoutForBounds:x, y, width, height];
  }
}

- (CGRect)usedRectForTextContainer:(id)a3
{
  textLayoutManager = self->_textLayoutManager;
  v5 = a3;
  v6 = [(NSTextLayoutManager *)textLayoutManager textContainers];
  v7 = [v6 lastObject];

  if (v7 == v5)
  {
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    [(NSTextLayoutManager *)self->_textLayoutManager ui_contentSizeForLastContainerView];
    v10 = v12;
    v11 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v8;
  v15 = v9;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit2LayoutController *)self documentRange];
  [(_UITextKit2LayoutController *)self invalidateLayoutForRange:v5];
  [(_UITextKit2LayoutController *)self ensureLayoutForRange:v5];
  [(_UITextKit2LayoutController *)self usedRectForTextContainer:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)ensureLayoutForRange:(id)a3
{
  textLayoutManager = self->_textLayoutManager;
  v4 = [a3 unionTextRange];
  [(NSTextLayoutManager *)textLayoutManager ensureLayoutForRange:v4];
}

- (void)invalidateLayoutForRange:(id)a3
{
  v9 = [a3 unionTextRange];
  [(NSTextLayoutManager *)self->_textLayoutManager invalidateLayoutForRange:?];
  if ([(NSTextLayoutManager *)self->_textLayoutManager usesContiguousLayout])
  {
    v4 = [(NSTextContentStorage *)self->_textContentStorage documentRange];
    v5 = [v4 isEqualToTextRange:v9];

    if (v5)
    {
      textLayoutManager = self->_textLayoutManager;
      v7 = [v9 location];
      v8 = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:v7];
      [(NSTextLayoutManager *)textLayoutManager textContainerChangedGeometry:v8];
    }
  }
}

- (CGRect)boundingRectForRange:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4010000000;
  v29 = "";
  v5 = *(MEMORY[0x1E695F050] + 16);
  v30 = *MEMORY[0x1E695F050];
  v31 = v5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__97;
  v24 = __Block_byref_object_dispose__97;
  v25 = 0;
  textLayoutManager = self->_textLayoutManager;
  v7 = [v4 unionTextRange];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52___UITextKit2LayoutController_boundingRectForRange___block_invoke;
  v19[3] = &unk_1E710AC40;
  v19[4] = &v20;
  v19[5] = &v26;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v7 type:0 options:1 usingBlock:v19];

  v8 = v21[5];
  if (v8)
  {
    [v8 textContainerOrigin];
    v32 = CGRectOffset(v27[1], v9, v10);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v27[1] = v32;
  }

  else
  {
    x = v27[1].origin.x;
    y = v27[1].origin.y;
    width = v27[1].size.width;
    height = v27[1].size.height;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_textContentStorageAddedUnsupportedAttribute:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v5 = [WeakRetained isWritingToolsActive];

  if (v5)
  {
    if (os_variant_has_internal_diagnostics() && ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantRewriteLogging, @"UITextAssistantRewriteLogging") & 1) == 0 && byte_1EA95E17C || (_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UITextAssistantProofreadLogging, @"UITextAssistantProofreadLogging") & 1) == 0 && byte_1EA95E184))
    {
      v6 = *(__UILogGetCategoryCachedImpl("UIWritingToolsCoordinator", &_textContentStorageAddedUnsupportedAttribute____s_category) + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
        v8 = objc_loadWeakRetained(&self->_textView);
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Ignoring unsupported attributes in Writing Tools replacement for %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_textView);
    [v9 _reconfigureWithLayoutManager:0 triggeredByLayoutManagerAccess:0 triggeringSelector:0];
  }
}

- (_NSRange)characterRangeForTextRange:(id)a3
{
  v3 = [(_UITextKit2LayoutController *)self characterRangeForTextRange:a3 clippedToDocument:0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)characterRangeForTextRange:(id)a3 clippedToDocument:(BOOL)a4
{
  v4 = a4;
  textLayoutManager = self->_textLayoutManager;
  v6 = a3;
  v7 = [(NSTextLayoutManager *)textLayoutManager textContentManager];
  v8 = [v7 documentRange];
  v9 = [v6 unionTextRange];

  if (v4)
  {
    v10 = [v9 textRangeByIntersectingWithTextRange:v8];

    v9 = v10;
  }

  if (v9)
  {
    v11 = [v8 location];
    v12 = v9;
    v13 = v7;
    v14 = [v12 location];
    v15 = [v13 offsetFromLocation:v11 toLocation:v14];

    v16 = [v12 endLocation];

    v17 = [v13 offsetFromLocation:v11 toLocation:v16];
    v18 = v17 - v15;
  }

  else
  {
    v15 = 0;
    v18 = 0;
  }

  v19 = v15;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (id)characterRangesForTextRange:(id)a3 clippedToDocument:(BOOL)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v6 = [v32 documentRange];
  v28 = v5;
  v7 = [v5 textKit2Ranges];
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        if (a4)
        {
          v13 = [*(*(&v33 + 1) + 8 * i) textRangeByIntersectingWithTextRange:v6];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = v12;
          }

          v16 = v15;
        }

        else
        {
          v16 = v12;
        }

        v17 = [v6 location];
        v18 = v16;
        v19 = v32;
        v20 = [v18 location];
        v21 = [v19 offsetFromLocation:v17 toLocation:v20];

        v22 = [v18 endLocation];

        v23 = [v19 offsetFromLocation:v17 toLocation:v22];
        v24 = [MEMORY[0x1E696B098] valueWithRange:{v21, v23 - v21}];
        [v31 addObject:v24];
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  if ([v31 count])
  {
    v25 = v31;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  return v25;
}

- (id)textRangeForCharacterRange:(_NSRange)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(_UITextKit2LayoutController *)self _rangeForCharacterRange:a3.location, a3.length];
  textContentStorage = self->_textContentStorage;
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v6 affinity:0];

  return v7;
}

- (id)textRangeForCharacterRanges:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) rangeValue];
        v13 = [(_UITextKit2LayoutController *)self _rangeForCharacterRange:v11, v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [_UITextKitTextRange rangeWithTextContentManager:self->_textContentStorage textRanges:v5 affinity:0];

  return v14;
}

- (id)positionWithOffset:(int64_t)a3 affinity:(int64_t)a4
{
  v6 = [(_UITextKit2LayoutController *)self _locationWithOffset:a3];
  v7 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v6 affinity:a4];

  return v7;
}

- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)a3 type:(int64_t)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = "";
  v21 = a3;
  v22 = 0;
  v8 = [(_UITextKit2LayoutController *)self _locationWithOffset:?];
  if ((a4 - 1) >= 2)
  {
    if (a4 == 3)
    {
      v9 = 2053;
    }

    else if (a4 == 4)
    {
      v9 = 2054;
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"_UITextKit2LayoutController.m" lineNumber:1103 description:{@"Unexpected clusterType = %lu", a4}];

      v9 = 2048;
    }
  }

  else
  {
    v9 = 2050;
  }

  textLayoutManager = self->_textLayoutManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67___UITextKit2LayoutController_rangeOfCharacterClusterAtIndex_type___block_invoke;
  v16[3] = &unk_1E710AC68;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = a3;
  [(NSTextLayoutManager *)textLayoutManager enumerateSubstringsFromLocation:v8 options:v9 usingBlock:v16];
  v12 = v18[4];
  v13 = v18[5];

  _Block_object_dispose(&v17, 8);
  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (CGRect)boundingRectForCharacterRange:(_NSRange)a3
{
  v4 = [(_UITextKit2LayoutController *)self textRangeForCharacterRange:a3.location, a3.length];
  [(_UITextKit2LayoutController *)self boundingRectForRange:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)unionRectForCharacterRange:(_NSRange)a3 bottomInset:(double)a4
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x4010000000;
  v28 = "";
  v6 = *(MEMORY[0x1E695F050] + 16);
  v29 = *MEMORY[0x1E695F050];
  v30 = v6;
  v7 = [(_UITextKit2LayoutController *)self _rangeForCharacterRange:a3.location, a3.length];
  [(NSTextLayoutManager *)self->_textLayoutManager ui_ensureLayoutForViewportBoundsAtRange:v7];
  textLayoutManager = self->_textLayoutManager;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70___UITextKit2LayoutController_unionRectForCharacterRange_bottomInset___block_invoke;
  v24[3] = &unk_1E710A9E8;
  v24[4] = &v25;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v7 type:1 options:3 usingBlock:v24];
  v9 = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v10 = [v9 endLocation];

  v11 = [v7 endLocation];
  v12 = [v11 isEqual:v10];

  if (v12)
  {
    v13 = [[off_1E70ECBF0 alloc] initWithLocation:v10];
    v14 = self->_textLayoutManager;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70___UITextKit2LayoutController_unionRectForCharacterRange_bottomInset___block_invoke_2;
    v23[3] = &unk_1E710AC90;
    v23[4] = &v25;
    *&v23[5] = a4;
    [(NSTextLayoutManager *)v14 enumerateTextSegmentsInRange:v13 type:1 options:3 usingBlock:v23];
  }

  v15 = v26[4];
  v16 = v26[5];
  v17 = v26[6];
  v18 = v26[7];

  _Block_object_dispose(&v25, 8);
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)textLayoutManager:(id)a3 renderingAttributesForLink:(id)a4 atLocation:(id)a5 defaultAttributes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 textContainerForLocation:v12];
  v15 = [v14 textView];

  if (objc_opt_respondsToSelector())
  {
    v16 = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
    v17 = [v16 documentRange];
    v18 = [v17 location];
    v19 = [v15 linkAttributesForLink:v11 forCharacterAtIndex:{objc_msgSend(v10, "offsetFromLocation:toLocation:", v18, v12)}];
  }

  else
  {
    v19 = [v15 linkTextAttributes];
  }

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v13;
  }

  v21 = v20;

  return v20;
}

- (void)resetTextViewportLayoutControllerLayoutForPosition:(id)a3
{
  v8 = a3;
  if (v8 && ([v8 location], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [(NSTextLayoutManager *)self->_textLayoutManager textContainerForLocation:v4];
  }

  else
  {
    v6 = [(NSTextLayoutManager *)self->_textLayoutManager textContainer];
  }

  v7 = [v6 textViewportLayoutController];
  [v7 _resetLayout];
}

@end