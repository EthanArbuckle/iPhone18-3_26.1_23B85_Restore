@interface TSWPLayout
- (BOOL)allowsLastLineTruncation;
- (BOOL)invalidateForPageCountChange;
- (BOOL)isLayoutOffscreen;
- (BOOL)p_parentAutosizes;
- (BOOL)shouldHyphenate;
- (BOOL)shouldWrapAroundExternalDrawables;
- (BOOL)textIsVertical;
- (CGPoint)anchorPoint;
- (CGPoint)calculatePointFromSearchReference:(id)reference;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)position;
- (CGRect)frameForCulling;
- (CGRect)maskRect;
- (CGRect)p_protectedRectWithinLayoutForSelectionRect:(CGRect)rect;
- (CGRect)p_rectForSelection:(id)selection useParagraphModeRects:(BOOL)rects;
- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)selection;
- (CGRect)rectForSelection:(id)selection;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)minSize;
- (Class)repClassOverride;
- (TSDBezierPath)interiorClippingPath;
- (TSDCanvas)canvas;
- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer;
- (TSWPFootnoteMarkProvider)footnoteMarkProvider;
- (TSWPLayout)initWithInfo:(id)info frame:(CGRect)frame;
- (TSWPLayoutManager)layoutManager;
- (double)baselineForCharIndex:(unsigned int)index;
- (double)maxAnchorY;
- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)lineHintsForTarget:(id)target;
- (id)p_firstAncestorRespondingToSelector:(SEL)selector;
- (id)p_wpLayoutParent;
- (id)reliedOnLayouts;
- (id)styleProvider;
- (id)textColorOverride;
- (id)textWrapper;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (unint64_t)pageCount;
- (unint64_t)pageNumber;
- (unsigned)autosizeFlags;
- (unsigned)lineCount;
- (unsigned)maxLineCount;
- (unsigned)naturalAlignment;
- (unsigned)verticalAlignment;
- (void)addAttachmentLayout:(id)layout;
- (void)dealloc;
- (void)initialLayoutState;
- (void)invalidateForFootnoteNumberingChange;
- (void)invalidateMaxAutoGrowWidth;
- (void)invalidateParentForAutosizing;
- (void)invalidateSize;
- (void)invalidateTextLayout;
- (void)layoutManagerNeedsLayout:(id)layout;
- (void)layoutSearchForAnnotationWithHitBlock:(id)block;
- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block;
- (void)p_invalidateTextLayout;
- (void)p_validateTextLayout;
- (void)parentDidChange;
- (void)parentWillChangeTo:(id)to;
- (void)validate;
- (void)wrappableChildInvalidated:(id)invalidated;
@end

@implementation TSWPLayout

- (TSWPLayout)initWithInfo:(id)info frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = TSWPLayout;
  v8 = [(TSDLayout *)&v11 initWithInfo:info];
  if (v8)
  {
    v8->_columns = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (width > 0.0)
    {
      height = [[TSDLayoutGeometry alloc] initWithFrame:x, y, width, height];
      [(TSDAbstractLayout *)v8 setGeometry:height];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPLayout;
  [(TSDLayout *)&v3 dealloc];
}

- (TSWPLayoutManager)layoutManager
{
  result = self->_layoutManager;
  if (!result)
  {
    v4 = [[TSWPLayoutManager alloc] initWithStorage:[(TSDLayout *)self info] owner:self];
    self->_layoutManager = v4;
    [(TSWPLayoutManager *)v4 resetTopicNumbers];
    return self->_layoutManager;
  }

  return result;
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = TSWPLayout;
  [(TSDLayout *)&v3 invalidateSize];
  [(TSWPLayout *)self p_invalidateTextLayout];
}

- (id)p_wpLayoutParent
{
  objc_opt_class();
  [(TSDAbstractLayout *)self parent];
  TSUProtocolCast();
  result = TSUDynamicCast();
  if (!result)
  {
    [(TSDAbstractLayout *)self parent];
    v4 = TSUProtocolCast();

    return [v4 wpLayoutParentForLayout:self];
  }

  return result;
}

- (BOOL)p_parentAutosizes
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (p_wpLayoutParent)
  {
    LOBYTE(p_wpLayoutParent) = [p_wpLayoutParent autosizeFlagsForTextLayout:self] != 0;
  }

  return p_wpLayoutParent;
}

- (id)dependentLayouts
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = TSWPLayout;
  dependentLayouts = [(TSDLayout *)&v17 dependentLayouts];
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (p_wpLayoutParent)
  {
    v5 = p_wpLayoutParent;
    v6 = dependentLayouts ? [dependentLayouts mutableCopy] : objc_msgSend(MEMORY[0x277CBEB18], "array");
    dependentLayouts = v6;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 dependentsOfTextLayout:{self, 0}];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [dependentLayouts addObject:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return dependentLayouts;
}

- (id)reliedOnLayouts
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(TSWPLayout *)self additionalReliedOnLayoutsForTextWrap];
}

- (void)p_validateTextLayout
{
  v3 = [(TSDLayout *)self layoutState]== 1 && [(TSDInfo *)[(TSDLayout *)self info] length]== 0;
  if (!self->_textLayoutValid && !v3)
  {
    v4 = [(TSWPLayoutManager *)[(TSWPLayout *)self layoutManager] layoutIntoTarget:self withLayoutState:[(TSWPLayout *)self initialLayoutState] outSync:0];
    if (v4)
    {
      [(TSWPLayoutManager *)[(TSWPLayout *)self layoutManager] destroyLayoutState:v4];
    }

    self->_textLayoutValid = 1;
  }
}

- (void)validate
{
  if ([(TSDAbstractLayout *)self parent])
  {
    if (![(TSWPLayout *)self p_parentAutosizes])
    {
      v13.receiver = self;
      v13.super_class = TSWPLayout;
      [(TSDLayout *)&v13 validate];
      goto LABEL_12;
    }

    textLayoutValid = self->_textLayoutValid;
    if (!textLayoutValid)
    {
      p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
      v5 = objc_opt_respondsToSelector();
      v6 = 10.0;
      v7 = 10.0;
      if (v5)
      {
        [p_wpLayoutParent initialTextSize];
      }

      [p_wpLayoutParent autosizedFrameForTextLayout:self textSize:{v7, v6}];
      if (v10 > 0.0)
      {
        v12 = [[TSDLayoutGeometry alloc] initWithFrame:v8, v9, v10, v11];
        [(TSDAbstractLayout *)self setGeometry:v12];
      }
    }

    [(TSWPLayout *)self p_validateTextLayout];
    v13.receiver = self;
    v13.super_class = TSWPLayout;
    [(TSDLayout *)&v13 validate];
    if (([(TSWPLayout *)self autosizeFlags]& 0x20) != 0 && !textLayoutValid)
    {
      self->_textLayoutValid = 0;
LABEL_12:
      [(TSWPLayout *)self p_validateTextLayout];
    }
  }
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)computeLayoutGeometry
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [-[TSDLayout layoutController](self "layoutController")];
  if (!v3 || (result = [v3 layoutGeometryForLayout:self]) == 0)
  {
    v5 = MEMORY[0x277CBF398];
    v6 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v8 = *(MEMORY[0x277CBF398] + 16);
    v9 = *(MEMORY[0x277CBF398] + 24);
    p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
    if (p_wpLayoutParent)
    {
      v11 = p_wpLayoutParent;
      if ([p_wpLayoutParent autosizeFlagsForTextLayout:self])
      {
        x = *v5;
        y = v5[1];
        width = v5[2];
        height = v5[3];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        columns = self->_columns;
        v17 = [(NSMutableArray *)columns countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v46;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v46 != v19)
              {
                objc_enumerationMutation(columns);
              }

              [*(*(&v45 + 1) + 8 * i) frameBounds];
              v55.origin.x = v21;
              v55.origin.y = v22;
              v55.size.width = v23;
              v55.size.height = v24;
              v51.origin.x = x;
              v51.origin.y = y;
              v51.size.width = width;
              v51.size.height = height;
              v52 = CGRectUnion(v51, v55);
              x = v52.origin.x;
              y = v52.origin.y;
              width = v52.size.width;
              height = v52.size.height;
            }

            v18 = [(NSMutableArray *)columns countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v18);
        }

        [-[TSWPLayout columnMetricsForCharIndex:outRange:](self columnMetricsForCharIndex:0x7FFFFFFFFFFFFFFFLL outRange:{0), "adjustedInsets"}];
        v26 = -v25;
        v28 = -v27;
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v54 = CGRectInset(v53, v26, v28);
        [v11 autosizedFrameForTextLayout:self textSize:{v54.size.width, v54.size.height}];
      }

      else
      {
        [v11 nonAutosizedFrameForTextLayout:self];
      }

      v6 = v29;
      v7 = v30;
      v8 = v31;
      v9 = v32;
    }

    else
    {
      objc_opt_class();
      [(TSDAbstractLayout *)self parent];
      v33 = TSUDynamicCast();
      if (v33)
      {
        v34 = v33;
        [objc_msgSend(objc_msgSend(v33 "info")];
        v36 = v35;
        v38 = v37;
        v8 = v39;
        v9 = v40;
        [objc_msgSend(v34 "geometry")];
        v6 = TSDSubtractPoints(v36, v38, v41);
        v7 = v42;
      }

      else
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayout computeLayoutGeometry]"];
        [currentHandler handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayout.mm"), 288, @"TSWPLayout requires a parent"}];
      }
    }

    return [[TSDLayoutGeometry alloc] initWithFrame:v6, v7, v8, v9];
  }

  return result;
}

- (void)initialLayoutState
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      [p_wpLayoutParent allowsLastLineTruncation:self];
    }

    operator new();
  }

  return 0;
}

- (void)invalidateTextLayout
{
  [(TSWPLayout *)self p_invalidateTextLayout];

  [(TSDLayout *)self invalidate];
}

- (void)invalidateMaxAutoGrowWidth
{
  [(NSMutableArray *)self->_columns removeAllObjects];

  [(TSWPLayout *)self invalidateSize];
}

- (void)p_invalidateTextLayout
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  self->_textLayoutValid = 0;
  if (p_wpLayoutParent)
  {
    v4 = p_wpLayoutParent;
    if ([p_wpLayoutParent autosizeFlagsForTextLayout:self])
    {
      if (([v4 invalidGeometry] & 1) == 0)
      {

        [v4 invalidateSize];
      }
    }
  }
}

- (void)invalidateForFootnoteNumberingChange
{
  [(NSMutableArray *)self->_columns removeAllObjects];

  [(TSWPLayout *)self invalidateSize];
}

- (BOOL)invalidateForPageCountChange
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  columns = self->_columns;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TSWPLayout_invalidateForPageCountChange__block_invoke;
  v6[3] = &unk_279D49778;
  v6[4] = &v7;
  [(NSMutableArray *)columns enumerateObjectsUsingBlock:v6];
  if (*(v8 + 24) == 1)
  {
    [(NSMutableArray *)self->_columns removeAllObjects];
    [(TSWPLayout *)self invalidateSize];
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

uint64_t __42__TSWPLayout_invalidateForPageCountChange__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 layoutResultFlags];
  if ((result & 0x80) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)invalidateParentForAutosizing
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];

  [p_wpLayoutParent invalidateForAutosizingTextLayout:self];
}

- (double)baselineForCharIndex:(unsigned int)index
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  columns = self->_columns;
  v5 = [(NSMutableArray *)columns countByEnumeratingWithState:&v16 objects:v20 count:16];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(columns);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        range = [v10 range];
        if (index >= range && index - range < v12)
        {
          [v10 baselineOfLineFragmentAtCharIndex:index];
          return v14;
        }
      }

      v7 = [(NSMutableArray *)columns countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v6;
}

- (Class)repClassOverride
{
  result = [-[TSWPLayout p_wpLayoutParent](self "p_wpLayoutParent")];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = TSWPLayout;
    return [(TSDLayout *)&v4 repClassOverride];
  }

  return result;
}

- (void)parentWillChangeTo:(id)to
{
  [(TSWPLayoutManager *)self->_layoutManager clearOwner];
  layoutManager = self->_layoutManager;
  if (layoutManager && [(TSWPLayoutManager *)layoutManager dirtyRange]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_columns removeAllObjects];
  }

  self->_layoutManager = 0;
}

- (void)parentDidChange
{
  if ([(TSDAbstractLayout *)self parent])
  {

    [(TSWPLayout *)self layoutManager];
  }
}

- (void)wrappableChildInvalidated:(id)invalidated
{
  v4.receiver = self;
  v4.super_class = TSWPLayout;
  [(TSDLayout *)&v4 invalidate];
  [(TSWPLayout *)self p_invalidateTextLayout];
}

- (CGRect)frameForCulling
{
  v30 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = TSWPLayout;
  [(TSDAbstractLayout *)&v28 frameForCulling];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  columns = [(TSWPLayout *)self columns];
  v12 = [(NSMutableArray *)columns countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(columns);
        }

        [*(*(&v24 + 1) + 8 * v15) erasableBounds:0];
        v34.origin.x = v16;
        v34.origin.y = v17;
        v34.size.width = v18;
        v34.size.height = v19;
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v32 = CGRectUnion(v31, v34);
        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)columns countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)p_protectedRectWithinLayoutForSelectionRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!TSDRectIsFinite(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height))
  {
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
    y = v8;
    x = v9 * 0.5;
    width = 0.0;
    height = 0.0;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGPoint)calculatePointFromSearchReference:(id)reference
{
  objc_opt_class();
  [reference selection];
  v5 = TSUDynamicCast();
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = 0.0;
    if ([(NSMutableArray *)self->_columns count])
    {
      v9 = -[TSWPSelection initWithRange:]([TSWPSelection alloc], "initWithRange:", [v7 start], 0);
      [TSWPColumn caretRectForInsertionPoint:v9 withColumns:self->_columns];
      [(TSWPLayout *)self p_protectedRectWithinLayoutForSelectionRect:?];
      [(TSDAbstractLayout *)self rectInRoot:?];
      v8 = v10;
      v6 = v11;
    }
  }

  else
  {
    v8 = 0.0;
  }

  v12 = v8;
  v13 = v6;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  info = [(TSDLayout *)self info];
  range = [(TSDInfo *)info range];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__TSWPLayout_layoutSearchForString_options_hitBlock___block_invoke;
  v14[3] = &unk_279D497A0;
  v14[4] = self;
  v14[5] = block;
  v12 = [(TSDInfo *)info searchInRange:range forString:v11 options:string onHit:options, v14];
  if (v12)
  {
    v13 = v12;
    if (([v12 isComplete] & 1) == 0)
    {
      do
      {
        [(TSDInfo *)info continueSearch:v13];
      }

      while (![v13 isComplete]);
    }
  }
}

uint64_t __53__TSWPLayout_layoutSearchForString_options_hitBlock___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) calculatePointFromSearchReference:a2];
  [a2 setSearchReferencePoint:?];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)layoutSearchForAnnotationWithHitBlock:(id)block
{
  info = [(TSDLayout *)self info];
  range = [(TSDInfo *)info range];
  v8 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__TSWPLayout_layoutSearchForAnnotationWithHitBlock___block_invoke;
  v10[3] = &unk_279D497A0;
  v10[4] = self;
  v10[5] = block;
  [(TSDInfo *)info findCommentsInRange:range onHit:v7, v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__TSWPLayout_layoutSearchForAnnotationWithHitBlock___block_invoke_2;
  v9[3] = &unk_279D497A0;
  v9[4] = self;
  v9[5] = block;
  [(TSDInfo *)info findChangesInRange:range onHit:v8, v9];
}

uint64_t __52__TSWPLayout_layoutSearchForAnnotationWithHitBlock___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) calculatePointFromSearchReference:a2];
  [a2 setSearchReferencePoint:?];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

uint64_t __52__TSWPLayout_layoutSearchForAnnotationWithHitBlock___block_invoke_2(uint64_t a1, void *a2)
{
  [*(a1 + 32) calculatePointFromSearchReference:a2];
  [a2 setSearchReferencePoint:?];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  if (range)
  {
    range->location = [(TSWPStorage *)[(TSWPLayoutManager *)[(TSWPLayout *)self layoutManager] storage] range];
    range->length = v6;
  }

  [(TSDAbstractLayout *)self parent];

  return TSUProtocolCast();
}

- (TSWPFootnoteHeightMeasurer)footnoteHeightMeasurer
{
  [(TSDAbstractLayout *)self parent];

  return TSUProtocolCast();
}

- (TSWPFootnoteMarkProvider)footnoteMarkProvider
{
  [(TSDAbstractLayout *)self parent];

  return TSUProtocolCast();
}

- (CGSize)minSize
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v4 = v3;
  v6 = v5;
  textIsVertical = [(TSWPLayout *)self textIsVertical];
  if (textIsVertical)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (!textIsVertical)
  {
    v4 = v6;
  }

  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (p_wpLayoutParent)
  {
    v10 = [p_wpLayoutParent autosizeFlagsForTextLayout:self];
    if ((v10 & 8) != 0)
    {
      v8 = 0.0;
    }

    if ((v10 & 2) != 0)
    {
      v4 = 0.0;
    }
  }

  v11 = v8;
  v12 = v4;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)maxSize
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] size];
  v4 = v3;
  v6 = v5;
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (!p_wpLayoutParent)
  {
    v10 = v4;
    goto LABEL_17;
  }

  v8 = p_wpLayoutParent;
  textIsVertical = [(TSWPLayout *)self textIsVertical];
  if (textIsVertical)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  if (textIsVertical)
  {
    v6 = v4;
  }

  v11 = [v8 autosizeFlagsForTextLayout:self];
  if ((v11 & 4) == 0)
  {
LABEL_10:
    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 maxAutoGrowWidthForTextLayout:self];
    v10 = v12;
    goto LABEL_10;
  }

  v10 = 4000.0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (objc_opt_respondsToSelector())
  {
    [v8 maxAutoGrowHeightForTextLayout:self];
    v6 = v13;
  }

  else
  {
    v6 = 16000.0;
  }

LABEL_17:
  v14 = v10;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)currentSize
{
  geometry = [(TSDAbstractLayout *)self geometry];

  [(TSDLayoutGeometry *)geometry size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGPoint)position
{
  geometry = [(TSDAbstractLayout *)self geometry];

  [(TSDLayoutGeometry *)geometry frame];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (unsigned)autosizeFlags
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (p_wpLayoutParent)
  {

    LODWORD(p_wpLayoutParent) = [p_wpLayoutParent autosizeFlagsForTextLayout:self];
  }

  return p_wpLayoutParent;
}

- (unsigned)verticalAlignment
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (p_wpLayoutParent)
  {

    LODWORD(p_wpLayoutParent) = [p_wpLayoutParent verticalAlignmentForTextLayout:self];
  }

  return p_wpLayoutParent;
}

- (unsigned)naturalAlignment
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (!p_wpLayoutParent)
  {
    return 4;
  }

  v4 = p_wpLayoutParent;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 4;
  }

  return [v4 naturalAlignmentForTextLayout:self];
}

- (CGRect)targetRectForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSDAbstractLayout *)self frameInRoot];
  v8 = -v7;
  v10 = -v9;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectOffset(*&v11, v8, v10);
}

- (TSDCanvas)canvas
{
  layoutController = [(TSDLayout *)self layoutController];

  return [layoutController canvas];
}

- (id)layoutForInlineDrawable:(id)drawable
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TSDAbstractLayout *)self children:0];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      objc_opt_class();
      v10 = TSUDynamicCast();
      if (v10)
      {
        v11 = v10;
        if ([v10 info] == drawable)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v11 = [objc_alloc(objc_msgSend(drawable "layoutClass"))];
    if (v11)
    {
      [(TSDAbstractLayout *)self addChild:v11];
    }
  }

  [v11 updateChildrenFromInfo];
  return v11;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayout validatedLayoutForAnchoredDrawable:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayout.mm"), 783, @"Anchored attachments not supported in non-body text."}];
  return 0;
}

- (void)addAttachmentLayout:(id)layout
{
  if ([layout parent] != self)
  {
    [(TSDAbstractLayout *)self addChild:layout];
  }

  [layout updateChildrenFromInfo];
}

- (double)maxAnchorY
{
  [(TSWPLayout *)self position];
  v4 = v3;
  [(TSWPLayout *)self maxSize];
  return v4 + v5;
}

- (id)p_firstAncestorRespondingToSelector:(SEL)selector
{
  while (1)
  {
    parent = [(TSDAbstractLayout *)self parent];
    if (!parent || (objc_opt_respondsToSelector() & 1) != 0)
    {
      break;
    }

    self = parent;
  }

  return parent;
}

- (unint64_t)pageNumber
{
  v2 = [(TSWPLayout *)self p_firstAncestorRespondingToSelector:sel_pageNumber];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v2 pageNumber];
}

- (unint64_t)pageCount
{
  v2 = [(TSWPLayout *)self p_firstAncestorRespondingToSelector:sel_pageCount];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v2 pageCount];
}

- (BOOL)textIsVertical
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (!p_wpLayoutParent)
  {
    return 0;
  }

  v4 = p_wpLayoutParent;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v4 textLayoutShouldLayoutVertically:self];
}

- (CGRect)maskRect
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (objc_opt_respondsToSelector())
  {
    [p_wpLayoutParent maskRectForTextLayout:self];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isLayoutOffscreen
{
  layoutController = [(TSDLayout *)self layoutController];

  return [layoutController isLayoutOffscreen];
}

- (BOOL)allowsLastLineTruncation
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [p_wpLayoutParent allowsLastLineTruncation:self];
}

- (unsigned)maxLineCount
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [p_wpLayoutParent maxLineCountForTextLayout:self];
}

- (BOOL)shouldHyphenate
{
  v3 = [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v3;
  }

  return [p_wpLayoutParent shouldHyphenateTextLayout:self];
}

- (void)layoutManagerNeedsLayout:(id)layout
{
  if ([(TSWPLayout *)self layoutManager]!= layout)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayout layoutManagerNeedsLayout:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayout.mm"), 952, @"bad layout manager"}];
  }

  [(TSWPLayout *)self invalidateTextLayout];
  if ([(TSWPLayout *)self p_parentAutosizes])
  {
    [(TSWPLayout *)self invalidateSize];

    [(TSWPLayout *)self invalidateParentForAutosizing];
  }
}

- (id)textWrapper
{
  parent = [(TSDAbstractLayout *)self parent];
  if (objc_opt_respondsToSelector())
  {

    return [(TSDAbstractLayout *)parent textWrapperForExteriorWrap];
  }

  else if (objc_opt_respondsToSelector())
  {

    return [(TSDAbstractLayout *)parent textWrapper];
  }

  else
  {
    return 0;
  }
}

- (id)lineHintsForTarget:(id)target
{
  if (target != self)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPLayout lineHintsForTarget:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPLayout.mm"), 987, @"unexpected target"}];
  }

  [(TSWPLayout *)self p_wpLayoutParent];
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    info = [result info];

    return [info lineHints];
  }

  return result;
}

- (CGRect)rectForSelection:(id)selection
{
  [(TSWPLayout *)self p_rectForSelection:selection useParagraphModeRects:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)selection
{
  [(TSWPLayout *)self p_rectForSelection:selection useParagraphModeRects:0];

  [(TSWPLayout *)self p_protectedRectWithinLayoutForSelectionRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_rectForSelection:(id)selection useParagraphModeRects:(BOOL)rects
{
  rectsCopy = rects;
  v23.receiver = self;
  v23.super_class = TSWPLayout;
  [(TSDLayout *)&v23 rectForSelection:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_opt_class();
  v14 = TSUDynamicCast();
  if (v14)
  {
    [TSWPColumn rectForSelection:v14 withColumns:[(TSWPLayout *)self columns] useParagraphModeRects:rectsCopy];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)styleProvider
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (!p_wpLayoutParent || (v4 = p_wpLayoutParent, (objc_opt_respondsToSelector() & 1) == 0) || (result = [v4 styleProviderForLayout:self]) == 0)
  {
    storage = [(TSWPLayoutManager *)[(TSWPLayout *)self layoutManager] storage];

    return [TSWPStorageStyleProvider styleProviderForStorage:storage];
  }

  return result;
}

- (TSDBezierPath)interiorClippingPath
{
  parent = [(TSDAbstractLayout *)self parent];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(TSDAbstractLayout *)parent interiorClippingPath];
}

- (unsigned)lineCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  columns = self->_columns;
  v3 = [(NSMutableArray *)columns countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(columns);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) countLines];
      }

      v4 = [(NSMutableArray *)columns countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (id)textColorOverride
{
  if (![(TSDCanvas *)[(TSWPLayout *)self canvas] isPrinting]|| ![(TSDCanvas *)[(TSWPLayout *)self canvas] shouldSuppressBackgrounds])
  {
    return 0;
  }

  v3 = MEMORY[0x277D6C2A8];

  return [v3 blackColor];
}

- (BOOL)shouldWrapAroundExternalDrawables
{
  p_wpLayoutParent = [(TSWPLayout *)self p_wpLayoutParent];
  if (!p_wpLayoutParent)
  {
    return 0;
  }

  v4 = p_wpLayoutParent;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v4 textLayoutShouldWrapAroundExternalDrawables:self];
}

@end