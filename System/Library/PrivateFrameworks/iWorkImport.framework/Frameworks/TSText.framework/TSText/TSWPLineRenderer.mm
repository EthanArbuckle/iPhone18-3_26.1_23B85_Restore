@interface TSWPLineRenderer
- (void)drawLine:(TSWPLineRef *)a3;
- (void)drawLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 thickness:(double)a5 length:(double)a6 lineCount:(int64_t)a7 lineFragmentStart:(CGPoint)a8 isWavyUnderline:(BOOL)a9;
- (void)drawRun:(const __CTRun *)a3 glyphRange:(id)a4;
- (void)drawWordMarkingsAtStart:(double)a3 length:(double)a4 linePos:(double)a5;
- (void)translateLinePositionForLine:(TSWPLineRef *)a3 lineFragment:(const void *)a4 linePosition:(CGPoint)a5;
@end

@implementation TSWPLineRenderer

- (void)drawLine:(TSWPLineRef *)a3
{
  v5 = objc_msgSend_context(self, a2, a3);
  CGContextSaveGState(v5);
  v8 = objc_msgSend_context(self, v6, v7);
  CGAffineTransformMakeScale(&v16, 1.0, -1.0);
  CGContextConcatCTM(v8, &v16);
  v9 = sub_276DD1F38(a3);
  v12 = objc_msgSend_context(self, v10, v11);
  CTLineDraw(v9, v12);
  v15 = objc_msgSend_context(self, v13, v14);
  CGContextRestoreGState(v15);
}

- (void)drawLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 thickness:(double)a5 length:(double)a6 lineCount:(int64_t)a7 lineFragmentStart:(CGPoint)a8 isWavyUnderline:(BOOL)a9
{
  if (a7 >= 1)
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
    v23 = a9;
    y = a4.y;
    x = a4.x;
    v28 = a3.y;
    v29 = a3.x;
    v31 = 1;
    do
    {
      v33 = objc_msgSend_context(self, a2, a7, a3.x, a3.y, a4.x, a4.y, a5, a6, a8.x, a8.y, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      if (v23)
      {
        objc_msgSend_strokeWavyLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v32, v33, v29, v28, x, y, a5);
      }

      else
      {
        objc_msgSend_strokeLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v32, v33, v29, v28, x, y, a5);
      }

      v28 = v28 + a5 * 2.0;
      y = y + a5 * 2.0;
      v34 = v31++;
    }

    while (v34 < a7);
  }
}

- (void)drawRun:(const __CTRun *)a3 glyphRange:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = objc_msgSend_context(self, a2, a3);
  v8.location = var0;
  v8.length = var1;

  CTRunDraw(a3, v7, v8);
}

- (void)drawWordMarkingsAtStart:(double)a3 length:(double)a4 linePos:(double)a5
{
  v8 = a3 + a4;
  v10 = objc_msgSend_context(self, a2, v5);

  objc_msgSend_strokeLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v9, v10, a3, a5, v8, a5, 1.79999995);
}

- (void)translateLinePositionForLine:(TSWPLineRef *)a3 lineFragment:(const void *)a4 linePosition:(CGPoint)a5
{
  v5 = a5.x + *(a4 + 5);
  v6 = a5.y + *(a4 + 4);
  v7 = objc_msgSend_context(self, a2, a3);

  CGContextTranslateCTM(v7, v5, v6);
}

@end