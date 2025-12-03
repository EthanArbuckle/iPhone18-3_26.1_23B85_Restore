@interface SXTextTangierTextLayout
- (BOOL)drawableAttachment:(id)attachment withLayout:(id)layout shouldPositionIterativelyInColumn:(id)column;
- (CGSize)maxSize;
- (__CFLocale)hyphenationLocale;
- (double)baselineForLastLine;
- (double)lineHeightGuessForFirstLine;
- (id)attachedLayoutsInLayout:(id)layout anchored:(BOOL)anchored;
- (id)layoutForInlineDrawable:(id)drawable;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (id)validatedLayoutForAttachedDrawable:(id)drawable;
- (void)addAttachmentLayout:(id)layout;
- (void)drawableAttachment:(id)attachment didFinalizePosition:(CGPoint)position;
- (void)drawableAttachment:(id)attachment willStartNewIterationWithIndex:(unint64_t)index;
- (void)invalidate;
- (void)invalidateTextLayout;
- (void)startedIterativePositioningProcessForDrawableAttachment:(id)attachment;
- (void)validate;
@end

@implementation SXTextTangierTextLayout

- (double)lineHeightGuessForFirstLine
{
  columns = [(TSWPLayout *)self columns];
  firstObject = [columns firstObject];

  info = [(TSDLayout *)self info];
  v6 = [info characterStyleAtCharIndex:0 effectiveRange:0];

  info2 = [(TSDLayout *)self info];
  v8 = [info2 paragraphStyleAtCharIndex:0 effectiveRange:0];

  [firstObject scaleTextPercent];
  FontForStyle = TSWPFastCreateFontForStyle();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  TSWPFontHeightInfoForFont(&v16, FontForStyle);
  v10 = [v8 valueForProperty:85];
  v11 = v17;
  [v10 amount];
  v13 = v12;
  v14 = v18;
  CFRelease(FontForStyle);

  return *&v14 + (*&v11 + *(&v11 + 1)) * v13 + *(&v14 + 1);
}

- (double)baselineForLastLine
{
  columns = [(TSWPLayout *)self columns];
  v4 = [columns objectAtIndex:0];

  info = [(TSDLayout *)self info];
  v6 = [info length];

  if (v4)
  {
    [v4 lineMetricsAtCharIndex:v6 - 1 allowEndOfLine:{1, 0, 0}];
  }

  return 0.0;
}

- (__CFLocale)hyphenationLocale
{
  info = [(TSDLayout *)self info];
  locale = [info locale];

  return locale;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  v3 = [(SXTextTangierTextLayout *)self validatedLayoutForAttachedDrawable:drawable];

  return v3;
}

- (id)layoutForInlineDrawable:(id)drawable
{
  v3 = [(SXTextTangierTextLayout *)self validatedLayoutForAttachedDrawable:drawable];

  return v3;
}

- (void)addAttachmentLayout:(id)layout
{
  layoutCopy = layout;
  parent = [layoutCopy parent];

  if (parent != self)
  {
    [(TSDAbstractLayout *)self addChild:layoutCopy];
    addedChildren = [(SXTextTangierTextLayout *)self addedChildren];

    if (!addedChildren)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(SXTextTangierTextLayout *)self setAddedChildren:v6];
    }

    addedChildren2 = [(SXTextTangierTextLayout *)self addedChildren];
    [addedChildren2 addObject:layoutCopy];
  }

  [layoutCopy updateChildrenFromInfo];
}

- (void)validate
{
  if (![(TSWPLayout *)self textLayoutValid])
  {
    v3.receiver = self;
    v3.super_class = SXTextTangierTextLayout;
    [(TSWPLayout *)&v3 validate];
  }
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SXTextTangierTextLayout;
  [(TSDLayout *)&v2 invalidate];
}

- (void)invalidateTextLayout
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SXTextTangierTextLayout;
  [(TSWPLayout *)&v12 invalidateTextLayout];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  addedChildren = [(SXTextTangierTextLayout *)self addedChildren];
  v4 = [addedChildren countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(addedChildren);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromParent];
      }

      while (v4 != v6);
      v4 = [addedChildren countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v4);
  }

  addedChildren2 = [(SXTextTangierTextLayout *)self addedChildren];
  [addedChildren2 removeAllObjects];
}

- (id)attachedLayoutsInLayout:(id)layout anchored:(BOOL)anchored
{
  anchoredCopy = anchored;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  layoutCopy = layout;
  children = [layoutCopy children];
  v6 = 0;
  v7 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(children);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        v11 = v10;
        if (v10)
        {
          info = [v10 info];
          owningAttachment = [info owningAttachment];

          if (owningAttachment && [owningAttachment isDrawable] && objc_msgSend(owningAttachment, "isAnchored") == anchoredCopy)
          {
            if (v6)
            {
              [v6 addObject:v11];
            }

            else
            {
              v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v11, 0}];
            }
          }
        }
      }

      v7 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v6;
}

- (id)validatedLayoutForAttachedDrawable:(id)drawable
{
  drawableCopy = drawable;
  layoutController = [(TSDLayout *)self layoutController];
  v6 = [layoutController layoutForInfo:drawableCopy];

  if (!v6)
  {
    v6 = [objc_alloc(objc_msgSend(drawableCopy "layoutClass"))];
    if (!v6)
    {
      goto LABEL_6;
    }

    [(SXTextTangierTextLayout *)self addAttachmentLayout:v6];
  }

  if ((v6[*MEMORY[0x1E69D5748]] & 3) != 0)
  {
    layoutController2 = [(TSDLayout *)self layoutController];
    [layoutController2 validateLayoutWithDependencies:v6];
  }

LABEL_6:

  return v6;
}

- (void)startedIterativePositioningProcessForDrawableAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  drawable = [attachmentCopy drawable];
  v4 = TSUDynamicCast();

  if (v4)
  {
    exclusionPath = [v4 exclusionPath];
    [(SXTextExclusionPath *)exclusionPath callStartBlock];
  }
}

- (void)drawableAttachment:(id)attachment willStartNewIterationWithIndex:(unint64_t)index
{
  attachmentCopy = attachment;
  objc_opt_class();
  drawable = [attachmentCopy drawable];
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_opt_class();
    layoutController = [(TSDLayout *)self layoutController];
    v8 = [layoutController layoutForInfo:v6];
    v9 = TSUDynamicCast();

    exclusionPath = [v6 exclusionPath];
    [v9 frame];
    [(SXTextExclusionPath *)exclusionPath adjustYPositionWithCurrentPosition:v11, v12];
  }
}

- (void)drawableAttachment:(id)attachment didFinalizePosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  attachmentCopy = attachment;
  objc_opt_class();
  drawable = [attachmentCopy drawable];
  v7 = TSUDynamicCast();

  if (v7)
  {
    exclusionPath = [v7 exclusionPath];
    [(SXTextExclusionPath *)exclusionPath setActualPosition:y];

    exclusionPath2 = [v7 exclusionPath];
    [(SXTextExclusionPath *)exclusionPath2 callCompletionBlock];
  }
}

- (BOOL)drawableAttachment:(id)attachment withLayout:(id)layout shouldPositionIterativelyInColumn:(id)column
{
  columnCopy = column;
  [layout frame];
  v8 = v7;
  [columnCopy frameBounds];
  LOBYTE(layout) = v8 <= v9 * 0.9;

  return layout;
}

- (CGSize)maxSize
{
  v2 = 1.79769313e308;
  v3 = 1.79769313e308;
  result.height = v3;
  result.width = v2;
  return result;
}

@end