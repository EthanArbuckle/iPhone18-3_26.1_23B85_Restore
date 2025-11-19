@interface TSWPRenderer
+ (__CTFont)invisiblesFont;
- (BOOL)p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)a3 state:(const void *)a4;
- (BOOL)p_shouldClipFragment:(const void *)a3 drawingState:(const void *)a4 lineDrawFlags:(unsigned int)a5 updateRect:(CGRect)a6 outClipRect:(CGRect *)a7;
- (CGSize)convertSizeToDeviceSpace:(CGSize)a3;
- (TSWPRenderer)initWithContext:(CGContext *)a3;
- (void)dealloc;
- (void)drawAdornmentRects:(const void *)a3 forColumn:(id)a4 foreground:(BOOL)a5;
- (void)drawFragment:(const void *)a3 updateRect:(CGRect)a4 drawingState:(const void *)a5 runState:(id *)a6 lineDrawFlags:(unsigned int)a7;
- (void)p_drawAdornmentGlyphs:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5;
- (void)p_drawAdornmentLine:(const TSWPAdornmentLine *)a3 drawingState:(const void *)a4 lineFragment:(const void *)a5 lineFragmentStart:(CGPoint)a6 vertical:(BOOL)a7;
- (void)p_drawAdornmentLineBackgroundRect:(const TSWPAdornmentLine *)a3 lineDrawFlags:(unsigned int)a4 drawingState:(const void *)a5 bounds:(CGRect)a6;
- (void)p_drawAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5;
- (void)p_drawAttachmentAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5;
- (void)p_drawAttachmentGlyphAtPosition:(id)a3 fragment:(const void *)a4;
- (void)p_drawAutocorrectionMarkingsFragment:(const void *)a3 drawingState:(const void *)a4;
- (void)p_drawDictationMarkingsFragment:(const void *)a3 drawingState:(const void *)a4;
- (void)p_drawHiddenDeletionsAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5;
- (void)p_drawInvisiblesAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5;
- (void)p_drawInvisiblesBreakLine:(const TSWPAdornmentLine *)a3 lineFragment:(const void *)a4 state:(const void *)a5;
- (void)p_drawListLabelForFragment:(const void *)a3 drawingState:(const void *)a4 lineDrawFlags:(unsigned int)a5;
- (void)p_drawMisspelledWordMarkingsFragment:(const void *)a3 drawingState:(const void *)a4;
- (void)p_drawTextInRunsForLine:(__CTLine *)a3 fragment:(const void *)a4 state:(const void *)a5 tateChuYoko:(BOOL)a6 baseRange:(_NSRange)a7 isFirstLineRef:(BOOL)a8;
- (void)p_drawUngrammaticMarkingsFragment:(const void *)a3 drawingState:(const void *)a4;
- (void)p_drawWordMarkingsForFragment:(const void *)a3 color:(id)a4 ranges:(const void *)a5 suppressRange:(_NSRange)a6 drawingState:(const void *)a7;
- (void)p_strokeLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5;
- (void)p_strokeWavyLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5;
- (void)willRenderFragmentsWithDrawingState:(const void *)a3;
@end

@implementation TSWPRenderer

- (TSWPRenderer)initWithContext:(CGContext *)a3
{
  v6.receiver = self;
  v6.super_class = TSWPRenderer;
  v4 = [(TSWPRenderer *)&v6 init];
  if (v4)
  {
    v4->_context = CGContextRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CGContextRelease(self->_context);

  v3.receiver = self;
  v3.super_class = TSWPRenderer;
  [(TSWPRenderer *)&v3 dealloc];
}

- (CGSize)convertSizeToDeviceSpace:(CGSize)a3
{
  v5 = CGContextConvertSizeToDeviceSpace(self->_context, a3);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (void)willRenderFragmentsWithDrawingState:(const void *)a3
{
  CGContextSaveGState(self->_context);
  context = self->_context;
  v6 = *(a3 + 1);
  if (v6)
  {
    [v6 transformFromWP];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  CGContextConcatCTM(context, &v9);
  v7 = self->_context;
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&v9.a = *MEMORY[0x277CBF2C0];
  *&v9.c = v8;
  *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(v7, &v9);
}

- (void)drawFragment:(const void *)a3 updateRect:(CGRect)a4 drawingState:(const void *)a5 runState:(id *)a6 lineDrawFlags:(unsigned int)a7
{
  v7 = *&a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v79 = *MEMORY[0x277D85DE8];
  if (!*a5)
  {
    v16 = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer drawFragment:updateRect:drawingState:runState:lineDrawFlags:]"];
    [v16 handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 185, @"storage is nil"}];
  }

  v59 = *(a3 + 6);
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  v81 = CGRectIntersection(*(a3 + 80), v82);
  if (!CGRectIsEmpty(v81))
  {
    v56 = *(a3 + 1);
    v57 = *a3;
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v76.origin = *MEMORY[0x277CBF3A0];
    v76.size = v18;
    v58 = [(TSWPRenderer *)self p_shouldClipFragment:a3 drawingState:a5 lineDrawFlags:v7 updateRect:&v76 outClipRect:x, y, width, height];
    if (v58)
    {
      CGContextSaveGState(self->_context);
      CGContextClipToRect(self->_context, v76);
    }

    v20 = *(a3 + 5);
    v19 = *(a3 + 6);
    v21 = *(a3 + 8);
    v22 = *(a3 + 4);
    if (v7)
    {
      v23 = *(a3 + 7);
      v24 = *(a3 + 9);
      v26 = *(a3 + 40);
      v25 = *(a3 + 41);
      while (v26 != v25)
      {
        [(TSWPRenderer *)self p_drawAdornmentLineBackgroundRect:v26 lineDrawFlags:v7 drawingState:a5 bounds:v19, v23, v21, v24];
        v26 += 80;
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v27 = *(a3 + 66);
      v28 = [v27 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v28)
      {
        v29 = *v73;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v73 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v72 + 1) + 8 * i);
            if ([v31 isBackground])
            {
              [v31 drawAdornmentForFragment:a3 inContext:self->_context withFlags:v7 state:a5 bounds:{v19, v23, v21, v24}];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v28);
      }
    }

    v32 = v22 + v20;
    if ((v7 & 0x10000) != 0)
    {
      v46 = *(a3 + 43);
      v45 = *(a3 + 44);
      while (v46 != v45)
      {
        [(TSWPRenderer *)self p_drawAdornmentLineBackgroundRect:v46 lineDrawFlags:v7 drawingState:a5 bounds:v19, v32 - *(a3 + 16), v21, *(a3 + 16) + *(a3 + 17)];
        v46 += 80;
      }
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    if ((v7 & 0x400) != 0)
    {
      v80.length = v56;
      v80.location = v57;
      if (NSIntersectionRange(v80, *(a5 + 216)).length)
      {
        [(TSWPRenderer *)self p_calculateMarkAdornments:&v69 drawingState:a5 lineFragment:a3];
      }
    }

    if ((v7 & 2) != 0)
    {
      a6->var2 = v32;
      if ((v7 & 8) != 0)
      {
        [(TSWPRenderer *)self p_drawMisspelledWordMarkingsFragment:a3 drawingState:a5];
      }

      if ((v7 & 0x10) != 0)
      {
        [(TSWPRenderer *)self p_drawUngrammaticMarkingsFragment:a3 drawingState:a5];
      }

      if ((v7 & 0x200) != 0)
      {
        [(TSWPRenderer *)self p_drawDictationMarkingsFragment:a3 drawingState:a5];
      }

      if ((v7 & 0x800) != 0)
      {
        [(TSWPRenderer *)self p_drawAutocorrectionMarkingsFragment:a3 drawingState:a5];
      }

      if (*(a3 + 22))
      {
        [(TSWPRenderer *)self p_drawListLabelForFragment:a3 drawingState:a5 lineDrawFlags:v7];
      }

      v33 = v59 & 0x2000;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v62 = __76__TSWPRenderer_drawFragment_updateRect_drawingState_runState_lineDrawFlags___block_invoke;
      v63 = &unk_279D4A230;
      v66 = v22 + v20;
      v64 = self;
      v65 = a3;
      v68 = v33 >> 13;
      v67 = a5;
      if ((((!*(a5 + 7) || !*(a5 + 25)) && (__76__TSWPRenderer_drawFragment_updateRect_drawingState_runState_lineDrawFlags___block_invoke(v61, a3 + 24, 0), !*(a5 + 7)) || *(a5 + 25)) && (v62(v61, a3 + 28, 0), !*(a5 + 7)) || !*(a5 + 25)) && (v62(v61, a3 + 31, 1), !*(a5 + 7)) || !*(a5 + 25))
      {
        v35 = *(a3 + 46);
        v34 = *(a3 + 47);
        v60 = v34;
        while (v35 != v34)
        {
          CGContextSaveGState(self->_context);
          v36 = *(v35 + 8);
          v37 = *(v35 + 16);
          v38 = *v35;
          [*v35 baselineOffset];
          v40 = v39;
          [v38 size];
          CGContextTranslateCTM(self->_context, v19 + v36, v37 + v32 - v40 - v41);
          CGContextSetShouldAntialias(self->_context, 1);
          v42 = [v38 rendererForAttachment];
          if (!v42)
          {
            v43 = [MEMORY[0x277D6C290] currentHandler];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer drawFragment:updateRect:drawingState:runState:lineDrawFlags:]"];
            [v43 handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 425, @"Nil TSWPGraphicalAttachmentRenderer for graphical attachment"}];
          }

          [v42 drawAttachment:v38 inContext:self->_context selection:0];
          CGContextRestoreGState(self->_context);
          v35 += 32;
          v34 = v60;
        }

        v48 = *(a3 + 34);
        v47 = *(a3 + 35);
        while (v48 != v47)
        {
          [(TSWPRenderer *)self p_drawAdornmentLine:v48 drawingState:a5 lineFragment:a3 lineFragmentStart:v33 != 0 vertical:v19, v32];
          v48 += 80;
        }

        if ((v7 & 0x400) != 0)
        {
          v55 = v69;
          v54 = v70;
          while (v55 != v54)
          {
            [(TSWPRenderer *)self p_drawAdornmentLine:v55 drawingState:a5 lineFragment:a3 lineFragmentStart:v33 != 0 vertical:v19, v32];
            v55 += 80;
          }
        }

        v50 = *(a3 + 37);
        v49 = *(a3 + 38);
        while (v50 != v49)
        {
          [(TSWPRenderer *)self p_drawAdornmentLine:v50 drawingState:a5 lineFragment:a3 lineFragmentStart:v33 != 0 vertical:v19, v32];
          v50 += 80;
        }

        CGContextSetTextDrawingMode(self->_context, kCGTextFill);
        v51 = *(a3 + 55);
        v52 = *(a3 + 56);
        while (v51 != v52)
        {
          [(TSWPRenderer *)self p_drawAdornments:v51 lineFragment:a3 state:a5];
          v51 += 200;
        }

        v53 = *(a3 + 58);
        if (v53)
        {
          [(TSWPRenderer *)self p_drawInvisiblesBreakLine:v53 lineFragment:a3 state:a5];
        }
      }
    }

    if (v58)
    {
      CGContextRestoreGState(self->_context);
    }

    v77 = &v69;
    std::vector<TSWPAdornmentLine>::__destroy_vector::operator()[abi:nn200100](&v77);
  }
}

void __76__TSWPRenderer_drawFragment_updateRect_drawingState_runState_lineDrawFlags___block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v7 = 1;
    do
    {
      v8 = *v3;
      v9 = *(v3 + 8) + *(*(a1 + 40) + 48);
      v10 = *(v3 + 16) + *(a1 + 48);
      CGContextSaveGState(*(*(a1 + 32) + 8));
      CGContextTranslateCTM(*(*(a1 + 32) + 8), v9, v10);
      CGContextSetTextPosition(*(*(a1 + 32) + 8), 0.0, 0.0);
      v11 = *(a1 + 40);
      if (*(a1 + 64) == 1)
      {
        v12 = *(a1 + 56);
      }

      else
      {
        v12 = *(a1 + 56);
        if ((*(v11 + 24) & 0x420) == 0 && !*(v12 + 56))
        {
          v13 = *(*(a1 + 32) + 8);
          CGAffineTransformMakeScale(&transform, 1.0, -1.0);
          CGContextConcatCTM(v13, &transform);
          CTLineDraw(v8, *(*(a1 + 32) + 8));
          goto LABEL_8;
        }
      }

      LOBYTE(v14) = v7;
      [*(a1 + 32) p_drawTextInRunsForLine:v8 fragment:v11 state:v12 tateChuYoko:a3 baseRange:*(v3 + 24) isFirstLineRef:{*(v3 + 32), v14}];
LABEL_8:
      CGContextRestoreGState(*(*(a1 + 32) + 8));
      v7 = 0;
      v3 += 48;
    }

    while (v3 != v4);
  }
}

- (void)drawAdornmentRects:(const void *)a3 forColumn:(id)a4 foreground:(BOOL)a5
{
  if (*(a3 + 1) != *a3)
  {
    CGContextSaveGState(self->_context);
    v9 = *a3;
    v10 = *(a3 + 1);
    if (*a3 != v10)
    {
      do
      {
        v12 = *(v9 + 24);
        v11 = *(v9 + 32);
        v13 = *(v9 + 40);
        v14 = *(v9 + 48);
        if (a5)
        {
          if (*(v9 + 8) && *v9 == 2)
          {
            CGContextSetShouldAntialias(self->_context, 1);
            if (v14 == 0.0)
            {
              Mutable = CGPathCreateMutable();
              CGPathMoveToPoint(Mutable, 0, v12, v11);
              v20.origin.x = v12;
              v20.origin.y = v11;
              v20.size.width = v13;
              v20.size.height = v14;
              MaxX = CGRectGetMaxX(v20);
              CGPathAddLineToPoint(Mutable, 0, MaxX, v11);
              [*(v9 + 8) paintPath:Mutable inContext:self->_context];
              CGPathRelease(Mutable);
            }

            else
            {
              [*(v9 + 8) paintRect:self->_context inContext:{v12, v11, v13, v14}];
            }
          }

          if (*(v9 + 16) && *v9 == 3)
          {
            objc_opt_class();
            v18 = [TSUDynamicCast() CGColor];
            CGContextSetStrokeColorWithColor(self->_context, v18);
            CGContextSetShouldAntialias(self->_context, 1);
            [(TSWPRenderer *)self p_strokeLineFromPoint:v12 + v13 * 0.5 toPoint:v11 width:v12 + v13 * 0.5, v11 + v14, v13];
          }
        }

        else
        {
          v17 = *(v9 + 16);
          if (v17 && *v9 == 1)
          {
            [v17 paintRect:self->_context inContext:{*(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48)}];
          }
        }

        v9 += 56;
      }

      while (v9 != v10);
    }

    context = self->_context;

    CGContextRestoreGState(context);
  }
}

+ (__CTFont)invisiblesFont
{
  result = +[TSWPRenderer invisiblesFont]::sInvisibleFont;
  if (!+[TSWPRenderer invisiblesFont]::sInvisibleFont)
  {
    if (+[TSWPRenderer invisiblesFont]::sInited)
    {
      return 0;
    }

    else
    {
      +[TSWPRenderer invisiblesFont]::sInited = 1;
      v3 = [TSWPBundle() pathForResource:@"invisible_glyphs" ofType:@"ttf"];
      v4 = TSWPInvisibleFontSize();
      v5 = CGDataProviderCreateWithFilename([v3 UTF8String]);
      v6 = CGFontCreateWithDataProvider(v5);
      CGDataProviderRelease(v5);
      +[TSWPRenderer invisiblesFont]::sInvisibleFont = CTFontCreateWithGraphicsFont(v6, v4, 0, 0);
      UnitsPerEm = CGFontGetUnitsPerEm(v6);
      v8 = v4 * CGFontGetAscent(v6) / UnitsPerEm;
      v9 = &word_280CDBA38;
      v10 = 10;
      v11 = v4 * -CGFontGetDescent(v6) / UnitsPerEm;
      do
      {
        CTFontGetGlyphsForCharacters(+[TSWPRenderer invisiblesFont]::sInvisibleFont, v9 - 16, v9, 1);
        advances = 0;
        if (!CGFontGetGlyphAdvances(v6, v9, 1uLL, &advances))
        {
          v12 = [MEMORY[0x277D6C290] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPRenderer invisiblesFont]"];
          [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 653, @"CGFontGetGlyphAdvances failed"}];
        }

        *(v9 - 3) = v4 * advances / UnitsPerEm;
        *(v9 - 2) = v8;
        *(v9 - 1) = v11;
        v9 += 20;
        --v10;
      }

      while (v10);
      CGFontRelease(v6);
      return +[TSWPRenderer invisiblesFont]::sInvisibleFont;
    }
  }

  return result;
}

- (BOOL)p_shouldClipFragment:(const void *)a3 drawingState:(const void *)a4 lineDrawFlags:(unsigned int)a5 updateRect:(CGRect)a6 outClipRect:(CGRect *)a7
{
  height = a6.size.height;
  rect = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a5;
  v14 = *(a4 + 2);
  v15 = *(a4 + 3);
  v16 = *(a4 + 4);
  v49.size.height = *(a4 + 5);
  v49.origin.x = v14;
  v49.origin.y = v15;
  v49.size.width = v16;
  v47 = v49.size.height;
  Width = CGRectGetWidth(v49);
  v18 = TSWPLineFragment::glyphCount(a3);
  v46 = 10000000.0;
  if ((v18 == 1 || v18 == 2 && (*(a3 + 25) & 8) != 0) && rint(*(a3 + 27)) > rint(Width))
  {
    v50.origin.x = v14;
    v50.origin.y = v15;
    v50.size.width = v16;
    v50.size.height = v47;
    MaxX = CGRectGetMaxX(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = rect;
    v51.size.height = height;
    v20 = CGRectGetMaxX(v51);
    if (v20 >= MaxX)
    {
      v20 = MaxX;
    }

    v46 = v20;
    v52.origin.x = v14;
    v52.origin.y = v15;
    v52.size.width = v16;
    v52.size.height = v47;
    MinX = CGRectGetMinX(v52);
    if (MinX >= x)
    {
      x = MinX;
    }

    y = fmax(y, -10000000.0);
    v22 = 1;
    if ((v11 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = 0;
    if ((v11 & 2) != 0)
    {
LABEL_10:
      v23 = *(a3 + 4) + *(a3 + 5);
      MaxY = v23 + *(a3 + 17);
      goto LABEL_13;
    }
  }

  MaxY = CGRectGetMaxY(*(a3 + 48));
  v23 = *(a3 + 4) + *(a3 + 5);
LABEL_13:
  v25 = *(a3 + 18);
  v26 = v23 - *(a3 + 16);
  if (v25 >= 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 - v25;
  }

  if ((*(a4 + 94) & 1) != 0 || (v29 = v14, v30 = height, v31 = rint(MaxY), v53.origin.x = v29, v53.origin.y = v15, v53.size.width = v16, v53.size.height = v47, v32 = v31 <= rint(CGRectGetMaxY(v53)), height = v30, v32) && (v54.origin.x = v29, v54.origin.y = v15, v54.size.width = v16, v54.size.height = v47, rint(v27) >= rint(CGRectGetMinY(v54))))
  {
    if (!v22)
    {
      v44 = 0;
      goto LABEL_34;
    }

    v28 = 10000000.0;
  }

  else
  {
    v55.origin.x = v29;
    v55.origin.y = v15;
    v55.size.width = v16;
    v55.size.height = v47;
    v28 = CGRectGetMaxY(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = rect;
    v56.size.height = v30;
    v33 = CGRectGetMaxY(v56);
    if (v33 < v28)
    {
      v28 = v33;
    }

    v57.origin.x = v29;
    v57.origin.y = v15;
    v57.size.width = v16;
    v57.size.height = v47;
    MinY = CGRectGetMinY(v57);
    if (MinY >= y)
    {
      y = MinY;
    }

    x = fmax(x, -10000000.0);
  }

  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = rect;
  v58.size.height = height;
  v35 = CGRectGetMaxX(v58);
  v36 = height;
  if (v35 >= v46)
  {
    v37 = v46;
  }

  else
  {
    v37 = v35;
  }

  v38 = x;
  v39 = y;
  v40 = rect;
  v41 = CGRectGetMaxY(*(&v36 - 3));
  if (v41 >= v28)
  {
    v41 = v28;
  }

  v42 = fmax(v41 - y, 0.0);
  v43 = v37 - x;
  height = v42;
  rect = fmax(v43, 0.0);
  v44 = 1;
LABEL_34:
  result = (*(a3 + 6) & 0x1000000) == 0 && v44;
  a7->origin.x = x;
  a7->origin.y = y;
  a7->size.width = rect;
  a7->size.height = height;
  return result;
}

- (void)p_drawWordMarkingsForFragment:(const void *)a3 color:(id)a4 ranges:(const void *)a5 suppressRange:(_NSRange)a6 drawingState:(const void *)a7
{
  length = a6.length;
  range1 = a6.location;
  lengths[2] = *MEMORY[0x277D85DE8];
  location = *a3;
  v14 = *(a3 + 1);
  v15 = v14 + *a3;
  if (v15 > [*a7 characterCount])
  {
    range1_8a = [MEMORY[0x277D6C290] currentHandler];
    v16 = a4;
    v17 = a5;
    v18 = length;
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"];
    v21 = v19;
    length = v18;
    a5 = v17;
    a4 = v16;
    [range1_8a handleFailureInFunction:v21 file:v20 lineNumber:742 description:@"Invalid line fragment range"];
    v52.location = [*a7 range];
    v52.length = v22;
    v49.location = location;
    v49.length = v14;
    v23 = NSIntersectionRange(v49, v52);
    location = v23.location;
    v14 = v23.length;
  }

  CGContextSaveGState(self->_context);
  CGContextSetStrokeColorWithColor(self->_context, [a4 CGColor]);
  *&lengths[0] = gSpellDotWidth;
  lengths[1] = *&gSpellDotStride - *&gSpellDotWidth;
  CGContextSetLineDash(self->_context, 0.0, lengths, 2uLL);
  range1_8 = *(a3 + 6);
  v24 = *(a3 + 16);
  v26 = *(a7 + 27);
  v25 = *(a7 + 28);
  v27 = *(MEMORY[0x277D6C268] + 8);
  v28 = v26 == *MEMORY[0x277D6C268] && v25 == v27;
  v47 = a7;
  if (v28)
  {
    v25 = length;
    v26 = range1;
  }

  else
  {
    v29.location = range1;
    if (range1 != *MEMORY[0x277D6C268] || length != v27)
    {
      v29.length = length;
      v31 = NSUnionRange(v29, *(a7 + 216));
      v26 = v31.location;
      v25 = v31.length;
    }
  }

  v33 = *a5;
  v32 = *(a5 + 1);
  if (*a5 != v32)
  {
    do
    {
      v34 = *v33;
      v35 = v33[1];
      v50.location = *v33;
      v50.length = v35;
      v53.location = v26;
      v53.length = v25;
      if (!NSIntersectionRange(v50, v53).length)
      {
        v51.location = v34;
        v51.length = v35;
        v54.location = location;
        v54.length = v14;
        v36 = NSIntersectionRange(v51, v54);
        if (v36.length)
        {
          v37 = TSWPLineFragment::wpOffsetForCharIndex(a3, v36.location, 1, 1, 0);
          v38 = rint(TSWPLineFragment::wpOffsetForCharIndex(a3, v36.location + v36.length, 1, 1, 0) - v37);
          if (v38 > 0.0)
          {
            v39 = *&gSpellDotStride;
            v40 = fmod(v38, *&gSpellDotStride);
            if (v40 <= 1.0)
            {
              v41 = -v40;
            }

            else
            {
              v41 = v39 - v40;
            }

            v42 = TSWPLineFragment::lowestBaselineInRange(a3, v36, v47[1]);
            if ((range1_8 & 0x2000) != 0)
            {
              v43 = floor(v42 - v24);
            }

            else
            {
              v43 = floor(v42) + *&gSpellDotHeight;
            }

            [(TSWPRenderer *)self p_strokeLineFromPoint:v37 toPoint:v43 width:v37 + fmax(v38 + v41, v39), v43];
          }
        }
      }

      v33 += 2;
    }

    while (v33 != v32);
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawMisspelledWordMarkingsFragment:(const void *)a3 drawingState:(const void *)a4
{
  *&__p.__begin_ = *a3;
  TSWPRangeVector::rangesIntersecting(a4 + 4, &v9);
  if ([*a4 hasTrackedChanges] && *a4)
  {
    [*a4 deletedRangeVectorInRange:{*a3, *(a3 + 1)}];
    begin = __p.__begin_;
    if (__p.__end_ != __p.__begin_)
    {
      TSWPRangeVector::subtract(&v9, &__p);
      begin = __p.__begin_;
    }

    if (begin)
    {
      __p.__end_ = begin;
      operator delete(begin);
    }
  }

  -[TSWPRenderer p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:](self, "p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:", a3, [MEMORY[0x277D6C2A8] redColor], &v9, *(a4 + 18), *(a4 + 19), a4);
  if (v9.__begin_)
  {
    v9.__end_ = v9.__begin_;
    operator delete(v9.__begin_);
  }
}

- (void)p_drawUngrammaticMarkingsFragment:(const void *)a3 drawingState:(const void *)a4
{
  *&v10.__begin_ = *a3;
  TSWPRangeVector::rangesIntersecting(a4 + 5, &v11);
  *&__p.__begin_ = *a3;
  TSWPRangeVector::rangesIntersecting(a4 + 4, &v10);
  TSWPRangeVector::subtract(&v11, &v10);
  if ([*a4 hasTrackedChanges] && *a4)
  {
    [*a4 deletedRangeVectorInRange:{*a3, *(a3 + 1)}];
    begin = __p.__begin_;
    if (__p.__end_ != __p.__begin_)
    {
      TSWPRangeVector::subtract(&v11, &__p);
      begin = __p.__begin_;
    }

    if (begin)
    {
      __p.__end_ = begin;
      operator delete(begin);
    }
  }

  v8 = [MEMORY[0x277D6C2A8] colorWithRed:0.22 green:0.62 blue:0.2 alpha:{1.0, __p.__begin_}];
  [(TSWPRenderer *)self p_drawWordMarkingsForFragment:a3 color:v8 ranges:&v11 suppressRange:*MEMORY[0x277D6C268] drawingState:*(MEMORY[0x277D6C268] + 8), a4];
  if (v10.__begin_)
  {
    v10.__end_ = v10.__begin_;
    operator delete(v10.__begin_);
  }

  if (v11.__begin_)
  {
    v11.__end_ = v11.__begin_;
    operator delete(v11.__begin_);
  }
}

- (void)p_drawDictationMarkingsFragment:(const void *)a3 drawingState:(const void *)a4
{
  v7 = [MEMORY[0x277D6C2A8] blueColor];
  v8 = *(a4 + 20);
  v9 = *MEMORY[0x277D6C268];
  v10 = *(MEMORY[0x277D6C268] + 8);

  [(TSWPRenderer *)self p_drawWordMarkingsForFragment:a3 color:v7 ranges:v8 suppressRange:v9 drawingState:v10, a4];
}

- (void)p_drawAutocorrectionMarkingsFragment:(const void *)a3 drawingState:(const void *)a4
{
  v7 = [MEMORY[0x277D6C2A8] blueColor];
  v8 = *(a4 + 21);
  v9 = *MEMORY[0x277D6C268];
  v10 = *(MEMORY[0x277D6C268] + 8);

  [(TSWPRenderer *)self p_drawWordMarkingsForFragment:a3 color:v7 ranges:v8 suppressRange:v9 drawingState:v10, a4];
}

- (void)p_drawAdornmentLine:(const TSWPAdornmentLine *)a3 drawingState:(const void *)a4 lineFragment:(const void *)a5 lineFragmentStart:(CGPoint)a6 vertical:(BOOL)a7
{
  var3 = a3->var3;
  v12 = a6.x + a3->var0.x;
  y = a6.y + a3->var0.y;
  var4 = a3->var4;
  if (a3->var1 >= *(a5 + 8) - a3->var0.x)
  {
    var1 = *(a5 + 8) - a3->var0.x;
  }

  else
  {
    var1 = a3->var1;
  }

  if (*(a4 + 90) == 1)
  {
    memset(&v52, 0, sizeof(v52));
    CGContextGetCTM(&v52, self->_context);
    v51 = v52;
    if (TSDIsTransformAxisAligned(&v51.a))
    {
      v54.width = var3;
      v54.height = var3;
      v16 = CGContextConvertSizeToDeviceSpace(self->_context, v54);
      if (v16.height >= 0.5)
      {
        CGContextConvertPointToDeviceSpace(self->_context, *(a4 + 1));
        CGContextConvertSizeToDeviceSpace(self->_context, *(a4 + 2));
        v17 = fmax(rint(v16.height), 1.0);
        v55.x = v12;
        v55.y = y;
        v19 = CGContextConvertPointToDeviceSpace(self->_context, v55);
        x = v19.x;
        v20 = rint(v19.y);
        v21 = 0.0;
        if ((v17 & 0x80000001) == 1)
        {
          v21 = 0.5;
        }

        v22 = v21 + v20;
        y = CGContextConvertPointToUserSpace(self[8], *&x).y;
        v56.width = v16.width;
        v56.height = v17;
        var3 = fabs(CGContextConvertSizeToUserSpace(self[8], v56).height);
      }
    }
  }

  context = self->_context;
  var9 = a3->var9;
  if (var9)
  {
    var2 = [var9 cgColor];
  }

  else
  {
    var2 = a3->var2;
  }

  v26 = fmax(var1, 0.0);
  CGContextSetStrokeColorWithColor(context, var2);
  v27 = *MEMORY[0x277CBF398];
  v28 = *(MEMORY[0x277CBF398] + 16);
  v29 = *(a4 + 7);
  if (v29)
  {
    v30.location = [v29 range];
    v31 = *MEMORY[0x277D6C268];
    v32 = *(MEMORY[0x277D6C268] + 8);
  }

  else
  {
    v31 = *MEMORY[0x277D6C268];
    v32 = *(MEMORY[0x277D6C268] + 8);
    v30.location = *MEMORY[0x277D6C268];
    v30.length = v32;
  }

  v33 = v12 + v26;
  v34 = v30.location == v31 && v30.length == v32;
  v35 = !v34;
  if (!v34)
  {
    v36 = *a5;
    v37 = *(a5 + 1);
    v53.location = *a5;
    v53.length = v37;
    v38 = NSIntersectionRange(v30, v53);
    if (!v38.length)
    {
      return;
    }

    if (v38.location >= v36 && v38.location - v36 < v37)
    {
      v39 = TSWPLineFragment::wpOffsetForCharIndex(a5, v38.location, 1, 1, 0);
      if (v12 >= v39)
      {
        v39 = v12;
      }

      v27 = v39 + -1.0;
    }

    v40 = v38.location + v38.length;
    v41 = v38.location + v38.length - v36 < v37 && v40 >= v36;
    if (v41 || v40 == v37 + v36)
    {
      v43 = TSWPLineFragment::wpOffsetForCharIndex(a5, v40, 1, 1, 0);
      if (v43 >= v33)
      {
        v43 = v33;
      }

      v44 = v43 <= v27;
      v42 = v43 > v27;
      v45 = v43 - v27;
      if (!v44)
      {
        v28 = v45;
      }
    }

    else
    {
      v42 = 1;
    }

    if (a3->var5 == 3)
    {
      WavyLineHalfAmplitude = GetWavyLineHalfAmplitude(var3);
      if (!v42)
      {
        return;
      }
    }

    else
    {
      WavyLineHalfAmplitude = var3 * 0.5;
      if (!v42)
      {
        return;
      }
    }

    v47 = WavyLineHalfAmplitude + 1.0;
    if (var4 == 2)
    {
      v48 = (v47 + v47) * 1.5;
    }

    else
    {
      v48 = v47 + v47;
    }

    v49 = y - v47;
    CGContextSaveGState(self->_context);
    v57.origin.x = v27;
    v57.origin.y = v49;
    v57.size.width = v28;
    v57.size.height = v48;
    CGContextClipToRect(self->_context, v57);
  }

  if (var4)
  {
    v50 = y;
    do
    {
      if (a3->var5 == 3)
      {
        [(TSWPRenderer *)self p_strokeWavyLineFromPoint:v12 toPoint:y width:v33, v50, var3];
      }

      else
      {
        [(TSWPRenderer *)self p_strokeLineFromPoint:v12 toPoint:y width:v33, v50, var3];
      }

      y = y + var3 * 2.0;
      v50 = v50 + var3 * 2.0;
      --var4;
    }

    while (var4);
  }

  if (v35)
  {
    CGContextRestoreGState(self->_context);
  }
}

- (void)p_drawAdornmentLineBackgroundRect:(const TSWPAdornmentLine *)a3 lineDrawFlags:(unsigned int)a4 drawingState:(const void *)a5 bounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  if ((a4 & 2) != 0)
  {
    var9 = a3->var9;
    if (var9)
    {
      var2 = [var9 cgColor];
    }

    else
    {
      var2 = a3->var2;
    }

    CopyWithAlpha = CGColorCreateCopyWithAlpha(var2, 0.5);
    CGContextSetFillColorWithColor(self->_context, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    context = self->_context;
    v13 = a3->var9;
    if (v13)
    {
      v14 = [v13 cgColor];
    }

    else
    {
      v14 = a3->var2;
    }

    CGContextSetFillColorWithColor(context, v14);
  }

  var1 = width - a3->var0.x;
  if (a3->var1 < var1)
  {
    var1 = a3->var1;
  }

  if (var1 > 0.0)
  {
    v19 = x + a3->var0.x;
    v20 = self->_context;
    v21 = y;
    v22 = height;

    CGContextFillRect(v20, *(&var1 - 2));
  }
}

- (void)p_strokeLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  CGContextSetLineWidth(self->_context, a5);
  CGContextMoveToPoint(self->_context, v8, v7);
  CGContextAddLineToPoint(self->_context, x, y);
  context = self->_context;

  CGContextStrokePath(context);
}

- (void)p_strokeWavyLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5
{
  x = a4.x;
  y = a3.y;
  v8 = a3.x;
  WavyLineRate = GetWavyLineRate();
  WavyLineHalfAmplitude = GetWavyLineHalfAmplitude(a5);
  WavyLineThickness = GetWavyLineThickness(a5);
  CGContextSaveGState(self->_context);
  v24.origin.y = y - (WavyLineHalfAmplitude + 1.0);
  v24.size.height = WavyLineHalfAmplitude + 1.0 + WavyLineHalfAmplitude + 1.0;
  v24.origin.x = v8;
  v24.size.width = x - v8;
  CGContextClipToRect(self->_context, v24);
  CGContextBeginPath(self->_context);
  CGContextMoveToPoint(self->_context, v8, y);
  CGContextSetLineWidth(self->_context, WavyLineThickness);
  v22 = fmax((x - v8) * WavyLineRate, 1.0);
  v13 = (x - v8) / v22 * 0.5;
  v14 = v13 * 0.5;
  v15 = y - WavyLineHalfAmplitude;
  v16 = y + WavyLineHalfAmplitude;
  v17 = 0.0;
  do
  {
    v18 = v14 + v8;
    if (x < v14 + v8)
    {
      v18 = x;
    }

    v19 = v13 + v8;
    CGContextAddQuadCurveToPoint(self->_context, v18, v15, v19, y);
    v20 = v14 + v19;
    v8 = v13 + v19;
    CGContextAddQuadCurveToPoint(self->_context, v20, v16, v8, y);
    v17 = v17 + 1.0;
  }

  while (v17 < v22);
  CGContextDrawPath(self->_context, kCGPathStroke);
  context = self->_context;

  CGContextRestoreGState(context);
}

- (void)p_drawTextInRunsForLine:(__CTLine *)a3 fragment:(const void *)a4 state:(const void *)a5 tateChuYoko:(BOOL)a6 baseRange:(_NSRange)a7 isFirstLineRef:(BOOL)a8
{
  length = a7.length;
  location = a7.location;
  v38 = a6;
  v51 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = CTLineGetGlyphRuns(a3);
  v40 = [(__CFArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v40)
  {
    v39 = *v47;
    do
    {
      v11 = 0;
      do
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v46 + 1) + 8 * v11);
        GlyphCount = CTRunGetGlyphCount(v12);
        if (GlyphCount - 65537 < 0xFFFFFFFFFFFF0000)
        {
          v32 = [MEMORY[0x277D6C290] currentHandler];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer p_drawTextInRunsForLine:fragment:state:tateChuYoko:baseRange:isFirstLineRef:]"];
          [v32 handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 1187, @"bad glyph count: %ld", GlyphCount}];
          return;
        }

        Attributes = CTRunGetAttributes(v12);
        v15 = [(TSWPLineFragment *)Attributes objectForKeyedSubscript:@"TSWPRubySpacingRunAttribute"];
        if (!v15 || ([v15 BOOLValue] & 1) == 0)
        {
          CGContextSaveGState(self->_context);
          v17 = TSWPLineFragment::baselineShiftFromRunAttributes(Attributes, v16);
          memset(&v45, 0, sizeof(v45));
          CTRunGetTextMatrix(&v45, v12);
          Status = CTRunGetStatus(v12);
          v19 = 0.0;
          v20 = 0.0;
          if ((*(a4 + 25) & 0x20) != 0)
          {
            if (v38)
            {
              CGContextTranslateCTM(self->_context, *(a3 + 1), *(a3 + 2));
              CGContextRotateCTM(self->_context, -1.57079633);
              goto LABEL_15;
            }

            v21 = Status;
            ascent.a = 0.0;
            descent[0] = 0.0;
            leading = 0.0;
            v52.location = 0;
            v52.length = 0;
            CTRunGetTypographicBounds(v12, v52, &ascent.a, descent, &leading);
            if ((v21 & 4) != 0)
            {
              CGContextRotateCTM(self->_context, -1.57079633);
LABEL_15:
              v20 = 0.0;
            }

            else
            {
              v20 = (ascent.a - descent[0]) * -0.5;
            }
          }

          if ((*(a4 + 25) & 0x10) != 0 && a8)
          {
            v19 = *(a4 + 65);
          }

          CGContextSetTextPosition(self->_context, v19 + v45.tx, v20 + v17 + v45.ty);
          context = self->_context;
          CGAffineTransformMakeScale(&ascent, 1.0, -1.0);
          CGContextConcatCTM(context, &ascent);
          if ((*(a5 + 89) & 1) == 0)
          {
            v23 = [(TSWPLineFragment *)Attributes objectForKeyedSubscript:@"TSWPShadow"];
            if (v23)
            {
              [v23 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];
            }
          }

          v43.location = 0;
          v43.length = 0;
          v24 = *(a5 + 7);
          if (v24)
          {
            v26 = [v24 superRange];
            v43.location = v26;
            v43.length = v25;
            v27 = *(a5 + 7);
            if (v27 && (v38 || (location < v26 || location - v26 >= v25) && (location != v26 || v25 != length)))
            {
              if (*(a5 + 24) == *MEMORY[0x277D6C268] && *(a5 + 25) == *(MEMORY[0x277D6C268] + 8))
              {
                if ([v27 visualRangeCount] >= 2)
                {
                  std::vector<CGPoint>::vector[abi:nn200100](&ascent, [*(a5 + 7) visualRanges]);
                  memset(descent, 0, sizeof(descent));
                  std::vector<unsigned long>::__vallocate[abi:nn200100](descent, GlyphCount);
                }

                TSWPRangeVector::TSWPRangeVector(&ascent, &v43);
              }
            }

            else
            {
LABEL_34:
              v28 = *(a5 + 12);
              v29.location = 0;
              if (v28 != *MEMORY[0x277D6C268])
              {
                v29.length = GlyphCount;
                v30 = NSIntersectionRange(v28, v29);
                v29.location = v30.location;
                GlyphCount = v30.length;
              }

              v29.length = GlyphCount;
              CTRunDraw(v12, self->_context, v29);
            }

            CGContextRestoreGState(self->_context);
            goto LABEL_38;
          }

          v43 = *MEMORY[0x277D6C268];
          goto LABEL_34;
        }

LABEL_38:
        ++v11;
      }

      while (v11 != v40);
      v31 = [(__CFArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      v40 = v31;
    }

    while (v31);
  }
}

- (void)p_drawAttachmentGlyphAtPosition:(id)a3 fragment:(const void *)a4
{
  v5 = floor(a3.var1) + 0.5;
  v6 = -*(a4 + 16) - *(a4 + 18);
  v7 = v5 - 4.80000019 * 0.5;
  [(TSWPRenderer *)self p_strokeLineFromPoint:a3.var0 toPoint:v5 width:v6, v5, *(a4 + 17) + *(a4 + 19) + *(a4 + 20), 1.0];
  context = self->_context;
  v9 = v7;
  v10 = v6;
  v11 = 0x4013333340000000;
  v12 = 0x4013333340000000;

  CGContextFillEllipseInRect(context, *&v9);
}

- (void)p_drawInvisiblesAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5
{
  v9 = *(a5 + 91);
  v10 = *(a3 + 3);
  v11 = *(a4 + 6);
  v12 = *(a4 + 4) + *(a4 + 5);
  CGContextSaveGState(self->_context);
  CGContextTranslateCTM(self->_context, v11 + *(*(a4 + 24) + 8), v12 + (*(a4 + 17) - *(a4 + 16) + *&qword_280CDBA28) * 0.5);
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, *(a5 + 9));
  v14 = *(a3 + 13);
  v13 = *(a3 + 14);
  if (v9)
  {
    if (v13 != v14)
    {
LABEL_3:
      context = self->_context;
      CGAffineTransformMakeScale(&v19, 1.0, -1.0);
      CGContextConcatCTM(context, &v19);
      CTFontDrawGlyphs(v10, *(a3 + 7), *(a3 + 13), (v13 - v14) >> 4, self->_context);
    }
  }

  else
  {
    v16 = *(a4 + 1);
    if (v16)
    {
      v17 = *a4;
      v18 = *(a5 + 6);
      if ([v18 isValid])
      {
        if ([v18 containsCharacterAtIndex:v16 + v17 - 1] && v13 != v14 && *a3 == 2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawHiddenDeletionsAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5
{
  v8 = *(a3 + 3);
  v9 = *(a4 + 6);
  v10 = *(a4 + 4) + *(a4 + 5);
  CGContextSaveGState(self->_context);
  CGContextTranslateCTM(self->_context, v9 + *(*(a4 + 24) + 8), v10);
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, *(a3 + 2));
  v11 = *(a3 + 14) - *(a3 + 13);
  if (v11)
  {
    v12 = v11 >> 4;
    context = self->_context;
    CGAffineTransformMakeScale(&v14, 1.0, -1.0);
    CGContextConcatCTM(context, &v14);
    CTFontDrawGlyphs(v8, *(a3 + 7), *(a3 + 13), v12, self->_context);
  }

  CGContextRestoreGState(self->_context);
}

- (BOOL)p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)a3 state:(const void *)a4
{
  v6 = [*(a4 + 30) infos];
  if (![v6 count])
  {
    return 0;
  }

  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    if ([v7 isValid])
    {
      return 0;
    }
  }

  v8 = [*a4 attachmentAtCharIndex:a3];
  if (![v8 isDrawable] || !objc_msgSend(v8, "isAnchored") || (objc_msgSend(v8, "isPartitioned") & 1) != 0)
  {
    return 0;
  }

  objc_opt_class();
  v10 = [TSUDynamicCast() drawable];

  return [v6 containsObject:v10];
}

- (void)p_drawAttachmentAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5
{
  v9 = *(a5 + 91);
  v10 = *(a4 + 6);
  v11 = *(a4 + 4) + *(a4 + 5);
  CGContextSaveGState(self->_context);
  CGContextTranslateCTM(self->_context, v10 + *(*(a4 + 24) + 8), v11);
  CGContextSetFillColorWithColor(self->_context, *(a5 + 9));
  CGContextSetStrokeColorWithColor(self->_context, *(a5 + 9));
  v12 = *(a3 + 16);
  v13 = *(a3 + 17);
  if (v12 != v13)
  {
    v14 = *(a5 + 6);
    do
    {
      if ((v9 & 1) != 0 || ([v14 containsCharacterAtIndex:*v12], -[TSWPRenderer p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:state:](self, "p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:state:", *v12, a5)))
      {
        [(TSWPRenderer *)self p_drawAttachmentGlyphAtPosition:*v12 fragment:v12[1], a4];
      }

      v12 += 2;
    }

    while (v12 != v13);
  }

  context = self->_context;

  CGContextRestoreGState(context);
}

- (void)p_drawAdornmentGlyphs:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5
{
  v9 = *(a3 + 2);
  v8 = *(a3 + 3);
  v10 = *(a4 + 6);
  v11 = *(a4 + 4) + *(a4 + 5);
  v13 = *(a3 + 22);
  v12 = *(a3 + 23);
  if (*(a3 + 192) == 1)
  {
    v15 = *(a3 + 13);
    v14 = *(a3 + 14);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = (v14 - v15) >> 4;
      v18 = *(a3 + 19) + *(a3 + 20);
      v19 = *(a3 + 21);
      v20 = 1;
      v21 = MEMORY[0x277CBF348];
      do
      {
        CGContextSaveGState(self->_context);
        CGContextSetFillColorWithColor(self->_context, v9);
        CGContextTranslateCTM(self->_context, *(*(a3 + 13) + 16 * v16) + v13 + v10 + *(*(a4 + 24) + 8), v11 + v12 + *(*(a3 + 13) + 16 * v16 + 8) - v18);
        CGContextSetTextPosition(self->_context, 0.0, 0.0);
        context = self->_context;
        CGAffineTransformMakeScale(&v28, 1.0, -1.0);
        CGContextConcatCTM(context, &v28);
        v23 = self->_context;
        CGAffineTransformMakeTranslation(&v28, v19, -v18);
        CGContextConcatCTM(v23, &v28);
        v24 = self->_context;
        CGAffineTransformMakeRotation(&v28, 1.57079633);
        CGContextConcatCTM(v24, &v28);
        *&v28.a = *v21;
        CTFontDrawGlyphs(v8, (*(a3 + 7) + 2 * v16), &v28, 1uLL, self->_context);
        CGContextRestoreGState(self->_context);
        v16 = v20;
      }

      while (v17 > v20++);
    }
  }

  else
  {
    CGContextSaveGState(self->_context);
    CGContextSetFillColorWithColor(self->_context, v9);
    CGContextTranslateCTM(self->_context, v13 + v10 + *(*(a4 + 24) + 8), v11 + v12);
    v26 = self->_context;
    CGAffineTransformMakeScale(&v28, 1.0, -1.0);
    CGContextConcatCTM(v26, &v28);
    v27 = (*(a3 + 14) - *(a3 + 13)) >> 4;
    CGContextSetTextPosition(self->_context, 0.0, 0.0);
    CTFontDrawGlyphs(v8, *(a3 + 7), *(a3 + 13), v27, self->_context);
    CGContextRestoreGState(self->_context);
  }
}

- (void)p_drawAdornments:(const void *)a3 lineFragment:(const void *)a4 state:(const void *)a5
{
  v5 = *a3;
  if ((*a3 - 1) >= 2)
  {
    if (v5 == 3)
    {
      if ((*(a5 + 88) & 1) == 0 && *(a5 + 90) == 1 && TSWPLineFragment::glyphCount(a4))
      {

        [(TSWPRenderer *)self p_drawAttachmentAdornments:a3 lineFragment:a4 state:a5];
      }
    }

    else if (v5 == 6)
    {
      if ((*(a5 + 88) & 1) == 0 && *(a5 + 90) == 1)
      {

        [TSWPRenderer p_drawHiddenDeletionsAdornments:"p_drawHiddenDeletionsAdornments:lineFragment:state:" lineFragment:? state:?];
      }
    }

    else
    {

      [TSWPRenderer p_drawAdornmentGlyphs:"p_drawAdornmentGlyphs:lineFragment:state:" lineFragment:? state:?];
    }
  }
}

- (void)p_drawInvisiblesBreakLine:(const TSWPAdornmentLine *)a3 lineFragment:(const void *)a4 state:(const void *)a5
{
  v5 = *(a4 + 1);
  if (v5)
  {
    if (*(a5 + 91))
    {
      v10 = 0;
      if (!a3)
      {
        return;
      }
    }

    else
    {
      v11 = *a4;
      v12 = *(a5 + 6);
      if (![v12 isValid])
      {
        return;
      }

      v10 = [v12 containsCharacterAtIndex:v11 + v5 - 1] ^ 1;
      if (!a3)
      {
        return;
      }
    }

    if ((v10 & 1) == 0)
    {
      v13 = *(a4 + 6);
      v14 = *(a4 + 4) + *(a4 + 5);
      CGContextSaveGState(self->_context);
      CGContextTranslateCTM(self->_context, v13, v14);
      v15 = *(a4 + 58);
      if (v15)
      {
        v16 = *(a5 + 9);
        v19 = *v15;
        v20 = *(v15 + 2);
        color = v16;
        v17 = *(v15 + 5);
        v22 = *(v15 + 4);
        v23 = v17;
        v24 = *(v15 + 12);
        v25 = *(v15 + 7);
        v26 = *(v15 + 64);
        v27 = *(v15 + 9);
        CGColorRetain(v16);
        v18 = v27;
        [(TSWPRenderer *)self p_drawAdornmentLine:&v19 drawingState:a5 lineFragment:a4 lineFragmentStart:0 vertical:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
        CGColorRelease(color);
      }

      CGContextRestoreGState(self->_context);
    }
  }
}

- (void)p_drawListLabelForFragment:(const void *)a3 drawingState:(const void *)a4 lineDrawFlags:(unsigned int)a5
{
  v5 = a5;
  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = *(a3 + 22);
  v12 = [*(a4 + 7) type];
  if (![*(a4 + 7) isValid] || (objc_msgSend(*(a4 + 7), "containsCharacterAtIndex:", v9) ? (v13 = v12 == 2) : (v13 = 0), v13))
  {
    v14 = 0;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    if ([*(a4 + 7) start] != v9)
    {
      return;
    }

    v14 = (v12 - 3) < 0xFFFFFFFE;
    if (!v11)
    {
      return;
    }
  }

  if (!v14 && (*(a4 + 93) != 1 || (v5 & 0x100) != 0 || v10 != 1 || (IsParagraphBreakingCharacter([*a4 characterAtIndex:v9]) & 1) == 0))
  {
    CGContextSaveGState(self->_context);
    if ((*(a4 + 89) & 1) == 0)
    {
      v15 = *(v11 + 32);
      if (v15)
      {
        if ([*(v11 + 32) isEnabled])
        {
          [v15 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];
        }
      }
    }

    v16 = *(v11 + 16);
    if (v16)
    {
      v17 = TSWPLineFragment::labelTextPosition(a3);
      CGContextTranslateCTM(self->_context, v17, v18);
      CGContextSetTextPosition(self->_context, 0.0, 0.0);
      LOBYTE(v27) = 0;
      [(TSWPRenderer *)self p_drawTextInRunsForLine:v16 fragment:a3 state:a4 tateChuYoko:*(v11 + 81) baseRange:v9 isFirstLineRef:0, v27];
    }

    else
    {
      v19 = *(v11 + 24);
      if (v19)
      {
        TSWPLineFragment::labelRect(a3);
        v21 = v20;
        v23 = v22;
        CGContextTranslateCTM(self->_context, v24, v25);
        if ((*(a3 + 25) & 0x20) != 0)
        {
          CGContextTranslateCTM(self->_context, 0.0, v23);
          CGContextRotateCTM(self->_context, -1.57079633);
        }

        [v19 drawImageInContext:self->_context rect:{0.0, 0.0, v21, v23}];
      }
    }

    context = self->_context;

    CGContextRestoreGState(context);
  }
}

@end