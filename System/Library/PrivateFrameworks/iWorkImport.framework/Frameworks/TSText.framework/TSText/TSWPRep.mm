@interface TSWPRep
- ($10B7A9D486B2AF6DC4FEF2BBDFC96885)lineMetricsAtCharIndex:(SEL)index;
- ($10B7A9D486B2AF6DC4FEF2BBDFC96885)p_lineMetricsAtPoint:(SEL)point hitTestMode:(CGPoint)mode;
- ($A0518D7E1B760B4356DDA09493424C0D)wordMetricsAtCharIndex:(SEL)index;
- (BOOL)containsStartOfSelection:(id)selection;
- (BOOL)isOverflowing;
- (BOOL)isPointInSelectedArea:(CGPoint)area;
- (BOOL)p_doesRep:(id)rep containCharIndex:(unint64_t)index isStart:(BOOL)start;
- (BOOL)p_hasRenderableTextCommentsLookingForHighlights:(BOOL)highlights;
- (BOOL)p_invalidatePlatformViewOverChildRenderables;
- (BOOL)textIsVertical;
- (CGAffineTransform)transformToConvertNaturalToScaledRoot;
- (CGPoint)p_pinPoint:(CGPoint)point toRect:(CGRect)rect;
- (CGPoint)pinToClosestColumn:(CGPoint)column;
- (CGPoint)pinToNaturalBounds:(CGPoint)bounds andLastLineFragment:(BOOL)fragment;
- (CGRect)caretRect;
- (CGRect)caretRectForCharIndex:(unint64_t)index caretAffinity:(int64_t)affinity;
- (CGRect)caretRectForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge caretAffinity:(int64_t)affinity;
- (CGRect)caretRectForSelection:(id)selection;
- (CGRect)columnRectForRange:(_NSRange)range;
- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label;
- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range;
- (CGRect)labelRectForCharIndex:(unint64_t)index;
- (CGRect)naturalBoundsRectForHyperlinkField:(id)field;
- (CGRect)p_caretRectForSelection:(id)selection;
- (CGRect)p_convertNaturalRectToRotated:(CGRect)rotated repAngle:(double)angle;
- (CGRect)rectForSelection:(id)selection includeRuby:(BOOL)ruby includePaginatedAttachments:(BOOL)attachments;
- (CGRect)selectionRect;
- (NSArray)columns;
- (TSWPLayoutTarget)layout;
- (TSWPRep)initWithLayout:(id)layout canvas:(id)canvas;
- (TSWPStorage)storage;
- (_NSRange)dragRange;
- (_NSRange)range;
- (_NSRange)rangeOfDropCapAdornmentAtPoint:(CGPoint)point;
- (id)closestColumnForPoint:(CGPoint)point;
- (id)columnForCharIndex:(unint64_t)index;
- (id)footnoteMarkAttachmentAtPoint:(CGPoint)point;
- (id)footnoteReferenceAttachmentAtPoint:(CGPoint)point;
- (id)p_glyphRectsForRange:(_NSRange)range includingLabel:(BOOL)label;
- (id)p_hyperlinkAtPoint:(CGPoint)point;
- (id)rubyFieldAtPoint:(CGPoint)point;
- (id)smartFieldAtPoint:(CGPoint)point;
- (unint64_t)charCountOfGlyphStartingAtCharIndex:(unint64_t)index;
- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index;
- (unsigned)fontTraitsForRange:(_NSRange)range includingLabel:(BOOL)label;
- (void)dealloc;
- (void)drawInLayerContext:(CGContext *)context;
- (void)drawRubyInContext:(CGContext *)context rubyFieldStart:(unint64_t)start rubyGlyphRange:(_NSRange)range;
- (void)p_drawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles;
- (void)p_drawTextInLayer:(id)layer context:(CGContext *)context limitSelection:(id)selection rubyGlyphRange:(_NSRange)range renderMode:(unint64_t)mode suppressInvisibles:(BOOL)invisibles;
- (void)p_teardown;
- (void)performBlockOnTextLayers:(id)layers;
- (void)recursivelyDrawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles;
- (void)willBeRemoved;
@end

@implementation TSWPRep

- (TSWPRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  v22.receiver = self;
  v22.super_class = TSWPRep;
  v8 = [(TSDRep *)&v22 initWithLayout:layoutCopy canvas:canvasCopy];
  if (v8)
  {
    objc_opt_class();
    TSUCheckedClassAndProtocolCast();

    v11 = objc_msgSend_storage(v8, v9, v10, &unk_2886383A0);

    if (v11)
    {
      objc_msgSend_p_registerNotifications(v8, v12, v13);
      v14 = MEMORY[0x277D81490];
      *(v8 + 14) = *MEMORY[0x277D81490];
      *(v8 + 248) = *v14;
      v8[291] = 1;
      v17 = objc_msgSend_array(MEMORY[0x277CBEB18], v15, v16);
      v18 = *(v8 + 26);
      *(v8 + 26) = v17;

      if (objc_msgSend_isCanvasInteractive(canvasCopy, v19, v20))
      {
        v8[272] = 1;
        v8[310] = 1;
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_p_teardown(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSWPRep;
  [(TSDRep *)&v4 dealloc];
}

- (void)willBeRemoved
{
  objc_msgSend_p_teardown(self, a2, v2);
  v4.receiver = self;
  v4.super_class = TSWPRep;
  [(TSDRep *)&v4 willBeRemoved];
}

- (_NSRange)range
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = objc_msgSend_columns(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v18, v22, 16);
  v8 = 0;
  if (v7)
  {
    v9 = *v19;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          location = objc_msgSend_range(v12, length, v6);
        }

        else
        {
          v26.location = objc_msgSend_range(v12, length, v6);
          v26.length = v14;
          v24.location = v10;
          v24.length = v8;
          v15 = NSUnionRange(v24, v26);
          length = v15.length;
          location = v15.location;
        }

        v10 = location;
        v8 = length;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, length, &v18, v22, 16);
    }

    while (v7);
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = v10;
  v17 = v8;
  result.length = v17;
  result.location = v16;
  return result;
}

- (CGPoint)pinToNaturalBounds:(CGPoint)bounds andLastLineFragment:(BOOL)fragment
{
  fragmentCopy = fragment;
  y = bounds.y;
  x = bounds.x;
  v63 = *MEMORY[0x277D85DE8];
  objc_msgSend_naturalBounds(self, a2, fragment);
  objc_msgSend_p_pinPoint_toRect_(self, v8, v9, x, y, v10, v11, v12, v13);
  v53 = v17;
  v54 = v16.f64[0];
  v16.f64[1] = v17;
  v52 = v16;
  if (fragmentCopy)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = objc_msgSend_columns(self, v14, v15);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v58, v62, 16);
    if (v22)
    {
      v23 = *v59;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v59 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v58 + 1) + 8 * i);
          objc_msgSend_frameBounds(v25, v20, v21);
          v65.y = v53;
          v65.x = v54;
          if (CGRectContainsPoint(v66, v65))
          {
            v26 = objc_msgSend_lineCount(v25, v20, v21);
            if (v26)
            {
              objc_msgSend_boundsOfLineFragmentAtIndex_(v25, v27, v26 - 1);
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v37 = v36;
              if (v25)
              {
                objc_msgSend_transformToWP(v25, v28, v29);
                v38 = v55.f64[1];
                v39 = v56.f64[1];
                v40 = v56.f64[0];
                v41 = v57.f64[1];
                v50 = v57.f64[0];
                v51 = v55.f64[0];
              }

              else
              {
                v41 = 0.0;
                v39 = 0.0;
                v38 = 0.0;
                v50 = 0.0;
                v51 = 0.0;
                v40 = 0.0;
              }

              v67.origin.x = v31;
              v67.origin.y = v33;
              v67.size.width = v35;
              v67.size.height = v37;
              MaxY = CGRectGetMaxY(v67);
              if (v41 + v53 * v39 + v38 * v54 > MaxY)
              {
                if (v25)
                {
                  objc_msgSend_transformFromWP(v25, v42, v43);
                  v44 = v55;
                  v45 = v56;
                  v46 = v57;
                }

                else
                {
                  v46 = 0uLL;
                  v44 = 0uLL;
                  v45 = 0uLL;
                }

                v52 = vaddq_f64(v46, vmlaq_n_f64(vmulq_n_f64(v45, MaxY), v44, v50 + v53 * v40 + v51 * v54));
              }
            }

            goto LABEL_20;
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v58, v62, 16);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  v48 = v52.f64[1];
  v47 = v52.f64[0];
  result.y = v48;
  result.x = v47;
  return result;
}

- (CGPoint)pinToClosestColumn:(CGPoint)column
{
  y = column.y;
  x = column.x;
  v7 = objc_msgSend_closestColumnForPoint_(self, a2, v3);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_frameBounds(v7, v8, v9);
    objc_msgSend_p_pinPoint_toRect_(self, v11, v12, x, y, v13, v14, v15, v16);
    x = v17;
    y = v18;
  }

  v19 = x;
  v20 = y;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGRect)caretRect
{
  v4 = objc_msgSend_selection(self, a2, v2);
  objc_msgSend_caretRectForSelection_(self, v5, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)selectionRect
{
  v4 = objc_msgSend_selection(self, a2, v2);
  objc_msgSend_rectForSelection_includeRuby_includePaginatedAttachments_(self, v5, v4, 0, 0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)isPointInSelectedArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  v46 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_selection(self, a2, v3);
  if (v9)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = v9;
    v10 = objc_msgSend_columns(self, v7, v8);
    v33 = v10;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v40, v45, 16);
    if (v12)
    {
      selfCopy = self;
      v13 = *v41;
      v14 = 0x277CBE000uLL;
      do
      {
        v15 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v40 + 1) + 8 * v15);
          v17 = v14;
          v18 = objc_opt_new();
          v19 = v12;
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = sub_276DA5918;
          v39[3] = &unk_27A6F4488;
          v39[4] = v16;
          v39[5] = selfCopy;
          v39[6] = v18;
          objc_msgSend_enumerateRanges_(v9, v20, v39);
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v21 = v18;
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v35, v44, 16);
          if (v25)
          {
            v26 = *v36;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v36 != v26)
                {
                  objc_enumerationMutation(v21);
                }

                objc_msgSend_CGRectValue(*(*(&v35 + 1) + 8 * i), v23, v24);
                v47.x = x;
                v47.y = y;
                if (CGRectContainsPoint(v48, v47))
                {

                  v9 = v34;
                  v30 = 1;
                  v10 = v33;
                  goto LABEL_22;
                }
              }

              v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v35, v44, 16);
              v9 = v34;
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          ++v15;
          v12 = v19;
          v29 = v15 == v19;
          v10 = v33;
          v14 = v17;
        }

        while (!v29);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v28, &v40, v45, 16);
        v30 = 0;
      }

      while (v12);
    }

    else
    {
      v30 = 0;
    }

LABEL_22:
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (CGRect)rectForSelection:(id)selection includeRuby:(BOOL)ruby includePaginatedAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  rubyCopy = ruby;
  selectionCopy = selection;
  v11 = objc_msgSend_columns(self, v9, v10);
  objc_msgSend_boundsRectForSelection_columnArray_includeRuby_includePaginatedAttachments_(TSWPColumn, v12, selectionCopy, v11, rubyCopy, attachmentsCopy);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)naturalBoundsRectForHyperlinkField:(id)field
{
  fieldCopy = field;
  v7 = objc_msgSend_range(fieldCopy, v5, v6);
  v9 = objc_msgSend_selectionWithRange_(TSWPSelection, v8, v7, v8);
  objc_msgSend_rectForSelection_includeRuby_includePaginatedAttachments_(self, v10, v9, 0, 0);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)caretRectForCharIndex:(unint64_t)index caretAffinity:(int64_t)affinity
{
  v7 = [TSWPSelection alloc];
  v9 = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_(v7, v8, 8, index, 0, 0, affinity);
  objc_msgSend_p_caretRectForSelection_(self, v10, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)caretRectForCharIndex:(unint64_t)index leadingEdge:(BOOL)edge caretAffinity:(int64_t)affinity
{
  edgeCopy = edge;
  v9 = [TSWPSelection alloc];
  v12 = objc_msgSend_storage(self, v10, v11);
  IsLeadingEdge_storage = objc_msgSend_initWithType_range_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_storage_(v9, v13, 7, index, 0, 0, affinity, edgeCopy, v12);

  objc_msgSend_p_caretRectForSelection_(self, v15, IsLeadingEdge_storage);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- ($10B7A9D486B2AF6DC4FEF2BBDFC96885)p_lineMetricsAtPoint:(SEL)point hitTestMode:(CGPoint)mode
{
  y = mode.y;
  x = mode.x;
  memcpy(retstr, &unk_276FA8A20, sizeof($10B7A9D486B2AF6DC4FEF2BBDFC96885));
  v11 = objc_msgSend_closestColumnForPoint_(self, v9, v10, x, y);
  v17 = 0;
  v14 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_(v11, v12, 0, &v17 + 1, &v17, x, y);
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11)
    {
      objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v11, v13, v14, HIBYTE(v17));
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    memcpy(retstr, v16, sizeof($10B7A9D486B2AF6DC4FEF2BBDFC96885));
  }

  return result;
}

- ($10B7A9D486B2AF6DC4FEF2BBDFC96885)lineMetricsAtCharIndex:(SEL)index
{
  v6 = objc_msgSend_columnForCharIndex_(self, index, a4);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_lineMetricsAtCharIndex_allowEndOfLine_(v6, v7, a4, 0);
  }

  else
  {
    retstr->var7.ty = 0.0;
    *&retstr->var7.b = 0u;
    *&retstr->var7.d = 0u;
    *&retstr->var6.xHeight = 0u;
    *&retstr->var6.underlineThickness = 0u;
    *&retstr->var6.leadingAbove = 0u;
    *&retstr->var6.spaceAfter = 0u;
    *&retstr->var6.attachmentHeight = 0u;
    *&retstr->var6.capHeight = 0u;
    retstr->var4.size = 0u;
    *&retstr->var5 = 0u;
    *&retstr->var2.underlineThickness = 0u;
    retstr->var4.origin = 0u;
    *&retstr->var2.spaceAfter = 0u;
    *&retstr->var2.xHeight = 0u;
    *&retstr->var2.capHeight = 0u;
    *&retstr->var2.leadingAbove = 0u;
    *&retstr->var1 = 0u;
    *&retstr->var2.attachmentHeight = 0u;
    retstr->var0.origin = 0u;
    retstr->var0.size = 0u;
  }

  return result;
}

- ($A0518D7E1B760B4356DDA09493424C0D)wordMetricsAtCharIndex:(SEL)index
{
  *&retstr->var5 = xmmword_276FA8BA8;
  *&retstr->var6.b = unk_276FA8BB8;
  *&retstr->var6.d = xmmword_276FA8BC8;
  retstr->var6.ty = 0.0;
  retstr->var0.origin = xmmword_276FA8B68;
  retstr->var0.size = unk_276FA8B78;
  *&retstr->var1 = xmmword_276FA8B88;
  *&retstr->var3 = unk_276FA8B98;
  v7 = objc_msgSend_storage(self, index, a4);
  v9 = objc_msgSend_wordAtCharIndex_includePreviousWord_(v7, v8, a4, 0);
  v11 = v10;

  v13 = objc_msgSend_selectionWithRange_(TSWPSelection, v12, v9, v11);
  objc_msgSend_rectForSelection_includeRuby_includePaginatedAttachments_(self, v14, v13, 0, 0);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  retstr->var0.origin.x = v16;
  retstr->var0.origin.y = v18;
  retstr->var0.size.width = v20;
  retstr->var0.size.height = v22;
  v25 = objc_msgSend_storage(self, v23, v24);
  v27 = objc_msgSend_attachmentAtCharIndex_(v25, v26, a4);
  retstr->var5 = v27 != 0;

  memset(v30, 0, sizeof(v30));
  result = objc_msgSend_lineMetricsAtCharIndex_(self, v28, a4, 0, 0, 0, 0);
  retstr->var1 = 0.0;
  retstr->var2 = 0.0;
  retstr->var3 = 0.0;
  retstr->var4 = 0.0;
  retstr->var6 = *&v30[1];
  return result;
}

- (CGRect)caretRectForSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_msgSend_isInsertionPoint(selectionCopy, v5, v6))
  {
    objc_msgSend_p_caretRectForSelection_(self, v7, selectionCopy);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v13 = *(MEMORY[0x277CBF398] + 16);
    v15 = *(MEMORY[0x277CBF398] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)p_caretRectForSelection:(id)selection
{
  v34 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  if (objc_msgSend_type(selectionCopy, v9, v10) != 3 && objc_msgSend_type(selectionCopy, v11, v12) != 5)
  {
    v35.origin.x = v5;
    v35.origin.y = v6;
    v35.size.width = v7;
    v35.size.height = v8;
    if (CGRectIsNull(v35))
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = objc_msgSend_columns(self, v13, v14, 0);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v29, v33, 16);
      if (v18)
      {
        v19 = *v30;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v15);
            }

            objc_msgSend_caretRectForSelection_(*(*(&v29 + 1) + 8 * i), v17, selectionCopy);
            x = v36.origin.x;
            y = v36.origin.y;
            width = v36.size.width;
            height = v36.size.height;
            if (!CGRectIsNull(v36))
            {
              v5 = x;
              v6 = y;
              v7 = width;
              v8 = height;
              goto LABEL_14;
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v29, v33, 16);
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (BOOL)p_hasRenderableTextCommentsLookingForHighlights:(BOOL)highlights
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_range(self, a2, highlights);
  v7 = v6;
  v9 = objc_msgSend_columns(self, v6, v8);
  v12 = objc_msgSend_lastObject(v9, v10, v11);
  hasPartitionedAttachmentContinuationAt = objc_msgSend_hasPartitionedAttachmentContinuationAt_(v12, v13, 1);

  v17 = &v7[hasPartitionedAttachmentContinuationAt];
  if (!v17)
  {
    return 0;
  }

  v18 = objc_msgSend_canvas(self, v15, v16);
  v21 = v18;
  v22 = highlights ? objc_msgSend_shouldShowTextCommentHighlights(v18, v19, v20) : objc_msgSend_shouldShowComments(v18, v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v26 = objc_msgSend_storage(self, v24, v25);
  v28 = objc_msgSend_highlightsForSelectionRange_requireComment_(v26, v27, v5, v17, 0);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = v28;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v49, v53, 16);
  if (v33)
  {
    v34 = *v50;
    while (2)
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v50 != v34)
        {
          objc_enumerationMutation(v29);
        }

        v36 = *(*(&v49 + 1) + 8 * i);
        if (objc_msgSend_isCommentEmpty(v36, v31, v32, v49))
        {
          v37 = objc_msgSend_canvas(self, v31, v32);
          shouldShowTextCommentHighlights = objc_msgSend_shouldShowTextCommentHighlights(v37, v38, v39);

          if ((shouldShowTextCommentHighlights & 1) == 0)
          {
            continue;
          }
        }

        if ((objc_msgSend_isCommentEmpty(v36, v31, v32) & 1) == 0)
        {
          v43 = objc_msgSend_canvas(self, v41, v42);
          shouldShowComments = objc_msgSend_shouldShowComments(v43, v44, v45);

          if ((shouldShowComments & 1) == 0)
          {
            continue;
          }
        }

        v47 = 1;
        goto LABEL_20;
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v49, v53, 16);
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v47 = 0;
LABEL_20:

  return v47;
}

- (id)p_hyperlinkAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_opt_class();
  v8 = objc_msgSend_smartFieldAtPoint_(self, v6, v7, x, y);
  v9 = TSUDynamicCast();

  return v9;
}

- (void)performBlockOnTextLayers:(id)layers
{
  layersCopy = layers;
  v5 = 0;
  textLayers = self->_textLayers;
  v9 = layersCopy;
  v7 = 1;
  do
  {
    v8 = v7;
    if (textLayers[v5])
    {
      v9[2]();
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)drawInLayerContext:(CGContext *)context
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRep drawInLayerContext:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRep.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 2068, 0, "this method should never be called, and WP reps should never get a bitmap allocated");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)p_drawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles
{
  selectionCopy = selection;
  CGContextSaveGState(context);
  if (TSDCGContextIsShadowContext())
  {
    v10 = 3;
  }

  else
  {
    hasRenderableTextComments = objc_msgSend_p_hasRenderableTextComments(self, v8, v9);
    hasRenderableTextHighlights = objc_msgSend_p_hasRenderableTextHighlights(self, v12, v13);
    v15 = 3;
    if (hasRenderableTextComments)
    {
      v15 = 7;
    }

    if (hasRenderableTextHighlights)
    {
      v10 = v15 | 8;
    }

    else
    {
      v10 = v15;
    }
  }

  objc_msgSend_p_drawTextInLayer_context_limitSelection_rubyGlyphRange_renderMode_suppressInvisibles_(self, v8, 0, context, selectionCopy, *MEMORY[0x277D81490], *(MEMORY[0x277D81490] + 8), v10, invisibles);
  CGContextRestoreGState(context);
}

- (void)recursivelyDrawInContext:(CGContext *)context limitSelection:(id)selection suppressInvisibles:(BOOL)invisibles
{
  invisiblesCopy = invisibles;
  v43 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  objc_msgSend_p_drawInContext_limitSelection_suppressInvisibles_(self, v9, context, selectionCopy, invisiblesCopy);
  v37 = objc_msgSend_storage(self, v10, v11);
  if (!v37)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSWPRep recursivelyDrawInContext:limitSelection:suppressInvisibles:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRep.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 2098, 0, "invalid nil value for '%{public}s'", "storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = objc_msgSend_childReps(self, v12, v13);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v38, v42, 16);
  if (v25)
  {
    v26 = *v39;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v38 + 1) + 8 * i);
        if (selectionCopy)
        {
          v29 = objc_msgSend_info(*(*(&v38 + 1) + 8 * i), v23, v24);
          v32 = objc_msgSend_owningAttachment(v29, v30, v31);
          CharIndexForAttachment = objc_msgSend_findCharIndexForAttachment_(v37, v33, v32);

          if (!objc_msgSend_containsCharacterAtIndex_(selectionCopy, v35, CharIndexForAttachment))
          {
            continue;
          }
        }

        CGContextSaveGState(context);
        objc_msgSend_recursivelyDrawInContext_keepingChildrenPassingTest_(v28, v36, context, 0);
        CGContextRestoreGState(context);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v38, v42, 16);
    }

    while (v25);
  }
}

- (void)drawRubyInContext:(CGContext *)context rubyFieldStart:(unint64_t)start rubyGlyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v10 = objc_msgSend_storage(self, a2, context);
  v12 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(v10, v11, start, 7, &v18);

  if (v19)
  {
    CGContextSaveGState(context);
    v13 = [TSWPSelection alloc];
    v15 = objc_msgSend_initWithRange_(v13, v14, v18, v19);
    v17 = 0;
    objc_msgSend_p_drawTextInLayer_context_limitSelection_rubyGlyphRange_renderMode_suppressInvisibles_(self, v16, 0, context, v15, location, length, 3, v17);
    CGContextRestoreGState(context);
  }
}

- (BOOL)p_invalidatePlatformViewOverChildRenderables
{
  v5 = objc_msgSend_platformViewOverRenderableNeedsUpdate(self, a2, v2);
  if ((v5 & 1) == 0)
  {
    objc_msgSend_setPlatformViewOverRenderableNeedsUpdate_(self, v4, 1);
  }

  return v5 ^ 1;
}

- (id)smartFieldAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend_layout(self, a2, v3);
  if (!objc_msgSend_layoutIsValid(v7, v8, v9))
  {
    v22 = 0;
    goto LABEL_5;
  }

  v12 = objc_msgSend_storage(self, v10, v11);
  hasSmartFields = objc_msgSend_hasSmartFields(v12, v13, v14);

  if (hasSmartFields)
  {
    v7 = objc_msgSend_layout(self, v16, v17);
    v20 = objc_msgSend_columns(v7, v18, v19);
    v22 = objc_msgSend_smartFieldWithAttributeKind_inColumnArray_atPoint_(TSWPColumn, v21, 6, v20, x, y);

LABEL_5:
    goto LABEL_7;
  }

  v22 = 0;
LABEL_7:

  return v22;
}

- (id)rubyFieldAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend_layout(self, a2, v3);
  IsValid = objc_msgSend_layoutIsValid(v7, v8, v9);

  if (IsValid)
  {
    v13 = objc_msgSend_layout(self, v11, v12);
    v16 = objc_msgSend_columns(v13, v14, v15);
    v18 = objc_msgSend_smartFieldWithAttributeKind_inColumnArray_atPoint_(TSWPColumn, v17, 7, v16, x, y);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (_NSRange)rangeOfDropCapAdornmentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = MEMORY[0x277D81490];
  v8 = *MEMORY[0x277D81490];
  v9 = *(MEMORY[0x277D81490] + 8);
  v10 = objc_msgSend_layout(self, a2, v3);
  IsValid = objc_msgSend_layoutIsValid(v10, v11, v12);

  if (IsValid)
  {
    v16 = objc_msgSend_layout(self, v14, v15);
    v18 = objc_msgSend_charIndexFromPoint_hitTestMode_isAtEndOfLine_leadingEdge_inLayoutTarget_(TSWPColumn, v17, 13, 0, 0, v16, x, y);

    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = objc_msgSend_storage(self, v19, v20);
      v8 = objc_msgSend_rangeOfDropCapAtCharIndex_(v21, v22, v18);
      v9 = v23;

      if (v18 < v8 || v18 - v8 >= v9)
      {
        v8 = *v7;
        v9 = v7[1];
      }
    }
  }

  v24 = v8;
  v25 = v9;
  result.length = v25;
  result.location = v24;
  return result;
}

- (id)footnoteMarkAttachmentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend_layout(self, a2, v3);
  IsValid = objc_msgSend_layoutIsValid(v7, v8, v9);

  if (IsValid)
  {
    v13 = objc_msgSend_layout(self, v11, v12);
    v16 = objc_msgSend_columns(v13, v14, v15);
    v18 = objc_msgSend_footnoteMarkAttachmentInColumnArray_atPoint_(TSWPColumn, v17, v16, x, y);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)footnoteReferenceAttachmentAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend_layout(self, a2, v3);
  IsValid = objc_msgSend_layoutIsValid(v7, v8, v9);

  if (IsValid)
  {
    v13 = objc_msgSend_layout(self, v11, v12);
    v16 = objc_msgSend_columns(v13, v14, v15);
    v18 = objc_msgSend_footnoteReferenceAttachmentInColumnArray_atPoint_(TSWPColumn, v17, v16, x, y);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)closestColumnForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_msgSend_layout(self, a2, v3);
  v9 = objc_msgSend_columns(v6, v7, v8);
  v11 = objc_msgSend_closestColumnInColumnsArray_forPoint_ignoreEmptyColumns_ignoreDrawableOnlyColumns_(TSWPColumn, v10, v9, 1, 1, x, y);

  return v11;
}

- (id)columnForCharIndex:(unint64_t)index
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_storage(self, a2, index);
  v8 = objc_msgSend_range(v5, v6, v7);
  v10 = v9;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = objc_msgSend_layout(self, v11, v12, 0);
  v16 = objc_msgSend_columns(v13, v14, v15);

  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v34, 16);
  if (v20)
  {
    v21 = *v31;
    v22 = v8 + v10;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v30 + 1) + 8 * i);
        v25 = objc_msgSend_range(v24, v18, v19);
        if ((index < v25 || index - v25 >= v18) && (&v18[v25] != index || v22 != index))
        {
          continue;
        }

        v28 = v24;
        goto LABEL_20;
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v30, v34, 16);
      v28 = 0;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_20:

  return v28;
}

- (BOOL)containsStartOfSelection:(id)selection
{
  selectionCopy = selection;
  if (objc_msgSend_isInsertionPoint(selectionCopy, v5, v6))
  {
    v9 = objc_msgSend_start(selectionCopy, v7, v8);
    v12 = objc_msgSend_range(self, v10, v11);
    if (v9 == v12)
    {
      isOverflowing = objc_msgSend_caretLFAffinity(selectionCopy, v13, v14) == 0;
      goto LABEL_20;
    }

    v24 = &v13[v12];
    if (v12 < v9 && v9 < v24 || v9 == v24 && (objc_msgSend_caretLFAffinity(selectionCopy, v13, v14) == 1 || (objc_msgSend_storage(self, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend_length(v27, v28, v29), v27, v9 == v30)))
    {
      isOverflowing = 1;
      goto LABEL_20;
    }

    if (v24 < v9)
    {
      isOverflowing = objc_msgSend_isOverflowing(self, v13, v14);
      goto LABEL_20;
    }

LABEL_19:
    isOverflowing = 0;
    goto LABEL_20;
  }

  if (!objc_msgSend_isRange(selectionCopy, v7, v8))
  {
    goto LABEL_19;
  }

  v18 = objc_msgSend_start(selectionCopy, v16, v17);
  v21 = objc_msgSend_range(self, v19, v20);
  isOverflowing = v18 >= v21 && v18 - v21 < v22;
LABEL_20:

  return isOverflowing;
}

- (BOOL)p_doesRep:(id)rep containCharIndex:(unint64_t)index isStart:(BOOL)start
{
  startCopy = start;
  v7 = objc_msgSend_range(rep, a2, rep);
  if (startCopy && v7 <= index)
  {
    return v7 + v8 > index;
  }

  v10 = v7 + v8 >= index;
  if (v7 >= index)
  {
    v10 = 0;
  }

  return !startCopy && v10;
}

- (TSWPLayoutTarget)layout
{
  v5.receiver = self;
  v5.super_class = TSWPRep;
  layout = [(TSDRep *)&v5 layout];
  objc_opt_class();
  v3 = TSUCheckedClassAndProtocolCast();

  return v3;
}

- (TSWPStorage)storage
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  if (v6)
  {
    v9 = objc_msgSend_storage(v6, v7, v8);
  }

  else
  {
    objc_opt_class();
    v12 = objc_msgSend_info(self, v10, v11);
    v9 = TSUCheckedDynamicCast();
  }

  return v9;
}

- (NSArray)columns
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_columns(v3, v4, v5);

  return v6;
}

- (CGRect)labelRectForCharIndex:(unint64_t)index
{
  v4 = objc_msgSend_columns(self, a2, index);
  objc_msgSend_labelRectForCharIndex_withColumns_(TSWPColumn, v5, index, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)columnRectForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_msgSend_columns(self, a2, range.location);
  objc_msgSend_columnRectForRange_withColumns_(TSWPColumn, v6, location, length, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)glyphRectForRange:(_NSRange)range includingLabel:(BOOL)label
{
  v28 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  objc_msgSend_p_glyphRectsForRange_includingLabel_(self, a2, range.location, range.length, label);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v8 = v24 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v12)
  {
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_CGRectValue(*(*(&v23 + 1) + 8 * v14), v10, v11, v23);
        v32.origin.x = v15;
        v32.origin.y = v16;
        v32.size.width = v17;
        v32.size.height = v18;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v30 = CGRectUnion(v29, v32);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v23, v27, 16);
    }

    while (v12);
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)p_glyphRectsForRange:(_NSRange)range includingLabel:(BOOL)label
{
  labelCopy = label;
  v25 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, range.location);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_columns(self, v7, v8, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        objc_msgSend_range(v16, v11, v12);
        v12 = TSUIntersectionRangeWithEdge();
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = objc_msgSend_glyphRectsForRange_includingLabel_(v16, v11, v12, v11, labelCopy);
          objc_msgSend_addObjectsFromArray_(v6, v18, v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v20, v24, 16);
    }

    while (v13);
  }

  return v6;
}

- (unsigned)fontTraitsForRange:(_NSRange)range includingLabel:(BOOL)label
{
  labelCopy = label;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_columns(self, a2, range.location, 0);
  v7 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        objc_msgSend_range(v13, v8, v9);
        v9 = TSUIntersectionRangeWithEdge();
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = objc_msgSend_fontTraitsForRange_includingLabel_(v13, v8, v9, v8, labelCopy);
          if (v7)
          {
            if (v7 != v14)
            {
              v7 = (v14 | v7) & 0xFFFFFFF;
            }
          }

          else
          {
            v7 = v14;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
    }

    while (v10);
  }

  return v7;
}

- (unint64_t)charCountOfGlyphStartingAtCharIndex:(unint64_t)index
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = objc_msgSend_columns(self, a2, index, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v29, 16);
  if (v8)
  {
    v9 = *v26;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      v12 = objc_msgSend_range(v11, v6, v7);
      v13 = index < v12 || index - v12 >= v6;
      if (!v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v25, v29, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }

    v14 = objc_msgSend_lineFragmentArray(v11, v6, v7);
    v15 = **v14;
    v16 = (*v14)[1];
    if (v15 == v16)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v17 = (*(*v15 + 24) < 0 ? MEMORY[0x277D81490] : *v15);
      v20 = v17;
      v18 = *v17;
      v19 = v20[1];
      v13 = index >= v18;
      v21 = index - v18;
      if (v13 && v21 < v19)
      {
        break;
      }

      v15 += 2;
      if (v15 == v16)
      {
        goto LABEL_24;
      }
    }

    v24 = sub_276D6AF00(*v15, index);
  }

  else
  {
LABEL_24:
    v24 = 0;
  }

  return v24;
}

- (unint64_t)glyphCountForRubyFieldAtCharIndex:(unint64_t)index
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = objc_msgSend_columns(self, a2, index, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_msgSend_range(v11, v6, v7);
        if (index >= v12 && index - v12 < v6)
        {
          v14 = objc_msgSend_glyphCountForRubyFieldAtCharIndex_(v11, v6, index);
          goto LABEL_14;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v16, v20, 16);
    }

    while (v8);
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:

  return v14;
}

- (CGRect)glyphRectForRubyFieldAtCharIndex:(unint64_t)index glyphRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v34 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = objc_msgSend_columns(self, a2, index, 0);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v33, 16);
  if (v15)
  {
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = objc_msgSend_range(v18, v13, v14);
        if (index >= v19 && index - v19 < v13)
        {
          objc_msgSend_glyphRectForRubyFieldAtCharIndex_glyphRange_(v18, v13, index, location, length);
          v7 = v21;
          v8 = v22;
          v9 = v23;
          v10 = v24;
          goto LABEL_13;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v29, v33, 16);
    }

    while (v15);
  }

LABEL_13:

  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)p_convertNaturalRectToRotated:(CGRect)rotated repAngle:(double)angle
{
  height = rotated.size.height;
  width = rotated.size.width;
  y = rotated.origin.y;
  x = rotated.origin.x;
  IsVertical = objc_msgSend_textIsVertical(self, a2, v4);
  if (IsVertical)
  {
    angle = fmod(angle + 270.0, 360.0);
  }

  if ((angle <= 45.0 || angle >= 135.0) && (angle <= 225.0 || angle >= 315.0))
  {
    v11 = width;
    v12 = height;
  }

  else
  {
    v11 = height;
    v12 = width;
  }

  v13 = hypot(v12, v11);
  if (IsVertical)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (IsVertical)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = x + width;
  if (angle <= 180.0)
  {
    v16 = x;
  }

  v17 = angle >= 270.0 || angle <= 90.0;
  v18 = y + height;
  if (v17)
  {
    v18 = y;
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (BOOL)isOverflowing
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  LOBYTE(v5) = objc_msgSend_isOverflowing(v6, v7, v8);
  return v5;
}

- (CGPoint)p_pinPoint:(CGPoint)point toRect:(CGRect)rect
{
  TSUClampPointInRect();
  result.y = v5;
  result.x = v4;
  return result;
}

- (BOOL)textIsVertical
{
  v3 = objc_msgSend_layout(self, a2, v2);
  IsVertical = objc_msgSend_textIsVertical(v3, v4, v5);

  return IsVertical;
}

- (void)p_teardown
{
  if (!self->_tornDown)
  {
    objc_msgSend_p_unregisterNotifications(self, a2, v2);
    objc_msgSend_removeAllAnimations(self->_floatingCaretLayer, v4, v5);
    objc_msgSend_removeFromSuperlayer(self->_floatingCaretLayer, v6, v7);
    self->_tornDown = 1;
  }

  floatingCaretLayer = self->_floatingCaretLayer;
  self->_floatingCaretLayer = 0;

  searchReferences = self->_searchReferences;
  self->_searchReferences = 0;

  primaryFindResultSearchReference = self->_primaryFindResultSearchReference;
  self->_primaryFindResultSearchReference = 0;

  objc_msgSend_setDelegate_(self->_selectionHighlightLayer, v11, 0);
  selectionHighlightLayer = self->_selectionHighlightLayer;
  self->_selectionHighlightLayer = 0;

  lastSelection = self->_lastSelection;
  self->_lastSelection = 0;

  objc_msgSend_setDelegate_(self->_markHighlightLayer, v14, 0);
  markHighlightLayer = self->_markHighlightLayer;
  self->_markHighlightLayer = 0;

  objc_msgSend_setDelegate_(self->_smartFieldHighlightLayer, v16, 0);
  smartFieldHighlightLayer = self->_smartFieldHighlightLayer;
  self->_smartFieldHighlightLayer = 0;

  objc_msgSend_setDelegate_(self->_selectionLineLayers[0], v18, 0);
  v19 = self->_selectionLineLayers[0];
  self->_selectionLineLayers[0] = 0;

  objc_msgSend_setDelegate_(self->_selectionLineLayers[1], v20, 0);
  v21 = self->_selectionLineLayers[1];
  self->_selectionLineLayers[1] = 0;

  objc_msgSend_setDelegate_(self->_caretLayer, v22, 0);
  caretLayer = self->_caretLayer;
  self->_caretLayer = 0;

  secondaryHighlights = self->_secondaryHighlights;
  self->_secondaryHighlights = 0;

  defaultSecondaryHighlight = self->_defaultSecondaryHighlight;
  self->_defaultSecondaryHighlight = 0;

  v26 = MEMORY[0x277D82BB8];

  MEMORY[0x2821F9670](v26, sel_cancelPreviousPerformRequestsWithTarget_, self);
}

- (void)p_drawTextInLayer:(id)layer context:(CGContext *)context limitSelection:(id)selection rubyGlyphRange:(_NSRange)range renderMode:(unint64_t)mode suppressInvisibles:(BOOL)invisibles
{
  v91 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  selectionCopy = selection;
  v10 = TSDCGContextGetPdfTagger();
  v11 = TSUProtocolCast();

  v67 = v11;
  v12 = v11;
  selfCopy2 = self;
  objc_msgSend_beginTextStorageChunk_limitSelection_(v12, v14, self, selectionCopy, &unk_28866BEF0);
  v17 = objc_msgSend_canvas(self, v15, v16);
  v79 = objc_msgSend_textRendererForLayer_context_(v17, v18, layerCopy, context);

  v70 = *(MEMORY[0x277D81490] + 8);
  v71 = *MEMORY[0x277D81490];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = objc_msgSend_columns(self, v19, v20);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v86, v90, 16);
  if (v22)
  {
    v69 = *v87;
    do
    {
      v75 = v22;
      for (i = 0; i != v75; ++i)
      {
        if (*v87 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v86 + 1) + 8 * i);
        v27 = objc_msgSend_layout(selfCopy2, v23, v24);
        v30 = objc_msgSend_interiorClippingPath(v27, v28, v29);
        v84 = objc_msgSend_copy(v30, v31, v32);

        if (v26)
        {
          objc_msgSend_transformToWP(v26, v33, v34);
        }

        else
        {
          memset(v85, 0, sizeof(v85));
        }

        objc_msgSend_transformUsingAffineTransform_(v84, v33, v85);
        objc_msgSend_setInteriorClippingPath_(v79, v35, v84);
        v82 = objc_msgSend_rangeArray(TSWPMutableRangeArray, v36, v37);
        v83 = objc_msgSend_rangeArray(TSWPMutableRangeArray, v38, v39);
        v78 = v26;
        if (layerCopy)
        {
          v76 = objc_msgSend_selection(selfCopy2, v40, v41);
          v77 = v76;
        }

        else
        {
          v77 = 0;
        }

        location = selfCopy2->_dragRange.location;
        length = selfCopy2->_dragRange.length;
        v44 = objc_msgSend_canvas(selfCopy2, v40, v41);
        isCanvasInteractive = objc_msgSend_isCanvasInteractive(v44, v45, v46);
        v48 = selfCopy2->_suppressedMisspellingRange.location;
        v49 = selfCopy2->_suppressedMisspellingRange.length;
        v52 = objc_msgSend_canvas(selfCopy2, v50, v51);
        shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v52, v53, v54);
        v58 = objc_msgSend_layout(self, v56, v57);
        v61 = objc_msgSend_pageCount(v58, v59, v60);
        LOBYTE(v66) = invisibles;
        LOBYTE(v65) = ((mode & 0x20) != 0) | shouldSuppressBackgrounds;
        LOWORD(v64) = isCanvasInteractive;
        objc_msgSend_renderWithRenderer_currentSelection_limitSelection_listRange_rubyGlyphRange_isCanvasInteractive_isInDrawingMode_suppressedMisspellingRange_blackAndWhite_dictationInterpretations_autocorrections_markedRange_markedText_renderMode_pageCount_suppressInvisibles_currentCanvasSelection_(v78, v62, v79, v77, selectionCopy, location, length, range.location, range.length, v64, v48, v49, v65, v82, v83, v71, v70, 0, mode, v61, v66, 0);

        selfCopy2 = self;
        if (layerCopy)
        {
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v86, v90, 16);
    }

    while (v22);
  }

  objc_msgSend_endTextStorageChunk_(v67, v63, selfCopy2);
}

- (CGAffineTransform)transformToConvertNaturalToScaledRoot
{
  memset(&v20, 0, sizeof(v20));
  v6 = objc_msgSend_layout(self, a3, v3);
  v9 = v6;
  if (v6)
  {
    objc_msgSend_transformInRoot(v6, v7, v8);
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  v12 = objc_msgSend_canvas(self, v10, v11);
  objc_msgSend_viewScale(v12, v13, v14);
  v16 = v15;

  t1 = v20;
  CGAffineTransformMakeScale(&v18, v16, v16);
  return CGAffineTransformConcat(retstr, &t1, &v18);
}

- (_NSRange)dragRange
{
  p_dragRange = &self->_dragRange;
  location = self->_dragRange.location;
  length = p_dragRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end