@interface TSWPRenderer
+ (__CTFont)invisiblesFont;
- (BOOL)p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)index state:(const void *)state;
- (BOOL)p_shouldClipFragment:(const void *)fragment drawingState:(const void *)state lineDrawFlags:(unsigned int)flags updateRect:(CGRect)rect outClipRect:(CGRect *)clipRect;
- (CGSize)convertSizeToDeviceSpace:(CGSize)space;
- (TSWPRenderer)initWithContext:(CGContext *)context;
- (void)dealloc;
- (void)drawAdornmentRects:(const void *)rects forColumn:(id)column foreground:(BOOL)foreground;
- (void)drawFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const void *)state runState:(id *)runState lineDrawFlags:(unsigned int)flags;
- (void)p_drawAdornmentGlyphs:(const void *)glyphs lineFragment:(const void *)fragment state:(const void *)state;
- (void)p_drawAdornmentLine:(const TSWPAdornmentLine *)line drawingState:(const void *)state lineFragment:(const void *)fragment lineFragmentStart:(CGPoint)start vertical:(BOOL)vertical;
- (void)p_drawAdornmentLineBackgroundRect:(const TSWPAdornmentLine *)rect lineDrawFlags:(unsigned int)flags drawingState:(const void *)state bounds:(CGRect)bounds;
- (void)p_drawAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state;
- (void)p_drawAttachmentAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state;
- (void)p_drawAttachmentGlyphAtPosition:(id)position fragment:(const void *)fragment;
- (void)p_drawAutocorrectionMarkingsFragment:(const void *)fragment drawingState:(const void *)state;
- (void)p_drawDictationMarkingsFragment:(const void *)fragment drawingState:(const void *)state;
- (void)p_drawHiddenDeletionsAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state;
- (void)p_drawInvisiblesAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state;
- (void)p_drawInvisiblesBreakLine:(const TSWPAdornmentLine *)line lineFragment:(const void *)fragment state:(const void *)state;
- (void)p_drawListLabelForFragment:(const void *)fragment drawingState:(const void *)state lineDrawFlags:(unsigned int)flags;
- (void)p_drawMisspelledWordMarkingsFragment:(const void *)fragment drawingState:(const void *)state;
- (void)p_drawTextInRunsForLine:(__CTLine *)line fragment:(const void *)fragment state:(const void *)state tateChuYoko:(BOOL)yoko baseRange:(_NSRange)range isFirstLineRef:(BOOL)ref;
- (void)p_drawUngrammaticMarkingsFragment:(const void *)fragment drawingState:(const void *)state;
- (void)p_drawWordMarkingsForFragment:(const void *)fragment color:(id)color ranges:(const void *)ranges suppressRange:(_NSRange)range drawingState:(const void *)state;
- (void)p_strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width;
- (void)p_strokeWavyLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width;
- (void)willRenderFragmentsWithDrawingState:(const void *)state;
@end

@implementation TSWPRenderer

- (TSWPRenderer)initWithContext:(CGContext *)context
{
  v6.receiver = self;
  v6.super_class = TSWPRenderer;
  v4 = [(TSWPRenderer *)&v6 init];
  if (v4)
  {
    v4->_context = CGContextRetain(context);
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

- (CGSize)convertSizeToDeviceSpace:(CGSize)space
{
  v5 = CGContextConvertSizeToDeviceSpace(self->_context, space);
  height = v5.height;
  width = v5.width;
  result.height = height;
  result.width = width;
  return result;
}

- (void)willRenderFragmentsWithDrawingState:(const void *)state
{
  CGContextSaveGState(self->_context);
  context = self->_context;
  v6 = *(state + 1);
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

- (void)drawFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const void *)state runState:(id *)runState lineDrawFlags:(unsigned int)flags
{
  v7 = *&flags;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v79 = *MEMORY[0x277D85DE8];
  if (!*state)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer drawFragment:updateRect:drawingState:runState:lineDrawFlags:]"];
    [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 185, @"storage is nil"}];
  }

  v59 = *(fragment + 6);
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  v81 = CGRectIntersection(*(fragment + 80), v82);
  if (!CGRectIsEmpty(v81))
  {
    v56 = *(fragment + 1);
    v57 = *fragment;
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v76.origin = *MEMORY[0x277CBF3A0];
    v76.size = v18;
    height = [(TSWPRenderer *)self p_shouldClipFragment:fragment drawingState:state lineDrawFlags:v7 updateRect:&v76 outClipRect:x, y, width, height];
    if (height)
    {
      CGContextSaveGState(self->_context);
      CGContextClipToRect(self->_context, v76);
    }

    v20 = *(fragment + 5);
    v19 = *(fragment + 6);
    v21 = *(fragment + 8);
    v22 = *(fragment + 4);
    if (v7)
    {
      v23 = *(fragment + 7);
      v24 = *(fragment + 9);
      v26 = *(fragment + 40);
      v25 = *(fragment + 41);
      while (v26 != v25)
      {
        [(TSWPRenderer *)self p_drawAdornmentLineBackgroundRect:v26 lineDrawFlags:v7 drawingState:state bounds:v19, v23, v21, v24];
        v26 += 80;
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v27 = *(fragment + 66);
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
              [v31 drawAdornmentForFragment:fragment inContext:self->_context withFlags:v7 state:state bounds:{v19, v23, v21, v24}];
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
      v46 = *(fragment + 43);
      v45 = *(fragment + 44);
      while (v46 != v45)
      {
        [(TSWPRenderer *)self p_drawAdornmentLineBackgroundRect:v46 lineDrawFlags:v7 drawingState:state bounds:v19, v32 - *(fragment + 16), v21, *(fragment + 16) + *(fragment + 17)];
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
      if (NSIntersectionRange(v80, *(state + 216)).length)
      {
        [(TSWPRenderer *)self p_calculateMarkAdornments:&v69 drawingState:state lineFragment:fragment];
      }
    }

    if ((v7 & 2) != 0)
    {
      runState->var2 = v32;
      if ((v7 & 8) != 0)
      {
        [(TSWPRenderer *)self p_drawMisspelledWordMarkingsFragment:fragment drawingState:state];
      }

      if ((v7 & 0x10) != 0)
      {
        [(TSWPRenderer *)self p_drawUngrammaticMarkingsFragment:fragment drawingState:state];
      }

      if ((v7 & 0x200) != 0)
      {
        [(TSWPRenderer *)self p_drawDictationMarkingsFragment:fragment drawingState:state];
      }

      if ((v7 & 0x800) != 0)
      {
        [(TSWPRenderer *)self p_drawAutocorrectionMarkingsFragment:fragment drawingState:state];
      }

      if (*(fragment + 22))
      {
        [(TSWPRenderer *)self p_drawListLabelForFragment:fragment drawingState:state lineDrawFlags:v7];
      }

      v33 = v59 & 0x2000;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v62 = __76__TSWPRenderer_drawFragment_updateRect_drawingState_runState_lineDrawFlags___block_invoke;
      v63 = &unk_279D4A230;
      v66 = v22 + v20;
      selfCopy = self;
      fragmentCopy = fragment;
      v68 = v33 >> 13;
      stateCopy = state;
      if ((((!*(state + 7) || !*(state + 25)) && (__76__TSWPRenderer_drawFragment_updateRect_drawingState_runState_lineDrawFlags___block_invoke(v61, fragment + 24, 0), !*(state + 7)) || *(state + 25)) && (v62(v61, fragment + 28, 0), !*(state + 7)) || !*(state + 25)) && (v62(v61, fragment + 31, 1), !*(state + 7)) || !*(state + 25))
      {
        v35 = *(fragment + 46);
        v34 = *(fragment + 47);
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
          rendererForAttachment = [v38 rendererForAttachment];
          if (!rendererForAttachment)
          {
            currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer drawFragment:updateRect:drawingState:runState:lineDrawFlags:]"];
            [currentHandler2 handleFailureInFunction:v44 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 425, @"Nil TSWPGraphicalAttachmentRenderer for graphical attachment"}];
          }

          [rendererForAttachment drawAttachment:v38 inContext:self->_context selection:0];
          CGContextRestoreGState(self->_context);
          v35 += 32;
          v34 = v60;
        }

        v48 = *(fragment + 34);
        v47 = *(fragment + 35);
        while (v48 != v47)
        {
          [(TSWPRenderer *)self p_drawAdornmentLine:v48 drawingState:state lineFragment:fragment lineFragmentStart:v33 != 0 vertical:v19, v32];
          v48 += 80;
        }

        if ((v7 & 0x400) != 0)
        {
          v55 = v69;
          v54 = v70;
          while (v55 != v54)
          {
            [(TSWPRenderer *)self p_drawAdornmentLine:v55 drawingState:state lineFragment:fragment lineFragmentStart:v33 != 0 vertical:v19, v32];
            v55 += 80;
          }
        }

        v50 = *(fragment + 37);
        v49 = *(fragment + 38);
        while (v50 != v49)
        {
          [(TSWPRenderer *)self p_drawAdornmentLine:v50 drawingState:state lineFragment:fragment lineFragmentStart:v33 != 0 vertical:v19, v32];
          v50 += 80;
        }

        CGContextSetTextDrawingMode(self->_context, kCGTextFill);
        v51 = *(fragment + 55);
        v52 = *(fragment + 56);
        while (v51 != v52)
        {
          [(TSWPRenderer *)self p_drawAdornments:v51 lineFragment:fragment state:state];
          v51 += 200;
        }

        v53 = *(fragment + 58);
        if (v53)
        {
          [(TSWPRenderer *)self p_drawInvisiblesBreakLine:v53 lineFragment:fragment state:state];
        }
      }
    }

    if (height)
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

- (void)drawAdornmentRects:(const void *)rects forColumn:(id)column foreground:(BOOL)foreground
{
  if (*(rects + 1) != *rects)
  {
    CGContextSaveGState(self->_context);
    v9 = *rects;
    v10 = *(rects + 1);
    if (*rects != v10)
    {
      do
      {
        v12 = *(v9 + 24);
        v11 = *(v9 + 32);
        v13 = *(v9 + 40);
        v14 = *(v9 + 48);
        if (foreground)
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
            cGColor = [TSUDynamicCast() CGColor];
            CGContextSetStrokeColorWithColor(self->_context, cGColor);
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
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPRenderer invisiblesFont]"];
          [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 653, @"CGFontGetGlyphAdvances failed"}];
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

- (BOOL)p_shouldClipFragment:(const void *)fragment drawingState:(const void *)state lineDrawFlags:(unsigned int)flags updateRect:(CGRect)rect outClipRect:(CGRect *)clipRect
{
  height = rect.size.height;
  rect = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  flagsCopy = flags;
  v14 = *(state + 2);
  v15 = *(state + 3);
  v16 = *(state + 4);
  v49.size.height = *(state + 5);
  v49.origin.x = v14;
  v49.origin.y = v15;
  v49.size.width = v16;
  v47 = v49.size.height;
  Width = CGRectGetWidth(v49);
  v18 = TSWPLineFragment::glyphCount(fragment);
  v46 = 10000000.0;
  if ((v18 == 1 || v18 == 2 && (*(fragment + 25) & 8) != 0) && rint(*(fragment + 27)) > rint(Width))
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
    if ((flagsCopy & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = 0;
    if ((flagsCopy & 2) != 0)
    {
LABEL_10:
      v23 = *(fragment + 4) + *(fragment + 5);
      MaxY = v23 + *(fragment + 17);
      goto LABEL_13;
    }
  }

  MaxY = CGRectGetMaxY(*(fragment + 48));
  v23 = *(fragment + 4) + *(fragment + 5);
LABEL_13:
  v25 = *(fragment + 18);
  v26 = v23 - *(fragment + 16);
  if (v25 >= 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 - v25;
  }

  if ((*(state + 94) & 1) != 0 || (v29 = v14, v30 = height, v31 = rint(MaxY), v53.origin.x = v29, v53.origin.y = v15, v53.size.width = v16, v53.size.height = v47, v32 = v31 <= rint(CGRectGetMaxY(v53)), height = v30, v32) && (v54.origin.x = v29, v54.origin.y = v15, v54.size.width = v16, v54.size.height = v47, rint(v27) >= rint(CGRectGetMinY(v54))))
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
  rectCopy = rect;
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
  result = (*(fragment + 6) & 0x1000000) == 0 && v44;
  clipRect->origin.x = x;
  clipRect->origin.y = y;
  clipRect->size.width = rect;
  clipRect->size.height = height;
  return result;
}

- (void)p_drawWordMarkingsForFragment:(const void *)fragment color:(id)color ranges:(const void *)ranges suppressRange:(_NSRange)range drawingState:(const void *)state
{
  length = range.length;
  range1 = range.location;
  lengths[2] = *MEMORY[0x277D85DE8];
  location = *fragment;
  v14 = *(fragment + 1);
  v15 = v14 + *fragment;
  if (v15 > [*state characterCount])
  {
    range1_8a = [MEMORY[0x277D6C290] currentHandler];
    colorCopy = color;
    rangesCopy = ranges;
    v18 = length;
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:]"];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"];
    v21 = v19;
    length = v18;
    ranges = rangesCopy;
    color = colorCopy;
    [range1_8a handleFailureInFunction:v21 file:v20 lineNumber:742 description:@"Invalid line fragment range"];
    v52.location = [*state range];
    v52.length = v22;
    v49.location = location;
    v49.length = v14;
    v23 = NSIntersectionRange(v49, v52);
    location = v23.location;
    v14 = v23.length;
  }

  CGContextSaveGState(self->_context);
  CGContextSetStrokeColorWithColor(self->_context, [color CGColor]);
  *&lengths[0] = gSpellDotWidth;
  lengths[1] = *&gSpellDotStride - *&gSpellDotWidth;
  CGContextSetLineDash(self->_context, 0.0, lengths, 2uLL);
  range1_8 = *(fragment + 6);
  v24 = *(fragment + 16);
  v26 = *(state + 27);
  v25 = *(state + 28);
  v27 = *(MEMORY[0x277D6C268] + 8);
  v28 = v26 == *MEMORY[0x277D6C268] && v25 == v27;
  stateCopy = state;
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
      v31 = NSUnionRange(v29, *(state + 216));
      v26 = v31.location;
      v25 = v31.length;
    }
  }

  v33 = *ranges;
  v32 = *(ranges + 1);
  if (*ranges != v32)
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
          v37 = TSWPLineFragment::wpOffsetForCharIndex(fragment, v36.location, 1, 1, 0);
          v38 = rint(TSWPLineFragment::wpOffsetForCharIndex(fragment, v36.location + v36.length, 1, 1, 0) - v37);
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

            v42 = TSWPLineFragment::lowestBaselineInRange(fragment, v36, stateCopy[1]);
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

- (void)p_drawMisspelledWordMarkingsFragment:(const void *)fragment drawingState:(const void *)state
{
  *&__p.__begin_ = *fragment;
  TSWPRangeVector::rangesIntersecting(state + 4, &v9);
  if ([*state hasTrackedChanges] && *state)
  {
    [*state deletedRangeVectorInRange:{*fragment, *(fragment + 1)}];
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

  -[TSWPRenderer p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:](self, "p_drawWordMarkingsForFragment:color:ranges:suppressRange:drawingState:", fragment, [MEMORY[0x277D6C2A8] redColor], &v9, *(state + 18), *(state + 19), state);
  if (v9.__begin_)
  {
    v9.__end_ = v9.__begin_;
    operator delete(v9.__begin_);
  }
}

- (void)p_drawUngrammaticMarkingsFragment:(const void *)fragment drawingState:(const void *)state
{
  *&v10.__begin_ = *fragment;
  TSWPRangeVector::rangesIntersecting(state + 5, &v11);
  *&__p.__begin_ = *fragment;
  TSWPRangeVector::rangesIntersecting(state + 4, &v10);
  TSWPRangeVector::subtract(&v11, &v10);
  if ([*state hasTrackedChanges] && *state)
  {
    [*state deletedRangeVectorInRange:{*fragment, *(fragment + 1)}];
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
  [(TSWPRenderer *)self p_drawWordMarkingsForFragment:fragment color:v8 ranges:&v11 suppressRange:*MEMORY[0x277D6C268] drawingState:*(MEMORY[0x277D6C268] + 8), state];
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

- (void)p_drawDictationMarkingsFragment:(const void *)fragment drawingState:(const void *)state
{
  blueColor = [MEMORY[0x277D6C2A8] blueColor];
  v8 = *(state + 20);
  v9 = *MEMORY[0x277D6C268];
  v10 = *(MEMORY[0x277D6C268] + 8);

  [(TSWPRenderer *)self p_drawWordMarkingsForFragment:fragment color:blueColor ranges:v8 suppressRange:v9 drawingState:v10, state];
}

- (void)p_drawAutocorrectionMarkingsFragment:(const void *)fragment drawingState:(const void *)state
{
  blueColor = [MEMORY[0x277D6C2A8] blueColor];
  v8 = *(state + 21);
  v9 = *MEMORY[0x277D6C268];
  v10 = *(MEMORY[0x277D6C268] + 8);

  [(TSWPRenderer *)self p_drawWordMarkingsForFragment:fragment color:blueColor ranges:v8 suppressRange:v9 drawingState:v10, state];
}

- (void)p_drawAdornmentLine:(const TSWPAdornmentLine *)line drawingState:(const void *)state lineFragment:(const void *)fragment lineFragmentStart:(CGPoint)start vertical:(BOOL)vertical
{
  var3 = line->var3;
  v12 = start.x + line->var0.x;
  y = start.y + line->var0.y;
  var4 = line->var4;
  if (line->var1 >= *(fragment + 8) - line->var0.x)
  {
    var1 = *(fragment + 8) - line->var0.x;
  }

  else
  {
    var1 = line->var1;
  }

  if (*(state + 90) == 1)
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
        CGContextConvertPointToDeviceSpace(self->_context, *(state + 1));
        CGContextConvertSizeToDeviceSpace(self->_context, *(state + 2));
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
  var9 = line->var9;
  if (var9)
  {
    var2 = [var9 cgColor];
  }

  else
  {
    var2 = line->var2;
  }

  v26 = fmax(var1, 0.0);
  CGContextSetStrokeColorWithColor(context, var2);
  v27 = *MEMORY[0x277CBF398];
  v28 = *(MEMORY[0x277CBF398] + 16);
  v29 = *(state + 7);
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
    v36 = *fragment;
    v37 = *(fragment + 1);
    v53.location = *fragment;
    v53.length = v37;
    v38 = NSIntersectionRange(v30, v53);
    if (!v38.length)
    {
      return;
    }

    if (v38.location >= v36 && v38.location - v36 < v37)
    {
      v39 = TSWPLineFragment::wpOffsetForCharIndex(fragment, v38.location, 1, 1, 0);
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
      v43 = TSWPLineFragment::wpOffsetForCharIndex(fragment, v40, 1, 1, 0);
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

    if (line->var5 == 3)
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
      if (line->var5 == 3)
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

- (void)p_drawAdornmentLineBackgroundRect:(const TSWPAdornmentLine *)rect lineDrawFlags:(unsigned int)flags drawingState:(const void *)state bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ((flags & 2) != 0)
  {
    var9 = rect->var9;
    if (var9)
    {
      var2 = [var9 cgColor];
    }

    else
    {
      var2 = rect->var2;
    }

    CopyWithAlpha = CGColorCreateCopyWithAlpha(var2, 0.5);
    CGContextSetFillColorWithColor(self->_context, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    context = self->_context;
    v13 = rect->var9;
    if (v13)
    {
      cgColor = [v13 cgColor];
    }

    else
    {
      cgColor = rect->var2;
    }

    CGContextSetFillColorWithColor(context, cgColor);
  }

  var1 = width - rect->var0.x;
  if (rect->var1 < var1)
  {
    var1 = rect->var1;
  }

  if (var1 > 0.0)
  {
    v19 = x + rect->var0.x;
    v20 = self->_context;
    v21 = y;
    v22 = height;

    CGContextFillRect(v20, *(&var1 - 2));
  }
}

- (void)p_strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width
{
  y = toPoint.y;
  x = toPoint.x;
  v7 = point.y;
  v8 = point.x;
  CGContextSetLineWidth(self->_context, width);
  CGContextMoveToPoint(self->_context, v8, v7);
  CGContextAddLineToPoint(self->_context, x, y);
  context = self->_context;

  CGContextStrokePath(context);
}

- (void)p_strokeWavyLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width
{
  x = toPoint.x;
  y = point.y;
  v8 = point.x;
  WavyLineRate = GetWavyLineRate();
  WavyLineHalfAmplitude = GetWavyLineHalfAmplitude(width);
  WavyLineThickness = GetWavyLineThickness(width);
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

- (void)p_drawTextInRunsForLine:(__CTLine *)line fragment:(const void *)fragment state:(const void *)state tateChuYoko:(BOOL)yoko baseRange:(_NSRange)range isFirstLineRef:(BOOL)ref
{
  length = range.length;
  location = range.location;
  yokoCopy = yoko;
  v51 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = CTLineGetGlyphRuns(line);
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
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPRenderer p_drawTextInRunsForLine:fragment:state:tateChuYoko:baseRange:isFirstLineRef:]"];
          [currentHandler handleFailureInFunction:v33 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPRenderer.mm"), 1187, @"bad glyph count: %ld", GlyphCount}];
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
          if ((*(fragment + 25) & 0x20) != 0)
          {
            if (yokoCopy)
            {
              CGContextTranslateCTM(self->_context, *(line + 1), *(line + 2));
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

          if ((*(fragment + 25) & 0x10) != 0 && ref)
          {
            v19 = *(fragment + 65);
          }

          CGContextSetTextPosition(self->_context, v19 + v45.tx, v20 + v17 + v45.ty);
          context = self->_context;
          CGAffineTransformMakeScale(&ascent, 1.0, -1.0);
          CGContextConcatCTM(context, &ascent);
          if ((*(state + 89) & 1) == 0)
          {
            v23 = [(TSWPLineFragment *)Attributes objectForKeyedSubscript:@"TSWPShadow"];
            if (v23)
            {
              [v23 applyToContext:self->_context viewScale:self->_flipShadows flipped:self->_viewScale];
            }
          }

          v43.location = 0;
          v43.length = 0;
          v24 = *(state + 7);
          if (v24)
          {
            superRange = [v24 superRange];
            v43.location = superRange;
            v43.length = v25;
            v27 = *(state + 7);
            if (v27 && (yokoCopy || (location < superRange || location - superRange >= v25) && (location != superRange || v25 != length)))
            {
              if (*(state + 24) == *MEMORY[0x277D6C268] && *(state + 25) == *(MEMORY[0x277D6C268] + 8))
              {
                if ([v27 visualRangeCount] >= 2)
                {
                  std::vector<CGPoint>::vector[abi:nn200100](&ascent, [*(state + 7) visualRanges]);
                  memset(descent, 0, sizeof(descent));
                  std::vector<unsigned long>::__vallocate[abi:nn200100](descent, GlyphCount);
                }

                TSWPRangeVector::TSWPRangeVector(&ascent, &v43);
              }
            }

            else
            {
LABEL_34:
              v28 = *(state + 12);
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

- (void)p_drawAttachmentGlyphAtPosition:(id)position fragment:(const void *)fragment
{
  v5 = floor(position.var1) + 0.5;
  v6 = -*(fragment + 16) - *(fragment + 18);
  v7 = v5 - 4.80000019 * 0.5;
  [(TSWPRenderer *)self p_strokeLineFromPoint:position.var0 toPoint:v5 width:v6, v5, *(fragment + 17) + *(fragment + 19) + *(fragment + 20), 1.0];
  context = self->_context;
  v9 = v7;
  v10 = v6;
  v11 = 0x4013333340000000;
  v12 = 0x4013333340000000;

  CGContextFillEllipseInRect(context, *&v9);
}

- (void)p_drawInvisiblesAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state
{
  v9 = *(state + 91);
  v10 = *(adornments + 3);
  v11 = *(fragment + 6);
  v12 = *(fragment + 4) + *(fragment + 5);
  CGContextSaveGState(self->_context);
  CGContextTranslateCTM(self->_context, v11 + *(*(fragment + 24) + 8), v12 + (*(fragment + 17) - *(fragment + 16) + *&qword_280CDBA28) * 0.5);
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, *(state + 9));
  v14 = *(adornments + 13);
  v13 = *(adornments + 14);
  if (v9)
  {
    if (v13 != v14)
    {
LABEL_3:
      context = self->_context;
      CGAffineTransformMakeScale(&v19, 1.0, -1.0);
      CGContextConcatCTM(context, &v19);
      CTFontDrawGlyphs(v10, *(adornments + 7), *(adornments + 13), (v13 - v14) >> 4, self->_context);
    }
  }

  else
  {
    v16 = *(fragment + 1);
    if (v16)
    {
      v17 = *fragment;
      v18 = *(state + 6);
      if ([v18 isValid])
      {
        if ([v18 containsCharacterAtIndex:v16 + v17 - 1] && v13 != v14 && *adornments == 2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawHiddenDeletionsAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state
{
  v8 = *(adornments + 3);
  v9 = *(fragment + 6);
  v10 = *(fragment + 4) + *(fragment + 5);
  CGContextSaveGState(self->_context);
  CGContextTranslateCTM(self->_context, v9 + *(*(fragment + 24) + 8), v10);
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, *(adornments + 2));
  v11 = *(adornments + 14) - *(adornments + 13);
  if (v11)
  {
    v12 = v11 >> 4;
    context = self->_context;
    CGAffineTransformMakeScale(&v14, 1.0, -1.0);
    CGContextConcatCTM(context, &v14);
    CTFontDrawGlyphs(v8, *(adornments + 7), *(adornments + 13), v12, self->_context);
  }

  CGContextRestoreGState(self->_context);
}

- (BOOL)p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)index state:(const void *)state
{
  infos = [*(state + 30) infos];
  if (![infos count])
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

  v8 = [*state attachmentAtCharIndex:index];
  if (![v8 isDrawable] || !objc_msgSend(v8, "isAnchored") || (objc_msgSend(v8, "isPartitioned") & 1) != 0)
  {
    return 0;
  }

  objc_opt_class();
  drawable = [TSUDynamicCast() drawable];

  return [infos containsObject:drawable];
}

- (void)p_drawAttachmentAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state
{
  v9 = *(state + 91);
  v10 = *(fragment + 6);
  v11 = *(fragment + 4) + *(fragment + 5);
  CGContextSaveGState(self->_context);
  CGContextTranslateCTM(self->_context, v10 + *(*(fragment + 24) + 8), v11);
  CGContextSetFillColorWithColor(self->_context, *(state + 9));
  CGContextSetStrokeColorWithColor(self->_context, *(state + 9));
  v12 = *(adornments + 16);
  v13 = *(adornments + 17);
  if (v12 != v13)
  {
    v14 = *(state + 6);
    do
    {
      if ((v9 & 1) != 0 || ([v14 containsCharacterAtIndex:*v12], -[TSWPRenderer p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:state:](self, "p_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:state:", *v12, state)))
      {
        [(TSWPRenderer *)self p_drawAttachmentGlyphAtPosition:*v12 fragment:v12[1], fragment];
      }

      v12 += 2;
    }

    while (v12 != v13);
  }

  context = self->_context;

  CGContextRestoreGState(context);
}

- (void)p_drawAdornmentGlyphs:(const void *)glyphs lineFragment:(const void *)fragment state:(const void *)state
{
  v9 = *(glyphs + 2);
  v8 = *(glyphs + 3);
  v10 = *(fragment + 6);
  v11 = *(fragment + 4) + *(fragment + 5);
  v13 = *(glyphs + 22);
  v12 = *(glyphs + 23);
  if (*(glyphs + 192) == 1)
  {
    v15 = *(glyphs + 13);
    v14 = *(glyphs + 14);
    if (v14 != v15)
    {
      v16 = 0;
      v17 = (v14 - v15) >> 4;
      v18 = *(glyphs + 19) + *(glyphs + 20);
      v19 = *(glyphs + 21);
      v20 = 1;
      v21 = MEMORY[0x277CBF348];
      do
      {
        CGContextSaveGState(self->_context);
        CGContextSetFillColorWithColor(self->_context, v9);
        CGContextTranslateCTM(self->_context, *(*(glyphs + 13) + 16 * v16) + v13 + v10 + *(*(fragment + 24) + 8), v11 + v12 + *(*(glyphs + 13) + 16 * v16 + 8) - v18);
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
        CTFontDrawGlyphs(v8, (*(glyphs + 7) + 2 * v16), &v28, 1uLL, self->_context);
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
    CGContextTranslateCTM(self->_context, v13 + v10 + *(*(fragment + 24) + 8), v11 + v12);
    v26 = self->_context;
    CGAffineTransformMakeScale(&v28, 1.0, -1.0);
    CGContextConcatCTM(v26, &v28);
    v27 = (*(glyphs + 14) - *(glyphs + 13)) >> 4;
    CGContextSetTextPosition(self->_context, 0.0, 0.0);
    CTFontDrawGlyphs(v8, *(glyphs + 7), *(glyphs + 13), v27, self->_context);
    CGContextRestoreGState(self->_context);
  }
}

- (void)p_drawAdornments:(const void *)adornments lineFragment:(const void *)fragment state:(const void *)state
{
  v5 = *adornments;
  if ((*adornments - 1) >= 2)
  {
    if (v5 == 3)
    {
      if ((*(state + 88) & 1) == 0 && *(state + 90) == 1 && TSWPLineFragment::glyphCount(fragment))
      {

        [(TSWPRenderer *)self p_drawAttachmentAdornments:adornments lineFragment:fragment state:state];
      }
    }

    else if (v5 == 6)
    {
      if ((*(state + 88) & 1) == 0 && *(state + 90) == 1)
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

- (void)p_drawInvisiblesBreakLine:(const TSWPAdornmentLine *)line lineFragment:(const void *)fragment state:(const void *)state
{
  v5 = *(fragment + 1);
  if (v5)
  {
    if (*(state + 91))
    {
      v10 = 0;
      if (!line)
      {
        return;
      }
    }

    else
    {
      v11 = *fragment;
      v12 = *(state + 6);
      if (![v12 isValid])
      {
        return;
      }

      v10 = [v12 containsCharacterAtIndex:v11 + v5 - 1] ^ 1;
      if (!line)
      {
        return;
      }
    }

    if ((v10 & 1) == 0)
    {
      v13 = *(fragment + 6);
      v14 = *(fragment + 4) + *(fragment + 5);
      CGContextSaveGState(self->_context);
      CGContextTranslateCTM(self->_context, v13, v14);
      v15 = *(fragment + 58);
      if (v15)
      {
        v16 = *(state + 9);
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
        [(TSWPRenderer *)self p_drawAdornmentLine:&v19 drawingState:state lineFragment:fragment lineFragmentStart:0 vertical:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
        CGColorRelease(color);
      }

      CGContextRestoreGState(self->_context);
    }
  }
}

- (void)p_drawListLabelForFragment:(const void *)fragment drawingState:(const void *)state lineDrawFlags:(unsigned int)flags
{
  flagsCopy = flags;
  v9 = *fragment;
  v10 = *(fragment + 1);
  v11 = *(fragment + 22);
  type = [*(state + 7) type];
  if (![*(state + 7) isValid] || (objc_msgSend(*(state + 7), "containsCharacterAtIndex:", v9) ? (v13 = type == 2) : (v13 = 0), v13))
  {
    v14 = 0;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    if ([*(state + 7) start] != v9)
    {
      return;
    }

    v14 = (type - 3) < 0xFFFFFFFE;
    if (!v11)
    {
      return;
    }
  }

  if (!v14 && (*(state + 93) != 1 || (flagsCopy & 0x100) != 0 || v10 != 1 || (IsParagraphBreakingCharacter([*state characterAtIndex:v9]) & 1) == 0))
  {
    CGContextSaveGState(self->_context);
    if ((*(state + 89) & 1) == 0)
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
      v17 = TSWPLineFragment::labelTextPosition(fragment);
      CGContextTranslateCTM(self->_context, v17, v18);
      CGContextSetTextPosition(self->_context, 0.0, 0.0);
      LOBYTE(v27) = 0;
      [(TSWPRenderer *)self p_drawTextInRunsForLine:v16 fragment:fragment state:state tateChuYoko:*(v11 + 81) baseRange:v9 isFirstLineRef:0, v27];
    }

    else
    {
      v19 = *(v11 + 24);
      if (v19)
      {
        TSWPLineFragment::labelRect(fragment);
        v21 = v20;
        v23 = v22;
        CGContextTranslateCTM(self->_context, v24, v25);
        if ((*(fragment + 25) & 0x20) != 0)
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