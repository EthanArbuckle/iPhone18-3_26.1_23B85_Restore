@interface _UITextKit1LayoutController
- (BOOL)drawsDebugBaselines;
- (CGRect)boundingRectForCharacterRange:(_NSRange)range;
- (CGRect)boundingRectForRange:(id)range;
- (CGRect)extraLineFragmentRect;
- (CGRect)insertionRectForPosition:(id)position typingAttributes:(id)attributes placeholderAttachment:(id)attachment textContainer:(id *)container;
- (CGRect)unionRectForCharacterRange:(_NSRange)range bottomInset:(double)inset;
- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)container;
- (CGRect)usedRectForTextContainer:(id)container;
- (CUIStyleEffectConfiguration)styleEffectConfiguration;
- (NSArray)textContainers;
- (NSLayoutManager)layoutManager;
- (NSLayoutManagerDelegate)layoutManagerDelegate;
- (NSTextStorage)textStorage;
- (UITextPosition)endOfDocument;
- (UITextRange)documentRange;
- (_NSRange)characterRangeForTextRange:(id)range;
- (_NSRange)characterRangeForTextRange:(id)range clippedToDocument:(BOOL)document;
- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)index type:(int64_t)type;
- (double)baselineOffsetForFirstGlyph;
- (id)annotatedSubstringForRange:(id)range;
- (id)annotationAttribute:(id)attribute atPosition:(id)position;
- (id)attributedTextInRange:(id)range;
- (id)attributesAtPosition:(id)position inDirection:(int64_t)direction;
- (id)characterRangesForTextRange:(id)range clippedToDocument:(BOOL)document;
- (id)cursorPositionAtPoint:(CGPoint)point inContainer:(id)container;
- (id)dequeueCanvasViewForTextContainer:(id)container;
- (id)emptyTextRangeAtPosition:(id)position;
- (id)initWithTextView:(void *)view textContainer:;
- (id)initWithTextView:(void *)view textContainer:(void *)container layoutManager:(void *)manager textStorage:;
- (id)nearestPositionAtPoint:(CGPoint)point inContainer:(id)container;
- (id)originalLayoutManager;
- (id)positionFromPosition:(id)position offset:(int64_t)offset affinity:(int64_t)affinity;
- (id)previewRendererForRange:(id)range unifyRects:(BOOL)rects;
- (id)selectionRectsForRange:(id)range fromView:(id)view forContainerPassingTest:(id)test;
- (id)textContainerForPosition:(id)position;
- (id)textRangeForBounds:(CGRect)bounds inTextContainer:(id)container layoutIfNeeded:(BOOL)needed;
- (id)textRangeForCharacterRanges:(id)ranges;
- (id)textRangeForLineEnclosingPosition:(id)position;
- (id)textRangeForLineEnclosingPosition:(id)position effectiveAffinity:(int64_t)affinity;
- (int64_t)baseWritingDirectionAtPosition:(id)position;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (unint64_t)_textStorageLength;
- (void)addAnnotationAttribute:(id)attribute value:(id)value forRange:(id)range;
- (void)addGhostedRange:(id)range;
- (void)addInvisibleRange:(id)range;
- (void)addRenderingAttributes:(id)attributes forRange:(id)range;
- (void)ensureLayoutForBounds:(CGRect)bounds inTextContainer:(id)container;
- (void)ensureLayoutForRange:(id)range;
- (void)ensureLayoutForTextContainer:(id)container;
- (void)enumerateTextLineFragmentsInRange:(id)range usingBlock:(id)block;
- (void)enumerateTextSegmentsInRange:(id)range inTextContainer:(id)container usingBlock:(id)block;
- (void)invalidateDisplayForCharacterRange:(_NSRange)range;
- (void)invalidateLayoutForRange:(id)range;
- (void)removeAnnotationAttribute:(id)attribute forRange:(id)range;
- (void)removeInvisibleRange:(id)range;
- (void)removeRenderingAttributes:(id)attributes forRange:(id)range;
- (void)requestTextGeometryAtPosition:(id)position typingAttributes:(id)attributes resultBlock:(id)block;
- (void)resetFontForExtraBulletRendering;
- (void)setDrawsDebugBaselines:(BOOL)baselines;
- (void)setLayoutManagerDelegate:(id)delegate;
- (void)setStyleEffectConfiguration:(id)configuration;
@end

@implementation _UITextKit1LayoutController

- (id)initWithTextView:(void *)view textContainer:(void *)container layoutManager:(void *)manager textStorage:
{
  v9 = a2;
  viewCopy = view;
  containerCopy = container;
  managerCopy = manager;
  if (self)
  {
    layoutManager = [viewCopy layoutManager];

    if (layoutManager)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithTextView_textContainer_layoutManager_textStorage_ object:self file:@"_UITextKit1LayoutController.m" lineNumber:50 description:@"text container should not already have a layout manager"];
    }

    v21.receiver = self;
    v21.super_class = _UITextKit1LayoutController;
    v14 = objc_msgSendSuper2(&v21, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeWeak(v14 + 5, v9);
      if (containerCopy)
      {
        objc_storeStrong(self + 6, container);
      }

      else
      {
        v15 = objc_alloc_init(off_1E70ECB78);
        v16 = self[6];
        self[6] = v15;

        [managerCopy addLayoutManager:self[6]];
      }

      [self[6] invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(managerCopy, "length"), 0}];
      textContainers = [containerCopy textContainers];
      v18 = [textContainers containsObject:viewCopy];

      if ((v18 & 1) == 0)
      {
        [self[6] addTextContainer:viewCopy];
      }
    }
  }

  return self;
}

- (id)initWithTextView:(void *)view textContainer:
{
  v5 = a2;
  if (self)
  {
    layoutManager = [view layoutManager];
    if (!layoutManager)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithTextView_textContainer_ object:self file:@"_UITextKit1LayoutController.m" lineNumber:74 description:@"text container must already have a layout manager"];
    }

    v11.receiver = self;
    v11.super_class = _UITextKit1LayoutController;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 5, v5);
      objc_storeStrong(v8 + 6, layoutManager);
    }

    self = v8;
  }

  return self;
}

- (unint64_t)_textStorageLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___UITextKit1LayoutController__textStorageLength__block_invoke;
  v5[3] = &unk_1E70F94A8;
  v5[4] = &v6;
  [textStorage coordinateReading:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSLayoutManager)layoutManager
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    layoutManager = [WeakRetained layoutManager];
  }

  else
  {
    layoutManager = self->_originalLayoutManager;
  }

  v6 = layoutManager;

  return v6;
}

- (id)originalLayoutManager
{
  if (self)
  {
    self = self[6];
    v1 = vars8;
  }

  return self;
}

- (NSTextStorage)textStorage
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  textStorage = [layoutManager textStorage];

  return textStorage;
}

- (UITextPosition)endOfDocument
{
  _textStorageLength = [(_UITextKit1LayoutController *)self _textStorageLength];

  return [_UITextKitTextPosition positionWithOffset:_textStorageLength];
}

- (UITextRange)documentRange
{
  _textStorageLength = [(_UITextKit1LayoutController *)self _textStorageLength];

  return [_UITextKitTextRange rangeWithRange:0, _textStorageLength];
}

- (id)emptyTextRangeAtPosition:(id)position
{
  positionCopy = position;
  offset = [positionCopy offset];
  affinity = [positionCopy affinity];

  return [_UITextKitTextRange rangeWithRange:offset affinity:0, affinity];
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset affinity:(int64_t)affinity
{
  positionCopy = position;
  v9 = positionCopy;
  if (!offset)
  {
    v14 = positionCopy;
    goto LABEL_6;
  }

  v10 = [positionCopy offset] + offset;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  v12 = [textStorage length];

  v13 = 0;
  if ((v10 & 0x8000000000000000) == 0 && v10 <= v12)
  {
    v14 = [_UITextKitTextPosition positionWithOffset:v10 affinity:affinity];
LABEL_6:
    v13 = v14;
  }

  return v13;
}

- (id)textRangeForLineEnclosingPosition:(id)position
{
  positionCopy = position;
  v5 = [(_UITextKit1LayoutController *)self textRangeForLineEnclosingPosition:positionCopy effectiveAffinity:[(_UITextKit1LayoutController *)self affinityForPosition:positionCopy]];

  return v5;
}

- (id)textRangeForLineEnclosingPosition:(id)position effectiveAffinity:(int64_t)affinity
{
  positionCopy = position;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83___UITextKit1LayoutController_textRangeForLineEnclosingPosition_effectiveAffinity___block_invoke;
  v11[3] = &unk_1E70F94D0;
  v13 = &v15;
  v11[4] = self;
  v8 = positionCopy;
  v12 = v8;
  affinityCopy = affinity;
  [layoutManager coordinateAccess:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  offset = [toPosition offset];
  offset2 = [positionCopy offset];

  return offset - offset2;
}

- (CGRect)insertionRectForPosition:(id)position typingAttributes:(id)attributes placeholderAttachment:(id)attachment textContainer:(id *)container
{
  v69 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  attributesCopy = attributes;
  attachmentCopy = attachment;
  v11 = positionCopy;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  offset = [v11 offset];
  v57 = 0;
  v58 = &v57;
  v59 = 0x4010000000;
  v60 = "";
  v12 = *(MEMORY[0x1E695F050] + 16);
  v61 = *MEMORY[0x1E695F050];
  v62 = v12;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__22;
  v55 = __Block_byref_object_dispose__22;
  v56 = 0;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  affinity = [v11 affinity];
  v15 = v64[3];
  v17 = affinity == 1 && v15 != 0;
  if (v15 <= [textStorage length] || v64[3] == 0x7FFFFFFFFFFFFFFFLL && v17)
  {
    layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
    if (v17)
    {
      string = [textStorage string];
      v20 = v64[3];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = [string length];
        v64[3] = v20;
      }

      if (v20)
      {
        v21 = [string rangeOfComposedCharacterSequenceAtIndex:v20 - 1];
        v23 = [string substringWithRange:{v21, v22}];
        newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v25 = [v23 rangeOfCharacterFromSet:newlineCharacterSet] == 0;

        if (!v25)
        {
          v26 = [layoutManager rangeOfCharacterClusterAtIndex:v64[3] - 1 type:3];
          v64[3] = v26;
        }
      }
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __109___UITextKit1LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke;
    v42[3] = &unk_1E70F94F8;
    v46 = &v63;
    v43 = attachmentCopy;
    v47 = &v51;
    v44 = attributesCopy;
    selfCopy = self;
    v50 = v17;
    v48 = &v57;
    v49 = a2;
    [layoutManager coordinateAccess:v42];
    if (container)
    {
      *container = v52[5];
    }

    v27 = v58[4];
    v28 = v58[5];
    v29 = v58[6];
    v30 = v58[7];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v37 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        v38 = v64[3];
        *buf = 134217984;
        v68 = v38;
        _os_log_fault_impl(&dword_188A29000, v37, OS_LOG_TYPE_FAULT, "requesting caretRectForPosition: with a position beyond the NSTextStorage (%ld)", buf, 0xCu);
      }
    }

    else
    {
      v31 = *(__UILogGetCategoryCachedImpl("Assert", &insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer____s_category) + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = v64[3];
        *buf = 134217984;
        v68 = v32;
        _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "requesting caretRectForPosition: with a position beyond the NSTextStorage (%ld)", buf, 0xCu);
      }
    }

    v27 = v58[4];
    v28 = v58[5];
    v29 = v58[6];
    v30 = v58[7];
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)textRangeForBounds:(CGRect)bounds inTextContainer:(id)container layoutIfNeeded:(BOOL)needed
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  containerCopy = container;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v28 = 0;
  v29 = 0;
  v27 = "";
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81___UITextKit1LayoutController_textRangeForBounds_inTextContainer_layoutIfNeeded___block_invoke;
  v16[3] = &unk_1E70F9520;
  neededCopy = needed;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v13 = containerCopy;
  v17 = v13;
  v18 = &v24;
  [layoutManager coordinateAccess:v16];

  v14 = [(_UITextKit1LayoutController *)self textRangeForCharacterRange:v25[4], v25[5]];

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)attributesAtPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UITextKit1LayoutController_attributesAtPosition_inDirection___block_invoke;
  v11[3] = &unk_1E70F9548;
  v13 = &v15;
  v8 = positionCopy;
  v12 = v8;
  directionCopy = direction;
  [textStorage coordinateReading:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (int64_t)baseWritingDirectionAtPosition:(id)position
{
  v10 = 0;
  positionCopy = position;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  offset = [positionCopy offset];

  v7 = [layoutManager glyphRangeForCharacterRange:offset actualCharacterRange:{1, 0}];
  [layoutManager getGlyphsInRange:v7 glyphs:v8 != 0 properties:0 characterIndexes:0 bidiLevels:{0, &v10}];
  LOBYTE(positionCopy) = v10;

  return positionCopy & 1;
}

- (id)selectionRectsForRange:(id)range fromView:(id)view forContainerPassingTest:(id)test
{
  rangeCopy = range;
  viewCopy = view;
  testCopy = test;
  array = [MEMORY[0x1E695DF70] array];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__22;
  v26[4] = __Block_byref_object_dispose__22;
  v27 = 0;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87___UITextKit1LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke;
  v20[3] = &unk_1E70F9598;
  v13 = rangeCopy;
  v21 = v13;
  v25 = v26;
  v14 = testCopy;
  v24 = v14;
  v15 = viewCopy;
  v22 = v15;
  v16 = array;
  v23 = v16;
  [layoutManager coordinateAccess:v20];

  v17 = v23;
  v18 = v16;

  _Block_object_dispose(v26, 8);

  return v18;
}

- (id)cursorPositionAtPoint:(CGPoint)point inContainer:(id)container
{
  y = point.y;
  x = point.x;
  containerCopy = container;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___UITextKit1LayoutController_cursorPositionAtPoint_inContainer___block_invoke;
  v12[3] = &unk_1E70F95C0;
  v16 = x;
  v17 = y;
  v9 = containerCopy;
  v13 = v9;
  v14 = &v18;
  v15 = &v22;
  [layoutManager coordinateAccess:v12];

  v10 = [_UITextKitTextPosition positionWithOffset:v23[3] affinity:v19[3]];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (id)nearestPositionAtPoint:(CGPoint)point inContainer:(id)container
{
  y = point.y;
  x = point.x;
  containerCopy = container;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __66___UITextKit1LayoutController_nearestPositionAtPoint_inContainer___block_invoke;
  v15 = &unk_1E70F95E8;
  v18 = x;
  v19 = y;
  v9 = containerCopy;
  v16 = v9;
  v17 = &v20;
  [layoutManager coordinateAccess:&v12];

  v10 = [_UITextKitTextPosition positionWithOffset:v21[3], v12, v13, v14, v15];

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (void)enumerateTextLineFragmentsInRange:(id)range usingBlock:(id)block
{
  blockCopy = block;
  rangeCopy = range;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  asRange = [rangeCopy asRange];
  v11 = v10;

  v12 = [layoutManager glyphRangeForCharacterRange:asRange actualCharacterRange:{v11, 0}];
  v14 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76___UITextKit1LayoutController_enumerateTextLineFragmentsInRange_usingBlock___block_invoke;
  v17[3] = &unk_1E70F9610;
  v18 = layoutManager;
  v19 = blockCopy;
  v15 = blockCopy;
  v16 = layoutManager;
  [v16 enumerateLineFragmentsForGlyphRange:v12 usingBlock:{v14, v17}];
}

- (void)enumerateTextSegmentsInRange:(id)range inTextContainer:(id)container usingBlock:(id)block
{
  blockCopy = block;
  containerCopy = container;
  rangeCopy = range;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  asRange = [rangeCopy asRange];
  v13 = v12;

  v14 = [layoutManager glyphRangeForCharacterRange:asRange actualCharacterRange:{v13, 0}];
  [layoutManager enumerateEnclosingRectsForGlyphRange:v14 withinSelectedGlyphRange:v15 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, containerCopy, blockCopy}];
}

- (CGRect)extraLineFragmentRect
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager extraLineFragmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)addAnnotationAttribute:(id)attribute value:(id)value forRange:(id)range
{
  rangeCopy = range;
  valueCopy = value;
  attributeCopy = attribute;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  asRange = [rangeCopy asRange];
  v13 = v12;

  [layoutManager addTemporaryAttribute:attributeCopy value:valueCopy forCharacterRange:{asRange, v13}];
}

- (id)annotationAttribute:(id)attribute atPosition:(id)position
{
  positionCopy = position;
  attributeCopy = attribute;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  offset = [positionCopy offset];

  v10 = [layoutManager temporaryAttribute:attributeCopy atCharacterIndex:offset effectiveRange:0];

  return v10;
}

- (void)removeAnnotationAttribute:(id)attribute forRange:(id)range
{
  rangeCopy = range;
  attributeCopy = attribute;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  asRange = [rangeCopy asRange];
  v10 = v9;

  [layoutManager removeTemporaryAttribute:attributeCopy forCharacterRange:{asRange, v10}];
}

- (void)addRenderingAttributes:(id)attributes forRange:(id)range
{
  rangeCopy = range;
  attributesCopy = attributes;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  asRange = [rangeCopy asRange];
  v10 = v9;

  [layoutManager addTemporaryAttributes:attributesCopy forCharacterRange:{asRange, v10}];
}

- (void)removeRenderingAttributes:(id)attributes forRange:(id)range
{
  v21 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  rangeCopy = range;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [attributesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
        asRange = [rangeCopy asRange];
        [layoutManager removeTemporaryAttribute:v12 forCharacterRange:{asRange, v15}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [attributesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)addGhostedRange:(id)range
{
  canvasView = self->_canvasView;
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range];

  [(_UITextCanvasView *)canvasView addGhostedRange:v5, v4];
}

- (void)addInvisibleRange:(id)range
{
  canvasView = self->_canvasView;
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range];

  [(_UITextCanvasView *)canvasView addInvisibleRange:v5, v4];
}

- (void)removeInvisibleRange:(id)range
{
  canvasView = self->_canvasView;
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range];

  [(_UITextCanvasView *)canvasView removeInvisibleRange:v5, v4];
}

- (void)setStyleEffectConfiguration:(id)configuration
{
  configurationCopy = configuration;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager setStyleEffectConfiguration:configurationCopy];
}

- (CUIStyleEffectConfiguration)styleEffectConfiguration
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  styleEffectConfiguration = [layoutManager styleEffectConfiguration];

  return styleEffectConfiguration;
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  asRange = [rangeCopy asRange];
  v8 = v7;

  v9 = [textStorage attributedSubstringFromRange:{asRange, v8}];

  return v9;
}

- (id)annotatedSubstringForRange:(id)range
{
  rangeCopy = range;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  v7 = [textStorage length];
  asRange = [rangeCopy asRange];
  v10 = asRange;
  v11 = 0;
  v20 = 0;
  v21 = 0;
  if (!v9 || v7 <= asRange)
  {
    goto LABEL_12;
  }

  if (asRange + v9 <= v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7 - asRange;
  }

  string = [textStorage string];
  v11 = [string substringWithRange:{v10, v12}];

  v20 = v10;
  v21 = 0;
  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:0];
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  if (!layoutManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextKit1LayoutController.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"layoutManager"}];
  }

  if (v10 < v12 + v10)
  {
    v16 = v10;
    do
    {
      v17 = [layoutManager temporaryAttributesAtCharacterIndex:v16 longestEffectiveRange:&v20 inRange:{v10, v12}];
      [v14 setAttributes:v17 range:{v20 - v10, v21}];

      v16 = v21 + v20;
    }

    while (v21 + v20 < v12 + v10);
  }

  if (!v14)
  {
LABEL_12:
    if (v7 >= v10)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1EFB14550];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (double)baselineOffsetForFirstGlyph
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  if ([layoutManager numberOfGlyphs])
  {
    [layoutManager baselineOffsetForGlyphAtIndex:0];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)requestTextGeometryAtPosition:(id)position typingAttributes:(id)attributes resultBlock:(id)block
{
  positionCopy = position;
  blockCopy = block;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  if ([layoutManager numberOfGlyphs])
  {
    offset = [positionCopy offset];
    if (offset <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = offset - 1;
    }

    v12 = [layoutManager glyphIndexForCharacterAtIndex:v11];
    v13 = [layoutManager textContainerForGlyphAtIndex:v12 effectiveRange:0];
    if (v13)
    {
      firstObject = v13;
    }

    else
    {
      textContainers = [layoutManager textContainers];
      if ([textContainers count] != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextKit1LayoutController.m" lineNumber:646 description:{@"Invalid parameter not satisfying: %@", @"textContainers.count == 1"}];
      }

      firstObject = [textContainers firstObject];
      v26 = [layoutManager glyphRangeForTextContainer:firstObject];
      if (v26 + v27)
      {
        v12 = v26 + v27 - 1;
      }

      else
      {
        v12 = 0;
      }

      v28 = +[_UITextKitTextPosition positionWithOffset:](_UITextKitTextPosition, "positionWithOffset:", [layoutManager characterIndexForGlyphAtIndex:v12]);

      positionCopy = v28;
    }

    [layoutManager lineFragmentRectForGlyphAtIndex:v12 effectiveRange:0];
    v17 = v29;
    v19 = v30;
    v21 = v31;
    v23 = v32;
    [layoutManager baselineOffsetForGlyphAtIndex:v12];
    v24 = v33;
  }

  else
  {
    extraLineFragmentTextContainer = [layoutManager extraLineFragmentTextContainer];
    if (extraLineFragmentTextContainer)
    {
      firstObject = extraLineFragmentTextContainer;
      [layoutManager extraLineFragmentRect];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = 0.0;
    }

    else
    {
      v34 = MEMORY[0x1E695F050];
      v17 = *MEMORY[0x1E695F050];
      v19 = *(MEMORY[0x1E695F050] + 8);
      textContainers2 = [layoutManager textContainers];
      firstObject = [textContainers2 firstObject];

      [firstObject size];
      v24 = 0.0;
      if (v36 <= 0.0)
      {
        v21 = *(v34 + 16);
        v23 = *(v34 + 24);
      }

      else
      {
        [firstObject size];
        v21 = v37;
        v23 = v38;
      }
    }
  }

  blockCopy[2](blockCopy, firstObject, v17, v19, v21, v23, v24);
}

- (NSArray)textContainers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___UITextKit1LayoutController_textContainers__block_invoke;
  v5[3] = &unk_1E70F9638;
  v5[4] = &v6;
  [layoutManager coordinateAccess:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)textContainerForPosition:(id)position
{
  v3 = [0 glyphIndexForCharacterAtIndex:{objc_msgSend(position, "offset")}];

  return [0 textContainerForGlyphAtIndex:v3 effectiveRange:0];
}

- (id)dequeueCanvasViewForTextContainer:(id)container
{
  canvasView = self->_canvasView;
  if (!canvasView)
  {
    v5 = objc_alloc_init(self->super._classicCanvasViewClass);
    v6 = self->_canvasView;
    self->_canvasView = v5;

    canvasView = self->_canvasView;
  }

  return canvasView;
}

- (id)previewRendererForRange:(id)range unifyRects:(BOOL)rects
{
  rectsCopy = rects;
  v6 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range];
  v8 = v7;
  v9 = [UITextDragPreviewRenderer alloc];
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  rectsCopy = [(UITextDragPreviewRenderer *)v9 initWithLayoutManager:layoutManager range:v6 unifyRects:v8, rectsCopy];

  return rectsCopy;
}

- (void)ensureLayoutForTextContainer:(id)container
{
  containerCopy = container;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager ensureLayoutForTextContainer:containerCopy];
}

- (CGRect)usedRectForTextContainer:(id)container
{
  containerCopy = container;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager usedRectForTextContainer:containerCopy];
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

- (void)ensureLayoutForBounds:(CGRect)bounds inTextContainer:(id)container
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  containerCopy = container;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69___UITextKit1LayoutController_ensureLayoutForBounds_inTextContainer___block_invoke;
  v12[3] = &unk_1E70F9660;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v13 = containerCopy;
  v11 = containerCopy;
  [layoutManager coordinateAccess:v12];
}

- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)container
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

- (void)ensureLayoutForRange:(id)range
{
  rangeCopy = range;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:rangeCopy];
  v7 = v6;

  [layoutManager ensureLayoutForCharacterRange:{v5, v7}];
}

- (void)invalidateLayoutForRange:(id)range
{
  v4 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range];
  v6 = v5;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager invalidateGlyphsForCharacterRange:v4 changeInLength:v6 actualCharacterRange:{0, 0}];
  [layoutManager invalidateLayoutForCharacterRange:v4 actualCharacterRange:{v6, 0}];
}

- (CGRect)boundingRectForRange:(id)range
{
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range];

  [(_UITextKit1LayoutController *)self boundingRectForCharacterRange:v5, v4];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (_NSRange)characterRangeForTextRange:(id)range
{
  v3 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range clippedToDocument:0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)characterRangeForTextRange:(id)range clippedToDocument:(BOOL)document
{
  documentCopy = document;
  location = [range asRange];
  v8 = location;
  v9 = length;
  if (documentCopy)
  {
    v11.length = [(_UITextKit1LayoutController *)self _textStorageLength];
    v10.location = v8;
    v10.length = v9;
    v11.location = 0;

    v12 = NSIntersectionRange(v10, v11);
    length = v12.length;
    location = v12.location;
  }

  result.length = length;
  result.location = location;
  return result;
}

- (id)characterRangesForTextRange:(id)range clippedToDocument:(BOOL)document
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696B098];
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:range clippedToDocument:document];
  v7 = [v4 valueWithRange:{v5, v6}];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

- (id)textRangeForCharacterRanges:(id)ranges
{
  rangesCopy = ranges;
  if ([rangesCopy count])
  {
    unionRange = [rangesCopy unionRange];
    v7 = [(_UITextKit1LayoutController *)self textRangeForCharacterRange:unionRange, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)index type:(int64_t)type
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v16 = 0;
  v17 = 0;
  v15 = "";
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UITextKit1LayoutController_rangeOfCharacterClusterAtIndex_type___block_invoke;
  v11[3] = &unk_1E70F9688;
  v11[4] = &v12;
  v11[5] = index;
  v11[6] = type;
  [layoutManager coordinateAccess:v11];

  v7 = v13[4];
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)boundingRectForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v7 = [layoutManager glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
  v9 = v8;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4010000000;
  v43 = "";
  v10 = *(MEMORY[0x1E695F050] + 16);
  v44 = *MEMORY[0x1E695F050];
  v45 = v10;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  _ui_containsTables = [textStorage _ui_containsTables];

  if (_ui_containsTables)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __61___UITextKit1LayoutController_boundingRectForCharacterRange___block_invoke;
    v37 = &unk_1E70F96B0;
    v38 = layoutManager;
    v39 = &v40;
    [v38 ui_enumerateTextBlocksInGlyphRange:v7 usingBlock:{v9, &v34}];
  }

  v13 = [layoutManager textContainerForGlyphAtIndex:v7 effectiveRange:{0, v34, v35, v36, v37}];
  if (CGRectIsNull(v41[1]))
  {
    [layoutManager boundingRectForGlyphRange:v7 inTextContainer:{v9, v13}];
    x = v14;
    y = v16;
    width = v18;
    height = v20;
  }

  else
  {
    x = v41[1].origin.x;
    y = v41[1].origin.y;
    width = v41[1].size.width;
    height = v41[1].size.height;
  }

  [v13 textContainerOrigin];
  v23 = v22;
  v25 = v24;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectOffset(v46, v23, v25);
  v26 = v47.origin.x;
  v27 = v47.origin.y;
  v28 = v47.size.width;
  v29 = v47.size.height;

  _Block_object_dispose(&v40, 8);
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)unionRectForCharacterRange:(_NSRange)range bottomInset:(double)inset
{
  length = range.length;
  location = range.location;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = "";
  v8 = *(MEMORY[0x1E695F050] + 16);
  v34 = *MEMORY[0x1E695F050];
  v35 = v8;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70___UITextKit1LayoutController_unionRectForCharacterRange_bottomInset___block_invoke;
  v29[3] = &unk_1E70F9688;
  v29[5] = location;
  v29[6] = length;
  v29[4] = &v30;
  [layoutManager coordinateAccess:v29];
  [layoutManager extraLineFragmentRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  textStorage = [(_UITextKit1LayoutController *)self textStorage];
  if (location + length == [textStorage length])
  {
    v36.origin.x = v11;
    v36.origin.y = v13;
    v36.size.width = v15;
    v36.size.height = v17;
    IsEmpty = CGRectIsEmpty(v36);

    p_x = &v31->origin.x;
    if (!IsEmpty)
    {
      v39.size.height = v17 + inset;
      v39.origin.x = v11;
      v39.origin.y = v13;
      v39.size.width = v15;
      v37 = CGRectUnion(v31[1], v39);
      p_x = &v31->origin.x;
      v31[1] = v37;
    }
  }

  else
  {

    p_x = &v31->origin.x;
  }

  v21 = p_x[4];
  v22 = p_x[5];
  v23 = p_x[6];
  v24 = p_x[7];

  _Block_object_dispose(&v30, 8);
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (void)invalidateDisplayForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager invalidateDisplayForCharacterRange:{location, length}];
}

- (void)setDrawsDebugBaselines:(BOOL)baselines
{
  baselinesCopy = baselines;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager _setDrawsDebugBaselines:baselinesCopy];
}

- (BOOL)drawsDebugBaselines
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  _drawsDebugBaselines = [layoutManager _drawsDebugBaselines];

  return _drawsDebugBaselines;
}

- (void)setLayoutManagerDelegate:(id)delegate
{
  delegateCopy = delegate;
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  [layoutManager setDelegate:delegateCopy];
}

- (NSLayoutManagerDelegate)layoutManagerDelegate
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  delegate = [layoutManager delegate];

  return delegate;
}

- (void)resetFontForExtraBulletRendering
{
  layoutManager = [(_UITextKit1LayoutController *)self layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [layoutManager resetFontForExtraBulletRendering];
  }
}

@end