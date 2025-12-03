@interface TSWPRenderer
+ (void)initialize;
- (BOOL)shouldClipFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state lineDrawFlags:(unint64_t)flags updateRect:(CGRect)rect outClipRect:(CGRect *)clipRect;
- (CGSize)convertSizeToDeviceSpace:(CGSize)space;
- (TSWPRenderer)initWithContext:(CGContext *)context;
- (void)dealloc;
- (void)drawAdornmentRects:(id)rects forColumn:(id)column foreground:(BOOL)foreground drawingState:(const TSWPDrawingState *)state;
- (void)drawAdornmentsForFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const TSWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags;
- (void)drawCharacterFillAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state;
- (void)drawCharacterStrokeAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state;
- (void)drawFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const TSWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags;
- (void)drawLine:(TSWPLineRef *)line;
- (void)drawLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint thickness:(double)thickness length:(double)length lineCount:(int64_t)count lineFragmentStart:(CGPoint)start isWavyUnderline:(BOOL)underline;
- (void)drawRun:(const __CTRun *)run attributes:(id)attributes canvasIsInteractive:(BOOL)interactive glyphRange:(id)range;
- (void)drawRun:(const __CTRun *)run glyphRange:(id)range;
- (void)drawTextInRunsForLine:(TSWPLineRef *)line baseRange:(_NSRange)range fragment:(const void *)fragment state:(const TSWPDrawingState *)state isFirstLineRef:(BOOL)ref listLabel:(BOOL)label ruby:(BOOL)ruby tateChuYoko:(BOOL)self0;
- (void)drawWordMarkingsAtStart:(double)start length:(double)length linePos:(double)pos;
- (void)p_drawAdornmentGlyphs:(id)glyphs lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state;
- (void)p_drawAdornmentLine:(id)line drawingState:(const TSWPDrawingState *)state lineFragment:(const void *)fragment lineFragmentStart:(CGPoint)start vertical:(BOOL)vertical;
- (void)p_drawAdornmentLineBackgroundRect:(id)rect lineDrawFlags:(unint64_t)flags drawingState:(const TSWPDrawingState *)state bounds:(CGRect)bounds;
- (void)p_drawAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state;
- (void)p_drawAttachmentAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state;
- (void)p_drawAttachmentGlyphAtPosition:(id)position fragment:(const void *)fragment;
- (void)p_drawAutocorrectionMarkingsFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state;
- (void)p_drawDictationMarkingsFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state;
- (void)p_drawHiddenDeletionsAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state;
- (void)p_drawInvisiblesAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state;
- (void)p_drawInvisiblesBreakLine:(id)line lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state;
- (void)p_drawListLabelForFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state lineDrawFlags:(unint64_t)flags;
- (void)p_drawWordMarkingsForFragment:(const void *)fragment color:(id)color ranges:(id)ranges suppressRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state;
- (void)translateLinePositionForLine:(TSWPLineRef *)line lineFragment:(const void *)fragment linePosition:(CGPoint)position;
- (void)willRenderFragmentsWithDrawingState:(const TSWPDrawingState *)state;
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

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v2, v3, 1.0, 0.227, 0.188, 1.0);
    v5 = qword_280A581B0;
    qword_280A581B0 = v4;

    v8 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v6, v7, 0.35, 0.766, 0.405, 1.0);
    v9 = qword_280A581B8;
    qword_280A581B8 = v8;

    v12 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v10, v11, 0.0, 0.478, 1.0, 1.0);
    v13 = qword_280A581C0;
    qword_280A581C0 = v12;
  }
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

- (void)willRenderFragmentsWithDrawingState:(const TSWPDrawingState *)state
{
  CGContextSaveGState(self->_context);
  context = self->_context;
  var1 = state->var1;
  if (var1)
  {
    objc_msgSend_transformFromWP(var1, v5, v6);
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  CGContextConcatCTM(context, &v11);
  v9 = self->_context;
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v10;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(v9, &v11);
}

- (void)drawFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const TSWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v87 = *MEMORY[0x277D85DE8];
  if ((flags & 2) != 0)
  {
    v16 = TSDCGContextGetPdfTagger();
    v15 = TSUProtocolCast();

    if (*(fragment + 3) < 0)
    {
      fragmentCopy = MEMORY[0x277D81490];
    }

    else
    {
      fragmentCopy = fragment;
    }

    v71 = objc_msgSend_needsSeparateRunsForLineFragmentWithRange_(v15, v17, *fragmentCopy, fragmentCopy[1], &unk_28866BEF0);
  }

  else
  {
    v71 = 0;
    v15 = 0;
  }

  if (!state->var0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer drawFragment:updateRect:drawingState:runState:lineDrawFlags:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 166, 0, "storage is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v26 = *(fragment + 6);
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v88 = CGRectIntersection(*(fragment + 72), v89);
  if (CGRectIsEmpty(v88))
  {
    if ((flags & 2) != 0)
    {
      objc_msgSend_notifyPdfTagger_fragment_(TSWPRendererUtilities, v27, v15, fragment);
    }

    goto LABEL_67;
  }

  v70 = v26;
  v28 = *(MEMORY[0x277CBF3A0] + 16);
  v84[0] = *MEMORY[0x277CBF3A0];
  v84[1] = v28;
  shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect = objc_msgSend_shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect_(self, v27, fragment, state, flags, v84, x, y, width, height);
  if (shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect)
  {
    CGContextSaveGState(self->_context);
    CGContextClipToRectSafe();
  }

  v31 = *(fragment + 6);
  v32 = *(fragment + 7);
  v33 = *(fragment + 8);
  v35 = *(fragment + 4);
  v34 = *(fragment + 5);
  if (flags)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v36 = sub_276D6496C(fragment);
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v80, v86, 16);
    if (v39)
    {
      v40 = *v81;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v81 != v40)
          {
            objc_enumerationMutation(v36);
          }

          objc_msgSend_p_drawAdornmentLineBackgroundRect_lineDrawFlags_drawingState_bounds_(self, v38, *(*(&v80 + 1) + 8 * i), flags, state, v34, v31, v32, v33);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v80, v86, 16);
      }

      while (v39);
    }
  }

  if ((flags & 0x3000) != 0)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v42 = sub_276D64974(fragment);
    v69 = shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v76, v85, 16);
    if (v45)
    {
      v46 = *v77;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v42);
          }

          v48 = *(*(&v76 + 1) + 8 * j);
          if (objc_msgSend_shouldRenderForLineDrawFlags_(v48, v44, flags))
          {
            v49 = v33;
            v50 = v31;
            if ((*(fragment + 28) & 1) == 0)
            {
              v51 = *(fragment + 15);
              v49 = v51 + *(fragment + 17);
              v50 = v35 - v51;
            }

            objc_msgSend_p_drawAdornmentLineBackgroundRect_lineDrawFlags_drawingState_bounds_(self, v44, v48, flags, state, v34, v50, v32, v49);
          }
        }

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v76, v85, 16);
      }

      while (v45);
    }

    shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect = v69;
  }

  if ((flags & 2) != 0)
  {
    v52 = MEMORY[0x277D81490];
    if (*(fragment + 3) < 0)
    {
      fragmentCopy2 = MEMORY[0x277D81490];
    }

    else
    {
      fragmentCopy2 = fragment;
    }

    objc_msgSend_beginLineFragmentWithRange_(v15, v29, *fragmentCopy2, fragmentCopy2[1]);
    runState->var2 = v35;
    if ((flags & 0x200) != 0)
    {
      objc_msgSend_p_drawDictationMarkingsFragment_drawingState_(self, v54, fragment, state);
    }

    if ((flags & 0x800) != 0)
    {
      objc_msgSend_p_drawAutocorrectionMarkingsFragment_drawingState_(self, v54, fragment, state);
    }

    v55 = sub_276D6492C(fragment);
    v56 = v55 == 0;

    if (!v56)
    {
      objc_msgSend_p_drawListLabelForFragment_drawingState_lineDrawFlags_(self, v57, fragment, state, flags);
    }

    if (*(fragment + 3) < 0)
    {
      fragmentCopy3 = v52;
    }

    else
    {
      fragmentCopy3 = fragment;
    }

    objc_msgSend_beginLineFragmentBodyWithRange_(v15, v57, *fragmentCopy3, fragmentCopy3[1]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_276D8DFCC;
    aBlock[3] = &unk_27A6F4320;
    aBlock[4] = self;
    aBlock[5] = fragment;
    aBlock[6] = state;
    v74 = (v70 & 0x2000) != 0;
    v75 = v71;
    v59 = _Block_copy(aBlock);
    v61 = objc_msgSend_drawAdornmentIfNeededForLineFragment_withContext_drawingState_viewScale_flipShadows_(TSWPRendererUtilities, v60, fragment, self->_context, state, self->_flipShadows, self->_viewScale);
    if (state->var4)
    {
      if ((state->var21.length != 0) | v61 & 1)
      {
LABEL_54:
        if (!state->var21.length)
        {
LABEL_56:
          if (state->var21.length)
          {
LABEL_58:
            if (*(fragment + 3) < 0)
            {
              fragmentCopy4 = v52;
            }

            else
            {
              fragmentCopy4 = fragment;
            }

            objc_msgSend_endLineFragmentBodyWithRange_(v15, v62, *fragmentCopy4, fragmentCopy4[1]);
            if (*(fragment + 3) < 0)
            {
              fragmentCopy5 = v52;
            }

            else
            {
              fragmentCopy5 = fragment;
            }

            objc_msgSend_endLineFragmentWithRange_(v15, v67, *fragmentCopy5, fragmentCopy5[1]);

            goto LABEL_65;
          }

LABEL_57:
          v65 = sub_276D6491C(fragment);
          (*(v59 + 2))(v59, v65, 1, 0);
          goto LABEL_58;
        }

LABEL_55:
        v64 = sub_276D648E8(fragment);
        (*(v59 + 2))(v59, v64, 0, 1);
        if (!state->var4)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else if (v61)
    {
      goto LABEL_55;
    }

    v63 = sub_276D648E0(fragment);
    (*(v59 + 2))(v59, v63, 0, 0);
    if (!state->var4)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_65:
  if (shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect)
  {
    CGContextRestoreGState(self->_context);
  }

LABEL_67:
}

- (void)drawAdornmentsForFragment:(const void *)fragment updateRect:(CGRect)rect drawingState:(const TSWPDrawingState *)state runState:(id *)runState lineDrawFlags:(unint64_t)flags
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v105 = *MEMORY[0x277D85DE8];
  if (!state->var0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer drawAdornmentsForFragment:updateRect:drawingState:runState:lineDrawFlags:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 377, 0, "storage is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v80 = *(fragment + 3);
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  v106 = CGRectIntersection(*(fragment + 72), v107);
  if (!CGRectIsEmpty(v106))
  {
    v23 = *(MEMORY[0x277CBF3A0] + 16);
    v100[0] = *MEMORY[0x277CBF3A0];
    v100[1] = v23;
    shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect = objc_msgSend_shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect_(self, v22, fragment, state, flags, v100, x, y, width, height);
    if (shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect)
    {
      CGContextSaveGState(self->_context);
      CGContextClipToRectSafe();
    }

    if ((flags & 2) != 0)
    {
      v24 = *(fragment + 4);
      v25 = *(fragment + 5);
      runState->var2 = v24;
      if (!state->var4 || !state->var21.length)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        obj = sub_276D6497C(fragment);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v96, v104, 16);
        if (v27)
        {
          v28 = *v97;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v97 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v96 + 1) + 8 * i);
              CGContextSaveGState(self->_context);
              objc_msgSend_location(v30, v31, v32);
              v34 = v33;
              v36 = v35;
              v39 = objc_msgSend_attachment(v30, v37, v38);
              objc_msgSend_baselineOffset(v39, v40, v41);
              v43 = v42;
              objc_msgSend_size(v39, v44, v45);
              CGContextTranslateCTM(self->_context, v34, v36 + v24 - v43 - v46);
              CGContextSetShouldAntialias(self->_context, 1);
              v50 = objc_msgSend_rendererForAttachment(v39, v47, v48);
              if (!v50)
              {
                v51 = MEMORY[0x277D81150];
                v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSWPRenderer drawAdornmentsForFragment:updateRect:drawingState:runState:lineDrawFlags:]");
                v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v55, v52, v54, 423, 0, "Nil TSWPGraphicalAttachmentRenderer for graphical attachment");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v56, v57);
              }

              objc_msgSend_drawAttachment_inContext_selection_(v50, v49, v39, self->_context, 0, v80);
              CGContextRestoreGState(self->_context);
            }

            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v96, v104, 16);
          }

          while (v27);
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v59 = sub_276D6495C(fragment);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v92, v103, 16);
        v63 = (v80 >> 13) & 1;
        if (v62)
        {
          v64 = *v93;
          do
          {
            for (j = 0; j != v62; ++j)
            {
              if (*v93 != v64)
              {
                objc_enumerationMutation(v59);
              }

              objc_msgSend_p_drawAdornmentLine_drawingState_lineFragment_lineFragmentStart_vertical_(self, v61, *(*(&v92 + 1) + 8 * j), state, fragment, v63, v25, v24, v80);
            }

            v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v61, &v92, v103, 16);
          }

          while (v62);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v66 = sub_276D64964(fragment);
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v88, v102, 16);
        if (v69)
        {
          v70 = *v89;
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v89 != v70)
              {
                objc_enumerationMutation(v66);
              }

              objc_msgSend_p_drawAdornmentLine_drawingState_lineFragment_lineFragmentStart_vertical_(self, v68, *(*(&v88 + 1) + 8 * k), state, fragment, v63, v25, v24, v80);
            }

            v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v88, v102, 16);
          }

          while (v69);
        }

        CGContextSetTextDrawingMode(self->_context, kCGTextFill);
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v72 = sub_276D64E0C(fragment);
        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v84, v101, 16);
        if (v75)
        {
          v76 = *v85;
          do
          {
            for (m = 0; m != v75; ++m)
            {
              if (*v85 != v76)
              {
                objc_enumerationMutation(v72);
              }

              objc_msgSend_p_drawAdornments_lineFragment_state_(self, v74, *(*(&v84 + 1) + 8 * m), fragment, state, v80);
            }

            v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v74, &v84, v101, 16);
          }

          while (v75);
        }

        v79 = sub_276D64E20(fragment);
        if (v79)
        {
          objc_msgSend_p_drawInvisiblesBreakLine_lineFragment_state_(self, v78, v79, fragment, state);
        }
      }
    }

    if (shouldClipFragment_drawingState_lineDrawFlags_updateRect_outClipRect)
    {
      CGContextRestoreGState(self->_context);
    }
  }
}

- (void)drawCharacterFillAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state
{
  length = range.length;
  location = range.location;
  v87 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  columnCopy = column;
  if (objc_msgSend_count(rectsCopy, v10, v11))
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = rectsCopy;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v82, v86, 16);
    if (v15)
    {
      v16 = *v83;
      do
      {
        v17 = 0;
        do
        {
          if (*v83 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v82 + 1) + 8 * v17);
          objc_msgSend_rect(v18, v13, v14);
          x = v19;
          y = v21;
          width = v23;
          height = v25;
          if (objc_msgSend_type(v18, v27, v28) == 4)
          {
            v29 = objc_msgSend_fill(v18, v13, v14);
            v30 = v29 == 0;

            if (v30)
            {
              v33 = MEMORY[0x277D81150];
              v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSWPRenderer drawCharacterFillAdornmentRects:forColumn:excludeRange:drawingState:]");
              v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 473, 0, "invalid nil value for '%{public}s'", "adornment.fill");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
            }

            v40 = objc_msgSend_path(v18, v31, v32);
            v41 = v40 == 0;

            if (v41)
            {
              v44 = MEMORY[0x277D81150];
              v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSWPRenderer drawCharacterFillAdornmentRects:forColumn:excludeRange:drawingState:]");
              v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v48, v45, v47, 474, 0, "invalid nil value for '%{public}s'", "adornment.path");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
            }

            if (!state->var4 && location == *MEMORY[0x277D81490] && length == *(MEMORY[0x277D81490] + 8))
            {
              v51 = objc_msgSend_path(v18, v42, v43);
            }

            else
            {
              v51 = objc_msgSend_pathFromExcludeRange_limitSelection_rubyGlyphRange_(v18, v42, location, length);
            }

            v52 = v51;
            if (v51)
            {
              CGContextSaveGState(self->_context);
              if (objc_msgSend_textIsVertical(columnCopy, v53, v54))
              {
                TSUCenterOfRect();
                memset(&v81, 0, sizeof(v81));
                CGAffineTransformMakeRotation(&transform, -1.57079633);
                TSUMultiplyPointScalar();
                TSUTransformConvertForNewOrigin();
                context = self->_context;
                transform = v81;
                CGContextConcatCTM(context, &transform);
                v79 = v81;
                CGAffineTransformInvert(&transform, &v79);
                objc_msgSend_transformUsingAffineTransform_(v52, v58, &transform);
                transform = v81;
                v88.origin.x = x;
                v88.origin.y = y;
                v88.size.width = width;
                v88.size.height = height;
                v89 = CGRectApplyAffineTransform(v88, &transform);
                x = v89.origin.x;
                y = v89.origin.y;
                width = v89.size.width;
                height = v89.size.height;
              }

              v59 = objc_msgSend_shadow(v18, v55, v56);
              v60 = v59 == 0;

              if (!v60)
              {
                v63 = objc_msgSend_shadow(v18, v61, v62);
                objc_msgSend_applyToContext_viewScale_flipped_(v63, v64, self->_context, self->_flipShadows, self->_viewScale);

                CGContextBeginTransparencyLayer(self->_context, 0);
              }

              v65 = objc_msgSend_fill(v18, v61, v62);
              v66 = v52;
              v69 = objc_msgSend_CGPath(v52, v67, v68);
              objc_msgSend_paintPath_naturalBounds_inContext_isPDF_(v65, v70, v69, self->_context, 0, x, y, width, height);

              v73 = objc_msgSend_shadow(v18, v71, v72);
              LOBYTE(v65) = v73 == 0;

              if ((v65 & 1) == 0)
              {
                CGContextEndTransparencyLayer(self->_context);
              }

              CGContextRestoreGState(self->_context);
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v82, v86, 16);
        v15 = v74;
      }

      while (v74);
    }
  }
}

- (void)drawCharacterStrokeAdornmentRects:(id)rects forColumn:(id)column excludeRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state
{
  length = range.length;
  location = range.location;
  v71 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  if (objc_msgSend_count(rectsCopy, v9, v10))
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = rectsCopy;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v66, v70, 16);
    if (v14)
    {
      v15 = *v67;
      do
      {
        v16 = 0;
        do
        {
          if (*v67 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v66 + 1) + 8 * v16);
          if (objc_msgSend_type(v17, v12, v13) == 5)
          {
            v18 = objc_msgSend_stroke(v17, v12, v13);
            v19 = v18 == 0;

            if (v19)
            {
              v22 = MEMORY[0x277D81150];
              v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSWPRenderer drawCharacterStrokeAdornmentRects:forColumn:excludeRange:drawingState:]");
              v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 524, 0, "invalid nil value for '%{public}s'", "adornment.stroke");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
            }

            v29 = objc_msgSend_path(v17, v20, v21);
            v30 = v29 == 0;

            if (v30)
            {
              v33 = MEMORY[0x277D81150];
              v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSWPRenderer drawCharacterStrokeAdornmentRects:forColumn:excludeRange:drawingState:]");
              v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 525, 0, "invalid nil value for '%{public}s'", "adornment.path");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
            }

            if (!state->var4 && location == *MEMORY[0x277D81490] && length == *(MEMORY[0x277D81490] + 8))
            {
              v40 = objc_msgSend_path(v17, v31, v32);
            }

            else
            {
              v40 = objc_msgSend_pathFromExcludeRange_limitSelection_rubyGlyphRange_(v17, v31, location, length);
            }

            v41 = v40;
            if (v40)
            {
              CGContextSaveGState(self->_context);
              v44 = objc_msgSend_shadow(v17, v42, v43);
              v45 = v44 == 0;

              if (!v45)
              {
                v48 = objc_msgSend_shadow(v17, v46, v47);
                objc_msgSend_applyToContext_viewScale_flipped_(v48, v49, self->_context, self->_flipShadows, self->_viewScale);

                CGContextBeginTransparencyLayer(self->_context, 0);
              }

              TSDCGContextPrefersRasterRendering();
              TSDSetCGContextPrefersRasterRendering();
              v52 = objc_msgSend_stroke(v17, v50, v51);
              v53 = v41;
              v56 = objc_msgSend_CGPath(v41, v54, v55);
              objc_msgSend_paintPath_inContext_(v52, v57, v56, self->_context);

              TSDSetCGContextPrefersRasterRendering();
              v60 = objc_msgSend_shadow(v17, v58, v59);
              v61 = v60 == 0;

              if (!v61)
              {
                CGContextEndTransparencyLayer(self->_context);
              }

              CGContextRestoreGState(self->_context);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v66, v70, 16);
        v14 = v62;
      }

      while (v62);
    }
  }
}

- (void)drawAdornmentRects:(id)rects forColumn:(id)column foreground:(BOOL)foreground drawingState:(const TSWPDrawingState *)state
{
  foregroundCopy = foreground;
  v115 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  if (objc_msgSend_count(rectsCopy, v9, v10))
  {
    CGContextSaveGState(self->_context);
    v13 = objc_msgSend_interiorClippingPath(self, v11, v12);
    objc_msgSend_clipToInteriorClippingPath_withContext_(TSWPRendererUtilities, v14, v13, self->_context);

    v101 = objc_opt_new();
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = rectsCopy;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v109, v114, 16);
    if (v18)
    {
      v19 = *v110;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v110 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v109 + 1) + 8 * i);
          objc_msgSend_rect(v21, v16, v17);
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          if (!state->var4 && !foregroundCopy)
          {
            v30 = objc_msgSend_fill(v21, v16, v17);
            if (v30)
            {
              v31 = objc_msgSend_type(v21, v16, v17) == 1;

              if (v31)
              {
                v32 = objc_msgSend_paragraphPath(v21, v16, v17);
                v36 = objc_msgSend_fill(v21, v33, v34);
                if (v32)
                {
                  v37 = v32;
                  v40 = objc_msgSend_CGPath(v32, v38, v39);
                  objc_msgSend_paintPath_inContext_(v36, v41, v40, self->_context);
                }

                else
                {
                  objc_msgSend_paintRect_inContext_(v36, v35, self->_context, v23, v25, v27, v29);
                }
              }
            }
          }

          if (!state->var4 && foregroundCopy)
          {
            v42 = objc_msgSend_stroke(v21, v16, v17);
            if (v42)
            {
              v43 = objc_msgSend_type(v21, v16, v17) == 2;

              if (v43)
              {
                CGContextSetShouldAntialias(self->_context, 1);
                if (v29 == 0.0 || v27 == 0.0)
                {
                  Mutable = CGPathCreateMutable();
                  CGPathMoveToPointSafe();
                  v116.origin.x = v23;
                  v116.origin.y = v25;
                  v116.size.width = v27;
                  v116.size.height = v29;
                  CGRectGetMaxX(v116);
                  v117.origin.x = v23;
                  v117.origin.y = v25;
                  v117.size.width = v27;
                  v117.size.height = v29;
                  CGRectGetMaxY(v117);
                  CGPathAddLineToPointSafe();
                  v61 = objc_msgSend_stroke(v21, v59, v60);
                  objc_msgSend_paintPath_inContext_(v61, v62, Mutable, self->_context);

                  CGPathRelease(Mutable);
                }

                else
                {
                  v48 = objc_msgSend_paragraphPath(v21, v44, v45);
                  if (v48)
                  {
                    CGContextSaveGState(self->_context);
                    CGContextGetCTM(&transform, self->_context);
                    if (TSUIsTransformAxisAligned())
                    {
                      context = self->_context;
                      CGAffineTransformMakeRotation(&transform, 0.000001);
                      CGContextConcatCTM(context, &transform);
                    }

                    v52 = objc_msgSend_stroke(v21, v49, v50);
                    v53 = v48;
                    v56 = objc_msgSend_CGPath(v48, v54, v55);
                    objc_msgSend_paintPath_inContext_(v52, v57, v56, self->_context);

                    CGContextRestoreGState(self->_context);
                  }

                  else
                  {
                    v63 = objc_msgSend_stroke(v21, v46, v47);
                    objc_msgSend_paintRect_inContext_(v63, v64, self->_context, v23, v25, v27, v29);
                  }
                }
              }
            }
          }

          if (foregroundCopy)
          {
            v65 = objc_msgSend_fill(v21, v16, v17);
            if (v65)
            {
              v66 = objc_msgSend_type(v21, v16, v17) == 3;

              if (v66)
              {
                objc_msgSend_addObject_(v101, v16, v21);
              }
            }
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v109, v114, 16);
      }

      while (v18);
    }

    CGContextRestoreGState(self->_context);
    if (objc_msgSend_count(v101, v67, v68))
    {
      CGContextSaveGState(self->_context);
      CGContextSetShouldAntialias(self->_context, 1);
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obja = v101;
      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v69, &v104, v113, 16);
      if (v72)
      {
        v73 = *v105;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v105 != v73)
            {
              objc_enumerationMutation(obja);
            }

            v75 = *(*(&v104 + 1) + 8 * j);
            objc_msgSend_rect(v75, v70, v71);
            x = v118.origin.x;
            y = v118.origin.y;
            width = v118.size.width;
            height = v118.size.height;
            CGRectGetMinX(v118);
            TSURoundForScale();
            v81 = v80;
            v119.origin.x = x;
            v119.origin.y = y;
            v119.size.width = width;
            v119.size.height = height;
            CGRectGetWidth(v119);
            TSURoundForScale();
            v83 = v82;
            v120.origin.x = x;
            v120.origin.y = y;
            v120.size.width = width;
            v120.size.height = height;
            MinY = CGRectGetMinY(v120);
            v121.origin.x = x;
            v121.origin.y = y;
            v121.size.width = width;
            v121.size.height = height;
            v85 = CGRectGetHeight(v121);
            objc_opt_class();
            v88 = objc_msgSend_fill(v75, v86, v87);
            v89 = TSUDynamicCast();

            if (v89)
            {
              v92 = objc_msgSend_CGColor(v89, v90, v91);
              CGContextSetFillColorWithColor(self->_context, v92);
              v122.origin.x = v81;
              v122.origin.y = MinY;
              v122.size.width = v83;
              v122.size.height = v85;
              CGContextFillRect(self->_context, v122);
            }

            else
            {
              v93 = MEMORY[0x277D81150];
              v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "[TSWPRenderer drawAdornmentRects:forColumn:foreground:drawingState:]");
              v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v97, v94, v96, 641, 0, "invalid nil value for '%{public}s'", "colorFill");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99);
            }
          }

          v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v70, &v104, v113, 16);
        }

        while (v72);
      }

      CGContextRestoreGState(self->_context);
    }
  }
}

- (void)drawTextInRunsForLine:(TSWPLineRef *)line baseRange:(_NSRange)range fragment:(const void *)fragment state:(const TSWPDrawingState *)state isFirstLineRef:(BOOL)ref listLabel:(BOOL)label ruby:(BOOL)ruby tateChuYoko:(BOOL)self0
{
  length = range.length;
  location = range.location;
  v17 = TSDCGContextGetPdfTagger();
  v30 = TSUProtocolCast();

  v18 = sub_276DD1F38(line);
  v29 = CTLineGetGlyphRuns(v18);
  var4 = state->var4;
  selfCopy = self;
  stateCopy = state;
  if (var4)
  {
    lineCopy2 = line;
    v23 = var4;
  }

  else
  {
    v23 = objc_msgSend_selectionWithRange_(TSWPSelection, v19, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), &unk_28866BEF0);
    lineCopy2 = line;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3321888768;
  v31[2] = sub_276D8FB30;
  v31[3] = &unk_2885FE880;
  v39[104] = label;
  v31[4] = v23;
  fragmentCopy = fragment;
  v24 = v29;
  v39[105] = ruby;
  v39[106] = yoko;
  v39[107] = ref;
  v32 = v24;
  v36 = location;
  v37 = length;
  v25 = v30;
  v38 = stateCopy;
  v33 = v25;
  v34 = selfCopy;
  *&v26 = sub_276DD1E84(v39, lineCopy2).n128_u64[0];
  objc_msgSend_enumerateRanges_(v23, v27, v31, v26);
  sub_276DD1EBC(v39);
}

- (void)drawRun:(const __CTRun *)run attributes:(id)attributes canvasIsInteractive:(BOOL)interactive glyphRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  interactiveCopy = interactive;
  attributesCopy = attributes;
  CGContextSaveGState(self->_context);
  v13 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v12, *MEMORY[0x277CC49C0]);

  v18 = v13;
  IsInteractive = objc_msgSend_determineRenderingModeWithAttributes_withContext_foregroundColor_canvasIsInteractive_(TSWPRendererUtilities, v14, attributesCopy, self->_context, v13, interactiveCopy);
  objc_msgSend_determineAndSetForegroundColor_withContext_renderingMode_(TSWPRendererUtilities, v16, &v18, self->_context, IsInteractive);
  if (IsInteractive != 4)
  {
    objc_msgSend_drawRun_glyphRange_(self, v17, run, var0, var1);
  }

  CGContextRestoreGState(self->_context);
}

- (BOOL)shouldClipFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state lineDrawFlags:(unint64_t)flags updateRect:(CGRect)rect outClipRect:(CGRect *)clipRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  flagsCopy = flags;
  if (CGRectIsNull(rect))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSWPRenderer shouldClipFragment:drawingState:lineDrawFlags:updateRect:outClipRect:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 865, 0, "Should not try to clip with null update rect");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    return 0;
  }

  v55.origin.x = state->var2.origin.x;
  v24 = state->var2.origin.y;
  v25 = state->var2.size.width;
  v26 = state->var2.size.height;
  v54 = v55.origin.x;
  v55.origin.y = v24;
  v55.size.width = v25;
  v55.size.height = v26;
  v27 = CGRectGetWidth(v55);
  if (fragment)
  {
    v28 = v27;
    v29 = sub_276D69F0C(fragment);
    v53 = 10000000.0;
    if ((v29 == 1 || v29 == 2 && (*(fragment + 25) & 8) != 0) && rint(*(fragment + 30)) > rint(v28))
    {
      objc_msgSend_erasableBounds_(state->var1, v30, 0);
      v51 = v56.origin.x;
      v48 = v56.size.width;
      v49 = v56.origin.y;
      rect = v56.size.height;
      MaxX = CGRectGetMaxX(v56);
      v57.origin.x = x;
      v57.origin.y = y;
      v57.size.width = width;
      v57.size.height = height;
      v32 = CGRectGetMaxX(v57);
      if (v32 >= MaxX)
      {
        v32 = MaxX;
      }

      v53 = v32;
      v58.origin.x = v51;
      v58.size.width = v48;
      v58.origin.y = v49;
      v58.size.height = rect;
      MinX = CGRectGetMinX(v58);
      if (MinX >= x)
      {
        x = MinX;
      }

      y = fmax(y, -10000000.0);
      v34 = 1;
      if ((flagsCopy & 2) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v34 = 0;
      if ((flagsCopy & 2) != 0)
      {
LABEL_13:
        v35 = 0.0;
        if (*(fragment + 512) == 1)
        {
          v35 = *(fragment + 20);
        }

        MaxY = *(fragment + 4) + *(fragment + 17) + v35;
        goto LABEL_18;
      }
    }

    MaxY = CGRectGetMaxY(*(fragment + 40));
LABEL_18:
    v59.origin.x = v54;
    v59.origin.y = v24;
    v59.size.width = v25;
    v59.size.height = v26;
    v37 = CGRectGetMaxY(v59);
    if (!state->var15 && rint(MaxY) > rint(v37))
    {
      v52 = height;
      v38 = v26;
      v39 = v25;
      v40 = v24;
LABEL_23:
      state->var25 = 1;
      v60.origin.x = v54;
      v60.origin.y = v40;
      v60.size.width = v39;
      v60.size.height = v38;
      v50 = v38;
      v41 = CGRectGetMaxY(v60);
      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      height = v52;
      v61.size.height = v52;
      v42 = CGRectGetMaxY(v61);
      if (v42 < v41)
      {
        v41 = v42;
      }

      v62.origin.x = v54;
      v62.origin.y = v40;
      v62.size.width = v39;
      v62.size.height = v50;
      MinY = CGRectGetMinY(v62);
      if (MinY >= y)
      {
        y = MinY;
      }

      x = fmax(x, -10000000.0);
      goto LABEL_30;
    }

    if (v34)
    {
      v41 = 10000000.0;
LABEL_30:
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      v44 = CGRectGetMaxX(v63);
      if (v44 >= v53)
      {
        v45 = v53;
      }

      else
      {
        v45 = v44;
      }

      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = width;
      v64.size.height = height;
      v46 = CGRectGetMaxY(v64);
      if (v46 >= v41)
      {
        v46 = v41;
      }

      height = fmax(v46 - y, 0.0);
      width = fmax(v45 - x, 0.0);
      result = 1;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (!state->var15)
  {
    v52 = height;
    v38 = v26;
    v39 = v25;
    v40 = v24;
    v53 = 10000000.0;
    goto LABEL_23;
  }

LABEL_36:
  result = 0;
LABEL_37:
  clipRect->origin.x = x;
  clipRect->origin.y = y;
  clipRect->size.width = width;
  clipRect->size.height = height;
  return result;
}

- (void)p_drawWordMarkingsForFragment:(const void *)fragment color:(id)color ranges:(id)ranges suppressRange:(_NSRange)range drawingState:(const TSWPDrawingState *)state
{
  length = range.length;
  location = range.location;
  colorCopy = color;
  rangesCopy = ranges;
  v15 = *(fragment + 3);
  v16 = *(fragment + 152);
  v41 = *(fragment + 136);
  v42 = v16;
  v17 = *(fragment + 184);
  v43 = *(fragment + 168);
  v44 = v17;
  v18 = *(fragment + 120);
  v39 = *(fragment + 104);
  v40 = v18;
  fragmentCopy = MEMORY[0x277D81490];
  if (v15 >= 0)
  {
    fragmentCopy = fragment;
  }

  v20 = fragmentCopy[1];
  *&v38 = *fragmentCopy;
  *(&v38 + 1) = v20;
  *&v37 = location;
  *(&v37 + 1) = length;
  v36 = 0;
  CGContextSaveGState(self->_context);
  objc_msgSend_drawWordMarkingsForFragmentSetup_withContext_color_drawingState_lineRange_suppressRange_isOverline_isVertical_(TSWPRendererUtilities, v21, fragment, self->_context, colorCopy, state, &v38, &v37, &v36, (v15 & 0x2000) != 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v24 = v37;
  v25 = v38;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v28 = v39;
  v23[2] = sub_276D909BC;
  v23[3] = &unk_27A6F4370;
  fragmentCopy2 = fragment;
  stateCopy = state;
  v34 = v36;
  v29 = v40;
  v35 = (v15 & 0x2000) >> 13;
  v23[4] = self;
  objc_msgSend_enumerateRanges_(rangesCopy, v22, v23);
  CGContextRestoreGState(self->_context);
}

- (void)p_drawDictationMarkingsFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state
{
  v7 = objc_msgSend_correctionAndDictationMarkColor(TSWPRenderer, a2, fragment);
  objc_msgSend_p_drawWordMarkingsForFragment_color_ranges_suppressRange_drawingState_(self, v6, fragment);
}

- (void)p_drawAutocorrectionMarkingsFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state
{
  v7 = objc_msgSend_correctionAndDictationMarkColor(TSWPRenderer, a2, fragment);
  objc_msgSend_p_drawWordMarkingsForFragment_color_ranges_suppressRange_drawingState_(self, v6, fragment);
}

- (void)p_drawAdornmentLine:(id)line drawingState:(const TSWPDrawingState *)state lineFragment:(const void *)fragment lineFragmentStart:(CGPoint)start vertical:(BOOL)vertical
{
  y = start.y;
  x = start.x;
  lineCopy = line;
  if (!objc_msgSend_color(lineCopy, v13, v14))
  {
    goto LABEL_34;
  }

  objc_msgSend_thickness(lineCopy, v15, v16);
  size = v17;
  objc_msgSend_start(lineCopy, v18, v19);
  v21 = v20;
  v23 = v22;
  v26 = objc_msgSend_lineCount(lineCopy, v24, v25);
  objc_msgSend_length(lineCopy, v27, v28);
  v30 = v29;
  v31 = *(fragment + 7);
  objc_msgSend_start(lineCopy, v32, v33);
  v36 = x + v21;
  v37 = y + v23;
  v39 = v31 - v38;
  if (v30 >= v39)
  {
    v40 = v39;
  }

  else
  {
    v40 = v30;
  }

  if (state->var10)
  {
    memset(&v85, 0, sizeof(v85));
    CGContextGetCTM(&v85, self->_context);
    if (TSUIsTransformAxisAligned())
    {
      v87.width = size;
      v87.height = size;
      v41 = CGContextConvertSizeToDeviceSpace(self->_context, v87);
      if (v41.height >= 0.5 && (objc_msgSend_allowAntialiasing(lineCopy, v34, v35) & 1) == 0)
      {
        CGContextConvertPointToDeviceSpace(self->_context, state->var2.origin);
        CGContextConvertSizeToDeviceSpace(self->_context, state->var2.size);
        v88.x = v36;
        v88.y = v37;
        v43 = CGContextConvertPointToDeviceSpace(self->_context, v88);
        v42 = v43.x;
        v44 = fmax(rint(v41.height), 1.0);
        v45 = rint(v43.y);
        v46 = 0.0;
        if ((v44 & 0x80000001) == 1)
        {
          v46 = 0.5;
        }

        v47 = v46 + v45;
        v37 = CGContextConvertPointToUserSpace(self[16], *&v42).y;
        v89.width = v41.width;
        v89.height = v44;
        size = fabs(CGContextConvertSizeToUserSpace(self[16], v89).height);
      }
    }
  }

  context = self->_context;
  v49 = objc_msgSend_color(lineCopy, v34, v35);
  CGContextSetStrokeColorWithColor(context, v49);
  var4 = state->var4;
  v53 = MEMORY[0x277D81490];
  if (var4)
  {
    v54.location = objc_msgSend_DEPRECATED_range(var4, v50, v51);
    v56 = *v53;
    v55 = v53[1];
  }

  else
  {
    v56 = *MEMORY[0x277D81490];
    v55 = *(MEMORY[0x277D81490] + 8);
    v54.location = *MEMORY[0x277D81490];
    v54.length = v55;
  }

  v57 = fmax(v40, 0.0);
  v58 = v36 + v57;
  if (v54.location == v56 && v54.length == v55)
  {
    goto LABEL_31;
  }

  if (*(fragment + 3) < 0)
  {
    fragmentCopy = v53;
  }

  else
  {
    fragmentCopy = fragment;
  }

  v61 = *fragmentCopy;
  v60 = fragmentCopy[1];
  v86.location = *fragmentCopy;
  v86.length = v60;
  v54 = NSIntersectionRange(v54, v86);
  if (!v54.length)
  {
    goto LABEL_34;
  }

  if (v54.length >= v60)
  {
LABEL_31:
    v77 = 0;
    goto LABEL_32;
  }

  sub_276D65948(fragment, v61, v60, 1, 1, 0, 0, 0, &v85);
  sub_276D398C4(&v85);
  v66 = v65;
  if (*&v85.a)
  {
    v85.b = v85.a;
    v67 = v63;
    v80 = x;
    v82 = v36;
    v68 = y;
    v69 = v37;
    v70 = v62;
    v71 = v64;
    operator delete(*&v85.a);
    v64 = v71;
    v62 = v70;
    v37 = v69;
    y = v68;
    x = v80;
    v36 = v82;
    v63 = v67;
  }

  if (v36 >= v66)
  {
    v72 = v36;
  }

  else
  {
    v72 = v66;
  }

  v81 = v72;
  v73 = v66;
  MaxX = CGRectGetMaxX(*(&v62 - 1));
  if (MaxX >= v58)
  {
    MaxX = v58;
  }

  v83 = MaxX;
  if (objc_msgSend_underline(lineCopy, v74, v75) == 3)
  {
    sub_276D3943C(size);
  }

  if (v83 > v81 + -1.0)
  {
    CGContextSaveGState(self->_context);
    CGContextClipToRectSafe();
    v77 = 1;
LABEL_32:
    v78 = objc_msgSend_underline(lineCopy, v54.length, v51) == 3;
    objc_msgSend_drawLineFromPoint_toPoint_thickness_length_lineCount_lineFragmentStart_isWavyUnderline_(self, v79, v26, v78, v36, v37, v58, v37, size, v57, x, y);
    if (v77)
    {
      CGContextRestoreGState(self->_context);
    }
  }

LABEL_34:
}

- (void)p_drawAdornmentLineBackgroundRect:(id)rect lineDrawFlags:(unint64_t)flags drawingState:(const TSWPDrawingState *)state bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  flagsCopy = flags;
  rectCopy = rect;
  if (objc_msgSend_color(rectCopy, v12, v13))
  {
    if ((flagsCopy & 2) != 0)
    {
      v20 = objc_msgSend_color(rectCopy, v14, v15);
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v20, 0.5);
      CGContextSetFillColorWithColor(self->_context, CopyWithAlpha);
      CGColorRelease(CopyWithAlpha);
    }

    else
    {
      context = self->_context;
      v17 = objc_msgSend_color(rectCopy, v14, v15);
      CGContextSetFillColorWithColor(context, v17);
    }

    objc_msgSend_length(rectCopy, v18, v19);
    v23 = v22;
    objc_msgSend_start(rectCopy, v24, v25);
    v29 = width - v28;
    v30 = v23 >= v29 ? v29 : v23;
    if (v30 > 0.0)
    {
      objc_msgSend_start(rectCopy, v26, v27);
      v34.origin.x = x + v31;
      v34.origin.y = y;
      v34.size.width = v30;
      v34.size.height = height;
      CGContextFillRect(self->_context, v34);
    }
  }
}

- (void)p_drawAttachmentGlyphAtPosition:(id)position fragment:(const void *)fragment
{
  v6 = *(fragment + 15);
  v7 = *(fragment + 17);
  v8 = *(fragment + 18);
  v9 = *(fragment + 19);
  v10 = *(fragment + 20);
  v11 = floor(position.var1) + 0.5;
  v14 = sub_276D64990(fragment);
  if (v14)
  {
    v13 = *(fragment + 6) - *(fragment + 4);
    objc_msgSend_strokeLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v12, self->_context, v11, v13, v11, 0.0, 1.0);
  }

  else
  {
    v13 = -v6 - v8;
    objc_msgSend_strokeLineFromPoint_toPoint_width_withContext_(TSWPRendererUtilities, v12, self->_context, v11, v13, v11, v7 + v9 + v10, 1.0);
  }

  v16.size.width = 4.80000019;
  v16.origin.x = v11 + 4.80000019 * -0.5;
  v16.origin.y = v13;
  v16.size.height = 4.80000019;
  CGContextFillEllipseInRect(self->_context, v16);
}

- (void)p_drawInvisiblesAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state
{
  adornmentsCopy = adornments;
  var12 = state->var12;
  v12 = objc_msgSend_font(adornmentsCopy, v10, v11);
  v74 = objc_msgSend_flippedFont(adornmentsCopy, v13, v14);
  v15 = *(fragment + 4);
  v16 = *(fragment + 5);
  CGContextSaveGState(self->_context);
  context = self->_context;
  if ((*(fragment + 25) & 0x20) != 0)
  {
    v21 = sub_276D648D0(fragment, 0);
    CGContextTranslateCTM(context, v16 + *(v21 + 8), v15);
  }

  else
  {
    v18 = *(fragment + 15);
    v19 = *(fragment + 17);
    v20 = sub_276D648D0(fragment, 0);
    CGContextTranslateCTM(context, v16 + *(v20 + 8), v15 + (v19 - v18 + *&qword_280A570A0) * 0.5);
  }

  v78 = var12;
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  CGContextSetFillColorWithColor(self->_context, state->var6);
  font = v12;
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = MEMORY[0x277D81490];
  }

  else
  {
    fragmentCopy = fragment;
  }

  v77 = fragmentCopy[1];
  v75 = *fragmentCopy;
  v25 = objc_msgSend_positionCount(adornmentsCopy, v22, v23);
  v28 = objc_msgSend_flippedPositionCount(adornmentsCopy, v26, v27);
  if (objc_msgSend_positionCount(adornmentsCopy, v29, v30) != v25 || objc_msgSend_flippedPositionCount(adornmentsCopy, v31, v32) != v28)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSWPRenderer p_drawInvisiblesAdornments:lineFragment:state:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1333, 0, "Invisibles mismatch");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  }

  if (objc_msgSend_positionCount(adornmentsCopy, v31, v33) == v25 && objc_msgSend_flippedPositionCount(adornmentsCopy, v41, v42) == v28)
  {
    if (!v78)
    {
      v54 = state->var3;
      v57 = v54;
      if (!v77 || !objc_msgSend_isValid(v54, v55, v56) || !objc_msgSend_containsCharacterAtIndex_(v57, v58, v77 + v75 - 1))
      {

        goto LABEL_25;
      }

      v61 = objc_msgSend_type(adornmentsCopy, v59, v60);

      if (v61 != 2)
      {
        goto LABEL_25;
      }
    }

    if (v25 | v28)
    {
      v43 = self->_context;
      CGAffineTransformMakeScale(&transform, 1.0, -1.0);
      CGContextConcatCTM(v43, &transform);
      if ((*(fragment + 25) & 0x20) != 0)
      {
        if (v25)
        {
          sub_276D8D454(&transform, v25);
          v64 = 0;
          v65 = v25;
          do
          {
            v66 = objc_msgSend_glyphs(adornmentsCopy, v62, v63);
            BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(font, kCTFontOrientationHorizontal, (v66 + v64), 0, 1);
            y = BoundingRectsForGlyphs.origin.y;
            height = BoundingRectsForGlyphs.size.height;
            v71 = objc_msgSend_positions(adornmentsCopy, v69, v70, BoundingRectsForGlyphs.origin.x);
            v72 = *&transform.a + 8 * v64;
            *v72 = *(v71 + 8 * v64);
            *(v72 + 8) = -(y - height * -0.5);
            v64 += 2;
            --v65;
          }

          while (v65);
          v73 = objc_msgSend_glyphs(adornmentsCopy, v62, v63);
          CTFontDrawGlyphs(font, v73, *&transform.a, v25, self->_context);
          if (*&transform.a)
          {
            transform.b = transform.a;
            operator delete(*&transform.a);
          }
        }
      }

      else
      {
        if (v25)
        {
          v46 = objc_msgSend_glyphs(adornmentsCopy, v44, v45);
          v49 = objc_msgSend_positions(adornmentsCopy, v47, v48);
          CTFontDrawGlyphs(v12, v46, v49, v25, self->_context);
        }

        if (v28)
        {
          v50 = objc_msgSend_flippedGlyphs(adornmentsCopy, v44, v45);
          v53 = objc_msgSend_flippedPositions(adornmentsCopy, v51, v52);
          CTFontDrawGlyphs(v74, v50, v53, v28, self->_context);
        }
      }
    }
  }

LABEL_25:
  CGContextRestoreGState(self->_context);
}

- (void)p_drawHiddenDeletionsAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state
{
  adornmentsCopy = adornments;
  v10 = objc_msgSend_font(adornmentsCopy, v8, v9);
  v11 = *(fragment + 4);
  v12 = *(fragment + 5);
  CGContextSaveGState(self->_context);
  context = self->_context;
  v14 = sub_276D648D0(fragment, 0);
  CGContextTranslateCTM(context, v12 + *(v14 + 8), v11);
  CGContextSetTextPosition(self->_context, 0.0, 0.0);
  v15 = self->_context;
  v18 = objc_msgSend_color(adornmentsCopy, v16, v17);
  CGContextSetFillColorWithColor(v15, v18);
  v21 = objc_msgSend_positionCount(adornmentsCopy, v19, v20);
  if (v21 == objc_msgSend_glyphCount(adornmentsCopy, v22, v23))
  {
    v26 = objc_msgSend_positionCount(adornmentsCopy, v24, v25);
    if (v26)
    {
      v27 = self->_context;
      CGAffineTransformMakeScale(&v34, 1.0, -1.0);
      CGContextConcatCTM(v27, &v34);
      v30 = objc_msgSend_glyphs(adornmentsCopy, v28, v29);
      v33 = objc_msgSend_positions(adornmentsCopy, v31, v32);
      CTFontDrawGlyphs(v10, v30, v33, v26, self->_context);
    }
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawAttachmentAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state
{
  adornmentsCopy = adornments;
  var12 = state->var12;
  var11 = state->var11;
  v10 = *(fragment + 4);
  v11 = *(fragment + 5);
  CGContextSaveGState(self->_context);
  context = self->_context;
  v13 = sub_276D648D0(fragment, 0);
  CGContextTranslateCTM(context, v11 + *(v13 + 8), v10);
  CGContextSetFillColorWithColor(self->_context, state->var6);
  CGContextSetStrokeColorWithColor(self->_context, state->var6);
  v16 = objc_msgSend_attachmentPositionCount(adornmentsCopy, v14, v15);
  v19 = objc_msgSend_attachmentPositions(adornmentsCopy, v17, v18);
  for (i = state->var3; v16; --v16)
  {
    if (var12 || (objc_msgSend_containsCharacterAtIndex_(i, v20, *v19), !var11) && objc_msgSend_canvasSelectionIncludesDrawableOfAttachmentAtCharIndex_drawingState_(TSWPRendererUtilities, v20, *v19, state))
    {
      objc_msgSend_p_drawAttachmentGlyphAtPosition_fragment_(self, v20, *v19, v19[1], fragment);
    }

    v19 += 2;
  }

  CGContextRestoreGState(self->_context);
}

- (void)p_drawAdornmentGlyphs:(id)glyphs lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state
{
  glyphsCopy = glyphs;
  font = objc_msgSend_font(glyphsCopy, v8, v9);
  v12 = objc_msgSend_color(glyphsCopy, v10, v11);
  v15 = objc_msgSend_positionCount(glyphsCopy, v13, v14);
  v18 = objc_msgSend_positions(glyphsCopy, v16, v17);
  v21 = objc_msgSend_glyphCount(glyphsCopy, v19, v20);
  v24 = objc_msgSend_glyphs(glyphsCopy, v22, v23);
  if (v15 == v21)
  {
    v27 = v24;
    v28 = *(fragment + 4);
    v70 = *(fragment + 5);
    objc_msgSend_textPosition(glyphsCopy, v25, v26);
    v30 = v29;
    v32 = v31;
    if (objc_msgSend_shouldRotate(glyphsCopy, v33, v34))
    {
      objc_msgSend_ascent(glyphsCopy, v35, v36);
      v38 = v37;
      objc_msgSend_descent(glyphsCopy, v39, v40);
      v42 = v41;
      objc_msgSend_ascent(glyphsCopy, v43, v44);
      objc_msgSend_advance(glyphsCopy, v45, v46);
      if (v15)
      {
        v48 = v47;
        v49 = 0;
        v50 = v38 + v42;
        v51 = v28 + v32;
        v52 = 1;
        do
        {
          CGContextSaveGState(self->_context);
          CGContextSetFillColorWithColor(self->_context, v12);
          p_x = &v18[v49].x;
          v55 = *p_x;
          v54 = p_x[1];
          v56 = sub_276D648D0(fragment, 0);
          CGContextTranslateCTM(self->_context, v55 + v30 + v70 + *(v56 + 8), v51 + v54 - v50);
          CGContextSetTextPosition(self->_context, 0.0, 0.0);
          context = self->_context;
          CGAffineTransformMakeScale(&transform, 1.0, -1.0);
          CGContextConcatCTM(context, &transform);
          v58 = self->_context;
          CGAffineTransformMakeTranslation(&transform, v48, -v50);
          CGContextConcatCTM(v58, &transform);
          v59 = self->_context;
          CGAffineTransformMakeRotation(&transform, 1.57079633);
          CGContextConcatCTM(v59, &transform);
          *&transform.a = *MEMORY[0x277CBF348];
          CTFontDrawGlyphs(font, &v27[v49], &transform, 1uLL, self->_context);
          CGContextRestoreGState(self->_context);
          v49 = v52;
        }

        while (v15 > v52++);
      }
    }

    else
    {
      CGContextSaveGState(self->_context);
      CGContextSetFillColorWithColor(self->_context, v12);
      v68 = sub_276D648D0(fragment, 0);
      CGContextTranslateCTM(self->_context, v30 + v70 + *(v68 + 8), v28 + v32);
      v69 = self->_context;
      CGAffineTransformMakeScale(&transform, 1.0, -1.0);
      CGContextConcatCTM(v69, &transform);
      CGContextSetTextPosition(self->_context, 0.0, 0.0);
      CTFontDrawGlyphs(font, v27, v18, v15, self->_context);
      CGContextRestoreGState(self->_context);
    }
  }

  else
  {
    v61 = MEMORY[0x277D81150];
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSWPRenderer p_drawAdornmentGlyphs:lineFragment:state:]");
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 1444, 0, "mismatched adornment counts");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
  }
}

- (void)p_drawAdornments:(id)adornments lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state
{
  adornmentsCopy = adornments;
  v10 = objc_msgSend_type(adornmentsCopy, v8, v9);
  if ((v10 - 1) < 2)
  {
    if (!state->var8 && state->var10 && sub_276D69F0C(fragment))
    {
      objc_msgSend_p_drawInvisiblesAdornments_lineFragment_state_(self, v12, adornmentsCopy, fragment, state);
    }
  }

  else if (v10 == 3)
  {
    if (!state->var8 && state->var10 && sub_276D69F0C(fragment))
    {
      objc_msgSend_p_drawAttachmentAdornments_lineFragment_state_(self, v13, adornmentsCopy, fragment, state);
    }
  }

  else if (v10 == 6)
  {
    if (!state->var8 && state->var10)
    {
      objc_msgSend_p_drawHiddenDeletionsAdornments_lineFragment_state_(self, v11, adornmentsCopy, fragment, state);
    }
  }

  else
  {
    objc_msgSend_p_drawAdornmentGlyphs_lineFragment_state_(self, v11, adornmentsCopy, fragment, state);
  }
}

- (void)p_drawInvisiblesBreakLine:(id)line lineFragment:(const void *)fragment state:(const TSWPDrawingState *)state
{
  lineCopy = line;
  var12 = state->var12;
  fragmentCopy = MEMORY[0x277D81490];
  if (*(fragment + 3) >= 0)
  {
    fragmentCopy = fragment;
  }

  v11 = *fragmentCopy;
  v10 = fragmentCopy[1];
  v14 = state->var3;
  v15 = v10 != 0;
  if (!var12 && v10)
  {
    if (!objc_msgSend_isValid(v14, v12, v13))
    {
      goto LABEL_12;
    }

    v15 = objc_msgSend_containsCharacterAtIndex_(v14, v16, v10 + v11 - 1);
  }

  if (lineCopy && v15)
  {
    v18 = *(fragment + 4);
    v17 = *(fragment + 5);
    CGContextSaveGState(self->_context);
    CGContextTranslateCTM(self->_context, v17, v18);
    v19 = sub_276D64E20(fragment);
    v21 = v19;
    if (v19)
    {
      v22 = objc_msgSend_copyWithColor_(v19, v20, state->var6);
      objc_msgSend_p_drawAdornmentLine_drawingState_lineFragment_lineFragmentStart_vertical_(self, v23, v22, state, fragment, 0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    }

    CGContextRestoreGState(self->_context);
  }

LABEL_12:
}

- (void)p_drawListLabelForFragment:(const void *)fragment drawingState:(const TSWPDrawingState *)state lineDrawFlags:(unint64_t)flags
{
  flagsCopy = flags;
  v9 = MEMORY[0x277D81490];
  if (*(fragment + 3) < 0)
  {
    fragmentCopy = MEMORY[0x277D81490];
  }

  else
  {
    fragmentCopy = fragment;
  }

  v11 = *fragmentCopy;
  v12 = fragmentCopy[1];
  v13 = sub_276D6492C(fragment);
  v16 = objc_msgSend_type(state->var4, v14, v15);
  if (objc_msgSend_isValid(state->var4, v17, v18) && ((v20 = objc_msgSend_containsCharacterAtIndex_(state->var4, v19, v11), v16 == 2) ? (v22 = v20) : (v22 = 0), (v22 & 1) == 0))
  {
    if (objc_msgSend_start(state->var4, v19, v21) != v11)
    {
      goto LABEL_31;
    }

    v23 = (v16 - 3) < 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = 0;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  if (!v23)
  {
    if (!state->var14 || (flagsCopy & 0x100) != 0 || v12 != 1 || (v24 = objc_msgSend_characterAtIndex_(state->var0, v19, v11), (IsParagraphBreakingCharacter(v24) & 1) == 0))
    {
      v25 = TSDCGContextGetPdfTagger();
      v26 = TSUProtocolCast();

      objc_msgSend_beginListLabel(v26, v27, v28, &unk_28866BEF0);
      CGContextSaveGState(self->_context);
      if (state->var9)
      {
        v31 = 0;
      }

      else
      {
        v32 = objc_msgSend_shadow(v13, v29, v30);
        v31 = v32;
        if (v32 && objc_msgSend_isEnabled(v32, v29, v30))
        {
          objc_msgSend_applyToContext_viewScale_flipped_(v31, v29, self->_context, self->_flipShadows, self->_viewScale);
        }
      }

      v35 = objc_msgSend_textLine(v13, v29, v30);
      if (v35)
      {
        v36 = sub_276D69638(fragment);
        CGContextTranslateCTM(self->_context, v36, v37);
        objc_msgSend_setCTMAndTextPositionForFragment_context_state_(TSWPRendererUtilities, v38, fragment, self->_context, state);
        sub_276DD1DC0(v54, v35, *v9, v9[1], 0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
        BYTE2(v53) = objc_msgSend_isLabelTateChuYoko(v13, v39, v40);
        LOWORD(v53) = 1;
        objc_msgSend_drawTextInRunsForLine_baseRange_fragment_state_isFirstLineRef_listLabel_ruby_tateChuYoko_(self, v41, v54, v11, 0, fragment, state, 0, v53);
        sub_276DD1EBC(v54);
      }

      else
      {
        v42 = objc_msgSend_imageProvider(v13, v33, v34);
        if (v42)
        {
          v43 = sub_276D69474(fragment);
          v45 = v44;
          v47 = v46;
          CGContextTranslateCTM(self->_context, v43, v48);
          if ((*(fragment + 25) & 0x20) != 0)
          {
            CGContextTranslateCTM(self->_context, 0.0, v47);
            CGContextRotateCTM(self->_context, -1.57079633);
            objc_msgSend_drawImageInContext_rect_(v42, v50, self->_context, 0.0, 0.0, v47, v45);
          }

          else
          {
            objc_msgSend_drawImageInContext_rect_(v42, v49, self->_context, 0.0, 0.0, v45, v47);
          }
        }
      }

      CGContextRestoreGState(self->_context);
      objc_msgSend_endListLabel(v26, v51, v52);
    }
  }

LABEL_31:
}

- (void)drawLine:(TSWPLineRef *)line
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer drawLine:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v9, v4, v6, 1643, 0, "Abstract method not overridden by %{public}@", v8);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSWPRenderer drawLine:]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v18, *MEMORY[0x277CBE658], v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (void)drawLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint thickness:(double)thickness length:(double)length lineCount:(int64_t)count lineFragmentStart:(CGPoint)start isWavyUnderline:(BOOL)underline
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer drawLineFromPoint:toPoint:thickness:length:lineCount:lineFragmentStart:isWavyUnderline:]", underline, point.x, point.y, toPoint.x, toPoint.y, thickness, length, start.x, start.y);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v12, 1661, 0, "Abstract method not overridden by %{public}@", v14);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  v18 = MEMORY[0x277CBEAD8];
  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v23 = objc_msgSend_stringWithFormat_(v19, v22, @"Abstract method not overridden by %@: %s", v21, "[TSWPRenderer drawLineFromPoint:toPoint:thickness:length:lineCount:lineFragmentStart:isWavyUnderline:]");
  v25 = objc_msgSend_exceptionWithName_reason_userInfo_(v18, v24, *MEMORY[0x277CBE658], v23, 0);
  v26 = v25;

  objc_exception_throw(v25);
}

- (void)drawRun:(const __CTRun *)run glyphRange:(id)range
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer drawRun:glyphRange:]", range.var0, range.var1);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v7, 1669, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v13 = MEMORY[0x277CBEAD8];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v18 = objc_msgSend_stringWithFormat_(v14, v17, @"Abstract method not overridden by %@: %s", v16, "[TSWPRenderer drawRun:glyphRange:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v13, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (void)drawWordMarkingsAtStart:(double)start length:(double)length linePos:(double)pos
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer drawWordMarkingsAtStart:length:linePos:]", start, length, pos);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v8, 1679, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSWPRenderer drawWordMarkingsAtStart:length:linePos:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

- (void)translateLinePositionForLine:(TSWPLineRef *)line lineFragment:(const void *)fragment linePosition:(CGPoint)position
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRenderer translateLinePositionForLine:lineFragment:linePosition:]", fragment, position.x, position.y);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRenderer.mm");
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v8, 1689, 0, "Abstract method not overridden by %{public}@", v10);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v19 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v17, "[TSWPRenderer translateLinePositionForLine:lineFragment:linePosition:]");
  v21 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v20, *MEMORY[0x277CBE658], v19, 0);
  v22 = v21;

  objc_exception_throw(v21);
}

@end