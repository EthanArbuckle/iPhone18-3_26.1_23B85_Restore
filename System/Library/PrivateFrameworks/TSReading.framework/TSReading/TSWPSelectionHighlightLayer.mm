@interface TSWPSelectionHighlightLayer
- (void)renderInContext:(CGContext *)context;
@end

@implementation TSWPSelectionHighlightLayer

- (void)renderInContext:(CGContext *)context
{
  if (([(TSWPSelectionHighlightLayer *)self isHidden]& 1) == 0)
  {
    CGContextSaveGState(context);
    fillColor = [(TSWPSelectionHighlightLayer *)self fillColor];
    if (fillColor)
    {
      CGContextSetFillColorWithColor(context, fillColor);
    }

    strokeColor = [(TSWPSelectionHighlightLayer *)self strokeColor];
    if (strokeColor)
    {
      CGContextSetStrokeColorWithColor(context, strokeColor);
    }

    [(TSWPSelectionHighlightLayer *)self lineWidth];
    CGContextSetLineWidth(context, v7);
    [(TSWPSelectionHighlightLayer *)self miterLimit];
    CGContextSetMiterLimit(context, v8);
    lineCap = [(TSWPSelectionHighlightLayer *)self lineCap];
    if ([lineCap isEqualToString:*MEMORY[0x277CDA778]])
    {
      v10 = kCGLineCapButt;
    }

    else if ([lineCap isEqualToString:*MEMORY[0x277CDA780]])
    {
      v10 = kCGLineCapRound;
    }

    else
    {
      if (![lineCap isEqualToString:*MEMORY[0x277CDA788]])
      {
        goto LABEL_13;
      }

      v10 = kCGLineCapSquare;
    }

    CGContextSetLineCap(context, v10);
LABEL_13:
    lineJoin = [(TSWPSelectionHighlightLayer *)self lineJoin];
    if ([lineJoin isEqualToString:*MEMORY[0x277CDA798]])
    {
      v12 = kCGLineJoinMiter;
    }

    else if ([lineJoin isEqualToString:*MEMORY[0x277CDA7A0]])
    {
      v12 = kCGLineJoinRound;
    }

    else
    {
      if (![lineJoin isEqualToString:*MEMORY[0x277CDA790]])
      {
        goto LABEL_20;
      }

      v12 = kCGLineJoinBevel;
    }

    CGContextSetLineJoin(context, v12);
LABEL_20:
    [-[TSWPSelectionHighlightLayer lineDashPattern](self "lineDashPattern")];
    operator new[]();
  }
}

@end