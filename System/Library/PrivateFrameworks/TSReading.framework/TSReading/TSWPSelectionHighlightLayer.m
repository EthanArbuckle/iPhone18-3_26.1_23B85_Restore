@interface TSWPSelectionHighlightLayer
- (void)renderInContext:(CGContext *)a3;
@end

@implementation TSWPSelectionHighlightLayer

- (void)renderInContext:(CGContext *)a3
{
  if (([(TSWPSelectionHighlightLayer *)self isHidden]& 1) == 0)
  {
    CGContextSaveGState(a3);
    v5 = [(TSWPSelectionHighlightLayer *)self fillColor];
    if (v5)
    {
      CGContextSetFillColorWithColor(a3, v5);
    }

    v6 = [(TSWPSelectionHighlightLayer *)self strokeColor];
    if (v6)
    {
      CGContextSetStrokeColorWithColor(a3, v6);
    }

    [(TSWPSelectionHighlightLayer *)self lineWidth];
    CGContextSetLineWidth(a3, v7);
    [(TSWPSelectionHighlightLayer *)self miterLimit];
    CGContextSetMiterLimit(a3, v8);
    v9 = [(TSWPSelectionHighlightLayer *)self lineCap];
    if ([v9 isEqualToString:*MEMORY[0x277CDA778]])
    {
      v10 = kCGLineCapButt;
    }

    else if ([v9 isEqualToString:*MEMORY[0x277CDA780]])
    {
      v10 = kCGLineCapRound;
    }

    else
    {
      if (![v9 isEqualToString:*MEMORY[0x277CDA788]])
      {
        goto LABEL_13;
      }

      v10 = kCGLineCapSquare;
    }

    CGContextSetLineCap(a3, v10);
LABEL_13:
    v11 = [(TSWPSelectionHighlightLayer *)self lineJoin];
    if ([v11 isEqualToString:*MEMORY[0x277CDA798]])
    {
      v12 = kCGLineJoinMiter;
    }

    else if ([v11 isEqualToString:*MEMORY[0x277CDA7A0]])
    {
      v12 = kCGLineJoinRound;
    }

    else
    {
      if (![v11 isEqualToString:*MEMORY[0x277CDA790]])
      {
        goto LABEL_20;
      }

      v12 = kCGLineJoinBevel;
    }

    CGContextSetLineJoin(a3, v12);
LABEL_20:
    [-[TSWPSelectionHighlightLayer lineDashPattern](self "lineDashPattern")];
    operator new[]();
  }
}

@end