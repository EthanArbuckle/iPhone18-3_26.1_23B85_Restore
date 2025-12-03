@interface _UITextKit2LayoutController
+ (BOOL)coordinateSystemCompatibilityFor2022AndEarlierSDKEnabled;
- (CGRect)boundingRectForCharacterRange:(_NSRange)range;
- (CGRect)boundingRectForRange:(id)range;
- (CGRect)extraLineFragmentRect;
- (CGRect)insertionRectForPosition:(id)position typingAttributes:(id)attributes placeholderAttachment:(id)attachment textContainer:(id *)container;
- (CGRect)unionRectForCharacterRange:(_NSRange)range bottomInset:(double)inset;
- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)container;
- (CGRect)usedRectForTextContainer:(id)container;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)documentRange;
- (_NSRange)characterRangeForTextRange:(id)range;
- (_NSRange)characterRangeForTextRange:(id)range clippedToDocument:(BOOL)document;
- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)index type:(int64_t)type;
- (_UITextKit2LayoutController)initWithTextView:(id)view textContainer:(id)container;
- (_UITextKit2LayoutController)initWithTextView:(id)view textContentStorage:(id)storage textContainer:(id)container;
- (double)baselineOffsetForFirstGlyph;
- (id)_locationWithOffset:(int64_t)offset;
- (id)_rangeForCharacterRange:(_NSRange)range;
- (id)_updateSelectionWithTextRange:(id)range affinity:(int64_t)affinity typingAttributes:(id)attributes;
- (id)_visualSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction;
- (id)_writingToolsMinimumContextualRangeForRange:(id)range;
- (id)annotatedSubstringForRange:(id)range;
- (id)annotationAttribute:(id)attribute atPosition:(id)position;
- (id)attributedTextInRange:(id)range;
- (id)attributesAtPosition:(id)position inDirection:(int64_t)direction;
- (id)characterRangesForTextRange:(id)range clippedToDocument:(BOOL)document;
- (id)cursorPositionAtPoint:(CGPoint)point inContainer:(id)container;
- (id)dequeueCanvasViewForTextContainer:(id)container;
- (id)emptyTextRangeAtPosition:(id)position;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset affinity:(int64_t)affinity anchorPositionOffset:(double)positionOffset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset affinity:(int64_t)affinity;
- (id)positionWithOffset:(int64_t)offset affinity:(int64_t)affinity;
- (id)previewRendererForRange:(id)range unifyRects:(BOOL)rects;
- (id)searchableObject;
- (id)selectionRectsForRange:(id)range fromView:(id)view forContainerPassingTest:(id)test;
- (id)textContainerForPosition:(id)position;
- (id)textLayoutManager:(id)manager renderingAttributesForLink:(id)link atLocation:(id)location defaultAttributes:(id)attributes;
- (id)textRangeForBounds:(CGRect)bounds inTextContainer:(id)container layoutIfNeeded:(BOOL)needed;
- (id)textRangeForCharacterRange:(_NSRange)range;
- (id)textRangeForCharacterRanges:(id)ranges;
- (id)textRangeForLineEnclosingPosition:(id)position;
- (id)textRangeForLineEnclosingPosition:(id)position effectiveAffinity:(int64_t)affinity;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (id)viewportRangeForTextContainer:(id)container;
- (int64_t)baseWritingDirectionAtPosition:(id)position;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (void)_invalidateTemporaryAttributesInRange:(id)range;
- (void)_textContentStorageAddedUnsupportedAttribute:(id)attribute;
- (void)addAnnotationAttribute:(id)attribute value:(id)value forRange:(id)range;
- (void)addGhostedRange:(id)range;
- (void)addInvisibleRange:(id)range;
- (void)addRenderingAttributes:(id)attributes forRange:(id)range;
- (void)dealloc;
- (void)ensureLayoutForBounds:(CGRect)bounds inTextContainer:(id)container;
- (void)ensureLayoutForRange:(id)range;
- (void)ensureLayoutForTextContainer:(id)container;
- (void)enumerateTextLineFragmentsInRange:(id)range usingBlock:(id)block;
- (void)enumerateTextSegmentsInRange:(id)range inTextContainer:(id)container usingBlock:(id)block;
- (void)invalidateLayoutForRange:(id)range;
- (void)removeAnnotationAttribute:(id)attribute forRange:(id)range;
- (void)removeRenderingAttributes:(id)attributes forRange:(id)range;
- (void)requestTextGeometryAtPosition:(id)position typingAttributes:(id)attributes resultBlock:(id)block;
- (void)resetTextViewportLayoutControllerLayoutForPosition:(id)position;
- (void)setDocumentObscured:(BOOL)obscured;
- (void)setEditable:(BOOL)editable;
- (void)setUnobscuredRange:(id)range;
@end

@implementation _UITextKit2LayoutController

- (UITextPosition)beginningOfDocument
{
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  location = [documentRange location];

  v5 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:location affinity:0];

  return v5;
}

- (UITextRange)documentRange
{
  v7[1] = *MEMORY[0x1E69E9840];
  textContentStorage = self->_textContentStorage;
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v7[0] = documentRange;
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
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  if (([documentRange isEmpty] & 1) == 0)
  {
    v4 = [off_1E70ECBF0 alloc];
    location = [documentRange location];
    v6 = [v4 initWithLocation:location];

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
  searchableObject = [WeakRetained searchableObject];

  return searchableObject;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*off_1E70ECA18 object:0];

  v4.receiver = self;
  v4.super_class = _UITextKit2LayoutController;
  [(_UITextKit2LayoutController *)&v4 dealloc];
}

- (UITextPosition)endOfDocument
{
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  endLocation = [documentRange endLocation];

  v5 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:endLocation affinity:0];

  return v5;
}

- (CGRect)extraLineFragmentRect
{
  v3 = [off_1E70ECBF0 alloc];
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  endLocation = [documentRange endLocation];
  v6 = [v3 initWithLocation:endLocation];

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

- (_UITextKit2LayoutController)initWithTextView:(id)view textContentStorage:(id)storage textContainer:(id)container
{
  viewCopy = view;
  storageCopy = storage;
  containerCopy = container;
  v21.receiver = self;
  v21.super_class = _UITextKit2LayoutController;
  v11 = [(_UITextKit2LayoutController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_textView, viewCopy);
    v13 = objc_alloc_init(off_1E70ECBD8);
    textLayoutManager = v12->_textLayoutManager;
    v12->_textLayoutManager = v13;

    [(NSTextLayoutManager *)v12->_textLayoutManager setTextContainer:containerCopy];
    [(NSTextLayoutManager *)v12->_textLayoutManager setDelegate:v12];
    if (objc_opt_respondsToSelector())
    {
      v15 = v12->_textLayoutManager;
      WeakRetained = objc_loadWeakRetained(&v12->_textView);
      -[NSTextLayoutManager setBreaksLinesForInteractiveText:](v15, "setBreaksLinesForInteractiveText:", [WeakRetained isEditable]);
    }

    objc_storeStrong(&v12->_textContentStorage, storage);
    [(NSTextContentStorage *)v12->_textContentStorage addTextLayoutManager:v12->_textLayoutManager];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__textContentStorageAddedUnsupportedAttribute_ name:*off_1E70ECA18 object:v12->_textContentStorage];

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    textCanvasViews = v12->_textCanvasViews;
    v12->_textCanvasViews = strongToStrongObjectsMapTable;
  }

  return v12;
}

- (_UITextKit2LayoutController)initWithTextView:(id)view textContainer:(id)container
{
  viewCopy = view;
  textLayoutManager = [container textLayoutManager];
  v27.receiver = self;
  v27.super_class = _UITextKit2LayoutController;
  v9 = [(_UITextKit2LayoutController *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_textView, viewCopy);
    objc_storeStrong(&v10->_textLayoutManager, textLayoutManager);
    delegate = [(NSTextLayoutManager *)v10->_textLayoutManager delegate];

    if (!delegate)
    {
      [(NSTextLayoutManager *)v10->_textLayoutManager setDelegate:v10];
    }

    textContentManager = [textLayoutManager textContentManager];
    if (textContentManager)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:
        textContentStorage = v10->_textContentStorage;
        v10->_textContentStorage = textContentManager;

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:v10 selector:sel__textContentStorageAddedUnsupportedAttribute_ name:*off_1E70ECA18 object:v10->_textContentStorage];

        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
        textCanvasViews = v10->_textCanvasViews;
        v10->_textCanvasViews = strongToStrongObjectsMapTable;

        goto LABEL_7;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = objc_opt_class();
      v20 = NSStringFromClass(v21);
      v22 = MEMORY[0x1E696AEC0];
      v23 = textContentManager;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

      [currentHandler handleFailureInMethod:a2 object:v10 file:@"_UITextKit2LayoutController.m" lineNumber:114 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"textLayoutManager.textContentManager", v20, v26}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"_UITextKit2LayoutController.m" lineNumber:114 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"textLayoutManager.textContentManager", v20}];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

- (id)_locationWithOffset:(int64_t)offset
{
  textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  documentRange = [textContentManager documentRange];
  location = [documentRange location];

  v7 = [textContentManager locationFromLocation:location withOffset:offset];

  return v7;
}

- (id)_rangeForCharacterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  documentRange = [textContentManager documentRange];
  location = [documentRange location];
  v8 = [textContentManager locationFromLocation:location withOffset:location];
  v9 = v8;
  if (v8)
  {
    endLocation = v8;
  }

  else
  {
    endLocation = [documentRange endLocation];
  }

  v11 = endLocation;

  v12 = [textContentManager locationFromLocation:v11 withOffset:length];
  v13 = [[off_1E70ECBF0 alloc] initWithLocation:v11 endLocation:v12];

  return v13;
}

- (id)_updateSelectionWithTextRange:(id)range affinity:(int64_t)affinity typingAttributes:(id)attributes
{
  v18[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  attributesCopy = attributes;
  if (rangeCopy)
  {
    v10 = [[off_1E70ECBF8 alloc] initWithRange:rangeCopy affinity:affinity == 0 granularity:0];
    [v10 setTypingAttributes:attributesCopy];
    v18[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(NSTextLayoutManager *)self->_textLayoutManager setTextSelections:v11];

    textRanges = [v10 textRanges];
    firstObject = [textRanges firstObject];
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

    firstObject = 0;
  }

  return firstObject;
}

- (id)viewportRangeForTextContainer:(id)container
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSTextLayoutManager *)self->_textLayoutManager viewportRangeForTextContainer:container];
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

- (id)emptyTextRangeAtPosition:(id)position
{
  v12[1] = *MEMORY[0x1E69E9840];
  positionCopy = position;
  if (!positionCopy)
  {
    positionCopy = [(_UITextKit2LayoutController *)self beginningOfDocument];
  }

  v5 = [off_1E70ECBF0 alloc];
  location = [positionCopy location];
  v7 = [v5 initWithLocation:location];

  textContentStorage = self->_textContentStorage;
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v9 affinity:0];

  return v10;
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  v20[1] = *MEMORY[0x1E69E9840];
  positionCopy = position;
  toPositionCopy = toPosition;
  v9 = toPositionCopy;
  if (positionCopy)
  {
    if (toPositionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    positionCopy = [(_UITextKit2LayoutController *)self beginningOfDocument];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v9 = positionCopy;
LABEL_3:
  location = [positionCopy location];
  location2 = [v9 location];
  v12 = [location compare:location2];
  if (v12 == 1)
  {
    v13 = location2;
  }

  else
  {
    v13 = location;
  }

  if (v12 != 1)
  {
    location = location2;
  }

  v14 = [[off_1E70ECBF0 alloc] initWithLocation:v13 endLocation:location];
  if (!v14)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextKit2LayoutController.m" lineNumber:238 description:{@"couldn't create text range with %@ and %@.", positionCopy, v9}];
  }

  textContentStorage = self->_textContentStorage;
  v20[0] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = +[_UITextKitTextRange rangeWithTextContentManager:textRanges:startAffinity:endAffinity:](_UITextKitTextRange, "rangeWithTextContentManager:textRanges:startAffinity:endAffinity:", textContentStorage, v16, [positionCopy affinity], objc_msgSend(v9, "affinity"));

  return v17;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset affinity:(int64_t)affinity
{
  positionCopy = position;
  beginningOfDocument = positionCopy;
  if (offset)
  {
    if (!positionCopy)
    {
      beginningOfDocument = [(_UITextKit2LayoutController *)self beginningOfDocument];
    }

    textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
    location = [beginningOfDocument location];
    v12 = [textContentManager locationFromLocation:location withOffset:offset];

    if (v12)
    {
      v13 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v12 affinity:affinity];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    beginningOfDocument = positionCopy;
    v13 = beginningOfDocument;
  }

  return v13;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset affinity:(int64_t)affinity anchorPositionOffset:(double)positionOffset
{
  positionCopy = position;
  location = [positionCopy location];
  v14 = [[off_1E70ECBF8 alloc] initWithLocation:location affinity:{objc_msgSend(positionCopy, "affinity") == 0}];
  [v14 setAnchorPositionOffset:positionOffset];
  if ((direction - 2) >= 4)
  {
    directionCopy = 3;
  }

  else
  {
    directionCopy = direction;
  }

  textSelectionNavigation = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
  if (offset < 1)
  {
    v17 = v14;
  }

  else
  {
    do
    {
      v17 = [textSelectionNavigation destinationSelectionForTextSelection:v14 direction:directionCopy destination:0 extending:0 confined:0];

      v14 = v17;
      --offset;
    }

    while (offset);
  }

  textRanges = [v17 textRanges];
  if ([textRanges count] == 1)
  {
    textRanges2 = [v17 textRanges];
    firstObject = [textRanges2 firstObject];
    isEmpty = [firstObject isEmpty];
  }

  else
  {
    isEmpty = 0;
  }

  affinity = [v17 affinity];
  textRanges3 = [v17 textRanges];
  v24 = textRanges3;
  if (affinity)
  {
    lastObject = [textRanges3 lastObject];
    [lastObject endLocation];
  }

  else
  {
    lastObject = [textRanges3 firstObject];
    [lastObject location];
  }
  v26 = ;

  if (isEmpty)
  {
    affinity = [v17 affinity] == 0;
  }

  if (v26)
  {
    v27 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v26 affinity:affinity];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)textRangeForLineEnclosingPosition:(id)position
{
  positionCopy = position;
  v5 = [(_UITextKit2LayoutController *)self textRangeForLineEnclosingPosition:positionCopy effectiveAffinity:[(_UITextKit2LayoutController *)self affinityForPosition:positionCopy]];

  return v5;
}

- (id)textRangeForLineEnclosingPosition:(id)position effectiveAffinity:(int64_t)affinity
{
  v36[1] = *MEMORY[0x1E69E9840];
  positionCopy = position;
  if (!positionCopy)
  {
    positionCopy = [(_UITextKit2LayoutController *)self beginningOfDocument];
  }

  v35 = positionCopy;
  location = [positionCopy location];
  selfCopy = self;
  textSelectionNavigation = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
  v9 = affinity == 0;
  v10 = [[off_1E70ECBF8 alloc] initWithLocation:location affinity:v9];
  v11 = [textSelectionNavigation destinationSelectionForTextSelection:v10 direction:1 destination:2 extending:0 confined:1];
  v33 = v10;
  v34 = textSelectionNavigation;
  v12 = [textSelectionNavigation destinationSelectionForTextSelection:v10 direction:0 destination:2 extending:0 confined:1];
  textRanges = [v11 textRanges];
  firstObject = [textRanges firstObject];
  location2 = [firstObject location];

  textRanges2 = [v12 textRanges];
  lastObject = [textRanges2 lastObject];
  endLocation = [lastObject endLocation];

  affinity = [v11 affinity];
  affinity2 = [v12 affinity];
  if (location2)
  {
    v21 = endLocation == 0;
  }

  else
  {
    v21 = 1;
  }

  v31 = location;
  if (v21)
  {
    v22 = [[off_1E70ECBF0 alloc] initWithLocation:location];
    v23 = v9;
  }

  else
  {
    v24 = affinity2;
    v25 = [location2 compare:endLocation];
    if (v25 == 1)
    {
      v26 = location2;
    }

    else
    {
      v26 = endLocation;
    }

    if (v25 == 1)
    {
      v9 = v24;
    }

    else
    {
      v9 = affinity;
    }

    if (v25 == 1)
    {
      v23 = affinity;
    }

    else
    {
      v23 = v24;
    }

    if (v25 == 1)
    {
      location2 = endLocation;
    }

    v22 = [[off_1E70ECBF0 alloc] initWithLocation:location2 endLocation:v26];
    endLocation = v26;
  }

  textContentStorage = selfCopy->_textContentStorage;
  v36[0] = v22;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v29 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v28 startAffinity:!v9 endAffinity:v23 == 0];

  return v29;
}

- (id)_visualSelectionRangeForExtent:(id)extent forPoint:(CGPoint)point fromPosition:(id)position inDirection:(int64_t)direction
{
  y = point.y;
  x = point.x;
  v38[1] = *MEMORY[0x1E69E9840];
  textLayoutManager = self->_textLayoutManager;
  positionCopy = position;
  extentCopy = extent;
  textSelectionNavigation = [(NSTextLayoutManager *)textLayoutManager textSelectionNavigation];
  location = [positionCopy location];

  v16 = [[off_1E70ECBF8 alloc] initWithLocation:location affinity:direction == 0];
  location2 = [extentCopy location];

  v18 = [(NSTextLayoutManager *)self->_textLayoutManager textContainerForLocation:location2];
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
  v31 = [textSelectionNavigation textSelectionsInteractingAtPoint:location2 inContainerAtLocation:v30 anchors:1 modifiers:1 selecting:v26 bounds:{v28, v19, v20, v22, v24}];

  array = [MEMORY[0x1E695DF70] array];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __96___UITextKit2LayoutController__visualSelectionRangeForExtent_forPoint_fromPosition_inDirection___block_invoke;
  v36[3] = &unk_1E710A9C0;
  v33 = array;
  v37 = v33;
  [v31 enumerateObjectsUsingBlock:v36];
  if ([v33 count])
  {
    v34 = [_UITextKitTextRange rangeWithTextContentManager:self->_textContentStorage textRanges:v33 affinity:direction];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  toPositionCopy = toPosition;
  location = [position location];
  location2 = [toPositionCopy location];

  v8 = [location compare:location2];
  return v8;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  v8 = toPositionCopy;
  if (!positionCopy)
  {
    positionCopy = [(_UITextKit2LayoutController *)self beginningOfDocument];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = positionCopy;
    goto LABEL_3;
  }

  if (!toPositionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  location = [positionCopy location];
  location2 = [v8 location];
  v12 = [textContentManager offsetFromLocation:location toLocation:location2];

  return v12;
}

- (CGRect)insertionRectForPosition:(id)position typingAttributes:(id)attributes placeholderAttachment:(id)attachment textContainer:(id *)container
{
  positionCopy = position;
  attributesCopy = attributes;
  attachmentCopy = attachment;
  v52 = 0;
  v53 = &v52;
  v54 = 0x4010000000;
  v55 = "";
  v13 = *(MEMORY[0x1E695F050] + 16);
  v56 = *MEMORY[0x1E695F050];
  v57 = v13;
  if (!positionCopy)
  {
    positionCopy = [(_UITextKit2LayoutController *)self beginningOfDocument];
  }

  v14 = positionCopy;
  v15 = [off_1E70ECBF0 alloc];
  location = [v14 location];
  v17 = [v15 initWithLocation:location];

  if ([v14 affinity] == 1)
  {
    v18 = 17;
  }

  else
  {
    v18 = 1;
  }

  v19 = -[_UITextKit2LayoutController _updateSelectionWithTextRange:affinity:typingAttributes:](self, "_updateSelectionWithTextRange:affinity:typingAttributes:", v17, [v14 affinity], attributesCopy);

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
    containerCopy = container;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__97;
    v49 = __Block_byref_object_dispose__97;
    v50 = 0;
    v21 = self->_textLayoutManager;
    location2 = [v19 location];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __109___UITextKit2LayoutController_insertionRectForPosition_typingAttributes_placeholderAttachment_textContainer___block_invoke_76;
    v44[3] = &unk_1E710AA10;
    v44[4] = &v45;
    v23 = [(NSTextLayoutManager *)v21 enumerateTextLayoutFragmentsFromLocation:location2 options:1 usingBlock:v44];

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

    container = containerCopy;
  }

  if (!CGRectIsNull(v53[1]))
  {
    v26 = self->_textLayoutManager;
    location3 = [v14 location];
    v28 = [(NSTextLayoutManager *)v26 textContainerForLocation:location3];

    layoutOrientation = [v28 layoutOrientation];
    v30 = v53;
    v31 = 40;
    if (!layoutOrientation)
    {
      v31 = 32;
    }

    v32 = 56;
    if (!layoutOrientation)
    {
      v32 = 48;
    }

    *(&v53->origin.x + v31) = *(&v53->origin.x + v31) + -1.0;
    *(&v30->origin.x + v32) = 2.0;
    if (container)
    {
      v33 = v28;
      *container = v28;
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

- (id)textRangeForBounds:(CGRect)bounds inTextContainer:(id)container layoutIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v17[1] = *MEMORY[0x1E69E9840];
  v11 = [(NSMapTable *)self->_textCanvasViews objectForKey:container];
  v12 = [v11 textRangeForBounds:neededCopy layoutIfNeeded:{x, y, width, height}];
  textContentStorage = self->_textContentStorage;
  v17[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v14 affinity:0];

  return v15;
}

- (id)attributesAtPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__97;
  v25 = __Block_byref_object_dispose__97;
  v26 = 0;
  location = [positionCopy location];
  textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64___UITextKit2LayoutController_attributesAtPosition_inDirection___block_invoke;
  v15[3] = &unk_1E710AA38;
  v19 = a2;
  v15[4] = self;
  v10 = textContentManager;
  v16 = v10;
  v11 = location;
  v17 = v11;
  v18 = &v21;
  directionCopy = direction;
  v12 = [v10 enumerateTextElementsFromLocation:v11 options:0 usingBlock:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

- (int64_t)baseWritingDirectionAtPosition:(id)position
{
  textLayoutManager = self->_textLayoutManager;
  location = [position location];
  v5 = [(NSTextLayoutManager *)textLayoutManager baseWritingDirectionAtLocation:location];

  return v5;
}

- (void)enumerateTextLineFragmentsInRange:(id)range usingBlock:(id)block
{
  blockCopy = block;
  v7 = self->_textLayoutManager;
  unionTextRange = [range unionTextRange];
  location = [unionTextRange location];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76___UITextKit2LayoutController_enumerateTextLineFragmentsInRange_usingBlock___block_invoke;
  v14[3] = &unk_1E710AA60;
  v15 = unionTextRange;
  v16 = v7;
  selfCopy = self;
  v18 = blockCopy;
  v10 = blockCopy;
  v11 = v7;
  v12 = unionTextRange;
  v13 = [(NSTextLayoutManager *)v11 enumerateTextLayoutFragmentsFromLocation:location options:4 usingBlock:v14];
}

- (void)enumerateTextSegmentsInRange:(id)range inTextContainer:(id)container usingBlock:(id)block
{
  blockCopy = block;
  textLayoutManager = self->_textLayoutManager;
  unionTextRange = [range unionTextRange];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87___UITextKit2LayoutController_enumerateTextSegmentsInRange_inTextContainer_usingBlock___block_invoke;
  v11[3] = &unk_1E710AA88;
  v12 = blockCopy;
  v10 = blockCopy;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:unionTextRange type:0 options:1 usingBlock:v11];
}

- (id)selectionRectsForRange:(id)range fromView:(id)view forContainerPassingTest:(id)test
{
  rangeCopy = range;
  viewCopy = view;
  testCopy = test;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
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
  v12 = rangeCopy;
  textKit2Ranges = [v12 textKit2Ranges];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke;
  v37[3] = &unk_1E710AAD8;
  v42 = v48;
  v37[4] = self;
  v14 = array2;
  v38 = v14;
  v15 = testCopy;
  v41 = v15;
  v16 = v12;
  v39 = v16;
  v43 = &v53;
  v17 = array;
  v40 = v17;
  v44 = &v49;
  v45 = v47;
  v46 = xmmword_18A6507C0;
  [textKit2Ranges enumerateObjectsUsingBlock:v37];

  if ([v17 count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __87___UITextKit2LayoutController_selectionRectsForRange_fromView_forContainerPassingTest___block_invoke_3;
    v31 = &unk_1E710AB00;
    v32 = v14;
    v33 = viewCopy;
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

      v22 = [v19 objectAtIndexedSubscript:{v20, viewCopy, v28, v29, v30, v31, v32, v33}];
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

- (id)cursorPositionAtPoint:(CGPoint)point inContainer:(id)container
{
  y = point.y;
  x = point.x;
  containerCopy = container;
  textContainers = [(NSTextLayoutManager *)self->_textLayoutManager textContainers];
  v9 = [textContainers indexOfObject:containerCopy];

  v10 = [(NSTextLayoutManager *)self->_textLayoutManager rangeForTextContainerAtIndex:v9];
  location = [v10 location];

  WeakRetained = objc_loadWeakRetained(&self->_textView);
  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_textView);
    [v13 _convertPointFromRenderSpace:{x, y}];
    x = v14;
    y = v15;
  }

  textSelectionNavigation = [(NSTextLayoutManager *)self->_textLayoutManager textSelectionNavigation];
  v17 = *MEMORY[0x1E695EFF8];
  v18 = *(MEMORY[0x1E695EFF8] + 8);
  [containerCopy size];
  v21 = [textSelectionNavigation textSelectionsInteractingAtPoint:location inContainerAtLocation:MEMORY[0x1E695E0F0] anchors:0 modifiers:1 selecting:x bounds:{y, v17, v18, v19, v20}];
  firstObject = [v21 firstObject];
  textRanges = [firstObject textRanges];
  firstObject2 = [textRanges firstObject];

  affinity = [firstObject affinity];
  if (firstObject2)
  {
    v26 = affinity == 0;
    textContentStorage = self->_textContentStorage;
    location2 = [firstObject2 location];
    endOfDocument = [_UITextKitTextPosition positionWithTextContentManager:textContentStorage location:location2 affinity:v26];
  }

  else
  {
    endOfDocument = [(_UITextKit2LayoutController *)self endOfDocument];
  }

  return endOfDocument;
}

- (void)_invalidateTemporaryAttributesInRange:(id)range
{
  textCanvasViews = self->_textCanvasViews;
  rangeCopy = range;
  v5 = NSAllMapTableValues(textCanvasViews);
  [v5 makeObjectsPerformSelector:sel_invalidateTemporaryAttributesInRange_ withObject:rangeCopy];
}

- (void)addAnnotationAttribute:(id)attribute value:(id)value forRange:(id)range
{
  attributeCopy = attribute;
  valueCopy = value;
  rangeCopy = range;
  textKit2Ranges = [rangeCopy textKit2Ranges];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69___UITextKit2LayoutController_addAnnotationAttribute_value_forRange___block_invoke;
  v14[3] = &unk_1E710AB28;
  v14[4] = self;
  v15 = attributeCopy;
  v16 = valueCopy;
  v12 = valueCopy;
  v13 = attributeCopy;
  [textKit2Ranges enumerateObjectsUsingBlock:v14];

  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:rangeCopy];
}

- (id)annotationAttribute:(id)attribute atPosition:(id)position
{
  attributeCopy = attribute;
  positionCopy = position;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__97;
  v20 = __Block_byref_object_dispose__97;
  v21 = 0;
  textLayoutManager = self->_textLayoutManager;
  location = [positionCopy location];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62___UITextKit2LayoutController_annotationAttribute_atPosition___block_invoke;
  v13[3] = &unk_1E710AB50;
  v15 = &v16;
  v10 = attributeCopy;
  v14 = v10;
  [(NSTextLayoutManager *)textLayoutManager enumerateTemporaryAttributesFromLocation:location reverse:0 usingBlock:v13];

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)removeAnnotationAttribute:(id)attribute forRange:(id)range
{
  attributeCopy = attribute;
  rangeCopy = range;
  textKit2Ranges = [rangeCopy textKit2Ranges];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __66___UITextKit2LayoutController_removeAnnotationAttribute_forRange___block_invoke;
  v13 = &unk_1E710AB78;
  selfCopy = self;
  v15 = attributeCopy;
  v9 = attributeCopy;
  [textKit2Ranges enumerateObjectsUsingBlock:&v10];

  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:rangeCopy, v10, v11, v12, v13, selfCopy];
}

- (void)addRenderingAttributes:(id)attributes forRange:(id)range
{
  rangeCopy = range;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __63___UITextKit2LayoutController_addRenderingAttributes_forRange___block_invoke;
  v11 = &unk_1E70F3898;
  v12 = rangeCopy;
  selfCopy = self;
  v7 = rangeCopy;
  [attributes enumerateKeysAndObjectsUsingBlock:&v8];
  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:v7, v8, v9, v10, v11];
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
  obj = attributesCopy;
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
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        textKit2Ranges = [rangeCopy textKit2Ranges];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __66___UITextKit2LayoutController_removeRenderingAttributes_forRange___block_invoke;
        v15[3] = &unk_1E710AB78;
        v15[4] = self;
        v15[5] = v12;
        [textKit2Ranges enumerateObjectsUsingBlock:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(_UITextKit2LayoutController *)self _invalidateTemporaryAttributesInRange:rangeCopy];
}

- (void)addGhostedRange:(id)range
{
  rangeCopy = range;
  ghostedRanges = self->_ghostedRanges;
  v8 = rangeCopy;
  if (!ghostedRanges)
  {
    v6 = objc_opt_new();
    v7 = self->_ghostedRanges;
    self->_ghostedRanges = v6;

    rangeCopy = v8;
    ghostedRanges = self->_ghostedRanges;
  }

  [(NSMutableSet *)ghostedRanges addObject:rangeCopy];
}

- (void)addInvisibleRange:(id)range
{
  rangeCopy = range;
  invisibleRanges = self->_invisibleRanges;
  v8 = rangeCopy;
  if (!invisibleRanges)
  {
    v6 = objc_opt_new();
    v7 = self->_invisibleRanges;
    self->_invisibleRanges = v6;

    rangeCopy = v8;
    invisibleRanges = self->_invisibleRanges;
  }

  [(NSMutableSet *)invisibleRanges addObject:rangeCopy];
}

- (void)setDocumentObscured:(BOOL)obscured
{
  obscuredCopy = obscured;
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

  [(NSTextContentStorage *)v7 setObscured:obscuredCopy];
}

- (void)setUnobscuredRange:(id)range
{
  v10.receiver = self;
  v10.super_class = _UITextKit2LayoutController;
  [(_UITextLayoutControllerBase *)&v10 setUnobscuredRange:range];
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

  unobscuredRange = [(_UITextLayoutControllerBase *)self unobscuredRange];
  v8 = [(_UITextKit2LayoutController *)self characterRangeForTextRange:unobscuredRange];
  [(NSTextContentStorage *)v6 setUnobscuredRange:v8, v9];
}

- (void)setEditable:(BOOL)editable
{
  if (self->_editable != editable)
  {
    editableCopy = editable;
    self->_editable = editable;
    if (objc_opt_respondsToSelector())
    {
      textLayoutManager = self->_textLayoutManager;

      [(NSTextLayoutManager *)textLayoutManager setBreaksLinesForInteractiveText:editableCopy];
    }
  }
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  v6 = objc_opt_new();
  v7 = rangeCopy;
  unionTextRange = [v7 unionTextRange];
  location = [unionTextRange location];

  unionTextRange2 = [v7 unionTextRange];

  endLocation = [unionTextRange2 endLocation];

  textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53___UITextKit2LayoutController_attributedTextInRange___block_invoke;
  v21[3] = &unk_1E710ABA0;
  v26 = a2;
  v21[4] = self;
  v22 = location;
  v23 = textContentManager;
  v24 = endLocation;
  v13 = v6;
  v25 = v13;
  v14 = endLocation;
  v15 = textContentManager;
  v16 = location;
  v17 = [v15 enumerateTextElementsFromLocation:v16 options:0 usingBlock:v21];
  v18 = v25;
  v19 = v13;

  return v13;
}

- (id)annotatedSubstringForRange:(id)range
{
  rangeCopy = range;
  v5 = [(_UITextKit2LayoutController *)self attributedTextInRange:rangeCopy];
  v6 = [v5 mutableCopy];

  [v6 removeAttribute:*off_1E70EC9B0 range:{0, objc_msgSend(v6, "length")}];
  unionTextRange = [rangeCopy unionTextRange];

  location = [unionTextRange location];
  textLayoutManager = self->_textLayoutManager;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58___UITextKit2LayoutController_annotatedSubstringForRange___block_invoke;
  v16[3] = &unk_1E710ABC8;
  v17 = unionTextRange;
  v18 = location;
  v10 = v6;
  v19 = v10;
  v11 = location;
  v12 = unionTextRange;
  [(NSTextLayoutManager *)textLayoutManager enumerateTemporaryAttributesFromLocation:v11 reverse:0 usingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (id)_writingToolsMinimumContextualRangeForRange:(id)range
{
  v30[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__97;
  v28 = __Block_byref_object_dispose__97;
  v29 = 0;
  if (([documentRange isEmpty] & 1) == 0)
  {
    unionTextRange = [rangeCopy unionTextRange];
    location = [unionTextRange location];

    unionTextRange2 = [rangeCopy unionTextRange];
    endLocation = [unionTextRange2 endLocation];

    textContentStorage = self->_textContentStorage;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75___UITextKit2LayoutController__writingToolsMinimumContextualRangeForRange___block_invoke;
    v19[3] = &unk_1E710ABF0;
    v19[4] = self;
    v22 = &v24;
    v23 = a2;
    v12 = location;
    v20 = v12;
    v13 = endLocation;
    v21 = v13;
    v14 = [(NSTextContentStorage *)textContentStorage enumerateTextElementsFromLocation:v12 options:0 usingBlock:v19];
  }

  v15 = rangeCopy;
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

- (void)requestTextGeometryAtPosition:(id)position typingAttributes:(id)attributes resultBlock:(id)block
{
  positionCopy = position;
  attributesCopy = attributes;
  blockCopy = block;
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
  location = [positionCopy location];
  v15 = [v13 initWithLocation:location];

  textLayoutManager = self->_textLayoutManager;
  endLocation = [v15 endLocation];
  firstObject = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:endLocation];

  if (!firstObject)
  {
    v27 = a2;
    textContainers = [(NSTextLayoutManager *)self->_textLayoutManager textContainers];
    if ([textContainers count] != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextKit2LayoutController.m" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"textContainers.count == 1"}];
    }

    firstObject = [textContainers firstObject];
    v20 = [(NSTextLayoutManager *)self->_textLayoutManager rangeForTextContainerAtIndex:0];

    endLocation2 = [v20 endLocation];
    v15 = [[off_1E70ECBF0 alloc] initWithLocation:endLocation2];

    v22 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:endLocation2 affinity:0];

    positionCopy = v22;
    a2 = v27;
  }

  v23 = [(_UITextKit2LayoutController *)self _updateSelectionWithTextRange:v15 affinity:0 typingAttributes:attributesCopy];
  v24 = self->_textLayoutManager;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __90___UITextKit2LayoutController_requestTextGeometryAtPosition_typingAttributes_resultBlock___block_invoke;
  v28[3] = &unk_1E710AC18;
  v25 = firstObject;
  v29 = v25;
  selfCopy = self;
  v31 = &v38;
  v32 = &v34;
  v33 = a2;
  [(NSTextLayoutManager *)v24 enumerateTextSegmentsInRange:v15 type:0 options:0 usingBlock:v28];
  blockCopy[2](blockCopy, v25, positionCopy, v39[4], v39[5], v39[6], v39[7], v35[3]);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

- (id)textContainerForPosition:(id)position
{
  textLayoutManager = self->_textLayoutManager;
  location = [position location];
  v5 = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:location];

  return v5;
}

- (id)dequeueCanvasViewForTextContainer:(id)container
{
  containerCopy = container;
  v5 = [(NSMapTable *)self->_textCanvasViews objectForKey:containerCopy];
  if (!v5)
  {
    v5 = [[_UITextLayoutCanvasView alloc] initWithTextLayoutManager:self->_textLayoutManager textContainer:containerCopy];
    [(NSMapTable *)self->_textCanvasViews setObject:v5 forKey:containerCopy];
  }

  return v5;
}

- (id)previewRendererForRange:(id)range unifyRects:(BOOL)rects
{
  rectsCopy = rects;
  rangeCopy = range;
  v7 = [_UITextLayoutPreviewRenderer alloc];
  textLayoutManager = self->_textLayoutManager;
  unionTextRange = [rangeCopy unionTextRange];

  v10 = [(_UITextLayoutPreviewRenderer *)v7 initWithTextLayoutManager:textLayoutManager range:unionTextRange unifyRects:rectsCopy];

  return v10;
}

- (void)ensureLayoutForTextContainer:(id)container
{
  textLayoutManager = self->_textLayoutManager;
  containerCopy = container;
  textContainers = [(NSTextLayoutManager *)textLayoutManager textContainers];
  v7 = [textContainers indexOfObject:containerCopy];

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

- (void)ensureLayoutForBounds:(CGRect)bounds inTextContainer:(id)container
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  textLayoutManager = self->_textLayoutManager;
  containerCopy = container;
  textContainers = [(NSTextLayoutManager *)textLayoutManager textContainers];
  lastObject = [textContainers lastObject];

  if (lastObject == containerCopy)
  {
    v13 = self->_textLayoutManager;

    [(NSTextLayoutManager *)v13 ensureLayoutForBounds:x, y, width, height];
  }
}

- (CGRect)usedRectForTextContainer:(id)container
{
  textLayoutManager = self->_textLayoutManager;
  containerCopy = container;
  textContainers = [(NSTextLayoutManager *)textLayoutManager textContainers];
  lastObject = [textContainers lastObject];

  if (lastObject == containerCopy)
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

- (CGRect)updateLayoutForSizeChangeOfTextContainer:(id)container
{
  containerCopy = container;
  documentRange = [(_UITextKit2LayoutController *)self documentRange];
  [(_UITextKit2LayoutController *)self invalidateLayoutForRange:documentRange];
  [(_UITextKit2LayoutController *)self ensureLayoutForRange:documentRange];
  [(_UITextKit2LayoutController *)self usedRectForTextContainer:containerCopy];
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

- (void)ensureLayoutForRange:(id)range
{
  textLayoutManager = self->_textLayoutManager;
  unionTextRange = [range unionTextRange];
  [(NSTextLayoutManager *)textLayoutManager ensureLayoutForRange:unionTextRange];
}

- (void)invalidateLayoutForRange:(id)range
{
  unionTextRange = [range unionTextRange];
  [(NSTextLayoutManager *)self->_textLayoutManager invalidateLayoutForRange:?];
  if ([(NSTextLayoutManager *)self->_textLayoutManager usesContiguousLayout])
  {
    documentRange = [(NSTextContentStorage *)self->_textContentStorage documentRange];
    v5 = [documentRange isEqualToTextRange:unionTextRange];

    if (v5)
    {
      textLayoutManager = self->_textLayoutManager;
      location = [unionTextRange location];
      v8 = [(NSTextLayoutManager *)textLayoutManager textContainerForLocation:location];
      [(NSTextLayoutManager *)textLayoutManager textContainerChangedGeometry:v8];
    }
  }
}

- (CGRect)boundingRectForRange:(id)range
{
  rangeCopy = range;
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
  unionTextRange = [rangeCopy unionTextRange];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52___UITextKit2LayoutController_boundingRectForRange___block_invoke;
  v19[3] = &unk_1E710AC40;
  v19[4] = &v20;
  v19[5] = &v26;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:unionTextRange type:0 options:1 usingBlock:v19];

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

- (void)_textContentStorageAddedUnsupportedAttribute:(id)attribute
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_textView);
  isWritingToolsActive = [WeakRetained isWritingToolsActive];

  if (isWritingToolsActive)
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

- (_NSRange)characterRangeForTextRange:(id)range
{
  v3 = [(_UITextKit2LayoutController *)self characterRangeForTextRange:range clippedToDocument:0];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)characterRangeForTextRange:(id)range clippedToDocument:(BOOL)document
{
  documentCopy = document;
  textLayoutManager = self->_textLayoutManager;
  rangeCopy = range;
  textContentManager = [(NSTextLayoutManager *)textLayoutManager textContentManager];
  documentRange = [textContentManager documentRange];
  unionTextRange = [rangeCopy unionTextRange];

  if (documentCopy)
  {
    v10 = [unionTextRange textRangeByIntersectingWithTextRange:documentRange];

    unionTextRange = v10;
  }

  if (unionTextRange)
  {
    location = [documentRange location];
    v12 = unionTextRange;
    v13 = textContentManager;
    location2 = [v12 location];
    v15 = [v13 offsetFromLocation:location toLocation:location2];

    endLocation = [v12 endLocation];

    v17 = [v13 offsetFromLocation:location toLocation:endLocation];
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

- (id)characterRangesForTextRange:(id)range clippedToDocument:(BOOL)document
{
  v38 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
  documentRange = [textContentManager documentRange];
  v28 = rangeCopy;
  textKit2Ranges = [rangeCopy textKit2Ranges];
  v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(textKit2Ranges, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = textKit2Ranges;
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
        if (document)
        {
          v13 = [*(*(&v33 + 1) + 8 * i) textRangeByIntersectingWithTextRange:documentRange];
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

        location = [documentRange location];
        v18 = v16;
        v19 = textContentManager;
        location2 = [v18 location];
        v21 = [v19 offsetFromLocation:location toLocation:location2];

        endLocation = [v18 endLocation];

        v23 = [v19 offsetFromLocation:location toLocation:endLocation];
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

- (id)textRangeForCharacterRange:(_NSRange)range
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(_UITextKit2LayoutController *)self _rangeForCharacterRange:range.location, range.length];
  textContentStorage = self->_textContentStorage;
  v9[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [_UITextKitTextRange rangeWithTextContentManager:textContentStorage textRanges:v6 affinity:0];

  return v7;
}

- (id)textRangeForCharacterRanges:(id)ranges
{
  v21 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = rangesCopy;
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

        rangeValue = [*(*(&v16 + 1) + 8 * i) rangeValue];
        v13 = [(_UITextKit2LayoutController *)self _rangeForCharacterRange:rangeValue, v12];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [_UITextKitTextRange rangeWithTextContentManager:self->_textContentStorage textRanges:v5 affinity:0];

  return v14;
}

- (id)positionWithOffset:(int64_t)offset affinity:(int64_t)affinity
{
  v6 = [(_UITextKit2LayoutController *)self _locationWithOffset:offset];
  v7 = [_UITextKitTextPosition positionWithTextContentManager:self->_textContentStorage location:v6 affinity:affinity];

  return v7;
}

- (_NSRange)rangeOfCharacterClusterAtIndex:(unint64_t)index type:(int64_t)type
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = "";
  indexCopy = index;
  v22 = 0;
  v8 = [(_UITextKit2LayoutController *)self _locationWithOffset:?];
  if ((type - 1) >= 2)
  {
    if (type == 3)
    {
      v9 = 2053;
    }

    else if (type == 4)
    {
      v9 = 2054;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextKit2LayoutController.m" lineNumber:1103 description:{@"Unexpected clusterType = %lu", type}];

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
  v16[6] = index;
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

- (CGRect)boundingRectForCharacterRange:(_NSRange)range
{
  v4 = [(_UITextKit2LayoutController *)self textRangeForCharacterRange:range.location, range.length];
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

- (CGRect)unionRectForCharacterRange:(_NSRange)range bottomInset:(double)inset
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x4010000000;
  v28 = "";
  v6 = *(MEMORY[0x1E695F050] + 16);
  v29 = *MEMORY[0x1E695F050];
  v30 = v6;
  v7 = [(_UITextKit2LayoutController *)self _rangeForCharacterRange:range.location, range.length];
  [(NSTextLayoutManager *)self->_textLayoutManager ui_ensureLayoutForViewportBoundsAtRange:v7];
  textLayoutManager = self->_textLayoutManager;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70___UITextKit2LayoutController_unionRectForCharacterRange_bottomInset___block_invoke;
  v24[3] = &unk_1E710A9E8;
  v24[4] = &v25;
  [(NSTextLayoutManager *)textLayoutManager enumerateTextSegmentsInRange:v7 type:1 options:3 usingBlock:v24];
  documentRange = [(NSTextLayoutManager *)self->_textLayoutManager documentRange];
  endLocation = [documentRange endLocation];

  endLocation2 = [v7 endLocation];
  v12 = [endLocation2 isEqual:endLocation];

  if (v12)
  {
    v13 = [[off_1E70ECBF0 alloc] initWithLocation:endLocation];
    v14 = self->_textLayoutManager;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70___UITextKit2LayoutController_unionRectForCharacterRange_bottomInset___block_invoke_2;
    v23[3] = &unk_1E710AC90;
    v23[4] = &v25;
    *&v23[5] = inset;
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

- (id)textLayoutManager:(id)manager renderingAttributesForLink:(id)link atLocation:(id)location defaultAttributes:(id)attributes
{
  managerCopy = manager;
  linkCopy = link;
  locationCopy = location;
  attributesCopy = attributes;
  v14 = [managerCopy textContainerForLocation:locationCopy];
  textView = [v14 textView];

  if (objc_opt_respondsToSelector())
  {
    textContentManager = [(NSTextLayoutManager *)self->_textLayoutManager textContentManager];
    documentRange = [textContentManager documentRange];
    location = [documentRange location];
    linkTextAttributes = [textView linkAttributesForLink:linkCopy forCharacterAtIndex:{objc_msgSend(managerCopy, "offsetFromLocation:toLocation:", location, locationCopy)}];
  }

  else
  {
    linkTextAttributes = [textView linkTextAttributes];
  }

  if (linkTextAttributes)
  {
    v20 = linkTextAttributes;
  }

  else
  {
    v20 = attributesCopy;
  }

  v21 = v20;

  return v20;
}

- (void)resetTextViewportLayoutControllerLayoutForPosition:(id)position
{
  positionCopy = position;
  if (positionCopy && ([positionCopy location], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    textContainer = [(NSTextLayoutManager *)self->_textLayoutManager textContainerForLocation:v4];
  }

  else
  {
    textContainer = [(NSTextLayoutManager *)self->_textLayoutManager textContainer];
  }

  textViewportLayoutController = [textContainer textViewportLayoutController];
  [textViewportLayoutController _resetLayout];
}

@end