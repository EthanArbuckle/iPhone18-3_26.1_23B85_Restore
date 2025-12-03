@interface TSTTableRep
- (BOOL)canDrawTilingLayerInBackground:(id)background;
- (BOOL)handlesEditMenu;
- (BOOL)isDraggable;
- (BOOL)isFullyVisibleWithBorder:(int)border;
- (BOOL)mustDrawOnMainThreadForInteractiveCanvas;
- (CALayer)layerForRep;
- (CGAffineTransform)transformFromCanvas;
- (CGAffineTransform)transformToCanvas;
- (CGRect)boundsForCellSelection:(id)selection;
- (CGRect)boundsForResizeGuideUI;
- (CGRect)canvasBoundsForCellRange:(id)range;
- (CGRect)canvasVisibleRect;
- (CGRect)deviceBoundsForCellRange:(id)range;
- (CGRect)layerFrameInScaledCanvas;
- (CGRect)p_alignedLayerFrameForLayoutSpace:(id)space transform:(CGAffineTransform *)transform;
- (NSString)description;
- (TSDCanvasView)canvasView;
- (TSDEditorController)editorController;
- (TSTCellRegion)selectionRegion;
- (TSTEditingState)editingState;
- (TSTMasterLayout)masterLayout;
- (TSTTableModel)tableModel;
- (TSTTableRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)additionalLayersOverLayer;
- (id)p_frozenHeaderOverlayLayers;
- (id)p_tableNameOverlayLayers;
- (id)p_textImageForPath:(CGPath *)path shouldPulsate:(BOOL)pulsate;
- (id)repForDragging;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)beginDragInsertFromPalette;
- (void)contentsRectForCellRangeAcrossSpaces:(id)spaces contentsCenterInfo:(id *)info canvasFrame:(CGRect *)frame contentsRect:(CGRect *)rect;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)endDragInsertFromPalette;
- (void)invalidateAnnotationColor;
- (void)invalidateCellRange:(id)range fittingRange:(id)fittingRange invalidateSize:(BOOL)size;
- (void)invalidateComments;
- (void)invalidateFrozenHeaders;
- (void)invalidateSelection;
- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only;
- (void)orientationDidChange:(id)change;
- (void)p_editingDidEnd;
- (void)p_hideSelectionLayers;
- (void)p_invalidateCellCommentBadges;
- (void)recursivelyDrawInContext:(CGContext *)context;
- (void)screenScaleDidChange;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInCellRange:(id)range;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)updateChildrenFromLayout;
- (void)updateFromLayout;
- (void)validateFrozenHeaderColumns;
- (void)validateFrozenHeaderCorner;
- (void)validateFrozenHeaderRows;
- (void)validateFrozenHeaderTableBodyMask;
- (void)validateStrokesInEditingSpillingTextRange;
- (void)validateTableName;
- (void)validateVisibleRect;
- (void)viewScaleDidChange;
@end

@implementation TSTTableRep

- (TSTTableModel)tableModel
{
  tableInfo = [(TSTTableRep *)self tableInfo];

  return [(TSTTableInfo *)tableInfo tableModel];
}

- (TSTEditingState)editingState
{
  tableInfo = [(TSTTableRep *)self tableInfo];

  return [(TSTTableInfo *)tableInfo editingState];
}

- (TSTMasterLayout)masterLayout
{
  tableInfo = [(TSTTableRep *)self tableInfo];

  return [(TSTTableInfo *)tableInfo masterLayout];
}

- (TSDCanvasView)canvasView
{
  if (![(TSDCanvas *)self->super.super.mCanvas isCanvasInteractive])
  {
    return 0;
  }

  layerHost = [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] layerHost];

  return [(TSDCanvasLayerHosting *)layerHost canvasView];
}

- (TSDEditorController)editorController
{
  if (![(TSDCanvas *)self->super.super.mCanvas isCanvasInteractive])
  {
    return 0;
  }

  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController editorController];
}

- (CGAffineTransform)transformToCanvas
{
  [(TSDRep *)self frameInUnscaledCanvas];

  return CGAffineTransformMakeTranslation(retstr, v4, v5);
}

- (CGAffineTransform)transformFromCanvas
{
  if (self)
  {
    [(TSTTableRep *)self transformToCanvas];
  }

  else
  {
    memset(&v5, 0, sizeof(v5));
  }

  return CGAffineTransformInvert(retstr, &v5);
}

- (CGRect)canvasVisibleRect
{
  canvas = [(TSDRep *)self canvas];

  [(TSDCanvas *)canvas visibleUnscaledRectForClippingReps];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CALayer)layerForRep
{
  interactiveCanvasController = [(TSDRep *)self interactiveCanvasController];

  return [(TSDInteractiveCanvasController *)interactiveCanvasController layerForRep:self];
}

- (TSTCellRegion)selectionRegion
{
  if ([(TSTMasterLayout *)[(TSTTableRep *)self masterLayout] isDynamicallyChangingSelection])
  {
    masterLayout = [(TSTTableRep *)self masterLayout];

    return [(TSTMasterLayout *)masterLayout dynamicSelectionRegion];
  }

  else
  {
    editorSelection = [(TSTTableRep *)self editorSelection];

    return [editorSelection cellRegion];
  }
}

- (id)repForDragging
{
  if (self->mContainedTextEditingRep)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = TSTTableRep;
  return [(TSDRep *)&v5 repForDragging];
}

- (CGRect)layerFrameInScaledCanvas
{
  mCanvas = self->super.super.mCanvas;
  [(TSDRep *)self frameInUnscaledCanvas];
  [(TSDCanvas *)mCanvas convertUnscaledToBoundsRect:?];
  v8 = TSDRoundedRectForScale(v4, v5, v6, v7, self->mCurrentScreenScale);
  v10 = v9;
  v12 = TSDCeilSize(v11);
  v14 = v13;
  v15 = v8;
  v16 = v10;
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)dealloc
{
  self->mHyperlinkField = 0;

  self->mTableChrome = 0;
  self->mReferences = 0;
  mOverlayTableName = self->mOverlayTableName;
  if (mOverlayTableName)
  {
    [(TSDTilingLayer *)mOverlayTableName setDelegate:0];

    self->mOverlayTableName = 0;
  }

  if (self->mOverlayFrozenHeaderColumns)
  {
    [(CALayer *)self->mOverlayFrozenHeaderColumnsMask setDelegate:0];

    self->mOverlayFrozenHeaderColumnsMask = 0;
    [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setDelegate:0];

    self->mOverlayFrozenHeaderColumns = 0;
  }

  if (self->mOverlayFrozenHeaderRows)
  {
    [(CALayer *)self->mOverlayFrozenHeaderRowsMask setDelegate:0];

    self->mOverlayFrozenHeaderRowsMask = 0;
    [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setDelegate:0];

    self->mOverlayFrozenHeaderRows = 0;
  }

  mOverlayFrozenHeaderCorner = self->mOverlayFrozenHeaderCorner;
  if (mOverlayFrozenHeaderCorner)
  {
    [(TSDTilingLayer *)mOverlayFrozenHeaderCorner setDelegate:0];

    self->mOverlayFrozenHeaderCorner = 0;
  }

  if (self->mOverlayFrozenHeaderTableBodyMask)
  {
    [(CALayer *)self->mOverlayFrozenHeaderTableNameMask removeFromSuperlayer];
    [(CALayer *)self->mOverlayFrozenHeaderTableNameMask setDelegate:0];

    self->mOverlayFrozenHeaderTableNameMask = 0;
    [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask removeFromSuperlayer];
    [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask setDelegate:0];

    self->mOverlayFrozenHeaderTableBodyMask = 0;
  }

  [(TSTSelectionDragController *)self->mCellDragController setTableRep:0];
  self->mCellDragController = 0;
  v5.receiver = self;
  v5.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v5 dealloc];
}

- (TSTTableRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v9.receiver = self;
  v9.super_class = TSTTableRep;
  v4 = [(TSWPTextHostRep *)&v9 initWithLayout:layout canvas:canvas];
  if (v4)
  {
    v5 = +[TSTConfiguration sharedTableConfiguration];
    v4->mDragByHandleOnly = [v5 dragByHandleOnly];
    v4->mSelectionUsesBezierPath = [v5 selectionUsesBezierPath];
    v4->mSelectsCellOnInitialTap = [v5 selectsCellOnInitialTap];
    v4->mUsesWholeChromeResizer = [v5 usesWholeChromeResizer];
    v6 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    if (v6 <= 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    TSTTableRepRatingCellDraggingValue = v7;
    v4->mVisibleFillKnobs = objc_alloc_init(MEMORY[0x277CBEB98]);
    v4->mAnimationStack = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v4;
}

- (BOOL)handlesEditMenu
{
  editingMode = [(TSTEditingState *)[(TSTTableRep *)self editingState] editingMode];
  if ([(TSDRep *)self isLocked])
  {
    return 0;
  }

  if (editingMode)
  {
    return 1;
  }

  return self->super.super.mKnobTracker != 0;
}

- (void)updateChildrenFromLayout
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v2 updateChildrenFromLayout];
}

- (BOOL)isDraggable
{
  if (![-[TSDRep info](self "info")])
  {
    return 1;
  }

  tableLayout = [(TSTTableRep *)self tableLayout];

  return TSTLayoutIsPartitionAlongTop(tableLayout);
}

- (CGRect)deviceBoundsForCellRange:(id)range
{
  v22 = TSDRectUnit;
  v23 = *&qword_26CA652A0;
  tableLayout = [(TSTTableRep *)self tableLayout];
  TSTLayoutGetViewScale(tableLayout);
  memset(&v21, 0, sizeof(v21));
  CGAffineTransformMakeScale(&v21, v6, v6);
  v24.origin.x = TSTLayoutGetAlignedStrokeFrameForRange(tableLayout, *&range);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v19 = v21;
  v20 = CGRectApplyAffineTransform(v24, &v19);
  CanvasRectForRect = TSTLayoutGetCanvasRectForRect(tableLayout, x, y, width, height);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(TSTTableRep *)self contentsRectForCellRangeAcrossSpaces:range contentsCenterInfo:0 canvasFrame:&v20 contentsRect:&v22];
  memset(&v19, 0, sizeof(v19));
  TSTLayoutGetTransformToDevice(tableLayout, &v19);
  v18 = v19;
  v25.origin.x = CanvasRectForRect;
  v25.origin.y = v13;
  v25.size.width = v15;
  v25.size.height = v17;
  result = CGRectApplyAffineTransform(v25, &v18);
  if (*&v22 > 0.0)
  {
    result.origin.x = result.origin.x + result.size.width * *&v22;
    result.size.width = result.size.width * *&v23;
  }

  if (*(&v22 + 1) > 0.0)
  {
    result.origin.y = result.origin.y + result.size.height * *(&v22 + 1);
    result.size.height = result.size.height * *(&v23 + 1);
  }

  return result;
}

- (CGRect)canvasBoundsForCellRange:(id)range
{
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v6 = 1.0 / v5;
  [(TSTTableRep *)self deviceBoundsForCellRange:range];

  v11 = TSDMultiplyRectScalar(v7, v8, v9, v10, v6);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)boundsForCellSelection:(id)selection
{
  [(TSDLayoutGeometry *)[(TSDAbstractLayout *)[(TSDRep *)self layout] geometry] size];
  if (selection.var1 == 255)
  {
    var1 = 0xFFFFFFFFLL;
  }

  else
  {
    var1 = selection.var1;
  }

  if (selection.var0 == 0xFFFF)
  {
    var0 = 0xFFFFFFFFLL;
  }

  else
  {
    var0 = selection.var0;
  }

  v7 = ((var0 << 32) + 0x100010000) & 0xFFFFFFFF00000000 | var1;
  v8 = var1 | (var0 << 32);
  tableLayout = [(TSTTableRep *)self tableLayout];

  FrameForGridRange = TSTLayoutGetFrameForGridRange(tableLayout, v8, v7 - 0x100000000);
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = FrameForGridRange;
  return result;
}

- (void)contentsRectForCellRangeAcrossSpaces:(id)spaces contentsCenterInfo:(id *)info canvasFrame:(CGRect *)frame contentsRect:(CGRect *)rect
{
  v11 = ~spaces.var0.var0;
  x = frame->origin.x;
  y = frame->origin.y;
  width = frame->size.width;
  height = frame->size.height;
  v17 = 0.0;
  v16 = 0.0;
  v18 = 1.0;
  v19 = 1.0;
  tableLayout = [(TSTTableRep *)self tableLayout];
  Space = TSTLayoutGetSpace([(TSTTableRep *)self tableLayout]);
  FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
  FrozenHeaderColumnsSpace = TSTLayoutGetFrozenHeaderColumnsSpace(tableLayout);
  if (v11)
  {
    if ((*&spaces & 0xFF0000) != 0xFF0000)
    {
      if (HIWORD(*&spaces))
      {
        if ((*&spaces & 0xFFFF00000000) != 0)
        {
          v24 = FrozenHeaderColumnsSpace;
          if (FrozenHeaderRowsSpace | FrozenHeaderColumnsSpace)
          {
            [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
            memset(&v64, 0, sizeof(v64));
            CGAffineTransformMakeScale(&v64, v25, v25);
            v65.origin.x = TSTLayoutGetAlignedMaskRectForSpace(tableLayout, Space);
            v63 = v64;
            v66 = CGRectApplyAffineTransform(v65, &v63);
            v67 = CGRectIntegral(v66);
            v59 = v67.origin.x;
            v60 = v67.size.width;
            v61 = v67.size.height;
            v62 = v67.origin.y;
            if (!v24 || !TSTLayoutGetFrozenHeaderColumnsFloating(tableLayout) || info && info->var1 <= 0.0)
            {
LABEL_37:
              if (!FrozenHeaderRowsSpace)
              {
LABEL_74:
                frame->origin.x = x;
                frame->origin.y = y;
                frame->size.width = width;
                frame->size.height = height;
                rect->origin.x = v17;
                rect->origin.y = v16;
                rect->size.width = v18;
                rect->size.height = v19;
                return;
              }

              goto LABEL_38;
            }

            v68.origin.x = x;
            v68.origin.y = y;
            v68.size.width = width;
            v68.size.height = height;
            MinX = CGRectGetMinX(v68);
            v69.origin.x = v59;
            v69.size.width = v60;
            v69.size.height = v61;
            v69.origin.y = v62;
            if (MinX >= CGRectGetMinX(v69))
            {
LABEL_36:
              v16 = 0.0;
              goto LABEL_37;
            }

            Range = TSTLayoutSpaceGetRange(v24);
            v28 = 0;
            v29 = 16711680;
            v30 = 0xFFFFLL;
            if (Range != 0xFFFF)
            {
              v31 = 0;
              if ((Range & 0xFF0000) == 0xFF0000)
              {
                goto LABEL_31;
              }

              v28 = 0;
              v29 = 16711680;
              v30 = 0xFFFFLL;
              if (HIWORD(Range))
              {
                v31 = 0;
                if ((Range & 0xFFFF00000000) != 0)
                {
                  v30 = 0;
                  v32 = BYTE2(Range) <= spaces.var0.var1 ? spaces.var0.var1 : BYTE2(Range);
                  v33 = Range <= spaces.var0.var0 ? spaces.var0.var0 : Range;
                  v34 = (BYTE4(Range) + BYTE2(Range) - 1) >= (LOBYTE(spaces.var1.var0) + spaces.var0.var1 - 1) ? (LOBYTE(spaces.var1.var0) + spaces.var0.var1 - 1) : (BYTE4(Range) + BYTE2(Range) - 1);
                  v35 = (Range + HIWORD(Range) - 1) >= (spaces.var0.var0 + spaces.var1.var1 - 1) ? (spaces.var0.var0 + spaces.var1.var1 - 1) : (Range + HIWORD(Range) - 1);
                  v29 = 0;
                  v28 = 0;
                  v31 = 0;
                  if (v33 <= v35 && v32 <= v34)
                  {
                    v31 = ((v35 - v33) << 48) + 0x1000000000000;
                    v28 = (((v34 - v32) << 32) + 0x100000000) & 0xFFFF00000000;
                    v29 = v32 << 16;
                    v30 = v33;
                  }
                }

                goto LABEL_31;
              }
            }

            v31 = 0;
LABEL_31:
            if (!HIWORD(v31) || (v36 = v29 | v30 | v28 | v31, (v36 & 0xFFFF00000000) == 0))
            {
              v74.origin.x = x;
              v74.origin.y = y;
              v74.size.width = width;
              v74.size.height = height;
              MaxX = CGRectGetMaxX(v74);
              v75.size.width = v60;
              v75.origin.x = v59;
              v75.size.height = v61;
              v75.origin.y = v62;
              if (MaxX < CGRectGetMinX(v75))
              {
                goto LABEL_77;
              }

              if (info && info->var0)
              {
                v48 = v59 - x;
                var2 = info->var2;
                v16 = 0.0;
                if (v59 - x <= var2)
                {
                  v17 = v48 / info->var1;
                }

                else
                {
                  var1 = info->var1;
                  if (width - v48 <= var2 + info->var3)
                  {
                    v17 = 1.0 - (width - v48) / var1;
                  }

                  else
                  {
                    v17 = var2 / var1;
                  }
                }
              }

              else
              {
                v48 = v59 - x;
                v17 = (v59 - x) / width;
                v16 = 0.0;
              }

              x = v59;
              v18 = 1.0 - v17;
              width = width - v48;
              if (!FrozenHeaderRowsSpace)
              {
                goto LABEL_74;
              }

LABEL_38:
              if (!TSTLayoutGetFrozenHeaderRowsFloating(tableLayout) || info && info->var4 <= 0.0)
              {
                goto LABEL_74;
              }

              v72.origin.x = x;
              v72.origin.y = y;
              v72.size.width = width;
              v72.size.height = height;
              MinY = CGRectGetMinY(v72);
              v73.origin.x = v59;
              v73.size.width = v60;
              v73.size.height = v61;
              v73.origin.y = v62;
              if (MinY >= CGRectGetMinY(v73))
              {
                goto LABEL_73;
              }

              v38 = TSTLayoutSpaceGetRange(FrozenHeaderRowsSpace);
              v39 = 0;
              v40 = 16711680;
              v41 = 0xFFFFLL;
              if (v38 != 0xFFFF)
              {
                v42 = 0;
                if ((v38 & 0xFF0000) == 0xFF0000)
                {
                  goto LABEL_68;
                }

                v39 = 0;
                v40 = 16711680;
                v41 = 0xFFFFLL;
                if (HIWORD(v38))
                {
                  v42 = 0;
                  if ((v38 & 0xFFFF00000000) != 0)
                  {
                    v41 = 0;
                    v43 = BYTE2(v38) <= spaces.var0.var1 ? spaces.var0.var1 : BYTE2(v38);
                    v44 = v38 <= spaces.var0.var0 ? spaces.var0.var0 : v38;
                    v45 = (BYTE4(v38) + BYTE2(v38) - 1) >= (LOBYTE(spaces.var1.var0) + spaces.var0.var1 - 1) ? (LOBYTE(spaces.var1.var0) + spaces.var0.var1 - 1) : (BYTE4(v38) + BYTE2(v38) - 1);
                    v46 = (v38 + HIWORD(v38) - 1) >= (spaces.var0.var0 + spaces.var1.var1 - 1) ? (spaces.var0.var0 + spaces.var1.var1 - 1) : (v38 + HIWORD(v38) - 1);
                    v40 = 0;
                    v39 = 0;
                    v42 = 0;
                    if (v44 <= v46 && v43 <= v45)
                    {
                      v42 = ((v46 - v44) << 48) + 0x1000000000000;
                      v39 = (((v45 - v43) << 32) + 0x100000000) & 0xFFFF00000000;
                      v40 = v43 << 16;
                      v41 = v44;
                    }
                  }

                  goto LABEL_68;
                }
              }

              v42 = 0;
LABEL_68:
              if (HIWORD(v42))
              {
                v51 = v40 | v41 | v39 | v42;
                if ((v51 & 0xFFFF00000000) != 0)
                {
                  if (((v51 ^ *&spaces) & 0xFFFFFFFF00FFFFFFLL) != 0)
                  {
                    v76.origin.x = x;
                    v76.origin.y = y;
                    v76.size.width = width;
                    v76.size.height = height;
                    MaxY = CGRectGetMaxY(v76);
                    v77.origin.x = v59;
                    v77.size.width = v60;
                    v77.size.height = v61;
                    v77.origin.y = v62;
                    if (MaxY < CGRectGetMinY(v77))
                    {
                      height = v62 - y;
                      v19 = 1.00000012;
                    }
                  }

LABEL_73:
                  v16 = 0.0;
                  goto LABEL_74;
                }
              }

              v78.origin.x = x;
              v78.origin.y = y;
              v78.size.width = width;
              v78.size.height = height;
              v52 = CGRectGetMaxY(v78);
              v79.origin.x = v59;
              v79.size.width = v60;
              v79.size.height = v61;
              v79.origin.y = v62;
              if (v52 >= CGRectGetMinY(v79))
              {
                if (info && info->var0)
                {
                  v54 = v62 - y;
                  y = v62;
                  var5 = info->var5;
                  if (v54 <= var5)
                  {
                    v16 = v54 / info->var4;
                  }

                  else
                  {
                    var4 = info->var4;
                    if (height - v54 <= var5 + info->var6)
                    {
                      v16 = 1.0 - (height - v54) / var4;
                    }

                    else
                    {
                      v16 = var5 / var4;
                    }
                  }
                }

                else
                {
                  v54 = v62 - y;
                  y = v62;
                  v16 = v54 / height;
                }

                v19 = 1.0 - v16;
                height = height - v54;
                goto LABEL_74;
              }

LABEL_77:
              v53 = *(MEMORY[0x277CBF3A0] + 16);
              frame->origin = *MEMORY[0x277CBF3A0];
              frame->size = v53;
              rect->origin = CGRectEmptyUnitSquare;
              rect->size = unk_26CA67CA0;
              return;
            }

            if (((v36 ^ *&spaces) & 0xFFFFFFFF00FFFFFFLL) != 0)
            {
              v70.origin.x = x;
              v70.origin.y = y;
              v70.size.width = width;
              v70.size.height = height;
              v57 = CGRectGetMaxX(v70);
              v71.size.width = v60;
              v71.origin.x = v59;
              v71.size.height = v61;
              v71.origin.y = v62;
              if (v57 < CGRectGetMinX(v71))
              {
                width = v59 - x;
                v18 = 1.00000012;
              }
            }

            goto LABEL_36;
          }
        }
      }
    }
  }
}

- (void)updateFromLayout
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v5 = v4;
  TSTLayoutSetViewScale(tableLayout, v4);
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  TSTTableRepSetupUserSpaceToDeviceSpaceTransform(self, v5, v6);
  if (TSTLayoutSetTabsVisible([(TSTTableRep *)self tableLayout], 0))
  {
    [(TSDRep *)self invalidateKnobs];
  }

  [(TSTTableRep *)self validateVisibleRect];
  if (!self->super.super.mSelectionHighlightLayerValid)
  {
    [(TSTTableChromeProvider *)[(TSTTableRep *)self tableChrome] selectionHighlightLayerInvalidateLayout];
  }

  editingSpillingTextRange = [(TSTLayout *)[(TSTTableRep *)self tableLayout] editingSpillingTextRange];
  if (editingSpillingTextRange.var0.var0 != 0xFFFF && (*&editingSpillingTextRange & 0xFF0000) != 0xFF0000 && HIWORD(*&editingSpillingTextRange) && (*&editingSpillingTextRange & 0xFFFF00000000) != 0)
  {
    [(TSTTableRep *)self dirtyCellRange:[(TSTLayout *)[(TSTTableRep *)self tableLayout] editingSpillingTextRange]];
  }

  Range = TSTMasterLayoutGetRange([(TSTLayout *)tableLayout masterLayout]);
  v9 = TSTMasterLayoutExpandCellRangeToCoverMergedCells([(TSTTableRep *)self masterLayout], *&self->mDirtyCellRange);
  emptyFilteredTable = [(TSTMasterLayout *)[(TSTTableRep *)self masterLayout] emptyFilteredTable];
  v11 = v9 & 0xFF0000;
  if (!emptyFilteredTable || v9 == 0xFFFFLL || v11 == 16711680 || !HIWORD(v9) || (v9 & 0xFFFF00000000) == 0)
  {
    v12 = 0;
    v13 = 16711680;
    v14 = 0xFFFFLL;
    if (v9 != 0xFFFFLL)
    {
      v15 = 0;
      if (v11 == 16711680)
      {
        goto LABEL_38;
      }

      v12 = 0;
      v13 = 16711680;
      v14 = 0xFFFFLL;
      if (HIWORD(v9))
      {
        v15 = 0;
        if ((v9 & 0xFFFF00000000) == 0)
        {
          goto LABEL_38;
        }

        v12 = 0;
        v13 = 16711680;
        v14 = 0xFFFFLL;
        if (Range != 0xFFFF)
        {
          v15 = 0;
          if ((Range & 0xFF0000) != 0xFF0000)
          {
            v12 = 0;
            v13 = 16711680;
            v14 = 0xFFFFLL;
            if (HIWORD(Range))
            {
              v15 = 0;
              if ((Range & 0xFFFF00000000) != 0)
              {
                v14 = 0;
                if (BYTE2(v9) <= BYTE2(Range))
                {
                  v16 = BYTE2(Range);
                }

                else
                {
                  v16 = BYTE2(v9);
                }

                if (v9 <= Range)
                {
                  v17 = Range;
                }

                else
                {
                  v17 = v9;
                }

                if ((BYTE4(v9) + BYTE2(v9) - 1) >= (BYTE4(Range) + BYTE2(Range) - 1))
                {
                  v18 = (BYTE4(Range) + BYTE2(Range) - 1);
                }

                else
                {
                  v18 = (BYTE4(v9) + BYTE2(v9) - 1);
                }

                v19 = (Range + HIWORD(Range) - 1);
                if ((v9 + HIWORD(v9) - 1) < v19)
                {
                  v19 = (v9 + HIWORD(v9) - 1);
                }

                v13 = 0;
                v12 = 0;
                v15 = 0;
                if (v17 <= v19 && v16 <= v18)
                {
                  v15 = ((v19 - v17) << 48) + 0x1000000000000;
                  v12 = (((v18 - v16) << 32) + 0x100000000) & 0xFFFF00000000;
                  v13 = v16 << 16;
                  v14 = v17;
                }
              }

              goto LABEL_38;
            }

            goto LABEL_37;
          }

LABEL_38:
          Range = v13 | v14 | v12 | v15;
          goto LABEL_39;
        }
      }
    }

LABEL_37:
    v15 = 0;
    goto LABEL_38;
  }

LABEL_39:
  self->mDirtyCellRange = 0xFFFFFFLL;
  if (Range != 0xFFFF && (Range & 0xFF0000) != 0xFF0000 && HIWORD(Range) && (Range & 0xFFFF00000000) != 0)
  {
    [(TSTTableRep *)self setNeedsDisplayInCellRange:Range];
  }

  v20.receiver = self;
  v20.super_class = TSTTableRep;
  [(TSDRep *)&v20 updateFromLayout];
}

- (void)layoutInRootChangedFrom:(id)from to:(id)to translatedOnly:(BOOL)only
{
  v6.receiver = self;
  v6.super_class = TSTTableRep;
  [(TSDRep *)&v6 layoutInRootChangedFrom:from to:to translatedOnly:only];
  [(TSTTableChromeProvider *)[(TSTTableRep *)self tableChrome] invalidateAllChrome];
}

- (void)validateStrokesInEditingSpillingTextRange
{
  editingSpillingTextRange = [(TSTLayout *)[(TSTTableRep *)self tableLayout] editingSpillingTextRange];
  v4 = [TSTLayoutCellIterator alloc];
  masterLayout = [(TSTTableRep *)self masterLayout];
  v14 = [(TSTLayoutCellIterator *)v4 initWithMasterLayout:masterLayout range:[(TSTLayout *)[(TSTTableRep *)self tableLayout] editingSpillingTextRange] flags:128];
  while (TSTLayoutCellIteratorGetNextCell(v14, v19))
  {
    null = [MEMORY[0x277CBEB68] null];
    null2 = [MEMORY[0x277CBEB68] null];
    null3 = [MEMORY[0x277CBEB68] null];
    null4 = [MEMORY[0x277CBEB68] null];
    v10 = WORD2(v19[0]);
    v11 = BYTE6(v19[0]);
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    v12 = WORD2(v19[0]) | (BYTE6(v19[0]) << 16) | (HIBYTE(v19[0]) << 24);
    v2 = v12 | v2 & 0xFFFFFFFF00000000;
    TSTMasterLayoutGetStrokesForCellID([(TSTTableRep *)self masterLayout], v2, &v18, &v17, &v16, &v15);
    if (v18 && v10 != editingSpillingTextRange.var0.var0)
    {
      null = [v18 mutableCopy];
      [(TSDStroke *)null setColor:[(TSUColor *)[(TSDStroke *)null color] colorWithAlphaComponent:0.100000001]];
      [(TSDStroke *)null setDontClearBackground:1];
    }

    if (v16 && v10 != (editingSpillingTextRange.var0.var0 + editingSpillingTextRange.var1.var1 - 1))
    {
      null2 = [v16 mutableCopy];
      [(TSDStroke *)null2 setColor:[(TSUColor *)[(TSDStroke *)null2 color] colorWithAlphaComponent:0.100000001]];
      [(TSDStroke *)null2 setDontClearBackground:1];
    }

    if (v17 && v11 != editingSpillingTextRange.var0.var1)
    {
      null3 = [v17 mutableCopy];
      [(TSDStroke *)null3 setColor:[(TSUColor *)[(TSDStroke *)null3 color] colorWithAlphaComponent:0.100000001]];
      [(TSDStroke *)null3 setDontClearBackground:1];
    }

    if (v15 && v11 != (LOBYTE(editingSpillingTextRange.var1.var0) + editingSpillingTextRange.var0.var1 - 1))
    {
      null4 = [v15 mutableCopy];
      [(TSDStroke *)null4 setColor:[(TSUColor *)[(TSDStroke *)null4 color] colorWithAlphaComponent:0.100000001]];
      [(TSDStroke *)null4 setDontClearBackground:1];
    }

    masterLayout = v12 | masterLayout & 0xFFFFFFFF00000000;
    TSTMasterLayoutSetStrokesForCellID([(TSTTableRep *)self masterLayout], masterLayout, null, null2, null4, null3);
  }

  TSTMasterLayoutSetStrokesValidForRange([(TSTTableRep *)self masterLayout], *&editingSpillingTextRange);
}

- (void)validateVisibleRect
{
  [(TSTLayout *)[(TSTTableRep *)self tableLayout] validate];
  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {
    [(TSDInteractiveCanvasController *)[(TSDRep *)self interactiveCanvasController] animatingViewScale];
  }

  tableLayout = [(TSTTableRep *)self tableLayout];
  [(TSTTableRep *)self canvasVisibleRect];
  TSTLayoutSetCanvasVisibleRect(tableLayout, v4, v5, v6, v7);
  [(TSTTableRep *)self p_frozenHeaderOverlayLayers];
  if (self->mOverlayTableName)
  {
    [(TSTTableRep *)self validateTableName];
  }

  if (self->mOverlayFrozenHeaderCorner)
  {
    [(TSTTableRep *)self validateFrozenHeaderCorner];
  }

  if (self->mOverlayFrozenHeaderRows)
  {
    [(TSTTableRep *)self validateFrozenHeaderRows];
  }

  if (self->mOverlayFrozenHeaderColumns)
  {
    [(TSTTableRep *)self validateFrozenHeaderColumns];
  }

  if (self->mOverlayFrozenHeaderTableBodyMask)
  {

    [(TSTTableRep *)self validateFrozenHeaderTableBodyMask];
  }
}

- (BOOL)isFullyVisibleWithBorder:(int)border
{
  [(TSTTableRep *)self canvasVisibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v23.origin.x = TSTLayoutGetCanvasStrokeFrame([(TSTTableRep *)self tableLayout]);
  v24 = CGRectInset(v23, -border, -border);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;

  return CGRectContainsRect(*&v17, *&x);
}

- (void)viewScaleDidChange
{
  TSTLayoutInvalidateLayoutSpaceTableOffsets([(TSTTableRep *)self tableLayout]);
  [(TSTTableChromeProvider *)[(TSTTableRep *)self tableChrome] invalidateAllChrome];
  [(TSTTableChromeProvider *)[(TSTTableRep *)self tableChrome] invalidateAddressBarSelection];
  v3.receiver = self;
  v3.super_class = TSTTableRep;
  [(TSDRep *)&v3 viewScaleDidChange];
}

- (void)screenScaleDidChange
{
  v2.receiver = self;
  v2.super_class = TSTTableRep;
  [(TSDRep *)&v2 screenScaleDidChange];
}

- (void)invalidateSelection
{
  [(TSDRep *)self invalidateKnobPositions];
  mKnobTracker = self->super.super.mKnobTracker;
  if (!mKnobTracker || ![(TSDKnobTracker *)mKnobTracker didBegin])
  {
    [(TSDRep *)self invalidateKnobs];
  }

  [(TSTTableChromeProvider *)[(TSTTableRep *)self tableChrome] invalidateAddressBarSelection];
  tableChrome = [(TSTTableRep *)self tableChrome];

  [(TSTTableChromeProvider *)tableChrome selectionHighlightLayerInvalidateDisplay];
}

- (void)invalidateCellRange:(id)range fittingRange:(id)fittingRange invalidateSize:(BOOL)size
{
  sizeCopy = size;
  tableLayout = [(TSTTableRep *)self tableLayout];
  TSTLayoutInvalidateCellRangeAndFittingRange(tableLayout);
  [(TSTTableRep *)self dirtyCellRange:range];
  if (sizeCopy)
  {
    [(TSTLayout *)tableLayout invalidateSize];
    [(TSTTableChromeProvider *)[(TSTTableRep *)self tableChrome] invalidateAllChrome];
  }

  if ([(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
  {

    [(TSTTableRep *)self invalidateSelection];
  }
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = TSTTableRep;
  [(TSDRep *)&v3 setNeedsDisplay];
  [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setNeedsDisplay];
  [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setNeedsDisplay];
  [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setNeedsDisplay];
  [(TSDTilingLayer *)self->mOverlayTableName setNeedsDisplay];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect))
  {
    v62.receiver = self;
    v62.super_class = TSTTableRep;
    [(TSDRep *)&v62 setNeedsDisplayInRect:x, y, width, height];
    tableLayout = [(TSTTableRep *)self tableLayout];
    FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
    FrozenHeaderColumnsSpace = TSTLayoutGetFrozenHeaderColumnsSpace(tableLayout);
    FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderCornerSpace(tableLayout);
    newCanvasRevealedVertically = [(TSTLayout *)tableLayout newCanvasRevealedVertically];
    [(TSTLayout *)tableLayout setNewCanvasRevealedVertically:0];
    newCanvasRevealedHorizontally = [(TSTLayout *)tableLayout newCanvasRevealedHorizontally];
    [(TSTLayout *)tableLayout setNewCanvasRevealedHorizontally:0];
    [(TSDRep *)self convertNaturalRectToLayerRelative:x, y, width, height];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [(TSDRep *)self convertNaturalRectToUnscaledCanvas:x, y, width, height];
    v60 = v23;
    v61 = v22;
    v58 = v25;
    v59 = v24;
    v26 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
    if (FrozenHeaderRowsSpace && self->mOverlayFrozenHeaderRows && (Frame = TSTLayoutSpaceGetFrame(FrozenHeaderRowsSpace), v29 = v28, v31 = v30, v33 = v32, [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows frame], v71.origin.y = v60, v71.origin.x = v61, v71.size.height = v58, v71.size.width = v59, CGRectIntersectsRect(v63, v71)))
    {
      v64.origin.x = Frame;
      v64.origin.y = v29;
      v64.size.width = v31;
      v64.size.height = v33;
      v72.origin.x = v15;
      v72.origin.y = v17;
      v72.size.width = v19;
      v72.size.height = v21;
      v34 = !CGRectIntersectsRect(v64, v72);
    }

    else
    {
      LOBYTE(v34) = 0;
    }

    if (FrozenHeaderColumnsSpace && self->mOverlayFrozenHeaderColumns && (v35 = TSTLayoutSpaceGetFrame(FrozenHeaderColumnsSpace), v37 = v36, v39 = v38, v41 = v40, [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns frame], v73.origin.y = v60, v73.origin.x = v61, v73.size.height = v58, v73.size.width = v59, CGRectIntersectsRect(v65, v73)))
    {
      v66.origin.x = v35;
      v66.origin.y = v37;
      v66.size.width = v39;
      v66.size.height = v41;
      v74.origin.x = v15;
      v74.origin.y = v17;
      v74.size.width = v19;
      v74.size.height = v21;
      v42 = !CGRectIntersectsRect(v66, v74);
    }

    else
    {
      LOBYTE(v42) = 0;
    }

    if (FrozenHeaderCornerSpace)
    {
      if (self->mOverlayFrozenHeaderCorner)
      {
        v43 = TSTLayoutSpaceGetFrame(FrozenHeaderCornerSpace);
        v45 = v44;
        v47 = v46;
        v49 = v48;
        [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner frame];
        v75.origin.y = v60;
        v75.origin.x = v61;
        v75.size.height = v58;
        v75.size.width = v59;
        if (CGRectIntersectsRect(v67, v75))
        {
          v68.origin.x = v43;
          v68.origin.y = v45;
          v68.size.width = v47;
          v68.size.height = v49;
          v76.origin.x = v15;
          v76.origin.y = v17;
          v76.size.width = v19;
          v76.size.height = v21;
          v50 = CGRectIntersectsRect(v68, v76);
          LOBYTE(v34) = !v50 | v34;
          LOBYTE(v42) = !v50 | v42;
        }
      }

      v26 = &OBJC_IVAR___TSDButtonKnob_mEnabled;
    }

    if ((newCanvasRevealedVertically | v42))
    {
      v51 = v19 + v15;
    }

    else
    {
      v51 = v19;
    }

    if ((newCanvasRevealedVertically | v42))
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v15;
    }

    if ((newCanvasRevealedHorizontally | v34))
    {
      v53 = v21 + v17;
    }

    else
    {
      v53 = v21;
    }

    if ((newCanvasRevealedHorizontally | v34))
    {
      v54 = 0.0;
    }

    else
    {
      v54 = v17;
    }

    if (FrozenHeaderRowsSpace)
    {
      v55 = *(&self->super.super.super.isa + v26[848]);
      if (v55)
      {
        [v55 setNeedsDisplayInRect:{v15, v54, v19, v53}];
      }
    }

    if (FrozenHeaderColumnsSpace)
    {
      mOverlayFrozenHeaderColumns = self->mOverlayFrozenHeaderColumns;
      if (mOverlayFrozenHeaderColumns)
      {
        [(TSDTilingLayer *)mOverlayFrozenHeaderColumns setNeedsDisplayInRect:v52, v17, v51, v21];
      }
    }

    if (FrozenHeaderCornerSpace)
    {
      mOverlayFrozenHeaderCorner = self->mOverlayFrozenHeaderCorner;
      if (mOverlayFrozenHeaderCorner)
      {
        v69.origin.x = v15;
        v69.origin.y = v54;
        v69.size.width = v19;
        v69.size.height = v53;
        v77.origin.x = v52;
        v77.origin.y = v17;
        v77.size.width = v51;
        v77.size.height = v21;
        v70 = CGRectUnion(v69, v77);
        [(TSDTilingLayer *)mOverlayFrozenHeaderCorner setNeedsDisplayInRect:v70.origin.x, v70.origin.y, v70.size.width, v70.size.height];
      }
    }
  }
}

- (void)setNeedsDisplayInCellRange:(id)range
{
  spaceBundle = [(TSTLayout *)[(TSTTableRep *)self tableLayout] spaceBundle];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TSTTableRep_setNeedsDisplayInCellRange___block_invoke;
  v6[3] = &unk_279D4A300;
  v6[4] = self;
  v6[5] = range;
  [(TSTLayoutSpaceBundle *)spaceBundle performActionOnEachLayoutSpace:v6];
}

uint64_t __42__TSTTableRep_setNeedsDisplayInCellRange___block_invoke(uint64_t a1, TSTLayoutSpace *a2)
{
  v4 = TSTLayoutSpaceIntersectionCellRange(a2, *(a1 + 40));
  v5 = v4;
  if (v4 != 0xFFFF)
  {
    v6 = (v4 & 0xFF0000) == 0xFF0000 || HIWORD(v4) == 0;
    if (!v6 && (v4 & 0xFFFF00000000) != 0)
    {
      v41.origin.x = TSTLayoutSpaceGetStrokeFrame(a2);
      v42 = CGRectInset(v41, -1000.0, -1000.0);
      x = v42.origin.x;
      y = v42.origin.y;
      width = v42.size.width;
      height = v42.size.height;
      FrameForRange = TSTLayoutSpaceGetFrameForRange(a2, v5);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      Range = TSTLayoutSpaceGetRange(a2);
      v21 = Range;
      v22 = *(a1 + 40);
      if (BYTE2(v22) == BYTE2(Range))
      {
        v17 = v17 + FrameForRange;
        FrameForRange = 0.0;
      }

      if ((BYTE4(v22) + BYTE2(v22) - 1) >= (BYTE4(Range) + BYTE2(Range) - 1))
      {
        v43.origin.x = FrameForRange;
        v43.origin.y = v15;
        v43.size.width = v17;
        v43.size.height = v19;
        MaxX = CGRectGetMaxX(v43);
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = width;
        v44.size.height = height;
        v17 = MaxX - CGRectGetMinX(v44);
        v22 = *(a1 + 40);
      }

      if (v22 == v21)
      {
        v24 = v19 + v15;
      }

      else
      {
        v24 = v19;
      }

      if (v22 == v21)
      {
        v15 = 0.0;
      }

      if ((v22 + HIWORD(v22) - 1) >= (v21 + HIWORD(v21) - 1))
      {
        v25 = FrameForRange;
        v26 = v15;
        v27 = v17;
        MaxY = CGRectGetMaxY(*(&v24 - 3));
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v24 = MaxY - CGRectGetMinY(v45);
      }

      [*(a1 + 32) convertNaturalRectToLayerRelative:{FrameForRange, v15, v17, v24}];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if ([(TSTLayoutSpace *)a2 isFrozen])
      {
        if ([(TSTLayoutSpace *)a2 isColumns])
        {
          v37 = *(a1 + 32);
          v38 = 400;
        }

        else
        {
          v39 = [(TSTLayoutSpace *)a2 isRows];
          v37 = *(a1 + 32);
          if (v39)
          {
            v38 = 392;
          }

          else
          {
            v38 = 384;
          }
        }

        [*(v37 + v38) setNeedsDisplayInRect:{v30, v32, v34, v36}];
      }

      else
      {
        [*(a1 + 32) convertNaturalRectFromLayerRelative:{v30, v32, v34, v36}];
        rect.origin.y = *(a1 + 32);
        *&rect.size.width = TSTTableRep;
        [(CGFloat *)&rect.origin.y setNeedsDisplayInRect:?];
      }
    }
  }

  return 0;
}

- (void)p_invalidateCellCommentBadges
{
  if (TSTTableNumberOfComments([(TSTTableRep *)self tableModel]))
  {

    [(TSTTableRep *)self setNeedsDisplay];
  }
}

- (void)invalidateAnnotationColor
{
  v3.receiver = self;
  v3.super_class = TSTTableRep;
  [(TSDRep *)&v3 invalidateAnnotationColor];
  [(TSTTableRep *)self p_invalidateCellCommentBadges];
}

- (void)invalidateComments
{
  v3.receiver = self;
  v3.super_class = TSTTableRep;
  [(TSDRep *)&v3 invalidateComments];
  [(TSTTableRep *)self p_invalidateCellCommentBadges];
}

- (void)orientationDidChange:(id)change
{
  [(TSDCanvas *)[(TSDRep *)self canvas] layoutInvalidated];
  tableChrome = [(TSTTableRep *)self tableChrome];

  [(TSTTableChromeProvider *)tableChrome invalidateAllChrome];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  if (self->mOverlayTableName == layer)
  {

    TSTTableRepDrawTableName(self, context, 0);
  }

  else
  {
    if (self->mOverlayFrozenHeaderCorner == layer)
    {
      FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderCornerSpace([(TSTTableRep *)self tableLayout]);
    }

    else if (self->mOverlayFrozenHeaderColumns == layer)
    {
      FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderColumnsSpace([(TSTTableRep *)self tableLayout]);
    }

    else
    {
      if (self->mOverlayFrozenHeaderRows != layer)
      {
        return;
      }

      FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderRowsSpace([(TSTTableRep *)self tableLayout]);
    }

    TSTTableRepDrawFrozenHeaderRegion(self, FrozenHeaderCornerSpace, layer, context);
  }
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  if ([key isEqualToString:@"delegate"])
  {
    return 0;
  }

  v5 = MEMORY[0x277CBEB68];

  return [v5 null];
}

- (id)additionalLayersOverLayer
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  layers = [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self highlightArrayController] layers];
  if ([(NSArray *)layers count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(NSArray *)layers countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(layers);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          [v9 setDelegate:{-[TSDRep interactiveCanvasController](self, "interactiveCanvasController")}];
          [v9 setZPosition:0.0];
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)layers countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    [array addObjectsFromArray:layers];
  }

  layers2 = [(TSKHighlightArrayController *)[(TSWPTextHostRep *)self pulseArrayController] layers];
  if ([(NSArray *)layers2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSArray *)layers2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(layers2);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          [v15 setDelegate:{-[TSDRep interactiveCanvasController](self, "interactiveCanvasController")}];
          [v15 setZPosition:0.0];
          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)layers2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }

    [array addObjectsFromArray:layers2];
  }

  [array addObjectsFromArray:{-[TSTTableRep p_tableNameOverlayLayers](self, "p_tableNameOverlayLayers")}];
  [array addObjectsFromArray:{-[TSTTableRep p_frozenHeaderOverlayLayers](self, "p_frozenHeaderOverlayLayers")}];
  return array;
}

- (id)p_tableNameOverlayLayers
{
  array = [MEMORY[0x277CBEB18] array];
  tableLayout = [(TSTTableRep *)self tableLayout];
  if (TSTLayoutGetTableNameVisible(tableLayout) && TSTLayoutIsPartitionAlongLeft(tableLayout) && ![(TSTLayout *)tableLayout inPrintPreviewMode])
  {
    if (self->mOverlayTableName || (v7 = objc_alloc_init(TSDTilingLayer), self->mOverlayTableName = v7, [(TSDTilingLayer *)v7 setName:@"mOverlayTableName"], [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale], [(TSDTilingLayer *)self->mOverlayTableName setContentsScale:?], [(TSDTilingLayer *)self->mOverlayTableName setDrawsInBackground:[(TSTTableRep *)self canDrawInBackgroundDuringScroll]], [(TSDTilingLayer *)self->mOverlayTableName setDelegate:self], [(TSTTableRep *)self invalidateTableName], [(TSTTableRep *)self validateTableName], self->mOverlayTableName))
    {
      [array addObject:?];
    }
  }

  else
  {
    mOverlayTableName = self->mOverlayTableName;
    if (mOverlayTableName)
    {
      [(TSDTilingLayer *)mOverlayTableName setDelegate:0];

      self->mOverlayTableName = 0;
    }
  }

  return array;
}

- (void)validateTableName
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  mOverlayTableName = self->mOverlayTableName;
  [(TSDTilingLayer *)mOverlayTableName bounds];
  rect1[0] = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  TSTLayoutGetFrame(tableLayout);
  height = v12;
  if (self->mOverlayFrozenHeaderRows)
  {
    FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
  }

  else
  {
    FrozenHeaderRowsSpace = TSTLayoutGetSpace(tableLayout);
  }

  RenderingFrame = TSTLayoutGetRenderingFrame(tableLayout, FrozenHeaderRowsSpace);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (tableLayout)
  {
    [(TSDAbstractLayout *)tableLayout transform];
  }

  else
  {
    memset(&v45, 0, sizeof(v45));
  }

  v46.origin.x = RenderingFrame;
  v46.origin.y = v17;
  v46.size.width = v19;
  v46.size.height = v21;
  v47 = CGRectApplyAffineTransform(v46, &v45);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  if (self->mOverlayFrozenHeaderRows && TSTLayoutGetFrozenHeaderRowsFloating(tableLayout))
  {
    memset(&v45, 0, sizeof(v45));
    TSTLayoutGetFrozenTableNameTransformToLayout(tableLayout, &v45);
    *&rect1[1] = v45;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v49 = CGRectApplyAffineTransform(v48, &rect1[1]);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
  }

  [(TSDCanvas *)[(TSDRep *)self canvas] convertUnscaledToBoundsRect:x, y, width, height];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v34 = TSDRoundedRectForScale(v26, v28, v30, v32, v33);
  v36 = v35;
  v38 = TSDCeilSize(v37);
  [(TSDTilingLayer *)mOverlayTableName setFrame:v34, v36, v38, v39];
  [(TSDTilingLayer *)mOverlayTableName bounds];
  v51.origin.x = v40;
  v51.origin.y = v41;
  v51.size.width = v42;
  v51.size.height = v43;
  *&v50.origin.x = rect1[0];
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  if (!CGRectEqualToRect(v50, v51))
  {
    [(TSTTableRep *)self invalidateTableName];
  }
}

- (id)p_frozenHeaderOverlayLayers
{
  array = [MEMORY[0x277CBEB18] array];
  tableLayout = [(TSTTableRep *)self tableLayout];
  FrozenHeaderColumnsSpace = TSTLayoutGetFrozenHeaderColumnsSpace(tableLayout);
  FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
  FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderCornerSpace(tableLayout);
  if (FrozenHeaderRowsSpace && [(TSTTableModel *)[(TSTLayout *)tableLayout tableModel] numberOfHeaderRows])
  {
    if (!self->mOverlayFrozenHeaderRows)
    {
      v8 = objc_alloc_init(TSDTilingLayer);
      self->mOverlayFrozenHeaderRows = v8;
      [(TSDTilingLayer *)v8 setDelegate:self];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setZPosition:0.0];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setDrawsInBackground:[(TSTTableRep *)self canDrawInBackgroundDuringScroll]];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setTilingMode:[(TSTTableRep *)self tilingMode]];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setHidden:1];
      [(TSTTableRep *)self validateFrozenHeaderRows];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setNeedsDisplayInRect:*MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    }

    FrozenHeaderRowsFloating = TSTLayoutGetFrozenHeaderRowsFloating(tableLayout);
    mOverlayFrozenHeaderRows = self->mOverlayFrozenHeaderRows;
    if (FrozenHeaderRowsFloating)
    {
      [(TSDTilingLayer *)mOverlayFrozenHeaderRows setHidden:0];
      if (!self->mOverlayFrozenHeaderRowsMask)
      {
        self->mOverlayFrozenHeaderRowsMask = objc_alloc_init(MEMORY[0x277CD9ED0]);
        [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
        [(CALayer *)self->mOverlayFrozenHeaderRowsMask setContentsScale:?];
        [(CALayer *)self->mOverlayFrozenHeaderRowsMask setDelegate:self];
        -[CALayer setBackgroundColor:](self->mOverlayFrozenHeaderRowsMask, "setBackgroundColor:", [objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8] "greenColor")]);
        [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setMask:self->mOverlayFrozenHeaderRowsMask];
        [(TSTTableRep *)self validateFrozenHeaderRows];
      }
    }

    else
    {
      [(TSDTilingLayer *)mOverlayFrozenHeaderRows setHidden:1];
      [(CALayer *)self->mOverlayFrozenHeaderRowsMask removeFromSuperlayer];
      [(CALayer *)self->mOverlayFrozenHeaderRowsMask setDelegate:0];

      self->mOverlayFrozenHeaderRowsMask = 0;
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderRows setMask:0];
    }

    [array addObject:self->mOverlayFrozenHeaderRows];
  }

  else
  {
    v11 = self->mOverlayFrozenHeaderRows;
    if (v11)
    {
      [(TSDTilingLayer *)v11 setDelegate:0];

      self->mOverlayFrozenHeaderRows = 0;
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setDelegate:0];

      self->mOverlayFrozenHeaderCorner = 0;
      [(CALayer *)self->mOverlayFrozenHeaderRowsMask removeFromSuperlayer];
      [(CALayer *)self->mOverlayFrozenHeaderRowsMask setDelegate:0];

      self->mOverlayFrozenHeaderRowsMask = 0;
    }
  }

  if (FrozenHeaderColumnsSpace && [(TSTTableModel *)[(TSTLayout *)tableLayout tableModel] numberOfHeaderColumns])
  {
    if (!self->mOverlayFrozenHeaderColumns)
    {
      v12 = objc_alloc_init(TSDTilingLayer);
      self->mOverlayFrozenHeaderColumns = v12;
      [(TSDTilingLayer *)v12 setDelegate:self];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setZPosition:0.0];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setDrawsInBackground:[(TSTTableRep *)self canDrawInBackgroundDuringScroll]];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setTilingMode:[(TSTTableRep *)self tilingMode]];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setHidden:1];
      [(TSTTableRep *)self validateFrozenHeaderColumns];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setNeedsDisplay];
    }

    FrozenHeaderColumnsFloating = TSTLayoutGetFrozenHeaderColumnsFloating(tableLayout);
    mOverlayFrozenHeaderColumns = self->mOverlayFrozenHeaderColumns;
    if (FrozenHeaderColumnsFloating)
    {
      [(TSDTilingLayer *)mOverlayFrozenHeaderColumns setHidden:0];
      if (!self->mOverlayFrozenHeaderColumnsMask)
      {
        self->mOverlayFrozenHeaderColumnsMask = objc_alloc_init(MEMORY[0x277CD9ED0]);
        [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
        [(CALayer *)self->mOverlayFrozenHeaderColumnsMask setContentsScale:?];
        [(CALayer *)self->mOverlayFrozenHeaderColumnsMask setDelegate:self];
        -[CALayer setBackgroundColor:](self->mOverlayFrozenHeaderColumnsMask, "setBackgroundColor:", [objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8] "blueColor")]);
        [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setMask:self->mOverlayFrozenHeaderColumnsMask];
        [(TSTTableRep *)self validateFrozenHeaderColumns];
      }
    }

    else
    {
      [(TSDTilingLayer *)mOverlayFrozenHeaderColumns setHidden:1];
      [(CALayer *)self->mOverlayFrozenHeaderColumnsMask removeFromSuperlayer];
      [(CALayer *)self->mOverlayFrozenHeaderColumnsMask setDelegate:0];

      self->mOverlayFrozenHeaderColumnsMask = 0;
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setMask:0];
    }

    if (self->mOverlayFrozenHeaderColumns)
    {
      [array addObject:?];
    }
  }

  else
  {
    v15 = self->mOverlayFrozenHeaderColumns;
    if (v15)
    {
      [(TSDTilingLayer *)v15 setDelegate:0];

      self->mOverlayFrozenHeaderColumns = 0;
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setDelegate:0];

      self->mOverlayFrozenHeaderCorner = 0;
      [(CALayer *)self->mOverlayFrozenHeaderColumnsMask removeFromSuperlayer];
      [(CALayer *)self->mOverlayFrozenHeaderColumnsMask setDelegate:0];

      self->mOverlayFrozenHeaderColumnsMask = 0;
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderColumns setMask:0];
    }
  }

  if (FrozenHeaderRowsSpace && (TSTLayoutGetFrozenHeaderRowsFloating(tableLayout) & 1) != 0 || FrozenHeaderColumnsSpace && TSTLayoutGetFrozenHeaderColumnsFloating(tableLayout))
  {
    layerForRep = [(TSTTableRep *)self layerForRep];
    v17 = layerForRep;
    if (self->mOverlayFrozenHeaderTableBodyMask)
    {
      if (layerForRep && [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
      {
        [(CALayer *)v17 setMask:self->mOverlayFrozenHeaderTableBodyMask];
      }
    }

    else
    {
      [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
      v19 = v18;
      v20 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      self->mOverlayFrozenHeaderTableBodyMask = v20;
      [(CALayer *)v20 setDelegate:self];
      [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask setContentsScale:v19];
      -[CALayer setBackgroundColor:](self->mOverlayFrozenHeaderTableBodyMask, "setBackgroundColor:", [objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8] "redColor")]);
      v21 = objc_alloc_init(MEMORY[0x277CD9ED0]);
      self->mOverlayFrozenHeaderTableNameMask = v21;
      [(CALayer *)v21 setDelegate:self];
      [(CALayer *)self->mOverlayFrozenHeaderTableNameMask setContentsScale:v19];
      -[CALayer setBackgroundColor:](self->mOverlayFrozenHeaderTableNameMask, "setBackgroundColor:", [objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8] "orangeColor")]);
      [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask addSublayer:self->mOverlayFrozenHeaderTableNameMask];
      if (v17 && [(TSDCanvas *)[(TSDRep *)self canvas] isCanvasInteractive])
      {
        [(CALayer *)v17 setMask:self->mOverlayFrozenHeaderTableBodyMask];
      }

      [(TSTTableRep *)self validateFrozenHeaderTableBodyMask];
    }
  }

  else if (self->mOverlayFrozenHeaderTableBodyMask)
  {
    [(CALayer *)self->mOverlayFrozenHeaderTableNameMask removeFromSuperlayer];
    [(CALayer *)self->mOverlayFrozenHeaderTableNameMask setDelegate:0];

    self->mOverlayFrozenHeaderTableNameMask = 0;
    [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask removeFromSuperlayer];
    [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask setDelegate:0];

    self->mOverlayFrozenHeaderTableBodyMask = 0;
  }

  mOverlayFrozenHeaderCorner = self->mOverlayFrozenHeaderCorner;
  if (FrozenHeaderCornerSpace)
  {
    if (!mOverlayFrozenHeaderCorner)
    {
      v23 = objc_alloc_init(TSDTilingLayer);
      self->mOverlayFrozenHeaderCorner = v23;
      [(TSDTilingLayer *)v23 setDelegate:self];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setDrawsInBackground:[(TSTTableRep *)self canDrawInBackgroundDuringScroll]];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setZPosition:0.0];
      [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setContentsScale:?];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setHidden:1];
      [(TSTTableRep *)self validateFrozenHeaderCorner];
      [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setNeedsDisplay];
    }

    v24 = !TSTLayoutGetFrozenHeaderRowsFloating(tableLayout) || (TSTLayoutGetFrozenHeaderColumnsFloating(tableLayout) & 1) == 0;
    [(TSDTilingLayer *)self->mOverlayFrozenHeaderCorner setHidden:v24];
    [array addObject:self->mOverlayFrozenHeaderCorner];
  }

  else if (mOverlayFrozenHeaderCorner)
  {
    [(TSDTilingLayer *)mOverlayFrozenHeaderCorner setDelegate:0];

    self->mOverlayFrozenHeaderCorner = 0;
  }

  return array;
}

- (CGRect)p_alignedLayerFrameForLayoutSpace:(id)space transform:(CGAffineTransform *)transform
{
  RenderingFrame = TSTLayoutGetRenderingFrame([(TSTTableRep *)self tableLayout], space);
  CanvasRectForLayoutRect = TSTLayoutSpaceGetCanvasRectForLayoutRect(space, RenderingFrame, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(TSDCanvas *)[(TSDRep *)self canvas] convertUnscaledToBoundsRect:CanvasRectForLayoutRect, v12, v14, v16];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  TSDRoundedRectForScale(v19, v21, v23, v25, v26);
  v28 = TSDCeilSize(v27);
  v30 = v29;
  v31 = *&transform->c;
  *&v48.a = *&transform->a;
  *&v48.c = v31;
  *&v48.tx = *&transform->tx;
  v32 = CanvasRectForLayoutRect;
  *&v31 = v13;
  v33 = v15;
  v34 = v17;
  v49 = CGRectApplyAffineTransform(*(&v31 - 8), &v48);
  [(TSDCanvas *)[(TSDRep *)self canvas] convertUnscaledToBoundsRect:v49.origin.x, v49.origin.y, v49.size.width, v49.size.height];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v44 = TSDRoundedRectForScale(v36, v38, v40, v42, v43);
  v46 = v30 + 6.0;
  v47 = v28 + 6.0;
  result.size.height = v46;
  result.size.width = v47;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (void)validateFrozenHeaderCorner
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  mOverlayFrozenHeaderCorner = self->mOverlayFrozenHeaderCorner;
  FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderCornerSpace(tableLayout);
  if (FrozenHeaderCornerSpace)
  {
    if (mOverlayFrozenHeaderCorner)
    {
      v6 = FrozenHeaderCornerSpace;
      GridRange = TSTLayoutSpaceGetGridRange(FrozenHeaderCornerSpace);
      if (GridRange != -1 && v8 != -1 && GridRange <= v8 && HIDWORD(GridRange) != 0xFFFFFFFF && HIDWORD(v8) != 0xFFFFFFFF && HIDWORD(GridRange) <= HIDWORD(v8))
      {
        TSTLayoutGetFrozenHeaderCornerTransformToLayout(tableLayout, v9);
        [(TSTTableRep *)self p_alignedLayerFrameForLayoutSpace:v6 transform:v9];
        [(TSDTilingLayer *)mOverlayFrozenHeaderCorner setFrame:?];
      }
    }
  }
}

- (void)validateFrozenHeaderRows
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  mOverlayFrozenHeaderRows = self->mOverlayFrozenHeaderRows;
  mOverlayFrozenHeaderRowsMask = self->mOverlayFrozenHeaderRowsMask;
  FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
  if (FrozenHeaderRowsSpace)
  {
    if (mOverlayFrozenHeaderRows)
    {
      v7 = FrozenHeaderRowsSpace;
      GridRange = TSTLayoutSpaceGetGridRange(FrozenHeaderRowsSpace);
      if (GridRange != -1 && v9 != -1 && GridRange <= v9 && HIDWORD(GridRange) != 0xFFFFFFFF && HIDWORD(v9) != 0xFFFFFFFF && HIDWORD(GridRange) <= HIDWORD(v9))
      {
        TSTLayoutGetFrozenHeaderRowsTransformToLayout(tableLayout, &v17);
        [(TSTTableRep *)self p_alignedLayerFrameForLayoutSpace:v7 transform:&v17];
        [(TSDTilingLayer *)mOverlayFrozenHeaderRows setFrame:?];
        if (mOverlayFrozenHeaderRowsMask)
        {
          [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
          v11 = v10;
          memset(&v17, 0, sizeof(v17));
          [v7 transformToDevice];
          v18.origin.x = TSTLayoutGetAlignedMaskRectForSpace(tableLayout, v7);
          v16 = v17;
          v19 = CGRectApplyAffineTransform(v18, &v16);
          v12 = TSDMultiplyRectScalar(v19.origin.x, v19.origin.y, v19.size.width, v19.size.height, 1.0 / v11);
          [(CALayer *)mOverlayFrozenHeaderRowsMask setFrame:TSDRoundedRectForScale(v12, v13, v14, v15, v11)];
        }
      }
    }
  }
}

- (void)validateFrozenHeaderColumns
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  mOverlayFrozenHeaderColumns = self->mOverlayFrozenHeaderColumns;
  mOverlayFrozenHeaderColumnsMask = self->mOverlayFrozenHeaderColumnsMask;
  FrozenHeaderColumnsSpace = TSTLayoutGetFrozenHeaderColumnsSpace(tableLayout);
  if (FrozenHeaderColumnsSpace)
  {
    if (mOverlayFrozenHeaderColumns)
    {
      v7 = FrozenHeaderColumnsSpace;
      GridRange = TSTLayoutSpaceGetGridRange(FrozenHeaderColumnsSpace);
      if (GridRange != -1 && v9 != -1 && GridRange <= v9 && HIDWORD(GridRange) != 0xFFFFFFFF && HIDWORD(v9) != 0xFFFFFFFF && HIDWORD(GridRange) <= HIDWORD(v9))
      {
        TSTLayoutGetFrozenHeaderColumnsTransformToLayout(tableLayout, &v17);
        [(TSTTableRep *)self p_alignedLayerFrameForLayoutSpace:v7 transform:&v17];
        [(TSDTilingLayer *)mOverlayFrozenHeaderColumns setFrame:?];
        if (mOverlayFrozenHeaderColumnsMask)
        {
          [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
          v11 = v10;
          memset(&v17, 0, sizeof(v17));
          [v7 transformToDevice];
          v18.origin.x = TSTLayoutGetAlignedMaskRectForSpace(tableLayout, v7);
          v16 = v17;
          v19 = CGRectApplyAffineTransform(v18, &v16);
          v12 = TSDMultiplyRectScalar(v19.origin.x, v19.origin.y, v19.size.width, v19.size.height, 1.0 / v11);
          [(CALayer *)mOverlayFrozenHeaderColumnsMask setFrame:TSDRoundedRectForScale(v12, v13, v14, v15, v11)];
        }
      }
    }
  }
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v3.receiver = self;
  v3.super_class = TSTTableRep;
  [(TSWPTextHostRep *)&v3 addAdditionalChildLayersToArray:array];
}

- (void)validateFrozenHeaderTableBodyMask
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  Space = TSTLayoutGetSpace(tableLayout);
  if (Space && self->mOverlayFrozenHeaderTableBodyMask)
  {
    v5 = Space;
    [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
    v7 = v6;
    memset(&v32[1], 0, sizeof(CGAffineTransform));
    [v5 transformToDevice];
    v33.origin.x = TSTLayoutGetAlignedMaskRectForSpace(tableLayout, v5);
    v32[0] = v32[1];
    v34 = CGRectApplyAffineTransform(v33, v32);
    v8 = TSDMultiplyRectScalar(v34.origin.x, v34.origin.y, v34.size.width, v34.size.height, 1.0 / v7);
    v35.origin.x = TSDRoundedRectForScale(v8, v9, v10, v11, v7);
    x = v35.origin.x;
    y = v35.origin.y;
    v36 = CGRectInset(v35, -50.0, -100.0);
    v14 = v36.origin.x;
    v15 = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
    FrozenHeaderColumnsSpace = TSTLayoutGetFrozenHeaderColumnsSpace(tableLayout);
    if (FrozenHeaderColumnsSpace)
    {
      v20 = FrozenHeaderRowsSpace == 0;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = v15;
    }

    else
    {
      v21 = y;
    }

    if (FrozenHeaderRowsSpace != 0 && FrozenHeaderColumnsSpace == 0)
    {
      x = v14;
    }

    else
    {
      y = v21;
    }

    [(CALayer *)self->mOverlayFrozenHeaderTableBodyMask setFrame:x, y, width, height];
    if (TSTLayoutGetTableNameVisible(tableLayout) && [(TSTEditingState *)[(TSTTableRep *)self editingState] editingMode]== 7)
    {
      v37.origin.x = TSTLayoutGetAlignedStrokeFrame(tableLayout);
      v37.size.height = v22;
      v32[0] = v32[1];
      v37.origin.y = 0.0;
      v38 = CGRectApplyAffineTransform(v37, v32);
      v23 = TSDMultiplyRectScalar(v38.origin.x, v38.origin.y, v38.size.width, v38.size.height, 1.0 / v7);
      v27 = TSDRoundedRectForScale(v23, v24, v25, v26, v7) - x;
      v31 = v30 - y;
    }

    else
    {
      v27 = *MEMORY[0x277CBF3A0];
      v31 = *(MEMORY[0x277CBF3A0] + 8);
      v28 = *(MEMORY[0x277CBF3A0] + 16);
      v29 = *(MEMORY[0x277CBF3A0] + 24);
    }

    [(CALayer *)self->mOverlayFrozenHeaderTableNameMask setFrame:v27, v31, v28, v29];
  }
}

- (void)invalidateFrozenHeaders
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  FrozenHeaderRowsSpace = TSTLayoutGetFrozenHeaderRowsSpace(tableLayout);
  FrozenHeaderColumnsSpace = TSTLayoutGetFrozenHeaderColumnsSpace(tableLayout);
  FrozenHeaderCornerSpace = TSTLayoutGetFrozenHeaderCornerSpace(tableLayout);
  if (FrozenHeaderRowsSpace)
  {
    mOverlayFrozenHeaderRows = self->mOverlayFrozenHeaderRows;
    if (mOverlayFrozenHeaderRows)
    {
      [(TSDTilingLayer *)mOverlayFrozenHeaderRows setNeedsDisplayInRect:*MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    }
  }

  if (FrozenHeaderColumnsSpace)
  {
    mOverlayFrozenHeaderColumns = self->mOverlayFrozenHeaderColumns;
    if (mOverlayFrozenHeaderColumns)
    {
      [(TSDTilingLayer *)mOverlayFrozenHeaderColumns setNeedsDisplayInRect:*MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    }
  }

  if (FrozenHeaderCornerSpace)
  {
    mOverlayFrozenHeaderCorner = self->mOverlayFrozenHeaderCorner;
    if (mOverlayFrozenHeaderCorner)
    {
      v10 = *MEMORY[0x277CBF390];
      v11 = *(MEMORY[0x277CBF390] + 8);
      v12 = *(MEMORY[0x277CBF390] + 16);
      v13 = *(MEMORY[0x277CBF390] + 24);

      [(TSDTilingLayer *)mOverlayFrozenHeaderCorner setNeedsDisplayInRect:v10, v11, v12, v13];
    }
  }
}

- (BOOL)canDrawTilingLayerInBackground:(id)background
{
  v6.receiver = self;
  v6.super_class = TSTTableRep;
  v4 = [(TSDRep *)&v6 canDrawTilingLayerInBackground:background];
  if (v4)
  {
    LOBYTE(v4) = ![(TSTTableRep *)self mustDrawOnMainThreadForInteractiveCanvas];
  }

  return v4;
}

- (void)beginDragInsertFromPalette
{
  [(TSTMasterLayout *)[(TSTTableRep *)self masterLayout] beginDynamicMode:[(TSTTableRep *)self tableLayout]];
  masterLayout = [(TSTTableRep *)self masterLayout];

  [(TSTMasterLayout *)masterLayout updateDynamicRepressFrozenHeader:1];
}

- (void)endDragInsertFromPalette
{
  masterLayout = [(TSTTableRep *)self masterLayout];

  [(TSTMasterLayout *)masterLayout endDynamicMode];
}

- (BOOL)mustDrawOnMainThreadForInteractiveCanvas
{
  masterLayout = [(TSTTableRep *)self masterLayout];
  dynamicContentDelegate = [(TSTMasterLayout *)masterLayout dynamicContentDelegate];
  if ([(TSTMasterLayout *)masterLayout isDynamicallyResizingTableName])
  {
    return 1;
  }

  if (!dynamicContentDelegate)
  {
    return 0;
  }

  return [(TSTLayoutDynamicContentProtocol *)dynamicContentDelegate dynamicContentMustDrawOnMainThread];
}

- (void)recursivelyDrawInContext:(CGContext *)context
{
  TSTMasterLayoutLock([(TSTTableRep *)self masterLayout]);
  self->mRecursivelyDrawingInContext = 1;
  [(TSDCanvas *)[(TSDRep *)self canvas] viewScale];
  v6 = v5;
  v7 = TSDCGContextAssociatedScreenScale(context);
  TSTTableRepSetupUserSpaceToDeviceSpaceTransform(self, v6, v7);
  v8.receiver = self;
  v8.super_class = TSTTableRep;
  [(TSDRep *)&v8 recursivelyDrawInContext:context];
  self->mRecursivelyDrawingInContext = 0;
  TSTMasterLayoutUnlock([(TSTTableRep *)self masterLayout]);
}

- (void)drawInContext:(CGContext *)context
{
  tableLayout = [(TSTTableRep *)self tableLayout];
  mAnimationController = self->mAnimationController;
  if (!mAnimationController || [(TSTTableAnimationController *)mAnimationController shouldRenderTableRep])
  {
    if (self->mRecursivelyDrawingInContext || [(TSTLayout *)tableLayout inPrintPreviewMode])
    {
      mOverlayTableName = self->mOverlayTableName;
      if (mOverlayTableName)
      {
        [(TSDTilingLayer *)mOverlayTableName setDelegate:0];

        self->mOverlayTableName = 0;
      }

      TSTTableRepDrawTableName(self, context, 0);
    }

    ClipBoundingBox = CGContextGetClipBoundingBox(context);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    [(TSTTableRep *)self transformFromCanvas];
    CGContextConcatCTM(context, &v19);
    Space = TSTLayoutGetSpace(tableLayout);
    [(TSTLayoutSpace *)Space lockForRead];
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    TSTTableRepDrawSpaceInContext(self, Space, v21, context);
    [(TSTLayoutSpace *)Space unlock];
    if (TSTLayoutIsPartitionPaginated(tableLayout))
    {
      RepeatHeaderRowsSpace = TSTLayoutGetRepeatHeaderRowsSpace(tableLayout);
      if (RepeatHeaderRowsSpace)
      {
        v14 = RepeatHeaderRowsSpace;
        [(TSTLayoutSpace *)RepeatHeaderRowsSpace lockForRead];
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        TSTTableRepDrawSpaceInContext(self, v14, v22, context);
        [(TSTLayoutSpace *)v14 unlock];
      }

      RepeatHeaderColumnsSpace = TSTLayoutGetRepeatHeaderColumnsSpace(tableLayout);
      if (RepeatHeaderColumnsSpace)
      {
        v16 = RepeatHeaderColumnsSpace;
        [(TSTLayoutSpace *)RepeatHeaderColumnsSpace lockForRead];
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = height;
        TSTTableRepDrawSpaceInContext(self, v16, v23, context);
        [(TSTLayoutSpace *)v16 unlock];
      }

      RepeatHeaderCornerSpace = TSTLayoutGetRepeatHeaderCornerSpace(tableLayout);
      if (RepeatHeaderCornerSpace)
      {
        v18 = RepeatHeaderCornerSpace;
        [(TSTLayoutSpace *)RepeatHeaderCornerSpace lockForRead];
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        TSTTableRepDrawSpaceInContext(self, v18, v24, context);
        [(TSTLayoutSpace *)v18 unlock];
      }
    }
  }
}

- (id)p_textImageForPath:(CGPath *)path shouldPulsate:(BOOL)pulsate
{
  pulsateCopy = pulsate;
  [(TSDCanvas *)[(TSDRep *)self canvas] contentsScale];
  v8 = v7;
  [(TSDCanvas *)self->super.super.mCanvas viewScale];
  v10 = v9;
  v11 = &kFindSelectionPulseInset;
  if (!pulsateCopy)
  {
    v11 = &kFindSelectionInset;
  }

  v12 = *v11;
  BoundingBox = CGPathGetBoundingBox(path);
  y = BoundingBox.origin.y;
  x = BoundingBox.origin.x;
  height = BoundingBox.size.height;
  width = BoundingBox.size.width;
  v48 = CGRectInset(BoundingBox, -v12, -v12);
  v13 = v48.origin.y;
  v14 = v48.size.width;
  v43 = v48.origin.x;
  v44 = v48.size.height;
  v49 = CGRectInset(v48, -6.0, -6.0);
  v15 = v49.origin.x;
  v16 = v49.origin.y;
  v17 = v49.size.width;
  v18 = v49.size.height;
  v50 = CGRectIntegral(v49);
  v41 = v50.origin.y;
  v42 = v50.origin.x;
  v40 = v8;
  v19 = v8 * v10;
  v51.origin.x = TSDMultiplyRectScalar(v15, v16, v17, v18, v19);
  v52 = CGRectIntegral(v51);
  v20 = TSDBitmapContextCreate(11, v52.size.width);
  if (v20)
  {
    TSDSetCGContextInfo(v20, [(TSDCanvas *)[(TSDRep *)self canvas] isPrinting], [(TSDCanvas *)[(TSDRep *)self canvas] isDrawingIntoPDF], 1, [(TSDCanvas *)[(TSDRep *)self canvas] shouldSuppressBackgrounds], v10);
    CGContextScaleCTM(v20, v19, v19);
    CGContextTranslateCTM(v20, -v42, -v41);
    CGContextSetShouldSmoothFonts(v20, 0);
    CGContextSetShouldAntialias(v20, 1);
    v53.origin.x = v43;
    v53.origin.y = v13;
    v53.size.width = v14;
    v53.size.height = v44;
    v54 = CGRectInset(v53, -2.0, -2.0);
    CGContextClipToRect(v20, v54);
    [(TSWPTextHostRep *)self drawTextBackground:v20 insetRect:pulsateCopy pulsating:v43, v13, v14, v44];
    v46.width = 0.0;
    v46.height = -2.0;
    CGContextSetShadow(v20, v46, 2.0);
    Space = TSTLayoutGetSpace([(TSTTableRep *)self tableLayout]);
    GridRangeForLayoutRect = TSTLayoutSpaceGetGridRangeForLayoutRect(Space, v43, v13, v14, v44);
    v24 = HIDWORD(GridRangeForLayoutRect);
    if (GridRangeForLayoutRect == -1 || v23 == -1 || GridRangeForLayoutRect > v23 || v24 == 0xFFFFFFFF)
    {
      v29 = v23;
      v32 = GridRangeForLayoutRect;
      v30 = v23;
    }

    else
    {
      v25 = HIDWORD(v23);
      v26 = v23 - 1;
      v27 = (v23 & 0xFFFFFFFF00000000 | (v23 - 1)) - 0x100000000;
      if (v24 > HIDWORD(v23))
      {
        v26 = v23;
        v27 = v23;
      }

      v28 = v25 == 0xFFFFFFFF;
      if (v25 == 0xFFFFFFFF)
      {
        v29 = v23;
      }

      else
      {
        v29 = v27;
      }

      if (v28)
      {
        v30 = v23;
      }

      else
      {
        v30 = v27;
      }

      if (v28)
      {
        v31 = v23;
      }

      else
      {
        v31 = v26;
      }

      v32 = GridRangeForLayoutRect;
      LODWORD(v23) = v31;
    }

    if (GridRangeForLayoutRect != -1 && v23 != -1 && v23 >= GridRangeForLayoutRect && v24 != 0xFFFFFFFF)
    {
      v33 = HIDWORD(v29);
      if (v33 != 0xFFFFFFFF && v24 <= v33)
      {
        v55.origin.y = y;
        v55.origin.x = x;
        v55.size.height = height;
        v55.size.width = width;
        CGContextClipToRect(v20, v55);
        [(TSTTableRep *)self transformFromCanvas];
        CGContextConcatCTM(v20, &transform);
        TSTTableRepPrepareToDrawLayoutSpace(self, Space, v20);
        TSTTableRepDrawCellContent(self, Space, v32, v30, v20);
        if (Space)
        {
          CGContextRestoreGState(v20);
        }
      }
    }

    Image = CGBitmapContextCreateImage(v20);
    CGContextRelease(v20);
    if (Image)
    {
      v20 = [objc_alloc(MEMORY[0x277D6C2F8]) initWithCGImage:Image scale:0 orientation:v40];
      CGImageRelease(Image);
    }

    else
    {
      return 0;
    }
  }

  return v20;
}

- (void)p_hideSelectionLayers
{
  [(CAShapeLayer *)self->mFindSelectionHighlightLayer setHidden:1];
  pulseArrayController = [(TSWPTextHostRep *)self pulseArrayController];

  [(TSKHighlightArrayController *)pulseArrayController stop];
}

- (void)p_editingDidEnd
{
  [(CAShapeLayer *)self->mFindSelectionHighlightLayer setHidden:1];
  if ([(TSWPTextHostRep *)self pulseArrayController])
  {
    pulseArrayController = [(TSWPTextHostRep *)self pulseArrayController];

    [(TSKHighlightArrayController *)pulseArrayController stop];
  }
}

- (CGRect)boundsForResizeGuideUI
{
  tableLayout = [(TSTTableRep *)self tableLayout];

  RenderingFrame = TSTLayoutGetRenderingFrame(tableLayout, 0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = RenderingFrame;
  return result;
}

- (NSString)description
{
  v19 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  [(TSDRep *)self info];
  v4 = objc_opt_class();
  v17 = NSStringFromClass(v4);
  info = [(TSDRep *)self info];
  [(TSDRep *)self layout];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  layout = [(TSDRep *)self layout];
  [(TSTLayout *)[(TSTTableRep *)self tableLayout] layoutHint];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  layoutHint = [(TSTLayout *)[(TSTTableRep *)self tableLayout] layoutHint];
  cellRange = [(TSTLayoutHint *)[(TSTLayout *)[(TSTTableRep *)self tableLayout] layoutHint] cellRange];
  v13 = MEMORY[0x277CCACA8];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", cellRange.var0.var1, cellRange.var0.var0];
  v15 = [v13 stringWithFormat:@"(%@, %@)", v14, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", cellRange.var1.var0, HIWORD(*&cellRange))];
  [(TSDRep *)self frameInUnscaledCanvas];
  return [v19 stringWithFormat:@"<%@ %p info=<%@ %p> layout=<%@ %p> layoutHint=<%@ %p %@> frameInUnscaledCanvas=%@>", v18, self, v17, info, v7, layout, v10, layoutHint, v15, NSStringFromCGRect(v20)];
}

@end