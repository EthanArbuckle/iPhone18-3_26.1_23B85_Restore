@interface TSTLayout
- (BOOL)isBeingManipulated;
- (BOOL)orderedBefore:(id)a3;
- (BOOL)p_layoutWhollyContainsGridRange:(id)a3;
- (CGPoint)calculatePointFromSearchReference:(id)a3;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)infoGeometryPositionForCurrentAttachedLayoutGeometry;
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameForProvidingGuidesInRoot;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)computedEditingCellContentFrame;
- (CGRect)maskRectForTextLayout:(id)a3;
- (CGRect)p_computeSpillingTextFrameForLayout:(id)a3 textSize:(CGSize)a4 editingSpillRange:(id *)a5;
- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)a3;
- (CGRect)rectForSelection:(id)a3;
- (CGSize)adjustedInsets;
- (CGSize)initialTextSize;
- (CGSize)minimumSize;
- (CGSize)p_rangeUpAndLeftOfIntersectionRangeOfGridRange:(id)a3;
- (CGSize)scaleToFit;
- (TSTEditingState)editingState;
- (TSTLayout)initWithInfo:(id)a3;
- (TSTLayout)initWithInfo:(id)a3 layoutHint:(id)a4;
- (TSTTableModel)tableModel;
- (UIEdgeInsets)paddingForEditingCell;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6;
- (id)children;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)initialInfoGeometry;
- (id)layoutGeometryFromInfo;
- (int)reapCoordinatesChangedMaskForChrome;
- (unsigned)autosizeFlagsForTextLayout:(id)a3;
- (unsigned)naturalAlignmentForTextLayout:(id)a3;
- (unsigned)p_naturalAlignmentForCellID:(id)a3;
- (unsigned)verticalAlignmentForTextLayout:(id)a3;
- (void)bezierPathsForCellRegion:(id)a3 transform:(CGAffineTransform *)a4 viewScale:(double)a5 inset:(double)a6 block:(id)a7;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateForAutosizingTextLayout:(id)a3;
- (void)invalidateSize;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_processChange:(id)a3 forChangeSource:(id)a4 actions:(id)a5;
- (void)p_processChangeActions:(id)a3;
- (void)p_updateCachedStyleInformationFromCellID:(id)a3;
- (void)processChanges:(id)a3;
- (void)removeContainedTextEditingLayout;
- (void)setLayoutHint:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6;
- (void)updateChildrenFromInfo;
- (void)validate;
- (void)validateTableNameVisibility;
- (void)willBeAddedToLayoutController:(id)a3;
- (void)willBeRemovedFromLayoutController:(id)a3;
@end

@implementation TSTLayout

- (CGSize)scaleToFit
{
  width = self->mCached.scaleToFitEnclosingTextColumn.width;
  height = self->mCached.scaleToFitEnclosingTextColumn.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSTEditingState)editingState
{
  v2 = [(TSTLayout *)self tableInfo];

  return [(TSTTableInfo *)v2 editingState];
}

- (TSTTableModel)tableModel
{
  v2 = [(TSTLayout *)self tableInfo];

  return [(TSTTableInfo *)v2 tableModel];
}

- (void)setLayoutHint:(id)a3
{
  mLayoutHint = self->mLayoutHint;
  if (mLayoutHint != a3)
  {
    if (mLayoutHint)
    {
      [(TSTLayoutHint *)mLayoutHint setLayout:0];
    }

    v6 = a3;
    self->mLayoutHint = v6;

    [(TSTLayoutHint *)v6 setLayout:self];
  }
}

- (TSTLayout)initWithInfo:(id)a3 layoutHint:(id)a4
{
  v16.receiver = self;
  v16.super_class = TSTLayout;
  v6 = [(TSDLayout *)&v16 initWithInfo:?];
  if (v6)
  {
    v7 = [a3 masterLayout];
    *(v6 + 38) = v7;
    v8 = v7;
    v9 = a4;
    *(v6 + 39) = v9;
    [v9 setLayout:v6];
    *(v6 + 49) = [[TSTLayoutSpaceBundle alloc] initWithLayout:v6];
    if (v6[385])
    {
      v6[385] = 0;
    }

    TSTLayoutSetPartitionRange(v6);
    [objc_msgSend(v6 "spaceBundle")];
    [*(v6 + 38) invalidateTableNameHeight];
    v6[384] = 0;
    *(v6 + 30) = TSDEdgeInsetsInvalid;
    *(v6 + 31) = unk_26CA67D00;
    *(v6 + 136) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v6 + 408) = _Q0;
    *(v6 + 424) = _Q0;
    *(v6 + 75) = 0xFFFFFFLL;
    v6[390] = [v6 p_getLayoutDirectionLeftToRight];
  }

  return v6;
}

- (TSTLayout)initWithInfo:(id)a3
{
  v5 = [objc_msgSend(a3 "masterLayout")];

  return [(TSTLayout *)self initWithInfo:a3 layoutHint:v5];
}

- (void)dealloc
{
  [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];
  if (self->mContainedTextEditingLayout)
  {
    [(TSTLayout *)self removeContainedTextEditingLayout];
  }

  [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateTableOffsets];

  self->mSpaceBundle = 0;
  self->mMasterLayout = 0;
  mLayoutHint = self->mLayoutHint;
  if (mLayoutHint)
  {
    [(TSTLayoutHint *)mLayoutHint setLayout:0];
    v4 = self->mLayoutHint;
  }

  else
  {
    v4 = 0;
  }

  self->mLayoutHint = 0;
  v5.receiver = self;
  v5.super_class = TSTLayout;
  [(TSWPTextHostLayout *)&v5 dealloc];
}

- (void)willBeAddedToLayoutController:(id)a3
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(a3 "canvas")];
  mMasterLayout = self->mMasterLayout;

  [(TSTMasterLayout *)mMasterLayout setChangeNotifier:v4];
}

- (void)willBeRemovedFromLayoutController:(id)a3
{
  if (self->mContainedTextEditingLayout)
  {
    [(TSTLayout *)self removeContainedTextEditingLayout];
  }

  v5.receiver = self;
  v5.super_class = TSTLayout;
  [(TSDLayout *)&v5 willBeRemovedFromLayoutController:a3];
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(TSDLayout *)self layoutState]!= 4)
  {
    v6.receiver = self;
    v6.super_class = TSTLayout;
    [(TSDAbstractLayout *)&v6 offsetGeometryBy:x, y];
  }
}

- (CGSize)minimumSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  v4 = [(TSTLayout *)self masterLayout];
  v5 = [(TSTMasterLayout *)v4 tableRowsBehavior];
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(v4);
  TableNumberOfColumns = TSTMasterLayoutGetTableNumberOfColumns(v4);
  if (TableNumberOfRows)
  {
    v8 = 0;
    v9 = 0;
    v10 = TableNumberOfRows;
    do
    {
      if (TSTMasterLayoutIsRowHidden(v4, v8))
      {
        --v10;
      }

      else
      {
        if (v5 == 1)
        {
          TSTMasterLayoutFittingHeightOfRow(v4, v8);
          v3 = v3 + v11;
        }

        v3 = v3 + TSTMasterLayoutStrokeHeightOfGridRow(v4, v8, 0, 0xFFFFFFFF);
        v9 = v8;
      }

      ++v8;
    }

    while (TableNumberOfRows != v8);
    v12 = v9 + 1;
    v13 = (v10 * 8.0);
  }

  else
  {
    v13 = 0.0;
    v12 = 1;
  }

  v14 = TSTMasterLayoutStrokeHeightOfGridRow(v4, v12, 0, 0xFFFFFFFF);
  v15 = TableNumberOfColumns;
  if (TableNumberOfColumns)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (TSTMasterLayoutIsColumnHidden(v4, v16))
      {
        --TableNumberOfColumns;
      }

      else
      {
        v2 = v2 + TSTMasterLayoutStrokeWidthOfGridColumn(v4, v16, 0, 0xFFFFFFFF);
        v17 = v16;
      }

      ++v16;
    }

    while (v15 != v16);
    v18 = v17 + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v5 == 1)
  {
    v19 = v3 + v14;
  }

  else
  {
    v19 = v3 + v14 + v13;
  }

  v23.size.width = v2 + TSTMasterLayoutStrokeWidthOfGridColumn(v4, v18, 0, 0xFFFFFFFF) + (TableNumberOfColumns * 8.0);
  v23.origin.x = *MEMORY[0x277CBF3A0];
  v23.origin.y = *(MEMORY[0x277CBF3A0] + 8);
  v23.size.height = v19;
  v24 = CGRectInset(v23, -1.0, -1.0);
  width = v24.size.width;
  height = v24.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)infoGeometryPositionForCurrentAttachedLayoutGeometry
{
  v10.receiver = self;
  v10.super_class = TSTLayout;
  [(TSDLayout *)&v10 infoGeometryPositionForCurrentAttachedLayoutGeometry];
  v4 = v3;
  v6 = v5;
  [[(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space] tableOffset];
  v8 = TSDAddPoints(v4, v6, v7);
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  if ([(TSDInfo *)[(TSDLayout *)self info] owningAttachmentNoRecurse])
  {
    [(TSDLayoutGeometry *)[(TSDAbstractLayout *)self geometry] frame];
    x = self->mRenderingFrameForLayoutGeometryFromInfo.origin.x;

    v6 = TSDSubtractPoints(v3, v4, x);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TSTLayout;
    [(TSDLayout *)&v8 capturedInfoPositionForAttachment];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (id)layoutGeometryFromInfo
{
  [-[TSDInfo geometry](-[TSDLayout info](self "info")];
  v4 = v3;
  v6 = v5;
  [[(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space] tableOffset];
  v8 = v7;
  if ([(TSDInfo *)[(TSDLayout *)self info] owningAttachmentNoRecurse])
  {
    [(TSTLayout *)self capturedInfoPositionForAttachment];
  }

  else
  {
    if (![(TSTMasterLayout *)[(TSTLayout *)self masterLayout] isDynamicallyChangingInfoGeometry])
    {
      goto LABEL_6;
    }

    [(TSDInfoGeometry *)[(TSTMasterLayout *)[(TSTLayout *)self masterLayout] dynamicInfoGeometry] position];
  }

  v4 = v9;
  v6 = v10;
LABEL_6:
  RenderingFrame = TSTLayoutGetRenderingFrame(self, 0);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v4 + RenderingFrame;
  v19 = v6 + v12;
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) == 0)
  {
    v18 = TSDSubtractPoints(v18, v19, v8);
    v21 = v20;
    TSTLayoutGetTableNameHeight(self);
    v19 = v21 + v22;
  }

  self->mRenderingFrameForLayoutGeometryFromInfo.origin.x = RenderingFrame;
  self->mRenderingFrameForLayoutGeometryFromInfo.origin.y = v13;
  self->mRenderingFrameForLayoutGeometryFromInfo.size.width = v15;
  self->mRenderingFrameForLayoutGeometryFromInfo.size.height = v17;
  v23 = [[TSDLayoutGeometry alloc] initWithFrame:v18, v19, v15, v17];

  return v23;
}

- (id)computeLayoutGeometry
{
  p_mCached = &self->mCached;
  __asm { FMOV            V0.2D, #1.0 }

  self->mCached.scaleToFitParent = _Q0;
  v8 = [(TSDLayout *)self layoutGeometryFromProvider];
  if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) == 0)
  {
    objc_opt_class();
    [(TSDAbstractLayout *)self parent];
    v9 = TSUDynamicCast();
    if (v9)
    {
      [v9 maximumFrameSizeForChild:self];
      v11 = v10;
      v13 = v12;
      [(TSTLayout *)self alignmentFrame];
      if (v14 > v11)
      {
        p_mCached->scaleToFitParent.width = v11 / v14;
      }

      if (v15 <= v13)
      {
        height = p_mCached->scaleToFitParent.height;
      }

      else
      {
        height = v13 / v15;
        p_mCached->scaleToFitParent.height = v13 / v15;
      }

      if (p_mCached->scaleToFitParent.width != 1.0 || height != 1.0)
      {
        [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateTableOffsets];
        [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateCoordinates];
        v8 = [(TSDLayout *)self layoutGeometryFromProvider];
      }
    }
  }

  v18 = [(TSDLayout *)self i_layoutGeometryProvider];
  if (!v18)
  {
    return v8;
  }

  v19 = v18;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v8;
  }

  return [v19 adjustLayoutGeometry:v8 forLayout:self];
}

- (id)initialInfoGeometry
{
  v2 = [[TSDInfoGeometry alloc] initWithPosition:self->super.super.super.mCapturedInfoGeometryPositionForInline.x size:self->super.super.super.mCapturedInfoGeometryPositionForInline.y, self->mCapturedStrokeFrameSizeForInline.width, self->mCapturedStrokeFrameSizeForInline.height];

  return v2;
}

- (CGRect)alignmentFrame
{
  v3 = [(TSDInfo *)[(TSDLayout *)self info] isInlineWithText];
  v4 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space];
  if (v3)
  {
    StrokeFrame = TSTLayoutSpaceGetStrokeFrame(v4);
  }

  else
  {
    StrokeFrame = TSTLayoutSpaceGetFrame(v4);
  }

  v9 = StrokeFrame;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  TSTLayoutGetTableNameHeight(self);
  v14 = v13;
  v15 = [(TSDAbstractLayout *)self geometry];
  if (v15)
  {
    [(TSDLayoutGeometry *)v15 transform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  v17.size.height = v14 + v12;
  v17.origin.y = v10 - v14;
  v17.origin.x = v9;
  v17.size.width = v11;
  return CGRectApplyAffineTransform(v17, &v16);
}

- (CGRect)alignmentFrameForProvidingGuidesInRoot
{
  StrokeFrame = TSTLayoutSpaceGetStrokeFrame([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(TSDAbstractLayout *)self geometry];
  if (v10)
  {
    [(TSDLayoutGeometry *)v10 transform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  v21.origin.x = StrokeFrame;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  v22 = CGRectApplyAffineTransform(v21, &v20);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if ([(TSDAbstractLayout *)self parent])
  {
    v15 = [(TSDAbstractLayout *)self parent];
    if (v15)
    {
      [(TSDAbstractLayout *)v15 transformInRoot];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24 = CGRectApplyAffineTransform(v23, &v20);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)validate
{
  [(TSTLayout *)self scaleToFit];
  v4 = v3;
  v6 = v5;
  v7 = [(TSTTableInfo *)[(TSTLayout *)self tableInfo] partitioner];
  v8 = [(TSTTablePartitioner *)v7 scaleIsValid];
  v9 = 1.0;
  v10 = 1.0;
  if (v8)
  {
    [(TSTTablePartitioner *)v7 scaleToFit:1.0];
  }

  [(TSTLayout *)self setScaleToFit:v9, v10];
  [(TSTLayout *)self scaleToFit];
  if (v4 != v12 || v6 != v11)
  {
    [(TSTLayoutHint *)[(TSTLayout *)self layoutHint] cellRange];
    TSTLayoutInvalidateCellRangeAndFittingRange(self);
    [(TSTLayout *)self invalidateSize];
    [(TSTLayout *)self setNeedsDisplay];
  }

  self->mLayoutDirectionIsLeftToRight = [(TSTLayout *)self p_getLayoutDirectionLeftToRight];
  v13 = [(TSTLayout *)self masterLayout];
  [(TSTMasterLayout *)v13 validate];
  [(TSTMasterLayout *)v13 validateLayoutHint:[(TSTLayout *)self layoutHint]];
  TSTLayoutSetPartitionRange(self);
  [(TSTLayout *)self validateTableNameVisibility];
  v14 = [(TSTLayout *)self masterLayout];
  v15 = &off_26CA63000;
  if ((~[(TSTLayoutHint *)[(TSTLayout *)self layoutHint] partitionPosition]& 0xF) != 0)
  {
    if (TSTMasterLayoutGetTableNumberOfHeaderRows(v14))
    {
      HeaderRowsRepeat = TSTMasterLayoutGetHeaderRowsRepeat(v14);
    }

    else
    {
      HeaderRowsRepeat = 0;
    }

    if (TSTMasterLayoutGetTableNumberOfHeaderColumns(v14))
    {
      HeaderColumnsRepeat = TSTMasterLayoutGetHeaderColumnsRepeat(v14);
    }

    else
    {
      HeaderColumnsRepeat = 0;
    }

    RangeForHint = TSTMasterLayoutGetRangeForHint([(TSTLayout *)self masterLayout], [(TSTLayout *)self layoutHint]);
    PartitionHeaderColumnsCellRange = TSTLayoutGetPartitionHeaderColumnsCellRange(self);
    PartitionHeaderRowsCellRange = TSTLayoutGetPartitionHeaderRowsCellRange(self);
    PartitionHeaderCornerCellRange = TSTLayoutGetPartitionHeaderCornerCellRange(self);
    v21 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space];
    [(TSTLayoutSpace *)v21 setHeaderRowsRepeat:HeaderRowsRepeat];
    [(TSTLayoutSpace *)v21 setHeaderColumnsRepeat:HeaderColumnsRepeat];
    v22 = HIWORD(RangeForHint);
    if (HeaderColumnsRepeat)
    {
      v23 = HIWORD(PartitionHeaderColumnsCellRange);
      if (!v22 || (RangeForHint & 0xFFFF00000000) == 0 || !v23 || (PartitionHeaderColumnsCellRange & 0xFFFF00000000) == 0 || RangeForHint > PartitionHeaderColumnsCellRange || (RangeForHint + HIWORD(RangeForHint) - 1) < PartitionHeaderColumnsCellRange || BYTE2(PartitionHeaderColumnsCellRange) < BYTE2(RangeForHint) || (v24 = (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1), v24 < BYTE2(PartitionHeaderColumnsCellRange)) || v24 < (BYTE4(PartitionHeaderColumnsCellRange) + BYTE2(PartitionHeaderColumnsCellRange) - 1) || (RangeForHint + HIWORD(RangeForHint) - 1) < (PartitionHeaderColumnsCellRange + HIWORD(PartitionHeaderColumnsCellRange) - 1))
      {
        if (![(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] repeatHeaderColumnsSpace])
        {
          v25 = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:[(TSTLayout *)self spaceBundle] type:5];
          [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderColumnsSpace:v25];
        }

        if (BYTE2(PartitionHeaderColumnsCellRange) == 255)
        {
          v26 = -1;
        }

        else
        {
          v26 = BYTE2(PartitionHeaderColumnsCellRange);
        }

        if (WORD2(PartitionHeaderColumnsCellRange))
        {
          v27 = WORD2(PartitionHeaderColumnsCellRange) + v26 - 1;
        }

        else
        {
          v27 = 0xFFFFFFFFLL;
        }

        v28 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] repeatHeaderColumnsSpace];
        if (PartitionHeaderColumnsCellRange == 0xFFFF)
        {
          v29 = 0xFFFFFFFFLL;
        }

        else
        {
          v29 = PartitionHeaderColumnsCellRange;
        }

        v30 = v26 | (v29 << 32);
        v31 = (((v29 << 32) + (v97 << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
        if (!v23)
        {
          v31 = 0xFFFFFFFF00000000;
        }

        TSTLayoutSpaceSetGridRange(v28, v30, v31 | v27);
        v15 = &off_26CA63000;
        v22 = HIWORD(RangeForHint);
      }

      if (HeaderRowsRepeat)
      {
LABEL_40:
        if (!v22 || (RangeForHint & 0xFFFF00000000) == 0 || !HIWORD(PartitionHeaderRowsCellRange) || (PartitionHeaderRowsCellRange & 0xFFFF00000000) == 0 || RangeForHint > PartitionHeaderRowsCellRange || (RangeForHint + v22 - 1) < PartitionHeaderRowsCellRange || BYTE2(PartitionHeaderRowsCellRange) < BYTE2(RangeForHint) || (v32 = (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1), v32 < BYTE2(PartitionHeaderRowsCellRange)) || v32 < (BYTE4(PartitionHeaderRowsCellRange) + BYTE2(PartitionHeaderRowsCellRange) - 1) || (RangeForHint + v22 - 1) < (PartitionHeaderRowsCellRange + HIWORD(PartitionHeaderRowsCellRange) - 1))
        {
          v33 = v15;
          if (![(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] repeatHeaderRowsSpace])
          {
            v34 = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:[(TSTLayout *)self spaceBundle] type:6];
            [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderRowsSpace:v34];
          }

          if (BYTE2(PartitionHeaderRowsCellRange) == 255)
          {
            v35 = -1;
          }

          else
          {
            v35 = BYTE2(PartitionHeaderRowsCellRange);
          }

          if (WORD2(PartitionHeaderRowsCellRange))
          {
            v36 = WORD2(PartitionHeaderRowsCellRange) + v35 - 1;
          }

          else
          {
            v36 = 0xFFFFFFFFLL;
          }

          v37 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] repeatHeaderRowsSpace];
          if (PartitionHeaderRowsCellRange == 0xFFFF)
          {
            v38 = 0xFFFFFFFFLL;
          }

          else
          {
            v38 = PartitionHeaderRowsCellRange;
          }

          v39 = v35 | (v38 << 32);
          v40 = (((v38 << 32) + (HIDWORD(PartitionHeaderRowsCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
          if (!HIWORD(PartitionHeaderRowsCellRange))
          {
            v40 = 0xFFFFFFFF00000000;
          }

          TSTLayoutSpaceSetGridRange(v37, v39, v40 | v36);
          v15 = v33;
        }

        if (HeaderColumnsRepeat)
        {
          if (![(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] repeatHeaderCornerSpace])
          {
            v41 = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:[(TSTLayout *)self spaceBundle] type:4];
            [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderCornerSpace:v41];
          }

          if (BYTE2(PartitionHeaderCornerCellRange) == 255)
          {
            v42 = -1;
          }

          else
          {
            v42 = BYTE2(PartitionHeaderCornerCellRange);
          }

          if (WORD2(PartitionHeaderCornerCellRange))
          {
            v43 = WORD2(PartitionHeaderCornerCellRange) + v42 - 1;
          }

          else
          {
            v43 = 0xFFFFFFFFLL;
          }

          v44 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] repeatHeaderCornerSpace];
          if (PartitionHeaderCornerCellRange == 0xFFFF)
          {
            v45 = 0xFFFFFFFFLL;
          }

          else
          {
            v45 = PartitionHeaderCornerCellRange;
          }

          v46 = v42 | (v45 << 32);
          v47 = (((v45 << 32) + (HIDWORD(PartitionHeaderCornerCellRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
          if (!HIWORD(PartitionHeaderCornerCellRange))
          {
            v47 = 0xFFFFFFFF00000000;
          }

          TSTLayoutSpaceSetGridRange(v44, v46, v47 | v43);
          v15 = &off_26CA63000;
          goto LABEL_82;
        }

LABEL_81:
        [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderCornerSpace:0];
LABEL_82:
        [(TSTLayoutSpace *)v21 viewScale];
        v49 = v48;
        v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        if (v21)
        {
          [(TSTLayoutSpace *)v21 transformToCanvas];
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          [(TSTLayoutSpace *)v21 transformToDevice];
        }

        else
        {
          v115 = 0uLL;
          v116 = 0uLL;
          v114 = 0uLL;
        }

        v50 = [(TSTLayout *)self spaceBundle];
        v101 = MEMORY[0x277D85DD0];
        v102 = *(v15 + 277);
        v103 = ___ZL28TSTLayoutUpdateRepeatHeadersP9TSTLayout_block_invoke;
        v104 = &__block_descriptor_138_e24_B16__0__TSTLayoutSpace_8l;
        v112 = HeaderRowsRepeat;
        v113 = HeaderColumnsRepeat;
        v105 = v49;
        v106 = v117;
        v107 = v118;
        v108 = v119;
        v109 = v114;
        v110 = v115;
        v111 = v116;
        [(TSTLayoutSpaceBundle *)v50 performActionOnRepeatLayoutSpaces:&v101];
        goto LABEL_86;
      }
    }

    else
    {
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderColumnsSpace:0];
      if (HeaderRowsRepeat)
      {
        goto LABEL_40;
      }
    }

    [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderRowsSpace:0];
    goto LABEL_81;
  }

  [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderColumnsSpace:0];
  [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderRowsSpace:0];
  [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setRepeatHeaderCornerSpace:0];
LABEL_86:
  if ([objc_msgSend(-[TSDLayout layoutController](self "layoutController")] && (objc_msgSend(objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self, "layoutController"), "canvas"), "canvasController"), "animatingViewScale") & 1) == 0)
  {
    v51 = ![(TSTLayout *)self inPrintPreviewMode];
  }

  else
  {
    v51 = 0;
  }

  v52 = TSTLayoutGetPartitionHeaderColumnsCellRange(self);
  v53 = TSTLayoutGetPartitionHeaderRowsCellRange(self);
  v54 = TSTLayoutGetPartitionHeaderCornerCellRange(self);
  v55 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space];
  if (v51 && TSTLayoutGetFrozenHeaderColumnsEnabled(self))
  {
    v56 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace];
    v99 = v56 == 0;
    if (!v56)
    {
      v57 = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:[(TSTLayout *)self spaceBundle] type:2];
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setFrozenHeaderColumnsSpace:v57];
    }

    if (BYTE2(v52) == 255)
    {
      v58 = -1;
    }

    else
    {
      v58 = BYTE2(v52);
    }

    if (WORD2(v52))
    {
      v59 = WORD2(v52) + v58 - 1;
    }

    else
    {
      v59 = 0xFFFFFFFFLL;
    }

    v60 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace];
    if (v52 == 0xFFFF)
    {
      v61 = 0xFFFFFFFFLL;
    }

    else
    {
      v61 = v52;
    }

    v62 = v58 | (v61 << 32);
    v63 = (((v61 << 32) + (HIDWORD(v52) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
    if (!HIWORD(v52))
    {
      v63 = 0xFFFFFFFF00000000;
    }

    TSTLayoutSpaceSetGridRange(v60, v62, v63 | v59);
    v15 = &off_26CA63000;
    v64 = v99;
  }

  else
  {
    v65 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace];
    v64 = v65 != 0;
    if (v65)
    {
      CanvasStrokeFrame = TSTLayoutSpaceGetCanvasStrokeFrame([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace]);
      [(TSTLayout *)self setNeedsDisplayInRect:TSTLayoutSpaceGetLayoutRectForCanvasRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space], CanvasStrokeFrame, v67, v68, v69)];
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setFrozenHeaderColumnsSpace:0];
    }

    if (!v51)
    {
      goto LABEL_124;
    }
  }

  if (TSTLayoutGetFrozenHeaderRowsEnabled(self))
  {
    if (![(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace])
    {
      v70 = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:[(TSTLayout *)self spaceBundle] type:3];
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setFrozenHeaderRowsSpace:v70];

      v64 = 1;
    }

    v71 = v64;
    if (BYTE2(v53) == 255)
    {
      v72 = -1;
    }

    else
    {
      v72 = BYTE2(v53);
    }

    if (WORD2(v53))
    {
      v73 = WORD2(v53) + v72 - 1;
    }

    else
    {
      v73 = 0xFFFFFFFFLL;
    }

    v74 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace];
    if (v53 == 0xFFFF)
    {
      v75 = 0xFFFFFFFFLL;
    }

    else
    {
      v75 = v53;
    }

    v76 = v72 | (v75 << 32);
    v77 = (((v75 << 32) + (HIDWORD(v53) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
    if (!HIWORD(v53))
    {
      v77 = 0xFFFFFFFF00000000;
    }

    v78 = v76;
    v64 = v71;
    TSTLayoutSpaceSetGridRange(v74, v78, v77 | v73);
    v15 = &off_26CA63000;
    goto LABEL_126;
  }

LABEL_124:
  if ([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace])
  {
    v79 = TSTLayoutSpaceGetCanvasStrokeFrame([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace]);
    [(TSTLayout *)self setNeedsDisplayInRect:TSTLayoutSpaceGetLayoutRectForCanvasRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space], v79, v80, v81, v82)];
    [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setFrozenHeaderRowsSpace:0];
    v64 = 1;
  }

LABEL_126:
  if ([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace]&& [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace])
  {
    if (![(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderCornerSpace])
    {
      v64 = 1;
      v83 = [[TSTLayoutSpace alloc] initWithLayoutSpaceBundle:[(TSTLayout *)self spaceBundle] type:1];
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setFrozenHeaderCornerSpace:v83];
    }

    if (BYTE2(v54) == 255)
    {
      v84 = -1;
    }

    else
    {
      v84 = BYTE2(v54);
    }

    if (WORD2(v54))
    {
      v85 = WORD2(v54) + v84 - 1;
    }

    else
    {
      v85 = 0xFFFFFFFFLL;
    }

    v86 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderCornerSpace];
    if (v54 == 0xFFFF)
    {
      v87 = 0xFFFFFFFFLL;
    }

    else
    {
      v87 = v54;
    }

    v88 = v84 | (v87 << 32);
    v89 = (((v87 << 32) + (HIDWORD(v54) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
    if (!HIWORD(v54))
    {
      v89 = 0xFFFFFFFF00000000;
    }

    TSTLayoutSpaceSetGridRange(v86, v88, v89 | v85);
  }

  else if ([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderCornerSpace])
  {
    v90 = TSTLayoutSpaceGetCanvasStrokeFrame([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderCornerSpace]);
    [(TSTLayout *)self setNeedsDisplayInRect:TSTLayoutSpaceGetLayoutRectForCanvasRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space], v90, v91, v92, v93)];
    [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] setFrozenHeaderCornerSpace:0];
    v64 = 1;
  }

  [(TSTLayoutSpace *)v55 viewScale];
  v95 = v94;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  if (v55)
  {
    [(TSTLayoutSpace *)v55 transformToCanvas];
    v115 = 0u;
    v116 = 0u;
    v114 = 0u;
    [(TSTLayoutSpace *)v55 transformToDevice];
  }

  else
  {
    v115 = 0uLL;
    v116 = 0uLL;
    v114 = 0uLL;
  }

  v96 = [(TSTLayout *)self spaceBundle];
  v101 = MEMORY[0x277D85DD0];
  v102 = *(v15 + 277);
  v103 = ___ZL28TSTLayoutUpdateFrozenHeadersP9TSTLayout_block_invoke;
  v104 = &__block_descriptor_136_e24_B16__0__TSTLayoutSpace_8l;
  v105 = v95;
  v106 = v117;
  v107 = v118;
  v108 = v119;
  v109 = v114;
  v110 = v115;
  v111 = v116;
  [(TSTLayoutSpaceBundle *)v96 performActionOnFrozenLayoutSpaces:&v101];
  if (v64)
  {
    [(TSTLayout *)self invalidate];
  }

  self->mCoordinatesChangedMaskForChrome |= [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] validateLayoutSpaces];
  v100.receiver = self;
  v100.super_class = TSTLayout;
  [(TSDLayout *)&v100 validate];
  TSTLayoutUpdateTransformToCanvas(self);
}

- (void)setNeedsDisplay
{
  v2.receiver = self;
  v2.super_class = TSTLayout;
  [(TSDLayout *)&v2 setNeedsDisplay];
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    v8.receiver = self;
    v8.super_class = TSTLayout;
    [(TSDLayout *)&v8 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = TSTLayout;
  [(TSDDrawableLayout *)&v3 invalidate];
  [(TSTLayoutHint *)[(TSTLayout *)self layoutHint] setIsValid:0];
}

- (void)invalidateSize
{
  v3.receiver = self;
  v3.super_class = TSTLayout;
  [(TSDLayout *)&v3 invalidateSize];
  [(TSDDrawableLayout *)self invalidateExteriorWrap];
}

- (void)bezierPathsForCellRegion:(id)a3 transform:(CGAffineTransform *)a4 viewScale:(double)a5 inset:(double)a6 block:(id)a7
{
  v80 = *MEMORY[0x277D85DE8];
  v46 = [a3 boundingCellRange];
  FrozenHeaderColumnsFloating = TSTLayoutGetFrozenHeaderColumnsFloating(self);
  FrozenHeaderRowsFloating = TSTLayoutGetFrozenHeaderRowsFloating(self);
  v12 = FrozenHeaderRowsFloating;
  if (FrozenHeaderColumnsFloating)
  {
    Range = TSTLayoutSpaceGetRange([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace]);
    v14 = Range;
    v15 = Range >> 16;
    v44 = HIWORD(Range);
    if ((v12 & 1) == 0)
    {
      v36 = Range;
      v37 = Range >> 16;
      LOWORD(v42) = 0;
      LOWORD(v43) = 0;
      LOWORD(v33) = 0;
      LOBYTE(v34) = 0;
      LOBYTE(v40) = -1;
      LOWORD(v41) = 0;
      v32 = 0xFFFFFF;
      v35 = -1;
      goto LABEL_35;
    }
  }

  else
  {
    LODWORD(v15) = 255;
    v14 = -1;
    if (!FrozenHeaderRowsFloating)
    {
      LOWORD(v42) = 0;
      LOWORD(v43) = 0;
      LOWORD(v33) = 0;
      LOBYTE(v34) = 0;
      LOWORD(v44) = 0;
      v32 = 0xFFFFFF;
      LODWORD(v37) = 255;
      LOBYTE(v40) = -1;
      LOWORD(v41) = 0;
      v35 = -1;
      v36 = -1;
      goto LABEL_35;
    }

    LODWORD(v44) = 0;
  }

  v16 = TSTLayoutSpaceGetRange([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace]);
  v34 = v16 >> 24;
  v35 = v16;
  v40 = v16 >> 16;
  v41 = HIDWORD(v16);
  v43 = HIWORD(v16);
  LODWORD(v37) = v15;
  if (FrozenHeaderColumnsFloating)
  {
    v17 = v16;
    v18 = TSTLayoutSpaceGetRange([(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderCornerSpace]);
    v42 = HIWORD(v18);
    if (v44)
    {
      if (v15 >= 0x10000)
      {
        if (v42)
        {
          if ((v18 & 0xFFFF00000000) != 0 && v14 <= v18 && (v44 + v14 - 1) >= v18 && BYTE2(v18) >= v15)
          {
            v19 = (v15 + BYTE2(v15) - 1);
            if (v19 >= BYTE2(v18) && v19 >= (BYTE4(v18) + BYTE2(v18) - 1))
            {
              if ((v44 + v14 - 1) < (v18 + HIWORD(v18) - 1))
              {
                v20 = 0;
              }

              else
              {
                v20 = HIWORD(v18);
              }

              v14 += v20;
              LOWORD(v44) = v44 - v20;
            }
          }
        }
      }
    }

    v36 = v14;
    v32 = v18;
    v33 = HIDWORD(v18);
    if (v43)
    {
      if ((v17 & 0xFFFF00000000) != 0)
      {
        if (v42)
        {
          if ((v18 & 0xFFFF00000000) != 0 && v17 <= v18 && (v17 + v43 - 1) >= v18 && BYTE2(v17) <= BYTE2(v18))
          {
            v21 = (v41 + BYTE2(v17) - 1);
            if (v21 >= BYTE2(v18) && v21 >= (BYTE4(v18) + BYTE2(v18) - 1))
            {
              if ((v17 + v43 - 1) < (v18 + HIWORD(v18) - 1))
              {
                v22 = 0;
              }

              else
              {
                v22 = WORD2(v18);
              }

              LOBYTE(v40) = v22 + v40;
              LOWORD(v41) = v41 - v22;
            }
          }
        }
      }
    }
  }

  else
  {
    v36 = v14;
    LOWORD(v42) = 0;
    v32 = 0xFFFFFF;
    LOWORD(v33) = 0;
  }

LABEL_35:
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [TSTLayoutGetVisibleLayoutSpaces(self) reverseObjectEnumerator];
  v23 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v23)
  {
    v24 = *v76;
    v30 = a7 + 16;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v76 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v75 + 1) + 8 * i);
        v27 = [v26 layoutSpaceType];
        if (TSTLayoutSpaceIntersectsCellRange(v26, v46))
        {
          v69 = 0;
          v70 = &v69;
          v71 = 0x3052000000;
          v72 = __Block_byref_object_copy__73;
          v73 = __Block_byref_object_dispose__74;
          v74 = 0;
          v63 = 0;
          v64 = &v63;
          v65 = 0x3052000000;
          v66 = __Block_byref_object_copy__73;
          v67 = __Block_byref_object_dispose__74;
          v68 = 0;
          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __70__TSTLayout_bezierPathsForCellRegion_transform_viewScale_inset_block___block_invoke;
          v47[3] = &unk_279D4AB68;
          v51 = v27;
          v52 = v36;
          v53 = v37;
          v54 = v44;
          v55 = v35;
          v56 = v40;
          v57 = v34;
          v58 = v41;
          v59 = v43;
          v60 = v32;
          v61 = v33;
          v62 = v42;
          v47[4] = v26;
          v47[5] = self;
          *&v47[8] = a5;
          *&v47[9] = a6;
          v28 = *&a4->tx;
          v49 = *&a4->c;
          v50 = v28;
          v48 = *&a4->a;
          v47[6] = &v63;
          v47[7] = &v69;
          [a3 enumerateCellRangesUsingBlock:v47];
          v29 = v64[5];
          if (v29)
          {
            if (([v29 isEmpty] & 1) == 0)
            {
              (*(a7 + 2))(a7, v64[5], v70[5], v26);
            }
          }

          _Block_object_dispose(&v63, 8);
          _Block_object_dispose(&v69, 8);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v23);
  }
}

uint64_t __70__TSTLayout_bezierPathsForCellRegion_transform_viewScale_inset_block___block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  result = TSTLayoutSpaceIntersectsCellRange(*(a1 + 32), a2);
  if (!result)
  {
    return result;
  }

  v5 = v2 >> 16;
  v6 = WORD2(v2);
  v7 = HIWORD(v2);
  v8 = *(a1 + 128);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v18 = 0;
      v19 = *(a1 + 132);
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_161;
      }

      v18 = 0;
      v19 = *(a1 + 140);
    }

    v31 = 16711680;
    v32 = 0xFFFFLL;
    if (v19 != 0xFFFF)
    {
      v33 = 0;
      if ((v19 & 0xFF0000) == 0xFF0000)
      {
        goto LABEL_83;
      }

      v18 = 0;
      v31 = 16711680;
      v32 = 0xFFFFLL;
      if (HIWORD(v19))
      {
        v33 = 0;
        if ((v19 & 0xFFFF00000000) == 0)
        {
          goto LABEL_83;
        }

        v18 = 0;
        v31 = 16711680;
        v32 = 0xFFFFLL;
        if (v2 != 0xFFFFLL)
        {
          v33 = 0;
          if ((v2 & 0xFF0000) != 0xFF0000)
          {
            v18 = 0;
            v31 = 16711680;
            v32 = 0xFFFFLL;
            if (v7)
            {
              v33 = 0;
              if ((v2 & 0xFFFF00000000) != 0)
              {
                v32 = 0;
                v34 = BYTE2(v19) <= BYTE2(v2) ? BYTE2(v2) : BYTE2(v19);
                v35 = v19 <= v2 ? v2 : v19;
                v36 = (BYTE4(v19) + BYTE2(v19) - 1) >= (BYTE4(v2) + BYTE2(v2) - 1) ? (BYTE4(v2) + BYTE2(v2) - 1) : (BYTE4(v19) + BYTE2(v19) - 1);
                v37 = (v19 + HIWORD(v19) - 1) >= (v2 + HIWORD(v2) - 1) ? (v2 + HIWORD(v2) - 1) : (v19 + HIWORD(v19) - 1);
                v31 = 0;
                v18 = 0;
                v33 = 0;
                if (v35 <= v37 && v34 <= v36)
                {
                  v33 = ((v37 - v35) << 48) + 0x1000000000000;
                  v18 = (((v36 - v34) << 32) + 0x100000000) & 0xFFFF00000000;
                  v31 = v34 << 16;
                  v32 = v35;
                }
              }

              goto LABEL_83;
            }

            goto LABEL_82;
          }

LABEL_83:
          v38 = v31 | v32 | v18 | v33;
          v5 = v38 >> 16;
          v6 = WORD2(v38);
          v7 = HIWORD(v33);
          LODWORD(v2) = v38;
LABEL_162:
          v81 = 0;
          v39 = *(a1 + 40);
          v42 = (v6 << 32) | (v7 << 48) | v2 & 0xFF000000 | (v5 << 16) | v38;
          v40 = *(a1 + 64);
          v41 = *(a1 + 72);
          v43 = &v81;
          goto LABEL_163;
        }
      }
    }

LABEL_82:
    v33 = 0;
    goto LABEL_83;
  }

  if (!v8)
  {
    v20 = *(a1 + 132);
    if (*(a1 + 132) != 0xFFFF && (v20 & 0xFF0000) != 0xFF0000 && HIWORD(v20) && (v20 & 0xFFFF00000000) != 0)
    {
      v21 = 0xFFFFLL;
      v22 = (~v2 & 0xFF0000) == 0 || v2 == 0xFFFFLL;
      v23 = !v22;
      v24 = 0;
      if (v22)
      {
        v26 = 0;
        v25 = 16711680;
      }

      else
      {
        v25 = 16711680;
        v21 = 0xFFFFLL;
        v26 = 0;
        if (v7 && (v2 & 0xFFFF00000000) != 0)
        {
          v21 = 0;
          v27 = BYTE2(v20);
          if (BYTE2(v20) <= BYTE2(v2))
          {
            v27 = BYTE2(v2);
          }

          if (*(a1 + 132) <= v2)
          {
            v28 = v2;
          }

          else
          {
            v28 = *(a1 + 132);
          }

          if ((BYTE4(v20) + BYTE2(v20) - 1) >= (BYTE4(v2) + BYTE2(v2) - 1))
          {
            v29 = (BYTE4(v2) + BYTE2(v2) - 1);
          }

          else
          {
            v29 = (BYTE4(v20) + BYTE2(v20) - 1);
          }

          if ((v20 + HIWORD(v20) - 1) >= (v2 + HIWORD(v2) - 1))
          {
            v30 = (v2 + HIWORD(v2) - 1);
          }

          else
          {
            v30 = (v20 + HIWORD(v20) - 1);
          }

          v25 = 0;
          v24 = 0;
          v26 = 0;
          if (v28 <= v30 && v27 <= v29)
          {
            v26 = ((v30 - v28) << 48) + 0x1000000000000;
            v24 = (((v29 - v27) << 32) + 0x100000000) & 0xFFFF00000000;
            v25 = v27 << 16;
            v21 = v28;
          }
        }
      }

      v44 = v25 | v21 | v24 | v26;
      if (v44 != 0xFFFF && (v44 & 0xFF0000) != 0xFF0000 && HIWORD(v44) && (v44 & 0xFFFF00000000) != 0)
      {
        v45 = 0;
        if (v23)
        {
          v46 = 0;
          if (v7 && (v2 & 0xFFFF00000000) != 0)
          {
            v47 = BYTE2(v20);
            if (BYTE2(v20) <= BYTE2(v2))
            {
              v47 = BYTE2(v2);
            }

            v48 = *(a1 + 132);
            if (v48 <= v2)
            {
              v48 = v2;
            }

            if ((BYTE4(v20) + BYTE2(v20) - 1) >= (BYTE4(v2) + BYTE2(v2) - 1))
            {
              v49 = (BYTE4(v2) + BYTE2(v2) - 1);
            }

            else
            {
              v49 = (BYTE4(v20) + BYTE2(v20) - 1);
            }

            v50 = (v20 + HIWORD(v20) - 1);
            if (v50 >= (v2 + HIWORD(v2) - 1))
            {
              v50 = (v2 + HIWORD(v2) - 1);
            }

            v51 = v47 > v49;
            if (v47 <= v49)
            {
              v45 = ((v49 - v47) << 32) + 0x100000000;
            }

            else
            {
              v45 = 0;
            }

            if (v51)
            {
              v52 = 0;
            }

            else
            {
              v52 = 0x1000000000000;
            }

            if (v48 <= v50)
            {
              v46 = v52;
            }

            else
            {
              v45 = 0;
              v46 = 0;
            }
          }
        }

        else
        {
          v46 = 0;
        }

        v53 = (v45 | v46) >> 32;
        LOBYTE(v5) = v53 + BYTE2(v2);
        v6 = (WORD2(v2) - v53);
      }
    }

    v54 = *(a1 + 140);
    if (*(a1 + 140) != 0xFFFF && (v54 & 0xFF0000) != 0xFF0000 && HIWORD(v54) && (v54 & 0xFFFF00000000) != 0)
    {
      v55 = v5 << 16;
      v56 = 0xFFFFLL;
      v57 = v5 == 0xFF || v2 == 0xFFFFLL;
      v58 = !v57;
      v59 = 0;
      if (v57)
      {
        v61 = 0;
        v60 = 16711680;
      }

      else
      {
        v60 = 16711680;
        v56 = 0xFFFFLL;
        v61 = 0;
        if (v7 && v6)
        {
          v56 = 0;
          v62 = BYTE2(v54);
          if (BYTE2(v54) <= v5)
          {
            v62 = v5;
          }

          if (*(a1 + 140) <= v2)
          {
            v63 = v2;
          }

          else
          {
            v63 = *(a1 + 140);
          }

          if ((BYTE4(v54) + BYTE2(v54) - 1) >= (v6 + BYTE2(v55) - 1))
          {
            v64 = (v6 + BYTE2(v55) - 1);
          }

          else
          {
            v64 = (BYTE4(v54) + BYTE2(v54) - 1);
          }

          if ((v54 + HIWORD(v54) - 1) >= (v2 + HIWORD(v2) - 1))
          {
            v65 = (v2 + HIWORD(v2) - 1);
          }

          else
          {
            v65 = (v54 + HIWORD(v54) - 1);
          }

          v60 = 0;
          v59 = 0;
          v61 = 0;
          if (v63 <= v65 && v62 <= v64)
          {
            v61 = ((v65 - v63) << 48) + 0x1000000000000;
            v59 = (((v64 - v62) << 32) + 0x100000000) & 0xFFFF00000000;
            v60 = v62 << 16;
            v56 = v63;
          }
        }
      }

      v66 = v60 | v56 | v59 | v61;
      if (v66 != 0xFFFF && (v66 & 0xFF0000) != 0xFF0000 && HIWORD(v66) && (v66 & 0xFFFF00000000) != 0)
      {
        v67 = 0;
        if (v58 && v7 && v6)
        {
          v67 = 0;
          v68 = v5;
          if (BYTE2(v54) > v5)
          {
            v68 = BYTE2(v54);
          }

          v69 = *(a1 + 140);
          if (v69 <= v2)
          {
            v69 = v2;
          }

          v70 = (BYTE4(v54) + BYTE2(v54) - 1) >= (v6 + BYTE2(v55) - 1);
          v71 = (v6 + BYTE2(v55) - 1);
          if (!v70)
          {
            v71 = (BYTE4(v54) + BYTE2(v54) - 1);
          }

          v72 = (v54 + HIWORD(v54) - 1);
          if (v72 >= (v2 + HIWORD(v2) - 1))
          {
            v72 = (v2 + HIWORD(v2) - 1);
          }

          if (v69 <= v72 && v68 <= v71)
          {
            v67 = v72 - v69 + 1;
          }
        }

        LOWORD(v38) = v67 + v2;
        v7 = (HIWORD(v2) - v67);
        goto LABEL_162;
      }
    }

    goto LABEL_161;
  }

  if (v8 != 1)
  {
LABEL_161:
    LOWORD(v38) = v2;
    goto LABEL_162;
  }

  v9 = 0;
  v10 = *(a1 + 148);
  v11 = 16711680;
  v12 = 0xFFFFLL;
  if (*(a1 + 148) == 0xFFFF)
  {
    goto LABEL_84;
  }

  v13 = 0;
  if ((v10 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_85;
  }

  v9 = 0;
  v11 = 16711680;
  v12 = 0xFFFFLL;
  if (!HIWORD(v10))
  {
    goto LABEL_84;
  }

  v13 = 0;
  if ((v10 & 0xFFFF00000000) == 0)
  {
    goto LABEL_85;
  }

  v9 = 0;
  v11 = 16711680;
  v12 = 0xFFFFLL;
  if (v2 == 0xFFFFLL)
  {
LABEL_84:
    v13 = 0;
    goto LABEL_85;
  }

  v13 = 0;
  if ((v2 & 0xFF0000) != 0xFF0000)
  {
    v9 = 0;
    v11 = 16711680;
    v12 = 0xFFFFLL;
    if (v7)
    {
      v13 = 0;
      if ((v2 & 0xFFFF00000000) != 0)
      {
        v12 = 0;
        v14 = BYTE2(v10) <= BYTE2(v2) ? BYTE2(v2) : BYTE2(v10);
        v15 = *(a1 + 148) <= v2 ? v2 : *(a1 + 148);
        v16 = (BYTE4(v10) + BYTE2(v10) - 1) >= (BYTE4(v2) + BYTE2(v2) - 1) ? (BYTE4(v2) + BYTE2(v2) - 1) : (BYTE4(v10) + BYTE2(v10) - 1);
        v17 = (v10 + HIWORD(v10) - 1) >= (v2 + HIWORD(v2) - 1) ? (v2 + HIWORD(v2) - 1) : (v10 + HIWORD(v10) - 1);
        v11 = 0;
        v9 = 0;
        v13 = 0;
        if (v15 <= v17 && v14 <= v16)
        {
          v13 = ((v17 - v15) << 48) + 0x1000000000000;
          v9 = (((v16 - v14) << 32) + 0x100000000) & 0xFFFF00000000;
          v11 = v14 << 16;
          v12 = v15;
        }
      }

      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_85:
  v81 = 0;
  v39 = *(a1 + 40);
  v40 = *(a1 + 64);
  v41 = *(a1 + 72);
  v42 = v11 | v12 | v9 | v13;
  v43 = 0;
LABEL_163:
  AlignedStrokeFramePathForRange = TSTLayoutGetAlignedStrokeFramePathForRange(v39, v42, 0, v43, v40, v41);
  v74 = *(a1 + 96);
  v78 = *(a1 + 80);
  v79 = v74;
  v80 = *(a1 + 112);
  [(TSDBezierPath *)AlignedStrokeFramePathForRange transformUsingAffineTransform:&v78];
  v75 = *(a1 + 96);
  v78 = *(a1 + 80);
  v79 = v75;
  v80 = *(a1 + 112);
  result = [v81 transformUsingAffineTransform:&v78];
  if (AlignedStrokeFramePathForRange)
  {
    v76 = *(*(a1 + 48) + 8);
    result = *(v76 + 40);
    if (result)
    {
      result = [result uniteWithBezierPath:AlignedStrokeFramePathForRange];
      *(*(*(a1 + 48) + 8) + 40) = result;
    }

    else
    {
      *(v76 + 40) = AlignedStrokeFramePathForRange;
    }
  }

  if (v81)
  {
    v77 = *(*(a1 + 56) + 8);
    result = *(v77 + 40);
    if (result)
    {
      result = [result uniteWithBezierPath:?];
      *(*(*(a1 + 56) + 8) + 40) = result;
    }

    else
    {
      *(v77 + 40) = v81;
    }
  }

  return result;
}

- (void)validateTableNameVisibility
{
  if (!self->mTableNameVisibilityIsValid)
  {
    mTableNameVisible = self->mTableNameVisible;
    if (TSTMasterLayoutGetTableNameEnabled([(TSTLayout *)self masterLayout]))
    {
      v4 = [(TSTLayoutHint *)[(TSTLayout *)self layoutHint] partitionPosition]& 1;
    }

    else
    {
      LODWORD(v4) = 0;
    }

    self->mTableNameVisible = v4;
    if (mTableNameVisible != v4)
    {
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateTableOffsets];
      [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateCoordinates];
    }

    self->mTableNameVisibilityIsValid = 1;
  }
}

- (BOOL)isBeingManipulated
{
  v4.receiver = self;
  v4.super_class = TSTLayout;
  return [(TSDLayout *)&v4 isBeingManipulated]|| [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] inDynamicLayoutMode]|| [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] dynamicRepResize];
}

- (void)p_updateCachedStyleInformationFromCellID:(id)a3
{
  CellStyleAtCellID = TSTTableGetCellStyleAtCellID([(TSTLayout *)self tableModel], *&a3, 0);
  if (CellStyleAtCellID || (CellStyleAtCellID = TSTTableCellStyleForCellWithEmptyStyleAtCellID([(TSTLayout *)self tableModel], *&a3, 0)) != 0)
  {
    v6 = CellStyleAtCellID;
    v7 = [CellStyleAtCellID valueForProperty:904];
    if (v7)
    {
      v8 = v7;
      if (([v7 isEqual:0] & 1) == 0)
      {
        [v8 topInset];
        v10 = v9;
        [v8 leftInset];
        v12 = v11;
        [v8 bottomInset];
        v14 = v13;
        [v8 rightInset];
        self->mCachedPaddingForEditingCell.top = v10;
        self->mCachedPaddingForEditingCell.left = v12;
        self->mCachedPaddingForEditingCell.bottom = v14;
        self->mCachedPaddingForEditingCell.right = v15;
        self->mCachedPaddingForEditingCell.left = TSTMasterLayoutApplyMinimumHorizontalInset(v12);
        self->mCachedPaddingForEditingCell.right = TSTMasterLayoutApplyMinimumHorizontalInset(self->mCachedPaddingForEditingCell.right);
      }
    }

    self->mCachedVerticalAlignmentForEditingCell = 0;
    v16 = [v6 intValueForProperty:903];
    if ((v16 & 0x7FFFFFFF) != 0)
    {
      self->mCachedVerticalAlignmentForEditingCell = v16;
    }
  }
}

- (id)children
{
  v4.receiver = self;
  v4.super_class = TSTLayout;
  result = [(TSDAbstractLayout *)&v4 children];
  if (self->mContainedTextEditingLayout)
  {
    if (result)
    {
      return [result arrayByAddingObject:?];
    }

    else
    {
      return [MEMORY[0x277CBEA60] arrayWithObject:?];
    }
  }

  return result;
}

- (void)updateChildrenFromInfo
{
  if (self->mContainedTextEditingLayout)
  {
LABEL_10:
    if (!TSTLayoutExtendedPartitionRangeIntersectsCellRange(self, [(TSTEditingState *)[(TSTLayout *)self editingState] editingCellRange]))
    {
      [(TSTLayout *)self removeContainedTextEditingLayout];
    }

    goto LABEL_12;
  }

  if (![+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")] || -[TSTEditingState editingMode](-[TSTLayout editingState](self, "editingState"), "editingMode") != 6 || -[TSTEditingState editingCellInProxy](-[TSTLayout editingState](self, "editingState"), "editingCellInProxy") || !TSTLayoutExtendedPartitionRangeIntersectsCellRange(self, -[TSTEditingState editingCellRange](-[TSTLayout editingState](self, "editingState"), "editingCellRange")) || !objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self, "layoutController"), "canvas"), "isCanvasInteractive") || !-[TSTMasterLayout containedTextEditor](-[TSTLayout masterLayout](self, "masterLayout"), "containedTextEditor"))
  {
    if (!self->mContainedTextEditingLayout)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  [(TSTLayout *)self setupContainedTextEditingLayout:[(TSTEditingState *)[(TSTLayout *)self editingState] editingCellID]];
LABEL_12:
  mContainedTextEditingLayout = self->mContainedTextEditingLayout;
  if (mContainedTextEditingLayout)
  {
    [(TSWPLayout *)mContainedTextEditingLayout performSelector:a2];
    [(TSTLayout *)self p_updateCachedStyleInformationFromCellID:[(TSTEditingState *)[(TSTLayout *)self editingState] editingCellID]];
  }

LABEL_14:
  v5.receiver = self;
  v5.super_class = TSTLayout;
  [(TSWPTextHostLayout *)&v5 updateChildrenFromInfo];
}

- (void)removeContainedTextEditingLayout
{
  self->mCachedPaddingForEditingCell = *TSDEdgeInsetsInvalid;
  self->mCachedVerticalAlignmentForEditingCell = 0;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->mComputedEditingCellContentFrame.origin = *MEMORY[0x277CBF3A0];
  self->mComputedEditingCellContentFrame.size = v3;
  if ([(TSDAbstractLayout *)self->mContainedTextEditingLayout parent]== self)
  {
    [(TSDLayout *)self->mContainedTextEditingLayout setParent:0];
  }

  objc_opt_class();
  [(TSDLayout *)self->mContainedTextEditingLayout info];
  [TSUDynamicCast() removeObserver:self];

  self->mContainedTextEditingLayout = 0;
  [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] removeDynamicLayoutEndIfNecessary:self];
  mEditingSpillingTextRange = self->mEditingSpillingTextRange;
  if (self->mEditingSpillingTextRange.origin.row != 0xFFFF && (*&mEditingSpillingTextRange & 0xFF0000) != 0xFF0000 && HIWORD(*&mEditingSpillingTextRange) != 0 && (*&mEditingSpillingTextRange & 0xFFFF00000000) != 0)
  {
    v7 = [TSTChangeDescriptor changeDescriptorWithType:27 strokeRange:?];
    [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] addChangeDescriptor:v7];
    +[TSKBroadcast asyncNotificationWithAccessController:changeNotifier:changeKind:details:changeSource:](TSKBroadcast, "asyncNotificationWithAccessController:changeNotifier:changeKind:details:changeSource:", [objc_msgSend(-[TSDLayout layoutController](self "layoutController")], objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self, "layoutController"), "canvas"), "changeNotifier"), 1, v7, -[TSTLayout tableInfo](self, "tableInfo"));
  }

  self->mEditingSpillingTextRange = 0xFFFFFFLL;
  self->mSpillingTextSize = *MEMORY[0x277CBF3A8];
}

- (CGPoint)calculatePointFromSearchReference:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (BOOL)orderedBefore:(id)a3
{
  v4 = [(TSTLayoutHint *)[(TSTLayout *)self layoutHint] cellRange];
  var1 = v4.var0.var1;
  var0 = v4.var0.var0;
  v7 = [objc_msgSend(a3 "layoutHint")];
  v9 = var0 == v7 && var1 < BYTE2(v7);
  return var0 < v7 || v9;
}

- (CGRect)rectForSelection:(id)a3
{
  objc_opt_class();
  v4 = [objc_msgSend(TSUDynamicCast() "cellRegion")];
  AlignedStrokeFrameForRange = TSTLayoutGetAlignedStrokeFrameForRange(self, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] space];
  v13 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderColumnsSpace];
  v14 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] frozenHeaderRowsSpace];
  FrozenHeadersTabOffset = TSTLayoutGetFrozenHeadersTabOffset(self);
  v17 = v16;
  v18 = FrozenHeadersTabOffset + 0.0;
  if (!TSTLayoutSpaceIntersectsCellRange(v13, v4) && TSTLayoutGetFrozenHeaderColumnsEnabled(self))
  {
    v18 = v18 + TSTLayoutSpaceGetHeaderColumnsWidth(v12);
  }

  v19 = v17 + 0.0;
  if (!TSTLayoutSpaceIntersectsCellRange(v14, v4) && TSTLayoutGetFrozenHeaderRowsEnabled(self))
  {
    v20 = v19 + TSTLayoutSpaceGetHeaderRowsHeight(v12);
    TSTLayoutGetTableNameHeight(self);
    v19 = v20 + v21;
  }

  v22 = AlignedStrokeFrameForRange - v18;
  v23 = v7 - v19;
  v24 = v9 + v18;
  v25 = v11 + v19;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)rectForPresentingAnnotationPopoverForSelection:(id)a3
{
  objc_opt_class();
  v4 = [objc_msgSend(TSUDynamicCast() "cellRegion")];

  AlignedStrokeFrameForRange = TSTLayoutGetAlignedStrokeFrameForRange(self, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = AlignedStrokeFrameForRange;
  return result;
}

- (CGSize)adjustedInsets
{
  v4 = *&self->mCachedPaddingForEditingCell.top;
  __asm { FMOV            V1.2D, #-1.0 }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v4, _Q1), vceqq_f64(*&self->mCachedPaddingForEditingCell.bottom, _Q1))))) & 1) != 0 && self->mContainedTextEditingLayout)
  {
    left = self->mCachedPaddingForEditingCell.left;
  }

  else
  {
    [(TSTMasterLayout *)[(TSTLayout *)self masterLayout:v2] paddingForCellID:0];
    v4.f64[0] = v11;
    left = v12;
  }

  v13 = v4.f64[0];
  result.height = v13;
  result.width = left;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 outWidth:(double *)a5 outGap:(double *)a6
{
  [(TSTLayout *)self adjustedInsets:a3];
  v9 = 10.0;
  if (a4 <= 10.0)
  {
    v9 = a4;
  }

  if (v8 >= (a4 - v9) * 0.5)
  {
    v10 = (a4 - v9) * 0.5;
  }

  else
  {
    v10 = v8;
  }

  v11 = a4 + v10 * -2.0;
  if (v11 < v9)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayout positionForColumnIndex:bodyWidth:outWidth:outGap:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayout.mm"), 4102, @"created an undersized column"}];
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v10;
}

- (CGRect)computedEditingCellContentFrame
{
  v3 = MEMORY[0x277CBF3A0];
  p_mComputedEditingCellContentFrame = &self->mComputedEditingCellContentFrame;
  if (!CGRectEqualToRect(*MEMORY[0x277CBF3A0], self->mComputedEditingCellContentFrame))
  {
    goto LABEL_126;
  }

  v5 = [(TSTEditingState *)[(TSTTableInfo *)[(TSTLayout *)self tableInfo] editingState] editingCellID];
  v76 = 0;
  v6 = v5;
  v7 = [TSTTableGetCellStyleAtCellID(-[TSTLayout tableModel](self "tableModel")];
  self->mContainedTextEditorTextWraps = v7 != 0x80000000 && v7 != 0;
  v8 = [-[TSWPStorage paragraphStyleAtCharIndex:effectiveRange:](-[TSTEditingState editingStorage](-[TSTLayout editingState](self "editingState")];
  self->mContainedTextEditorParagraphAlignment = v8;
  if (v8 == 4)
  {
    self->mContainedTextEditorParagraphAlignment = [(TSTLayout *)self p_naturalAlignmentForCellID:*&v5];
  }

  v74 = v5;
  var0 = v5.var0;
  v75 = 1;
  v10 = TSTTableMergeRangeAtCellID([(TSTLayout *)self tableModel], *&v5);
  v11 = v10;
  if (v10 == 0xFFFF || (v10 & 0xFF0000) == 0xFF0000 || (v12 = HIWORD(v10)) == 0 || (v10 & 0xFFFF00000000) == 0)
  {
    if (BYTE2(v6) == 255)
    {
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v23 = BYTE2(v6);
    }

    if (var0 == 0xFFFF)
    {
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v24 = var0;
    }

    v25 = v23 | (v24 << 32);
    v26 = TSTTableHeightOfRow([(TSTLayout *)self tableModel], v6, &v75);
    v27 = v25;
  }

  else
  {
    v13 = [(TSTLayoutHint *)[(TSTLayout *)self layoutHint] cellRange];
    v14 = (~*&v13.var0 & 0xFF0000) != 0 && v13.var0.var0 != 0xFFFF;
    if (v14)
    {
      v15 = 0;
      v16 = 16711680;
      v17 = 0xFFFFLL;
      v18 = 0;
      if (HIWORD(*&v13) && (*&v13 & 0xFFFF00000000) != 0)
      {
        v17 = 0;
        var1 = v13.var0.var1;
        if (BYTE2(v11) > v13.var0.var1)
        {
          var1 = BYTE2(v11);
        }

        if (v11 <= v13.var0.var0)
        {
          v20 = v13.var0.var0;
        }

        else
        {
          v20 = v11;
        }

        if ((BYTE4(v11) + BYTE2(v11) - 1) >= (LOBYTE(v13.var1.var0) + v13.var0.var1 - 1))
        {
          v21 = (LOBYTE(v13.var1.var0) + v13.var0.var1 - 1);
        }

        else
        {
          v21 = (BYTE4(v11) + BYTE2(v11) - 1);
        }

        if ((v11 + v12 - 1) >= (v13.var0.var0 + v13.var1.var1 - 1))
        {
          v22 = (v13.var0.var0 + v13.var1.var1 - 1);
        }

        else
        {
          v22 = (v11 + v12 - 1);
        }

        v16 = 0;
        v15 = 0;
        v18 = 0;
        if (v20 <= v22 && var1 <= v21)
        {
          v18 = ((v22 - v20) << 48) + 0x1000000000000;
          v15 = (((v21 - var1) << 32) + 0x100000000) & 0xFFFF00000000;
          v16 = var1 << 16;
          v17 = v20;
        }
      }
    }

    else
    {
      v15 = 0;
      v18 = 0;
      v16 = 16711680;
      v17 = 0xFFFFLL;
    }

    v28 = v16 | v17 | v15 | v18;
    if (v28 == 0xFFFF || (v28 & 0xFF0000) == 0xFF0000 || !HIWORD(v28) || (v28 & 0xFFFF00000000) == 0)
    {
      v37 = v3;
    }

    else
    {
      v29 = 0;
      if (v14)
      {
        v30 = 16711680;
        v31 = 0xFFFFLL;
        v32 = 0;
        if (HIWORD(*&v13) && (*&v13 & 0xFFFF00000000) != 0)
        {
          v31 = 0;
          v33 = v13.var0.var1;
          if (BYTE2(v11) > v13.var0.var1)
          {
            v33 = BYTE2(v11);
          }

          if (v11 <= v13.var0.var0)
          {
            v34 = v13.var0.var0;
          }

          else
          {
            v34 = v11;
          }

          if ((BYTE4(v11) + BYTE2(v11) - 1) >= (LOBYTE(v13.var1.var0) + v13.var0.var1 - 1))
          {
            v35 = (LOBYTE(v13.var1.var0) + v13.var0.var1 - 1);
          }

          else
          {
            v35 = (BYTE4(v11) + BYTE2(v11) - 1);
          }

          if ((v11 + v12 - 1) >= (v13.var0.var0 + v13.var1.var1 - 1))
          {
            v36 = (v13.var0.var0 + v13.var1.var1 - 1);
          }

          else
          {
            v36 = (v11 + v12 - 1);
          }

          v30 = 0;
          v29 = 0;
          v32 = 0;
          if (v34 <= v36 && v33 <= v35)
          {
            v32 = ((v36 - v34) << 48) + 0x1000000000000;
            v29 = (((v35 - v33) << 32) + 0x100000000) & 0xFFFF00000000;
            v30 = v33 << 16;
            v31 = v34;
          }
        }
      }

      else
      {
        v32 = 0;
        v30 = 16711680;
        v31 = 0xFFFFLL;
      }

      v37 = v3;
      v11 = v30 | v31 | v29 | v32;
    }

    if (BYTE2(v11) == 255)
    {
      v38 = -1;
    }

    else
    {
      v38 = BYTE2(v11);
    }

    v39 = WORD2(v11) + v38 - 1;
    if (!WORD2(v11))
    {
      v39 = 0xFFFFFFFFLL;
    }

    if (v11 == 0xFFFF)
    {
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      v40 = v11;
    }

    v25 = v38 | (v40 << 32);
    v41 = (((v40 << 32) + (HIDWORD(v11) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
    if (!HIWORD(v11))
    {
      v41 = 0xFFFFFFFF00000000;
    }

    v27 = v41 | v39;
    v26 = TSTTableHeightOfRow([(TSTLayout *)self tableModel], (v11 + HIWORD(v11) - 1), &v75);
    v3 = v37;
  }

  v42 = [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] tableRowsBehavior];
  self->mContainedTextEditorSpills = 0;
  if (self->mContainedTextEditorTextWraps)
  {
    if (v42 == 3)
    {
      self->mContainedTextEditorSpills = v75 ^ 1;
    }

    ArbitraryRectAcrossSpacesForGridRange = TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(self, v25, v27, &__block_literal_global_67);
    goto LABEL_124;
  }

  self->mContainedTextEditorSpills = 1;
  RangeForHint = TSTMasterLayoutGetRangeForHint([(TSTLayout *)self masterLayout], [(TSTLayout *)self layoutHint]);
  if (v11 == 0xFFFF || (v11 & 0xFF0000) == 0xFF0000 || !HIWORD(v11) || (v11 & 0xFFFF00000000) == 0)
  {
    v11 = v6 | 0x1000100000000;
  }

  mContainedTextEditorParagraphAlignment = self->mContainedTextEditorParagraphAlignment;
  if ([(TSTLayout *)self layoutDirectionIsLeftToRight])
  {
    if (mContainedTextEditorParagraphAlignment <= 1)
    {
      if (mContainedTextEditorParagraphAlignment)
      {
        if (mContainedTextEditorParagraphAlignment != 1)
        {
          goto LABEL_91;
        }

        goto LABEL_122;
      }

      goto LABEL_94;
    }

    goto LABEL_92;
  }

  if (mContainedTextEditorParagraphAlignment > 1)
  {
LABEL_92:
    if (mContainedTextEditorParagraphAlignment == 2)
    {
      goto LABEL_95;
    }

    if (mContainedTextEditorParagraphAlignment == 3)
    {
      goto LABEL_94;
    }

LABEL_91:
    v73 = [MEMORY[0x277D6C290] currentHandler];
    v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayout computedEditingCellContentFrame]"];
    [v73 handleFailureInFunction:v49 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayout.mm"), 4237, @"Unexpected cell alignment: %d", mContainedTextEditorParagraphAlignment}];
LABEL_95:
    v52 = *&v74 & 0xFF000000;
    LOBYTE(v6) = BYTE2(v6);
    v53 = BYTE2(v6);
    if (BYTE2(RangeForHint) != BYTE2(v6))
    {
      v54 = TSTMasterLayoutPreviousVisibleColumn([(TSTLayout *)self masterLayout], (BYTE2(v6) - 1));
      if (v54 == 255)
      {
        v53 = BYTE2(v6);
      }

      else
      {
        v53 = v54;
      }
    }

    v55 = TSTCellRangeUnionCellID(var0 | 0x1000100000000, v52 | (v53 << 16) | var0);
    v56 = HIDWORD(RangeForHint) + WORD1(RangeForHint) + 255;
    if (v56 != BYTE2(v6))
    {
      VisibleColumn = TSTMasterLayoutNextVisibleColumn([(TSTLayout *)self masterLayout], (BYTE2(v6) + 1));
      if (VisibleColumn != 255)
      {
        LOBYTE(v6) = VisibleColumn;
      }
    }

    v58 = TSTCellRangeUnionCellID(v52 | (v6 << 16) | var0 | 0x1000100000000, var0 & 0xFF00FFFF | (v56 << 16));
    v59 = v58;
    if ((v11 & 0xFFFF00000000) == 0 || (!HIWORD(v55) || (v55 & 0xFFFF00000000) == 0 || v11 > v55 || (v11 + HIWORD(v11) - 1) < v55 || BYTE2(v55) < BYTE2(v11) || (v60 = (BYTE4(v11) + BYTE2(v11) - 1), v60 < BYTE2(v55)) || v60 < (BYTE4(v55) + BYTE2(v55) - 1) || (v61 = 0.0, (v11 + HIWORD(v11) - 1) < (v55 + HIWORD(v55) - 1))) && (!HIWORD(v58) || (v58 & 0xFFFF00000000) == 0 || v11 > v58 || (v11 + HIWORD(v11) - 1) < v58 || BYTE2(v58) < BYTE2(v11) || (v62 = (BYTE4(v11) + BYTE2(v11) - 1), v62 < BYTE2(v58)) || v62 < (BYTE4(v58) + BYTE2(v58) - 1) || (v61 = 0.0, (v11 + HIWORD(v11) - 1) < (v58 + HIWORD(v58) - 1))))
    {
      TSTLayoutGetContentFrameForRange(self, v55);
      v61 = v63;
      TSTLayoutGetContentFrameForRange(self, v59);
      if (v61 >= v64)
      {
        v61 = v64;
      }
    }

    ContentFrameForRange = TSTLayoutGetContentFrameForRange(self, v11);
    v45 = v66 + v61 * 2.0;
    ArbitraryRectAcrossSpacesForGridRange = ContentFrameForRange - v61;
    goto LABEL_124;
  }

  if (!mContainedTextEditorParagraphAlignment)
  {
LABEL_122:
    v51 = v11;
    v50 = var0;
    goto LABEL_123;
  }

  if (mContainedTextEditorParagraphAlignment != 1)
  {
    goto LABEL_91;
  }

LABEL_94:
  v50 = (RangeForHint + ((RangeForHint >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | var0;
  v51 = v11;
LABEL_123:
  v67 = TSTCellRangeUnionCellID(v51, v50);
  ArbitraryRectAcrossSpacesForGridRange = TSTLayoutGetContentFrameForRange(self, v67);
LABEL_124:
  p_mComputedEditingCellContentFrame->origin.x = ArbitraryRectAcrossSpacesForGridRange;
  p_mComputedEditingCellContentFrame->origin.y = v44;
  p_mComputedEditingCellContentFrame->size.width = v45;
  p_mComputedEditingCellContentFrame->size.height = v46;
  if (CGRectIsNull(*&ArbitraryRectAcrossSpacesForGridRange))
  {
    v68 = v3[1];
    p_mComputedEditingCellContentFrame->origin = *v3;
    p_mComputedEditingCellContentFrame->size = v68;
  }

LABEL_126:
  x = p_mComputedEditingCellContentFrame->origin.x;
  y = p_mComputedEditingCellContentFrame->origin.y;
  width = p_mComputedEditingCellContentFrame->size.width;
  height = p_mComputedEditingCellContentFrame->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unsigned)p_naturalAlignmentForCellID:(id)a3
{
  v5 = ~a3.var0;
  v6 = [(TSTLayout *)self p_defaultAlignmentForTableWritingDirection];
  v7 = a3;
  if (!v5 || (*&a3.var0 & 0xFF0000) == 0xFF0000)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayout p_naturalAlignmentForCellID:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayout.mm"), 4301, @"Contained text editing layout but invalid editing cell ID?"}];
  }

  if ((*&a3 & 0xFFFFFF) == ([(TSTEditingState *)[(TSTLayout *)self editingState] editingCellID]& 0xFFFFFF))
  {
    v10 = [(TSWPStorage *)[(TSTEditingState *)[(TSTLayout *)self editingState] editingStorage] writingDirectionForParagraphAtCharIndex:0];
  }

  else
  {
    v10 = [(TSSStyle *)TSTTableGetTextStyleAtCellID([(TSTLayout *)self tableModel] intValueForProperty:0), "intValueForProperty:", 44];
  }

  if (v10 != -1)
  {
    v6 = v10 == 1;
  }

  v11 = objc_alloc_init(TSTCell);
  if (!TSTCellAtCellID([(TSTLayout *)self tableModel], *&v7, v11) && v11)
  {
    v12 = *(&v11->mPrivate + 1);
    v13 = v12 > 7;
    v14 = (1 << v12) & 0xA4;
    v15 = v13 || v14 == 0;
    if (!v15 && [(TSSStyle *)TSTTableGetTextStyleAtCellID([(TSTLayout *)self tableModel] intValueForProperty:0), "intValueForProperty:", 86]== 4)
    {
      return 1;
    }
  }

  return v6;
}

- (unsigned)naturalAlignmentForTextLayout:(id)a3
{
  if (self->mContainedTextEditingLayout != a3 || ![(TSWPStorage *)[(TSTEditingState *)[(TSTLayout *)self editingState] editingStorage] canBeStoredInAStringValueCell])
  {
    return 4;
  }

  v4 = [(TSTEditingState *)[(TSTLayout *)self editingState] editingCellID];

  return [(TSTLayout *)self p_naturalAlignmentForCellID:v4];
}

- (unsigned)autosizeFlagsForTextLayout:(id)a3
{
  if (self->mContainedTextEditorTextWraps)
  {
    return 1;
  }

  else
  {
    return 37;
  }
}

- (unsigned)verticalAlignmentForTextLayout:(id)a3
{
  if (self->mContainedTextEditingLayout == a3)
  {
    return self->mCachedVerticalAlignmentForEditingCell;
  }

  else
  {
    return 0;
  }
}

- (void)invalidateForAutosizingTextLayout:(id)a3
{
  TSTLayoutInvalidateCell(self, [(TSTEditingState *)[(TSTTableInfo *)[(TSTLayout *)self tableInfo] editingState] editingCellID]);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->mComputedEditingCellContentFrame.origin = *MEMORY[0x277CBF3A0];
  self->mComputedEditingCellContentFrame.size = v4;
}

- (CGSize)p_rangeUpAndLeftOfIntersectionRangeOfGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4012000000;
  v31 = __Block_byref_object_copy__98;
  v32 = __Block_byref_object_dispose__99;
  v33 = &unk_26CAC6BB9;
  v34 = -1;
  v35 = -1;
  v6 = [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] isDynamicallyRepressingFrozenHeaders];
  v7 = [(TSTLayout *)self spaceBundle];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__TSTLayout_p_rangeUpAndLeftOfIntersectionRangeOfGridRange___block_invoke;
  v26[3] = &unk_279D4AB90;
  v27 = v6;
  v26[5] = var0;
  v26[6] = var1;
  v26[4] = &v28;
  [(TSTLayoutSpaceBundle *)v7 performActionOnEachLayoutSpace:v26];
  v8 = v29[6];
  v9 = [(TSTLayout *)self masterLayout];
  v10 = v8 - (*&var0 & 0xFFFFFFFF00000000);
  if (HIDWORD(v10))
  {
    v11 = ((*&var0 + (v10 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  else
  {
    v11 = 0xFFFFFFFF00000000;
  }

  v12 = (v8 - 1);
  if (v8 == var0.var0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  v14 = v12 < var0.var0 || v12 == 0xFFFFFFFFLL || var0.var0 == -1;
  v15 = (v12 - LOBYTE(var0.var0) + 1);
  if (v14)
  {
    v15 = 0;
  }

  v17 = HIDWORD(v11) < HIDWORD(*&var0) || v11 == 0xFFFFFFFF00000000 || HIDWORD(*&var0) == 0xFFFFFFFF;
  v18 = (((HIDWORD(v11) - var0.var1) << 32) + 0x100000000) >> 16;
  if (v17)
  {
    LODWORD(v18) = 0;
  }

  v19 = v18 | v15;
  v20 = LOBYTE(var0.var0) << 16;
  if (var0.var0 == -1)
  {
    v20 = 16711680;
  }

  v21 = TSTMasterLayoutContentSizeForCellRange(v9, v20 & 0xFFFFFFFFFFFF0000 | LOWORD(var0.var1) | (v19 << 32), 1);
  v23 = v22;
  _Block_object_dispose(&v28, 8);
  v24 = v21;
  v25 = v23;
  result.height = v25;
  result.width = v24;
  return result;
}

BOOL __60__TSTLayout_p_rangeUpAndLeftOfIntersectionRangeOfGridRange___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFrozen] && (*(a1 + 56) & 1) != 0)
  {
    return 0;
  }

  result = TSTLayoutSpaceIntersectsGridRange(a2, *(a1 + 40), *(a1 + 48));
  if (result)
  {
    v5 = TSTLayoutSpaceIntersectionGridRange(a2, *(a1 + 40), *(a1 + 48));
    v6 = *(*(a1 + 32) + 8);
    *(v6 + 48) = v5;
    *(v6 + 56) = v7;
    return 1;
  }

  return result;
}

- (BOOL)p_layoutWhollyContainsGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [(TSTMasterLayout *)[(TSTLayout *)self masterLayout] isDynamicallyRepressingFrozenHeaders];
  v7 = [(TSTLayout *)self spaceBundle];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__TSTLayout_p_layoutWhollyContainsGridRange___block_invoke;
  v9[3] = &unk_279D4AB90;
  v10 = v6;
  v9[5] = var0;
  v9[6] = var1;
  v9[4] = &v11;
  [(TSTLayoutSpaceBundle *)v7 performActionOnEachLayoutSpace:v9];
  LOBYTE(var0.var0) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return var0.var0;
}

uint64_t __45__TSTLayout_p_layoutWhollyContainsGridRange___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFrozen] && (*(a1 + 56) & 1) != 0 || !TSTLayoutSpaceIntersectsGridRange(a2, *(a1 + 40), *(a1 + 48)))
  {
    return 0;
  }

  v4 = TSTLayoutSpaceIntersectionGridRange(a2, *(a1 + 40), *(a1 + 48));
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4 == -1 || v5 == -1 || v4 > v5;
  v10 = HIDWORD(v4);
  v11 = HIDWORD(v5);
  v14 = v9 || v10 == 0xFFFFFFFF || v11 == 0xFFFFFFFF || v10 > v11;
  if (v14 && (v7 == -1 || v6 == -1 || v7 > v6 || HIDWORD(v7) == 0xFFFFFFFF || HIDWORD(v6) == 0xFFFFFFFF || HIDWORD(v7) > HIDWORD(v6)) || (v15 = 0, v4 == v7) && !((v7 ^ v4) >> 32) && v5 == v6 && !((v6 ^ v5) >> 32))
  {
    v15 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v15;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  ArbitraryRectAcrossSpacesForGridRange = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [TSTTableGetCellStyleAtCellID(-[TSTLayout tableModel](self "tableModel")];
  v13 = [(TSTEditingState *)[(TSTLayout *)self editingState] editingCellID];
  v14 = TSTTableMergeRangeAtCellID([(TSTLayout *)self tableModel], *&v13);
  v15 = self->mContainedTextEditingLayout != a3 || ~v13.var0 == 0;
  if (!v15 && (*&v13.var0 & 0xFF0000) != 0xFF0000)
  {
    if ((v12 & 0x7FFFFFFF) != 0 && !self->mContainedTextEditorSpills)
    {
      if (v14 == 0xFFFF || (v14 & 0xFF0000) == 0xFF0000 || !HIWORD(v14) || (v14 & 0xFFFF00000000) == 0)
      {
        LODWORD(v24) = 65537;
      }

      else
      {
        v24 = HIDWORD(v14);
        v13 = v14;
      }

      if (v13.var1 == 255)
      {
        var1 = -1;
      }

      else
      {
        var1 = v13.var1;
      }

      if (v24)
      {
        v26 = v24 + var1 - 1;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }

      if (v13.var0 == 0xFFFF)
      {
        var0 = 0xFFFFFFFFLL;
      }

      else
      {
        var0 = v13.var0;
      }

      v28 = var0 << 32;
      v29 = var1 | (var0 << 32);
      v30 = (((var0 << 32) + (v24 << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
      if (v24 >= 0x10000)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0xFFFFFFFF00000000;
      }

      [(TSTLayout *)self validate];
      [(TSTLayout *)self computedEditingCellContentFrame];
      v33 = v32;
      v35 = v34;
      if ([(TSTLayout *)self p_layoutWhollyContainsGridRange:v29, v31 | v26])
      {
        ArbitraryRectAcrossSpacesForGridRange = TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(self, v29, v31 | v26, &__block_literal_global_67);
        v9 = v36;
        v10 = v37;
        v11 = v38;
      }

      else
      {
        [(TSTLayout *)self p_rangeUpAndLeftOfIntersectionRangeOfGridRange:v29, v31 | v26];
        ArbitraryRectAcrossSpacesForGridRange = v33 - v39;
        v9 = v35 - v40;
        v10 = TSTMasterLayoutContentSizeForCellRange([(TSTLayout *)self masterLayout], *&v13 | (v24 << 32), 1);
        v11 = v41;
      }

      self->mEditingSpillingTextRange.origin = v13;
      self->mEditingSpillingTextRange.size = v24;
      if ([(TSTLayout *)self p_layoutWhollyContainsGridRange:v29, v29])
      {
        if ([(TSTLayout *)self layoutDirectionIsLeftToRight])
        {
          v42 = v29;
        }

        else
        {
          v42 = v26 | v28;
        }

        ArbitraryRectAcrossSpacesForGridRange = TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(self, v42, v42, &__block_literal_global_72);
        v9 = v43;
      }
    }

    else
    {
      [(TSTLayout *)self p_computeSpillingTextFrameForLayout:a3 textSize:0 editingSpillRange:width, height];
      ArbitraryRectAcrossSpacesForGridRange = v20;
      v9 = v21;
      v10 = v22;
      v11 = v23;
    }
  }

  v16 = ArbitraryRectAcrossSpacesForGridRange;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)p_computeSpillingTextFrameForLayout:(id)a3 textSize:(CGSize)a4 editingSpillRange:(id *)a5
{
  height = a4.height;
  width = a4.width;
  [(TSTLayout *)self computedEditingCellContentFrame];
  if (width >= v8)
  {
    [(TSTLayout *)self computedEditingCellContentFrame];
    width = v9;
  }

  self->mSpillingTextSize.width = width;
  self->mSpillingTextSize.height = height;
  v10 = [(TSTLayout *)self layoutDirectionIsLeftToRight];
  RangeForHint = TSTMasterLayoutGetRangeForHint([(TSTLayout *)self masterLayout], [(TSTLayout *)self layoutHint]);
  LODWORD(v12) = [(TSTEditingState *)[(TSTLayout *)self editingState] editingCellID];
  mContainedTextEditorParagraphAlignment = self->mContainedTextEditorParagraphAlignment;
  if (mContainedTextEditorParagraphAlignment - 3 <= 1)
  {
    mContainedTextEditorParagraphAlignment = [(TSTLayout *)self p_naturalAlignmentForCellID:v12];
  }

  v14 = 0x1000100000000;
  v15 = TSTTableMergeRangeAtCellID([(TSTLayout *)self tableModel], v12);
  v16 = v15;
  if (v15 == 0xFFFF || (v15 & 0xFF0000) == 0xFF0000 || !HIWORD(v15) || (v15 & 0xFFFF00000000) == 0)
  {
    v16 = v12 | 0x1000100000000;
  }

  v140 = v12;
  ContentFrameForRange = TSTLayoutGetContentFrameForRange(self, v16);
  v21 = ContentFrameForRange;
  v22 = v18;
  v137 = v10;
  if (self->mContainedTextEditorTextWraps)
  {
    v23 = height + v18;
    v24 = ContentFrameForRange;
    goto LABEL_20;
  }

  if (mContainedTextEditorParagraphAlignment == 2)
  {
    v24 = ContentFrameForRange + (width + v19) * 0.5;
    v21 = ContentFrameForRange + (v19 - width) * 0.5;
    goto LABEL_18;
  }

  if (mContainedTextEditorParagraphAlignment == 1)
  {
    v24 = ContentFrameForRange;
    v21 = CGRectGetMaxX(*&ContentFrameForRange) - width;
LABEL_18:
    v23 = height + v22;
    goto LABEL_20;
  }

  if (mContainedTextEditorParagraphAlignment)
  {
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayout p_computeSpillingTextFrameForLayout:textSize:editingSpillRange:]"];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayout.mm"];
    v28 = v25;
    v14 = 0x1000100000000;
    v29 = v26;
    v10 = v137;
    [v28 handleFailureInFunction:v29 file:v27 lineNumber:4601 description:@"Unexpected alignment (natural or justified) when calculating spill frame."];
    v24 = *MEMORY[0x277CBF348];
    v23 = *(MEMORY[0x277CBF348] + 8);
    v21 = *MEMORY[0x277CBF348];
    v22 = v23;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v146, width, height);
    v24 = v146.tx + v22 * v146.c + v146.a * v21;
    v23 = v146.ty + v22 * v146.d + v146.b * v21;
  }

LABEL_20:
  mContainedTextEditorTextWraps = self->mContainedTextEditorTextWraps;
  v31 = v12 & 0xFF000000;
  v32 = v12;
  v142 = RangeForHint;
  v143 = HIDWORD(RangeForHint);
  v33 = WORD1(v12);
  v144 = mContainedTextEditorParagraphAlignment;
  v145 = v12;
  v139 = v31;
  v135 = v32;
  v133 = WORD1(v12);
  v131 = !v10;
  v132 = RangeForHint >> 16;
  if (mContainedTextEditorTextWraps || !v10)
  {
    if (mContainedTextEditorTextWraps || v10)
    {
      v38 = WORD1(v12);
      v35 = WORD1(v12);
      goto LABEL_49;
    }

    v41 = BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1;
    v35 = WORD1(v12);
    if (v41 > BYTE2(v12))
    {
      LOBYTE(v35) = BYTE2(v12);
      v42 = (BYTE2(v12) << 16) + v31 + v32;
      while (1)
      {
        v14 = v42 + (v14 & 0xFFFFFFFF00000000);
        v43 = TSTCellRangeUnionCellID(v16, v14);
        v153.origin.x = TSTLayoutGetContentFrameForRange(self, v43);
        v148.x = v21;
        v148.y = v22;
        if (CGRectContainsPoint(v153, v148))
        {
          break;
        }

        LOBYTE(v35) = v35 + 1;
        v42 += 0x10000;
        if (v41 == v35)
        {
          LOBYTE(v35) = v41;
          break;
        }
      }

      v14 = 0x1000100000000;
      v31 = v139;
      v32 = v135;
    }

    v44 = BYTE2(RangeForHint);
    LOBYTE(v38) = BYTE2(v145);
    if (BYTE2(v145) > BYTE2(RangeForHint))
    {
      v45 = v31 + (BYTE2(v145) << 16) + v32;
      while (1)
      {
        v14 = v14 & 0xFFFFFFFF00000000 | v45;
        v46 = TSTCellRangeUnionCellID(v16, v14);
        v154.origin.x = TSTLayoutGetContentFrameForRange(self, v46);
        if (CGRectGetMaxX(v154) >= v24)
        {
          goto LABEL_48;
        }

        LOBYTE(v38) = v38 - 1;
        v45 -= 0x10000;
        if (v38 <= v44)
        {
          LOBYTE(v38) = v132;
          goto LABEL_48;
        }
      }
    }

LABEL_46:
    LOBYTE(v38) = v33;
    LOWORD(v12) = v145;
    goto LABEL_49;
  }

  v34 = BYTE2(v12);
  LOBYTE(v35) = v33;
  if (v34 > BYTE2(RangeForHint))
  {
    v36 = v31 + (v34 << 16) + v32;
    LOBYTE(v35) = v34;
    while (1)
    {
      v14 = v14 & 0xFFFFFFFF00000000 | v36;
      v37 = TSTCellRangeUnionCellID(v16, v14);
      v151.origin.x = TSTLayoutGetContentFrameForRange(self, v37);
      v147.x = v21;
      v147.y = v22;
      if (CGRectContainsPoint(v151, v147))
      {
        break;
      }

      LOBYTE(v35) = v35 - 1;
      v36 -= 0x10000;
      if (v35 <= BYTE2(RangeForHint))
      {
        LOBYTE(v35) = BYTE2(RangeForHint);
        break;
      }
    }

    v14 = 0x1000100000000;
    v31 = v139;
    v32 = v135;
  }

  v38 = HIDWORD(RangeForHint) + WORD1(RangeForHint) + 255;
  if (v34 >= (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1))
  {
    goto LABEL_46;
  }

  v39 = (v34 << 16) + v31 + v32;
  while (1)
  {
    v14 = v39 + (v14 & 0xFFFFFFFF00000000);
    v40 = TSTCellRangeUnionCellID(v16, v14);
    v152.origin.x = TSTLayoutGetContentFrameForRange(self, v40);
    if (CGRectGetMaxX(v152) >= v24)
    {
      break;
    }

    ++v34;
    v39 += 0x10000;
    if (v34 == v38)
    {
      goto LABEL_48;
    }
  }

  LOBYTE(v38) = v34;
LABEL_48:
  LOWORD(v12) = v145;
  RangeForHint = v142;
  v31 = v139;
  v32 = v135;
LABEL_49:
  v47 = RangeForHint + HIWORD(RangeForHint) - 1;
  v48 = (RangeForHint + HIWORD(RangeForHint) - 1);
  v49 = v31 | (v35 << 16) | v32;
  if (v48 > v12)
  {
    v50 = v31 | (v38 << 16);
    v12 = v32;
    while (1)
    {
      v51 = TSTCellRangeUnionCellID(v49 | 0x1000100000000, v50 | v12);
      v155.origin.x = TSTLayoutGetContentFrameForRange(self, v51);
      v155.size.height = ceil(v52);
      if (CGRectGetMaxY(v155) >= v23)
      {
        break;
      }

      if (v47 == ++v12)
      {
        LOWORD(v12) = v47;
        break;
      }
    }
  }

  if (v49 == 0xFFFF || (v49 & 0xFF0000) == 0xFF0000)
  {
    v53 = [MEMORY[0x277D6C290] currentHandler];
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayout p_computeSpillingTextFrameForLayout:textSize:editingSpillRange:]"];
    v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayout.mm"];
    v56 = v54;
    v10 = v137;
    [v53 handleFailureInFunction:v56 file:v55 lineNumber:4660 description:@"Unable to determine upper left cell ID for spilling text."];
  }

  mEditingSpillingTextRange = self->mEditingSpillingTextRange;
  v138 = width;
  if (self->mEditingSpillingTextRange.origin.row == 0xFFFF || ((mEditingSpillingTextRange & 0xFF0000) != 0xFF0000 ? (v58 = HIWORD(mEditingSpillingTextRange) == 0) : (v58 = 1), !v58 ? (v59 = (mEditingSpillingTextRange & 0xFFFF00000000) == 0) : (v59 = 1), v59))
  {
    mEditingSpillingTextRange = v140 | 0x1000100000000;
  }

  v60 = v142;
  v61 = TSTLayoutGetContentFrameForRange(self, mEditingSpillingTextRange);
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v68 = v64;
  if (v144)
  {
    v69 = v10;
  }

  else
  {
    v69 = 0;
  }

  v141 = HIBYTE(v145);
  if (v69 && v35 > v132 && v138 > CGRectGetWidth(*&v61))
  {
    v70 = -1;
  }

  else
  {
    v71 = v144 == 1 || v10;
    if ((v71 & 1) != 0 || v35 >= (v143 + BYTE2(v142) - 1) || (v156.origin.x = v65, v156.origin.y = v66, v156.size.width = v67, v156.size.height = v68, v138 <= CGRectGetWidth(v156)))
    {
      v136 = HIBYTE(v145);
      goto LABEL_89;
    }

    v70 = 1;
  }

  v72 = v35 + v70;
  v73 = v135 & 0xFF00FFFF | ((v35 + v70) << 16);
  v157.origin.x = TSTLayoutGetStrokeFrameForRange(self, v73 | 0x1000100000000);
  v149.x = v21;
  v149.y = v22;
  v74 = CGRectContainsPoint(v157, v149);
  v75 = v145;
  if (v74)
  {
    v75 = v73;
  }

  LOWORD(v145) = v75;
  if (v74)
  {
    LOBYTE(v35) = v72;
  }

  v76 = v141;
  if (v74)
  {
    v76 = 0;
  }

  v136 = v76;
  v60 = v142;
LABEL_89:
  v77 = v143 + HIWORD(v60) + 255;
  if (v38 >= v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = v38;
  }

  if (v12 == 0xFFFF)
  {
    v79 = v47;
  }

  else
  {
    v79 = v12;
  }

  v80 = v79;
  v81 = v79 | (v78 << 16) | v139;
  if ((v80 | v139) == -1 || (*&v81 & 0xFF0000) == 0xFF0000)
  {
    v82 = [MEMORY[0x277D6C290] currentHandler];
    v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTLayout p_computeSpillingTextFrameForLayout:textSize:editingSpillRange:]"];
    v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayout.mm"];
    v85 = v83;
    v10 = v137;
    [v82 handleFailureInFunction:v85 file:v84 lineNumber:4693 description:@"Unable to determine a bottom right corner cell ID for spill text that is being edited"];
  }

  v86 = v144 != 1 && v10;
  if (v86 && v38 < v77)
  {
    v158.origin.x = v65;
    v158.origin.y = v66;
    v158.size.width = v67;
    v158.size.height = v68;
    if (v138 > CGRectGetWidth(v158))
    {
      v87 = 1;
LABEL_113:
      v90 = v78 + v87;
      v160.origin.x = TSTLayoutGetStrokeFrameForRange(self, v80 & 0xFF00FFFF | ((v78 + v87) << 16) | 0x1000100000000);
      v150.x = v24;
      v150.y = v23;
      v91 = CGRectContainsPoint(v160, v150);
      if (v91)
      {
        LOBYTE(v78) = v90;
      }

      v92 = v141;
      if (v91)
      {
        v92 = 0;
      }

      v141 = v92;
      goto LABEL_118;
    }
  }

  v88 = v131;
  if (!v144)
  {
    v88 = 0;
  }

  if (v88 == 1)
  {
    v89 = v143 - 1;
    if (!v10)
    {
      v89 = 0;
    }

    if (v78 > (v89 + BYTE2(v142)))
    {
      v159.origin.x = v65;
      v159.origin.y = v66;
      v159.size.width = v67;
      v159.size.height = v68;
      if (v138 > CGRectGetWidth(v159))
      {
        v87 = -1;
        goto LABEL_113;
      }
    }
  }

LABEL_118:
  v93 = TSTCellRangeUnionCellID((v35 << 16) | (v136 << 24) | v145 | 0x1000100000000, (v78 << 16) | (v141 << 24) | v80);
  if (v80 > (v16 + HIWORD(v16) - 1))
  {
    self->mCachedVerticalAlignmentForEditingCell = 0;
  }

  v94 = TSTTableMergeRangeAtCellID([(TSTLayout *)self tableModel], v140);
  if (v94 == 0xFFFF || (v94 & 0xFF0000) == 0xFF0000 || (v95 = HIWORD(v94)) == 0 || (v94 & 0xFFFF00000000) == 0)
  {
    v94 = v140 | 0x1000100000000;
    v96 = a5;
  }

  else
  {
    v96 = a5;
    if (v93 == 0xFFFF || (v93 & 0xFF0000) == 0xFF0000 || !HIWORD(v93) || (v93 & 0xFFFF00000000) == 0)
    {
      v98 = v94 >> 16;
      v97 = HIDWORD(v94);
      LOWORD(v93) = v94;
      v101 = v94;
    }

    else
    {
      v97 = HIDWORD(v93);
      if (v93 <= v94 && (v93 + HIWORD(v93) - 1) >= v94 && (v98 = v93 >> 16, BYTE2(v94) >= BYTE2(v93)) && (v99 = (BYTE4(v93) + BYTE2(v93) - 1), v99 >= BYTE2(v94)) && v99 >= (BYTE4(v94) + BYTE2(v94) - 1) && (v93 + HIWORD(v93) - 1) >= (v94 + HIWORD(v94) - 1))
      {
        v101 = v93;
        v95 = HIWORD(v93);
      }

      else if (v94 <= v93 && (v94 + HIWORD(v94) - 1) >= v93 && (v98 = v94 >> 16, BYTE2(v93) >= BYTE2(v94)) && (v100 = (BYTE4(v94) + BYTE2(v94) - 1), v100 >= BYTE2(v93)) && v100 >= (BYTE4(v93) + BYTE2(v93) - 1) && (v94 + HIWORD(v94) - 1) >= (v93 + HIWORD(v93) - 1))
      {
        LOWORD(v93) = v94;
        v101 = v94;
        v97 = HIDWORD(v94);
      }

      else
      {
        v101 = 0;
        LOWORD(v98) = BYTE2(v94);
        if (BYTE2(v93) < BYTE2(v94))
        {
          LOWORD(v98) = BYTE2(v93);
        }

        v102 = v93;
        if (v93 >= v94)
        {
          v102 = v94;
        }

        v103 = v93 + HIWORD(v93);
        LOWORD(v93) = v102;
        LODWORD(v97) = (v97 + BYTE2(v93) - 1);
        if (v97 <= (BYTE4(v94) + BYTE2(v94) - 1))
        {
          LOWORD(v97) = (BYTE4(v94) + BYTE2(v94) - 1);
        }

        v104 = (v103 - 1);
        if (v104 <= (v94 + HIWORD(v94) - 1))
        {
          LOWORD(v104) = v94 + HIWORD(v94) - 1;
        }

        LOWORD(v97) = v97 - v98 + 1;
        v95 = (v104 - v102 + 1);
      }
    }

    v93 = (v97 << 32) | (v95 << 48) | v101 & 0xFF000000 | (v98 << 16) | v93;
  }

  v105 = HIDWORD(v93);
  v106 = v93 >> 16;
  if (v144)
  {
    v107 = WORD2(v93);
  }

  else
  {
    v107 = (BYTE4(v94) + BYTE2(v94) - 1) - BYTE2(v93) + 1;
  }

  if (v144 == 1)
  {
    v108 = v133;
  }

  else
  {
    v108 = BYTE2(v93);
  }

  if (v144 == 1)
  {
    v107 = WORD2(v93);
    v109 = (BYTE4(v94) + BYTE2(v94) - 1) - BYTE2(v93) + 1;
  }

  else
  {
    v109 = WORD2(v93);
  }

  if (v144)
  {
    LOWORD(v105) = v109;
  }

  else
  {
    LOBYTE(v106) = v133;
  }

  if (v10)
  {
    v110 = v105;
  }

  else
  {
    LOBYTE(v106) = v108;
    v110 = v107;
  }

  v111 = v93 & 0xFF00FFFF | (v106 << 16);
  if (v96)
  {
    v96->var0 = v111;
    v96->var1.var0 = v110;
    v96->var1.var1 = HIWORD(v93);
  }

  v112 = TSTLayoutGetContentFrameForRange(self, v93 & 0xFFFF000000000000 | (v110 << 32) | v111);
  v114 = v113;
  v116 = v115;
  v118 = v117;
  AlignedContentFrameForRange = TSTLayoutGetAlignedContentFrameForRange(self, v111 | 0x1000100000000);
  v123 = v122;
  if (!v10)
  {
    v124 = v119;
    v125 = v120;
    v161.origin.x = v112;
    v161.origin.y = v114;
    v161.size.width = v116;
    v161.size.height = v118;
    MaxX = CGRectGetMaxX(v161);
    v162.origin.x = AlignedContentFrameForRange;
    v162.origin.y = v123;
    v162.size.width = v124;
    v162.size.height = v125;
    AlignedContentFrameForRange = v112 - (MaxX - CGRectGetMaxX(v162));
  }

  self->mEditingSpillingTextRange.origin = v111;
  self->mEditingSpillingTextRange.size.numberOfColumns = v110;
  self->mEditingSpillingTextRange.size.numberOfRows = HIWORD(v93);
  v127 = AlignedContentFrameForRange;
  v128 = v123;
  v129 = v116;
  v130 = v118;
  result.size.height = v130;
  result.size.width = v129;
  result.origin.y = v128;
  result.origin.x = v127;
  return result;
}

- (id)dependentLayouts
{
  v5.receiver = self;
  v5.super_class = TSTLayout;
  v3 = [(TSDLayout *)&v5 dependentLayouts];
  if (self->mContainedTextEditingLayout)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:v3];
    [v3 addObject:self->mContainedTextEditingLayout];
  }

  return v3;
}

- (CGRect)maskRectForTextLayout:(id)a3
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  if (self->mContainedTextEditingLayout == a3)
  {
    v8 = TSTTableMergeRangeAtCellID([(TSTLayout *)self tableModel], [(TSTTableInfo *)[(TSTLayout *)self tableInfo] editingCellID]);
    if (v8 != 0xFFFF)
    {
      v9 = (v8 & 0xFF0000) == 0xFF0000 || HIWORD(v8) == 0;
      if (!v9 && (v8 & 0xFFFF00000000) != 0)
      {
        if (BYTE2(v8) == 255)
        {
          v15 = -1;
        }

        else
        {
          v15 = BYTE2(v8);
        }

        v16 = HIDWORD(v8);
        v17 = v8;
        if (WORD2(v8))
        {
          v18 = WORD2(v8) + v15 - 1;
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }

        [(TSTLayout *)self validate];
        v19 = v15 | (v17 << 32);
        v20 = ((v17 << 32) + (v16 << 16)) & 0xFFFFFFFF00000000 | v18;
        [(TSTLayout *)self p_rangeUpAndLeftOfIntersectionRangeOfGridRange:v19, v20 - 0x100000000];
        v22 = v21;
        v24 = v23;
        if (![(TSTLayout *)self p_layoutWhollyContainsGridRange:v19, v20 - 0x100000000])
        {
          TSTLayoutGetFrameForGridRange(self, v19, v20 - 0x100000000);
          v5 = v25;
          v6 = v26;
          v3 = v22;
          v4 = v24;
        }
      }
    }
  }

  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)initialTextSize
{
  v2 = 8.0;
  v3 = 8.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)p_processChange:(id)a3 forChangeSource:(id)a4 actions:(id)a5
{
  v9 = [a3 kind];
  if ([a4 isEqual:{-[TSTLayout tableInfo](self, "tableInfo")}] && v9 == 1)
  {
    objc_opt_class();
    [a3 details];
    v10 = TSUDynamicCast();
    if (v10)
    {
      v11 = [v10 changeDescriptor];
    }

    else
    {
      v11 = -1;
    }

    [a3 details];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 40;
    }

    else
    {
      v12 = v11;
    }

    switch(v12)
    {
      case 0:
      case 17:
      case 18:
      case 27:
      case 37:
      case 38:

        [a5 setLayoutInvalidate:1];
        return;
      case 1:
      case 2:
      case 4:
      case 5:
      case 13:
      case 14:
      case 19:
      case 20:
      case 21:
      case 22:
      case 24:
      case 25:
      case 26:
      case 28:
      case 33:
      case 36:
        goto LABEL_10;
      case 3:
      case 23:
        [a5 setLayoutInvalidate:1];
        goto LABEL_11;
      case 8:
      case 9:
      case 10:
      case 34:
      case 35:
        [a5 setLayoutInvalidate:1];
        [a5 setLayoutInvalidateSize:1];
        [a5 setLayoutSpacesInvalidateCoordinates:1];

        [a5 setLayoutInvalidateProvider:1];
        return;
      case 29:
      case 40:
        [a5 setLayoutInvalidateProvider:1];
LABEL_10:
        [a5 setLayoutInvalidate:1];
        [a5 setLayoutInvalidateSize:1];
        goto LABEL_11;
      case 31:
        [a5 setLayoutInvalidate:1];
        [a5 setLayoutInvalidateSize:1];
        [a5 setLayoutInvalidateTableNameVisibility:1];
LABEL_11:
        [a5 setLayoutSpacesInvalidateCoordinates:1];

        [a5 setLayoutSpacesInvalidateTableOffsets:1];
        break;
      default:
        return;
    }
  }
}

- (void)p_processChangeActions:(id)a3
{
  if ([a3 layoutInvalidate])
  {
    [(TSTLayout *)self invalidate];
  }

  if ([a3 layoutInvalidateProvider])
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    self->mComputedEditingCellContentFrame.origin = *MEMORY[0x277CBF3A0];
    self->mComputedEditingCellContentFrame.size = v5;
    v6 = [(TSTLayout *)self containedTextEditingLayout];
    if (v6)
    {
      [(TSDLayout *)v6 invalidateFrame];
    }

    [(TSDLayout *)self invalidateChildren];
  }

  if ([a3 layoutInvalidateSize])
  {
    if ([(TSDDrawableInfo *)[(TSTLayout *)self tableInfo] isInlineWithText])
    {
      [(TSTTablePartitioner *)[(TSTTableInfo *)[(TSTLayout *)self tableInfo] partitioner] setScaleToFit:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    }

    [(TSTLayout *)self invalidateSize];
  }

  if ([a3 layoutSpacesInvalidateCoordinates])
  {
    [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateCoordinates];
  }

  if ([a3 layoutSpacesInvalidateTableOffsets])
  {
    [(TSTLayoutSpaceBundle *)[(TSTLayout *)self spaceBundle] invalidateTableOffsets];
  }

  if ([a3 layoutInvalidateTableNameVisibility])
  {

    [(TSTLayout *)self invalidateTableNameVisibility];
  }
}

- (void)processChanges:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSTLayout;
  [(TSDLayout *)&v14 processChanges:?];
  if ([(TSTTablePartitioner *)[(TSTTableInfo *)[(TSTLayout *)self tableInfo] partitioner] scaledLayout]!= self)
  {
    [[(TSTTablePartitioner *)[(TSTTableInfo *)[(TSTLayout *)self tableInfo] partitioner] scaledLayout] processChanges:a3];
  }

  if (!self->mProcessChangesFiltering)
  {
    v5 = objc_alloc_init(TSTLayoutProcessChangesActions);
    if (a3)
    {
      if ([a3 count])
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v6 = [a3 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v11;
          do
          {
            v9 = 0;
            do
            {
              if (*v11 != v8)
              {
                objc_enumerationMutation(a3);
              }

              [(TSTLayout *)self p_processChange:*(*(&v10 + 1) + 8 * v9++) forChangeSource:[(TSDLayout *)self info] actions:v5];
            }

            while (v7 != v9);
            v7 = [a3 countByEnumeratingWithState:&v10 objects:v15 count:16];
          }

          while (v7);
        }
      }
    }

    [(TSTLayout *)self p_processChangeActions:v5];
  }
}

- (int)reapCoordinatesChangedMaskForChrome
{
  mCoordinatesChangedMaskForChrome = self->mCoordinatesChangedMaskForChrome;
  self->mCoordinatesChangedMaskForChrome = 0;
  return mCoordinatesChangedMaskForChrome;
}

- (void)storage:(id)a3 didChangeRange:(_NSRange)a4 delta:(int64_t)a5 broadcastKind:(int)a6
{
  if ([a3 wpKind] == 5)
  {
    [+[TSKChangeCollector threadCollector](TSKChangeCollector "threadCollector")];
    mEditingSpillingTextRange = self->mEditingSpillingTextRange;
    if (self->mEditingSpillingTextRange.origin.row == 0xFFFF || ((*&mEditingSpillingTextRange & 0xFF0000) != 0xFF0000 ? (v10 = mEditingSpillingTextRange.size.numberOfRows == 0) : (v10 = 1), !v10 ? (v11 = (*&mEditingSpillingTextRange & 0xFFFF00000000) == 0) : (v11 = 1), v11))
    {
      if (a6)
      {
        return;
      }
    }

    else
    {
      [+[TSKChangeCollector threadCollector](TSKChangeCollector "threadCollector")];
      if (a6)
      {
        return;
      }
    }

    if ([objc_msgSend(a3 paragraphStyleAtCharIndex:0 effectiveRange:{0), "intValueForProperty:", 86}] != self->mContainedTextEditorParagraphAlignment)
    {
      mContainedTextEditingLayout = self->mContainedTextEditingLayout;

      [(TSTLayout *)self invalidateForAutosizingTextLayout:mContainedTextEditingLayout];
    }
  }
}

- (UIEdgeInsets)paddingForEditingCell
{
  top = self->mCachedPaddingForEditingCell.top;
  left = self->mCachedPaddingForEditingCell.left;
  bottom = self->mCachedPaddingForEditingCell.bottom;
  right = self->mCachedPaddingForEditingCell.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end