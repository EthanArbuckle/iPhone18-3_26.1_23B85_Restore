@interface TSWPRendererUtilities
+ (BOOL)canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)a3 drawingState:(const TSWPDrawingState *)a4;
+ (BOOL)drawAdornmentIfNeededForLineFragment:(const void *)a3 withContext:(const CGContext *)a4 drawingState:(const TSWPDrawingState *)a5 viewScale:(double)a6 flipShadows:(BOOL)a7;
+ (__CTFont)flippedInvisiblesFont;
+ (__CTFont)invisiblesFont;
+ (int)determineRenderingModeWithAttributes:(id)a3 withContext:(const CGContext *)a4 foregroundColor:(const CGColor *)a5 canvasIsInteractive:(BOOL)a6;
+ (void)applyShadowToContext:(const CGContext *)a3 attributes:(id)a4 drawingState:(const TSWPDrawingState *)a5 viewScale:(double)a6 flipShadows:(BOOL)a7;
+ (void)clipToInteriorClippingPath:(id)a3 withContext:(const CGContext *)a4;
+ (void)determineAndSetForegroundColor:(CGColor *)a3 withContext:(const CGContext *)a4 renderingMode:(int)a5;
+ (void)drawWordMarkingsForFragmentSetup:(const void *)a3 withContext:(const CGContext *)a4 color:(id)a5 drawingState:(const TSWPDrawingState *)a6 lineRange:(_NSRange *)a7 suppressRange:(_NSRange *)a8 isOverline:(BOOL *)a9 isVertical:(BOOL)a10;
+ (void)notifyPdfTagger:(id)a3 fragment:(const void *)a4;
+ (void)notifyPdfTaggerBeginningWithPdfTagger:(id)a3 baseTextRange:(_NSRange)a4 drawingState:(const TSWPDrawingState *)a5 runCharRange:(_NSRange)a6 hasActualContents:(BOOL *)a7 mainCTLine:(BOOL)a8 ruby:(BOOL)a9 tateChuYoko:(BOOL)a10;
+ (void)notifyPdfTaggerEndWithPdfTagger:(id)a3 baseTextRange:(_NSRange)a4 runCharRange:(_NSRange)a5 hasActualContents:(BOOL)a6 mainCTLine:(BOOL)a7 ruby:(BOOL)a8 tateChuYoko:(BOOL)a9;
+ (void)setCTMAndTextPositionForFragment:(const void *)a3 context:(const CGContext *)a4 state:(const TSWPDrawingState *)a5;
+ (void)strokeLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5 withContext:(const CGContext *)a6;
+ (void)strokeWavyLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5 withContext:(const CGContext *)a6;
+ (void)transformLinePositionForLine:(TSWPLineRef *)a3 attributes:(id)a4 context:(const CGContext *)a5 drawingState:(const TSWPDrawingState *)a6 lineFragment:(const void *)a7 run:(const __CTRun *)a8 tateChuYoko:(BOOL)a9;
@end

@implementation TSWPRendererUtilities

+ (__CTFont)invisiblesFont
{
  if (qword_280A58398 != -1)
  {
    sub_276F4F60C();
  }

  return qword_280A58390;
}

+ (__CTFont)flippedInvisiblesFont
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276DD0EE0;
  block[3] = &unk_27A6F3D70;
  block[4] = a1;
  if (qword_280A583A8 != -1)
  {
    dispatch_once(&qword_280A583A8, block);
  }

  return qword_280A583A0;
}

+ (void)applyShadowToContext:(const CGContext *)a3 attributes:(id)a4 drawingState:(const TSWPDrawingState *)a5 viewScale:(double)a6 flipShadows:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v16 = v11;
  if (a5->var9)
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"TSWPShadow");
    v13 = v14;
    if (v14)
    {
      objc_msgSend_applyToContext_viewScale_flipped_(v14, v15, a3, v7, a6);
    }
  }
}

+ (BOOL)canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)a3 drawingState:(const TSWPDrawingState *)a4
{
  v6 = objc_msgSend_infos(a4->var26, a2, a3);
  if (objc_msgSend_count(v6, v7, v8))
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    v12 = v9;
    if (v9 && (objc_msgSend_isValid(v9, v10, v11) & 1) != 0)
    {
      v13 = 0;
    }

    else
    {
      v14 = objc_msgSend_attachmentAtCharIndex_(a4->var0, v10, a3);
      if (objc_msgSend_isDrawable(v14, v15, v16) && objc_msgSend_isAnchored(v14, v17, v18) && (objc_msgSend_isPartitioned(v14, v19, v20) & 1) == 0)
      {
        objc_opt_class();
        v22 = TSUDynamicCast();
        v25 = objc_msgSend_drawable(v22, v23, v24);

        v13 = objc_msgSend_containsObject_(v6, v26, v25);
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)clipToInteriorClippingPath:(id)a3 withContext:(const CGContext *)a4
{
  v10 = a3;
  if (v10 && (objc_msgSend_isEmpty(v10, v5, v6) & 1) == 0)
  {
    v7 = v10;
    objc_msgSend_CGPath(v7, v8, v9);
    CGContextAddPathSafe();
    CGContextClip(a4);
  }
}

+ (void)determineAndSetForegroundColor:(CGColor *)a3 withContext:(const CGContext *)a4 renderingMode:(int)a5
{
  switch(a5)
  {
    case 3:
      if (*a3)
      {
        CopyWithAlpha = CGColorCreateCopyWithAlpha(*a3, 0.0);
        *a3 = CFAutorelease(CopyWithAlpha);
      }

      else
      {
        v20 = objc_msgSend_clearColor(MEMORY[0x277D81180], a2, a3);
        *a3 = objc_msgSend_CGColor(v20, v21, v22);
      }

      CGContextSetTextDrawingMode(a4, kCGTextInvisible);
      goto LABEL_15;
    case 2:
      if (*a3)
      {
        v14 = CGColorCreateCopyWithAlpha(*a3, 1.0);
        v15 = CFAutorelease(v14);
        *a3 = v15;
        if (!v15)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v17 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, a3);
      *a3 = objc_msgSend_CGColor(v17, v18, v19);

LABEL_15:
      v15 = *a3;
      if (!*a3)
      {
LABEL_16:
        v23 = objc_msgSend_blackColor(MEMORY[0x277D81180], v15, a3);
        *a3 = objc_msgSend_CGColor(v23, v24, v25);

        v15 = *a3;
      }

LABEL_17:

      CGContextSetFillColorWithColor(a4, v15);
      return;
    case 0:
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPRendererUtilities(Internal) determineAndSetForegroundColor:withContext:renderingMode:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities_Internal.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 83, 0, "A rendering mode should always be set before drawing.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
      break;
  }

  if (a3)
  {
    goto LABEL_15;
  }
}

+ (int)determineRenderingModeWithAttributes:(id)a3 withContext:(const CGContext *)a4 foregroundColor:(const CGColor *)a5 canvasIsInteractive:(BOOL)a6
{
  v6 = a6;
  v50 = a3;
  v10 = objc_msgSend_objectForKeyedSubscript_(v50, v8, @"TSWPCharacterFillAttribute");
  v48 = v10;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSWPRendererUtilities(Internal) determineRenderingModeWithAttributes:withContext:foregroundColor:canvasIsInteractive:]", v10);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities_Internal.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 127, 0, "unexpected color fill");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
    }
  }

  v18 = objc_msgSend_objectForKeyedSubscript_(v50, v9, *MEMORY[0x277CC4838], v48);

  v19 = CTFontCopyPostScriptName(v18);
  v20 = CFEqual(v19, @"AppleColorEmoji");
  CFRelease(v19);
  v24 = objc_msgSend_objectForKeyedSubscript_(v50, v21, @"TSWPCharacterStrokeAttribute");
  if (v10)
  {
    v25 = objc_msgSend_fillType(v10, v22, v23) != 0;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    if (a5)
    {
LABEL_6:
      IsClear = TSUColorIsClear();
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  IsClear = 1;
  if (v10)
  {
LABEL_7:
    if (objc_msgSend_fillType(v10, v22, v23))
    {
      v29 = v20;
      v30 = 1;
    }

    else
    {
      v31 = objc_msgSend_fillType(v10, v27, v28);
      v29 = v20;
      v30 = v31 != 5;
    }

    goto LABEL_13;
  }

LABEL_11:
  v29 = v20;
  v30 = 0;
LABEL_13:
  v32 = v6;
  IsPDFContext = TSDCGContextIsPDFContext();
  objc_opt_class();
  v35 = objc_msgSend_objectForKeyedSubscript_(v50, v34, @"TSWPInvisibleTextAttribute");
  v36 = TSUCheckedDynamicCast();
  v39 = objc_msgSend_BOOLValue(v36, v37, v38);

  if ((v39 ^ 1 | v32) & 1 | ((IsClear & 1) == 0))
  {
    v40 = 1;
  }

  else
  {
    v40 = 4;
  }

  if (v30)
  {
    v41 = 4;
  }

  else
  {
    v41 = v40;
  }

  if (v25 || (IsClear & 1) == 0 || v24 != 0)
  {
    v42 = 3;
  }

  else
  {
    v42 = 4;
  }

  if ((v25 | IsClear))
  {
    v43 = v42;
  }

  else
  {
    v43 = 1;
  }

  if (IsPDFContext)
  {
    v41 = v43;
  }

  if (v24)
  {
    v44 = 1;
  }

  else
  {
    v44 = v30;
  }

  if (v44)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  if (v29)
  {
    v46 = v45;
  }

  else
  {
    v46 = v41;
  }

  return v46;
}

+ (void)drawWordMarkingsForFragmentSetup:(const void *)a3 withContext:(const CGContext *)a4 color:(id)a5 drawingState:(const TSWPDrawingState *)a6 lineRange:(_NSRange *)a7 suppressRange:(_NSRange *)a8 isOverline:(BOOL *)a9 isVertical:(BOOL)a10
{
  lengths[2] = *MEMORY[0x277D85DE8];
  v17 = a5;
  v18 = MEMORY[0x277D81490];
  if (*(a3 + 3) < 0)
  {
    v19 = MEMORY[0x277D81490];
  }

  else
  {
    v19 = a3;
  }

  v21 = *v19;
  v20 = v19[1];
  a7->location = *v19;
  a7->length = v20;
  if (v21 + v20 > objc_msgSend_characterCount(a6->var0, v15, v16))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSWPRendererUtilities(Internal) drawWordMarkingsForFragmentSetup:withContext:color:drawingState:lineRange:suppressRange:isOverline:isVertical:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities_Internal.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 193, 0, "Invalid line fragment range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    location = a7->location;
    length = a7->length;
    v45.location = objc_msgSend_range(a6->var0, v33, v34);
    v45.length = v35;
    v44.location = location;
    v44.length = length;
    v36 = NSIntersectionRange(v44, v45);
    v22 = v36.length;
    *a7 = v36;
  }

  v37 = objc_msgSend_CGColor(v17, v22, v23);
  CGContextSetStrokeColorWithColor(a4, v37);
  lengths[0] = 2.5;
  lengths[1] = 4.0 - 2.5;
  CGContextSetLineDash(a4, 0.0, lengths, 2uLL);
  *a9 = 0;
  if (a10)
  {
    if (a6->var0)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(a6->var0, v38, a6->var23.location, 0);
    }

    else
    {
      memset(&v42, 0, sizeof(v42));
    }

    v39 = TSWPParagraphEnumerator::paragraphLanguage(&v42, v38);
    *a9 = sub_276D3A3AC(v39, 1, 5) == 1;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v42);
  }

  var23 = a6->var23;
  p_var23 = &a6->var23;
  if (var23 != *v18)
  {
    if (*a8 == *v18)
    {
      *a8 = *p_var23;
    }

    else
    {
      *a8 = NSUnionRange(*a8, var23);
    }
  }
}

+ (void)setCTMAndTextPositionForFragment:(const void *)a3 context:(const CGContext *)a4 state:(const TSWPDrawingState *)a5
{
  if (a5->var10 && (*(a3 + 13) & 0x880) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    CGContextGetCTM(&v11, a4);
    v10 = v11;
    if (TSUIsTransformAxisAligned())
    {
      memset(&v10, 0, sizeof(v10));
      v6 = vrndxq_f64(*&v11.tx);
      transform = v11;
      CGAffineTransformInvert(&v10, &transform);
      *&t1.a = *&v11.a;
      *&t1.c = *&v11.c;
      *&t1.tx = v6;
      t2 = v10;
      CGAffineTransformConcat(&transform, &t1, &t2);
      CGContextConcatCTM(a4, &transform);
    }
  }

  CGContextSetTextPosition(a4, 0.0, 0.0);
}

+ (BOOL)drawAdornmentIfNeededForLineFragment:(const void *)a3 withContext:(const CGContext *)a4 drawingState:(const TSWPDrawingState *)a5 viewScale:(double)a6 flipShadows:(BOOL)a7
{
  if ((*(a3 + 28) & 1) == 0)
  {
    return 0;
  }

  v8 = a7;
  v12 = sub_276D64990(a3);
  if (v12)
  {
    CGContextSaveGState(a4);
    v15 = objc_msgSend_adornmentRenderer(v12, v13, v14);
    objc_msgSend_drawAdornment_inContext_viewScale_flipShadows_blackAndWhite_(v15, v16, v12, a4, v8, a5->var9, a6);
    v7 = objc_msgSend_suppressLineFragmentTextRendering(v12, v17, v18);
    CGContextRestoreGState(a4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)transformLinePositionForLine:(TSWPLineRef *)a3 attributes:(id)a4 context:(const CGContext *)a5 drawingState:(const TSWPDrawingState *)a6 lineFragment:(const void *)a7 run:(const __CTRun *)a8 tateChuYoko:(BOOL)a9
{
  v13 = a4;
  v14 = sub_276D65668(v13);
  memset(&v27, 0, sizeof(v27));
  CTRunGetTextMatrix(&v27, a8);
  Status = CTRunGetStatus(a8);
  v16 = 0.0;
  if ((*(a7 + 25) & 0x20) == 0)
  {
    goto LABEL_2;
  }

  if (a9)
  {
    CGContextRotateCTM(a5, -1.57079633);
    v17 = 0.0;
    goto LABEL_11;
  }

  v18 = Status;
  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  v28.location = 0;
  v28.length = 0;
  TypographicBounds = CTRunGetTypographicBounds(a8, v28, &ascent, &descent, &leading);
  if ((v18 & 4) == 0)
  {
    v16 = (ascent - descent) * -0.5;
LABEL_2:
    v17 = v14;
    v14 = 0.0;
    goto LABEL_11;
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(v13, v19, *MEMORY[0x277CC49D8], TypographicBounds);

  if (v21)
  {
    CGAffineTransformMakeRotation(&v23, 1.57079633);
    CGContextSetTextMatrix(a5, &v23);
  }

  else
  {
    CGContextRotateCTM(a5, -1.57079633);
  }

  v17 = 0.0;
LABEL_11:
  v27.tx = v14 + v27.tx;
  v27.ty = v17 + v27.ty;
  CGContextSetTextPosition(a5, v27.tx, v16 + v27.ty);
  CGAffineTransformMakeScale(&v23, 1.0, -1.0);
  CGContextConcatCTM(a5, &v23);
  v22 = *&a3->var4.c;
  *&v23.a = *&a3->var4.a;
  *&v23.c = v22;
  *&v23.tx = *&a3->var4.tx;
  CGContextConcatCTM(a5, &v23);
}

+ (void)notifyPdfTagger:(id)a3 fragment:(const void *)a4
{
  v5 = a3;
  v7 = MEMORY[0x277D81490];
  if (*(a4 + 3) < 0)
  {
    v8 = MEMORY[0x277D81490];
  }

  else
  {
    v8 = a4;
  }

  v15 = v5;
  objc_msgSend_beginLineFragmentWithRange_(v5, v6, *v8, v8[1]);
  if (*(a4 + 3) < 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = a4;
  }

  objc_msgSend_beginLineFragmentBodyWithRange_(v15, v9, *v10, v10[1]);
  if (*(a4 + 3) < 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = a4;
  }

  objc_msgSend_endLineFragmentBodyWithRange_(v15, v11, *v12, v12[1]);
  if (*(a4 + 3) < 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = a4;
  }

  objc_msgSend_endLineFragmentWithRange_(v15, v13, *v14, v14[1]);
}

+ (void)notifyPdfTaggerBeginningWithPdfTagger:(id)a3 baseTextRange:(_NSRange)a4 drawingState:(const TSWPDrawingState *)a5 runCharRange:(_NSRange)a6 hasActualContents:(BOOL *)a7 mainCTLine:(BOOL)a8 ruby:(BOOL)a9 tateChuYoko:(BOOL)a10
{
  length = a6.length;
  location = a6.location;
  v13 = a4.length;
  v14 = a4.location;
  v15 = a3;
  v17 = v15;
  if (v15)
  {
    if (a8)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      var0 = a5->var0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_276E1F5A4;
      v20[3] = &unk_27A6F50A0;
      v20[4] = &v21;
      objc_msgSend_enumerateTateChuYokoInRange_usingBlock_(var0, v16, location, length, v20);
      *a7 = (v22[3] & 1) == 0;
      objc_msgSend_beginPrimaryTextRunWithRange_hasActualContents_(v17, v19, location, length);
      _Block_object_dispose(&v21, 8);
    }

    else if (a9)
    {
      objc_msgSend_beginRubyRunWithRange_baseTextRange_(v15, v16, location, length, v14, v13);
    }

    else if (a10)
    {
      objc_msgSend_beginTateChuYokoRunWithRange_baseTextRange_(v15, v16, location, length, v14, v13);
    }

    else
    {
      objc_msgSend_beginAncillaryTextRunWithRange_baseTextRange_(v15, v16, location, length, v14, v13);
    }
  }
}

+ (void)notifyPdfTaggerEndWithPdfTagger:(id)a3 baseTextRange:(_NSRange)a4 runCharRange:(_NSRange)a5 hasActualContents:(BOOL)a6 mainCTLine:(BOOL)a7 ruby:(BOOL)a8 tateChuYoko:(BOOL)a9
{
  v9 = a6;
  length = a5.length;
  location = a5.location;
  v12 = a4.length;
  v13 = a4.location;
  v15 = a3;
  if (v15)
  {
    if (a7)
    {
      objc_msgSend_endPrimaryTextRunWithRange_hasActualContents_(v15, v14, location, length, v9);
    }

    else if (a8)
    {
      objc_msgSend_endRubyRunWithRange_baseTextRange_(v15, v14, location, length, v13, v12);
    }

    else if (a9)
    {
      objc_msgSend_endTateChuYokoRunWithRange_baseTextRange_(v15, v14, location, length, v13, v12);
    }

    else
    {
      objc_msgSend_endAncillaryTextRunWithRange_baseTextRange_(v15, v14, location, length, v13, v12);
    }
  }
}

+ (void)strokeLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5 withContext:(const CGContext *)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  CGContextSetLineWidth(a6, a5);
  CGContextMoveToPoint(a6, v10, v9);
  CGContextAddLineToPoint(a6, x, y);

  CGContextStrokePath(a6);
}

+ (void)strokeWavyLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 width:(double)a5 withContext:(const CGContext *)a6
{
  x = a4.x;
  y = a3.y;
  v10 = a3.x;
  v11 = sub_276D39454();
  v12 = sub_276D3943C(a5);
  v13 = sub_276D39448(a5);
  CGContextSaveGState(a6);
  CGContextClipToRectSafe();
  CGContextBeginPath(a6);
  CGContextMoveToPoint(a6, v10, y);
  CGContextSetLineWidth(a6, v13);
  v22 = fmax((x - v10) * v11, 1.0);
  v14 = (x - v10) / v22 * 0.5;
  v15 = v14 * 0.5;
  v16 = y - v12;
  v17 = y + v12;
  v18 = 0.0;
  do
  {
    v19 = v15 + v10;
    if (x < v15 + v10)
    {
      v19 = x;
    }

    v20 = v14 + v10;
    CGContextAddQuadCurveToPoint(a6, v19, v16, v20, y);
    v21 = v15 + v20;
    v10 = v14 + v20;
    CGContextAddQuadCurveToPoint(a6, v21, v17, v10, y);
    v18 = v18 + 1.0;
  }

  while (v18 < v22);
  CGContextDrawPath(a6, kCGPathStroke);

  CGContextRestoreGState(a6);
}

@end