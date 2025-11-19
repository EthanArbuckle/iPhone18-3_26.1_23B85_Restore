@interface SXTextTangierTextLayout
- (BOOL)drawableAttachment:(id)a3 withLayout:(id)a4 shouldPositionIterativelyInColumn:(id)a5;
- (CGSize)maxSize;
- (__CFLocale)hyphenationLocale;
- (double)baselineForLastLine;
- (double)lineHeightGuessForFirstLine;
- (id)attachedLayoutsInLayout:(id)a3 anchored:(BOOL)a4;
- (id)layoutForInlineDrawable:(id)a3;
- (id)validatedLayoutForAnchoredDrawable:(id)a3;
- (id)validatedLayoutForAttachedDrawable:(id)a3;
- (void)addAttachmentLayout:(id)a3;
- (void)drawableAttachment:(id)a3 didFinalizePosition:(CGPoint)a4;
- (void)drawableAttachment:(id)a3 willStartNewIterationWithIndex:(unint64_t)a4;
- (void)invalidate;
- (void)invalidateTextLayout;
- (void)startedIterativePositioningProcessForDrawableAttachment:(id)a3;
- (void)validate;
@end

@implementation SXTextTangierTextLayout

- (double)lineHeightGuessForFirstLine
{
  v3 = [(TSWPLayout *)self columns];
  v4 = [v3 firstObject];

  v5 = [(TSDLayout *)self info];
  v6 = [v5 characterStyleAtCharIndex:0 effectiveRange:0];

  v7 = [(TSDLayout *)self info];
  v8 = [v7 paragraphStyleAtCharIndex:0 effectiveRange:0];

  [v4 scaleTextPercent];
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
  v3 = [(TSWPLayout *)self columns];
  v4 = [v3 objectAtIndex:0];

  v5 = [(TSDLayout *)self info];
  v6 = [v5 length];

  if (v4)
  {
    [v4 lineMetricsAtCharIndex:v6 - 1 allowEndOfLine:{1, 0, 0}];
  }

  return 0.0;
}

- (__CFLocale)hyphenationLocale
{
  v2 = [(TSDLayout *)self info];
  v3 = [v2 locale];

  return v3;
}

- (id)validatedLayoutForAnchoredDrawable:(id)a3
{
  v3 = [(SXTextTangierTextLayout *)self validatedLayoutForAttachedDrawable:a3];

  return v3;
}

- (id)layoutForInlineDrawable:(id)a3
{
  v3 = [(SXTextTangierTextLayout *)self validatedLayoutForAttachedDrawable:a3];

  return v3;
}

- (void)addAttachmentLayout:(id)a3
{
  v8 = a3;
  v4 = [v8 parent];

  if (v4 != self)
  {
    [(TSDAbstractLayout *)self addChild:v8];
    v5 = [(SXTextTangierTextLayout *)self addedChildren];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(SXTextTangierTextLayout *)self setAddedChildren:v6];
    }

    v7 = [(SXTextTangierTextLayout *)self addedChildren];
    [v7 addObject:v8];
  }

  [v8 updateChildrenFromInfo];
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
  v3 = [(SXTextTangierTextLayout *)self addedChildren];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) removeFromParent];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [(SXTextTangierTextLayout *)self addedChildren];
  [v7 removeAllObjects];
}

- (id)attachedLayoutsInLayout:(id)a3 anchored:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = a3;
  v5 = [v15 children];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        v11 = v10;
        if (v10)
        {
          v12 = [v10 info];
          v13 = [v12 owningAttachment];

          if (v13 && [v13 isDrawable] && objc_msgSend(v13, "isAnchored") == v4)
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

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v6;
}

- (id)validatedLayoutForAttachedDrawable:(id)a3
{
  v4 = a3;
  v5 = [(TSDLayout *)self layoutController];
  v6 = [v5 layoutForInfo:v4];

  if (!v6)
  {
    v6 = [objc_alloc(objc_msgSend(v4 "layoutClass"))];
    if (!v6)
    {
      goto LABEL_6;
    }

    [(SXTextTangierTextLayout *)self addAttachmentLayout:v6];
  }

  if ((v6[*MEMORY[0x1E69D5748]] & 3) != 0)
  {
    v7 = [(TSDLayout *)self layoutController];
    [v7 validateLayoutWithDependencies:v6];
  }

LABEL_6:

  return v6;
}

- (void)startedIterativePositioningProcessForDrawableAttachment:(id)a3
{
  v6 = a3;
  objc_opt_class();
  v3 = [v6 drawable];
  v4 = TSUDynamicCast();

  if (v4)
  {
    v5 = [v4 exclusionPath];
    [(SXTextExclusionPath *)v5 callStartBlock];
  }
}

- (void)drawableAttachment:(id)a3 willStartNewIterationWithIndex:(unint64_t)a4
{
  v13 = a3;
  objc_opt_class();
  v5 = [v13 drawable];
  v6 = TSUDynamicCast();

  if (v6)
  {
    objc_opt_class();
    v7 = [(TSDLayout *)self layoutController];
    v8 = [v7 layoutForInfo:v6];
    v9 = TSUDynamicCast();

    v10 = [v6 exclusionPath];
    [v9 frame];
    [(SXTextExclusionPath *)v10 adjustYPositionWithCurrentPosition:v11, v12];
  }
}

- (void)drawableAttachment:(id)a3 didFinalizePosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  objc_opt_class();
  v6 = [v11 drawable];
  v7 = TSUDynamicCast();

  if (v7)
  {
    v8 = [v7 exclusionPath];
    [(SXTextExclusionPath *)v8 setActualPosition:y];

    v9 = [v7 exclusionPath];
    [(SXTextExclusionPath *)v9 callCompletionBlock];
  }
}

- (BOOL)drawableAttachment:(id)a3 withLayout:(id)a4 shouldPositionIterativelyInColumn:(id)a5
{
  v6 = a5;
  [a4 frame];
  v8 = v7;
  [v6 frameBounds];
  LOBYTE(a4) = v8 <= v9 * 0.9;

  return a4;
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