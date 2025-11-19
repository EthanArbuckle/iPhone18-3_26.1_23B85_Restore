@interface _UITextKit1LayoutController
- (BOOL)drawsDebugBaselines;
- (CGRect)boundingRectForCharacterRange:(_NSRange)a3;
- (CGRect)boundingRectForRange:(id)a3;
- (CGRect)extraLineFragmentRect;
- (CGRect)insertionRectForPosition:(id)a3 typingAttributes:(id)a4 placeholderAttachment:(id)a5 textContainer:(id *)a6;
- (CGRect)unionRectForCharacterRange:(_NSRange)a3 bottomInset:(double)a4;
- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)a3;
- (CGRect)usedRectForTextContainer:(id)a3;
- (CUIStyleEffectConfiguration)styleEffectConfiguration;
- (NSArray)textContainers;
- (NSLayoutManager)layoutManager;
- (NSLayoutManagerDelegate)layoutManagerDelegate;
- (NSTextStorage)textStorage;
- (UITextPosition)endOfDocument;
- (UITextRange)documentRange;
- (_NSRange)characterRangeForTextRange:(id)a3;
- (_NSRange)characterRangeForTextRange:(id)a3 clippedToDocument:(BOOL)a4;
- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)a3 type:(int64_t)a4;
- (double)baselineOffsetForFirstGlyph;
- (id)annotatedSubstringForRange:(id)a3;
- (id)annotationAttribute:(id)a3 atPosition:(id)a4;
- (id)attributedTextInRange:(id)a3;
- (id)attributesAtPosition:(id)a3 inDirection:(int64_t)a4;
- (id)characterRangesForTextRange:(id)a3 clippedToDocument:(BOOL)a4;
- (id)cursorPositionAtPoint:(CGPoint)a3 inContainer:(id)a4;
- (id)dequeueCanvasViewForTextContainer:(id)a3;
- (id)emptyTextRangeAtPosition:(id)a3;
- (id)initWithTextView:(void *)a3 textContainer:;
- (id)initWithTextView:(void *)a3 textContainer:(void *)a4 layoutManager:(void *)a5 textStorage:;
- (id)nearestPositionAtPoint:(CGPoint)a3 inContainer:(id)a4;
- (id)originalLayoutManager;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4 affinity:(int64_t)a5;
- (id)previewRendererForRange:(id)a3 unifyRects:(BOOL)a4;
- (id)selectionRectsForRange:(id)a3 fromView:(id)a4 forContainerPassingTest:(id)a5;
- (id)textContainerForPosition:(id)a3;
- (id)textRangeForBounds:(CGRect)a3 inTextContainer:(id)a4 layoutIfNeeded:(BOOL)a5;
- (id)textRangeForCharacterRanges:(id)a3;
- (id)textRangeForLineEnclosingPosition:(id)a3;
- (id)textRangeForLineEnclosingPosition:(id)a3 effectiveAffinity:(int64_t)a4;
- (int64_t)baseWritingDirectionAtPosition:(id)a3;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (unint64_t)_textStorageLength;
- (void)addAnnotationAttribute:(id)a3 value:(id)a4 forRange:(id)a5;
- (void)addGhostedRange:(id)a3;
- (void)addInvisibleRange:(id)a3;
- (void)addRenderingAttributes:(id)a3 forRange:(id)a4;
- (void)ensureLayoutForBounds:(CGRect)a3 inTextContainer:(id)a4;
- (void)ensureLayoutForRange:(id)a3;
- (void)ensureLayoutForTextContainer:(id)a3;
- (void)enumerateTextLineFragmentsInRange:(id)a3 usingBlock:(id)a4;
- (void)enumerateTextSegmentsInRange:(id)a3 inTextContainer:(id)a4 usingBlock:(id)a5;
- (void)invalidateDisplayForCharacterRange:(_NSRange)a3;
- (void)invalidateLayoutForRange:(id)a3;
- (void)removeAnnotationAttribute:(id)a3 forRange:(id)a4;
- (void)removeInvisibleRange:(id)a3;
- (void)removeRenderingAttributes:(id)a3 forRange:(id)a4;
- (void)requestTextGeometryAtPosition:(id)a3 typingAttributes:(id)a4 resultBlock:(id)a5;
- (void)resetFontForExtraBulletRendering;
- (void)setDrawsDebugBaselines:(BOOL)a3;
- (void)setLayoutManagerDelegate:(id)a3;
- (void)setStyleEffectConfiguration:(id)a3;
@end

@implementation _UITextKit1LayoutController

- (id)initWithTextView:(void *)a3 textContainer:(void *)a4 layoutManager:(void *)a5 textStorage:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = [v10 layoutManager];

    if (v13)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:sel_initWithTextView_textContainer_layoutManager_textStorage_ object:a1 file:@"_UITextKit1LayoutController.m" lineNumber:50 description:@"text container should not already have a layout manager"];
    }

    v21.receiver = a1;
    v21.super_class = _UITextKit1LayoutController;
    v14 = objc_msgSendSuper2(&v21, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeWeak(v14 + 5, v9);
      if (v11)
      {
        objc_storeStrong(a1 + 6, a4);
      }

      else
      {
        v15 = objc_alloc_init(off_1E70ECB78);
        v16 = a1[6];
        a1[6] = v15;

        [v12 addLayoutManager:a1[6]];
      }

      [a1[6] invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(v12, "length"), 0}];
      v17 = [v11 textContainers];
      v18 = [v17 containsObject:v10];

      if ((v18 & 1) == 0)
      {
        [a1[6] addTextContainer:v10];
      }
    }
  }

  return a1;
}

- (id)initWithTextView:(void *)a3 textContainer:
{
  v5 = a2;
  if (a1)
  {
    v6 = [a3 layoutManager];
    if (!v6)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_initWithTextView_textContainer_ object:a1 file:@"_UITextKit1LayoutController.m" lineNumber:74 description:@"text container must already have a layout manager"];
    }

    v11.receiver = a1;
    v11.super_class = _UITextKit1LayoutController;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 5, v5);
      objc_storeStrong(v8 + 6, v6);
    }

    a1 = v8;
  }

  return a1;
}

- (unint64_t)_textStorageLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(_UITextKit1LayoutController *)self textStorage];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___UITextKit1LayoutController__textStorageLength__block_invoke;
  v5[3] = &unk_1E70F94A8;
  v5[4] = &v6;
  [v2 coordinateReading:v5];

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
    v5 = [WeakRetained layoutManager];
  }

  else
  {
    v5 = self->_originalLayoutManager;
  }

  v6 = v5;

  return v6;
}

- (id)originalLayoutManager
{
  if (a1)
  {
    a1 = a1[6];
    v1 = vars8;
  }

  return a1;
}

- (NSTextStorage)textStorage
{
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  v3 = [v2 textStorage];

  return v3;
}

- (UITextPosition)endOfDocument
{
  v2 = [(_UITextKit1LayoutController *)self _textStorageLength];

  return [_UITextKitTextPosition positionWithOffset:v2];
}

- (UITextRange)documentRange
{
  v2 = [(_UITextKit1LayoutController *)self _textStorageLength];

  return [_UITextKitTextRange rangeWithRange:0, v2];
}

- (id)emptyTextRangeAtPosition:(id)a3
{
  v3 = a3;
  v4 = [v3 offset];
  v5 = [v3 affinity];

  return [_UITextKitTextRange rangeWithRange:v4 affinity:0, v5];
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4 affinity:(int64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (!a4)
  {
    v14 = v8;
    goto LABEL_6;
  }

  v10 = [v8 offset] + a4;
  v11 = [(_UITextKit1LayoutController *)self textStorage];
  v12 = [v11 length];

  v13 = 0;
  if ((v10 & 0x8000000000000000) == 0 && v10 <= v12)
  {
    v14 = [_UITextKitTextPosition positionWithOffset:v10 affinity:a5];
LABEL_6:
    v13 = v14;
  }

  return v13;
}

- (id)textRangeForLineEnclosingPosition:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self textRangeForLineEnclosingPosition:v4 effectiveAffinity:[(_UITextKit1LayoutController *)self affinityForPosition:v4]];

  return v5;
}

- (id)textRangeForLineEnclosingPosition:(id)a3 effectiveAffinity:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  v7 = [(_UITextKit1LayoutController *)self layoutManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83___UITextKit1LayoutController_textRangeForLineEnclosingPosition_effectiveAffinity___block_invoke;
  v11[3] = &unk_1E70F94D0;
  v13 = &v15;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = a4;
  [v7 coordinateAccess:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v5 = a3;
  v6 = [a4 offset];
  v7 = [v5 offset];

  return v6 - v7;
}

- (CGRect)insertionRectForPosition:(id)a3 typingAttributes:(id)a4 placeholderAttachment:(id)a5 textContainer:(id *)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v40 = a4;
  v41 = a5;
  v11 = v10;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = [v11 offset];
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
  v13 = [(_UITextKit1LayoutController *)self textStorage];
  v14 = [v11 affinity];
  v15 = v64[3];
  v17 = v14 == 1 && v15 != 0;
  if (v15 <= [v13 length] || v64[3] == 0x7FFFFFFFFFFFFFFFLL && v17)
  {
    v18 = [(_UITextKit1LayoutController *)self layoutManager];
    if (v17)
    {
      v19 = [v13 string];
      v20 = v64[3];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = [v19 length];
        v64[3] = v20;
      }

      if (v20)
      {
        v21 = [v19 rangeOfComposedCharacterSequenceAtIndex:v20 - 1];
        v23 = [v19 substringWithRange:{v21, v22}];
        v24 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v25 = [v23 rangeOfCharacterFromSet:v24] == 0;

        if (!v25)
        {
          v26 = [v18 rangeOfCharacterClusterAtIndex:v64[3] - 1 type:3];
          v64[3] = v26;
        }
      }
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __109___UITextKit1LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke;
    v42[3] = &unk_1E70F94F8;
    v46 = &v63;
    v43 = v41;
    v47 = &v51;
    v44 = v40;
    v45 = self;
    v50 = v17;
    v48 = &v57;
    v49 = a2;
    [v18 coordinateAccess:v42];
    if (a6)
    {
      *a6 = v52[5];
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

- (id)textRangeForBounds:(CGRect)a3 inTextContainer:(id)a4 layoutIfNeeded:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v28 = 0;
  v29 = 0;
  v27 = "";
  v12 = [(_UITextKit1LayoutController *)self layoutManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81___UITextKit1LayoutController_textRangeForBounds_inTextContainer_layoutIfNeeded___block_invoke;
  v16[3] = &unk_1E70F9520;
  v23 = a5;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v13 = v11;
  v17 = v13;
  v18 = &v24;
  [v12 coordinateAccess:v16];

  v14 = [(_UITextKit1LayoutController *)self textRangeForCharacterRange:v25[4], v25[5]];

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (id)attributesAtPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  v7 = [(_UITextKit1LayoutController *)self textStorage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64___UITextKit1LayoutController_attributesAtPosition_inDirection___block_invoke;
  v11[3] = &unk_1E70F9548;
  v13 = &v15;
  v8 = v6;
  v12 = v8;
  v14 = a4;
  [v7 coordinateReading:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (int64_t)baseWritingDirectionAtPosition:(id)a3
{
  v10 = 0;
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self layoutManager];
  v6 = [v4 offset];

  v7 = [v5 glyphRangeForCharacterRange:v6 actualCharacterRange:{1, 0}];
  [v5 getGlyphsInRange:v7 glyphs:v8 != 0 properties:0 characterIndexes:0 bidiLevels:{0, &v10}];
  LOBYTE(v4) = v10;

  return v4 & 1;
}

- (id)selectionRectsForRange:(id)a3 fromView:(id)a4 forContainerPassingTest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__22;
  v26[4] = __Block_byref_object_dispose__22;
  v27 = 0;
  v12 = [(_UITextKit1LayoutController *)self layoutManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87___UITextKit1LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke;
  v20[3] = &unk_1E70F9598;
  v13 = v8;
  v21 = v13;
  v25 = v26;
  v14 = v10;
  v24 = v14;
  v15 = v9;
  v22 = v15;
  v16 = v11;
  v23 = v16;
  [v12 coordinateAccess:v20];

  v17 = v23;
  v18 = v16;

  _Block_object_dispose(v26, 8);

  return v18;
}

- (id)cursorPositionAtPoint:(CGPoint)a3 inContainer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v8 = [(_UITextKit1LayoutController *)self layoutManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___UITextKit1LayoutController_cursorPositionAtPoint_inContainer___block_invoke;
  v12[3] = &unk_1E70F95C0;
  v16 = x;
  v17 = y;
  v9 = v7;
  v13 = v9;
  v14 = &v18;
  v15 = &v22;
  [v8 coordinateAccess:v12];

  v10 = [_UITextKitTextPosition positionWithOffset:v23[3] affinity:v19[3]];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (id)nearestPositionAtPoint:(CGPoint)a3 inContainer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(_UITextKit1LayoutController *)self layoutManager];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __66___UITextKit1LayoutController_nearestPositionAtPoint_inContainer___block_invoke;
  v15 = &unk_1E70F95E8;
  v18 = x;
  v19 = y;
  v9 = v7;
  v16 = v9;
  v17 = &v20;
  [v8 coordinateAccess:&v12];

  v10 = [_UITextKitTextPosition positionWithOffset:v21[3], v12, v13, v14, v15];

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (void)enumerateTextLineFragmentsInRange:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITextKit1LayoutController *)self layoutManager];
  v9 = [v7 asRange];
  v11 = v10;

  v12 = [v8 glyphRangeForCharacterRange:v9 actualCharacterRange:{v11, 0}];
  v14 = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76___UITextKit1LayoutController_enumerateTextLineFragmentsInRange_usingBlock___block_invoke;
  v17[3] = &unk_1E70F9610;
  v18 = v8;
  v19 = v6;
  v15 = v6;
  v16 = v8;
  [v16 enumerateLineFragmentsForGlyphRange:v12 usingBlock:{v14, v17}];
}

- (void)enumerateTextSegmentsInRange:(id)a3 inTextContainer:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v16 = [(_UITextKit1LayoutController *)self layoutManager];
  v11 = [v10 asRange];
  v13 = v12;

  v14 = [v16 glyphRangeForCharacterRange:v11 actualCharacterRange:{v13, 0}];
  [v16 enumerateEnclosingRectsForGlyphRange:v14 withinSelectedGlyphRange:v15 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v9, v8}];
}

- (CGRect)extraLineFragmentRect
{
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  [v2 extraLineFragmentRect];
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

- (void)addAnnotationAttribute:(id)a3 value:(id)a4 forRange:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(_UITextKit1LayoutController *)self layoutManager];
  v11 = [v8 asRange];
  v13 = v12;

  [v14 addTemporaryAttribute:v10 value:v9 forCharacterRange:{v11, v13}];
}

- (id)annotationAttribute:(id)a3 atPosition:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITextKit1LayoutController *)self layoutManager];
  v9 = [v6 offset];

  v10 = [v8 temporaryAttribute:v7 atCharacterIndex:v9 effectiveRange:0];

  return v10;
}

- (void)removeAnnotationAttribute:(id)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(_UITextKit1LayoutController *)self layoutManager];
  v8 = [v6 asRange];
  v10 = v9;

  [v11 removeTemporaryAttribute:v7 forCharacterRange:{v8, v10}];
}

- (void)addRenderingAttributes:(id)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(_UITextKit1LayoutController *)self layoutManager];
  v8 = [v6 asRange];
  v10 = v9;

  [v11 addTemporaryAttributes:v7 forCharacterRange:{v8, v10}];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [(_UITextKit1LayoutController *)self layoutManager];
        v14 = [v7 asRange];
        [v13 removeTemporaryAttribute:v12 forCharacterRange:{v14, v15}];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)addGhostedRange:(id)a3
{
  canvasView = self->_canvasView;
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3];

  [(_UITextCanvasView *)canvasView addGhostedRange:v5, v4];
}

- (void)addInvisibleRange:(id)a3
{
  canvasView = self->_canvasView;
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3];

  [(_UITextCanvasView *)canvasView addInvisibleRange:v5, v4];
}

- (void)removeInvisibleRange:(id)a3
{
  canvasView = self->_canvasView;
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3];

  [(_UITextCanvasView *)canvasView removeInvisibleRange:v5, v4];
}

- (void)setStyleEffectConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self layoutManager];
  [v5 setStyleEffectConfiguration:v4];
}

- (CUIStyleEffectConfiguration)styleEffectConfiguration
{
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  v3 = [v2 styleEffectConfiguration];

  return v3;
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self textStorage];
  v6 = [v4 asRange];
  v8 = v7;

  v9 = [v5 attributedSubstringFromRange:{v6, v8}];

  return v9;
}

- (id)annotatedSubstringForRange:(id)a3
{
  v5 = a3;
  v6 = [(_UITextKit1LayoutController *)self textStorage];
  v7 = [v6 length];
  v8 = [v5 asRange];
  v10 = v8;
  v11 = 0;
  v20 = 0;
  v21 = 0;
  if (!v9 || v7 <= v8)
  {
    goto LABEL_12;
  }

  if (v8 + v9 <= v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7 - v8;
  }

  v13 = [v6 string];
  v11 = [v13 substringWithRange:{v10, v12}];

  v20 = v10;
  v21 = 0;
  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:0];
  v15 = [(_UITextKit1LayoutController *)self layoutManager];
  if (!v15)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UITextKit1LayoutController.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"layoutManager"}];
  }

  if (v10 < v12 + v10)
  {
    v16 = v10;
    do
    {
      v17 = [v15 temporaryAttributesAtCharacterIndex:v16 longestEffectiveRange:&v20 inRange:{v10, v12}];
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
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  if ([v2 numberOfGlyphs])
  {
    [v2 baselineOffsetForGlyphAtIndex:0];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)requestTextGeometryAtPosition:(id)a3 typingAttributes:(id)a4 resultBlock:(id)a5
{
  v40 = a3;
  v8 = a5;
  v9 = [(_UITextKit1LayoutController *)self layoutManager];
  if ([v9 numberOfGlyphs])
  {
    v10 = [v40 offset];
    if (v10 <= 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 - 1;
    }

    v12 = [v9 glyphIndexForCharacterAtIndex:v11];
    v13 = [v9 textContainerForGlyphAtIndex:v12 effectiveRange:0];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v25 = [v9 textContainers];
      if ([v25 count] != 1)
      {
        v39 = [MEMORY[0x1E696AAA8] currentHandler];
        [v39 handleFailureInMethod:a2 object:self file:@"_UITextKit1LayoutController.m" lineNumber:646 description:{@"Invalid parameter not satisfying: %@", @"textContainers.count == 1"}];
      }

      v14 = [v25 firstObject];
      v26 = [v9 glyphRangeForTextContainer:v14];
      if (v26 + v27)
      {
        v12 = v26 + v27 - 1;
      }

      else
      {
        v12 = 0;
      }

      v28 = +[_UITextKitTextPosition positionWithOffset:](_UITextKitTextPosition, "positionWithOffset:", [v9 characterIndexForGlyphAtIndex:v12]);

      v40 = v28;
    }

    [v9 lineFragmentRectForGlyphAtIndex:v12 effectiveRange:0];
    v17 = v29;
    v19 = v30;
    v21 = v31;
    v23 = v32;
    [v9 baselineOffsetForGlyphAtIndex:v12];
    v24 = v33;
  }

  else
  {
    v15 = [v9 extraLineFragmentTextContainer];
    if (v15)
    {
      v14 = v15;
      [v9 extraLineFragmentRect];
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
      v35 = [v9 textContainers];
      v14 = [v35 firstObject];

      [v14 size];
      v24 = 0.0;
      if (v36 <= 0.0)
      {
        v21 = *(v34 + 16);
        v23 = *(v34 + 24);
      }

      else
      {
        [v14 size];
        v21 = v37;
        v23 = v38;
      }
    }
  }

  v8[2](v8, v14, v17, v19, v21, v23, v24);
}

- (NSArray)textContainers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__22;
  v10 = __Block_byref_object_dispose__22;
  v11 = 0;
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45___UITextKit1LayoutController_textContainers__block_invoke;
  v5[3] = &unk_1E70F9638;
  v5[4] = &v6;
  [v2 coordinateAccess:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)textContainerForPosition:(id)a3
{
  v3 = [0 glyphIndexForCharacterAtIndex:{objc_msgSend(a3, "offset")}];

  return [0 textContainerForGlyphAtIndex:v3 effectiveRange:0];
}

- (id)dequeueCanvasViewForTextContainer:(id)a3
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

- (id)previewRendererForRange:(id)a3 unifyRects:(BOOL)a4
{
  v4 = a4;
  v6 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3];
  v8 = v7;
  v9 = [UITextDragPreviewRenderer alloc];
  v10 = [(_UITextKit1LayoutController *)self layoutManager];
  v11 = [(UITextDragPreviewRenderer *)v9 initWithLayoutManager:v10 range:v6 unifyRects:v8, v4];

  return v11;
}

- (void)ensureLayoutForTextContainer:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self layoutManager];
  [v5 ensureLayoutForTextContainer:v4];
}

- (CGRect)usedRectForTextContainer:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self layoutManager];
  [v5 usedRectForTextContainer:v4];
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

- (void)ensureLayoutForBounds:(CGRect)a3 inTextContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(_UITextKit1LayoutController *)self layoutManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69___UITextKit1LayoutController_ensureLayoutForBounds_inTextContainer___block_invoke;
  v12[3] = &unk_1E70F9660;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v13 = v9;
  v11 = v9;
  [v10 coordinateAccess:v12];
}

- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)a3
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

- (void)ensureLayoutForRange:(id)a3
{
  v4 = a3;
  v8 = [(_UITextKit1LayoutController *)self layoutManager];
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:v4];
  v7 = v6;

  [v8 ensureLayoutForCharacterRange:{v5, v7}];
}

- (void)invalidateLayoutForRange:(id)a3
{
  v4 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3];
  v6 = v5;
  v7 = [(_UITextKit1LayoutController *)self layoutManager];
  [v7 invalidateGlyphsForCharacterRange:v4 changeInLength:v6 actualCharacterRange:{0, 0}];
  [v7 invalidateLayoutForCharacterRange:v4 actualCharacterRange:{v6, 0}];
}

- (CGRect)boundingRectForRange:(id)a3
{
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3];

  [(_UITextKit1LayoutController *)self boundingRectForCharacterRange:v5, v4];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (_NSRange)characterRangeForTextRange:(id)a3
{
  v3 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3 clippedToDocument:0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)characterRangeForTextRange:(id)a3 clippedToDocument:(BOOL)a4
{
  v4 = a4;
  location = [a3 asRange];
  v8 = location;
  v9 = length;
  if (v4)
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

- (id)characterRangesForTextRange:(id)a3 clippedToDocument:(BOOL)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696B098];
  v5 = [(_UITextKit1LayoutController *)self characterRangeForTextRange:a3 clippedToDocument:a4];
  v7 = [v4 valueWithRange:{v5, v6}];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  return v8;
}

- (id)textRangeForCharacterRanges:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 unionRange];
    v7 = [(_UITextKit1LayoutController *)self textRangeForCharacterRange:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)a3 type:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v16 = 0;
  v17 = 0;
  v15 = "";
  v6 = [(_UITextKit1LayoutController *)self layoutManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___UITextKit1LayoutController_rangeOfCharacterClusterAtIndex_type___block_invoke;
  v11[3] = &unk_1E70F9688;
  v11[4] = &v12;
  v11[5] = a3;
  v11[6] = a4;
  [v6 coordinateAccess:v11];

  v7 = v13[4];
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)boundingRectForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(_UITextKit1LayoutController *)self layoutManager];
  v7 = [v6 glyphRangeForCharacterRange:location actualCharacterRange:{length, 0}];
  v9 = v8;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4010000000;
  v43 = "";
  v10 = *(MEMORY[0x1E695F050] + 16);
  v44 = *MEMORY[0x1E695F050];
  v45 = v10;
  v11 = [(_UITextKit1LayoutController *)self textStorage];
  v12 = [v11 _ui_containsTables];

  if (v12)
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __61___UITextKit1LayoutController_boundingRectForCharacterRange___block_invoke;
    v37 = &unk_1E70F96B0;
    v38 = v6;
    v39 = &v40;
    [v38 ui_enumerateTextBlocksInGlyphRange:v7 usingBlock:{v9, &v34}];
  }

  v13 = [v6 textContainerForGlyphAtIndex:v7 effectiveRange:{0, v34, v35, v36, v37}];
  if (CGRectIsNull(v41[1]))
  {
    [v6 boundingRectForGlyphRange:v7 inTextContainer:{v9, v13}];
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

- (CGRect)unionRectForCharacterRange:(_NSRange)a3 bottomInset:(double)a4
{
  length = a3.length;
  location = a3.location;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = "";
  v8 = *(MEMORY[0x1E695F050] + 16);
  v34 = *MEMORY[0x1E695F050];
  v35 = v8;
  v9 = [(_UITextKit1LayoutController *)self layoutManager];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __70___UITextKit1LayoutController_unionRectForCharacterRange_bottomInset___block_invoke;
  v29[3] = &unk_1E70F9688;
  v29[5] = location;
  v29[6] = length;
  v29[4] = &v30;
  [v9 coordinateAccess:v29];
  [v9 extraLineFragmentRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(_UITextKit1LayoutController *)self textStorage];
  if (location + length == [v18 length])
  {
    v36.origin.x = v11;
    v36.origin.y = v13;
    v36.size.width = v15;
    v36.size.height = v17;
    IsEmpty = CGRectIsEmpty(v36);

    p_x = &v31->origin.x;
    if (!IsEmpty)
    {
      v39.size.height = v17 + a4;
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

- (void)invalidateDisplayForCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(_UITextKit1LayoutController *)self layoutManager];
  [v5 invalidateDisplayForCharacterRange:{location, length}];
}

- (void)setDrawsDebugBaselines:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UITextKit1LayoutController *)self layoutManager];
  [v4 _setDrawsDebugBaselines:v3];
}

- (BOOL)drawsDebugBaselines
{
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  v3 = [v2 _drawsDebugBaselines];

  return v3;
}

- (void)setLayoutManagerDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UITextKit1LayoutController *)self layoutManager];
  [v5 setDelegate:v4];
}

- (NSLayoutManagerDelegate)layoutManagerDelegate
{
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  v3 = [v2 delegate];

  return v3;
}

- (void)resetFontForExtraBulletRendering
{
  v2 = [(_UITextKit1LayoutController *)self layoutManager];
  if (objc_opt_respondsToSelector())
  {
    [v2 resetFontForExtraBulletRendering];
  }
}

@end