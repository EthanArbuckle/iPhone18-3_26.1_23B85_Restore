@interface TSWPStorageMeasurer
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)targetRectForCanvasRect:(CGRect)a3;
- (CGSize)adjustedInsets;
- (CGSize)maxSize;
- (CGSize)measuredSizeWithFlags:(unsigned int)a3;
- (CGSize)measuredSizeWithFlags:(unsigned int)a3 maxSize:(CGSize)a4 layoutParent:(id)a5 styleProvider:(id)a6;
- (CGSize)minSize;
- (TSWPStorageMeasurer)initWithStorage:(id)a3;
- (double)maxAnchorY;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (id)columnMetricsForCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4;
- (id)layoutForInlineDrawable:(id)a3;
- (id)pLayoutWithMinSize:(CGSize)a3 maxSize:(CGSize)a4 anchor:(CGPoint)a5 flags:(unsigned int)a6;
- (id)validatedLayoutForAnchoredDrawable:(id)a3;
- (unsigned)maxLineCount;
- (void)addAttachmentLayout:(id)a3;
- (void)dealloc;
@end

@implementation TSWPStorageMeasurer

- (TSWPStorageMeasurer)initWithStorage:(id)a3
{
  v4 = [(TSWPStorageMeasurer *)self init];
  if (v4)
  {
    v4->_storage = a3;
    v4->_columns = objc_opt_new();
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPStorageMeasurer;
  [(TSWPStorageMeasurer *)&v3 dealloc];
}

- (id)pLayoutWithMinSize:(CGSize)a3 maxSize:(CGSize)a4 anchor:(CGPoint)a5 flags:(unsigned int)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v11 = a3.height;
  v12 = a3.width;
  if (![(TSWPStorage *)self->_storage length])
  {
    return 0;
  }

  self->_minSize.width = v12;
  self->_minSize.height = v11;
  self->_maxSize.width = width;
  self->_maxSize.height = height;
  self->_flags = a6;
  self->_anchor.x = x;
  self->_anchor.y = y;
  v14 = [[TSWPLayoutManager alloc] initWithStorage:self->_storage owner:self];
  v15 = [(TSWPLayoutManager *)v14 layoutIntoTarget:self withLayoutState:0 outSync:0];
  if ([(NSMutableArray *)[(TSWPStorageMeasurer *)self columns] count]!= 1)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorageMeasurer pLayoutWithMinSize:maxSize:anchor:flags:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 1183, @"Invalid column count"}];
  }

  v18 = [(NSMutableArray *)[(TSWPStorageMeasurer *)self columns] firstObject];
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  [(NSMutableArray *)[(TSWPStorageMeasurer *)self columns] removeAllObjects];

  v19 = *MEMORY[0x277CBF3A8];
  self->_minSize = *MEMORY[0x277CBF3A8];
  self->_maxSize = v19;
  self->_flags = 0;
  self->_anchor = *MEMORY[0x277CBF348];
  return v18;
}

- (CGSize)measuredSizeWithFlags:(unsigned int)a3
{
  [-[TSWPStorageMeasurer pLayoutWithMinSize:maxSize:anchor:flags:](self pLayoutWithMinSize:a3 | 0x1000 maxSize:*MEMORY[0x277CBF3A8] anchor:*(MEMORY[0x277CBF3A8] + 8) flags:{4294967300.0, 4294967300.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)), "frameBounds"}];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (CGSize)measuredSizeWithFlags:(unsigned int)a3 maxSize:(CGSize)a4 layoutParent:(id)a5 styleProvider:(id)a6
{
  self->_layoutParent = a5;
  self->_styleProvider = a6;
  [-[TSWPStorageMeasurer pLayoutWithMinSize:maxSize:anchor:flags:](self pLayoutWithMinSize:a3 | 0x1000 maxSize:*MEMORY[0x277CBF3A8] anchor:*(MEMORY[0x277CBF3A8] + 8) flags:{a4.width, a4.height, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)), "frameBounds"}];
  v8 = v7;
  v10 = v9;
  self->_layoutParent = 0;
  self->_styleProvider = 0;
  result.height = v10;
  result.width = v8;
  return result;
}

- (id)columnMetricsForCharIndex:(unint64_t)a3 outRange:(_NSRange *)a4
{
  if (![(TSWPStorage *)self->_storage supportsColumnStyles:a3])
  {
    return self;
  }

  storage = self->_storage;

  return [(TSWPStorage *)storage columnStyleAtCharIndex:0 effectiveRange:0];
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

- (id)layoutForInlineDrawable:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorageMeasurer layoutForInlineDrawable:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 1355, @"Inline attachments not yet supported in TSWPText."}];
  return 0;
}

- (id)validatedLayoutForAnchoredDrawable:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorageMeasurer validatedLayoutForAnchoredDrawable:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"), 1363, @"Anchored attachments not yet supported in TSWPText."}];
  return 0;
}

- (void)addAttachmentLayout:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPStorageMeasurer addAttachmentLayout:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPText.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:1389 description:@"Partitioned attachments not yet supported in TSWPText."];
}

- (double)maxAnchorY
{
  [(TSWPStorageMeasurer *)self position];
  v4 = v3;
  [(TSWPStorageMeasurer *)self maxSize];
  return v4 + v5;
}

- (unsigned)maxLineCount
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  layoutParent = self->_layoutParent;

  return [(TSWPLayoutParent *)layoutParent maxLineCountForTextLayout:0];
}

- (CGSize)adjustedInsets
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  if (a5)
  {
    *a5 = a4;
  }

  if (a6)
  {
    *a6 = 0.0;
  }

  return 0.0;
}

@end