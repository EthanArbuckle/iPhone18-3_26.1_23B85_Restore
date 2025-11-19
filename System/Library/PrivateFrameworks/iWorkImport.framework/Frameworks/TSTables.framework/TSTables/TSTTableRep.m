@interface TSTTableRep
+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5;
+ (unint64_t)p_countOfIdenticalCellsBetweenOutgoingTableInfo:(id)a3 incomingTableInfo:(id)a4;
- (BOOL)hasVisibleCellWarnings;
- (BOOL)isDraggable;
- (BOOL)isFullyVisibleWithBorder:(int)a3;
- (BOOL)layoutDirectionIsLeftToRight;
- (BOOL)mustDrawOnMainThreadForInteractiveCanvas;
- (BOOL)p_drawingCheckboxOrRatingInCell:(id)a3 cellID:(TSUCellCoord)a4;
- (BOOL)p_isTableRenderingRotated;
- (BOOL)p_prefersHDRRendering;
- (BOOL)p_prefersHDRRenderingForFill:(id)a3;
- (BOOL)tappedControlCellAtUnscaledPoint:(CGPoint)a3;
- (BOOL)tappedStockCellAtUnscaledPoint:(CGPoint)a3;
- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithBounds:(SEL)a3 inCell:(CGRect)a4;
- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithColumn:(SEL)a3 cell:(id)a4 cellID:(id)a5;
- (CGAffineTransform)transformToCanvas;
- (CGRect)boundsForCellSelection:(TSUCellCoord)a3;
- (CGRect)canvasBoundsForCellRange:(TSUCellRect)a3;
- (CGRect)canvasVisibleRect;
- (CGRect)deviceBoundsForCellRange:(TSUCellRect)a3;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)naturalBoundsRectForHyperlinkField:(id)a3;
- (CGRect)p_alignedLayerFrameForLayoutSpace:(id)a3 transform:(CGAffineTransform *)a4;
- (CGRect)p_contentFrameWithCellID:(TSUCellCoord)a3;
- (CGRect)p_getImageFrameForAnimation:(id)a3;
- (CGRect)p_naturalBoundsRectForHyperlinkField:(id)a3 cellID:(TSUCellCoord)a4 column:(id)a5 contentFrame:(CGRect)a6 horizontalAlignmentTransform:(CGAffineTransform *)a7;
- (CGRect)p_scaledCanvasFrame;
- (CGRect)searchSelectionBounds;
- (NSArray)viewsOverlappingTableCells;
- (TSTAnimation)currentAnimation;
- (TSTCanvasReferenceController)canvasReferenceController;
- (TSTCellSelection)selection;
- (TSTLayoutEngine)layoutEngine;
- (TSTSelectionDragController)cellDragController;
- (TSTTableAnimationController)animationController;
- (TSTTableRep)initWithLayout:(id)a3 canvas:(id)a4;
- (TSUCellCoord)logicalCellIDForUnscaledCanvasPoint:(CGPoint)a3;
- (TSUCellCoord)p_cellIDForHyperlinkField:(id)a3;
- (TSUCellRect)zoomToEditVisibleCellRange;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)attachmentCellRepForCellID:(TSUCellCoord)a3 optionalCell:(id)a4;
- (id)hyperlinkRegions;
- (id)p_cellAtUnscaledPoint:(CGPoint)a3;
- (id)p_columnForCellID:(TSUCellCoord)a3 useCache:(BOOL)a4;
- (id)p_fontColorAtCellID:(TSUCellCoord)a3 cell:(id)a4;
- (id)textureForDescription:(id)a3;
- (void)contentsRectForCellRangeAcrossSpaces:(TSUCellRect)a3 contentsCenterInfo:(id *)a4 canvasFrame:(CGRect *)a5 contentsRect:(CGRect *)a6;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)p_addTexture:(id)a3 forAnimationStage:(unint64_t)a4 isFinal:(BOOL)a5 description:(id)a6;
- (void)p_drawAnimation:(id)a3 inContext:(CGContext *)a4;
- (void)p_drawBackgroundFillInLayoutSpace:(id)a3 gridRange:(id)a4 context:(CGContext *)a5;
- (void)p_drawCheckboxOrRatingInContext:(CGContext *)a3 viewScale:(double)a4 contentFrame:(CGRect)a5 cell:(id)a6 cellID:(TSUCellCoord)a7;
- (void)p_drawFinalElements:(id)a3 inContext:(CGContext *)a4;
- (void)p_drawGroupingArrowInContext:(CGContext *)a3 contentFrame:(CGRect)a4 cell:(id)a5 cellID:(TSUCellCoord)a6 groupingArrowState:(int64_t)a7 alignedClipFrame:(CGRect)a8 verticalAlignment:(int)a9 wpColumn:(id)a10;
- (void)p_drawLayoutSpace:(id)a3 dirtyRect:(CGRect)a4 inContext:(CGContext *)a5;
- (void)p_drawLayoutSpace:(id)a3 range:(TSUCellRect)a4 inContext:(CGContext *)a5;
- (void)p_drawTableNameInContext:(CGContext *)a3 animation:(id)a4;
- (void)p_lockAndDrawLayoutSpace:(id)a3 checkFrameHasWidthAndHeight:(BOOL)a4 dirtyRect:(CGRect)a5 inContext:(CGContext *)a6;
- (void)p_removeObservers;
- (void)popAnimation;
- (void)pushAnimation:(id)a3;
- (void)recursivelyDrawInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4;
- (void)setTableChrome:(id)a3;
- (void)updateChildrenFromLayout;
- (void)updateFromLayout;
- (void)validateStrokesInEditingSpillingTextRange;
- (void)validateVisibleRect;
- (void)willBeRemoved;
@end

@implementation TSTTableRep

- (BOOL)layoutDirectionIsLeftToRight
{
  v5 = objc_msgSend_tableLayout(self, a2, v2, v3, v4);
  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v5, v6, v7, v8, v9);

  return IsLeftToRight;
}

- (TSTLayoutEngine)layoutEngine
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_layoutEngine(v5, v6, v7, v8, v9);

  return v10;
}

- (CGAffineTransform)transformToCanvas
{
  objc_msgSend_frameInUnscaledCanvas(self, a3, v3, v4, v5);

  return CGAffineTransformMakeTranslation(retstr, v7, v8);
}

- (CGRect)canvasVisibleRect
{
  v5 = objc_msgSend_canvas(self, a2, v2, v3, v4);
  objc_msgSend_visibleUnscaledRectForClippingReps(v5, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (TSTCellSelection)selection
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  isDynamicallyChangingSelection = objc_msgSend_isDynamicallyChangingSelection(v6, v7, v8, v9, v10);

  if (isDynamicallyChangingSelection)
  {
    v16 = objc_msgSend_layoutEngine(self, v12, v13, v14, v15);
    v21 = objc_msgSend_dynamicSelection(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_editorSelection(self, v12, v13, v14, v15);
  }

  return v21;
}

- (id)attachmentCellRepForCellID:(TSUCellCoord)a3 optionalCell:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_tableLayout(self, v7, v8, v9, v10);
  v14 = objc_msgSend_attachmentCellLayoutForCellID_optionalCell_(v11, v12, *&a3, v6, v13);

  if (v14)
  {
    objc_opt_class();
    v19 = objc_msgSend_canvas(self, v15, v16, v17, v18);
    v23 = objc_msgSend_repForLayout_(v19, v20, v14, v21, v22);
    v24 = TSUCheckedDynamicCast();
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)hasVisibleCellWarnings
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  hasImportWarnings = objc_msgSend_hasImportWarnings(v6, v7, v8, v9, v10);

  if (hasImportWarnings)
  {
    v16 = 1;
  }

  else
  {
    v17 = objc_msgSend_tableLayout(self, v12, v13, v14, v15);
    v46 = sub_2211BB074(v17);

    v22 = objc_msgSend_invalidRegion(TSTCellRegion, v18, v19, v20, v21);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v23 = v46;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v52, v56, 16);
    if (v29)
    {
      v30 = *v53;
      do
      {
        v31 = 0;
        v32 = v22;
        do
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v23);
          }

          v33 = *(*(&v52 + 1) + 8 * v31);
          v34 = objc_msgSend_tableLayout(self, v25, v26, v27, v28, v46);
          v35 = sub_2211BA768(v34, v33);
          v37 = v36;

          v22 = objc_msgSend_region_addingRange_(TSTCellRegion, v38, v32, v35, v37);

          ++v31;
          v32 = v22;
        }

        while (v29 != v31);
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v52, v56, 16);
      }

      while (v29);
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v43 = objc_msgSend_tableInfo(self, v39, v40, v41, v42);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2216E4E64;
    v47[3] = &unk_27845DD70;
    v47[4] = &v48;
    objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v43, v44, v22, 0, 0x1000000, v47);

    v16 = *(v49 + 24);
    _Block_object_dispose(&v48, 8);
  }

  return v16 & 1;
}

- (NSArray)viewsOverlappingTableCells
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v2;
}

- (BOOL)p_isTableRenderingRotated
{
  v5 = objc_msgSend_layout(self, a2, v2, v3, v4);
  v10 = v5;
  if (v5)
  {
    objc_msgSend_transformInRoot(v5, v6, v7, v8, v9);
  }

  TSUTransformAngleInRadians();
  return v11 != 0.0;
}

- (CGRect)layerFrameInScaledCanvas
{
  v6 = objc_msgSend_canvas(self, a2, v2, v3, v4);
  objc_msgSend_frameInUnscaledCanvas(self, v7, v8, v9, v10);
  objc_msgSend_convertUnscaledToBoundsRect_(v6, v11, v12, v13, v14);
  objc_msgSend_currentScreenScale(self, v15, v16, v17, v18);
  TSURoundedRectForScale();
  v20 = v19;
  v22 = v21;

  TSUCeilSize();
  v24 = v23;
  v26 = v25;
  v27 = v20;
  v28 = v22;
  result.size.height = v26;
  result.size.width = v24;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 dealloc];
}

- (void)p_removeObservers
{
  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v9, v6, self, v7, v8);
}

- (TSTTableRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = TSTTableRep;
  v12 = [(TSWPTextHostRep *)&v41 initWithLayout:v6 canvas:v7];
  if (v12)
  {
    v13 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v8, v9, v10, v11);
    objc_msgSend_contentsScale(v7, v14, v15, v16, v17);
    v12->_currentScreenScale = v18;
    v12->_dragByHandleOnly = objc_msgSend_dragByHandleOnly(v13, v19, v20, v21, v22);
    v12->_selectionUsesBezierPath = objc_msgSend_selectionUsesBezierPath(v13, v23, v24, v25, v26);
    v12->_selectsCellOnInitialTap = objc_msgSend_selectsCellOnInitialTap(v13, v27, v28, v29, v30);
    v12->_usesSelectionChromeResizer = objc_msgSend_usesSelectionChromeResizer(v13, v31, v32, v33, v34);
    v35 = objc_alloc_init(MEMORY[0x277CBEB98]);
    visibleFillKnobs = v12->_visibleFillKnobs;
    v12->_visibleFillKnobs = v35;

    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    animationStack = v12->_animationStack;
    v12->_animationStack = v37;

    v40.receiver = v12;
    v40.super_class = TSTTableRep;
    [(TSWPTextHostRep *)&v40 finishInit];
  }

  return v12;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 willBeRemoved];
}

- (void)updateChildrenFromLayout
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 updateChildrenFromLayout];
}

- (BOOL)isDraggable
{
  v5 = objc_msgSend_info(self, a2, v2, v3, v4);
  isInlineWithText = objc_msgSend_isInlineWithText(v5, v6, v7, v8, v9);

  return isInlineWithText ^ 1;
}

- (CGRect)deviceBoundsForCellRange:(TSUCellRect)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)canvasBoundsForCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v7 = objc_msgSend_canvas(self, a2, *&a3.origin, *&a3.size, v3);
  objc_msgSend_contentsScale(v7, v8, v9, v10, v11);

  objc_msgSend_deviceBoundsForCellRange_(self, v12, origin, size, v13);

  TSUMultiplyRectScalar();
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)boundsForCellSelection:(TSUCellCoord)a3
{
  v7 = objc_msgSend_layout(self, a2, *&a3, v3, v4);
  v12 = objc_msgSend_geometry(v7, v8, v9, v10, v11);
  objc_msgSend_size(v12, v13, v14, v15, v16);

  if (a3.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.column;
  }

  if (a3.row == 0x7FFFFFFF)
  {
    v22 = 0xFFFFFFFF00000000;
  }

  else
  {
    v22 = *&a3 << 32;
  }

  v23 = objc_msgSend_tableLayout(self, v17, v18, v19, v20);
  v24 = sub_2211BC400(v23, v22 | column, ((v22 + 0x100000001) & 0xFFFFFFFF00000000 | column) - 0x100000000);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)contentsRectForCellRangeAcrossSpaces:(TSUCellRect)a3 contentsCenterInfo:(id *)a4 canvasFrame:(CGRect *)a5 contentsRect:(CGRect *)a6
{
  size = a3.size;
  origin = a3.origin;
  x = a5->origin.x;
  y = a5->origin.y;
  width = a5->size.width;
  height = a5->size.height;
  v15 = *(MEMORY[0x277D814E0] + 8);
  v109 = *MEMORY[0x277D814E0];
  v17 = *(MEMORY[0x277D814E0] + 16);
  v16 = *(MEMORY[0x277D814E0] + 24);
  v18 = objc_msgSend_tableLayout(self, a2, *&a3.origin, *&a3.size, a4);
  v23 = objc_msgSend_tableLayout(self, v19, v20, v21, v22);
  v28 = sub_2211B4394(v23, v24, v25, v26, v27);

  v33 = sub_2211B7AFC(v18, v29, v30, v31, v32);
  v38 = sub_2211B7AA0(v18, v34, v35, v36, v37);
  v43 = v38;
  if (origin != 0x7FFFFFFF && (origin & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(size) && size && v33 | v38)
  {
    v44 = objc_msgSend_canvas(self, v39, v40, v41, v42);
    objc_msgSend_viewScale(v44, v45, v46, v47, v48);
    v50 = v49;

    memset(&v111, 0, sizeof(v111));
    CGAffineTransformMakeScale(&v111, v50, v50);
    v112.origin.x = sub_2211B7C10(v18, v28);
    v110 = v111;
    v113 = CGRectApplyAffineTransform(v112, &v110);
    v114 = CGRectIntegral(v113);
    v106 = v114.origin.y;
    v107 = v114.origin.x;
    v104 = v114.size.width;
    v105 = v114.size.height;
    if (objc_msgSend_layoutDirectionIsLeftToRight(self, v51, v52, v53, v54))
    {
      if (!v43 || !sub_2211B82D0(v18) || a4 && a4->var1 <= 0.0)
      {
        goto LABEL_32;
      }

      v115.origin.x = x;
      v115.origin.y = y;
      v115.size.width = width;
      v115.size.height = height;
      MinX = CGRectGetMinX(v115);
      v116.origin.y = v106;
      v116.origin.x = v107;
      v116.size.width = v104;
      v116.size.height = v105;
      if (MinX >= CGRectGetMinX(v116))
      {
        goto LABEL_32;
      }

      v60 = objc_msgSend_cellRange(v43, v56, v57, v58, v59);
      v62 = sub_221119E0C(v60, v61, origin, size);
      v64 = v107 - x;
      if (HIDWORD(v63) && v63)
      {
        if (v62 == origin && ((v62 ^ origin) & 0x101FFFF00000000) == 0 && v63 == size || (v117.origin.x = x, v117.origin.y = y, v117.size.width = width, v117.size.height = height, MaxX = CGRectGetMaxX(v117), v118.origin.y = v106, v118.origin.x = v107, v118.size.width = v104, v118.size.height = v105, MaxX >= CGRectGetMinX(v118)))
        {
LABEL_32:
          v64 = width;
          goto LABEL_33;
        }

LABEL_31:
        v17 = 1.00000012;
LABEL_33:
        if (!v33 || !sub_2211B848C(v18) || a4 && a4->var4 <= 0.0 || (v125.origin.x = x, v125.origin.y = y, v125.size.width = v64, v125.size.height = height, MinY = CGRectGetMinY(v125), v126.origin.y = v106, v126.origin.x = v107, v126.size.width = v104, v126.size.height = v105, MinY >= CGRectGetMinY(v126)))
        {
LABEL_72:
          a5->origin.x = x;
          a5->origin.y = y;
          a5->size.width = v64;
          a5->size.height = height;
          a6->origin.x = v109;
          a6->origin.y = v15;
          a6->size.width = v17;
          a6->size.height = v16;
          goto LABEL_73;
        }

        v81 = objc_msgSend_cellRange(v33, v77, v78, v79, v80);
        v83 = sub_221119E0C(v81, v82, origin, size);
        if (HIDWORD(v84) && v84)
        {
          if (v83 != origin || ((v83 ^ origin) & 0x101FFFF00000000) != 0 || v84 != size)
          {
            v127.origin.x = x;
            v127.origin.y = y;
            v127.size.width = v64;
            v127.size.height = height;
            MaxY = CGRectGetMaxY(v127);
            v128.origin.y = v106;
            v128.origin.x = v107;
            v128.size.width = v104;
            v128.size.height = v105;
            if (MaxY < CGRectGetMinY(v128))
            {
              height = v106 - y;
              v16 = 1.00000012;
            }
          }

          goto LABEL_72;
        }

        v129.origin.x = x;
        v129.origin.y = y;
        v129.size.width = v64;
        v129.size.height = height;
        v86 = CGRectGetMaxY(v129);
        v130.origin.y = v106;
        v130.origin.x = v107;
        v130.size.width = v104;
        v130.size.height = v105;
        if (v86 >= CGRectGetMinY(v130))
        {
          if (a4 && a4->var0)
          {
            v87 = v106 - y;
            y = v106;
            var5 = a4->var5;
            if (v87 <= var5)
            {
              v15 = v87 / a4->var4;
            }

            else
            {
              var4 = a4->var4;
              if (height - v87 <= var5 + a4->var6)
              {
                v15 = 1.0 - (height - v87) / var4;
              }

              else
              {
                v15 = var5 / var4;
              }
            }
          }

          else
          {
            v87 = v106 - y;
            y = v106;
            v15 = v87 / height;
          }

          v16 = 1.0 - v15;
          height = height - v87;
          goto LABEL_72;
        }

        goto LABEL_58;
      }

      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      v90 = CGRectGetMaxX(v131);
      v132.origin.y = v106;
      v132.origin.x = v107;
      v132.size.width = v104;
      v132.size.height = v105;
      if (v90 >= CGRectGetMinX(v132))
      {
        if (a4 && a4->var0)
        {
          var2 = a4->var2;
          if (v64 <= var2)
          {
            v93 = v64 / a4->var1;
          }

          else
          {
            var1 = a4->var1;
            if (width - v64 <= var2 + a4->var3)
            {
              v93 = 1.0 - (width - v64) / var1;
            }

            else
            {
              v93 = var2 / var1;
            }
          }
        }

        else
        {
          v93 = v64 / width;
        }

        v109 = v93;
        v17 = 1.0 - v93;
        v64 = width - v64;
        x = v107;
        goto LABEL_33;
      }
    }

    else
    {
      if (!v43 || !sub_2211B82D0(v18) || a4 && a4->var1 <= 0.0)
      {
        goto LABEL_32;
      }

      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      v65 = CGRectGetMaxX(v119);
      v120.origin.y = v106;
      v120.origin.x = v107;
      v120.size.width = v104;
      v120.size.height = v105;
      if (v65 <= CGRectGetMaxX(v120))
      {
        goto LABEL_32;
      }

      v70 = objc_msgSend_cellRange(v43, v66, v67, v68, v69);
      v72 = sub_221119E0C(v70, v71, origin, size);
      v74 = v73;
      v121.origin.x = x;
      v121.origin.y = y;
      v121.size.width = width;
      v121.size.height = height;
      v103 = CGRectGetMaxX(v121);
      v122.origin.y = v106;
      v122.origin.x = v107;
      v122.size.width = v104;
      v122.size.height = v105;
      v101 = CGRectGetMaxX(v122);
      if (HIDWORD(v74) && v74)
      {
        if (v72 == origin && ((v72 ^ origin) & 0x101FFFF00000000) == 0 && v74 == size)
        {
          goto LABEL_32;
        }

        v123.origin.x = x;
        v123.origin.y = y;
        v123.size.width = width;
        v123.size.height = height;
        v75 = CGRectGetMaxX(v123);
        v124.origin.y = v106;
        v124.origin.x = v107;
        v124.size.width = v104;
        v124.size.height = v105;
        if (v75 >= CGRectGetMinX(v124))
        {
          goto LABEL_32;
        }

        v64 = v107 - x;
        goto LABEL_31;
      }

      v133.origin.x = x;
      v133.origin.y = y;
      v133.size.width = width;
      v133.size.height = height;
      v94 = CGRectGetMinX(v133);
      v134.origin.y = v106;
      v134.origin.x = v107;
      v134.size.width = v104;
      v134.size.height = v105;
      if (v94 <= CGRectGetMaxX(v134))
      {
        v96 = v103 - v101;
        if (a4 && a4->var0)
        {
          var3 = a4->var3;
          if (v96 <= var3)
          {
            v100 = v96 / a4->var1;
          }

          else
          {
            v99 = a4->var1;
            v98 = a4->var2;
            if (width - v96 <= var3 + v98)
            {
              v100 = 1.0 - (width - v96) / v99;
              v109 = v100;
            }

            else
            {
              v100 = v98 / v99;
            }
          }
        }

        else
        {
          v100 = v96 / width;
        }

        v17 = 1.0 - v100;
        v64 = width - v96;
        goto LABEL_33;
      }
    }

LABEL_58:
    v95 = *(MEMORY[0x277CBF3A0] + 16);
    a5->origin = *MEMORY[0x277CBF3A0];
    a5->size = v95;
    a6->origin = xmmword_2217E0840;
    a6->size = *algn_2217E0850;
  }

LABEL_73:
}

- (TSUCellCoord)logicalCellIDForUnscaledCanvasPoint:(CGPoint)a3
{
  v8 = sub_2216E5284(self, 0, a3.x, a3.y);
  if (v8.row != 0x7FFFFFFF && (*&v8 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v9 = objc_msgSend_tableInfo(self, v4, v5, v6, v7);
    v8 = objc_msgSend_expandCellRangeToCoverMergedCells_(v9, v10, *&v8, 0x100000001, v11);
  }

  return v8;
}

- (id)p_columnForCellID:(TSUCellCoord)a3 useCache:(BOOL)a4
{
  v5 = a4;
  v8 = a3.row << 15;
  column = a3.column;
  if (!a4)
  {
    v10 = objc_msgSend_layoutEngine(self, a2, *&a3, a4, v4);
    v15 = objc_msgSend_cellIDToWPColumnCache(v10, v11, v12, v13, v14);
    v19 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v16, v8 | column, v17, v18);
    objc_msgSend_removeObjectForKey_andWait_(v15, v20, v19, 1, v21);
  }

  v22 = objc_msgSend_layoutEngine(self, a2, *&a3, a4, v4);
  v27 = objc_msgSend_cellIDToWPColumnCache(v22, v23, v24, v25, v26);
  v31 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v28, v8 | column, v29, v30);
  v35 = objc_msgSend_objectForKey_(v27, v32, v31, v33, v34);

  if (!v35)
  {
    v40 = objc_msgSend_layoutEngine(self, v36, v37, v38, v39);
    v100 = 0;
    v43 = objc_msgSend_cell_forCellID_(v40, v41, &v100, *&a3, v42);
    v44 = v100;

    if (v43)
    {
      v49 = v44;
      v50 = objc_msgSend_valueType(v44, v45, v46, v47, v48);
    }

    else
    {
      v55 = objc_msgSend_tableInfo(self, v45, v46, v47, v48);
      v49 = objc_msgSend_newCell(v55, v56, v57, v58, v59);

      v64 = objc_msgSend_tableInfo(self, v60, v61, v62, v63);
      v69 = objc_msgSend_canvas(self, v65, v66, v67, v68);
      v74 = objc_msgSend_accessController(v69, v70, v71, v72, v73);
      objc_msgSend_getCell_atCellID_holdingReadLockWithAccessController_(v64, v75, v49, *&a3, v74);

      v50 = objc_msgSend_valueType(v49, v76, v77, v78, v79);
    }

    if (v50 == 9)
    {
      objc_msgSend_richTextValue(v49, v51, v52, v53, v54);
    }

    else
    {
      objc_msgSend_formattedValue(v49, v51, v52, v53, v54);
    }
    v80 = ;
    v99 = 0;
    v98 = 1;
    v85 = objc_msgSend_tableInfo(self, v81, v82, v83, v84);
    v97 = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v85, v86, v49, *&a3, &v99, 0, &v98, &v97);
    v87 = v97;

    v92 = objc_msgSend_layoutEngine(self, v88, v89, v90, v91);
    v94 = v92;
    if (v5)
    {
      v95 = 15;
    }

    else
    {
      v95 = 0;
    }

    v35 = objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v92, v93, *&a3, v49, v80, v99, v98, v87, v95, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
  }

  return v35;
}

- (TSUCellCoord)p_cellIDForHyperlinkField:(id)a3
{
  v5 = objc_msgSend_parentStorage(a3, a2, a3, v3, v4);
  if (objc_msgSend_wpKind(v5, v6, v7, v8, v9) == 5)
  {
    v14 = objc_msgSend_hyperlinkCellID(v5, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0x7FFF7FFFFFFFLL;
  }

  return v14;
}

- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithBounds:(SEL)a3 inCell:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = objc_msgSend_tableInfo(self, a3, *&a5, v5, v6);
  v18 = objc_msgSend_newCell(v13, v14, v15, v16, v17);

  v19 = MEMORY[0x277CBF2C0];
  v20 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v20;
  *&retstr->tx = *(v19 + 32);
  v25 = objc_msgSend_tableInfo(self, v21, v22, v23, v24);
  Cell_atCellID = objc_msgSend_getCell_atCellID_(v25, v26, v18, *&a5, v27);

  if (!Cell_atCellID)
  {
    v80 = 0;
    v33 = objc_msgSend_tableInfo(self, v29, v30, v31, v32);
    v79 = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v33, v34, v18, *&a5, 0, &v80, 0, &v79);
    v35 = v79;

    v40 = objc_msgSend_tableInfo(self, v36, v37, v38, v39);
    v44 = objc_msgSend_mergeRangeAtCellID_(v40, v41, *&a5, v42, v43);
    v46 = v45;

    if (v44 == 0x7FFFFFFF || (v44 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v46) || !v46)
    {
      v46 = 0x100000001;
      v44 = a5;
    }

    v51 = objc_msgSend_tableLayout(self, v47, v48, v49, v50, *&height);
    v52 = sub_2211BC850(v51, v44, v46);
    v54 = v53;
    v56 = v55;
    v58 = v57;

    if (v35)
    {
      v63 = objc_msgSend_layoutEngine(self, v59, v60, v61, v62);
      objc_msgSend_edgeInsetsFromPadding_(v63, v64, v35, v65, v66);
      v68 = v67;
      v70 = v69;

      x = x - v68;
      width = v70 + width + v68;
    }

    v71 = v52 + x;
    v81.size.height = rect;
    v81.origin.x = v71;
    v81.origin.y = y + v54;
    v81.size.width = width;
    MaxX = CGRectGetMaxX(v81);
    v82.origin.x = v52;
    v82.origin.y = v54;
    v82.size.width = v56;
    v82.size.height = v58;
    if (MaxX <= CGRectGetMaxX(v82))
    {
      goto LABEL_15;
    }

    v83.origin.x = v71;
    v83.origin.y = y + v54;
    v83.size.width = width;
    v83.size.height = rect;
    v73 = CGRectGetMaxX(v83);
    v84.origin.x = v52;
    v84.origin.y = v54;
    v84.size.width = v56;
    v84.size.height = v58;
    v74 = v73 - CGRectGetMaxX(v84);
    if (v80 == 1)
    {
      v75 = -v74;
    }

    else
    {
      if (v80 != 2)
      {
LABEL_15:

        goto LABEL_16;
      }

      v75 = v74 * -0.5;
    }

    CGAffineTransformMakeTranslation(retstr, v75, 0.0);
    goto LABEL_15;
  }

LABEL_16:

  return result;
}

- (CGRect)naturalBoundsRectForHyperlinkField:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v12 = objc_msgSend_p_cellIDForHyperlinkField_(self, v9, v4, v10, v11);
  v18 = objc_msgSend_p_columnForCellID_useCache_(self, v13, v12, 0, v14);
  if (v18)
  {
    objc_msgSend_p_contentFrameWithCellID_(self, v15, v12, v16, v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    objc_msgSend_p_horizontalAlignmentTransformForHyperlinkWithColumn_cell_cellID_(self, v27, v18, 0, v12);
    v37[0] = v38;
    v37[1] = v39;
    v37[2] = v40;
    objc_msgSend_p_naturalBoundsRectForHyperlinkField_cellID_column_contentFrame_horizontalAlignmentTransform_(self, v28, v4, v12, v18, v37, v20, v22, v24, v26);
    v5 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
  }

  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)p_naturalBoundsRectForHyperlinkField:(id)a3 cellID:(TSUCellCoord)a4 column:(id)a5 contentFrame:(CGRect)a6 horizontalAlignmentTransform:(CGAffineTransform *)a7
{
  height = a6.size.height;
  y = a6.origin.y;
  x = a6.origin.x;
  v50[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = MEMORY[0x277D80EF8];
  v19 = objc_msgSend_range(v12, v15, v16, v17, v18);
  v22 = objc_msgSend_selectionWithRange_(v14, v20, v19, v20, v21);
  v23 = MEMORY[0x277D80DC0];
  v50[0] = v13;
  v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v24, v50, 1, v25);
  objc_msgSend_boundsRectForSelection_columnArray_includeRuby_includePaginatedAttachments_(v23, v27, v22, v26, 0, 0);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  if (height >= v35)
  {
    v38 = v35;
  }

  else
  {
    v38 = height;
  }

  v39 = *&a7->c;
  *&v49.a = *&a7->a;
  *&v49.c = v39;
  *&v49.tx = *&a7->tx;
  v40 = v33;
  v36 = x + v29;
  v37 = y + v31;
  v51 = CGRectApplyAffineTransform(*(&v38 - 3), &v49);
  v41 = v51.origin.x;
  v42 = v51.origin.y;
  width = v51.size.width;
  v44 = v51.size.height;

  v45 = v41;
  v46 = v42;
  v47 = width;
  v48 = v44;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (CGRect)p_contentFrameWithCellID:(TSUCellCoord)a3
{
  v6 = objc_msgSend_tableLayout(self, a2, *&a3, v3, v4);
  v7 = sub_2211BC850(v6, *&a3, 0x100000001uLL);
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

- (CGAffineTransform)p_horizontalAlignmentTransformForHyperlinkWithColumn:(SEL)a3 cell:(id)a4 cellID:(id)a5
{
  v10 = a4;
  v11 = a5;
  v43 = 0;
  v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
  v21 = v16;
  if (!v11)
  {
    v11 = objc_msgSend_newCell(v16, v17, v18, v19, v20);
  }

  v22 = objc_msgSend_canvas(self, v17, v18, v19, v20);
  v27 = objc_msgSend_accessController(v22, v23, v24, v25, v26);
  objc_msgSend_getCell_atCellID_holdingReadLockWithAccessController_(v21, v28, v11, *&a6, v27);

  objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v21, v29, v11, *&a6, &v43, 0, 0, 0);
  v34 = MEMORY[0x277CBF2C0];
  v35 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v35;
  *&retstr->tx = *(v34 + 32);
  if ((v43 & 1) == 0)
  {
    objc_msgSend_typographicBounds(v10, v30, v31, v32, v33);
    objc_msgSend_p_horizontalAlignmentTransformForHyperlinkWithBounds_inCell_(self, v36, *&a6, v37, v38);
    *&retstr->a = v40;
    *&retstr->c = v41;
    *&retstr->tx = v42;
  }

  return result;
}

- (id)hyperlinkRegions
{
  v37.receiver = self;
  v37.super_class = TSTTableRep;
  v3 = [(TSDRep *)&v37 hyperlinkRegions];
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5, v6, v7);
  v13 = v8;
  if (v3)
  {
    objc_msgSend_addObjectsFromArray_(v8, v9, v3, v11, v12);
  }

  v14 = objc_msgSend_tableInfo(self, v9, v10, v11, v12);
  v19 = objc_msgSend_tableLayout(self, v15, v16, v17, v18);
  v20 = sub_2211B6DA4(v19);
  v22 = v21;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = sub_2216E6C10;
  v34 = &unk_27845E3A8;
  v35 = self;
  v23 = v13;
  v36 = v23;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v14, v24, v20, v22, 0, 0x80000, &v31);

  v29 = objc_msgSend_copy(v23, v25, v26, v27, v28, v31, v32, v33, v34, v35);

  return v29;
}

- (void)updateFromLayout
{
  v6 = objc_msgSend_tableLayout(self, a2, v2, v3, v4);
  v11 = objc_msgSend_canvas(self, v7, v8, v9, v10);
  objc_msgSend_viewScale(v11, v12, v13, v14, v15);
  v17 = v16;

  sub_2211B86D0(v6, v18, v19, v20, v21, v17);
  v26 = objc_msgSend_canvas(self, v22, v23, v24, v25);
  objc_msgSend_contentsScale(v26, v27, v28, v29, v30);
  sub_2216E538C(self, v17, v31);

  objc_msgSend_validateVisibleRect(self, v32, v33, v34, v35);
  v40 = objc_msgSend_layoutEngine(v6, v36, v37, v38, v39);
  v45 = objc_msgSend_cellRange(v40, v41, v42, v43, v44);
  v47 = v46;

  v52 = objc_msgSend_dirtyCellRegionGatherer(self, v48, v49, v50, v51);
  v57 = objc_msgSend_gatheredCellRegion(v52, v53, v54, v55, v56);

  v62 = objc_msgSend_layoutEngine(self, v58, v59, v60, v61);
  if (objc_msgSend_emptyFilteredTable(v62, v63, v64, v65, v66))
  {
    isValid = objc_msgSend_isValid(v57, v67, v68, v69, v70);

    if (isValid)
    {
      v74 = objc_msgSend_regionFromRange_(TSTCellRegion, v72, v45, v47, v73);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v74 = objc_msgSend_regionByIntersectingRange_(v57, v72, v45, v47, v73);
LABEL_6:
  v75 = v74;

  v80 = objc_msgSend_gatherer(TSTCellRegionGatherer, v76, v77, v78, v79);
  objc_msgSend_setDirtyCellRegionGatherer_(self, v81, v80, v82, v83);

  if ((objc_msgSend_isTableNameValid(self, v84, v85, v86, v87) & 1) == 0)
  {
    objc_msgSend_setTableNameValid_(self, v88, 1, v89, v90);
  }

  v91.receiver = self;
  v91.super_class = TSTTableRep;
  [(TSDRep *)&v91 updateFromLayout];
}

- (void)validateStrokesInEditingSpillingTextRange
{
  v6 = objc_msgSend_tableLayout(self, a2, v2, v3, v4);
  v11 = objc_msgSend_editingSpillingTextRange(v6, v7, v8, v9, v10);
  v13 = v12;
  EditingSpillingTextRange = objc_msgSend_prevEditingSpillingTextRange(v6, v12, v14, v15, v16);
  v19 = v18;
  objc_msgSend_setPrevEditingSpillingTextRange_(v6, v18, v11, v13, v20);
  v21 = sub_2211B6DA4(v6);
  v23 = v22;
  v24 = sub_221119E0C(v11, v13, v21, v22);
  v26 = v25;
  v30 = objc_msgSend_layoutEngine(self, v25, v27, v28, v29);
  v31 = sub_221119E0C(EditingSpillingTextRange, v19, v21, v23);
  objc_msgSend_clearDynamicStrokesForCellRange_(v30, v32, v31, v32, v33);

  v38 = objc_msgSend_layoutEngine(self, v34, v35, v36, v37);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2216E744C;
  v40[3] = &unk_278468A80;
  v40[5] = v24;
  v40[6] = v26;
  v40[4] = self;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v38, v39, v24, v26, 128, 536871936, v40);
}

- (void)validateVisibleRect
{
  v9 = objc_msgSend_tableLayout(self, a2, v2, v3, v4);
  objc_msgSend_validate(v9, v5, v6, v7, v8);
}

- (BOOL)p_prefersHDRRenderingForFill:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    if (v8)
    {
      v9 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], v4, v5, v6, v7);
      v14 = objc_msgSend_imageData(v8, v10, v11, v12, v13);
      v17 = objc_msgSend_providerForData_shouldValidate_(v9, v15, v14, 1, v16);

      v22 = objc_msgSend_prefersHDRRendering(v17, v18, v19, v20, v21);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)p_prefersHDRRendering
{
  v6 = objc_msgSend_tableLayout(self, a2, v2, v3, v4);
  v11 = objc_msgSend_tableInfo(v6, v7, v8, v9, v10);
  v226 = 0;
  v227 = &v226;
  v228 = 0x2020000000;
  v229 = 0;
  v16 = objc_msgSend_range(v11, v12, v13, v14, v15);
  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = sub_2216E82DC;
  v225[3] = &unk_278464090;
  v225[4] = v11;
  v225[5] = self;
  v225[6] = &v226;
  objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v11, v17, v16, v17, 0, 2048, v225);
  v22 = objc_msgSend_bodyCellStyle(v11, v18, v19, v20, v21);
  v26 = objc_msgSend_valueForProperty_(v22, v23, 898, v24, v25);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v27, v26, v28, v29))
  {
    goto LABEL_10;
  }

  v34 = objc_msgSend_headerRowCellStyle(v11, v30, v31, v32, v33);
  v38 = objc_msgSend_valueForProperty_(v34, v35, 898, v36, v37);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v39, v38, v40, v41))
  {
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  v46 = objc_msgSend_headerColumnCellStyle(v11, v42, v43, v44, v45);
  v50 = objc_msgSend_valueForProperty_(v46, v47, 898, v48, v49);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v51, v50, v52, v53))
  {
LABEL_8:

    goto LABEL_9;
  }

  v224 = objc_msgSend_footerRowCellStyle(v11, v54, v55, v56, v57);
  v61 = objc_msgSend_valueForProperty_(v224, v58, 898, v59, v60);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v62, v61, v63, v64))
  {
LABEL_7:

    goto LABEL_8;
  }

  v223 = objc_msgSend_categoryLevel1CellStyle(v11, v65, v66, v67, v68);
  v222 = objc_msgSend_valueForProperty_(v223, v69, 898, v70, v71);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v72, v222, v73, v74))
  {

    goto LABEL_7;
  }

  v221 = objc_msgSend_categoryLevel2CellStyle(v11, v75, v76, v77, v78);
  v220 = objc_msgSend_valueForProperty_(v221, v81, 898, v82, v83);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v84, v220, v85, v86))
  {
    v91 = 1;
  }

  else
  {
    v219 = objc_msgSend_categoryLevel3CellStyle(v11, v87, v88, v89, v90);
    v218 = objc_msgSend_valueForProperty_(v219, v92, 898, v93, v94);
    if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v95, v218, v96, v97))
    {
      v91 = 1;
    }

    else
    {
      v217 = objc_msgSend_categoryLevel4CellStyle(v11, v98, v99, v100, v101);
      v216 = objc_msgSend_valueForProperty_(v217, v102, 898, v103, v104);
      if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v105, v216, v106, v107))
      {
        v91 = 1;
      }

      else
      {
        v215 = objc_msgSend_categoryLevel5CellStyle(v11, v108, v109, v110, v111);
        v214 = objc_msgSend_valueForProperty_(v215, v112, 898, v113, v114);
        if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v115, v214, v116, v117))
        {
          v91 = 1;
        }

        else
        {
          v213 = objc_msgSend_labelLevel1CellStyle(v11, v118, v119, v120, v121);
          v212 = objc_msgSend_valueForProperty_(v213, v122, 898, v123, v124);
          if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v125, v212, v126, v127))
          {
            v91 = 1;
          }

          else
          {
            v211 = objc_msgSend_labelLevel2CellStyle(v11, v128, v129, v130, v131);
            v210 = objc_msgSend_valueForProperty_(v211, v132, 898, v133, v134);
            if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v135, v210, v136, v137))
            {
              v91 = 1;
            }

            else
            {
              v209 = objc_msgSend_labelLevel3CellStyle(v11, v138, v139, v140, v141);
              v208 = objc_msgSend_valueForProperty_(v209, v142, 898, v143, v144);
              if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v145, v208, v146, v147))
              {
                v91 = 1;
              }

              else
              {
                v207 = objc_msgSend_labelLevel4CellStyle(v11, v148, v149, v150, v151);
                v206 = objc_msgSend_valueForProperty_(v207, v152, 898, v153, v154);
                if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v155, v206, v156, v157))
                {
                  v91 = 1;
                }

                else
                {
                  v205 = objc_msgSend_labelLevel5CellStyle(v11, v158, v159, v160, v161);
                  v204 = objc_msgSend_valueForProperty_(v205, v162, 898, v163, v164);
                  if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v165, v204, v166, v167))
                  {
                    v91 = 1;
                  }

                  else
                  {
                    v203 = objc_msgSend_pivotBodySummaryRowCellStyle(v11, v168, v169, v170, v171);
                    v202 = objc_msgSend_valueForProperty_(v203, v172, 898, v173, v174);
                    if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v175, v202, v176, v177))
                    {
                      v91 = 1;
                    }

                    else
                    {
                      v201 = objc_msgSend_pivotBodySummaryColumnCellStyle(v11, v178, v179, v180, v181);
                      v200 = objc_msgSend_valueForProperty_(v201, v182, 898, v183, v184);
                      if (objc_msgSend_p_prefersHDRRenderingForFill_(self, v185, v200, v186, v187))
                      {
                        v91 = 1;
                      }

                      else
                      {
                        v199 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v11, v188, v189, v190, v191);
                        v198 = objc_msgSend_valueForProperty_(v199, v192, 898, v193, v194);
                        v91 = objc_msgSend_p_prefersHDRRenderingForFill_(self, v195, v198, v196, v197);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((v91 & 1) == 0)
  {
    v79 = *(v227 + 24);
    goto LABEL_12;
  }

LABEL_11:
  v79 = 1;
  *(v227 + 24) = 1;
LABEL_12:
  _Block_object_dispose(&v226, 8);

  return v79 & 1;
}

- (BOOL)isFullyVisibleWithBorder:(int)a3
{
  v5 = a3;
  objc_msgSend_canvasVisibleRect(self, a2, *&a3, v3, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v19 = objc_msgSend_tableLayout(self, v15, v16, v17, v18);
  v25.origin.x = sub_2211B89E4(v19, v20, v21, v22, v23);
  v27 = CGRectInset(v25, -v5, -v5);
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  LOBYTE(v5) = CGRectContainsRect(v26, v27);

  return v5;
}

- (void)setTableChrome:(id)a3
{
  v5 = a3;
  tableChrome = self->_tableChrome;
  v10 = v5;
  if (tableChrome != v5)
  {
    objc_msgSend_willBeRemoved(tableChrome, v5, v6, v7, v8);
    objc_storeStrong(&self->_tableChrome, a3);
  }
}

- (TSTAnimation)currentAnimation
{
  v5 = objc_msgSend_animationStack(self, a2, v2, v3, v4);
  v10 = objc_msgSend_lastObject(v5, v6, v7, v8, v9);

  return v10;
}

- (void)pushAnimation:(id)a3
{
  v12 = a3;
  v8 = objc_msgSend_animationStack(self, v4, v5, v6, v7);
  objc_msgSend_tsu_push_(v8, v9, v12, v10, v11);
}

- (void)popAnimation
{
  v10 = objc_msgSend_animationStack(self, a2, v2, v3, v4);
  v9 = objc_msgSend_tsu_pop(v10, v5, v6, v7, v8);
}

- (void)p_addTexture:(id)a3 forAnimationStage:(unint64_t)a4 isFinal:(BOOL)a5 description:(id)a6
{
  v7 = a5;
  v109 = a3;
  v108 = a6;
  v14 = objc_msgSend_tableLayout(self, v10, v11, v12, v13);
  v19 = objc_msgSend_layoutEngine(self, v15, v16, v17, v18);
  v24 = objc_msgSend_deliveryStyle(v108, v20, v21, v22, v23, v19);
  v27 = objc_msgSend_newAnimationWithLayout_andDeliveryStyle_(TSTAnimation, v25, v14, v24, v26);
  objc_msgSend_setStage_andFinal_(v27, v28, a4, v7, v29);
  v34 = objc_msgSend_canvas(self, v30, v31, v32, v33);
  LODWORD(a6) = objc_msgSend_shouldSuppressBackgrounds(v34, v35, v36, v37, v38);

  if (a6)
  {
    objc_msgSend_setDrawsBlackAndWhite_(v27, v39, 1, v41, v42);
    objc_msgSend_setExpandBackgroundFill_(v27, v43, 0, v44, v45);
  }

  v46 = objc_msgSend_canvas(self, v39, v40, v41, v42);
  objc_msgSend_viewScale(v46, v47, v48, v49, v50);
  v52 = v51;

  sub_2216E538C(self, v52, 1.0);
  objc_msgSend_frameInUnscaledCanvas(self, v53, v54, v55, v56);
  objc_msgSend_currentScreenScale(self, v57, v58, v59, v60);
  TSURoundedRectForScale();
  TSUSubtractPoints();
  objc_msgSend_p_getImageFrameForAnimation_(self, v61, v27, v62, v63);
  objc_msgSend_currentScreenScale(self, v64, v65, v66, v67);
  TSURoundedRectForScale();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  TSUCeilSize();
  v106 = v77;
  v107 = v76;
  v124 = 0u;
  memset(v123, 0, sizeof(v123));
  sub_2211B8638(v14, v78, v79, v80, v81, v123);
  v82 = v124;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = sub_2216E8AF8;
  v114[3] = &unk_278468AA8;
  v114[4] = self;
  v118 = v52;
  v119 = v69;
  v120 = v71;
  v121 = v73;
  v122 = v75;
  v83 = v14;
  v115 = v83;
  v84 = v27;
  v116 = v84;
  v85 = v19;
  v117 = v85;
  v86 = MEMORY[0x223DA1C10](v114);
  v87 = objc_alloc(MEMORY[0x277D803E8]);
  TSUAddPoints();
  v93 = objc_msgSend_initWithSize_offset_renderBlock_(v87, v90, v86, v91, v92, v107, v106, v89 - *&v82, v88 - *(&v82 + 1));
  objc_msgSend_setTextureType_(v93, v94, 5, v95, v96);
  objc_msgSend_setTextureOpacity_(v93, v97, v98, v99, v100, 1.0);
  if (v7)
  {
    objc_msgSend_addFinalTexture_forStage_(v109, v101, v93, a4, v102);
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = sub_2216E8D48;
    v110[3] = &unk_278468AD0;
    v111[0] = v109;
    v111[1] = a4;
    objc_msgSend_enumerateChildTexturesForDescription_passingTest_withBlock_(self, v103, v108, 0, v110);
    v104 = v111;
LABEL_7:

    goto LABEL_8;
  }

  objc_msgSend_addRenderable_forStage_(v109, v101, v93, a4, v102);
  if (!a4)
  {
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = sub_2216E8D38;
    v112[3] = &unk_278468AD0;
    v113[0] = v109;
    v113[1] = 0;
    objc_msgSend_enumerateChildTexturesForDescription_passingTest_withBlock_(self, v105, v108, 0, v112);
    v104 = v113;
    goto LABEL_7;
  }

LABEL_8:
}

- (id)textureForDescription:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_deliveryStyle(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_layoutEngine(self, v10, v11, v12, v13);
  v17 = objc_msgSend_stageCountForTextureDeliveryStyle_tableProvider_(TSTAnimation, v15, v9, v14, v16);

  v18 = objc_alloc_init(MEMORY[0x277D803E0]);
  objc_msgSend_setRep_(v18, v19, self, v20, v21);
  isMagicMove = objc_msgSend_isMagicMove(v4, v22, v23, v24, v25);
  objc_msgSend_setIsMagicMove_(v18, v27, isMagicMove, v28, v29);
  objc_msgSend_setObjectType_(v18, v30, 5, v31, v32);
  if (objc_msgSend_stage(v4, v33, v34, v35, v36))
  {
    v41 = objc_msgSend_stage(v4, v37, v38, v39, v40);
    objc_msgSend_p_addTexture_forAnimationStage_isFinal_description_(self, v42, v18, v41 - 1, 1, v4);
  }

  if (objc_msgSend_stage(v4, v37, v38, v39, v40) < v17)
  {
    v47 = objc_msgSend_stage(v4, v43, v44, v45, v46);
    objc_msgSend_p_addTexture_forAnimationStage_isFinal_description_(self, v48, v18, v47, 0, v4);
  }

  return v18;
}

+ (unint64_t)p_countOfIdenticalCellsBetweenOutgoingTableInfo:(id)a3 incomingTableInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_numberOfColumns(v5, v7, v8, v9, v10);
  if (v11 != objc_msgSend_numberOfColumns(v6, v12, v13, v14, v15))
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSTTableRep p_countOfIdenticalCellsBetweenOutgoingTableInfo:incomingTableInfo:]", v18, v19);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 4616, 0, "numberOfColumns not equal!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_numberOfRows(v5, v16, v17, v18, v19);
  if (v31 != objc_msgSend_numberOfRows(v6, v32, v33, v34, v35))
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "+[TSTTableRep p_countOfIdenticalCellsBetweenOutgoingTableInfo:incomingTableInfo:]", v37, v38);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v42, v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 4617, 0, "numberOfColumns not equal!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
  }

  objc_opt_class();
  v52 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v5, v50, 2, 0x20000000, v51);
  v53 = TSUDynamicCast();

  objc_opt_class();
  v56 = objc_msgSend_cellIteratorWithFlags_searchFlags_(v6, v54, 2, 0x20000000, v55);
  v57 = TSUDynamicCast();

  v61 = 0;
  v62 = 0;
  v63 = 0;
  while (1)
  {
    v87 = v61;
    NextCellData = objc_msgSend_getNextCellData_(v53, v58, &v87, v59, v60);
    v65 = v87;

    if (!NextCellData)
    {
      break;
    }

    v86 = v62;
    v70 = objc_msgSend_getNextCellData_(v57, v66, &v86, v68, v69);
    v71 = v86;

    if (!v70)
    {
      v62 = v71;
      break;
    }

    v72 = objc_msgSend_cell(v65, v66, v67, v68, v69);
    v77 = objc_msgSend_cell(v71, v73, v74, v75, v76);
    v63 += objc_msgSend_hasEqualContentToCell_(v72, v78, v77, v79, v80);

    v61 = v65;
    v62 = v71;
  }

  objc_msgSend_terminate(v57, v66, v67, v68, v69);
  objc_msgSend_terminate(v53, v81, v82, v83, v84);

  return v63;
}

+ (double)magicMoveAttributeMatchPercentBetweenOutgoingObject:(id)a3 incomingObject:(id)a4 mixingTypeContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = objc_msgSend_tableInfo(v8, v11, v12, v13, v14);
  v20 = objc_msgSend_tableInfo(v9, v16, v17, v18, v19);
  v23 = objc_msgSend_mixingTypeWithObject_context_(v15, v21, v20, v10, v22);

  v28 = objc_msgSend_tableInfo(v8, v24, v25, v26, v27);
  v37 = objc_msgSend_tableInfo(v9, v29, v30, v31, v32);
  v38 = 0.0;
  if (v23 == 1)
  {
    goto LABEL_34;
  }

  v39 = objc_msgSend_numberOfColumns(v28, v33, v34, v35, v36);
  if (v39 != objc_msgSend_numberOfColumns(v37, v40, v41, v42, v43))
  {
    goto LABEL_34;
  }

  v48 = objc_msgSend_numberOfRows(v28, v44, v45, v46, v47);
  if (v48 != objc_msgSend_numberOfRows(v37, v49, v50, v51, v52))
  {
    goto LABEL_34;
  }

  v57 = objc_msgSend_numberOfHeaderRows(v28, v53, v54, v55, v56);
  if (v57 != objc_msgSend_numberOfHeaderRows(v37, v58, v59, v60, v61))
  {
    goto LABEL_34;
  }

  v66 = objc_msgSend_numberOfFooterRows(v28, v62, v63, v64, v65);
  if (v66 != objc_msgSend_numberOfFooterRows(v37, v67, v68, v69, v70))
  {
    goto LABEL_34;
  }

  if (v23 == 5)
  {
    v75 = 10.0;
  }

  else
  {
    v75 = 0.0;
  }

  v80 = objc_msgSend_tableName(v28, v71, v72, v73, v74);
  if (!v80)
  {
    v173 = objc_msgSend_tableName(v37, v76, v77, v78, v79);
    if (!v173)
    {
LABEL_22:
      v75 = v75 + 5.0;
      goto LABEL_23;
    }
  }

  v85 = objc_msgSend_tableName(v28, v76, v77, v78, v79);
  if (v85)
  {
    v174 = objc_msgSend_tableName(v37, v81, v82, v83, v84);
    if (v174)
    {
      v172 = objc_msgSend_tableName(v28, v86, v87, v88, v89);
      v94 = objc_msgSend_tableName(v37, v90, v91, v92, v93);
      isEqualToString = objc_msgSend_isEqualToString_(v172, v95, v94, v96, v97);

      if (v80)
      {
      }

      else
      {
      }

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v80)
    {
      goto LABEL_16;
    }
  }

  else if (!v80)
  {
LABEL_16:
  }

LABEL_23:
  v98 = objc_msgSend_tableNameEnabled(v28, v76, v77, v78, v79);
  if (v98 == objc_msgSend_tableNameEnabled(v37, v99, v100, v101, v102))
  {
    v75 = v75 + 1.0;
  }

  hasTableBorder = objc_msgSend_hasTableBorder(v28, v103, v104, v105, v106);
  if (hasTableBorder == objc_msgSend_hasTableBorder(v37, v108, v109, v110, v111))
  {
    v75 = v75 + 1.0;
  }

  hasAlternatingRows = objc_msgSend_hasAlternatingRows(v28, v112, v113, v114, v115);
  if (hasAlternatingRows == objc_msgSend_hasAlternatingRows(v37, v117, v118, v119, v120))
  {
    v75 = v75 + 1.0;
  }

  v125 = objc_msgSend_tableStyle(v28, v121, v122, v123, v124);
  v130 = objc_msgSend_tableStyle(v37, v126, v127, v128, v129);
  v131 = TSDMixingTypeWithObjects();

  if (v131 == 5)
  {
    v75 = v75 + 2.0;
  }

  v136 = objc_msgSend_numberOfColumns(v28, v132, v133, v134, v135);
  v141 = objc_msgSend_numberOfRows(v28, v137, v138, v139, v140);
  v146 = objc_msgSend_tableInfo(v8, v142, v143, v144, v145);
  v151 = objc_msgSend_tableInfo(v9, v147, v148, v149, v150);
  v154 = objc_msgSend_p_countOfIdenticalCellsBetweenOutgoingTableInfo_incomingTableInfo_(a1, v152, v146, v151, v153);
  v155 = (v141 * v136);

  if (v154 > v155)
  {
    v159 = MEMORY[0x277D81150];
    v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "+[TSTTableRep magicMoveAttributeMatchPercentBetweenOutgoingObject:incomingObject:mixingTypeContext:]", v157, v158);
    v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v162, v163);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v165, v160, v164, 4698, 0, "equalCellCount(%d) > totalCellCount(%d)!", v154, v155);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v166, v167, v168, v169);
  }

  v38 = (v75 + v154 / v155 * 5.0) / 25.0;
LABEL_34:

  return v38;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v8 = objc_msgSend_layoutEngine(self, a2, a3, a4, v4);
  objc_msgSend_readSafelyUsingBlock_(v8, v5, &unk_2834BAB90, v6, v7);
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v4 = a4;
  if (objc_msgSend_isEqualToString_(v4, v5, @"delegate", v6, v7))
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);
  }

  return v12;
}

- (void)p_drawTableNameInContext:(CGContext *)a3 animation:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_tableLayout(self, v7, v8, v9, v10);
  v151.origin.x = sub_2211C0188(v11);
  x = v151.origin.x;
  y = v151.origin.y;
  width = v151.size.width;
  height = v151.size.height;
  if (!CGRectIsEmpty(v151) && sub_2211B7A08(v11, v16, v17, v18, v19))
  {
    v20 = TSDCGContextGetPdfTagger();
    v137 = &unk_283599118;
    v21 = TSUProtocolCast();

    if (v21)
    {
      objc_msgSend_beginTableNameForChunk_(v21, v22, self, v24, v25, &unk_283599118);
    }

    v26 = objc_msgSend_tableInfo(self, v22, v23, v24, v25, v137);
    v31 = objc_msgSend_tableName(v26, v27, v28, v29, v30);

    if ((objc_msgSend_isRecursivelyDrawingInContext(self, v32, v33, v34, v35) & 1) == 0 && (objc_msgSend_inPrintPreviewMode(v11, v36, v37, v38, v39) & 1) == 0 && (objc_msgSend_p_isTableRenderingRotated(self, v36, v37, v38, v39) & 1) == 0 && objc_msgSend_enabled(v6, v36, v37, v38, v39))
    {
      objc_msgSend_drawTableName(v6, v36, v37, v38, v39);
    }

    v40 = objc_msgSend_layoutEngine(self, v36, v37, v38, v39);
    v45 = objc_msgSend_tableNameTextEngine(v40, v41, v42, v43, v44);

    isDrawingInFlippedContext = objc_msgSend_isDrawingInFlippedContext(self, v46, v47, v48, v49);
    objc_msgSend_drawText_inContext_minSize_maxSize_anchor_flags_isFlipped_viewScale_(v45, v51, v31, a3, 4096, isDrawingInFlippedContext, width, height, width, height, x, y, 1.0);

    if (sub_2211C027C(v11))
    {
      v140 = sub_2211B4394(v11, v52, v53, v54, v55);
      objc_msgSend_lockForRead(v140, v56, v57, v58, v59);
      v64 = objc_msgSend_tableInfo(self, v60, v61, v62, v63);
      v69 = objc_msgSend_tableNameBorderStroke(v64, v65, v66, v67, v68);

      v139 = v69;
      v141 = objc_msgSend_layoutEngine(v11, v70, v71, v72, v73);
      v152.origin.x = sub_2211C03BC(v11, v74, v75, v76, v77);
      v78 = v152.origin.x;
      v79 = v152.origin.y;
      v80 = v152.size.width;
      v81 = v152.size.height;
      MaxX = CGRectGetMaxX(v152);
      v149 = v78;
      v150 = v79;
      v147 = MaxX;
      v148 = v79;
      objc_msgSend_width(v69, v83, v84, v85, v86);
      v146 = v87;
      objc_msgSend_strokeWidthForDrawingWithAlignedWidth_originalWidth_(v140, v88, v89, v90, v91, v87, v87);
      v93 = v92;
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(v140, v94, &v149, &v147, &v146);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(v140, v95, v69, a3, v96, v149, v150, v147, v148, v146, v93, *&v78, *&v79, *&v80, *&v81);
      v138 = a3;
      v101 = objc_msgSend_cellRange(v140, v97, v98, v99, v100);
      v105 = v101;
      v106 = v102;
      v107 = v101 & 0xFFFF00000000;
      if ((v101 & 0xFFFF00000000) != 0x7FFF00000000 && v101 == 0x7FFFFFFF)
      {
        v109 = 0;
      }

      else
      {
        v109 = v101;
      }

      v113 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v141, v102, v109, v103, v104);
      if (v105 != 0x7FFFFFFF && v107 == 0x7FFF00000000)
      {
        v115 = 0;
      }

      else
      {
        v115 = WORD2(v105);
      }

      v119 = objc_msgSend_indexOfVisibleColumnAfterAndIncludingColumnAtIndex_(v141, v110, v115, v111, v112);
      if (v106)
      {
        v120 = WORD2(v105) == 0x7FFF;
      }

      else
      {
        v120 = 1;
      }

      if (v120)
      {
        v121 = 0x7FFF;
      }

      else
      {
        v121 = v106 + WORD2(v105) - 1;
      }

      v122 = objc_msgSend_indexOfVisibleColumnBeforeAndIncludingColumnAtIndex_(v141, v116, v121, v117, v118);
      objc_msgSend_alignedStrokeFrameForCellRange_(v140, v123, v113 | (v119 << 32), 0x100000001, v124);
      v149 = v78;
      v150 = v150 + v146 * -0.5;
      v144 = v78;
      MinY = CGRectGetMinY(v153);
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(v140, v125, &v149, &v144, &v146);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(v140, v126, v139, v138, v127, v149, v150, v144, MinY, v146, v93, *&v78, *&v79, *&v80, *&v81);
      objc_msgSend_alignedStrokeFrameForCellRange_(v140, v128, v113 | (v122 << 32), 0x100000001, v129);
      v147 = MaxX;
      v148 = v148 + v146 * -0.5;
      v142 = MaxX;
      v143 = CGRectGetMinY(v154);
      objc_msgSend_alignStrokeCoordinatesOfBeginPoint_endPoint_width_(v140, v130, &v147, &v142, &v146);
      objc_msgSend_drawSingleStroke_context_beginPoint_endPoint_width_strokeWidthForDrawing_strokeFrame_(v140, v131, v139, v138, v132, v147, v148, v142, v143, v146, v93, *&v78, *&v79, *&v80, *&v81);
      objc_msgSend_unlock(v140, v133, v134, v135, v136);
    }

    if (v21)
    {
      objc_msgSend_endTableNameForChunk_(v21, v52, self, v54, v55);
    }
  }
}

- (CGRect)p_alignedLayerFrameForLayoutSpace:(id)a3 transform:(CGAffineTransform *)a4
{
  v6 = a3;
  v11 = objc_msgSend_tableLayout(self, v7, v8, v9, v10);
  v12 = sub_2211B410C(v11, v6);
  objc_msgSend_canvasRectForLayoutRect_(v6, v13, v14, v15, v16, v12);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v29 = objc_msgSend_canvas(self, v25, v26, v27, v28);
  objc_msgSend_convertUnscaledToBoundsRect_(v29, v30, v31, v32, v33, v18, v20, v22, v24);
  v38 = objc_msgSend_canvas(self, v34, v35, v36, v37);
  objc_msgSend_contentsScale(v38, v39, v40, v41, v42);

  v43 = *&a4->c;
  *&v81.a = *&a4->a;
  *&v81.c = v43;
  *&v81.tx = *&a4->tx;
  v44 = v18;
  *&v43 = v20;
  v45 = v22;
  v46 = v24;
  v82 = CGRectApplyAffineTransform(*(&v43 - 8), &v81);
  x = v82.origin.x;
  y = v82.origin.y;
  width = v82.size.width;
  height = v82.size.height;
  v55 = objc_msgSend_canvas(self, v51, v52, v53, v54);
  objc_msgSend_convertUnscaledToBoundsRect_(v55, v56, v57, v58, v59, x, y, width, height);
  v64 = objc_msgSend_canvas(self, v60, v61, v62, v63);
  objc_msgSend_contentsScale(v64, v65, v66, v67, v68);
  TSURoundedRectForScale();
  TSUCeilSize();
  v70 = v69;
  v72 = v71;
  TSURoundedRectForScale();
  v74 = v73;
  v76 = v75;

  v77 = v74;
  v78 = v76;
  v79 = v70 + 6.0;
  v80 = v72 + 6.0;
  result.size.height = v80;
  result.size.width = v79;
  result.origin.y = v78;
  result.origin.x = v77;
  return result;
}

- (void)p_drawBackgroundFillInLayoutSpace:(id)a3 gridRange:(id)a4 context:(CGContext *)a5
{
  var0 = a4.var0;
  var1 = a4.var1;
  v253 = a3;
  v260 = objc_msgSend_tableLayout(self, v7, v8, v9, v10);
  v264 = objc_msgSend_layoutEngine(self, v11, v12, v13, v14);
  isDynamicallyChangingCellFill = objc_msgSend_isDynamicallyChangingCellFill(v264, v15, v16, v17, v18);
  v267 = objc_msgSend_tableInfo(v260, v19, v20, v21, v22);
  v248 = 0;
  v27 = HIDWORD(*&var0);
  v28 = HIDWORD(*&var1);
  if (var0.var0 != -1 && var1.var0 != -1 && var0.var0 <= var1.var0)
  {
    v248 = 0;
    if (v27 != 0xFFFFFFFF && v28 != 0xFFFFFFFF && v27 <= v28)
    {
      v248 = ((*&var1 - (*&var0 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (LOWORD(var1.var0) - LOWORD(var0.var0) + 1)) + 0x100000000;
    }
  }

  v29 = LOWORD(var0.var0) << 32;
  if (var0.var0 == -1)
  {
    v29 = 0x7FFF00000000;
  }

  v247 = v29;
  v30 = 0x7FFFFFFFLL;
  if (v27 != 0xFFFFFFFF)
  {
    v30 = HIDWORD(*&var0);
  }

  v249 = v30;
  v243 = objc_msgSend_useBandedFill(v264, v23, v24, v25, v26);
  v268 = objc_msgSend_newCell(v267, v31, v32, v33, v34);
  v266 = objc_msgSend_newCell(v267, v35, v36, v37, v38);
  v263 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40, v41, v42);
  v240 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v43, v44, v45, v46);
  v49 = objc_msgSend_regionFromRange_(TSTCellRegion, v47, v247 | v249, v248, v48);
  hasMergeRangesIntersectingCellRegion = objc_msgSend_hasMergeRangesIntersectingCellRegion_(v267, v50, v49, v51, v52);

  v57 = objc_msgSend_canvas(self, v53, v54, v55, v56);
  if (objc_msgSend_isCanvasInteractive(v57, v58, v59, v60, v61))
  {
    goto LABEL_15;
  }

  v66 = objc_msgSend_canvas(self, v62, v63, v64, v65);
  if (objc_msgSend_isPrinting(v66, v67, v68, v69, v70))
  {

LABEL_15:
LABEL_16:
    v237 = 0;
    goto LABEL_17;
  }

  v231 = objc_msgSend_canvas(self, v71, v72, v73, v74);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v231, v232, v233, v234, v235);

  if (isDrawingIntoPDF)
  {
    goto LABEL_16;
  }

  CGContextBeginTransparencyLayer(a5, 0);
  v237 = 1;
LABEL_17:
  if (v27 <= v28)
  {
    v78 = v249 + HIDWORD(v248) - 1;
    v79 = v249 == 0x7FFFFFFF;
    if (v249 == 0x7FFFFFFF)
    {
      v78 = 0x7FFFFFFF;
    }

    v239 = v78;
    v80 = v249 != 0x7FFFFFFF;
    if (v247 == 0x7FFF00000000)
    {
      v79 = 0;
    }

    v254 = v79;
    if (v247 != 0x7FFF00000000)
    {
      v80 = 0;
    }

    v246 = v80;
    if (v248)
    {
      v81 = HIDWORD(v248) != 0;
    }

    else
    {
      v81 = 0;
    }

    v257 = v81;
    if (v248)
    {
      v82 = v247 == 0x7FFF00000000;
    }

    else
    {
      v82 = 1;
    }

    v252 = self;
    if (v82)
    {
      v83 = 0x7FFF;
    }

    else
    {
      v83 = WORD2(v247) + v248 - 1;
    }

    v250 = v83;
    v84 = HIDWORD(*&var0);
    v256 = var1.var0;
    v242 = HIDWORD(*&var1);
    while (1)
    {
      v255 = objc_msgSend_fillForRow_(v267, v75, v84, v76, v77);
      if (var0.var0 <= var1.var0)
      {
        break;
      }

LABEL_219:
      v84 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v264, v85, (v84 + 1), v86, v87);

      self = v252;
      if (v84 > v242)
      {
        goto LABEL_220;
      }
    }

    v259 = v84;
    v88 = 0xFFFFFFFF00000000;
    if (v84 != 0x7FFFFFFF)
    {
      v88 = v84 << 32;
    }

    v241 = v88;
    v238 = HIDWORD(v88);
    v90 = v84 >= v249 && v239 >= v84;
    v251 = v90;
    v91 = var0.var0;
    v261 = v84;
    while (1)
    {
      v92 = v259 & 0xFFFF0000FFFFFFFFLL | (v91 << 32);
      if (!hasMergeRangesIntersectingCellRegion)
      {
        break;
      }

      v93 = objc_msgSend_modelCellIDForLayoutCellID_(v264, v85, v259 & 0xFFFF0000FFFFFFFFLL | (v91 << 32), v86, v87);
      v97 = objc_msgSend_mergeRangeAtCellID_(v267, v94, v93, v95, v96);
      if (v97 == 0x7FFFFFFF || (v97 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        break;
      }

      v99 = 0;
      if (!(v85 >> 32))
      {
        goto LABEL_51;
      }

      LOWORD(v100) = v91;
      if (v85)
      {
        v132 = objc_msgSend_layoutCellIDForModelCellID_(v264, v85, v97, v86, v87);
        LODWORD(v84) = v132;
        v100 = HIDWORD(v132);
        v99 = v132 & 0xFFFF000000000000;
      }

LABEL_52:
      v101 = objc_msgSend_tableStyleAreaForCellID_(v264, v85, v92, v86, v87);
      objc_msgSend_getDefaultCell_forTableStyleArea_(v267, v102, v266, v101, v103);
      v108 = objc_msgSend_cellFill(v266, v104, v105, v106, v107);
      v265 = objc_msgSend_fillForColumn_(v267, v109, v100, v110, v111);
      v116 = objc_msgSend_editingSpillingTextRange(v260, v112, v113, v114, v115);
      v118 = 0;
      if (v116 != 0x7FFFFFFF && (v116 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v118 = 0;
        if (v117 >> 32)
        {
          if (v117)
          {
            if (v84 >= v116 && v116 + HIDWORD(v117) - 1 >= v84 && v100 >= WORD2(v116))
            {
              v150 = v117 + WORD2(v116) - 1;
              if (WORD2(v116) == 0x7FFF || v117 == 0)
              {
                v150 = 0x7FFF;
              }

              v118 = v150 >= v100;
            }

            else
            {
              v118 = 0;
            }
          }
        }
      }

      v119 = v100;
      if (objc_msgSend_getCell_atCellID_suppressCellBorder_(v267, v117, v268, v99 | v84 | (v100 << 32), 1))
      {
        objc_msgSend_copyJustStyleAndStrokesToCell_(v266, v120, v268, v121, v122);
      }

      v272[0] = 0;
      v127 = objc_msgSend_cellFillComparedToDefault_suppressCS_isDefault_(v268, v120, v108, 0, v272);
      v128 = v91 << 32;
      if (v272[0] == 1 && v101 == 1)
      {
        v129 = v255;
        if (v255 || (v129 = v265) != 0)
        {
          v130 = v129;
LABEL_67:
          v131 = v130;

          goto LABEL_81;
        }

        if (v243)
        {
          v133 = v119 << 32 == v128 && v261 == v84;
          if (v133 ? objc_msgSend_shouldRowUseBandedFill_(v264, v123, v261, v125, v126) : objc_msgSend_shouldRowUseBandedFill_(v264, v123, v84, v125, v126))
          {
            v130 = objc_msgSend_bandedFillObject(v264, v123, v124, v125, v126);
            goto LABEL_67;
          }
        }
      }

      v131 = v127;
LABEL_81:
      if (v131)
      {
        v135 = v131 == v263;
      }

      else
      {
        v135 = 1;
      }

      v136 = !v135;
      if (((v136 | isDynamicallyChangingCellFill) & v257 & 1) == 0)
      {
        goto LABEL_218;
      }

      if (!v254)
      {
        if (!v251)
        {
          goto LABEL_218;
        }

        if (v246)
        {
          goto LABEL_94;
        }
      }

      if (HIDWORD(v247) <= v91 && v250 >= v91)
      {
LABEL_94:
        v137 = objc_msgSend_layoutEngine(v252, v123, v124, v125, v126);
        v138 = sub_2213AA890(v137, v92);
        v140 = v139;

        if (v118)
        {
          v145 = objc_msgSend_editingSpillingTextRange(v260, v141, v142, v143, v144);
          v147 = v146;
          v148 = sub_221119E0C(v145, v146, v247 | v249, v248);
          v140 = 0x100000001;
          if (v261 == v148)
          {
            v138 = v259 & 0xFFFF0000FFFFFFFFLL | (v91 << 32);
            if (v128 == (v148 & 0xFFFF00000000))
            {
              v138 = v145;
              goto LABEL_114;
            }
          }

          else
          {
            v138 = v259 & 0xFFFF0000FFFFFFFFLL | (v91 << 32);
          }

LABEL_113:
          v152 = v263;

          v147 = v140;
          v131 = v152;
        }

        else
        {
          v147 = 0x100000001;
          if (v138 == 0x7FFFFFFF || (v138 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v140) || !v140)
          {
            v138 = v259 & 0xFFFF0000FFFFFFFFLL | (v91 << 32);
          }

          else
          {
            v149 = sub_221119E0C(v138, v140, v247 | v249, v248);
            if (v261 != v149 || v128 != (v149 & 0xFFFF00000000))
            {
              goto LABEL_113;
            }

            v147 = v140;
          }
        }

LABEL_114:
        v153 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v141, v253, v143, v144);
        v156 = WORD2(v138);
        if (WORD2(v138) == 0x7FFF)
        {
          LODWORD(v157) = -1;
        }

        else
        {
          LODWORD(v157) = WORD2(v138);
        }

        if (v138 == 0x7FFFFFFF)
        {
          v158 = 0xFFFFFFFF00000000;
        }

        else
        {
          v158 = v138 << 32;
        }

        if (v147)
        {
          LODWORD(v159) = v147 + v157 - 1;
        }

        else
        {
          LODWORD(v159) = -1;
        }

        if (HIDWORD(v147))
        {
          v160 = (v147 - 0x100000000 + v158) >> 32;
        }

        else
        {
          v160 = 0xFFFFFFFFLL;
        }

        v161 = -1;
        if (v156 == 0x7FFF || v159 == -1)
        {
          v162 = -1;
        }

        else
        {
          v162 = -1;
          if (v157 <= v159 && v158 != 0xFFFFFFFF00000000 && v160 != 0xFFFFFFFF)
          {
            v163 = HIDWORD(v158);
            if (v163 <= v160 && v153 != -1 && v154 != -1 && v153 <= v154)
            {
              v164 = HIDWORD(v153);
              if (HIDWORD(v153) != 0xFFFFFFFF)
              {
                v165 = v154 >> 32;
                if (v154 >> 32 != 0xFFFFFFFF && v164 <= v165)
                {
                  v157 = v157 <= v153 ? v153 : v157;
                  v159 = v159 >= v154 ? v154 : v159;
                  if (v157 <= v159)
                  {
                    if (v160 < v165)
                    {
                      v165 = v160;
                    }

                    v166 = v163 <= v164 ? HIDWORD(v153) : v163;
                    if (v166 <= v165)
                    {
                      v162 = v159 | (v165 << 32);
                      v161 = v157 | (v166 << 32);
                      objc_msgSend_alignedFrameForGridRange_(v253, v154, v161, v162, v155);
                      goto LABEL_154;
                    }
                  }
                }
              }
            }
          }
        }

        objc_msgSend_alignedFrameForGridRange_(v253, v154, -1, -1, v155);
LABEL_154:
        v171 = v167;
        v172 = v168;
        v173 = v169;
        v174 = v170;
        if (v131 != v263)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((objc_msgSend_isClear(v131, v175, v176, v177, v178) & 1) == 0)
            {
              objc_msgSend_paintRect_inContext_(v131, v123, a5, v125, v126, v171, v172, v173, v174);
              objc_opt_class();
              v182 = TSUDynamicCast();
              if (v182)
              {
                v270 = 0;
                v271 = 0;
                v183 = objc_msgSend_objectForKey_(v240, v179, v182, v180, v181);
                v187 = v183;
                if (v183)
                {
                  objc_msgSend_getValue_(v183, v184, &v270, v185, v186);
                }

                v270 = sub_221286760(v270, v271, v92);
                v271 = v188;
                v270 = objc_msgSend_expandCellRangeToCoverMergedCells_(v264, v188, v270, v188, v189);
                v271 = v190;
                v192 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v190, &v270, "{TSUCellRect={TSUCellCoord=ISBB}{?=II}}", v191);
                objc_msgSend_setObject_forKey_(v240, v193, v192, v182, v194);
              }

              goto LABEL_188;
            }
          }

          else
          {
            v195 = MEMORY[0x277CCACA8];
            v196 = HIDWORD(v161);
            if (v161 != -1 || (v197 = @"{invalid, invalid}", v196 != 0xFFFFFFFF))
            {
              if (v161 == -1 || v196 == 0xFFFFFFFF)
              {
                if (v161 == -1)
                {
                  v199 = HIDWORD(v161);
                }

                else
                {
                  v199 = v161;
                }

                if (v161 == -1)
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"{invalid, %u}", v177, v178, v199);
                }

                else
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"{%u, invalid}", v177, v178, v199);
                }
                v198 = ;
              }

              else
              {
                v198 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"{%u, %u}", v177, v178, v161, HIDWORD(v161));
              }

              v197 = v198;
            }

            v200 = v195;
            v201 = HIDWORD(v162);
            if (v162 != -1 || (v202 = @"{invalid, invalid}", v201 != 0xFFFFFFFF))
            {
              if (v162 == -1 || v201 == 0xFFFFFFFF)
              {
                if (v162 == -1)
                {
                  v204 = HIDWORD(v162);
                }

                else
                {
                  v204 = v162;
                }

                if (v162 == -1)
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"{invalid, %u}", v177, v178, v204);
                }

                else
                {
                  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"{%u, invalid}", v177, v178, v204);
                }
                v203 = ;
              }

              else
              {
                v203 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v175, @"{%u, %u}", v177, v178, v162, HIDWORD(v162));
              }

              v202 = v203;
            }

            v182 = objc_msgSend_stringWithFormat_(v200, v175, @"{%@->%@}", v177, v178, v197, v202);

            NSLog(&cfstr_WarningInvalid.isa, v182, v131);
LABEL_188:
          }
        }

        if (isDynamicallyChangingCellFill)
        {
          v205 = objc_msgSend_dynamicCellFillDelegate(v264, v123, v124, v125, v126);
          v209 = objc_msgSend_changingCellFillAtCellID_(v205, v206, v92, v207, v208);

          if (v209)
          {
            if (v147 != 0x100000001)
            {
              v210 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v123, v253, v125, v126);
              v213 = -1;
              if (v91 == 0x7FFF)
              {
                LODWORD(v214) = -1;
              }

              else
              {
                LODWORD(v214) = v91;
              }

              v215 = -1;
              if (v91 != 0x7FFF && v241 != 0xFFFFFFFF00000000 && v210 != -1 && v211 != -1 && v210 <= v211)
              {
                v216 = HIDWORD(v210);
                if (HIDWORD(v210) != 0xFFFFFFFF)
                {
                  v217 = v211 >> 32;
                  if (v211 >> 32 != 0xFFFFFFFF && v216 <= v217)
                  {
                    v218 = v214 <= v210 ? v210 : v214;
                    v214 = v214 >= v211 ? v211 : v214;
                    if (v218 <= v214)
                    {
                      if (v238 < v217)
                      {
                        v217 = v238;
                      }

                      if (v238 > v216)
                      {
                        v216 = v238;
                      }

                      if (v216 <= v217)
                      {
                        v215 = v214 | (v217 << 32);
                        v213 = v218 | (v216 << 32);
                      }
                    }
                  }
                }
              }

              objc_msgSend_alignedFrameForGridRange_(v253, v211, v213, v215, v212);
              v171 = v219;
              v172 = v220;
              v173 = v221;
              v174 = v222;
            }

            v223 = objc_msgSend_dynamicCellFillDelegate(v264, v123, v124, v125, v126);
            objc_msgSend_paintRect_inContext_(v223, v224, a5, v225, v226, v171, v172, v173, v174);
          }
        }
      }

LABEL_218:
      objc_msgSend_clear(v268, v123, v124, v125, v126);
      objc_msgSend_clear(v266, v227, v228, v229, v230);

      ++v91;
      var1.var0 = v256;
      LODWORD(v84) = v261;
      if (v91 > v256)
      {
        goto LABEL_219;
      }
    }

    v99 = 0;
LABEL_51:
    LOWORD(v100) = v91;
    goto LABEL_52;
  }

LABEL_220:
  if (v237)
  {
    CGContextEndTransparencyLayer(a5);
  }

  v269[0] = MEMORY[0x277D85DD0];
  v269[1] = 3221225472;
  v269[2] = sub_2216EBAB4;
  v269[3] = &unk_278468AF8;
  v269[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v240, v75, v269, v76, v77);
}

- (void)p_drawFinalElements:(id)a3 inContext:(CGContext *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a3;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_drawInContext_(*(*(&v13 + 1) + 8 * v12++), v7, a4, v8, v9, v13);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v13, v17, 16);
    }

    while (v10);
  }
}

- (void)p_drawLayoutSpace:(id)a3 range:(TSUCellRect)a4 inContext:(CGContext *)a5
{
  size = a4.size;
  origin = a4.origin;
  v276[8] = *MEMORY[0x277D85DE8];
  v275 = a3;
  v12 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v9, v275, v10, v11);
  if (origin.column == 0x7FFF)
  {
    column = -1;
  }

  else
  {
    column = origin.column;
  }

  if (origin.row == 0x7FFFFFFF)
  {
    v18 = 0xFFFFFFFF00000000;
  }

  else
  {
    v18 = *&origin << 32;
  }

  if (size.numberOfColumns)
  {
    v19 = size.numberOfColumns + column - 1;
  }

  else
  {
    v19 = -1;
  }

  v20 = 0xFFFFFFFFLL;
  if (HIDWORD(*&size))
  {
    v20 = (*&size - 0x100000000 + v18) >> 32;
  }

  if (origin.column != 0x7FFF && v19 != -1 && column <= v19 && v18 != 0xFFFFFFFF00000000 && v20 != 0xFFFFFFFF)
  {
    v21 = HIDWORD(v18);
    if (v21 <= v20 && v12 != -1 && v13 != -1 && v12 <= v13)
    {
      v22 = HIDWORD(v12);
      if (HIDWORD(v12) != 0xFFFFFFFF)
      {
        v23 = v13 >> 32;
        if (v13 >> 32 != 0xFFFFFFFF && v22 <= v23)
        {
          v24 = column <= v12 ? v12 : column;
          v25 = v19 >= v13 ? v13 : v19;
          if (v24 <= v25)
          {
            v38 = v20 >= v23 ? v13 >> 32 : v20;
            v39 = v21 <= v22 ? HIDWORD(v12) : v21;
            if (v39 <= v38 && v39 != 0xFFFFFFFF)
            {
              sub_2216E9F3C(self, v275, a5);
              v40 = self;
              v273 = v275;
              v270 = objc_msgSend_layoutEngine(v40, v41, v42, v43, v44);
              v271 = objc_msgSend_tableInfo(v40, v45, v46, v47, v48);
              v272 = objc_msgSend_array(MEMORY[0x277CBEB18], v49, v50, v51, v52);
              v57 = objc_msgSend_canvas(v40, v53, v54, v55, v56);
              shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v57, v58, v59, v60, v61);

              v274 = objc_msgSend_currentAnimation(v40, v62, v63, v64, v65);
              v70 = objc_msgSend_cellRange(v270, v66, v67, v68, v69);
              if (WORD2(v70) == 0x7FFF)
              {
                v75 = 0xFFFFFFFFLL;
              }

              else
              {
                v75 = WORD2(v70);
              }

              v76 = v70 << 32;
              if (v70 == 0x7FFFFFFF)
              {
                v76 = 0xFFFFFFFF00000000;
              }

              v77 = v76 | v75;
              v78 = (v71 + v75 - 1);
              v79 = (&v71[v76] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v71 >> 32))
              {
                v79 = 0xFFFFFFFF00000000;
              }

              if (!v71)
              {
                v78 = 0xFFFFFFFFLL;
              }

              v276[0] = v77;
              v276[1] = v78 | v79;
              v80 = objc_msgSend_entireHeaderColumnsCellRange(v270, v71, v72, v73, v74);
              if (WORD2(v80) == 0x7FFF)
              {
                v85 = 0xFFFFFFFFLL;
              }

              else
              {
                v85 = WORD2(v80);
              }

              v86 = v80 << 32;
              if (v80 == 0x7FFFFFFF)
              {
                v86 = 0xFFFFFFFF00000000;
              }

              v87 = v86 | v85;
              v88 = (v81 + v85 - 1);
              v89 = (&v81[v86] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v81 >> 32))
              {
                v89 = 0xFFFFFFFF00000000;
              }

              if (!v81)
              {
                v88 = 0xFFFFFFFFLL;
              }

              v276[2] = v87;
              v276[3] = v88 | v89;
              v90 = objc_msgSend_entireHeaderRowsCellRange(v270, v81, v82, v83, v84);
              if (WORD2(v90) == 0x7FFF)
              {
                v95 = 0xFFFFFFFFLL;
              }

              else
              {
                v95 = WORD2(v90);
              }

              v96 = v90 << 32;
              if (v90 == 0x7FFFFFFF)
              {
                v96 = 0xFFFFFFFF00000000;
              }

              v97 = v96 | v95;
              v98 = (v91 + v95 - 1);
              v99 = (&v91[v96] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v91 >> 32))
              {
                v99 = 0xFFFFFFFF00000000;
              }

              if (!v91)
              {
                v98 = 0xFFFFFFFFLL;
              }

              v276[4] = v97;
              v276[5] = v98 | v99;
              v100 = objc_msgSend_entireFooterRowsCellRange(v270, v91, v92, v93, v94);
              v105 = 0;
              if (WORD2(v100) == 0x7FFF)
              {
                v106 = 0xFFFFFFFFLL;
              }

              else
              {
                v106 = WORD2(v100);
              }

              v107 = v100 << 32;
              if (v100 == 0x7FFFFFFF)
              {
                v107 = 0xFFFFFFFF00000000;
              }

              v108 = v107 | v106;
              v109 = (v101 + v106 - 1);
              if (v101 >> 32)
              {
                v110 = (&v101[v107] & 0xFFFFFFFF00000000) - 0x100000000;
              }

              else
              {
                v110 = 0xFFFFFFFF00000000;
              }

              if (!v101)
              {
                v109 = 0xFFFFFFFFLL;
              }

              v276[6] = v108;
              v276[7] = v109 | v110;
              do
              {
                v112 = v276[v105];
                v111 = v276[v105 + 1];
                v114 = v112 == -1 || v111 == -1 || v112 > v111;
                if (v114 || ((v115 = HIDWORD(v112), v116 = HIDWORD(v111), HIDWORD(v112) != 0xFFFFFFFF) ? (v117 = v116 == 0xFFFFFFFF) : (v117 = 1), !v117 ? (v118 = v115 > v116) : (v118 = 1), v118 || (v24 <= v112 ? (v112 = v112) : (v112 = v24), v25 >= v111 ? (v111 = v111) : (v111 = v25), v112 > v111 || (v38 >= v116 ? (v119 = v116) : (v119 = v38), v39 <= v115 ? (v120 = v115) : (v120 = v39), v120 > v119))))
                {
                  v121 = -1;
                  v122 = -1;
                }

                else
                {
                  v122 = v111 | (v119 << 32);
                  v121 = v112 | (v120 << 32);
                }

                v276[v105] = v121;
                v276[v105 + 1] = v122;
                v105 += 2;
              }

              while (v105 != 8);
              v123 = 0;
              v124 = -1;
              LODWORD(v125) = -1;
              LODWORD(v126) = -1;
              v127 = v40;
              do
              {
                v129 = v276[v123];
                v128 = v276[v123 + 1];
                if (v126 == -1 || v124 == -1 || v126 > v124 || v125 == -1 || (v130 = HIDWORD(v124), HIDWORD(v124) == 0xFFFFFFFF) || v130 < v125)
                {
                  v124 = v276[v123 + 1];
                  v126 = v276[v123];
                }

                else if (v129 == -1 || v128 == -1 || v129 > v128 || (v131 = HIDWORD(v129), HIDWORD(v129) == 0xFFFFFFFF) || (v132 = HIDWORD(v128), HIDWORD(v128) == 0xFFFFFFFF) || v131 > v132)
                {
                  LODWORD(v128) = v124;
                  LODWORD(v129) = v126;
                  v126 = v126 | (v125 << 32);
                }

                else
                {
                  if (v126 >= v129)
                  {
                    v129 = v129;
                  }

                  else
                  {
                    v129 = v126;
                  }

                  if (v125 >= v131)
                  {
                    v133 = v131;
                  }

                  else
                  {
                    v133 = v125;
                  }

                  if (v124 <= v128)
                  {
                    v128 = v128;
                  }

                  else
                  {
                    v128 = v124;
                  }

                  if (v130 <= v132)
                  {
                    v134 = v132;
                  }

                  else
                  {
                    v134 = HIDWORD(v124);
                  }

                  v124 = v128 | (v134 << 32);
                  v126 = v129 | (v133 << 32);
                }

                v136 = v129 == -1 || v128 == -1 || v129 > v128;
                if (v136 || (HIDWORD(v126) <= HIDWORD(v124) ? (v137 = HIDWORD(v126) == 0xFFFFFFFF) : (v137 = 1), !v137 ? (v138 = HIDWORD(v124) == 0xFFFFFFFF) : (v138 = 1), v138))
                {
                  v124 = -1;
                  v126 = -1;
                }

                v125 = HIDWORD(v126);
                v123 += 2;
              }

              while (v123 != 8);
              if (v126 == -1)
              {
                goto LABEL_256;
              }

              if (v124 == -1)
              {
                goto LABEL_256;
              }

              if (v126 > v124)
              {
                goto LABEL_256;
              }

              if (v125 == 0xFFFFFFFF)
              {
                goto LABEL_256;
              }

              v139 = HIDWORD(v124);
              if (HIDWORD(v124) == 0xFFFFFFFF || v139 < v125)
              {
                goto LABEL_256;
              }

              v268 = objc_msgSend_enabled(v274, v101, v102, v103, v104);
              if (v268)
              {
                v144 = objc_msgSend_alignedStrokeFramePathForGridRange_transform_inset_reoriginToZero_cornerRadius_(v273, v140, v126, v124, 0, 0, 0.0, 0.0);
                v145 = v144;
                v150 = objc_msgSend_CGPath(v145, v146, v147, v148, v149);
                path = CGPathRetain(v150);
              }

              else
              {
                path = 0;
              }

              if (objc_msgSend_drawTableName(v274, v140, v141, v142, v143))
              {
                objc_msgSend_p_drawTableNameInContext_animation_(v40, v151, a5, v274, v152);
              }

              v153 = TSDCGContextGetPdfTagger();
              v265 = &unk_283599118;
              v154 = TSUProtocolCast();

              v267 = v154;
              if (v154)
              {
                objc_msgSend_beginTableLayoutSpace_(v154, v155, v273, v157, v158, &unk_283599118);
              }

              v127 = v40;
              if (!objc_msgSend_enabled(v274, v155, v156, v157, v158, v265) || (v127 = v40, objc_msgSend_drawTableBackground(v274, v159, v160, v161, v162)))
              {
                v163 = objc_msgSend_backgroundFill(v271, v159, v160, v161, v162);
                if (v163)
                {
                  CGContextSaveGState(a5);
                  if (v268)
                  {
                    CGContextAddPathSafe();
                    CGContextClip(a5);
                  }

                  CGContextSetBlendMode(a5, kCGBlendModeClear);
                  objc_msgSend_frame(v273, v164, v165, v166, v167);
                  CGContextFillRect(a5, v278);
                  CGContextRestoreGState(a5);
                }
              }

              if (HIDWORD(v126))
              {
                v168 = (HIDWORD(v126) - 1);
              }

              else
              {
                v168 = 0;
              }

              v169 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v159, v273, v161, v162);
              if (v126)
              {
                LODWORD(v174) = v126 - 1;
              }

              else
              {
                LODWORD(v174) = 0;
              }

              LODWORD(v175) = v124 + 1;
              v176 = -1;
              v177 = -1;
              if (v124 != -2 && v174 <= v175)
              {
                v178 = v139 + 1;
                if (v139 != 4294967294 && v178 >= v168 && v169 != -1 && v170 != -1 && v169 <= v170)
                {
                  v179 = HIDWORD(v169);
                  if (HIDWORD(v169) != 0xFFFFFFFF)
                  {
                    v180 = v170 >> 32;
                    if (v170 >> 32 != 0xFFFFFFFF && v179 <= v180)
                    {
                      v174 = v174 <= v169 ? v169 : v174;
                      v175 = v175 >= v170 ? v170 : v175;
                      if (v174 <= v175)
                      {
                        if (v178 < v180)
                        {
                          v180 = v139 + 1;
                        }

                        if (v168 <= v179)
                        {
                          v181 = HIDWORD(v169);
                        }

                        else
                        {
                          v181 = v168;
                        }

                        if (v181 <= v180)
                        {
                          v177 = v175 | (v180 << 32);
                          v176 = v174 | (v181 << 32);
                        }
                      }
                    }
                  }
                }
              }

              if ((shouldSuppressBackgrounds & 1) == 0 && (!objc_msgSend_enabled(v274, v170, v171, v172, v173) || objc_msgSend_drawCellBackground(v274, v182, v183, v184, v185)))
              {
                CGContextSaveGState(a5);
                if (v268)
                {
                  CGContextAddPathSafe();
                  CGContextClip(a5);
                }

                v188 = v176;
                v189 = v177;
                if (v274)
                {
                  if (!objc_msgSend_enabled(v274, v186, v187, v176, v177) || (v193 = objc_msgSend_expandBackgroundFill(v274, v186, v190, v191, v192), v188 = v176, v189 = v177, (v193 & 1) == 0))
                  {
                    v188 = v126;
                    v189 = v124;
                  }
                }

                objc_msgSend_p_drawBackgroundFillInLayoutSpace_gridRange_context_(v127, v186, v273, v188, v189, a5);
                CGContextRestoreGState(a5);
              }

              if (!objc_msgSend_enabled(v274, v170, v171, v172, v173) || objc_msgSend_drawCellContent(v274, v194, v195, v196, v197))
              {
                CGContextSaveGState(a5);
                if (v268)
                {
                  CGContextAddPathSafe();
                  CGContextClip(a5);
                }

                if (shouldSuppressBackgrounds)
                {
                  v206 = objc_msgSend_tableLayout(v127, v202, v203, v204, v205);
                  objc_msgSend_beginDynamicMode_(v270, v207, v206, v208, v209);

                  v214 = objc_msgSend_blackColor(MEMORY[0x277D81180], v210, v211, v212, v213);
                  v219 = objc_msgSend_cellRange(v270, v215, v216, v217, v218);
                  objc_msgSend_updateDynamicFontColor_andRange_(v270, v220, v214, v219, v220);
                }

                sub_2216EBCA8(v127, v273, v126, v124, v272, 0, 0, a5);
                if (shouldSuppressBackgrounds)
                {
                  v225 = objc_msgSend_layout(v127, v221, v222, v223, v224);
                  objc_msgSend_endDynamicMode_(v270, v226, v225, v227, v228);
                }

                CGContextRestoreGState(a5);
              }

              if (objc_msgSend_enabled(v274, v198, v199, v200, v201) && !objc_msgSend_drawStrokes(v274, v229, v230, v231, v232))
              {
                if (!objc_msgSend_enabled(v274, v233, v234, v235, v236))
                {
                  goto LABEL_239;
                }

                CGContextSaveGState(a5);
                if (v268)
                {
                  CGContextAddPathSafe();
                  CGContextClip(a5);
                }

                v238 = 1;
                if (v176 == -1 || v177 == -1 || v176 > v177 || HIDWORD(v176) == 0xFFFFFFFF || HIDWORD(v177) == 0xFFFFFFFF || HIDWORD(v176) > HIDWORD(v177))
                {
LABEL_238:
                  objc_msgSend_drawStrokesInGridRange_clearStrokes_context_(v273, v237, v176, v177, v238, a5);
                  CGContextRestoreGState(a5);
LABEL_239:
                  if ((!objc_msgSend_enabled(v274, v239, v240, v241, v242) || objc_msgSend_drawCellContent(v274, v243, v244, v245, v246)) && objc_msgSend_count(v272, v243, v244, v245, v246))
                  {
                    CGContextSaveGState(a5);
                    if (v268)
                    {
                      CGContextAddPathSafe();
                      CGContextClip(a5);
                    }

                    objc_msgSend_p_drawFinalElements_inContext_(v127, v247, v272, a5, v248);
                    CGContextRestoreGState(a5);
                  }

                  if ((shouldSuppressBackgrounds & 1) == 0 && (!objc_msgSend_enabled(v274, v243, v244, v245, v246) || objc_msgSend_drawTableBackground(v274, v243, v249, v245, v246)))
                  {
                    v253 = objc_msgSend_backgroundFill(v271, v243, v249, v245, v246);
                    if (v253)
                    {
                      v254 = MEMORY[0x277D81150];
                      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v250, "void TSTTableRepDrawGridRange(TSTTableRep *__strong, TSTLayoutSpace *__strong, TSTGridRange, TSTAnimation *__strong, CGContextRef)", v251, v252);
                      v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v256, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v257, v258);
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v254, v260, v255, v259, 7221, 0, "background fill is not supported yet");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v261, v262, v263, v264);
                    }
                  }

                  if (path)
                  {
                    CGPathRelease(path);
                  }

                  if (v267)
                  {
                    objc_msgSend_endTableLayoutSpace_(v267, v243, v273, v245, v246);
                  }

LABEL_256:
                  if (v273 && a5)
                  {
                    CGContextRestoreGState(a5);
                  }

                  goto LABEL_31;
                }
              }

              else
              {
                CGContextSaveGState(a5);
                if (v268)
                {
                  CGContextAddPathSafe();
                  CGContextClip(a5);
                }

                v238 = 0;
                if (v176 == -1)
                {
                  goto LABEL_238;
                }

                if (v177 == -1)
                {
                  goto LABEL_238;
                }

                if (v176 > v177)
                {
                  goto LABEL_238;
                }

                v238 = 0;
                if (HIDWORD(v176) == 0xFFFFFFFF || HIDWORD(v177) == 0xFFFFFFFF || HIDWORD(v176) > HIDWORD(v177))
                {
                  goto LABEL_238;
                }

                v238 = 0;
              }

              v177 = (v177 & 0xFFFFFFFF00000000 | (v177 + 1)) + 0x100000000;
              goto LABEL_238;
            }
          }
        }
      }
    }
  }

LABEL_31:
  v26 = objc_msgSend_canvas(self, v13, v14, v15, v16);
  objc_msgSend_viewScale(v26, v27, v28, v29, v30);
  v32 = v31;
  objc_msgSend_currentScreenScale(self, v33, v34, v35, v36);
  sub_2216E538C(self, v32, v37);
}

- (void)p_drawLayoutSpace:(id)a3 dirtyRect:(CGRect)a4 inContext:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v62 = a3;
  v11 = MEMORY[0x277D86228];
  v16 = objc_msgSend_currentAnimation(self, v12, v13, v14, v15);
  v21 = objc_msgSend_enabled(v16, v17, v18, v19, v20);

  if (v21)
  {
    v26 = objc_msgSend_currentAnimation(self, v22, v23, v24, v25);
    v31 = objc_msgSend_cellRangeCount(v26, v27, v28, v29, v30);

    if (!v31)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31 = 1;
  }

  for (i = 0; i != v31; ++i)
  {
    v33 = objc_msgSend_nearestRangeForLayoutRect_(v62, v22, v23, v24, v25, x, y, width, height);
    v35 = v34;
    v39 = objc_msgSend_currentAnimation(self, v34, v36, v37, v38);
    v44 = objc_msgSend_enabled(v39, v40, v41, v42, v43);

    if (v44)
    {
      v48 = objc_msgSend_currentAnimation(self, v22, v45, v46, v47);
      v52 = objc_msgSend_cellRangeAtIndex_(v48, v49, i, v50, v51);
      v54 = v53;

      v33 = sub_221119E0C(v33, v35, v52, v54);
      v35 = v55;
      v59 = objc_msgSend_layoutEngine(self, v55, v56, v57, v58);
      LOBYTE(v52) = objc_msgSend_isEntireCellRangeHidden_(v59, v60, v33, v35, v61);

      if (v52)
      {
        continue;
      }
    }

    objc_msgSend_p_drawLayoutSpace_range_inContext_(self, v22, v62, v33, v35, a5);
  }

LABEL_10:
}

- (void)p_lockAndDrawLayoutSpace:(id)a3 checkFrameHasWidthAndHeight:(BOOL)a4 dirtyRect:(CGRect)a5 inContext:(CGContext *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v13 = a3;
  v24 = v13;
  if (!v13 || !v11)
  {
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (objc_msgSend_frameHasWidthAndHeight(v13, v14, v15, v16, v17))
  {
LABEL_6:
    objc_msgSend_lockForRead(v24, v14, v15, v16, v17);
    objc_msgSend_p_drawLayoutSpace_dirtyRect_inContext_(self, v18, v24, a6, v19, x, y, width, height);
    objc_msgSend_unlock(v24, v20, v21, v22, v23);
  }

LABEL_7:
}

- (BOOL)mustDrawOnMainThreadForInteractiveCanvas
{
  v5 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  v10 = objc_msgSend_dynamicContentDelegate(v5, v6, v7, v8, v9);
  if (objc_msgSend_isDynamicallyResizingTableName(v5, v11, v12, v13, v14))
  {
    MustDrawOnMainThread = 1;
  }

  else if (v10)
  {
    MustDrawOnMainThread = objc_msgSend_dynamicContentMustDrawOnMainThread(v10, v15, v16, v17, v18);
  }

  else
  {
    MustDrawOnMainThread = 0;
  }

  return MustDrawOnMainThread;
}

- (void)recursivelyDrawInContext:(CGContext *)a3 keepingChildrenPassingTest:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_tableLayout(self, v7, v8, v9, v10);
  v16 = objc_msgSend_isInGroup(v11, v12, v13, v14, v15);

  if (v16)
  {
    v21 = objc_msgSend_tableLayout(self, v17, v18, v19, v20);
    sub_2211B65A0(v21);
  }

  v22 = objc_msgSend_layoutEngine(self, v17, v18, v19, v20);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_2216EF0AC;
  v27[3] = &unk_278468B48;
  v29 = a3;
  v27[4] = self;
  v23 = v6;
  v28 = v23;
  objc_msgSend_readSafelyUsingBlock_(v22, v24, v27, v25, v26);
}

- (void)drawInContext:(CGContext *)a3
{
  v7 = objc_msgSend_tableLayout(self, a2, a3, v3, v4);
  v12 = objc_msgSend_layoutEngine(self, v8, v9, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2216EF2D8;
  v17[3] = &unk_27845F1A0;
  v17[4] = self;
  v13 = v7;
  v18 = v13;
  v19 = a3;
  objc_msgSend_readSafelyUsingBlock_(v12, v14, v17, v15, v16);
}

- (CGRect)p_scaledCanvasFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)p_fontColorAtCellID:(TSUCellCoord)a3 cell:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  v14 = objc_msgSend_characterFillAtCellID_optionalCell_(v11, v12, *&a3, v6, v13);
  v19 = objc_msgSend_blackColor(MEMORY[0x277D81180], v15, v16, v17, v18);
  v24 = objc_msgSend_canvas(self, v20, v21, v22, v23);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v24, v25, v26, v27, v28);

  if ((shouldSuppressBackgrounds & 1) == 0)
  {
    v34 = objc_msgSend_null(MEMORY[0x277CBEB68], v30, v31, v32, v33);

    if (v14 == v34)
    {
      v39 = objc_msgSend_textStyle(v6, v35, v36, v37, v38);
      objc_opt_class();
      v43 = objc_msgSend_objectForProperty_(v39, v40, 50, v41, v42);
      v44 = TSUDynamicCast();

      if (v44)
      {
        v49 = objc_msgSend_null(MEMORY[0x277CBEB68], v45, v46, v47, v48);

        if (v44 != v49)
        {
          v54 = objc_msgSend_color(v44, v50, v51, v52, v53);

          v19 = v54;
        }
      }
    }

    else
    {
      objc_msgSend_referenceColor(v14, v35, v36, v37, v38);
      v19 = v39 = v19;
    }
  }

  return v19;
}

- (BOOL)p_drawingCheckboxOrRatingInCell:(id)a3 cellID:(TSUCellCoord)a4
{
  v6 = a3;
  v11 = objc_msgSend_formatType(v6, v7, v8, v9, v10);
  if (v11 == 263)
  {
    LOBYTE(v20) = 1;
  }

  else if (v11 == 267)
  {
    v16 = objc_msgSend_tableInfo(self, v12, v13, v14, v15);
    v20 = objc_msgSend_isCategoryGroupValueCell_(v16, v17, *&a4, v18, v19) ^ 1;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (void)p_drawCheckboxOrRatingInContext:(CGContext *)a3 viewScale:(double)a4 contentFrame:(CGRect)a5 cell:(id)a6 cellID:(TSUCellCoord)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v66 = a6;
  v19 = objc_msgSend_valueType(v66, v15, v16, v17, v18);
  v24 = objc_msgSend_formatType(v66, v20, v21, v22, v23);
  v27 = objc_msgSend_p_fontColorAtCellID_cell_(self, v25, *&a7, v66, v26);
  v28 = TSDCGContextGetPdfTagger();
  v29 = TSUProtocolCast();

  if (v24 == 267)
  {
    objc_msgSend_numberDoubleValue(v66, v30, v31, v32, v33, &unk_283599118);
    v40 = v39;
    hasFormula = objc_msgSend_hasFormula(v66, v41, v42, v43, v44);
    v50 = round(v40 + v40) * 0.5;
    if (hasFormula)
    {
      v40 = v50;
      objc_msgSend_beginRatingCell_(v29, v45, v46, v47, v48, v50);
    }

    else
    {
      objc_msgSend_beginRatingCell_(v29, v45, v46, v47, v48, v40);
    }

    v55 = objc_msgSend_CGColor(v27, v51, v52, v53, v54);
    objc_msgSend_renderRating_intoContext_rect_showDots_color_(TSTStarRatingRenderer, v56, a3, hasFormula ^ 1u, v55, v40, x, y, width, height);
    objc_msgSend_endRatingCell(v29, v57, v58, v59, v60);
  }

  else if (v24 == 263)
  {
    if (v19 == 6)
    {
      v34 = objc_msgSend_BOOLValue(v66, v30, v31, v32, v33, &unk_283599118);
      objc_msgSend_beginCheckboxCell_(v29, v35, v34, v36, v37, v65);
    }

    else
    {
      v34 = 0;
      objc_msgSend_beginCheckboxCell_(v29, v30, 0, v32, v33, &unk_283599118);
    }

    objc_msgSend_renderCheckbox_viewScale_intoContext_rect_color_(TSTCheckboxRenderer, v38, v34, a3, v27, a4, x, y, width, height);
    objc_msgSend_endCheckboxCell(v29, v61, v62, v63, v64);
  }
}

- (void)p_drawGroupingArrowInContext:(CGContext *)a3 contentFrame:(CGRect)a4 cell:(id)a5 cellID:(TSUCellCoord)a6 groupingArrowState:(int64_t)a7 alignedClipFrame:(CGRect)a8 verticalAlignment:(int)a9 wpColumn:(id)a10
{
  height = a4.size.height;
  width = a4.size.width;
  rect = a4.origin.y;
  x = a4.origin.x;
  v107 = a5;
  v17 = a10;
  v22 = objc_msgSend_tableInfo(self, v18, v19, v20, v21);
  v27 = objc_msgSend_layoutEngine(self, v23, v24, v25, v26);
  v31 = objc_msgSend_groupingArrowStateAtCellID_(v27, v28, *&a6, v29, v30);

  if (!v31)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSTTableRep p_drawGroupingArrowInContext:contentFrame:cell:cellID:groupingArrowState:alignedClipFrame:verticalAlignment:wpColumn:]", v34, v35);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 7613, 0, "should only be called on grouping cells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  if (objc_msgSend_isCategorized(v22, v32, v33, v34, v35))
  {
    v51 = objc_msgSend_groupLevelAtSummaryRow_(v22, v47, *&a6, v49, v50);
    v106 = sub_221446548(v51);
  }

  else if (objc_msgSend_isAPivotTable(v22, v47, v48, v49, v50))
  {
    v106 = sub_221446548(1);
  }

  else
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "[TSTTableRep p_drawGroupingArrowInContext:contentFrame:cell:cellID:groupingArrowState:alignedClipFrame:verticalAlignment:wpColumn:]", v57, v58);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 7621, 0, "should only be called on tables that are grouped");

    v106 = 0.0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

  IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(self, v52, v53, v54, v55);
  v73 = objc_msgSend_p_fontColorAtCellID_cell_(self, v71, *&a6, v107, v72);
  memset(&v114, 0, sizeof(v114));
  CGContextGetUserSpaceToDeviceSpaceTransform(&v114, a3);
  memset(&v113, 0, sizeof(v113));
  v109 = v114;
  CGAffineTransformInvert(&v113, &v109);
  if ((IsLeftToRight & 1) == 0)
  {
    v115.origin.x = x;
    v115.origin.y = rect;
    v115.size.width = width;
    v115.size.height = height;
    CGRectGetMaxX(v115);
  }

  TSURoundedPoint();
  v79 = v78;
  v81 = v80;
  a = v113.a;
  b = v113.b;
  c = v113.c;
  tx = v113.tx;
  ty = v113.ty;
  d = v113.d;
  if (v17)
  {
    v111 = 0u;
    v112 = 0u;
    v110 = 0u;
    memset(&v109, 0, sizeof(v109));
    objc_msgSend_fontHeightInfoAtCharIndex_(v17, v74, 0, v76, v77);
    if (v109.d <= 0.0)
    {
      objc_msgSend_boundsOfLineFragmentAtIndex_(v17, v84, 0, v85, v86, v109.d);
      CGRectGetMidY(v116);
    }

    else
    {
      objc_msgSend_baselineOfLineFragmentAtIndex_(v17, v84, 0, v85, v86, v109.d);
    }
  }

  else
  {
    v87 = objc_msgSend_layoutEngine(v22, v74, v75, v76, v77);
    objc_msgSend_fittingHeightOfRow_(v87, v88, *&a6, v89, v90);
  }

  CGContextSaveGState(a3);
  CGContextGetClipBoundingBox(a3);
  objc_msgSend_isAPivotTable(v22, v91, v92, v93, v94);
  CGContextClipToRectSafe();
  CGContextTranslateCTM(a3, tx + v81 * c + a * v79, ty + v81 * d + b * v79);
  v95 = v106 - 7.0 - 7.0;
  if (!IsLeftToRight)
  {
    v95 = -7.0 - v95;
  }

  CGContextTranslateCTM(a3, v95, 0.0);
  v100 = objc_msgSend_CGColor(v73, v96, v97, v98, v99);
  CGContextSetFillColorWithColor(a3, v100);
  CGContextSetLineWidth(a3, 1.0);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  CGContextAddPathSafe();
  CGPathRelease(Mutable);
  CGContextFillPath(a3);
  CGContextStrokePath(a3);
  CGContextRestoreGState(a3);
}

- (void)p_drawAnimation:(id)a3 inContext:(CGContext *)a4
{
  v35 = a3;
  objc_msgSend_pushAnimation_(self, v6, v35, v7, v8);
  if (objc_msgSend_final(v35, v9, v10, v11, v12))
  {
    v19 = objc_msgSend_stage(v35, v13, v14, v15, v16);
    v20 = 0;
    do
    {
      objc_msgSend_setStage_andFinal_(v35, v17, v20, 1, v18);
      v27 = objc_msgSend_cellRangeCount(v35, v21, v22, v23, v24);
      if (v27)
      {
        for (i = 0; i != v27; ++i)
        {
          v29 = objc_msgSend_cellRangeAtIndex_(v35, v17, i, v26, v18);
          sub_2216EFF88(self, v29, v30, a4);
        }
      }

      ++v20;
    }

    while (v20 <= v19);
  }

  else
  {
    v31 = objc_msgSend_cellRangeCount(v35, v13, v14, v15, v16);
    if (v31)
    {
      for (j = 0; j != v31; ++j)
      {
        v33 = objc_msgSend_cellRangeAtIndex_(v35, v17, j, v26, v18);
        sub_2216EFF88(self, v33, v34, a4);
      }
    }
  }

  objc_msgSend_popAnimation(self, v17, v25, v26, v18);
}

- (CGRect)p_getImageFrameForAnimation:(id)a3
{
  v4 = a3;
  if (objc_msgSend_final(v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_tableLayout(self, v9, v10, v11, v12);
    v14 = sub_2211B6DA4(v13);
    v16 = v15;
  }

  else
  {
    v21 = objc_msgSend_cellRangeCount(v4, v9, v10, v11, v12);
    v14 = 0x7FFF7FFFFFFFLL;
    v16 = 0;
    if (v21)
    {
      v22 = 0;
      do
      {
        v23 = objc_msgSend_cellRangeAtIndex_(v4, v17, v22, v19, v20);
        v14 = sub_2211C1FC4(v14, v16, v23, v24);
        v16 = v17;
        ++v22;
      }

      while (v21 != v22);
    }
  }

  if (objc_msgSend_enabled(v4, v17, v18, v19, v20))
  {
    v29 = objc_msgSend_drawTableName(v4, v25, v26, v27, v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_2216F01E0(self, v14, v16, v29);
  v34 = sub_2211B4100(v30, v31, v32, v33);
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v34;
  v42 = v36;
  v43 = v38;
  v44 = v40;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (id)p_cellAtUnscaledPoint:(CGPoint)a3
{
  v4 = sub_2216E5284(self, 0, a3.x, a3.y);
  v9 = objc_msgSend_tableInfo(self, v5, v6, v7, v8);
  v13 = objc_msgSend_cellAtCellID_(v9, v10, v4, v11, v12);

  return v13;
}

- (BOOL)tappedControlCellAtUnscaledPoint:(CGPoint)a3
{
  v6 = objc_msgSend_p_cellAtUnscaledPoint_(self, a2, v3, v4, v5, a3.x, a3.y);
  hasControl = objc_msgSend_hasControl(v6, v7, v8, v9, v10);

  return hasControl;
}

- (BOOL)tappedStockCellAtUnscaledPoint:(CGPoint)a3
{
  v6 = objc_msgSend_p_cellAtUnscaledPoint_(self, a2, v3, v4, v5, a3.x, a3.y);
  hasStockFormulaForStockUI = objc_msgSend_hasStockFormulaForStockUI(v6, v7, v8, v9, v10);

  return hasStockFormulaForStockUI;
}

- (CGRect)searchSelectionBounds
{
  x = self->_searchSelectionBounds.origin.x;
  y = self->_searchSelectionBounds.origin.y;
  width = self->_searchSelectionBounds.size.width;
  height = self->_searchSelectionBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TSTSelectionDragController)cellDragController
{
  WeakRetained = objc_loadWeakRetained(&self->_cellDragController);

  return WeakRetained;
}

- (TSTTableAnimationController)animationController
{
  WeakRetained = objc_loadWeakRetained(&self->_animationController);

  return WeakRetained;
}

- (TSTCanvasReferenceController)canvasReferenceController
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasReferenceController);

  return WeakRetained;
}

- (TSUCellRect)zoomToEditVisibleCellRange
{
  p_zoomToEditVisibleCellRange = &self->_zoomToEditVisibleCellRange;
  origin = self->_zoomToEditVisibleCellRange.origin;
  size = p_zoomToEditVisibleCellRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

@end