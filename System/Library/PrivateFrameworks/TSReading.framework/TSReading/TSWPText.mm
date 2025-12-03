@interface TSWPText
+ (void)renderColumn:(id)column selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale;
+ (void)renderColumns:(id)columns selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale;
- (BOOL)adjustColumnOriginForAlignment;
- (BOOL)forceWesternLineBreaking;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)adjustedInsets;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)measureStorage:(id)storage;
- (CGSize)measureText:(id)text;
- (CGSize)minSize;
- (TSWPText)initWithParagraphStyle:(id)style listStyle:(id)listStyle columnStyle:(id)columnStyle alignmentForNaturalAlignment:(unsigned int)alignment naturalDirection:(int)direction;
- (double)maxAnchorY;
- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap;
- (id)layoutMultiColumnTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor pageNumber:(unint64_t)number pageCount:(unint64_t)count flags:(int)flags;
- (id)layoutText:(id)text kind:(int)kind minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags;
- (id)layoutTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor pageNumber:(unint64_t)number pageCount:(unint64_t)count flags:(int)flags;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (unsigned)verticalAlignment;
- (void)addAttachmentLayout:(id)layout;
- (void)dealloc;
- (void)drawColumn:(id)column selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale;
- (void)drawText:(id)text inContext:(CGContext *)context minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags viewScale:(double)scale;
@end

@implementation TSWPText

- (TSWPText)initWithParagraphStyle:(id)style listStyle:(id)listStyle columnStyle:(id)columnStyle alignmentForNaturalAlignment:(unsigned int)alignment naturalDirection:(int)direction
{
  v14.receiver = self;
  v14.super_class = TSWPText;
  v12 = [(TSWPText *)&v14 init];
  if (v12)
  {
    v12->_paragraphStyle = style;
    v12->_listStyle = listStyle;
    if (!columnStyle)
    {
      columnStyle = +[TSWPColumnStyle defaultStyleWithContext:](TSWPColumnStyle, "defaultStyleWithContext:", [style context]);
    }

    v12->_columnStyle = columnStyle;
    v12->_columns = objc_opt_new();
    v12->_naturalAlignment = alignment;
    v12->_naturalDirection = direction;
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

- (id)layoutTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor pageNumber:(unint64_t)number pageCount:(unint64_t)count flags:(int)flags
{
  v9 = [(TSWPText *)self layoutMultiColumnTextStorage:storage minSize:number maxSize:count anchor:*&flags pageNumber:size.width pageCount:size.height flags:maxSize.width, maxSize.height, anchor.x, anchor.y];
  if ([v9 count] != 1)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 140, @"Invalid column count"}];
  }

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)layoutMultiColumnTextStorage:(id)storage minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor pageNumber:(unint64_t)number pageCount:(unint64_t)count flags:(int)flags
{
  y = anchor.y;
  x = anchor.x;
  height = maxSize.height;
  width = maxSize.width;
  v16 = size.height;
  v17 = size.width;
  if (self->_storage)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutMultiColumnTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]"];
    [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 149, @"Storage should be nil"}];
  }

  if (!storage)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutMultiColumnTextStorage:minSize:maxSize:anchor:pageNumber:pageCount:flags:]"];
    [currentHandler2 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 150, @"Should probably pass some actual text to layout - it is nil"}];
  }

  result = [storage length];
  if (result)
  {
    self->_minSize.width = v17;
    self->_maxSize.width = width;
    self->_minSize.height = v16;
    self->_maxSize.height = height;
    self->_flags = flags;
    self->_anchor.x = x;
    self->_anchor.y = y;
    self->_pageNumber = number;
    self->_pageCount = count;
    self->_storage = storage;
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

- (id)layoutText:(id)text kind:(int)kind minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags
{
  y = anchor.y;
  x = anchor.x;
  height = maxSize.height;
  width = maxSize.width;
  v13 = size.height;
  v14 = size.width;
  v15 = *&kind;
  if (!self->_paragraphStyle)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 208, @"Paragraph style is required"}];
  }

  if (self->_storage)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [currentHandler2 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 209, @"Storage should be nil"}];
  }

  if (!text)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [currentHandler3 handleFailureInFunction:v23 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 210, @"Should probably pass some actual text to layout - it is nil"}];
  }

  if (![text length])
  {
    return 0;
  }

  self->_minSize.width = v14;
  self->_minSize.height = v13;
  self->_maxSize.width = width;
  self->_maxSize.height = height;
  self->_flags = flags;
  self->_anchor.x = x;
  self->_anchor.y = y;
  v24 = [TSWPStorage alloc];
  context = [(TSPObject *)self->_paragraphStyle context];
  stylesheet = [(TSSStyle *)self->_paragraphStyle stylesheet];
  LODWORD(v35) = self->_naturalDirection;
  v27 = [(TSWPStorage *)v24 initWithContext:context string:text kind:v15 stylesheet:stylesheet paragraphStyle:self->_paragraphStyle listStyle:self->_listStyle section:0 columnStyle:0 paragraphDirection:v35];
  self->_storage = v27;
  if (!v27)
  {
    return 0;
  }

  v28 = [[TSWPLayoutManager alloc] initWithStorage:self->_storage owner:self];
  v29 = [(TSWPLayoutManager *)v28 layoutIntoTarget:self withLayoutState:0 outSync:0];
  if ([(NSMutableArray *)[(TSWPText *)self columns] count]!= 1)
  {
    currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText layoutText:kind:minSize:maxSize:anchor:flags:]"];
    [currentHandler4 handleFailureInFunction:v31 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 244, @"Invalid column count"}];
  }

  firstObject = [(NSMutableArray *)[(TSWPText *)self columns] firstObject];
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
  return firstObject;
}

- (CGSize)measureText:(id)text
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (text)
  {
    [-[TSWPText layoutText:minSize:maxSize:anchor:flags:](self layoutText:text minSize:4111 maxSize:v3 anchor:v4 flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)), "frameBounds"}];
    v3 = v5;
    v4 = v6;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)measureStorage:(id)storage
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (storage)
  {
    [-[TSWPText layoutTextStorage:minSize:maxSize:anchor:flags:](self layoutTextStorage:storage minSize:4111 maxSize:v3 anchor:v4 flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)), "frameBounds"}];
    v3 = v5;
    v4 = v6;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)drawColumn:(id)column selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale
{
  flippedCopy = flipped;
  if (!column || !context)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText drawColumn:selection:inContext:isFlipped:viewScale:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 306, @"Invalid arguments"}];
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v15 = [[TSWPRenderer alloc] initWithContext:context];
  [(TSWPRenderer *)v15 setFlipShadows:flippedCopy];
  [(TSWPRenderer *)v15 setViewScale:scale];
  v16 = MEMORY[0x277D6C268];
  v17 = *MEMORY[0x277D6C268];
  v18 = *(MEMORY[0x277D6C268] + 8);
  LOBYTE(v22) = 0;
  LODWORD(v21) = 3;
  LOBYTE(v20) = TSDCGContextHasBackgroundsSuppressed(context);
  LOBYTE(v19) = 0;
  [column renderWithRenderer:v15 currentSelection:0 limitSelection:selection listRange:v17 rubyGlyphRange:v18 isCanvasInteractive:v17 spellChecker:v18 suppressedMisspellingRange:v19 blackAndWhite:0 dictationInterpretations:v17 autocorrections:v18 markedRange:v20 markedText:&v23 renderMode:&v23 pageCount:*v16 suppressInvisibles:v16[1] currentCanvasSelection:{0, v21, -[TSWPText pageCount](self, "pageCount"), v22, 0}];

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

+ (void)renderColumn:(id)column selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale
{
  flippedCopy = flipped;
  if (!column || !context)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPText renderColumn:selection:inContext:isFlipped:viewScale:]"];
    [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 427, @"Invalid arguments"}];
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v14 = [[TSWPRenderer alloc] initWithContext:context];
  [(TSWPRenderer *)v14 setFlipShadows:flippedCopy];
  [(TSWPRenderer *)v14 setViewScale:scale];
  [(TSWPRenderer *)v14 setPreventClipToColumn:1];
  v15 = MEMORY[0x277D6C268];
  v16 = *MEMORY[0x277D6C268];
  v17 = *(MEMORY[0x277D6C268] + 8);
  LOBYTE(v21) = 0;
  LODWORD(v20) = 3;
  LOBYTE(v19) = TSDCGContextHasBackgroundsSuppressed(context);
  LOBYTE(v18) = 0;
  [column renderWithRenderer:v14 currentSelection:0 limitSelection:selection listRange:v16 rubyGlyphRange:v17 isCanvasInteractive:v16 spellChecker:v17 suppressedMisspellingRange:v18 blackAndWhite:0 dictationInterpretations:v16 autocorrections:v17 markedRange:v19 markedText:&v22 renderMode:&v22 pageCount:*v15 suppressInvisibles:v15[1] currentCanvasSelection:{0, v20, 0x7FFFFFFFFFFFFFFFLL, v21, 0}];

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

+ (void)renderColumns:(id)columns selection:(id)selection inContext:(CGContext *)context isFlipped:(BOOL)flipped viewScale:(double)scale
{
  flippedCopy = flipped;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [columns countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(columns);
        }

        [TSWPText renderColumn:*(*(&v15 + 1) + 8 * v14++) selection:0 inContext:context isFlipped:flippedCopy viewScale:scale];
      }

      while (v12 != v14);
      v12 = [columns countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)drawText:(id)text inContext:(CGContext *)context minSize:(CGSize)size maxSize:(CGSize)maxSize anchor:(CGPoint)anchor flags:(int)flags viewScale:(double)scale
{
  y = anchor.y;
  x = anchor.x;
  v14 = [(TSWPText *)self layoutText:text minSize:*&flags maxSize:size.width anchor:size.height flags:maxSize.width, maxSize.height];
  if (v14)
  {
    v15 = v14;
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, x, y);
    [(TSWPText *)self drawColumn:v15 inContext:context isFlipped:0 viewScale:scale];

    CGContextRestoreGState(context);
  }
}

- (CGSize)adjustedInsets
{
  delegate = self->_delegate;
  if (delegate)
  {
    padding = [(TSWPTextDelegate *)delegate padding];
    [padding leftInset];
    v7 = v6;
    [padding topInset];
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

- (double)positionForColumnIndex:(unint64_t)index bodyWidth:(double)width outWidth:(double *)outWidth outGap:(double *)gap
{
  if (self->_delegate)
  {
    [(TSWPColumnStyle *)self->_columnStyle adjustedInsets];
    if (v12 != *MEMORY[0x277CBF3A8] || v11 != *(MEMORY[0x277CBF3A8] + 8))
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
      [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 532, @"if a delegate provides padding, column style must not have a non-zero adjusted inset"}];
    }

    [(TSWPText *)self adjustedInsets];
    widthCopy = 10.0;
    if (width <= 10.0)
    {
      widthCopy = width;
    }

    if (v16 >= (width - widthCopy) * 0.5)
    {
      v18 = (width - widthCopy) * 0.5;
    }

    else
    {
      v18 = v16;
    }

    width = width + v18 * -2.0;
    if (width < widthCopy)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
      [currentHandler2 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 541, @"created an undersized column"}];
    }
  }

  else
  {
    v18 = 0.0;
  }

  [(TSWPColumnStyle *)self->_columnStyle positionForColumnIndex:index bodyWidth:outWidth outWidth:gap outGap:width];
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText currentSize]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 630, @"autosizeFlags set to no autosize but min and max sizes are unequal. They should be the same."}];
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

- (CGRect)targetRectForCanvasRect:(CGRect)rect
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

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText validatedLayoutForAnchoredDrawable:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 699, @"Anchored attachments not yet supported in TSWPText."}];
  return 0;
}

- (void)addAttachmentLayout:(id)layout
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPText addAttachmentLayout:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:725 description:@"Partitioned attachments not yet supported in TSWPTableText."];
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