@interface TSWPLineRenderer
- (void)drawLine:(TSWPLineRef *)line;
- (void)drawLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint thickness:(double)thickness length:(double)length lineCount:(int64_t)count lineFragmentStart:(CGPoint)start isWavyUnderline:(BOOL)underline;
- (void)drawRun:(const __CTRun *)run glyphRange:(id)range;
- (void)drawWordMarkingsAtStart:(double)start length:(double)length linePos:(double)pos;
- (void)translateLinePositionForLine:(TSWPLineRef *)line lineFragment:(const void *)fragment linePosition:(CGPoint)position;
@end

@implementation TSWPLineRenderer

- (void)drawLine:(TSWPLineRef *)line
{
  v5 = objc_msgSend_context(self, a2, line);
  CGContextSaveGState(v5);
  v8 = objc_msgSend_context(self, v6, v7);
  CGAffineTransformMakeScale(&v16, 1.0, -1.0);
  CGContextConcatCTM(v8, &v16);
  v9 = sub_276DD1F38(line);
  v12 = objc_msgSend_context(self, v10, v11);
  CTLineDraw(v9, v12);
  v15 = objc_msgSend_context(self, v13, v14);
  CGContextRestoreGState(v15);
}

- (void)drawLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint thickness:(double)thickness length:(double)length lineCount:(int64_t)count lineFragmentStart:(CGPoint)start isWavyUnderline:(BOOL)underline
{
  if (count >= 1)
  {
    v35 = v22;
    v36 = v21;
    v37 = v20;
    v38 = v19;
    v39 = v18;
    v40 = v17;
    v41 = v14;
    v42 = v13;
    v43 = v12;
    v44 = v11;
    v45 = v10;
    v46 = v9;
    v47 = v15;
    v48 = v16;
    underlineCopy = underline;
    y = toPoint.y;
    x = toPoint.x;
    v28 = point.y;
    v29 = point.x;
    v31 = 1;
    do
    {
      v33 = objc_msgSend_context(self, a2, count, point.x, point.y, toPoint.x, toPoint.y, thickness, length, start.x, start.y, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      if (underlineCopy)
      {
        objc_msgSend_strokeWavyLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v32, v33, v29, v28, x, y, thickness);
      }

      else
      {
        objc_msgSend_strokeLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v32, v33, v29, v28, x, y, thickness);
      }

      v28 = v28 + thickness * 2.0;
      y = y + thickness * 2.0;
      v34 = v31++;
    }

    while (v34 < count);
  }
}

- (void)drawRun:(const __CTRun *)run glyphRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v7 = objc_msgSend_context(self, a2, run);
  v8.location = var0;
  v8.length = var1;

  CTRunDraw(run, v7, v8);
}

- (void)drawWordMarkingsAtStart:(double)start length:(double)length linePos:(double)pos
{
  v8 = start + length;
  v10 = objc_msgSend_context(self, a2, v5);

  objc_msgSend_strokeLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v9, v10, start, pos, v8, pos, 1.79999995);
}

- (void)translateLinePositionForLine:(TSWPLineRef *)line lineFragment:(const void *)fragment linePosition:(CGPoint)position
{
  v5 = position.x + *(fragment + 5);
  v6 = position.y + *(fragment + 4);
  v7 = objc_msgSend_context(self, a2, line);

  CGContextTranslateCTM(v7, v5, v6);
}

@end