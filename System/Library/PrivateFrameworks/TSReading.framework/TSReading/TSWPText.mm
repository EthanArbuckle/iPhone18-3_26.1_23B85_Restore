@interface TSWPText
+ (void)renderColumn:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7;
+ (void)renderColumns:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7;
- (BOOL)adjustColumnOriginForAlignment;
- (BOOL)forceWesternLineBreaking;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)targetRectForCanvasRect:(CGRect)a3;
- (CGSize)adjustedInsets;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)measureStorage:(id)a3;
- (CGSize)measureText:(id)a3;
- (CGSize)minSize;
- (TSWPText)initWithParagraphStyle:(id)a3 listStyle:(id)a4 columnStyle:(id)a5 alignmentForNaturalAlignment:(unsigned int)a6 naturalDirection:(int)a7;
- (double)maxAnchorY;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (id)layoutMultiColumnTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 pageNumber:(unint64_t)a7 pageCount:(unint64_t)a8 flags:(int)a9;
- (id)layoutText:(id)a3 kind:(int)a4 minSize:(CGSize)a5 maxSize:(CGSize)a6 anchor:(CGPoint)a7 flags:(int)a8;
- (id)layoutTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 pageNumber:(unint64_t)a7 pageCount:(unint64_t)a8 flags:(int)a9;
- (id)validatedLayoutForAnchoredDrawable:(id)a3;
- (unsigned)verticalAlignment;
- (void)addAttachmentLayout:(id)a3;
- (void)dealloc;
- (void)drawColumn:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7;
- (void)drawText:(id)a3 inContext:(CGContext *)a4 minSize:(CGSize)a5 maxSize:(CGSize)a6 anchor:(CGPoint)a7 flags:(int)a8 viewScale:(double)a9;
@end

@implementation TSWPText

- (TSWPText)initWithParagraphStyle:(id)a3 listStyle:(id)a4 columnStyle:(id)a5 alignmentForNaturalAlignment:(unsigned int)a6 naturalDirection:(int)a7
{
  v14.receiver = self;
  v14.super_class = TSWPText;
  v12 = [(TSWPText *)&v14 init];
  if (v12)
  {
    v12->_paragraphStyle = a3;
    v12->_listStyle = a4;
    if (!a5)
    {
      a5 = +[TSWPColumnStyle defaultStyleWithContext:](TSWPColumnStyle, "defaultStyleWithContext:", [a3 context]);
    }

    v12->_columnStyle = a5;
    v12->_columns = objc_opt_new();
    v12->_naturalAlignment = a6;
    v12->_naturalDirection = a7;
  }

  return v12;
}

- (void)dealloc
{
  self->_storage = 0;

  self->_paragraphStyle = 0;
  self->_listStyle = 0;

  self->_columnStyle = 0;
  self->_columns = 0;

  self->_textColorOverride = 0;
  self->_styleProvider = 0;
  v3.receiver = self;
  v3.super_class = TSWPText;
  [(TSWPText *)&v3 dealloc];
}

- (id)layoutTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 pageNumber:(unint64_t)a7 pageCount:(unint64_t)a8 flags:(int)a9
{
  v9 = [(TSWPText *)self layoutMultiColumnTextStorage:a3 minSize:a7 maxSize:a8 anchor:*&a9 pageNumber:a4.width pageCount:a4.height flags:a5.width, a5.height, a6.x, a6.y];
  if ([v9 count] != 1)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 140, @"Invalid column count"}];
  }

  v12 = [v9 firstObject];

  return v12;
}

- (id)layoutMultiColumnTextStorage:(id)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5 anchor:(CGPoint)a6 pageNumber:(unint64_t)a7 pageCount:(unint64_t)a8 flags:(int)a9
{
  y = a6.y;
  x = a6.x;
  height = a5.height;
  width = a5.width;
  v16 = a4.height;
  v17 = a4.width;
  if (self->_storage)
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutMultiColumnTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]"];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 149, @"Storage should be nil"}];
  }

  if (!a3)
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutMultiColumnTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]"];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 150, @"Should probably pass some actual text to layout - it is nil"}];
  }

  result = [a3 length];
  if (result)
  {
    self->_minSize.width = v17;
    self->_maxSize.width = width;
    self->_minSize.height = v16;
    self->_maxSize.height = height;
    self->_flags = a9;
    self->_anchor.x = x;
    self->_anchor.y = y;
    self->_pageNumber = a7;
    self->_pageCount = a8;
    self->_storage = a3;
    v25 = [[TSWPLayoutManager alloc] initWithStorage:self->_storage owner:self];
    v26 = [(TSWPLayoutManager *)v25 layoutIntoTarget:self withLayoutState:0 outSync:0];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = [(NSMutableArray *)[(TSWPText *)self columns] copy];
    [(NSMutableArray *)[(TSWPText *)self columns] removeAllObjects];

    v28 = *MEMORY[0x277CBF3A8];
    self->_minSize = *MEMORY[0x277CBF3A8];
    self->_maxSize = v28;
    self->_flags = 0;
    self->_anchor = *MEMORY[0x277CBF348];
    self->_storage = 0;
    return v27;
  }

  return result;
}

- (id)layoutText:(id)a3 kind:(int)a4 minSize:(CGSize)a5 maxSize:(CGSize)a6 anchor:(CGPoint)a7 flags:(int)a8
{
  y = a7.y;
  x = a7.x;
  height = a6.height;
  width = a6.width;
  v13 = a5.height;
  v14 = a5.width;
  v15 = *&a4;
  if (!self->_paragraphStyle)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 208, @"Paragraph style is required"}];
  }

  if (self->_storage)
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 209, @"Storage should be nil"}];
  }

  if (!a3)
  {
    v22 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [v22 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 210, @"Should probably pass some actual text to layout - it is nil"}];
  }

  if (![a3 length])
  {
    return 0;
  }

  self->_minSize.width = v14;
  self->_minSize.height = v13;
  self->_maxSize.width = width;
  self->_maxSize.height = height;
  self->_flags = a8;
  self->_anchor.x = x;
  self->_anchor.y = y;
  v24 = [TSWPStorage alloc];
  v25 = [(TSPObject *)self->_paragraphStyle context];
  v26 = [(TSSStyle *)self->_paragraphStyle stylesheet];
  LODWORD(v35) = self->_naturalDirection;
  v27 = [(TSWPStorage *)v24 initWithContext:v25 string:a3 kind:v15 stylesheet:v26 paragraphStyle:self->_paragraphStyle listStyle:self->_listStyle section:0 columnStyle:0 paragraphDirection:v35];
  self->_storage = v27;
  if (!v27)
  {
    return 0;
  }

  v28 = [[TSWPLayoutManager alloc] initWithStorage:self->_storage owner:self];
  v29 = [(TSWPLayoutManager *)v28 layoutIntoTarget:self withLayoutState:0 outSync:0];
  if ([(NSMutableArray *)[(TSWPText *)self columns] count]!= 1)
  {
    v30 = [MEMORY[0x277D6C290] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [v30 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 244, @"Invalid column count"}];
  }

  v32 = [(NSMutableArray *)[(TSWPText *)self columns] firstObject];
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  [(NSMutableArray *)[(TSWPText *)self columns] removeAllObjects];

  v33 = *MEMORY[0x277CBF3A8];
  self->_minSize = *MEMORY[0x277CBF3A8];
  self->_maxSize = v33;
  self->_flags = 0;
  self->_anchor = *MEMORY[0x277CBF348];

  self->_storage = 0;
  return v32;
}

- (CGSize)measureText:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3)
  {
    [-[TSWPText layoutText:minSize:maxSize:anchor:flags:](self layoutText:a3 minSize:4111 maxSize:v3 anchor:v4 flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)), "frameBounds"}];
    v3 = v5;
    v4 = v6;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)measureStorage:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3)
  {
    [-[TSWPText layoutTextStorage:minSize:maxSize:anchor:flags:](self layoutTextStorage:a3 minSize:4111 maxSize:v3 anchor:v4 flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)), "frameBounds"}];
    v3 = v5;
    v4 = v6;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)drawColumn:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7
{
  v8 = a6;
  if (!a3 || !a5)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText drawColumn:selection:inContext:isFlipped:viewScale:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 306, @"Invalid arguments"}];
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v15 = [[TSWPRenderer alloc] initWithContext:a5];
  [(TSWPRenderer *)v15 setFlipShadows:v8];
  [(TSWPRenderer *)v15 setViewScale:a7];
  v16 = MEMORY[0x277D6C268];
  v17 = *MEMORY[0x277D6C268];
  v18 = *(MEMORY[0x277D6C268] + 8);
  LOBYTE(v22) = 0;
  LODWORD(v21) = 3;
  LOBYTE(v20) = TSDCGContextHasBackgroundsSuppressed(a5);
  LOBYTE(v19) = 0;
  [a3 renderWithRenderer:v15 currentSelection:0 limitSelection:a4 listRange:v17 rubyGlyphRange:v18 isCanvasInteractive:v17 spellChecker:v18 suppressedMisspellingRange:v19 blackAndWhite:0 dictationInterpretations:v17 autocorrections:v18 markedRange:v20 markedText:&v23 renderMode:&v23 pageCount:*v16 suppressInvisibles:v16[1] currentCanvasSelection:{0, v21, -[TSWPText pageCount](self, "pageCount"), v22, 0}];

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

+ (void)renderColumn:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7
{
  v8 = a6;
  if (!a3 || !a5)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPText renderColumn:selection:inContext:isFlipped:viewScale:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 427, @"Invalid arguments"}];
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v14 = [[TSWPRenderer alloc] initWithContext:a5];
  [(TSWPRenderer *)v14 setFlipShadows:v8];
  [(TSWPRenderer *)v14 setViewScale:a7];
  [(TSWPRenderer *)v14 setPreventClipToColumn:1];
  v15 = MEMORY[0x277D6C268];
  v16 = *MEMORY[0x277D6C268];
  v17 = *(MEMORY[0x277D6C268] + 8);
  LOBYTE(v21) = 0;
  LODWORD(v20) = 3;
  LOBYTE(v19) = TSDCGContextHasBackgroundsSuppressed(a5);
  LOBYTE(v18) = 0;
  [a3 renderWithRenderer:v14 currentSelection:0 limitSelection:a4 listRange:v16 rubyGlyphRange:v17 isCanvasInteractive:v16 spellChecker:v17 suppressedMisspellingRange:v18 blackAndWhite:0 dictationInterpretations:v16 autocorrections:v17 markedRange:v19 markedText:&v22 renderMode:&v22 pageCount:*v15 suppressInvisibles:v15[1] currentCanvasSelection:{0, v20, 0x7FFFFFFFFFFFFFFFLL, v21, 0}];

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

+ (void)renderColumns:(id)a3 selection:(id)a4 inContext:(CGContext *)a5 isFlipped:(BOOL)a6 viewScale:(double)a7
{
  v8 = a6;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(a3);
        }

        [TSWPText renderColumn:*(*(&v15 + 1) + 8 * v14++) selection:0 inContext:a5 isFlipped:v8 viewScale:a7];
      }

      while (v12 != v14);
      v12 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)drawText:(id)a3 inContext:(CGContext *)a4 minSize:(CGSize)a5 maxSize:(CGSize)a6 anchor:(CGPoint)a7 flags:(int)a8 viewScale:(double)a9
{
  y = a7.y;
  x = a7.x;
  v14 = [(TSWPText *)self layoutText:a3 minSize:*&a8 maxSize:a5.width anchor:a5.height flags:a6.width, a6.height];
  if (v14)
  {
    v15 = v14;
    CGContextSaveGState(a4);
    CGContextTranslateCTM(a4, x, y);
    [(TSWPText *)self drawColumn:v15 inContext:a4 isFlipped:0 viewScale:a9];

    CGContextRestoreGState(a4);
  }
}

- (CGSize)adjustedInsets
{
  delegate = self->_delegate;
  if (delegate)
  {
    v5 = [(TSWPTextDelegate *)delegate padding];
    [v5 leftInset];
    v7 = v6;
    [v5 topInset];
    v9 = v8;
    v10 = v7;
  }

  else
  {
    columnStyle = self->_columnStyle;

    [(TSWPColumnStyle *)columnStyle adjustedInsets];
  }

  result.height = v9;
  result.width = v10;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  if (self->_delegate)
  {
    [(TSWPColumnStyle *)self->_columnStyle adjustedInsets];
    if (v12 != *MEMORY[0x277CBF3A8] || v11 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v14 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
      [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 532, @"if a delegate provides padding, column style must not have a non-zero adjusted inset"}];
    }

    [(TSWPText *)self adjustedInsets];
    v17 = 10.0;
    if (a4 <= 10.0)
    {
      v17 = a4;
    }

    if (v16 >= (a4 - v17) * 0.5)
    {
      v18 = (a4 - v17) * 0.5;
    }

    else
    {
      v18 = v16;
    }

    a4 = a4 + v18 * -2.0;
    if (a4 < v17)
    {
      v19 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
      [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 541, @"created an undersized column"}];
    }
  }

  else
  {
    v18 = 0.0;
  }

  [(TSWPColumnStyle *)self->_columnStyle positionForColumnIndex:a3 bodyWidth:a5 outWidth:a6 outGap:a4];
  return v18 + v21;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)currentSize
{
  if (![(TSWPText *)self autosizeFlags])
  {
    [(TSWPText *)self minSize];
    v4 = v3;
    v6 = v5;
    [(TSWPText *)self maxSize];
    if (v4 != v8 || v6 != v7)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText currentSize]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 630, @"autosizeFlags set to no autosize but min and max sizes are unequal. They should be the same."}];
    }
  }

  [(TSWPText *)self maxSize];
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGPoint)position
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchor.x;
  y = self->_anchor.y;
  result.y = y;
  result.x = x;
  return result;
}

- (unsigned)verticalAlignment
{
  delegate = self->_delegate;
  if (delegate)
  {
    return [(TSWPTextDelegate *)delegate verticalAlignment];
  }

  else
  {
    return [(TSSStyle *)self->_columnStyle intValueForProperty:149];
  }
}

- (CGRect)targetRectForCanvasRect:(CGRect)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)validatedLayoutForAnchoredDrawable:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText validatedLayoutForAnchoredDrawable:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 699, @"Anchored attachments not yet supported in TSWPText."}];
  return 0;
}

- (void)addAttachmentLayout:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText addAttachmentLayout:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:725 description:@"Partitioned attachments not yet supported in TSWPTableText."];
}

- (double)maxAnchorY
{
  [(TSWPText *)self position];
  v4 = v3;
  [(TSWPText *)self maxSize];
  return v4 + v5;
}

- (BOOL)adjustColumnOriginForAlignment
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(TSWPTextDelegate *)delegate adjustColumnOriginForAlignment];
}

- (BOOL)forceWesternLineBreaking
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(TSWPTextDelegate *)delegate forceWesternLineBreaking];
}

@end