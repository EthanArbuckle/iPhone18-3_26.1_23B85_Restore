@interface TSWPRendererUtilities
+ (BOOL)canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)index drawingState:(const TSWPDrawingState *)state;
+ (BOOL)drawAdornmentIfNeededForLineFragment:(const void *)fragment withContext:(const CGContext *)context drawingState:(const TSWPDrawingState *)state viewScale:(double)scale flipShadows:(BOOL)shadows;
+ (__CTFont)flippedInvisiblesFont;
+ (__CTFont)invisiblesFont;
+ (int)determineRenderingModeWithAttributes:(id)attributes withContext:(const CGContext *)context foregroundColor:(const CGColor *)color canvasIsInteractive:(BOOL)interactive;
+ (void)applyShadowToContext:(const CGContext *)context attributes:(id)attributes drawingState:(const TSWPDrawingState *)state viewScale:(double)scale flipShadows:(BOOL)shadows;
+ (void)clipToInteriorClippingPath:(id)path withContext:(const CGContext *)context;
+ (void)determineAndSetForegroundColor:(CGColor *)color withContext:(const CGContext *)context renderingMode:(int)mode;
+ (void)drawWordMarkingsForFragmentSetup:(const void *)setup withContext:(const CGContext *)context color:(id)color drawingState:(const TSWPDrawingState *)state lineRange:(_NSRange *)range suppressRange:(_NSRange *)suppressRange isOverline:(BOOL *)overline isVertical:(BOOL)self0;
+ (void)notifyPdfTagger:(id)tagger fragment:(const void *)fragment;
+ (void)notifyPdfTaggerBeginningWithPdfTagger:(id)tagger baseTextRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state runCharRange:(_NSRange)charRange hasActualContents:(BOOL *)contents mainCTLine:(BOOL)line ruby:(BOOL)ruby tateChuYoko:(BOOL)self0;
+ (void)notifyPdfTaggerEndWithPdfTagger:(id)tagger baseTextRange:(_NSRange)range runCharRange:(_NSRange)charRange hasActualContents:(BOOL)contents mainCTLine:(BOOL)line ruby:(BOOL)ruby tateChuYoko:(BOOL)yoko;
+ (void)setCTMAndTextPositionForFragment:(const void *)fragment context:(const CGContext *)context state:(const TSWPDrawingState *)state;
+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width withContext:(const CGContext *)context;
+ (void)strokeWavyLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width withContext:(const CGContext *)context;
+ (void)transformLinePositionForLine:(TSWPLineRef *)line attributes:(id)attributes context:(const CGContext *)context drawingState:(const TSWPDrawingState *)state lineFragment:(const void *)fragment run:(const __CTRun *)run tateChuYoko:(BOOL)yoko;
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
  block[4] = self;
  if (qword_280A583A8 != -1)
  {
    dispatch_once(&qword_280A583A8, block);
  }

  return qword_280A583A0;
}

+ (void)applyShadowToContext:(const CGContext *)context attributes:(id)attributes drawingState:(const TSWPDrawingState *)state viewScale:(double)scale flipShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  attributesCopy = attributes;
  v16 = attributesCopy;
  if (state->var9)
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v12, @"TSWPShadow");
    v13 = v14;
    if (v14)
    {
      objc_msgSend_applyToContext_viewScale_flipped_(v14, v15, context, shadowsCopy, scale);
    }
  }
}

+ (BOOL)canvasSelectionIncludesDrawableOfAttachmentAtCharIndex:(unint64_t)index drawingState:(const TSWPDrawingState *)state
{
  v6 = objc_msgSend_infos(state->var26, a2, index);
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
      v14 = objc_msgSend_attachmentAtCharIndex_(state->var0, v10, index);
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

+ (void)clipToInteriorClippingPath:(id)path withContext:(const CGContext *)context
{
  pathCopy = path;
  if (pathCopy && (objc_msgSend_isEmpty(pathCopy, v5, v6) & 1) == 0)
  {
    v7 = pathCopy;
    objc_msgSend_CGPath(v7, v8, v9);
    CGContextAddPathSafe();
    CGContextClip(context);
  }
}

+ (void)determineAndSetForegroundColor:(CGColor *)color withContext:(const CGContext *)context renderingMode:(int)mode
{
  switch(mode)
  {
    case 3:
      if (*color)
      {
        CopyWithAlpha = CGColorCreateCopyWithAlpha(*color, 0.0);
        *color = CFAutorelease(CopyWithAlpha);
      }

      else
      {
        v20 = objc_msgSend_clearColor(MEMORY[0x277D81180], a2, color);
        *color = objc_msgSend_CGColor(v20, v21, v22);
      }

      CGContextSetTextDrawingMode(context, kCGTextInvisible);
      goto LABEL_15;
    case 2:
      if (*color)
      {
        v14 = CGColorCreateCopyWithAlpha(*color, 1.0);
        v15 = CFAutorelease(v14);
        *color = v15;
        if (!v15)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v17 = objc_msgSend_blackColor(MEMORY[0x277D81180], a2, color);
      *color = objc_msgSend_CGColor(v17, v18, v19);

LABEL_15:
      v15 = *color;
      if (!*color)
      {
LABEL_16:
        v23 = objc_msgSend_blackColor(MEMORY[0x277D81180], v15, color);
        *color = objc_msgSend_CGColor(v23, v24, v25);

        v15 = *color;
      }

LABEL_17:

      CGContextSetFillColorWithColor(context, v15);
      return;
    case 0:
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSWPRendererUtilities(Internal) determineAndSetForegroundColor:withContext:renderingMode:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities_Internal.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 83, 0, "A rendering mode should always be set before drawing.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
      break;
  }

  if (color)
  {
    goto LABEL_15;
  }
}

+ (int)determineRenderingModeWithAttributes:(id)attributes withContext:(const CGContext *)context foregroundColor:(const CGColor *)color canvasIsInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  attributesCopy = attributes;
  v10 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v8, @"TSWPCharacterFillAttribute");
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

  v18 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v9, *MEMORY[0x277CC4838], v48);

  v19 = CTFontCopyPostScriptName(v18);
  v20 = CFEqual(v19, @"AppleColorEmoji");
  CFRelease(v19);
  v24 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v21, @"TSWPCharacterStrokeAttribute");
  if (v10)
  {
    v25 = objc_msgSend_fillType(v10, v22, v23) != 0;
    if (color)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
    if (color)
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
  v32 = interactiveCopy;
  IsPDFContext = TSDCGContextIsPDFContext();
  objc_opt_class();
  v35 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v34, @"TSWPInvisibleTextAttribute");
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

+ (void)drawWordMarkingsForFragmentSetup:(const void *)setup withContext:(const CGContext *)context color:(id)color drawingState:(const TSWPDrawingState *)state lineRange:(_NSRange *)range suppressRange:(_NSRange *)suppressRange isOverline:(BOOL *)overline isVertical:(BOOL)self0
{
  lengths[2] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v18 = MEMORY[0x277D81490];
  if (*(setup + 3) < 0)
  {
    setupCopy = MEMORY[0x277D81490];
  }

  else
  {
    setupCopy = setup;
  }

  v21 = *setupCopy;
  v20 = setupCopy[1];
  range->location = *setupCopy;
  range->length = v20;
  if (v21 + v20 > objc_msgSend_characterCount(state->var0, v15, v16))
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "+[TSWPRendererUtilities(Internal) drawWordMarkingsForFragmentSetup:withContext:color:drawingState:lineRange:suppressRange:isOverline:isVertical:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRendererUtilities_Internal.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 193, 0, "Invalid line fragment range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    location = range->location;
    length = range->length;
    v45.location = objc_msgSend_range(state->var0, v33, v34);
    v45.length = v35;
    v44.location = location;
    v44.length = length;
    v36 = NSIntersectionRange(v44, v45);
    v22 = v36.length;
    *range = v36;
  }

  v37 = objc_msgSend_CGColor(colorCopy, v22, v23);
  CGContextSetStrokeColorWithColor(context, v37);
  lengths[0] = 2.5;
  lengths[1] = 4.0 - 2.5;
  CGContextSetLineDash(context, 0.0, lengths, 2uLL);
  *overline = 0;
  if (vertical)
  {
    if (state->var0)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(state->var0, v38, state->var23.location, 0);
    }

    else
    {
      memset(&v42, 0, sizeof(v42));
    }

    v39 = TSWPParagraphEnumerator::paragraphLanguage(&v42, v38);
    *overline = sub_276D3A3AC(v39, 1, 5) == 1;
    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(&v42);
  }

  var23 = state->var23;
  p_var23 = &state->var23;
  if (var23 != *v18)
  {
    if (*suppressRange == *v18)
    {
      *suppressRange = *p_var23;
    }

    else
    {
      *suppressRange = NSUnionRange(*suppressRange, var23);
    }
  }
}

+ (void)setCTMAndTextPositionForFragment:(const void *)fragment context:(const CGContext *)context state:(const TSWPDrawingState *)state
{
  if (state->var10 && (*(fragment + 13) & 0x880) == 0)
  {
    memset(&v11, 0, sizeof(v11));
    CGContextGetCTM(&v11, context);
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
      CGContextConcatCTM(context, &transform);
    }
  }

  CGContextSetTextPosition(context, 0.0, 0.0);
}

+ (BOOL)drawAdornmentIfNeededForLineFragment:(const void *)fragment withContext:(const CGContext *)context drawingState:(const TSWPDrawingState *)state viewScale:(double)scale flipShadows:(BOOL)shadows
{
  if ((*(fragment + 28) & 1) == 0)
  {
    return 0;
  }

  shadowsCopy = shadows;
  v12 = sub_276D64990(fragment);
  if (v12)
  {
    CGContextSaveGState(context);
    v15 = objc_msgSend_adornmentRenderer(v12, v13, v14);
    objc_msgSend_drawAdornment_inContext_viewScale_flipShadows_blackAndWhite_(v15, v16, v12, context, shadowsCopy, state->var9, scale);
    v7 = objc_msgSend_suppressLineFragmentTextRendering(v12, v17, v18);
    CGContextRestoreGState(context);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)transformLinePositionForLine:(TSWPLineRef *)line attributes:(id)attributes context:(const CGContext *)context drawingState:(const TSWPDrawingState *)state lineFragment:(const void *)fragment run:(const __CTRun *)run tateChuYoko:(BOOL)yoko
{
  attributesCopy = attributes;
  v14 = sub_276D65668(attributesCopy);
  memset(&v27, 0, sizeof(v27));
  CTRunGetTextMatrix(&v27, run);
  Status = CTRunGetStatus(run);
  v16 = 0.0;
  if ((*(fragment + 25) & 0x20) == 0)
  {
    goto LABEL_2;
  }

  if (yoko)
  {
    CGContextRotateCTM(context, -1.57079633);
    v17 = 0.0;
    goto LABEL_11;
  }

  v18 = Status;
  descent = 0.0;
  ascent = 0.0;
  leading = 0.0;
  v28.location = 0;
  v28.length = 0;
  TypographicBounds = CTRunGetTypographicBounds(run, v28, &ascent, &descent, &leading);
  if ((v18 & 4) == 0)
  {
    v16 = (ascent - descent) * -0.5;
LABEL_2:
    v17 = v14;
    v14 = 0.0;
    goto LABEL_11;
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v19, *MEMORY[0x277CC49D8], TypographicBounds);

  if (v21)
  {
    CGAffineTransformMakeRotation(&v23, 1.57079633);
    CGContextSetTextMatrix(context, &v23);
  }

  else
  {
    CGContextRotateCTM(context, -1.57079633);
  }

  v17 = 0.0;
LABEL_11:
  v27.tx = v14 + v27.tx;
  v27.ty = v17 + v27.ty;
  CGContextSetTextPosition(context, v27.tx, v16 + v27.ty);
  CGAffineTransformMakeScale(&v23, 1.0, -1.0);
  CGContextConcatCTM(context, &v23);
  v22 = *&line->var4.c;
  *&v23.a = *&line->var4.a;
  *&v23.c = v22;
  *&v23.tx = *&line->var4.tx;
  CGContextConcatCTM(context, &v23);
}

+ (void)notifyPdfTagger:(id)tagger fragment:(const void *)fragment
{
  taggerCopy = tagger;
  v7 = MEMORY[0x277D81490];
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = MEMORY[0x277D81490];
  }

  else
  {
    fragmentCopy = fragment;
  }

  v15 = taggerCopy;
  objc_msgSend_beginLineFragmentWithRange_(taggerCopy, v6, *fragmentCopy, fragmentCopy[1]);
  if (*(fragment + 3) < 0)
  {
    fragmentCopy2 = v7;
  }

  else
  {
    fragmentCopy2 = fragment;
  }

  objc_msgSend_beginLineFragmentBodyWithRange_(v15, v9, *fragmentCopy2, fragmentCopy2[1]);
  if (*(fragment + 3) < 0)
  {
    fragmentCopy3 = v7;
  }

  else
  {
    fragmentCopy3 = fragment;
  }

  objc_msgSend_endLineFragmentBodyWithRange_(v15, v11, *fragmentCopy3, fragmentCopy3[1]);
  if (*(fragment + 3) < 0)
  {
    fragmentCopy4 = v7;
  }

  else
  {
    fragmentCopy4 = fragment;
  }

  objc_msgSend_endLineFragmentWithRange_(v15, v13, *fragmentCopy4, fragmentCopy4[1]);
}

+ (void)notifyPdfTaggerBeginningWithPdfTagger:(id)tagger baseTextRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state runCharRange:(_NSRange)charRange hasActualContents:(BOOL *)contents mainCTLine:(BOOL)line ruby:(BOOL)ruby tateChuYoko:(BOOL)self0
{
  length = charRange.length;
  location = charRange.location;
  v13 = range.length;
  v14 = range.location;
  taggerCopy = tagger;
  v17 = taggerCopy;
  if (taggerCopy)
  {
    if (line)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      var0 = state->var0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_276E1F5A4;
      v20[3] = &unk_27A6F50A0;
      v20[4] = &v21;
      objc_msgSend_enumerateTateChuYokoInRange_usingBlock_(var0, v16, location, length, v20);
      *contents = (v22[3] & 1) == 0;
      objc_msgSend_beginPrimaryTextRunWithRange_hasActualContents_(v17, v19, location, length);
      _Block_object_dispose(&v21, 8);
    }

    else if (ruby)
    {
      objc_msgSend_beginRubyRunWithRange_baseTextRange_(taggerCopy, v16, location, length, v14, v13);
    }

    else if (yoko)
    {
      objc_msgSend_beginTateChuYokoRunWithRange_baseTextRange_(taggerCopy, v16, location, length, v14, v13);
    }

    else
    {
      objc_msgSend_beginAncillaryTextRunWithRange_baseTextRange_(taggerCopy, v16, location, length, v14, v13);
    }
  }
}

+ (void)notifyPdfTaggerEndWithPdfTagger:(id)tagger baseTextRange:(_NSRange)range runCharRange:(_NSRange)charRange hasActualContents:(BOOL)contents mainCTLine:(BOOL)line ruby:(BOOL)ruby tateChuYoko:(BOOL)yoko
{
  contentsCopy = contents;
  length = charRange.length;
  location = charRange.location;
  v12 = range.length;
  v13 = range.location;
  taggerCopy = tagger;
  if (taggerCopy)
  {
    if (line)
    {
      objc_msgSend_endPrimaryTextRunWithRange_hasActualContents_(taggerCopy, v14, location, length, contentsCopy);
    }

    else if (ruby)
    {
      objc_msgSend_endRubyRunWithRange_baseTextRange_(taggerCopy, v14, location, length, v13, v12);
    }

    else if (yoko)
    {
      objc_msgSend_endTateChuYokoRunWithRange_baseTextRange_(taggerCopy, v14, location, length, v13, v12);
    }

    else
    {
      objc_msgSend_endAncillaryTextRunWithRange_baseTextRange_(taggerCopy, v14, location, length, v13, v12);
    }
  }
}

+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width withContext:(const CGContext *)context
{
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.y;
  v10 = point.x;
  CGContextSetLineWidth(context, width);
  CGContextMoveToPoint(context, v10, v9);
  CGContextAddLineToPoint(context, x, y);

  CGContextStrokePath(context);
}

+ (void)strokeWavyLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint width:(double)width withContext:(const CGContext *)context
{
  x = toPoint.x;
  y = point.y;
  v10 = point.x;
  v11 = sub_276D39454();
  v12 = sub_276D3943C(width);
  v13 = sub_276D39448(width);
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  CGContextBeginPath(context);
  CGContextMoveToPoint(context, v10, y);
  CGContextSetLineWidth(context, v13);
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
    CGContextAddQuadCurveToPoint(context, v19, v16, v20, y);
    v21 = v15 + v20;
    v10 = v14 + v20;
    CGContextAddQuadCurveToPoint(context, v21, v17, v10, y);
    v18 = v18 + 1.0;
  }

  while (v18 < v22);
  CGContextDrawPath(context, kCGPathStroke);

  CGContextRestoreGState(context);
}

@end