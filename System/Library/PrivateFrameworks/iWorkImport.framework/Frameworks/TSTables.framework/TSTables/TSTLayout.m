@interface TSTLayout
+ (id)findLayoutIfAvailableInSet:(id)a3 intersectingRow:(unsigned int)a4;
- (BOOL)canvasShouldScrollForSelectionPath:(id)a3;
- (BOOL)forceParentAutosizeFlagsForTextLayout:(id)a3;
- (BOOL)forceParentAutosizedFrameForTextLayout:(id)a3;
- (BOOL)inspectorGeometryIsAffectedByChangeRecord:(id)a3;
- (BOOL)isBeingManipulated;
- (BOOL)isDraggable;
- (BOOL)orderedBefore:(id)a3;
- (BOOL)p_getLayoutDirectionLeftToRight;
- (BOOL)p_layoutWhollyContainsGridRange:(id)a3;
- (BOOL)shouldShowCaption;
- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)a3;
- (CGPoint)calculatePointFromSearchReference:(id)a3;
- (CGPoint)calculatePointFromSearchReferenceWithoutValidation:(id)a3;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)minimumPositionOffset;
- (CGRect)_visibleFrameForOverscrolledChildFrame:(CGRect)a3;
- (CGRect)alignedStrokeFrameForRange:(TSUCellRect)a3;
- (CGRect)alignmentFrame;
- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)cellRangeVisibleRect;
- (CGRect)computedEditingCellContentFrame;
- (CGRect)frameForCaptionPositioning;
- (CGRect)maskRectForTextLayout:(id)a3;
- (CGRect)nonAutosizedFrameForTextLayout:(id)a3;
- (CGRect)p_autosizedFrameForRichTextLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)p_autosizedFrameForTextEditingLayout:(id)a3 textSize:(CGSize)a4;
- (CGRect)p_computeSpillingTextFrameForEditingLayout:(id)a3 textSize:(CGSize)a4 editingSpillRange:(TSUCellRect *)a5;
- (CGRect)p_maskRectForRichTextLayout:(id)a3;
- (CGRect)p_maskRectForTextEditingLayout:(id)a3;
- (CGRect)p_nonAutosizedFrameForRichTextLayout:(id)a3;
- (CGRect)p_textFrameForWrappingCell:(TSUCellCoord)a3 defaultRowHeight:(BOOL *)a4;
- (CGSize)initialTextSize;
- (CGSize)maximumFrameSizeForChild:(id)a3;
- (CGSize)p_rangeUpAndLeftOfIntersectionRangeOfGridRange:(id)a3;
- (CGSize)scaleToFit;
- (CGSize)scaleToFitParent;
- (TSTLayout)initWithInfo:(id)a3;
- (TSTLayout)initWithInfo:(id)a3 layoutHint:(id)a4;
- (TSUCellCoord)p_cellIDForWPLayout:(id)a3;
- (TSUCellRect)_floatingCellRangeAtRect:(CGRect)a3 inLayoutSpace:(id)a4 withTransform:(CGAffineTransform *)a5;
- (TSUCellRect)editingSpillingTextRange;
- (TSUCellRect)extendedPartitionRangeSingleSpaceIntersectionWithCellRange:(TSUCellRect)a3;
- (TSUCellRect)floatingHeaderColumnRangeAtRect:(CGRect)a3;
- (TSUCellRect)floatingHeaderRowRangeAtRect:(CGRect)a3;
- (TSUCellRect)p_maximumSpillRangeForCellID:(TSUCellCoord)a3;
- (TSUCellRect)p_spillRangeForMaskingRichTextLayout:(id)a3;
- (TSUCellRect)p_spillRangeToRightForCellID:(TSUCellCoord)a3;
- (TSUCellRect)prevEditingSpillingTextRange;
- (TSWPStorage)tableNameEditingStorage;
- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3;
- (UIEdgeInsets)captionEdgeInsets;
- (UIEdgeInsets)paddingForEditingCell;
- (double)alignedStrokeFrame;
- (double)maxAutoGrowLineWidthForTextLayout:(id)a3;
- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7;
- (double)tabsRowWidthAndOptionalLeftGap:(double *)a3;
- (double)viewScaleForZoomingToSelectionPath:(id)a3 targetPointSize:(double)a4;
- (id)alignedStrokeFramePathForGridRange:(id)a3 frameType:(int)a4 viewScale:(double)a5 inset:(double)a6 reoriginToZero:(BOOL)a7 clipToVisibleRect:(BOOL)a8 cornerRadius:(double)a9 outMaskPath:(id *)a10;
- (id)alignedStrokeFramePathForRange:(TSUCellRect)a3 frameType:(int)a4 viewScale:(double)a5 inset:(double)a6 reoriginToZero:(BOOL)a7 clipToVisibleRect:(BOOL)a8 cornerRadius:(double)a9 outMaskPath:(id *)a10;
- (id)attachmentCellLayoutForCellID:(TSUCellCoord)a3 optionalCell:(id)a4;
- (id)cellIteratorWithRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5;
- (id)childInfosForChildLayouts;
- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3;
- (id)computeLayoutGeometry;
- (id)dependentLayouts;
- (id)initialInfoGeometry;
- (id)inspectorGeometry;
- (id)layoutGeometryFromInfo;
- (id)p_getStyleProvidingAncestorLayout;
- (id)styleProvider;
- (id)styleProviderForTextLayout:(id)a3;
- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)a3;
- (int)naturalAlignmentForCellID:(TSUCellCoord)a3;
- (int)reapCoordinatesChangedMaskForChrome;
- (int)verticalAlignmentForTextLayout:(id)a3;
- (unint64_t)autosizeFlagsForTextLayout:(id)a3;
- (void)bezierPathsForCellRegion:(id)a3 selectionMask:(unsigned int)a4 transform:(CGAffineTransform *)a5 viewScale:(double)a6 inset:(double)a7 clipToVisibleRect:(BOOL)a8 cornerRadius:(double)a9 block:(id)a10;
- (void)dealloc;
- (void)didEndTableNameEditing;
- (void)invalidate;
- (void)invalidateForAutosizingTextLayout:(id)a3;
- (void)invalidatePosition;
- (void)invalidateSize;
- (void)iterateCellsAndTerminateWithIterator:(id)a3 usingBlock:(id)a4;
- (void)iterateCellsInRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 usingBlock:(id)a6;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)p_prepareAttachmentCellsIfNeeded;
- (void)p_updateCachedStyleInformationFromCellID:(TSUCellCoord)a3;
- (void)removeAttachmentCellLayouts;
- (void)removeContainedTextEditingLayout;
- (void)setCellRangeVisibleRect:(CGRect)a3;
- (void)setLayoutHint:(id)a3;
- (void)setNeedsDisplay;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)updateChildrenFromInfo;
- (void)validate;
- (void)validatePageNumberCount;
- (void)validateTableNameVisibility;
- (void)willBeginTableNameEditingWithStorage:(id)a3;
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

- (void)setLayoutHint:(id)a3
{
  v5 = a3;
  mLayoutHint = self->mLayoutHint;
  v12 = v5;
  if (mLayoutHint != v5)
  {
    objc_msgSend_setLayout_(mLayoutHint, v5, 0, v6, v7);
    objc_storeStrong(&self->mLayoutHint, a3);
    objc_msgSend_setLayout_(self->mLayoutHint, v9, self, v10, v11);
  }
}

- (CGSize)scaleToFitParent
{
  width = self->mCached.scaleToFitParent.width;
  height = self->mCached.scaleToFitParent.height;
  result.height = height;
  result.width = width;
  return result;
}

- (TSTLayout)initWithInfo:(id)a3 layoutHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = TSTLayout;
  v12 = [(TSTLayout *)&v37 initWithInfo:v6];
  if (v12)
  {
    v13 = objc_msgSend_layoutEngine(v6, v8, v9, v10, v11);
    v14 = *(v12 + 39);
    *(v12 + 39) = v13;

    objc_storeStrong(v12 + 40, a4);
    objc_msgSend_setLayout_(*(v12 + 40), v15, v12, v16, v17);
    v18 = [TSTLayoutSpaceBundle alloc];
    v22 = objc_msgSend_initWithLayout_(v18, v19, v12, v20, v21);
    v23 = *(v12 + 54);
    *(v12 + 54) = v22;

    if (v12[425])
    {
      v12[425] = 0;
    }

    sub_2211B3D94(v12);
    v12[424] = 0;
    *(v12 + 520) = xmmword_2217E07A0;
    *(v12 + 536) = unk_2217E07B0;
    *(v12 + 146) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v12 + 28) = _Q0;
    *(v12 + 29) = _Q0;
    *(v12 + 40) = xmmword_2217E07C0;
    *(v12 + 41) = xmmword_2217E07C0;
    v12[430] = objc_msgSend_p_getLayoutDirectionLeftToRight(v12, v29, v30, v31, v32);
    v12[700] = 1;
    v12[677] = 0;
    v33 = MEMORY[0x277CBF390];
    v34 = *(MEMORY[0x277CBF390] + 16);
    *(v12 + 328) = *MEMORY[0x277CBF390];
    *(v12 + 344) = v34;
    v35 = v33[1];
    *(v12 + 360) = *v33;
    *(v12 + 376) = v35;
    *(v12 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    *(v12 + 89) = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

- (TSTLayout)initWithInfo:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_overrideLayoutHint(v4, v5, v6, v7, v8);
  v14 = v9;
  if (v9)
  {
    v17 = v9;
  }

  else
  {
    v18 = objc_msgSend_layoutEngine(v4, v10, v11, v12, v13);
    v17 = objc_msgSend_newLayoutHint(v18, v19, v20, v21, v22);
  }

  v23 = objc_msgSend_initWithInfo_layoutHint_(self, v15, v4, v17, v16);

  return v23;
}

- (void)dealloc
{
  if (self->mContainedTextEditingLayout)
  {
    objc_msgSend_removeContainedTextEditingLayout(self, a2, v2, v3, v4);
    mContainedTextEditingLayout = self->mContainedTextEditingLayout;
    self->mContainedTextEditingLayout = 0;
  }

  objc_msgSend_setLayout_(self->mLayoutHint, a2, 0, v3, v4);
  mLayoutHint = self->mLayoutHint;
  self->mLayoutHint = 0;

  objc_msgSend_removeAttachmentCellLayouts(self, v8, v9, v10, v11);
  v12.receiver = self;
  v12.super_class = TSTLayout;
  [(TSWPTextHostLayout *)&v12 dealloc];
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (objc_msgSend_layoutState(self, a2, v3, v4, v5) != 4)
  {
    v9.receiver = self;
    v9.super_class = TSTLayout;
    [(TSTLayout *)&v9 offsetGeometryBy:x, y];
  }
}

- (BOOL)isDraggable
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4);
  if (objc_msgSend_isInlineWithText(v6, v7, v8, v9, v10))
  {
    v15 = sub_2211B4730(self, v11, v12, v13, v14);
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4);
  v11 = objc_msgSend_owningAttachmentNoRecurse(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_geometry(self, v12, v13, v14, v15);
    objc_msgSend_frame(v16, v17, v18, v19, v20);
    TSUSubtractPoints();
    v22 = v21;
    v24 = v23;

    v25 = v22;
    v26 = v24;
  }

  else
  {
    v27.receiver = self;
    v27.super_class = TSTLayout;
    [(TSTLayout *)&v27 capturedInfoPositionForAttachment];
  }

  result.y = v26;
  result.x = v25;
  return result;
}

- (id)layoutGeometryFromInfo
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4);
  v11 = objc_msgSend_geometry(v6, v7, v8, v9, v10);
  objc_msgSend_position(v11, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;

  v24 = objc_msgSend_spaceBundle(self, v20, v21, v22, v23);
  v29 = objc_msgSend_space(v24, v25, v26, v27, v28);
  objc_msgSend_tableOffset(v29, v30, v31, v32, v33);
  v35 = v34;
  v37 = v36;

  v42 = objc_msgSend_info(self, v38, v39, v40, v41);
  v47 = objc_msgSend_owningAttachmentNoRecurse(v42, v43, v44, v45, v46);

  if (v47)
  {
    objc_msgSend_capturedInfoPositionForAttachment(self, v48, v49, v50, v51);
    v17 = v52;
    v19 = v53;
  }

  else
  {
    v54 = objc_msgSend_layoutEngine(self, v48, v49, v50, v51);
    isDynamicallyChangingInfoGeometry = objc_msgSend_isDynamicallyChangingInfoGeometry(v54, v55, v56, v57, v58);

    if (isDynamicallyChangingInfoGeometry)
    {
      v64 = objc_msgSend_layoutEngine(self, v60, v61, v62, v63);
      v69 = objc_msgSend_dynamicInfoGeometry(v64, v65, v66, v67, v68);
      objc_msgSend_position(v69, v70, v71, v72, v73);
      v17 = v74;
      v19 = v75;
    }
  }

  v80 = sub_2211B410C(self, 0);
  v82 = v81;
  v84 = v83;
  v86 = v85;
  if (self->mLayoutDirectionIsLeftToRight || (objc_msgSend_layoutEngine(self, v76, v77, v78, v79), v87 = objc_claimAutoreleasedReturnValue(), v92 = objc_msgSend_tableEnvironment(v87, v88, v89, v90, v91), v87, v92 == 1))
  {
    v93 = objc_msgSend_info(self, v76, v77, v78, v79);
    isInlineWithText = objc_msgSend_isInlineWithText(v93, v94, v95, v96, v97);
    v99 = v17 + v80;
    v100 = v19 + v82;

    if (isInlineWithText)
    {
      goto LABEL_10;
    }

    TSUSubtractPoints();
    v99 = v101;
    v103 = v102;
    goto LABEL_9;
  }

  v111 = objc_msgSend_layoutEngine(self, v76, v77, v78, v79);
  if (objc_msgSend_isDynamicallyChangingInfoGeometry(v111, v112, v113, v114, v115))
  {
    v120 = objc_msgSend_info(self, v116, v117, v118, v119);
    v125 = objc_msgSend_isInlineWithText(v120, v121, v122, v123, v124);

    if (v125)
    {
      v130 = objc_msgSend_geometry(self, v126, v127, v128, v129);
      objc_msgSend_frame(v130, v131, v132, v133, v134);
      v99 = CGRectGetMaxX(v142) - v84;
      v100 = v19 + v82;

      goto LABEL_10;
    }
  }

  else
  {
  }

  v135 = objc_msgSend_info(self, v126, v127, v128, v129);
  v140 = objc_msgSend_isInlineWithText(v135, v136, v137, v138, v139);

  if (!v140)
  {
    v99 = v35 + v17 - (v80 + v84);
    v103 = v19 + v82 - v37;
LABEL_9:
    v100 = v103 + sub_2211B44A8(self);
    goto LABEL_10;
  }

  v99 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D80460]);
  v100 = v19 + v82;
LABEL_10:
  self->mRenderingFrameForLayoutGeometryFromInfo.origin.x = v80;
  self->mRenderingFrameForLayoutGeometryFromInfo.origin.y = v82;
  self->mRenderingFrameForLayoutGeometryFromInfo.size.width = v84;
  self->mRenderingFrameForLayoutGeometryFromInfo.size.height = v86;
  v104 = objc_alloc(MEMORY[0x277D80300]);
  v109 = objc_msgSend_initWithFrame_(v104, v105, v106, v107, v108, v99, v100, v84, v86);

  return v109;
}

- (id)computeLayoutGeometry
{
  p_mCached = &self->mCached;
  __asm { FMOV            V0.2D, #1.0 }

  self->mCached.scaleToFitParent = _Q0;
  v12 = objc_msgSend_layoutGeometryFromInfo(self, a2, v2, v3, v4);
  v17 = objc_msgSend_info(self, v13, v14, v15, v16);
  isInlineWithText = objc_msgSend_isInlineWithText(v17, v18, v19, v20, v21);

  if ((isInlineWithText & 1) == 0)
  {
    objc_opt_class();
    v27 = objc_msgSend_parent(self, v23, v24, v25, v26);
    v28 = TSUDynamicCast();

    if (v28)
    {
      objc_msgSend_maximumFrameSizeForChild_(v28, v29, self, v30, v31);
      v33 = v32;
      v35 = v34;
      objc_msgSend_alignmentFrame(self, v36, v37, v38, v39);
      if (v44 > v33)
      {
        p_mCached->scaleToFitParent.width = v33 / v44;
      }

      if (v45 <= v35)
      {
        height = p_mCached->scaleToFitParent.height;
      }

      else
      {
        height = v35 / v45;
        p_mCached->scaleToFitParent.height = v35 / v45;
      }

      if (p_mCached->scaleToFitParent.width != 1.0 || height != 1.0)
      {
        objc_msgSend_invalidateLayoutSpaceTableOffsets(self, v40, v41, v42, v43);
        objc_msgSend_invalidateLayoutSpaceCoordinates(self, v47, v48, v49, v50);
        v55 = objc_msgSend_layoutGeometryFromInfo(self, v51, v52, v53, v54);

        v12 = v55;
      }
    }
  }

  return v12;
}

- (id)computeInfoGeometryFromPureLayoutGeometry:(id)a3
{
  v4 = a3;
  v9 = v4;
  v10 = MEMORY[0x277D802E8];
  if (v4)
  {
    objc_msgSend_fullTransform(v4, v5, v6, v7, v8);
  }

  else
  {
    memset(v73, 0, sizeof(v73));
  }

  v15 = objc_msgSend_geometryFromFullTransform_(v10, v5, v73, v7, v8);
  if (!self->mLayoutDirectionIsLeftToRight)
  {
    v16 = objc_msgSend_layoutEngine(self, v11, v12, v13, v14);
    if (objc_msgSend_tableEnvironment(v16, v17, v18, v19, v20) != 1)
    {
      v25 = objc_msgSend_info(self, v21, v22, v23, v24);
      isInlineWithText = objc_msgSend_isInlineWithText(v25, v26, v27, v28, v29);

      if (isInlineWithText)
      {
        goto LABEL_9;
      }

      objc_msgSend_position(v15, v31, v32, v33, v34);
      v36 = v35;
      v38 = v37;
      objc_msgSend_size(v9, v39, v40, v41, v42);
      v44 = v43;
      v49 = objc_msgSend_spaceBundle(self, v45, v46, v47, v48);
      v54 = objc_msgSend_space(v49, v50, v51, v52, v53);
      objc_msgSend_tableOffset(v54, v55, v56, v57, v58);
      v60 = v59;

      v61 = objc_alloc(MEMORY[0x277D802E8]);
      objc_msgSend_size(v15, v62, v63, v64, v65);
      v16 = v15;
      v15 = objc_msgSend_initWithPosition_size_(v61, v66, v67, v68, v69, v36 + v44 - v60, v38, v70, v71);
    }
  }

LABEL_9:

  return v15;
}

- (id)initialInfoGeometry
{
  v3 = objc_alloc(MEMORY[0x277D802E8]);
  v8 = objc_msgSend_initWithPosition_size_(v3, v4, v5, v6, v7, *(&self->super.super.super.super.super.isa + *MEMORY[0x277D80460]), *(&self->super.super.super.super._parent + *MEMORY[0x277D80460]), self->mCapturedStrokeFrameSizeForInline.width, self->mCapturedStrokeFrameSizeForInline.height);

  return v8;
}

- (CGRect)frameForCaptionPositioning
{
  v6 = sub_2211B5074(self, a2, v2, v3, v4);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v17 = objc_msgSend_geometry(self, v13, v14, v15, v16);
  v22 = v17;
  if (v17)
  {
    objc_msgSend_transform(v17, v18, v19, v20, v21);
  }

  else
  {
    memset(&v59, 0, sizeof(v59));
  }

  v60.origin.x = v6;
  v60.origin.y = v8;
  v60.size.width = v10;
  v60.size.height = v12;
  v61 = CGRectApplyAffineTransform(v60, &v59);
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;

  v31 = objc_msgSend_layoutEngine(self, v27, v28, v29, v30);
  if (objc_msgSend_isDynamicallyRowTabResizing(v31, v32, v33, v34, v35))
  {
    v40 = objc_msgSend_layoutEngine(self, v36, v37, v38, v39);
    objc_msgSend_dynamicFooterHeight(v40, v41, v42, v43, v44);
    height = height + v45;
  }

  v46 = objc_msgSend_styleProvidingSource(v31, v36, v37, v38, v39, *&v59.a, *&v59.c, *&v59.tx);

  if (v46)
  {
    objc_msgSend__visibleFrameForOverscrolledChildFrame_(self, v47, v48, v49, v50, x, y, width, height);
    x = v51;
    y = v52;
    width = v53;
    height = v54;
  }

  v55 = x;
  v56 = y;
  v57 = width;
  v58 = height;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (CGRect)alignmentFrame
{
  v6 = objc_msgSend_info(self, a2, v2, v3, v4);
  isInlineWithText = objc_msgSend_isInlineWithText(v6, v7, v8, v9, v10);

  v16 = objc_msgSend_spaceBundle(self, v12, v13, v14, v15);
  v21 = v16;
  if (!isInlineWithText)
  {
    v47 = objc_msgSend_space(v16, v17, v18, v19, v20);
    objc_msgSend_frame(v47, v56, v57, v58, v59);
    goto LABEL_7;
  }

  v22 = objc_msgSend_space(v16, v17, v18, v19, v20);
  objc_msgSend_strokeFrame(v22, v23, v24, v25, v26);
  x = v27;
  y = v29;
  width = v31;
  height = v33;

  v21 = TSTLayoutGetRepeatHeaderRowsSpace(self, v35, v36, v37, v38);
  v47 = TSTLayoutGetRepeatHeaderCornerSpace(self, v39, v40, v41, v42);
  if (v21)
  {
    objc_msgSend_strokeFrame(v21, v43, v44, v45, v46);
    v87.origin.x = v48;
    v87.origin.y = v49;
    v87.size.width = v50;
    v87.size.height = v51;
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = width;
    v80.size.height = height;
    v81 = CGRectUnion(v80, v87);
    x = v81.origin.x;
    y = v81.origin.y;
    width = v81.size.width;
    height = v81.size.height;
  }

  if (v47)
  {
    objc_msgSend_strokeFrame(v47, v43, v44, v45, v46);
    v88.origin.x = v52;
    v88.origin.y = v53;
    v88.size.width = v54;
    v88.size.height = v55;
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    v83 = CGRectUnion(v82, v88);
LABEL_7:
    x = v83.origin.x;
    y = v83.origin.y;
    width = v83.size.width;
    height = v83.size.height;
  }

  v60 = sub_2211B44A8(self);
  v65 = objc_msgSend_geometry(self, v61, v62, v63, v64);
  v70 = v65;
  if (v65)
  {
    objc_msgSend_transform(v65, v66, v67, v68, v69);
  }

  else
  {
    memset(&v79, 0, sizeof(v79));
  }

  v84.size.height = height + v60;
  v84.origin.y = y - v60;
  v84.origin.x = x;
  v84.size.width = width;
  v85 = CGRectApplyAffineTransform(v84, &v79);
  v71 = v85.origin.x;
  v72 = v85.origin.y;
  v73 = v85.size.width;
  v74 = v85.size.height;

  v75 = v71;
  v76 = v72;
  v77 = v73;
  v78 = v74;
  result.size.height = v78;
  result.size.width = v77;
  result.origin.y = v76;
  result.origin.x = v75;
  return result;
}

- (id)inspectorGeometry
{
  CanvasFrame = TSTLayoutGetCanvasFrame(self);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x277D80300]);
  v15 = objc_msgSend_initWithFrame_(v10, v11, v12, v13, v14, CanvasFrame, v5, v7, v9);
  v20 = objc_msgSend_layoutController(self, v16, v17, v18, v19);
  v25 = objc_msgSend_canvas(v20, v21, v22, v23, v24);
  isAnchoredAtRight = objc_msgSend_isAnchoredAtRight(v25, v26, v27, v28, v29);

  if (isAnchoredAtRight)
  {
    objc_msgSend_frame(v15, v31, v32, v33, v34);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    MinX = CGRectGetMinX(v48);
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    MaxX = CGRectGetMaxX(v49);
    v45 = objc_msgSend_geometryByTranslatingBy_(v15, v41, v42, v43, v44, -(MinX + MaxX), 0.0);

    v15 = v45;
  }

  return v15;
}

- (BOOL)inspectorGeometryIsAffectedByChangeRecord:(id)a3
{
  v5 = objc_msgSend_details(a3, a2, a3, v3, v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)validate
{
  self->mLayoutDirectionIsLeftToRight = objc_msgSend_p_getLayoutDirectionLeftToRight(self, a2, v2, v3, v4);
  v484 = objc_msgSend_layoutEngine(self, v6, v7, v8, v9);
  objc_msgSend_validate(v484, v10, v11, v12, v13);
  shouldShowCaption = objc_msgSend_shouldShowCaption(self, v14, v15, v16, v17);
  v23 = objc_msgSend_layoutHint(self, v19, v20, v21, v22);
  v27 = objc_msgSend_validateLayoutHint_(v484, v24, v23, v25, v26);

  if (shouldShowCaption != objc_msgSend_shouldShowCaption(self, v28, v29, v30, v31))
  {
    objc_msgSend_updateChildrenFromInfo(self, v32, v33, v34, v35);
  }

  if (!v27)
  {
    v485.receiver = self;
    v485.super_class = TSTLayout;
    [(TSTLayout *)&v485 validate];
    goto LABEL_184;
  }

  sub_2211B3D94(self);
  objc_msgSend_validateTableNameVisibility(self, v36, v37, v38, v39);
  v40 = self;
  v483 = objc_msgSend_layoutEngine(v40, v41, v42, v43, v44);
  if (!sub_2211B7A50(v40, v45, v46, v47, v48))
  {
    v61 = objc_msgSend_spaceBundle(v40, v49, v50, v51, v52);
    objc_msgSend_setRepeatHeaderColumnsSpace_(v61, v62, 0, v63, v64);

    v69 = objc_msgSend_spaceBundle(v40, v65, v66, v67, v68);
    objc_msgSend_setRepeatHeaderRowsSpace_(v69, v70, 0, v71, v72);

    v77 = objc_msgSend_spaceBundle(v40, v73, v74, v75, v76);
    objc_msgSend_setRepeatHeaderCornerSpace_(v77, v78, 0, v79, v80);

    goto LABEL_151;
  }

  if (objc_msgSend_numberOfHeaderRows(v483, v49, v50, v51, v52))
  {
    v481 = sub_2213A25F8(v483);
  }

  else
  {
    v481 = 0;
  }

  if (objc_msgSend_numberOfHeaderColumns(v483, v53, v54, v55, v56))
  {
    v482 = sub_2213A2CD0(v483);
  }

  else
  {
    v482 = 0;
  }

  v85 = sub_2211B4394(v40, v81, v82, v83, v84);
  objc_msgSend_setHeaderRowsRepeat_(v85, v86, v481, v87, v88);
  objc_msgSend_setHeaderColumnsRepeat_(v85, v89, v482, v90, v91);
  v479 = sub_2211B6DA4(v40);
  v93 = v92;
  v94 = sub_2211B6E48(v40);
  v96 = v95;
  v478 = sub_2211B7004(v40);
  v480 = v97;
  v476 = sub_2211B71BC(v40);
  v477 = v98;
  if (v482)
  {
    v102 = HIDWORD(v96);
    if (HIDWORD(v93) && v93 && v102 && v96)
    {
      v103 = v479 & 0xFFFF00000000;
      if (v479 != 0x7FFFFFFFLL || v103 == 0x7FFF00000000)
      {
        v113 = v103 != 0x7FFF00000000 && v479 == 0x7FFFFFFF;
        if (!v113 && v479 > v94)
        {
          goto LABEL_56;
        }

        v114 = v479 + HIDWORD(v93) - 1;
        if (v479 == 0x7FFFFFFF)
        {
          v114 = 0x7FFFFFFF;
        }

        if (v114 < v94)
        {
          goto LABEL_56;
        }

        if (v479 != 0x7FFFFFFFLL && v103 == 0x7FFF00000000)
        {
          v107 = v93 + 32766;
          v104 = HIDWORD(v94);
          v105 = 0x7FFF;
          goto LABEL_41;
        }
      }

      v104 = HIDWORD(v94);
      v105 = WORD2(v479);
      if (WORD2(v479) <= WORD2(v94))
      {
        v106 = WORD2(v479) == 0x7FFF || v93 == 0;
        v107 = v93 - 1 + WORD2(v479);
        v108 = v106 ? 0x7FFF : v93 - 1 + WORD2(v479);
        if (v108 >= WORD2(v94))
        {
LABEL_41:
          if (v105 == 0x7FFF)
          {
            v115 = 0x7FFF;
          }

          else
          {
            v115 = v107;
          }

          v116 = v104;
          v117 = v96 + v104 - 1;
          if (v116 == 0x7FFF || v96 == 0)
          {
            v117 = 0x7FFF;
          }

          if (v115 >= v117)
          {
            v119 = v479 + HIDWORD(v93) - 1;
            if (v479 == 0x7FFFFFFF)
            {
              v119 = 0x7FFFFFFF;
            }

            v120 = v94 == 0x7FFFFFFF ? 0x7FFFFFFF : v94 + HIDWORD(v96) - 1;
            if (v119 >= v120)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

LABEL_56:
    v121 = objc_msgSend_spaceBundle(v40, v98, v99, v100, v101, v476);
    v126 = objc_msgSend_repeatHeaderColumnsSpace(v121, v122, v123, v124, v125);

    if (!v126)
    {
      v131 = [TSTLayoutSpace alloc];
      v136 = objc_msgSend_spaceBundle(v40, v132, v133, v134, v135);
      v139 = objc_msgSend_initWithLayoutSpaceBundle_type_(v131, v137, v136, 5, v138);

      v144 = objc_msgSend_spaceBundle(v40, v140, v141, v142, v143);
      objc_msgSend_setRepeatHeaderColumnsSpace_(v144, v145, v139, v146, v147);
    }

    if (WORD2(v94) == 0x7FFF)
    {
      v148 = 0xFFFFFFFFLL;
    }

    else
    {
      v148 = WORD2(v94);
    }

    if (v94 == 0x7FFFFFFF)
    {
      v149 = 0xFFFFFFFF00000000;
    }

    else
    {
      v149 = v94 << 32;
    }

    if (v102)
    {
      v150 = ((v149 + v96) & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v150 = 0xFFFFFFFF00000000;
    }

    if (v96)
    {
      v151 = (v96 + v148 - 1);
    }

    else
    {
      v151 = 0xFFFFFFFFLL;
    }

    v109 = objc_msgSend_spaceBundle(v40, v127, v128, v129, v130);
    v156 = objc_msgSend_repeatHeaderColumnsSpace(v109, v152, v153, v154, v155);
    objc_msgSend_setGridRange_(v156, v157, v149 | v148, v151 | v150, v158);

    goto LABEL_71;
  }

  v109 = objc_msgSend_spaceBundle(v40, v98, v99, v100, v101);
  objc_msgSend_setRepeatHeaderColumnsSpace_(v109, v110, 0, v111, v112);
LABEL_71:

LABEL_72:
  if (!v481)
  {
    v166 = objc_msgSend_spaceBundle(v40, v98, v99, v100, v101);
    objc_msgSend_setRepeatHeaderRowsSpace_(v166, v167, 0, v168, v169);

    goto LABEL_146;
  }

  v159 = HIDWORD(v480);
  if (!HIDWORD(v93) || !v93 || !v159 || !v480)
  {
    goto LABEL_115;
  }

  v160 = v479 & 0xFFFF00000000;
  if (v479 == 0x7FFFFFFFLL && v160 != 0x7FFF00000000)
  {
    goto LABEL_79;
  }

  v170 = v160 != 0x7FFF00000000 && v479 == 0x7FFFFFFF;
  if (!v170 && v479 > v478)
  {
    goto LABEL_115;
  }

  v171 = v479 + HIDWORD(v93) - 1;
  if (v479 == 0x7FFFFFFF)
  {
    v171 = 0x7FFFFFFF;
  }

  if (v171 < v478)
  {
    goto LABEL_115;
  }

  if (v479 == 0x7FFFFFFFLL || v160 != 0x7FFF00000000)
  {
LABEL_79:
    v161 = HIDWORD(v478);
    v162 = WORD2(v479);
    if (WORD2(v479) > WORD2(v478) || (WORD2(v479) != 0x7FFF ? (v163 = v93 == 0) : (v163 = 1), (v164 = v93 - 1 + WORD2(v479), !v163) ? (v165 = v93 - 1 + WORD2(v479)) : (v165 = 0x7FFF), v165 < WORD2(v478)))
    {
LABEL_115:
      v178 = objc_msgSend_spaceBundle(v40, v98, v99, v100, v101, v476);
      v183 = objc_msgSend_repeatHeaderRowsSpace(v178, v179, v180, v181, v182);

      if (!v183)
      {
        v188 = [TSTLayoutSpace alloc];
        v193 = objc_msgSend_spaceBundle(v40, v189, v190, v191, v192);
        v196 = objc_msgSend_initWithLayoutSpaceBundle_type_(v188, v194, v193, 6, v195);

        v201 = objc_msgSend_spaceBundle(v40, v197, v198, v199, v200);
        objc_msgSend_setRepeatHeaderRowsSpace_(v201, v202, v196, v203, v204);
      }

      if (WORD2(v478) == 0x7FFF)
      {
        v205 = 0xFFFFFFFFLL;
      }

      else
      {
        v205 = WORD2(v478);
      }

      if (v478 == 0x7FFFFFFF)
      {
        v206 = 0xFFFFFFFF00000000;
      }

      else
      {
        v206 = v478 << 32;
      }

      if (v159)
      {
        v207 = ((v206 + v480) & 0xFFFFFFFF00000000) - 0x100000000;
      }

      else
      {
        v207 = 0xFFFFFFFF00000000;
      }

      if (v480)
      {
        v208 = (v480 + v205 - 1);
      }

      else
      {
        v208 = 0xFFFFFFFFLL;
      }

      v209 = objc_msgSend_spaceBundle(v40, v184, v185, v186, v187);
      v214 = objc_msgSend_repeatHeaderRowsSpace(v209, v210, v211, v212, v213);
      objc_msgSend_setGridRange_(v214, v215, v206 | v205, v208 | v207, v216);

      goto LABEL_130;
    }
  }

  else
  {
    v164 = v93 + 32766;
    v161 = HIDWORD(v478);
    v162 = 0x7FFF;
  }

  if (v162 == 0x7FFF)
  {
    v172 = 0x7FFF;
  }

  else
  {
    v172 = v164;
  }

  v173 = v161;
  v174 = v480 + v161 - 1;
  if (v173 == 0x7FFF || v480 == 0)
  {
    v174 = 0x7FFF;
  }

  if (v172 < v174)
  {
    goto LABEL_115;
  }

  v176 = v479 + HIDWORD(v93) - 1;
  if (v479 == 0x7FFFFFFF)
  {
    v176 = 0x7FFFFFFF;
  }

  v177 = v478 == 0x7FFFFFFF ? 0x7FFFFFFF : v478 + HIDWORD(v480) - 1;
  if (v176 < v177)
  {
    goto LABEL_115;
  }

LABEL_130:
  if (v482)
  {
    v217 = objc_msgSend_spaceBundle(v40, v98, v99, v100, v101);
    v222 = objc_msgSend_repeatHeaderCornerSpace(v217, v218, v219, v220, v221);

    if (!v222)
    {
      v227 = [TSTLayoutSpace alloc];
      v232 = objc_msgSend_spaceBundle(v40, v228, v229, v230, v231);
      v235 = objc_msgSend_initWithLayoutSpaceBundle_type_(v227, v233, v232, 4, v234);

      v240 = objc_msgSend_spaceBundle(v40, v236, v237, v238, v239);
      objc_msgSend_setRepeatHeaderCornerSpace_(v240, v241, v235, v242, v243);
    }

    if (WORD2(v476) == 0x7FFF)
    {
      v244 = 0xFFFFFFFFLL;
    }

    else
    {
      v244 = WORD2(v476);
    }

    if (v476 == 0x7FFFFFFF)
    {
      v245 = 0xFFFFFFFF00000000;
    }

    else
    {
      v245 = v476 << 32;
    }

    if (v477 >> 32)
    {
      v246 = (&v477[v245] & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v246 = 0xFFFFFFFF00000000;
    }

    if (v477)
    {
      v247 = (v477 + v244 - 1);
    }

    else
    {
      v247 = 0xFFFFFFFFLL;
    }

    v248 = objc_msgSend_spaceBundle(v40, v223, v224, v225, v226, v476);
    v253 = objc_msgSend_repeatHeaderCornerSpace(v248, v249, v250, v251, v252);
    objc_msgSend_setGridRange_(v253, v254, v245 | v244, v247 | v246, v255);

    goto LABEL_147;
  }

LABEL_146:
  v248 = objc_msgSend_spaceBundle(v40, v98, v99, v100, v101, v476);
  objc_msgSend_setRepeatHeaderCornerSpace_(v248, v256, 0, v257, v258);
LABEL_147:

  objc_msgSend_viewScale(v85, v259, v260, v261, v262);
  v268 = v267;
  v504 = 0u;
  v505 = 0u;
  v503 = 0u;
  if (v85)
  {
    objc_msgSend_transformToCanvas(v85, v263, v264, v265, v266);
    v501 = 0u;
    v502 = 0u;
    v500 = 0u;
    objc_msgSend_transformToDevice(v85, v269, v270, v271, v272);
  }

  else
  {
    v501 = 0uLL;
    v502 = 0uLL;
    v500 = 0uLL;
  }

  v273 = objc_msgSend_spaceBundle(v40, v263, v264, v265, v266);
  v487 = MEMORY[0x277D85DD0];
  v488 = 3221225472;
  v489 = sub_2211C6ABC;
  v490 = &unk_278460CB0;
  v498 = v481;
  v499 = v482;
  v491 = v268;
  v492 = v503;
  v493 = v504;
  v494 = v505;
  v495 = v500;
  v496 = v501;
  v497 = v502;
  objc_msgSend_enumerateRepeatLayoutSpacesUsingBlock_(v273, v274, &v487, v275, v276);

LABEL_151:
  v277 = v40;
  sub_2211B6E48(v277);
  sub_2211B7004(v277);
  v278 = sub_2211B71BC(v277);
  v280 = v279;
  v284 = sub_2211B4394(v277, v279, v281, v282, v283);
  v289 = objc_msgSend_spaceBundle(v277, v285, v286, v287, v288);
  v294 = objc_msgSend_frozenHeaderColumnsSpace(v289, v290, v291, v292, v293);
  v295 = v294 != 0;

  if (v294)
  {
    v300 = objc_msgSend_spaceBundle(v277, v296, v297, v298, v299);
    v305 = objc_msgSend_frozenHeaderColumnsSpace(v300, v301, v302, v303, v304);
    objc_msgSend_canvasStrokeFrame(v305, v306, v307, v308, v309);
    sub_2211B6680(v277, v310, v311, v312, v313);

    v318 = objc_msgSend_spaceBundle(v277, v314, v315, v316, v317);
    objc_msgSend_setFrozenHeaderColumnsSpace_(v318, v319, 0, v320, v321);
  }

  v322 = objc_msgSend_spaceBundle(v277, v296, v297, v298, v299);
  v327 = objc_msgSend_frozenHeaderRowsSpace(v322, v323, v324, v325, v326);

  if (v327)
  {
    v332 = objc_msgSend_spaceBundle(v277, v328, v329, v330, v331);
    v337 = objc_msgSend_frozenHeaderRowsSpace(v332, v333, v334, v335, v336);
    objc_msgSend_canvasStrokeFrame(v337, v338, v339, v340, v341);
    sub_2211B6680(v277, v342, v343, v344, v345);

    v350 = objc_msgSend_spaceBundle(v277, v346, v347, v348, v349);
    objc_msgSend_setFrozenHeaderRowsSpace_(v350, v351, 0, v352, v353);

    v295 = 1;
  }

  v354 = objc_msgSend_spaceBundle(v277, v328, v329, v330, v331);
  v363 = objc_msgSend_frozenHeaderColumnsSpace(v354, v355, v356, v357, v358);
  if (v363)
  {
    v364 = objc_msgSend_spaceBundle(v277, v359, v360, v361, v362);
    v369 = objc_msgSend_frozenHeaderRowsSpace(v364, v365, v366, v367, v368);

    if (v369)
    {
      v374 = objc_msgSend_spaceBundle(v277, v370, v371, v372, v373);
      v379 = objc_msgSend_frozenHeaderCornerSpace(v374, v375, v376, v377, v378);

      if (!v379)
      {
        v384 = [TSTLayoutSpace alloc];
        v389 = objc_msgSend_spaceBundle(v277, v385, v386, v387, v388);
        v392 = objc_msgSend_initWithLayoutSpaceBundle_type_(v384, v390, v389, 1, v391);

        v397 = objc_msgSend_spaceBundle(v277, v393, v394, v395, v396);
        objc_msgSend_setFrozenHeaderCornerSpace_(v397, v398, v392, v399, v400);

        v295 = 1;
      }

      if (WORD2(v278) == 0x7FFF)
      {
        v401 = 0xFFFFFFFFLL;
      }

      else
      {
        v401 = WORD2(v278);
      }

      if (v278 == 0x7FFFFFFF)
      {
        v402 = 0xFFFFFFFF00000000;
      }

      else
      {
        v402 = v278 << 32;
      }

      if (v280 >> 32)
      {
        v403 = (&v280[v402] & 0xFFFFFFFF00000000) - 0x100000000;
      }

      else
      {
        v403 = 0xFFFFFFFF00000000;
      }

      if (v280)
      {
        v404 = (v280 + v401 - 1);
      }

      else
      {
        v404 = 0xFFFFFFFFLL;
      }

      v405 = objc_msgSend_spaceBundle(v277, v380, v381, v382, v383);
      v410 = objc_msgSend_frozenHeaderCornerSpace(v405, v406, v407, v408, v409);
      objc_msgSend_setGridRange_(v410, v411, v402 | v401, v404 | v403, v412);

      goto LABEL_175;
    }
  }

  else
  {
  }

  v413 = objc_msgSend_spaceBundle(v277, v370, v371, v372, v373);
  v418 = objc_msgSend_frozenHeaderCornerSpace(v413, v414, v415, v416, v417);

  if (v418)
  {
    v423 = objc_msgSend_spaceBundle(v277, v419, v420, v421, v422);
    v428 = objc_msgSend_frozenHeaderCornerSpace(v423, v424, v425, v426, v427);
    objc_msgSend_canvasStrokeFrame(v428, v429, v430, v431, v432);
    sub_2211B6680(v277, v433, v434, v435, v436);

    v405 = objc_msgSend_spaceBundle(v277, v437, v438, v439, v440);
    objc_msgSend_setFrozenHeaderCornerSpace_(v405, v441, 0, v442, v443);
    v295 = 1;
LABEL_175:
  }

  objc_msgSend_viewScale(v284, v419, v420, v421, v422);
  v449 = v448;
  v504 = 0u;
  v505 = 0u;
  v503 = 0u;
  if (v284)
  {
    objc_msgSend_transformToCanvas(v284, v444, v445, v446, v447);
    v501 = 0u;
    v502 = 0u;
    v500 = 0u;
    objc_msgSend_transformToDevice(v284, v450, v451, v452, v453);
  }

  else
  {
    v501 = 0uLL;
    v502 = 0uLL;
    v500 = 0uLL;
  }

  v454 = objc_msgSend_spaceBundle(v277, v444, v445, v446, v447);
  v487 = MEMORY[0x277D85DD0];
  v488 = 3221225472;
  v489 = sub_2211C6A30;
  v490 = &unk_278460C90;
  v491 = v449;
  v492 = v503;
  v493 = v504;
  v494 = v505;
  v495 = v500;
  v496 = v501;
  v497 = v502;
  objc_msgSend_enumerateFrozenLayoutSpacesUsingBlock_(v454, v455, &v487, v456, v457);

  if (v295)
  {
    objc_msgSend_invalidate(v277, v458, v459, v460, v461);
  }

  v466 = objc_msgSend_spaceBundle(v277, v462, v463, v464, v465);
  v471 = objc_msgSend_validateLayoutSpaces(v466, v467, v468, v469, v470);

  if (v471)
  {
    objc_msgSend_setNeedsDisplay(v277, v472, v473, v474, v475);
  }

  v277->mCoordinatesChangedMaskForChrome |= v471;
  v486.receiver = v277;
  v486.super_class = TSTLayout;
  [(TSTLayout *)&v486 validate];
  sub_2211B65A0(v277);
LABEL_184:
  objc_msgSend_validatePageNumberCount(self, v57, v58, v59, v60);
}

- (void)setNeedsDisplay
{
  v2.receiver = self;
  v2.super_class = TSTLayout;
  [(TSTLayout *)&v2 setNeedsDisplay];
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
    [(TSTLayout *)&v8 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)invalidate
{
  v11.receiver = self;
  v11.super_class = TSTLayout;
  [(TSTLayout *)&v11 invalidate];
  v7 = objc_msgSend_layoutHint(self, v3, v4, v5, v6);
  objc_msgSend_setIsValid_(v7, v8, 0, v9, v10);
}

- (void)invalidateSize
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TSTLayout;
  [(TSTLayout *)&v24 invalidateSize];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_objectEnumerator(self->_attachmentCellStorageToLayoutMap, v3, v4, v5, v6, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v25, 16);
  if (v13)
  {
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_invalidateSize(*(*(&v20 + 1) + 8 * v15++), v9, v10, v11, v12);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v25, 16);
    }

    while (v13);
  }

  objc_msgSend_invalidateExteriorWrap(self, v16, v17, v18, v19);
}

- (void)invalidatePosition
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TSTLayout;
  [(TSTLayout *)&v20 invalidatePosition];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = objc_msgSend_objectEnumerator(self->_attachmentCellStorageToLayoutMap, v3, v4, v5, v6, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v21, 16);
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_invalidatePosition(*(*(&v16 + 1) + 8 * v15++), v9, v10, v11, v12);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v16, v21, 16);
    }

    while (v13);
  }
}

- (TSUCellRect)extendedPartitionRangeSingleSpaceIntersectionWithCellRange:(TSUCellRect)a3
{
  size = a3.size;
  origin = a3.origin;
  v6 = sub_2211B6DA4(self);
  v22.i64[0] = sub_221119E0C(origin, size, v6, v7);
  v22.u64[1] = v8;
  if (TSUCellRect::isValid(&v22) || (v9 = sub_2211B6E48(self), v22.i64[0] = sub_221119E0C(origin, size, v9, v10), v22.u64[1] = v11, TSUCellRect::isValid(&v22)) || (v12 = sub_2211B7004(self), v22.i64[0] = sub_221119E0C(origin, size, v12, v13), v22.u64[1] = v14, TSUCellRect::isValid(&v22)))
  {
    v15 = v22;
  }

  else
  {
    v18 = sub_2211B71BC(self);
    v22.i64[0] = sub_221119E0C(origin, size, v18, v19);
    v22.u64[1] = v20;
    if (TSUCellRect::isValid(&v22))
    {
      v21 = -1;
    }

    else
    {
      v21 = 0;
    }

    v15 = vbslq_s8(vdupq_n_s64(v21), v22, xmmword_2217E0780);
  }

  v17 = v15.i64[1];
  v16 = v15.i64[0];
  result.size = v17;
  result.origin = v16;
  return result;
}

- (double)alignedStrokeFrame
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x5012000000;
  v16 = sub_2211BAC10;
  v17 = nullsub_20;
  v18 = &unk_22188E88F;
  v5 = *(MEMORY[0x277CBF398] + 16);
  v19 = *MEMORY[0x277CBF398];
  v20 = v5;
  v6 = objc_msgSend_spaceBundle(a1, a2, a3, a4, a5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211BC8C0;
  v12[3] = &unk_278460A58;
  v12[4] = &v13;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v6, v7, v12, v8, v9);

  v10 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (double)tabsRowWidthAndOptionalLeftGap:(double *)a3
{
  v6 = objc_msgSend_numberOfRows(self->_layoutEngine, a2, a3, v3, v4);
  result = 20.0;
  if (v6 < 0x64 || (result = 28.0, v6 < 0x3E8))
  {
LABEL_5:
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v6 >> 4 < 0x271)
  {
    result = 33.0;
    goto LABEL_5;
  }

  result = dbl_2217E0790[v6 >> 5 < 0xC35];
  if (!a3)
  {
    return result;
  }

LABEL_6:
  *a3 = fmax(31.0 - result + -10.0, 0.0);
  return result;
}

- (CGPoint)minimumPositionOffset
{
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  v11 = objc_msgSend_styleProvidingSource(v6, v7, v8, v9, v10);

  if (v11)
  {
    v18 = 0.0;
    objc_msgSend_tabsRowWidthAndOptionalLeftGap_(self, v12, &v18, v13, v14);
    v16 = v15 + v18 * 2.0;
    v17 = 31.0;
  }

  else
  {
    v16 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setCellRangeVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, v3, v4, v5);
  v16 = objc_msgSend_supportsFrozenHeaders(v11, v12, v13, v14, v15);

  if ((v16 & 1) == 0)
  {
    x = *MEMORY[0x277CBF390];
    y = *(MEMORY[0x277CBF390] + 8);
    width = *(MEMORY[0x277CBF390] + 16);
    height = *(MEMORY[0x277CBF390] + 24);
  }

  self->_cellRangeVisibleRect.origin.x = x;
  self->_cellRangeVisibleRect.origin.y = y;
  self->_cellRangeVisibleRect.size.width = width;
  self->_cellRangeVisibleRect.size.height = height;
}

- (CGRect)cellRangeVisibleRect
{
  x = self->_cellRangeVisibleRect.origin.x;
  y = self->_cellRangeVisibleRect.origin.y;
  width = self->_cellRangeVisibleRect.size.width;
  height = self->_cellRangeVisibleRect.size.height;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectIsNull(v11) || (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, CGRectIsEmpty(v12)))
  {
    x = self->mCanvasVisibleRect.origin.x;
    y = self->mCanvasVisibleRect.origin.y;
    width = self->mCanvasVisibleRect.size.width;
    height = self->mCanvasVisibleRect.size.height;
  }

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (TSUCellRect)floatingHeaderRowRangeAtRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = objc_msgSend_layoutEngine(self, a2, v3, v4, v5);
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v11, v12, v13, v14, v15) & 1) != 0 || !sub_2211BA370(self))
  {
    v17 = 0x7FFF7FFFFFFFLL;

    goto LABEL_7;
  }

  v16 = sub_2211B848C(self);
  v17 = 0x7FFF7FFFFFFFLL;

  if (!v16)
  {
LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v22 = sub_2211B7AFC(self, v18, v19, v20, v21);
  if (v22)
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    sub_2211B9E30(self, &v30);
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    v17 = objc_msgSend__floatingCellRangeAtRect_inLayoutSpace_withTransform_(self, v23, v22, v29, v24, x, y, width, height);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

LABEL_8:
  v27 = v17;
  v28 = v26;
  result.size = v28;
  result.origin = v27;
  return result;
}

- (TSUCellRect)floatingHeaderColumnRangeAtRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = objc_msgSend_layoutEngine(self, a2, v3, v4, v5);
  if ((objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v11, v12, v13, v14, v15) & 1) != 0 || !sub_2211BA19C(self))
  {
    v17 = 0x7FFF7FFFFFFFLL;

    goto LABEL_7;
  }

  v16 = sub_2211B82D0(self);
  v17 = 0x7FFF7FFFFFFFLL;

  if (!v16)
  {
LABEL_7:
    v26 = 0;
    goto LABEL_8;
  }

  v22 = sub_2211B7AA0(self, v18, v19, v20, v21);
  if (v22)
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    sub_2211B9BC4(self, &v30);
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    v17 = objc_msgSend__floatingCellRangeAtRect_inLayoutSpace_withTransform_(self, v23, v22, v29, v24, x, y, width, height);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

LABEL_8:
  v27 = v17;
  v28 = v26;
  result.size = v28;
  result.origin = v27;
  return result;
}

- (TSUCellRect)_floatingCellRangeAtRect:(CGRect)a3 inLayoutSpace:(id)a4 withTransform:(CGAffineTransform *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  objc_msgSend_canvasFrame(v10, v11, v12, v13, v14);
  v15 = *&a5->c;
  *&v42.a = *&a5->a;
  *&v42.c = v15;
  *&v42.tx = *&a5->tx;
  v45 = CGRectApplyAffineTransform(v44, &v42);
  v16 = v45.origin.x;
  v17 = v45.origin.y;
  v18 = v45.size.width;
  v19 = v45.size.height;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v24 = 0x7FFF7FFFFFFFLL;
  if (CGRectIsEmpty(v45) || !objc_msgSend_frameHasWidthAndHeight(v10, v20, v21, v22, v23))
  {
    v38 = 0;
  }

  else
  {
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v50.origin.x = v16;
    v50.origin.y = v17;
    v50.size.width = v18;
    v50.size.height = v19;
    v47 = CGRectIntersection(v46, v50);
    v25 = v47.origin.x;
    v26 = v47.origin.y;
    v27 = v47.size.width;
    v28 = v47.size.height;
    *&v47.origin.y = *&a5->c;
    *&v41.a = *&a5->a;
    *&v41.c = *&v47.origin.y;
    *&v41.tx = *&a5->tx;
    CGAffineTransformInvert(&v42, &v41);
    v48.origin.x = v25;
    v48.origin.y = v26;
    v48.size.width = v27;
    v48.size.height = v28;
    v49 = CGRectApplyAffineTransform(v48, &v42);
    objc_msgSend_layoutRectForCanvasRect_(v10, v29, v30, v31, v32, v49.origin.x, v49.origin.y, v49.size.width, v49.size.height);
    v24 = objc_msgSend_rangeIntersectingLayoutRect_(v10, v33, v34, v35, v36);
    v38 = v37;
  }

  v39 = v24;
  v40 = v38;
  result.size = v40;
  result.origin = v39;
  return result;
}

- (CGRect)alignedStrokeFrameForRange:(TSUCellRect)a3
{
  v3 = sub_2211BC9B4(self, *&a3.origin, *&a3.size);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)alignedStrokeFramePathForRange:(TSUCellRect)a3 frameType:(int)a4 viewScale:(double)a5 inset:(double)a6 reoriginToZero:(BOOL)a7 clipToVisibleRect:(BOOL)a8 cornerRadius:(double)a9 outMaskPath:(id *)a10
{
  if (a3.origin.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.origin.column;
  }

  v11 = *&a3.origin << 32;
  v12 = 0xFFFFFFFF00000000;
  if (a3.origin.row == 0x7FFFFFFF)
  {
    v11 = 0xFFFFFFFF00000000;
  }

  v13 = (a3.size.numberOfColumns + column - 1);
  if (a3.size.numberOfRows)
  {
    v12 = ((v11 + *&a3.size) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  if (!a3.size.numberOfColumns)
  {
    v13 = 0xFFFFFFFFLL;
  }

  return objc_msgSend_alignedStrokeFramePathForGridRange_frameType_viewScale_inset_reoriginToZero_clipToVisibleRect_cornerRadius_outMaskPath_(self, a2, v11 | column, v13 | v12, *&a4, a7, a8, a10, a5, a6, a9);
}

- (id)alignedStrokeFramePathForGridRange:(id)a3 frameType:(int)a4 viewScale:(double)a5 inset:(double)a6 reoriginToZero:(BOOL)a7 clipToVisibleRect:(BOOL)a8 cornerRadius:(double)a9 outMaskPath:(id *)a10
{
  v10 = a7;
  var1 = a3.var1;
  var0 = a3.var0;
  v141 = *MEMORY[0x277D85DE8];
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v138 = *MEMORY[0x277CBF2C0];
  v139 = v17;
  memset(&v137, 0, sizeof(v137));
  CGAffineTransformMakeScale(&v137, a5, a5);
  v120 = v10;
  v129 = var0;
  v130 = var1;
  v126 = self;
  if (v10)
  {
    v18 = sub_2211BCA14(self, var0, var1, a4);
    v20 = vaddq_f64(*&v137.tx, vmlaq_n_f64(vmulq_n_f64(*&v137.c, v19), *&v137.a, v18));
  }

  else
  {
    v20 = vdupq_n_s64(0xC0F86A0000000000);
  }

  v119 = v20;
  sub_2211BB074(self);
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  obj = v134 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v133, v140, 16);
  if (!v22)
  {

    v109 = 0;
    v122 = 0;
    goto LABEL_78;
  }

  v27 = 0;
  v28 = 0;
  v122 = 0;
  v131 = 0;
  v125 = *v134;
  v128 = HIDWORD(var0);
  do
  {
    v127 = v22;
    for (i = 0; i != v127; ++i)
    {
      if (*v134 != v125)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v133 + 1) + 8 * i);
      v33 = objc_msgSend_layoutSpaceType(v30, v23, v24, v25, v26, *&v119);
      v34 = v129 | (v128 << 32);
      if (a4 == 1)
      {
        if (!objc_msgSend_intersectsRowGridRange_(v30, v31, v129 | (v128 << 32), v130, v32))
        {
          goto LABEL_24;
        }

        v42 = objc_msgSend_intersectionRowGridRange_ofLayoutSpace_(TSTLayoutSpace, v35, v34, v130, v30);
        v41 = objc_msgSend_alignedStrokeLinePathForRowGridRange_transform_inset_reoriginToZero_cornerRadius_(v30, v43, v42, v43, &v137, 0, a6, a9);
      }

      else if (a4 == 2)
      {
        if (!objc_msgSend_intersectsColumnGridRange_(v30, v31, v129 | (v128 << 32), v130, v32))
        {
          goto LABEL_24;
        }

        v39 = objc_msgSend_intersectionColumnGridRange_ofLayoutSpace_(TSTLayoutSpace, v35, v34, v130, v30);
        v41 = objc_msgSend_alignedStrokeLinePathForColumnGridRange_transform_inset_reoriginToZero_cornerRadius_(v30, v40, v39, v40, &v137, 0, a6, a9);
      }

      else
      {
        if (!objc_msgSend_intersectsGridRange_(v30, v31, v129 | (v128 << 32), v130, v32))
        {
LABEL_24:
          if (!objc_msgSend_isFrozen(v30, v35, v36, v37, v38))
          {
            continue;
          }

          v46 = objc_msgSend_alignedMaskStrokeFramePathForTransform_cornerRadius_(v30, v23, &v137, v25, v26, a9);
          if (v33 == 2)
          {
            sub_2211B9BC4(v126, &v132);
            v138 = *&v132.a;
            v139 = *&v132.c;
            v132.tx = v132.tx * a5;
            objc_msgSend_transformUsingAffineTransform_(v46, v101, &v132, v102, v103);
          }

          else
          {
            if (v33 == 3)
            {
              sub_2211B9E30(v126, &v132);
              v138 = *&v132.a;
              v139 = *&v132.c;
              v132.ty = v132.ty * a5;
            }

            else
            {
              sub_2211B9F18(v126, &v132);
              v138 = *&v132.a;
              v139 = *&v132.c;
              *&v132.tx = vmulq_n_f64(*&v132.tx, a5);
            }

            objc_msgSend_transformUsingAffineTransform_(v46, v53, &v132, v54, v55);
          }

          if (v46 && (objc_msgSend_isEmpty(v46, v56, v57, v58, v59) & 1) == 0)
          {
            if (v122)
            {
              if (a9 == 0.0)
              {
                objc_msgSend_uniteWithPolygonalBezierPath_(v122, v104, v46, v105, v106);
              }

              else
              {
                objc_msgSend_uniteWithBezierPath_(v122, v104, v46, v105, v106);
              }
              v107 = ;

              v52 = v27;
              v122 = v107;
            }

            else
            {
              v46 = v46;
              v52 = v27;
              v122 = v46;
            }
          }

          else
          {
            v52 = v27;
          }

          goto LABEL_64;
        }

        v44 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v35, v34, v130, v30);
        v41 = objc_msgSend_alignedStrokeFramePathForGridRange_transform_inset_reoriginToZero_cornerRadius_(v30, v45, v44, v45, &v137, 0, a6, a9);
      }

      v46 = v41;
      switch(v33)
      {
        case 1:
          sub_2211B9F18(v126, &v132);
          v138 = *&v132.a;
          v139 = *&v132.c;
          *&v132.tx = vmulq_n_f64(*&v132.tx, a5);
          objc_msgSend_transformUsingAffineTransform_(v46, v63, &v132, v64, v65);
          v28 = 1;
          v52 = 1;
          break;
        case 3:
          sub_2211B9E30(v126, &v132);
          v138 = *&v132.a;
          v139 = *&v132.c;
          v132.ty = v132.ty * a5;
          objc_msgSend_transformUsingAffineTransform_(v46, v60, &v132, v61, v62);
          if (a4 != 1)
          {
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v23, v30, v25, v26);
            v128 = (HIDWORD(v23) + 1);
          }

          LODWORD(v28) = 0;
          v51 = 1;
          v52 = 1;
          if (v27)
          {
            goto LABEL_37;
          }

          v52 = 0;
          v28 = 1;
          break;
        case 2:
          sub_2211B9BC4(v126, &v132);
          v138 = *&v132.a;
          v139 = *&v132.c;
          v132.tx = v132.tx * a5;
          objc_msgSend_transformUsingAffineTransform_(v46, v47, &v132, v48, v49);
          if (a4 != 2)
          {
            objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v23, v30, v25, v26);
            v129 = v23 + 1;
          }

          v50 = v28;
          v28 = 0;
          v51 = 1;
          v52 = 1;
          if ((v50 & 1) == 0)
          {
            break;
          }

LABEL_37:
          v66 = objc_msgSend_spaceBundle(v126, v23, v24, v25, v26);
          v71 = objc_msgSend_space(v66, v67, v68, v69, v70);
          v72 = sub_2211B7C10(v126, v71);
          v74 = v73;
          v76 = v75;
          v78 = v77;

          v132 = v137;
          v143.origin.x = v72;
          v143.origin.y = v74;
          v143.size.width = v76;
          v143.size.height = v78;
          v144 = CGRectApplyAffineTransform(v143, &v132);
          if ((v28 & v52 & 1) == 0)
          {
            if (v33 != 3)
            {
              goto LABEL_43;
            }

            if ((v52 & 1) == 0)
            {
              if ((v28 & v51 & 1) == 0)
              {
                v28 = v51;
                goto LABEL_47;
              }

              goto LABEL_46;
            }
          }

          TSURectWithPoints();
          v87 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v83, v84, v85, v86);
          v91 = objc_msgSend_subtractBezierPath_(v46, v88, v87, v89, v90);

          v46 = v91;
LABEL_43:
          if ((v28 & v51 & 1) == 0)
          {
            v28 = (v33 != 2) & v51;
            if (v33 != 2 || ((v51 ^ 1) & 1) != 0)
            {
LABEL_47:
              if (objc_msgSend_isEmpty(v46, v79, v80, v81, v82, v144.origin.x, v144.origin.y, v144.size.width, v144.size.height))
              {

                v46 = 0;
              }

              break;
            }
          }

LABEL_46:
          TSURectWithPoints();
          v96 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v92, v93, v94, v95);
          v100 = objc_msgSend_subtractBezierPath_(v46, v97, v96, v98, v99);

          v28 = v51;
          v46 = v100;
          goto LABEL_47;
        default:
          if (!v33 && ((v27 | v28) & 1) != 0)
          {
            v51 = v28;
            LODWORD(v28) = 1;
            v52 = v27;
            goto LABEL_37;
          }

          v52 = v27;
          break;
      }

      if (!v131)
      {
        v27 = v52;
        v131 = v46;
        continue;
      }

      if (a9 == 0.0)
      {
        objc_msgSend_uniteWithPolygonalBezierPath_(v131, v23, v46, v25, v26);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v131, v23, v46, v25, v26);
      }
      v108 = ;

      v131 = v108;
LABEL_64:

      v27 = v52;
    }

    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v133, v140, 16);
  }

  while (v22);

  v109 = v131;
  if (v131)
  {
    if (v120)
    {
      CGAffineTransformMakeTranslation(&v132, -v119.f64[0], -v119.f64[1]);
      objc_msgSend_transformUsingAffineTransform_(v131, v110, &v132, v111, v112);
      CGAffineTransformMakeTranslation(&v132, -v119.f64[0], -v119.f64[1]);
      objc_msgSend_transformUsingAffineTransform_(v122, v113, &v132, v114, v115);
    }

    if (a10)
    {
      v116 = v122;
      *a10 = v122;
    }

    v109 = v131;
  }

LABEL_78:
  v117 = v109;

  return v117;
}

- (void)bezierPathsForCellRegion:(id)a3 selectionMask:(unsigned int)a4 transform:(CGAffineTransform *)a5 viewScale:(double)a6 inset:(double)a7 clipToVisibleRect:(BOOL)a8 cornerRadius:(double)a9 block:(id)a10
{
  v181 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v130 = a10;
  v20 = objc_msgSend_boundingCellRange(v15, v16, v17, v18, v19);
  v142 = v21;
  v143 = v20;
  if (objc_msgSend_isRectangle(v15, v21, v22, v23, v24))
  {
    v29 = objc_msgSend_tableInfo(self, v25, v26, v27, v28);
    isSingleCellOrMergeRange = objc_msgSend_isSingleCellOrMergeRange_(v29, v30, v143, v142, v31);
  }

  else
  {
    isSingleCellOrMergeRange = 0;
  }

  v32 = sub_2211B82D0(self);
  v33 = sub_2211B848C(self);
  v38 = v33;
  v39 = 0x7FFF7FFFFFFFLL;
  if (v32)
  {
    v40 = sub_2211B7AA0(self, v34, v35, v36, v37);
    v45 = objc_msgSend_cellRange(v40, v41, v42, v43, v44);
    v47 = v46;
    v48 = v45;
    v49 = v45 & 0xFFFFFFFF00000000;

    if (!v38)
    {
      v131 = v48;
      v133 = v49;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      LOWORD(v129) = 0x7FFF;
      v53 = 0x7FFFFFFFLL;
      goto LABEL_98;
    }
  }

  else
  {
    v50 = 0;
    v48 = 0x7FFFFFFF;
    v133 = 0x7FFF00000000;
    if (!v33)
    {
      v131 = 0x7FFFFFFF;
      LOWORD(v129) = 0x7FFF;
      v53 = 0x7FFFFFFFLL;
      v51 = 0;
      v52 = 0;
      v47 = 0;
      goto LABEL_98;
    }

    v47 = 0;
    v49 = 0x7FFF00000000;
  }

  v54 = sub_2211B7AFC(self, v34, v35, v36, v37);
  v131 = v48;
  v133 = v49;
  v59 = objc_msgSend_cellRange(v54, v55, v56, v57, v58);
  v52 = v60;
  v129 = HIDWORD(v59);
  v50 = v59 & 0xFFFF000000000000;

  v53 = v59;
  if (!v32)
  {
    v51 = 0;
    goto LABEL_98;
  }

  v65 = sub_2211B7B58(self, v61, v62, v63, v64);
  v70 = objc_msgSend_cellRange(v65, v66, v67, v68, v69);
  v39 = v70;
  v51 = v71;
  if (HIDWORD(v47) && v47 && HIDWORD(v71) && v71)
  {
    v72 = v133 & 0xFFFF00000000;
    if (v131 == 0x7FFFFFFF && v72 != 0x7FFF00000000)
    {
      goto LABEL_16;
    }

    if (v131 <= v70)
    {
      v78 = v131 + HIDWORD(v47) - 1;
      if (v131 == 0x7FFFFFFF)
      {
        v78 = 0x7FFFFFFF;
      }

      if (v78 >= v70)
      {
        if (v131 != 0x7FFFFFFF && v72 == 0x7FFF00000000)
        {
          v76 = v47 + 32766;
          v73 = HIDWORD(v70);
          v74 = 0x7FFF;
LABEL_34:
          if (v74 == 0x7FFF || v47 == 0)
          {
            v80 = 0x7FFF;
          }

          else
          {
            v80 = v76;
          }

          v81 = v73;
          v82 = v71 + v73 - 1;
          if (v81 == 0x7FFF || v71 == 0)
          {
            v82 = 0x7FFF;
          }

          if (v80 >= v82)
          {
            v84 = v131 + HIDWORD(v47) - 1;
            if (v131 == 0x7FFFFFFF)
            {
              v84 = 0x7FFFFFFF;
            }

            if (v70 == 0x7FFFFFFF)
            {
              v85 = 0x7FFFFFFF;
            }

            else
            {
              v85 = v70 + HIDWORD(v71) - 1;
            }

            if (v84 >= v85)
            {
              v131 += HIDWORD(v71);
              v47 = (v47 - (v71 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | v47;
            }
          }

          goto LABEL_53;
        }

LABEL_16:
        v73 = HIDWORD(v70);
        v74 = WORD2(v133);
        if (WORD2(v133) > WORD2(v70))
        {
          goto LABEL_53;
        }

        v75 = WORD2(v133) == 0x7FFF || v47 == 0;
        v76 = WORD2(v133) + v47 - 1;
        v77 = v75 ? 0x7FFF : WORD2(v133) + v47 - 1;
        if (v77 < WORD2(v70))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }
    }
  }

LABEL_53:
  if (HIDWORD(v52) && v52 && HIDWORD(v71) && v71)
  {
    v86 = v59 & 0xFFFF00000000;
    if (v59 != 0x7FFFFFFFLL || v86 == 0x7FFF00000000)
    {
      v92 = v86 != 0x7FFF00000000 && v59 == 0x7FFFFFFF;
      if (!v92 && v59 > v70)
      {
        goto LABEL_97;
      }

      v93 = v59 + HIDWORD(v52) - 1;
      if (v59 == 0x7FFFFFFF)
      {
        v93 = 0x7FFFFFFF;
      }

      if (v93 < v70)
      {
        goto LABEL_97;
      }

      if (v59 != 0x7FFFFFFFLL && v86 == 0x7FFF00000000)
      {
        v90 = v52 + 32766;
        v87 = HIDWORD(v70);
        v88 = 0x7FFF;
LABEL_79:
        if (v88 == 0x7FFF || v52 == 0)
        {
          v95 = 0x7FFF;
        }

        else
        {
          v95 = v90;
        }

        v96 = v87;
        v97 = v71 + v87 - 1;
        if (v96 == 0x7FFF || v71 == 0)
        {
          v97 = 0x7FFF;
        }

        if (v95 >= v97)
        {
          v99 = v59 + HIDWORD(v52) - 1;
          if (v59 == 0x7FFFFFFF)
          {
            v99 = 0x7FFFFFFF;
          }

          v100 = v70 + HIDWORD(v71) - 1;
          if (v70 == 0x7FFFFFFF)
          {
            v100 = 0x7FFFFFFF;
          }

          if (v99 >= v100)
          {
            LOWORD(v129) = v71 + WORD2(v59);
            v52 = (v52 - v71) | v52 & 0xFFFFFFFF00000000;
          }
        }

        goto LABEL_97;
      }
    }

    v87 = HIDWORD(v70);
    v88 = WORD2(v59);
    if (WORD2(v59) <= WORD2(v70))
    {
      v89 = WORD2(v59) == 0x7FFF || v52 == 0;
      v90 = v52 - 1 + WORD2(v59);
      v91 = v89 ? 0x7FFF : v52 - 1 + WORD2(v59);
      if (v91 >= WORD2(v70))
      {
        goto LABEL_79;
      }
    }
  }

LABEL_97:

LABEL_98:
  sub_2211BB074(self);
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v128 = v177 = 0u;
  objc_msgSend_objectEnumerator(v128, v101, v102, v103, v104);
  v135 = v51;
  v136 = v52;
  v105 = v137 = v47;
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v176, v180, 16);
  if (v111)
  {
    v112 = *v177;
    v134 = v133 | v131;
    v132 = v53 | v50 | (v129 << 32);
    do
    {
      for (i = 0; i != v111; ++i)
      {
        if (*v177 != v112)
        {
          objc_enumerationMutation(v105);
        }

        v114 = *(*(&v176 + 1) + 8 * i);
        v115 = objc_msgSend_layoutSpaceType(v114, v107, v108, v109, v110);
        if (objc_msgSend_intersectsCellRange_(v114, v116, v143, v142, v117))
        {
          v170 = 0;
          v171 = &v170;
          v172 = 0x3032000000;
          v173 = sub_2211BFB80;
          v174 = sub_2211BFB90;
          v175 = 0;
          v164 = 0;
          v165 = &v164;
          v166 = 0x3032000000;
          v167 = sub_2211BFB80;
          v168 = sub_2211BFB90;
          v169 = 0;
          v144[0] = MEMORY[0x277D85DD0];
          v144[1] = 3221225472;
          v144[2] = sub_2211BFB98;
          v144[3] = &unk_278460B30;
          v162 = a8;
          v163 = isSingleCellOrMergeRange;
          v155 = v134;
          v156 = v137;
          v157 = v132;
          v158 = v136;
          v159 = v39;
          v160 = v135;
          v154 = v115;
          v161 = a4;
          v144[4] = v114;
          v144[5] = self;
          v148 = a6;
          v149 = a7;
          v150 = a9;
          v118 = v15;
          v119 = *&a5->c;
          v151 = *&a5->a;
          v152 = v119;
          v153 = *&a5->tx;
          v145 = v118;
          v146 = &v164;
          v147 = &v170;
          objc_msgSend_enumerateCellRangesUsingBlock_(v118, v120, v144, v121, v122);
          v127 = v165[5];
          if (v127 && (objc_msgSend_isEmpty(v127, v123, v124, v125, v126) & 1) == 0)
          {
            v130[2](v130, v165[5], v171[5], v114);
          }

          _Block_object_dispose(&v164, 8);
          _Block_object_dispose(&v170, 8);
        }
      }

      v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v107, &v176, v180, 16);
    }

    while (v111);
  }
}

- (void)willBeginTableNameEditingWithStorage:(id)a3
{
  v20 = a3;
  v8 = objc_msgSend_layoutEngine(self, v4, v5, v6, v7);
  v13 = objc_msgSend_styleProvidingSource(v8, v9, v10, v11, v12);

  if (v20 && v13)
  {
    objc_msgSend_setTableNameEditingStorage_(self, v14, v20, v15, v16);
    objc_msgSend_addObserver_(v20, v17, self, v18, v19);
  }
}

- (void)didEndTableNameEditing
{
  v6 = objc_msgSend_tableNameEditingStorage(self, a2, v2, v3, v4);

  if (v6)
  {
    v11 = objc_msgSend_tableNameEditingStorage(self, v7, v8, v9, v10);
    objc_msgSend_removeObserver_(v11, v12, self, v13, v14);

    objc_msgSend_setTableNameEditingStorage_(self, v15, 0, v16, v17);
  }
}

- (void)validateTableNameVisibility
{
  if (!self->mTableNameVisibilityIsValid)
  {
    mTableNameVisible = self->mTableNameVisible;
    v7 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
    if (objc_msgSend_tableNameEnabled(v7, v8, v9, v10, v11))
    {
      v16 = sub_2211B4730(self, v12, v13, v14, v15);
    }

    else
    {
      v16 = 0;
    }

    self->mTableNameVisible = v16;
    if (mTableNameVisible != v16)
    {
      objc_msgSend_invalidateLayoutSpaceTableOffsets(self, v17, v18, v19, v20);
      objc_msgSend_invalidateLayoutSpaceCoordinates(self, v21, v22, v23, v24);
    }

    self->mTableNameVisibilityIsValid = 1;
  }
}

- (BOOL)isBeingManipulated
{
  v23.receiver = self;
  v23.super_class = TSTLayout;
  if ([(TSTLayout *)&v23 isBeingManipulated])
  {
    return 1;
  }

  v8 = objc_msgSend_layoutEngine(self, v3, v4, v5, v6);
  if (objc_msgSend_isInDynamicLayoutMode(v8, v9, v10, v11, v12))
  {
    v7 = 1;
  }

  else
  {
    v17 = objc_msgSend_layoutEngine(self, v13, v14, v15, v16);
    v7 = objc_msgSend_dynamicRepResize(v17, v18, v19, v20, v21);
  }

  return v7;
}

- (TSUCellRect)p_maximumSpillRangeForCellID:(TSUCellCoord)a3
{
  PartitionBodyCellRange = TSTLayoutGetPartitionBodyCellRange(self);
  v7 = v6;
  v11 = objc_msgSend_layoutEngine(self, v6, v8, v9, v10);
  v15 = objc_msgSend_tableAreaForCellID_(v11, v12, *&a3, v13, v14);
  v16 = HIDWORD(PartitionBodyCellRange);

  v21 = v7;
  if (v15 != 1)
  {
    if (sub_2211B7A08(self, v17, v18, v19, v20))
    {
      v21 = v7 + WORD2(PartitionBodyCellRange);
      LOWORD(v16) = 0;
    }

    else
    {
      v22 = sub_2211B6E48(self);
      if (HIDWORD(v23) && v23)
      {
        if (v22 != 0x7FFFFFFF && (v22 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v22) <= a3.column && (WORD2(v22) != 0x7FFF ? (v24 = v23 == 0) : (v24 = 1), !v24 ? (v25 = v23 + WORD2(v22) - 1) : (v25 = 0x7FFF), v25 >= a3.column))
        {
          v16 = HIDWORD(v22);
          v21 = v23;
        }
      }
    }
  }

  v26 = PartitionBodyCellRange & 0xFFFF000000000000 | a3.row | (v16 << 32);
  v27 = v21 | 0x100000000;
  result.size = v27;
  result.origin = v26;
  return result;
}

- (TSUCellRect)p_spillRangeToRightForCellID:(TSUCellCoord)a3
{
  v5 = a3;
  v7 = objc_msgSend_tableInfo(self, a2, *&a3, v3, v4);
  v12 = objc_msgSend_newCell(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_tableInfo(self, v13, v14, v15, v16);
  objc_msgSend_getCell_atCellID_(v17, v18, v12, *&v5, v19);

  v24 = objc_msgSend_tableInfo(self, v20, v21, v22, v23);
  v28 = objc_msgSend_mergeRangeAtCellID_(v24, v25, *&v5, v26, v27);
  v30 = v29;
  v31 = HIWORD(*&v5);

  if (v28 == 0x7FFFFFFF || (v28 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v30) || !v30)
  {
    v96 = 0;
    v94 = 0;
    v95 = 0;
    v38 = objc_msgSend_tableInfo(self, v32, v33, v34, v35);
    v93 = 0;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v38, v39, v12, *&v5, &v96, &v95, &v94, &v93);
    v36 = HIDWORD(*&v5);
    v40 = v93;

    if (v96)
    {
      goto LABEL_10;
    }

    v45 = v95;
    if (v95 == 4)
    {
      v45 = objc_msgSend_naturalAlignmentForCellID_(self, v41, *&v5, v43, v44);
      v95 = v45;
    }

    if (v45 == 1)
    {
LABEL_10:
      v37 = 0x100000001;
    }

    else
    {
      v92 = v40;
      if (objc_msgSend_valueType(v12, v41, v42, v43, v44) == 9)
      {
        objc_msgSend_richTextValue(v12, v46, v47, v48, v49);
      }

      else
      {
        objc_msgSend_formattedValue(v12, v46, v47, v48, v49);
      }
      v50 = ;
      v55 = objc_msgSend_layoutEngine(self, v51, v52, v53, v54);
      v56 = v96;
      v57 = v94;
      v62 = objc_msgSend_pageNumber(self, v58, v59, v60, v61);
      v67 = objc_msgSend_pageCount(self, v63, v64, v65, v66);
      v69 = objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v55, v68, *&v5, v12, v50, v56, v57, v92, 15, v62, v67);

      v70 = sub_2211BC850(self, *&v5, 0x100000001uLL);
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v77 = sub_2213A5824(v69);
      if (v77 <= v74)
      {
        v37 = 0x100000001;
      }

      else
      {
        if (v95)
        {
          v78 = v74 + (v77 - v74) * 0.5;
        }

        else
        {
          v78 = v77;
        }

        v79 = v70;
        v80 = v72;
        v81 = v76;
        MaxX = CGRectGetMaxX(*(&v78 - 2));
        sub_2211B8958(self, v83, v84, v85, v86, MaxX, v72);
        v87 = sub_2211BBDD4(self);
        v88 = sub_2211C15D4(*&v5, 0x100000001uLL, v87);
        v5.row = v88;
        v37 = v89;
        v36 = HIDWORD(v88);
        v31 = HIWORD(v88);
      }

      v40 = v92;
    }
  }

  else
  {
    v36 = HIDWORD(v28);
    v37 = v30 | 0x100000000;
  }

  v90 = (v31 << 48) | (v36 << 32) | v5.row;
  v91 = v37;
  result.size = v91;
  result.origin = v90;
  return result;
}

- (TSUCellRect)p_spillRangeForMaskingRichTextLayout:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cachedCellID(v4, v5, v6, v7, v8);
  v14 = objc_msgSend_cachedMergeRange(v4, v10, v11, v12, v13);
  v16 = v15;
  v20 = objc_msgSend_cachedCellWraps(v4, v15, v17, v18, v19);
  v136 = v9;
  v137 = self;
  v25 = objc_msgSend_cachedParagraphAlignment(v4, v21, v22, v23, v24);
  v34 = objc_msgSend_cachedCellID(v4, v26, v27, v28, v29);
  if (v25 == 4)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSTLayout p_spillRangeForMaskingRichTextLayout:]", v32, v33);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v38, v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v41, v36, v40, 5038, 0, "alignment should have already been resolved");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  if (v14 != 0x7FFFFFFF && (v14 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v16) && v16)
  {
    v46 = objc_msgSend_extendedPartitionRangeSingleSpaceIntersectionWithCellRange_(v137, v30, v14, v16, v33);
LABEL_116:
    v34 = v46;
    v48 = v47;
    goto LABEL_117;
  }

  v48 = 0x100000001;
  v49 = v137;
  if ((v20 & 1) == 0)
  {
    v50 = objc_msgSend_cachedCellID(v4, v30, v31, v32, v33);
    v54 = objc_msgSend_p_maximumSpillRangeForCellID_(v137, v51, v50, v52, v53);
    v59 = 0x7FFFFFFF;
    if (v54 != 0x7FFFFFFF && (v54 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v61) = 0;
    }

    else
    {
      LOWORD(v61) = WORD2(v54);
    }

    LOWORD(v62) = 0x7FFF;
    if ((v25 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_23;
    }

    if (v55)
    {
      v63 = WORD2(v54) == 0x7FFF;
    }

    else
    {
      v63 = 1;
    }

    v64 = (v55 + WORD2(v54) - 1);
    if (v63)
    {
      v64 = 0x7FFF;
    }

    if (v64 <= WORD2(v136))
    {
LABEL_23:
      v65 = 0;
      v134 = 0;
    }

    else
    {
      v134 = v54 & 0xFFFF000000000000;
      LOWORD(v62) = WORD2(v136) + 1;
      v65 = v55 & 0xFFFFFFFF00000000 | (v64 - WORD2(v136));
      v59 = v54;
    }

    v66 = v34;
    if ((v25 - 1) > 1 || WORD2(v136) <= v61)
    {
      v67 = 0;
      v133 = 0;
      LOWORD(v61) = 0x7FFF;
      v135 = 0x7FFFFFFF;
    }

    else
    {
      v67 = v55 & 0xFFFFFFFF00000000 | (WORD2(v136) - v61);
      v135 = v54;
      v133 = HIWORD(v54);
    }

    if (v59 == 0x7FFFFFFF || v62 == 0x7FFF || !HIDWORD(v65) || !v65)
    {
      goto LABEL_45;
    }

    v132 = v67;
    v68 = sub_2211C0BB8(v137, v136, 0);
    v69 = v59;
    v70 = v134 | v59 | (v62 << 32);
    if (v68 == 0x7FFFFFFF || (v68 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v131 = v62 << 32;
    }

    else
    {
      v71 = v65 + WORD2(v70) - 1;
      if (WORD2(v70) == 0x7FFF)
      {
        v71 = 0x7FFF;
      }

      if (v71 >= WORD2(v68))
      {
        if (WORD2(v70) >= WORD2(v68))
        {
          v65 = 0;
          v70 = 0x7FFF7FFFFFFFLL;
        }

        else
        {
          v65 = (WORD2(v68) - WORD2(v70)) | v65 & 0xFFFFFFFF00000000;
        }
      }

      v62 = HIDWORD(v70);
      v134 = v70 & 0xFFFF000000000000;
      v131 = v70 & 0xFFFF00000000;
      v69 = v70;
      v59 = v70;
    }

    origin = v137->mEditingSpillingTextRange.origin;
    v73 = sub_221119E0C(v70, v65, origin, *&v137->mEditingSpillingTextRange.size);
    v75 = 0x7FFF7FFFFFFFLL;
    if ((v73 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !HIDWORD(v74) || !v74 || v73 == *MEMORY[0x277D813C8] && ((*MEMORY[0x277D813C8] ^ v73) & 0x101FFFF00000000) == 0 && v74 == *(MEMORY[0x277D813C8] + 8))
    {
      v76 = v34;
      v77 = v131;
LABEL_44:
      v66 = sub_2211C1FC4(v76, 0x100000001uLL, v134 | v77 | v69, v65);
      v48 = v55;
      v67 = v132;
LABEL_45:
      if (v135 != 0x7FFFFFFF && v61 != 0x7FFF && HIDWORD(v67) && v67)
      {
        v79 = sub_2211C0634(v137, v136, 0);
        v82 = v133 << 48;
        v83 = v61 << 32;
        v84 = v135;
        if (v79 == 0x7FFFFFFF || (v79 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          v90 = v67;
          v94 = v66;
          v49 = v137;
        }

        else
        {
          v85 = objc_msgSend_p_spillRangeToRightForCellID_(v137, v78, v79, v80, v81);
          v86 = v135 | (v133 << 48) | (v61 << 32);
          v88 = v87 + WORD2(v85) - 1;
          if (v87)
          {
            v89 = WORD2(v85) == 0x7FFF;
          }

          else
          {
            v89 = 1;
          }

          if (v89)
          {
            v88 = 0x7FFF;
          }

          v61 = HIDWORD(v86);
          v135 = v86;
          if (v88 >= WORD2(v86))
          {
            if (WORD2(v86) == 0x7FFF)
            {
              v95 = 0x7FFF;
            }

            else
            {
              v95 = v67 + WORD2(v86) - 1;
            }

            v49 = v137;
            if (v88 >= v95)
            {
              v90 = 0;
              v133 = 0;
              v135 = 0x7FFFFFFF;
              LOWORD(v61) = 0x7FFF;
            }

            else
            {
              v90 = (v95 - v88) | v67 & 0xFFFFFFFF00000000;
              LOWORD(v61) = v88 + 1;
            }
          }

          else
          {
            v90 = v67;
            v49 = v137;
          }

          v94 = v66;
          v82 = v133 << 48;
          v83 = v61 << 32;
          v84 = v135;
        }

        v96 = v82 | v83;
        v97 = v82 | v83 | v84;
        v99 = v49->mEditingSpillingTextRange.origin;
        size = v49->mEditingSpillingTextRange.size;
        v100 = sub_221119E0C(v97, v90, v99, size);
        if ((v100 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && HIDWORD(v101) && v101 && (v100 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v100) & 0x101FFFF00000000) != 0 || v101 != *(MEMORY[0x277D813C8] + 8)))
        {
          if (size)
          {
            v102 = WORD2(v99) == 0x7FFF;
          }

          else
          {
            v102 = 1;
          }

          if (v102)
          {
            v103 = 0x7FFF;
          }

          else
          {
            v103 = size + WORD2(v99) - 1;
          }

          v104 = HIDWORD(v96);
          if (v135 != 0x7FFFFFFF && v61 != 0x7FFF && HIDWORD(v90) && v90 && v103 >= WORD2(v96))
          {
            LOWORD(v104) = 0x7FFF;
            if (WORD2(v96) == 0x7FFF)
            {
              v105 = 0x7FFF;
            }

            else
            {
              v105 = v90 + WORD2(v96) - 1;
            }

            if (v105 <= v103)
            {
              v90 = 0;
              v133 = 0;
              LODWORD(v97) = 0x7FFFFFFF;
            }

            else
            {
              v90 = (v105 - v103) | v90 & 0xFFFFFFFF00000000;
              LOWORD(v104) = v103 + 1;
            }
          }

          v97 = (v104 << 32) | (v133 << 48) | v97;
        }

        v66 = sub_2211C1FC4(v94, v48, v97, v90);
        v48 = v55;
      }

      objc_msgSend_cachedAutosizedFrame(v4, v55, v56, v57, v58);
      MinX = CGRectGetMinX(v139);
      objc_msgSend_cachedAutosizedFrame(v4, v107, v108, v109, v110);
      MidY = CGRectGetMidY(v140);
      objc_msgSend_cachedAutosizedFrame(v4, v112, v113, v114, v115);
      MaxX = CGRectGetMaxX(v141);
      sub_2211B8958(v49, v117, v118, v119, v120, MinX, MidY);
      sub_2211B8958(v49, v121, v122, v123, v124, MaxX, MidY);
      v125 = sub_2211BBDD4(v49);
      v126 = sub_2211BBDD4(v49);
      v127 = sub_2211C15D4(v125, 0x100000001uLL, v126);
      v46 = sub_221119E0C(v66, v48, v127, v128);
      goto LABEL_116;
    }

    v91 = HIDWORD(origin);
    if (origin != 0x7FFFFFFF && (origin & 0xFFFF00000000) == 0x7FFF00000000)
    {
      LOWORD(v91) = 0;
    }

    if (v59 == 0x7FFFFFFF)
    {
      v75 = v70;
      v76 = v34;
    }

    else
    {
      v76 = v34;
      if (v62 != 0x7FFF && HIDWORD(v65) && v65)
      {
        v93 = WORD2(v70) == 0x7FFF ? 0x7FFF : v65 + WORD2(v70) - 1;
        if (v93 >= v91)
        {
          if (v91 <= WORD2(v70))
          {
            v65 = 0;
            goto LABEL_110;
          }

          v65 = (v91 - WORD2(v70)) | v65 & 0xFFFFFFFF00000000;
        }
      }

      v75 = v70;
    }

LABEL_110:
    v134 = v75 & 0xFFFF000000000000;
    v77 = v75 & 0xFFFF00000000;
    v69 = v75;
    goto LABEL_44;
  }

LABEL_117:

  v129 = v34;
  v130 = v48;
  result.size = v130;
  result.origin = v129;
  return result;
}

- (void)p_updateCachedStyleInformationFromCellID:(TSUCellCoord)a3
{
  v46 = objc_msgSend_tableInfo(self, a2, *&a3, v3, v4);
  v9 = objc_msgSend_cellStyleAtCellID_isDefault_(v46, v7, *&a3, 0, v8);

  v14 = v9;
  if (v9 || (objc_msgSend_tableInfo(self, v10, v11, v12, v13), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend_defaultCellStyleForCellID_useSoftDefault_outSource_(v47, v15, *&a3, 1, 0), v16 = objc_claimAutoreleasedReturnValue(), v47, (v14 = v16) != 0))
  {
    v48 = v14;
    objc_opt_class();
    v20 = objc_msgSend_valueForProperty_(v48, v17, 904, v18, v19);
    v21 = TSUCheckedDynamicCast();

    if (v21)
    {
      objc_msgSend_topInset(v21, v22, v23, v24, v25);
      v27 = v26;
      objc_msgSend_leftInset(v21, v28, v29, v30, v31);
      v33 = v32;
      objc_msgSend_bottomInset(v21, v34, v35, v36, v37);
      v39 = v38;
      objc_msgSend_rightInset(v21, v40, v41, v42, v43);
      self->mCachedPaddingForEditingCell.top = v27;
      self->mCachedPaddingForEditingCell.left = v33;
      self->mCachedPaddingForEditingCell.bottom = v39;
      self->mCachedPaddingForEditingCell.right = v44;
      self->mCachedPaddingForEditingCell.left = sub_2213B4860(v33);
      self->mCachedPaddingForEditingCell.right = sub_2213B4860(self->mCachedPaddingForEditingCell.right);
    }

    self->mCachedVerticalAlignmentForEditingCell = 0;
    v45 = objc_msgSend_intValueForProperty_(v48, v22, 903, v24, v25);
    if ((v45 & 0x7FFFFFFF) != 0)
    {
      self->mCachedVerticalAlignmentForEditingCell = v45;
    }
  }
}

- (void)p_prepareAttachmentCellsIfNeeded
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, v2, v3, v4);
  v11 = objc_msgSend_supportsInlineAttachments(v6, v7, v8, v9, v10);

  if ((v11 & 1) != 0 && self->mShouldUpdateAttachmentChildren)
  {
    objc_msgSend_validate(self, v12, v13, v14, v15);
    v66 = sub_2211BB074(self);
    v16 = MEMORY[0x277D81258];
    v21 = objc_msgSend_allKeys(self->_attachmentCellStorageToLayoutMap, v17, v18, v19, v20);
    v64 = objc_msgSend_setWithArray_(v16, v22, v21, v23, v24);

    v65 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    v29 = sub_2211BAC20(self);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v34 = objc_msgSend_reverseObjectEnumerator(v66, v30, v31, v32, v33);
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v72, v76, 16);
    if (v40)
    {
      v41 = *v73;
      do
      {
        v42 = 0;
        v43 = v29;
        do
        {
          if (*v73 != v41)
          {
            objc_enumerationMutation(v34);
          }

          v44 = objc_msgSend_cellRange(*(*(&v72 + 1) + 8 * v42), v36, v37, v38, v39, v64, v65);
          v29 = objc_msgSend_region_addingRange_(TSTCellRegion, v45, v43, v44, v45);

          ++v42;
          v43 = v29;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v72, v76, 16);
      }

      while (v40);
    }

    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_2211C2828;
    v69[3] = &unk_278460BD0;
    v69[4] = self;
    v46 = v64;
    v70 = v46;
    v47 = v65;
    v71 = v47;
    objc_msgSend_enumerateCellRangesUsingBlock_(v29, v48, v69, v49, v50);
    if (objc_msgSend_count(v47, v51, v52, v53, v54) || objc_msgSend_count(v46, v55, v56, v57, v58))
    {
      if (!self->_attachmentCellStorageToLayoutMap)
      {
        v59 = objc_alloc_init(MEMORY[0x277D812B8]);
        attachmentCellStorageToLayoutMap = self->_attachmentCellStorageToLayoutMap;
        self->_attachmentCellStorageToLayoutMap = v59;
      }

      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = sub_2211C2FE4;
      v68[3] = &unk_278460BF8;
      v68[4] = self;
      objc_msgSend_enumerateObjectsUsingBlock_(v46, v55, v68, v57, v58, v64);
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_2211C3088;
      v67[3] = &unk_278460C20;
      v67[4] = self;
      objc_msgSend_enumerateObjectsUsingBlock_(v47, v61, v67, v62, v63);
    }

    self->mShouldUpdateAttachmentChildren = 0;
  }
}

- (CGSize)maximumFrameSizeForChild:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_containedTextEditingLayout(self, v5, v6, v7, v8);

  if (v9 != v4)
  {
    objc_opt_class();
    v14 = TSUDynamicCast();
    v19 = v14;
    if (!v14)
    {
      v148.receiver = self;
      v148.super_class = TSTLayout;
      [(TSTLayout *)&v148 maximumFrameSizeForChild:v4];
      v86 = v91;
      v87 = v92;
LABEL_56:

      goto LABEL_57;
    }

    v20 = objc_msgSend_cachedPadding(v14, v15, v16, v17, v18);
    objc_msgSend_leftInset(v20, v21, v22, v23, v24);
    v26 = v25;
    v31 = objc_msgSend_cachedPadding(v19, v27, v28, v29, v30);
    objc_msgSend_rightInset(v31, v32, v33, v34, v35);
    v37 = v36;
    v42 = objc_msgSend_cachedPadding(v19, v38, v39, v40, v41);
    objc_msgSend_topInset(v42, v43, v44, v45, v46);
    v48 = v47;
    v53 = objc_msgSend_cachedPadding(v19, v49, v50, v51, v52);
    objc_msgSend_bottomInset(v53, v54, v55, v56, v57);
    v59 = v58;

    objc_msgSend_maxSize(v19, v60, v61, v62, v63);
    v147 = v64;
    v66 = v65;
    v145 = *&v65;
    if (objc_msgSend_cachedCellWraps(v19, v67, v68, v69, v70))
    {
      v75 = objc_msgSend_cachedMergeRange(v19, v71, v72, v73, v74);
      if (v75 == 0x7FFFFFFF || (v75 & 0xFFFF00000000) == 0x7FFF00000000 || !(v76 >> 32) || !v76)
      {
        v82 = objc_msgSend_cachedCellID(v19, v76, v77, v78, v79, v145);
        v83 = 0x100000001;
      }

      else
      {
        v82 = objc_msgSend_cachedMergeRange(v19, v76, v77, v78, v79);
        v83 = v80;
      }

      if (WORD2(v82) == 0x7FFF)
      {
        v114 = 0xFFFFFFFFLL;
      }

      else
      {
        v114 = WORD2(v82);
      }

      v115 = v82 << 32;
      v116 = 0xFFFFFFFF00000000;
      if (v82 == 0x7FFFFFFF)
      {
        v115 = 0xFFFFFFFF00000000;
      }

      v117 = (v83 + v114 - 1);
      if (HIDWORD(v83))
      {
        v116 = ((v115 + v83) & 0xFFFFFFFF00000000) - 0x100000000;
      }

      if (!v83)
      {
        v117 = 0xFFFFFFFFLL;
      }

      if (objc_msgSend_p_layoutWhollyContainsGridRange_(self, v80, v115 | v114, v117 | v116, v81, v145))
      {
        v122 = v26;
        v123 = v66;
        v124 = v147;
      }

      else
      {
        v131 = objc_msgSend_layoutEngine(self, v118, v119, v120, v121);
        objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v131, v132, v82, v83, 1);
        v123 = v133;
        v124 = v134;
        v122 = v26;
      }

      goto LABEL_44;
    }

    v93 = objc_msgSend_cachedParagraphAlignment(v19, v71, v72, v73, v74);
    v102 = objc_msgSend_cachedCellID(v19, v94, v95, v96, v97);
    if (v93 == 4)
    {
      v93 = objc_msgSend_naturalAlignmentForCellID_(self, v98, v102, v100, v101);
    }

    v103 = objc_msgSend_tableInfo(self, v98, v99, v100, v101, v145);
    v107 = objc_msgSend_mergeRangeAtCellID_(v103, v104, v102, v105, v106);
    v109 = v108;

    if (v107 == 0x7FFFFFFF || (v107 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v109) || !v109)
    {
      v109 = 0x100000001;
    }

    else
    {
      v102 = v107;
    }

    if (v93 == 2)
    {
      v135 = objc_msgSend_layoutEngine(self, v110, v111, v112, v113);
      v102 = v102;
      v109 = v109 & 0xFFFFFFFF00000000 | objc_msgSend_numberOfColumns(v135, v136, v137, v138, v139);
    }

    else
    {
      v125 = HIDWORD(v102);
      if (v93 != 1)
      {
        if (!v93)
        {
          v126 = objc_msgSend_layoutEngine(self, v110, v111, v112, v113);
          v109 = (objc_msgSend_numberOfColumns(v126, v127, v128, v129, v130) - WORD2(v102)) | v109 & 0xFFFFFFFF00000000;
        }

        goto LABEL_43;
      }

      v102 = v102;
      v109 = (v109 + v125) | v109 & 0xFFFFFFFF00000000;
    }

    LOWORD(v125) = 0;
LABEL_43:
    sub_2211BF2D0(self, v102 & 0xFFFF0000FFFFFFFFLL | (v125 << 32), v109);
    v123 = v140;
    v124 = v141;
    v122 = v26;
LABEL_44:
    v142 = v124 <= 0.0;
    if (v123 <= 0.0)
    {
      v142 = 1;
    }

    if (v142)
    {
      v87 = 1.79769313e308;
    }

    else
    {
      v87 = v124;
    }

    if (v142)
    {
      v86 = 1.79769313e308;
    }

    else
    {
      v86 = v123;
    }

    if (!v142 && v147 > v48 + v59 && v146 > v122 + v37)
    {
      v86 = v123 - (v122 + v37);
      v87 = v124 - (v48 + v59);
    }

    goto LABEL_56;
  }

  objc_msgSend_computedEditingCellContentFrame(self, v10, v11, v12, v13);
  v86 = v84;
  v87 = v85;
  v88 = self->mCachedPaddingForEditingCell.left + self->mCachedPaddingForEditingCell.right;
  v89 = self->mCachedPaddingForEditingCell.top + self->mCachedPaddingForEditingCell.bottom;
  if (v85 > v89 && v84 > v88)
  {
    v86 = v84 - v88;
    v87 = v85 - v89;
  }

LABEL_57:

  v143 = v86;
  v144 = v87;
  result.height = v144;
  result.width = v143;
  return result;
}

- (UIEdgeInsets)captionEdgeInsets
{
  v25.receiver = self;
  v25.super_class = TSTLayout;
  [(TSTLayout *)&v25 captionEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v15 = objc_msgSend_info(self, v11, v12, v13, v14);
  isInlineWithText = objc_msgSend_isInlineWithText(v15, v16, v17, v18, v19);

  if (isInlineWithText)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v6;
  }

  if (isInlineWithText)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v10;
  }

  v23 = v4;
  v24 = v8;
  result.right = v22;
  result.bottom = v24;
  result.left = v21;
  result.top = v23;
  return result;
}

- (void)updateChildrenFromInfo
{
  objc_msgSend_p_prepareAttachmentCellsIfNeeded(self, a2, v2, v3, v4);
  v6.receiver = self;
  v6.super_class = TSTLayout;
  [(TSWPTextHostLayout *)&v6 updateChildrenFromInfo];
}

- (id)childInfosForChildLayouts
{
  v23.receiver = self;
  v23.super_class = TSTLayout;
  v3 = [(TSTLayout *)&v23 childInfosForChildLayouts];
  if (objc_msgSend_count(self->_attachmentCellStorageToLayoutMap, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_allKeys(self->_attachmentCellStorageToLayoutMap, v8, v9, v10, v11);
    v17 = objc_msgSend_mutableCopy(v12, v13, v14, v15, v16);

    v21 = objc_msgSend_arrayByAddingObjectsFromArray_(v3, v18, v17, v19, v20);

    v3 = v21;
  }

  return v3;
}

- (void)removeContainedTextEditingLayout
{
  self->mRemovingContainedTextEditorLayout = 1;
  v6 = objc_msgSend_layoutEngine(self, a2, v2, v3, v4);
  objc_msgSend_clearDynamicStrokesForCellRange_(v6, v7, *&self->mEditingSpillingTextRange.origin, *&self->mEditingSpillingTextRange.size, v8);

  self->mEditingSpillingTextRange = xmmword_2217E07C0;
  self->mPrevEditingSpillingTextRange = xmmword_2217E07C0;
  self->mSpillingTextSize = *MEMORY[0x277CBF3A8];
  self->mRemovingContainedTextEditorLayout = 0;
}

- (void)removeAttachmentCellLayouts
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_objectEnumerator(self->_attachmentCellStorageToLayoutMap, a2, v2, v3, v4, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v12)
  {
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_removeFromParent(*(*(&v19 + 1) + 8 * v14++), v8, v9, v10, v11);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v19, v23, 16);
    }

    while (v12);
  }

  objc_msgSend_removeAllObjects(self->_attachmentCellStorageToLayoutMap, v15, v16, v17, v18);
}

- (id)attachmentCellLayoutForCellID:(TSUCellCoord)a3 optionalCell:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v7, v8, v9, v10);
  v16 = objc_msgSend_supportsInlineAttachments(v11, v12, v13, v14, v15);

  if (v16)
  {
    if (v6)
    {
      v25 = v6;
    }

    else
    {
      v31 = objc_msgSend_tableInfo(self, v17, v18, v19, v20);
      v25 = objc_msgSend_cellAtCellID_(v31, v32, *&a3, v33, v34);
    }

    if (objc_msgSend_valueType(v25, v21, v22, v23, v24) == 9)
    {
      v35 = objc_msgSend_richTextValue(v25, v26, v27, v28, v29);
      v30 = objc_msgSend_attachmentCount(v35, v36, v37, v38, v39);

      if (v30)
      {
        objc_opt_class();
        v44 = objc_msgSend_layoutController(self, v40, v41, v42, v43);
        v49 = objc_msgSend_richTextValue(v25, v45, v46, v47, v48);
        v53 = objc_msgSend_layoutForInfo_(v44, v50, v49, v51, v52);
        v30 = TSUCheckedDynamicCast();
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (double)viewScaleForZoomingToSelectionPath:(id)a3 targetPointSize:(double)a4
{
  v5.receiver = self;
  v5.super_class = TSTLayout;
  [(TSTLayout *)&v5 viewScaleForZoomingToSelectionPath:a3 targetPointSize:a4];
  return result;
}

- (CGPoint)calculatePointFromSearchReference:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)calculatePointFromSearchReferenceWithoutValidation:(id)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)activityLineUnscaledEndPointForSearchReference:(id)a3
{
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)unscaledCommentFlagAnchorInfoForSearchReference:(id)a3
{
  v3 = objc_alloc(MEMORY[0x277D80638]);
  isVertical = objc_msgSend_initWithLeftAnchor_rightAnchor_isVertical_(v3, v4, 0, v5, v6, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));

  return isVertical;
}

- (BOOL)orderedBefore:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_layoutHint(self, v5, v6, v7, v8);
  v14 = objc_msgSend_cellRange(v9, v10, v11, v12, v13);
  v19 = objc_msgSend_layoutHint(v4, v15, v16, v17, v18);
  v24 = objc_msgSend_cellRange(v19, v20, v21, v22, v23);
  v25 = WORD2(v14) < WORD2(v24);
  if (v14 != v24)
  {
    v25 = 0;
  }

  v26 = v14 < v24 || v25;

  return v26;
}

- (BOOL)canvasShouldScrollForSelectionPath:(id)a3
{
  v4 = a3;
  objc_msgSend_rectInRootForSelectionPath_(self, v5, v4, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  x = self->mCanvasVisibleRect.origin.x;
  y = self->mCanvasVisibleRect.origin.y;
  width = self->mCanvasVisibleRect.size.width;
  height = self->mCanvasVisibleRect.size.height;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  if (CGRectIsInfinite(v40))
  {
    v20 = 1;
  }

  else
  {
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v42 = CGRectIntersection(v41, v53);
    v38 = v42.origin.y;
    v39 = v42.origin.x;
    v36 = v42.size.height;
    v37 = v42.size.width;
    v25 = objc_msgSend_orderedSelections(v4, v21, v22, v23, v24);
    v30 = objc_msgSend_lastObject(v25, v26, v27, v28, v29);

    objc_opt_class();
    LODWORD(v25) = objc_opt_isKindOfClass();
    v43.origin.y = v38;
    v43.origin.x = v39;
    v43.size.height = v36;
    v43.size.width = v37;
    v20 = 1;
    if (((CGRectIsNull(v43) | v25) & 1) == 0)
    {
      v44.origin.x = v9;
      v44.origin.y = v11;
      v44.size.width = v13;
      v44.size.height = v15;
      v54.origin.y = v38;
      v54.origin.x = v39;
      v54.size.height = v36;
      v54.size.width = v37;
      if (CGRectEqualToRect(v44, v54) || ((v45.origin.x = v9, v45.origin.y = v11, v45.size.width = v13, v45.size.height = v15, v33 = CGRectGetWidth(v45), v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, v33 >= CGRectGetWidth(v46)) || (v47.origin.y = v38, v47.origin.x = v39, v47.size.height = v36, v47.size.width = v37, v34 = CGRectGetWidth(v47), v48.origin.x = v9, v48.origin.y = v11, v48.size.width = v13, v48.size.height = v15, v34 >= CGRectGetWidth(v48))) && ((v49.origin.x = v9, v49.origin.y = v11, v49.size.width = v13, v49.size.height = v15, v35 = CGRectGetHeight(v49), v50.origin.x = x, v50.origin.y = y, v50.size.width = width, v50.size.height = height, v35 >= CGRectGetHeight(v50)) || (v51.origin.y = v38, v51.origin.x = v39, v51.size.height = v36, v51.size.width = v37, v31 = CGRectGetHeight(v51), v52.origin.x = v9, v52.origin.y = v11, v52.size.width = v13, v52.size.height = v15, v31 >= CGRectGetHeight(v52))))
      {
        v20 = 0;
      }
    }
  }

  return v20;
}

- (UIEdgeInsets)adjustedInsetsForTarget:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_cachedPadding(v5, v6, v7, v8, v9);

    if (v11)
    {
      v12 = objc_msgSend_cachedPadding(v10, v6, v7, v8, v9);
      objc_msgSend_edgeInsets(v12, v13, v14, v15, v16);
LABEL_8:
      left = v18;
      right = v20;
      *&v35 = v19;
      *&v36 = v17;

      goto LABEL_9;
    }
  }

  __asm { FMOV            V0.2D, #-1.0 }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&self->mCachedPaddingForEditingCell.top, _Q0), vceqq_f64(*&self->mCachedPaddingForEditingCell.bottom, _Q0))))) & 1) == 0 || !self->mContainedTextEditingLayout)
  {
    v12 = objc_msgSend_layoutEngine(self, v6, v7, v8, v9);
    objc_msgSend_paddingForCellID_(v12, v28, 0, v29, v30);
    goto LABEL_8;
  }

  v35 = *&self->mCachedPaddingForEditingCell.bottom;
  v36 = *&self->mCachedPaddingForEditingCell.top;
  left = self->mCachedPaddingForEditingCell.left;
  right = self->mCachedPaddingForEditingCell.right;
LABEL_9:

  v32 = *&v35;
  v31 = *&v36;
  v33 = left;
  v34 = right;
  result.right = v34;
  result.bottom = v32;
  result.left = v33;
  result.top = v31;
  return result;
}

- (double)positionForColumnIndex:(unint64_t)a3 bodyWidth:(double)a4 target:(id)a5 outWidth:(double *)a6 outGap:(double *)a7
{
  objc_msgSend_adjustedInsetsForTarget_(self, a2, a5, a5, a6, a7);
  v13 = 10.0;
  if (a4 <= 10.0)
  {
    v13 = a4;
  }

  if (v12 >= (a4 - v13) * 0.5)
  {
    v14 = (a4 - v13) * 0.5;
  }

  else
  {
    v14 = v12;
  }

  v15 = a4 + v14 * -2.0;
  if (v15 < v13)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTLayout positionForColumnIndex:bodyWidth:target:outWidth:outGap:]", v10, v11);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 6256, 0, "created an undersized column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (a6)
  {
    *a6 = v15;
  }

  return v14;
}

- (CGRect)p_textFrameForWrappingCell:(TSUCellCoord)a3 defaultRowHeight:(BOOL *)a4
{
  v8 = objc_msgSend_tableInfo(self, a2, *&a3, a4, v4);
  v12 = objc_msgSend_mergeRangeAtCellID_(v8, v9, *&a3, v10, v11);
  v14 = v13;

  if (v12 != 0x7FFFFFFF && (v12 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v14) && v14)
  {
    v19 = objc_msgSend_layoutHint(self, v15, v16, v17, v18);
    v24 = objc_msgSend_cellRange(v19, v20, v21, v22, v23);
    v26 = v25;

    v27 = sub_221119E0C(v12, v14, v24, v26);
    if ((v27 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && HIDWORD(v28) && v28 && (v27 != *MEMORY[0x277D813C8] || ((*MEMORY[0x277D813C8] ^ v27) & 0x101FFFF00000000) != 0 || v28 != *(MEMORY[0x277D813C8] + 8)))
    {
      v14 = v28;
      v12 = v27;
    }

    v32 = objc_msgSend_tableInfo(self, v28, v29, v30, v31);
    v35 = v32;
    if (v12 == 0x7FFFFFFF)
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v32, v33, 0x7FFFFFFFLL, a4, v34);
    }

    else
    {
      objc_msgSend_heightOfRowAtIndex_isDefault_(v32, v33, (v12 + HIDWORD(v14) - 1), a4, v34);
    }

    v36 = v12 << 32;
    if (v12 == 0x7FFFFFFF)
    {
      v36 = 0xFFFFFFFF00000000;
    }

    if (WORD2(v12) == 0x7FFF)
    {
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      v37 = WORD2(v12);
    }

    v38 = v36 | v37;
    v39 = (v14 + v37 - 1);
    if (!v14)
    {
      v39 = 0xFFFFFFFFLL;
    }

    v40 = ((v36 + v14) & 0xFFFFFFFF00000000 | v39) - 0x100000000;
    goto LABEL_32;
  }

  if (a3.column == 0x7FFF)
  {
    column = 0xFFFFFFFFLL;
  }

  else
  {
    column = a3.column;
  }

  v42 = *&a3 << 32;
  if (a3.row == 0x7FFFFFFFLL)
  {
    v42 = 0xFFFFFFFF00000000;
  }

  v38 = v42 | column;
  if (a4 && a3.row != 0x7FFFFFFFLL && (*&a3 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v35 = objc_msgSend_tableInfo(self, v15, v16, v17, v18);
    objc_msgSend_heightOfRowAtIndex_isDefault_(v35, v43, *&a3, a4, v44);
    v40 = v38;
LABEL_32:

    goto LABEL_34;
  }

  v40 = v42 | column;
LABEL_34:

  v45 = sub_2211BBEC4(self, v38, v40, &unk_2834A2AF0);
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (CGRect)computedEditingCellContentFrame
{
  x = self->mComputedEditingCellContentFrame.origin.x;
  y = self->mComputedEditingCellContentFrame.origin.y;
  width = self->mComputedEditingCellContentFrame.size.width;
  height = self->mComputedEditingCellContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)naturalAlignmentForCellID:(TSUCellCoord)a3
{
  v11 = objc_msgSend_p_defaultAlignmentForTableWritingDirection(self, a2, *&a3, v3, v4);
  if (a3.row == 0x7FFFFFFF || (*&a3 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTLayout naturalAlignmentForCellID:]", v9, v10);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v18, v13, v17, 6523, 0, "Contained text editing layout but invalid editing cell ID?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_tableInfo(self, v7, v8, v9, v10);
  v28 = objc_msgSend_newCell(v23, v24, v25, v26, v27);

  v33 = objc_msgSend_tableInfo(self, v29, v30, v31, v32);
  Cell_atCellID = objc_msgSend_getCell_atCellID_(v33, v34, v28, *&a3, v35);

  if (!Cell_atCellID && objc_msgSend_valueType(v28, v37, v38, v39, v40) == 9)
  {
    v41 = objc_msgSend_richTextStorageForLayout(v28, v37, v38, v39, v40);
    v45 = objc_msgSend_writingDirectionForParagraphAtCharIndex_(v41, v42, 0, v43, v44);

    if (v45 != -1)
    {
      v11 = v45 == 1;
    }

LABEL_11:
    if (objc_msgSend_valueIsNumberOrTime(v28, v46, v47, v48, v49))
    {
      v62 = objc_msgSend_tableInfo(self, v58, v59, v60, v61);
      v65 = objc_msgSend_textStyleAtCellID_isDefault_(v62, v63, *&a3, 0, v64);

      if (objc_msgSend_intValueForProperty_(v65, v66, 86, v67, v68) == 4)
      {
        v11 = 1;
      }
    }

    goto LABEL_15;
  }

  v50 = objc_msgSend_tableInfo(self, v37, v38, v39, v40);
  v53 = objc_msgSend_textStyleAtCellID_isDefault_(v50, v51, *&a3, 0, v52);

  v57 = objc_msgSend_intValueForProperty_(v53, v54, 44, v55, v56);
  if (v57 != -1)
  {
    v11 = v57 == 1;
  }

  if (!Cell_atCellID)
  {
    goto LABEL_11;
  }

LABEL_15:

  return v11;
}

- (TSUCellCoord)p_cellIDForWPLayout:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v9 = v4;
  if (v4)
  {
    v10 = objc_msgSend_cachedCellID(v4, v5, v6, v7, v8);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTLayout p_cellIDForWPLayout:]", v7, v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 6577, 0, "TSTLayout should only parent layouts for editing text or cells with inline attachments!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    v10 = 0x7FFF7FFFFFFFLL;
  }

  return v10;
}

- (BOOL)forceParentAutosizeFlagsForTextLayout:(id)a3
{
  v6 = objc_msgSend_storage(a3, a2, a3, v3, v4);
  v11 = objc_msgSend_tableNameEditingStorage(self, v7, v8, v9, v10);
  LOBYTE(self) = v6 == v11;

  return self;
}

- (unint64_t)autosizeFlagsForTextLayout:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->mContainedTextEditingLayout != v4)
  {
    v10 = objc_msgSend_storage(v4, v5, v6, v7, v8);
    v15 = objc_msgSend_tableNameEditingStorage(self, v11, v12, v13, v14);
    v20 = v15;
    if (v10 == v15)
    {
      v28 = objc_msgSend_layoutEngine(self, v16, v17, v18, v19);
      v33 = objc_msgSend_styleProvidingSource(v28, v29, v30, v31, v32);

      if (v33)
      {
        v26 = objc_msgSend_layoutEngine(self, v34, v35, v36, v37);
        v42 = objc_msgSend_styleProvidingSource(v26, v38, v39, v40, v41);
        if (v42)
        {
          v27 = 3;
        }

        else
        {
          v27 = 96;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    objc_opt_class();
    v21 = TSUDynamicCast();
    v26 = v21;
    if (v21)
    {
      v27 = objc_msgSend_cachedAutoSizeFlags(v21, v22, v23, v24, v25);
    }

    else
    {
      v27 = 96;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (self->mContainedTextEditorTextWraps)
  {
    v27 = 1;
  }

  else
  {
    v27 = 37;
  }

LABEL_16:

  return v27;
}

- (double)maxAutoGrowLineWidthForTextLayout:(id)a3
{
  v8 = a3;
  if (self->mContainedTextEditingLayout == v8)
  {
    objc_msgSend_computedEditingCellContentFrame(self, v4, v5, v6, v7);
    v28 = v29;
  }

  else
  {
    objc_opt_class();
    v9 = TSUCheckedDynamicCast();
    if (objc_msgSend_cachedCellWraps(v9, v10, v11, v12, v13))
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTLayout maxAutoGrowLineWidthForTextLayout:]", v15, v16);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v20, v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 6616, 0, "should only be asking max width for unwrapped rich layouts");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
    }

    v28 = 1.79769313e308;
  }

  return v28;
}

- (int)verticalAlignmentForTextLayout:(id)a3
{
  v4 = a3;
  if (self->mContainedTextEditingLayout == v4)
  {
    mCachedVerticalAlignmentForEditingCell = self->mCachedVerticalAlignmentForEditingCell;
  }

  else
  {
    objc_opt_class();
    v5 = TSUCheckedDynamicCast();
    mCachedVerticalAlignmentForEditingCell = objc_msgSend_cachedVerticalAlignment(v5, v6, v7, v8, v9);
  }

  return mCachedVerticalAlignmentForEditingCell;
}

- (void)invalidateForAutosizingTextLayout:(id)a3
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->mComputedEditingCellContentFrame.origin = *MEMORY[0x277CBF3A0];
  self->mComputedEditingCellContentFrame.size = v3;
}

- (CGRect)nonAutosizedFrameForTextLayout:(id)a3
{
  v7 = a3;
  if (self->mContainedTextEditingLayout == v7)
  {
    objc_msgSend_p_nonAutosizedFrameForTextEditingLayout_(self, v4, v7, v5, v6);
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  else
  {
    objc_opt_class();
    v8 = TSUCheckedDynamicCast();
    objc_msgSend_p_nonAutosizedFrameForRichTextLayout_(self, v9, v8, v10, v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)p_nonAutosizedFrameForRichTextLayout:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_cachedMergeRange(v4, v5, v6, v7, v8);
  if (v9 == 0x7FFFFFFF || (v9 & 0xFFFF00000000) == 0x7FFF00000000 || !(v10 >> 32) || !v10)
  {
    v14 = objc_msgSend_cachedCellID(v4, v10, v11, v12, v13);
    v16 = 0x100000001;
  }

  else
  {
    v14 = objc_msgSend_cachedMergeRange(v4, v10, v11, v12, v13);
    v16 = v15;
  }

  v59.origin.x = sub_2211BC850(self, v14, v16);
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  if (CGRectIsEmpty(v59))
  {
    v25 = *MEMORY[0x277CBF3A0];
    v26 = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v27 = objc_msgSend_cachedCellID(v4, v21, v22, v23, v24);
    if (WORD2(v27) == 0x7FFF)
    {
      v30 = 0xFFFFFFFFLL;
    }

    else
    {
      v30 = WORD2(v27);
    }

    v31 = v27 << 32;
    if (v27 == 0x7FFFFFFF)
    {
      v31 = 0xFFFFFFFF00000000;
    }

    v32 = objc_msgSend_p_layoutWhollyContainsGridRange_(self, v28, v31 | v30, v31 | v30, v29);
    if (WORD2(v14) == 0x7FFF)
    {
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      v35 = WORD2(v14);
    }

    v36 = v14 << 32;
    if (v14 == 0x7FFFFFFF)
    {
      v36 = 0xFFFFFFFF00000000;
    }

    v37 = v36 | v35;
    v38 = (v16 + v35 - 1);
    v39 = ((v36 + v16) & 0xFFFFFFFF00000000) - 0x100000000;
    if (!HIDWORD(v16))
    {
      v39 = 0xFFFFFFFF00000000;
    }

    if (!v16)
    {
      v38 = 0xFFFFFFFFLL;
    }

    if (v32)
    {
      v40 = v38 | v36;
      if (self->mLayoutDirectionIsLeftToRight)
      {
        v41 = v37;
      }

      else
      {
        v41 = v40;
      }

      v25 = sub_2211BBEC4(self, v41, v41, &unk_2834A2B10);
      v26 = v42;
    }

    else
    {
      objc_msgSend_p_rangeUpAndLeftOfIntersectionRangeOfGridRange_(self, v33, v37, v38 | v39, v34);
      v44 = v43;
      v46 = v45;
      v51 = objc_msgSend_layoutEngine(self, v47, v48, v49, v50);
      objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v51, v52, v14, v16, 1);
      width = v53;
      height = v54;
      v25 = x - v44;
      v26 = y - v46;
    }
  }

  v55 = v25;
  v56 = v26;
  v57 = width;
  v58 = height;
  result.size.height = v58;
  result.size.width = v57;
  result.origin.y = v56;
  result.origin.x = v55;
  return result;
}

- (CGSize)p_rangeUpAndLeftOfIntersectionRangeOfGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x4012000000;
  v63 = sub_2211C5130;
  v64 = nullsub_22;
  v65 = &unk_22188E88F;
  v66 = -1;
  v67 = -1;
  v7 = objc_msgSend_layoutEngine(self, a2, *&a3.var0, *&a3.var1, v3);
  isDynamicallyRepressingFrozenHeaderRows = objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_layoutEngine(self, v13, v14, v15, v16);
  isDynamicallyRepressingFrozenHeaderColumns = objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v17, v18, v19, v20, v21);

  v27 = objc_msgSend_spaceBundle(self, v23, v24, v25, v26);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_2211C5140;
  v56[3] = &unk_278460C48;
  v57 = (isDynamicallyRepressingFrozenHeaderRows | isDynamicallyRepressingFrozenHeaderColumns) & 1;
  v58 = isDynamicallyRepressingFrozenHeaderColumns;
  v59 = isDynamicallyRepressingFrozenHeaderRows;
  v56[5] = var0;
  v56[6] = var1;
  v56[4] = &v60;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v27, v28, v56, v29, v30);

  v31 = v61[6];
  v36 = objc_msgSend_layoutEngine(self, v32, v33, v34, v35);
  v38 = v36;
  v39 = LOWORD(var0.var0) << 32;
  if (var0.var0 == -1)
  {
    v39 = 0x7FFF00000000;
  }

  v40 = 0x7FFFFFFFLL;
  if (HIDWORD(*&var0) != 0xFFFFFFFF)
  {
    v40 = HIDWORD(*&var0);
  }

  v41 = v31 - (*&var0 & 0xFFFFFFFF00000000);
  if (HIDWORD(v41))
  {
    v42 = ((*&var0 + (v41 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  else
  {
    v42 = 0xFFFFFFFF00000000;
  }

  v44 = HIDWORD(v42) < HIDWORD(*&var0) || v42 == 0xFFFFFFFF00000000 || HIDWORD(*&var0) == 0xFFFFFFFF;
  v45 = ((HIDWORD(v42) - var0.var1) << 32) + 0x100000000;
  if (v44)
  {
    v45 = 0;
  }

  v46 = (v31 - 1);
  if (v31 == var0.var0)
  {
    v46 = 0xFFFFFFFFLL;
  }

  v48 = v46 < var0.var0 || v46 == 0xFFFFFFFFLL || var0.var0 == -1;
  v49 = (v46 - LOWORD(var0.var0) + 1);
  if (v48)
  {
    v49 = 0;
  }

  objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v36, v37, v39 | v40, v45 | v49, 1);
  v51 = v50;
  v53 = v52;

  _Block_object_dispose(&v60, 8);
  v54 = v51;
  v55 = v53;
  result.height = v55;
  result.width = v54;
  return result;
}

- (BOOL)p_layoutWhollyContainsGridRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v7 = objc_msgSend_layoutEngine(self, a2, *&a3.var0, *&a3.var1, v3);
  isDynamicallyRepressingFrozenHeaderRows = objc_msgSend_isDynamicallyRepressingFrozenHeaderRows(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_layoutEngine(self, v13, v14, v15, v16);
  LOBYTE(v7) = objc_msgSend_isDynamicallyRepressingFrozenHeaderColumns(v17, v18, v19, v20, v21);

  v26 = objc_msgSend_spaceBundle(self, v22, v23, v24, v25);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2211C5384;
  v31[3] = &unk_278460C48;
  v32 = (isDynamicallyRepressingFrozenHeaderRows | v7) & 1;
  v33 = v7;
  v34 = isDynamicallyRepressingFrozenHeaderRows;
  v31[5] = var0;
  v31[6] = var1;
  v31[4] = &v35;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v26, v27, v31, v28, v29);

  LOBYTE(var0.var0) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);
  return var0.var0;
}

- (BOOL)forceParentAutosizedFrameForTextLayout:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_layoutEngine(self, v5, v6, v7, v8);
  v18 = objc_msgSend_styleProvidingSource(v9, v10, v11, v12, v13);
  if (v18)
  {
    v19 = objc_msgSend_storage(v4, v14, v15, v16, v17);
    v24 = objc_msgSend_tableNameEditingStorage(self, v20, v21, v22, v23);
    v25 = v19 == v24;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (CGRect)autosizedFrameForTextLayout:(id)a3 textSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v12 = v7;
  if (self->mContainedTextEditingLayout == v7)
  {
    objc_msgSend_p_autosizedFrameForTextEditingLayout_textSize_(self, v8, v7, v10, v11, width, height);
    goto LABEL_9;
  }

  v13 = objc_msgSend_storage(v7, v8, v9, v10, v11);
  v18 = objc_msgSend_tableNameEditingStorage(self, v14, v15, v16, v17);
  v23 = v18;
  if (v13 == v18)
  {
    v40 = objc_msgSend_layoutEngine(self, v19, v20, v21, v22);
    v45 = objc_msgSend_styleProvidingSource(v40, v41, v42, v43, v44);

    if (!v45)
    {
      goto LABEL_4;
    }

    v36 = sub_2211C0188(self);
LABEL_9:
    v29 = v36;
    v31 = v37;
    v33 = v38;
    v35 = v39;
    goto LABEL_12;
  }

LABEL_4:
  objc_opt_class();
  v27 = TSUDynamicCast();
  if (v27)
  {
    objc_msgSend_p_autosizedFrameForRichTextLayout_textSize_(self, v24, v27, v25, v26, width, height);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = *MEMORY[0x277CBF398];
    v31 = *(MEMORY[0x277CBF398] + 8);
    v33 = *(MEMORY[0x277CBF398] + 16);
    v35 = *(MEMORY[0x277CBF398] + 24);
  }

LABEL_12:
  v46 = v29;
  v47 = v31;
  v48 = v33;
  v49 = v35;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

- (CGRect)p_autosizedFrameForTextEditingLayout:(id)a3 textSize:(CGSize)a4
{
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)p_autosizedFrameForRichTextLayout:(id)a3 textSize:(CGSize)a4
{
  width = a4.width;
  v6 = a3;
  v11 = objc_msgSend_cachedCellID(v6, v7, v8, v9, v10);
  v12 = sub_2211BC850(self, v11, 0x100000001uLL);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v23 = objc_msgSend_cachedCellID(v6, v19, v20, v21, v22);
  if (WORD2(v23) == 0x7FFF)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = WORD2(v23);
  }

  v27 = v23 << 32;
  if (v23 == 0x7FFFFFFF)
  {
    v27 = 0xFFFFFFFF00000000;
  }

  v28 = v27 | v26;
  if (objc_msgSend_p_layoutWhollyContainsGridRange_(self, v24, v27 | v26, v27 | v26, v25))
  {
    v12 = sub_2211BBEC4(self, v28, v28, &unk_2834A2B10);
    v14 = v33;
  }

  if (v16 <= width)
  {
    if (objc_msgSend_cachedParagraphAlignment(v6, v29, v30, v31, v32))
    {
      v38 = objc_msgSend_cachedParagraphAlignment(v6, v34, v35, v36, v37);
      v39 = width - v16;
      if (v38 == 1)
      {
        v12 = v12 - v39;
        objc_msgSend_setCachedAutosizedFrame_(v6, v34, v35, v36, v37, v12, v14, width, v18);
        goto LABEL_15;
      }

      v12 = v12 + v39 * -0.5;
    }

    objc_msgSend_setCachedAutosizedFrame_(v6, v34, v35, v36, v37, v12, v14, width, v18);
    goto LABEL_15;
  }

  width = v16;
  objc_msgSend_setCachedAutosizedFrame_(v6, v29, v30, v31, v32, v12, v14, v16, v18);
LABEL_15:

  v40 = v12;
  v41 = v14;
  v42 = width;
  v43 = v18;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)p_computeSpillingTextFrameForEditingLayout:(id)a3 textSize:(CGSize)a4 editingSpillRange:(TSUCellRect *)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  objc_msgSend_computedEditingCellContentFrame(self, v9, v10, v11, v12);
  if (width >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = width;
  }

  self->mSpillingTextSize.width = v17;
  self->mSpillingTextSize.height = height;
  v18 = MEMORY[0x277D81150];
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTLayout p_computeSpillingTextFrameForEditingLayout:textSize:editingSpillRange:]", v14, v15);
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTLayout.mm", v21, v22);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 7178, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  v29 = MEMORY[0x277CBEAD8];
  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"%s: %s", v31, v32, "Do not call method", "[TSTLayout p_computeSpillingTextFrameForEditingLayout:textSize:editingSpillRange:]");
  v35 = objc_msgSend_exceptionWithName_reason_userInfo_(v29, v34, *MEMORY[0x277CBE658], v33, 0);
  v36 = v35;

  objc_exception_throw(v35);
}

- (id)dependentLayouts
{
  v23.receiver = self;
  v23.super_class = TSTLayout;
  v7 = [(TSTLayout *)&v23 dependentLayouts];
  if (self->mContainedTextEditingLayout || objc_msgSend_count(self->_attachmentCellStorageToLayoutMap, v3, v4, v5, v6))
  {
    v8 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v3, v7, v5, v6);
    v12 = v8;
    mContainedTextEditingLayout = self->mContainedTextEditingLayout;
    if (mContainedTextEditingLayout)
    {
      objc_msgSend_addObject_(v8, v9, mContainedTextEditingLayout, v10, v11);
    }

    if (objc_msgSend_count(self->_attachmentCellStorageToLayoutMap, v9, mContainedTextEditingLayout, v10, v11))
    {
      v18 = objc_msgSend_allValues(self->_attachmentCellStorageToLayoutMap, v14, v15, v16, v17);
      objc_msgSend_addObjectsFromArray_(v12, v19, v18, v20, v21);
    }
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (CGRect)maskRectForTextLayout:(id)a3
{
  v7 = a3;
  if (self->mContainedTextEditingLayout == v7)
  {
    objc_msgSend_p_maskRectForTextEditingLayout_(self, v4, v7, v5, v6);
    v13 = v20;
    v15 = v21;
    v17 = v22;
    v19 = v23;
  }

  else
  {
    objc_opt_class();
    v8 = TSUCheckedDynamicCast();
    objc_msgSend_p_maskRectForRichTextLayout_(self, v9, v8, v10, v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)p_maskRectForTextEditingLayout:(id)a3
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)p_maskRectForRichTextLayout:(id)a3
{
  v4 = a3;
  objc_msgSend_cachedMaskRect(v4, v5, v6, v7, v8);
  if (CGRectIsEmpty(v89))
  {
    v13 = objc_msgSend_p_spillRangeForMaskingRichTextLayout_(self, v9, v4, v11, v12);
    v15 = v14;
    v16 = sub_2211BC850(self, v13, v14);
    v18 = v17;
    if ((objc_msgSend_cachedCellWraps(v4, v19, v20, v21, v22) & 1) != 0 || (v47 = objc_msgSend_cachedMergeRange(v4, v23, v24, v25, v26), v47 != 0x7FFFFFFF) && (v47 & 0xFFFF00000000) != 0x7FFF00000000 && v23 >> 32 && v23)
    {
      if (WORD2(v13) == 0x7FFF)
      {
        v27 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = WORD2(v13);
      }

      if (v13 == 0x7FFFFFFF)
      {
        v28 = 0xFFFFFFFF00000000;
      }

      else
      {
        v28 = v13 << 32;
      }

      if (HIDWORD(v15))
      {
        v29 = ((v28 + v15) & 0xFFFFFFFF00000000) - 0x100000000;
      }

      else
      {
        v29 = 0xFFFFFFFF00000000;
      }

      if (v15)
      {
        v30 = (v15 + v27 - 1);
      }

      else
      {
        v30 = 0xFFFFFFFFLL;
      }

      v31 = objc_msgSend_p_layoutWhollyContainsGridRange_(self, v23, v28 | v27, v30 | v29, v26);
      TSURectWithOriginAndSize();
      if (v31)
      {
        v40 = v36;
        v41 = v37;
      }

      else
      {
        objc_msgSend_p_rangeUpAndLeftOfIntersectionRangeOfGridRange_(self, v32, v28 | v27, v30 | v29, v35);
        v40 = v58;
        v41 = v59;
        sub_2211BC400(self, v28 | v27, v30 | v29);
      }

      v18 = v38;
      v46 = v39;
      v60 = objc_msgSend_cachedMergeRange(v4, v32, v33, v34, v35);
      if (v60 != 0x7FFFFFFF && (v60 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        if (v61 >> 32)
        {
          if (v61)
          {
            v65 = objc_msgSend_cachedCellID(v4, v61, v62, v63, v64);
            v70 = objc_msgSend_cachedMergeRange(v4, v66, v67, v68, v69);
            v73 = objc_msgSend_extendedPartitionRangeSingleSpaceIntersectionWithCellRange_(self, v71, v70, v71, v72);
            v74 = v73;
            if (v65 != v73 || ((v73 ^ v65) & 0xFFFF00000000) != 0)
            {
              v75 = objc_msgSend_cachedMergeRange(v4, v61, v62, v63, v64);
              v77 = v76;
              v81 = objc_msgSend_layoutEngine(self, v76, v78, v79, v80);
              objc_msgSend_contentSizeForCellRange_skipDynamicSwap_(v81, v82, v75, v77 | ((v74 - v65) << 32), 1);
              v84 = v83;

              v41 = v41 + v84;
            }
          }
        }
      }

      objc_msgSend_setCachedMaskRect_(v4, v61, v62, v63, v64, v40, v41, v18, v46);
    }

    else
    {
      objc_msgSend_cachedAutosizedFrame(v4, v23, v48, v49, v26);
      v46 = v50;
      v40 = v16 - v51;
      v41 = 0.0;
      objc_msgSend_setCachedMaskRect_(v4, v52, v53, v54, v55, v40, 0.0, v18, v50);
    }

    objc_msgSend_setCachedMaskSpillRange_(v4, v56, v13, v15, v57);
  }

  else
  {
    objc_msgSend_cachedMaskRect(v4, v9, v10, v11, v12);
    v40 = v42;
    v41 = v43;
    v18 = v44;
    v46 = v45;
  }

  v85 = v40;
  v86 = v41;
  v87 = v18;
  v88 = v46;
  result.size.height = v88;
  result.size.width = v87;
  result.origin.y = v86;
  result.origin.x = v85;
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

- (int)reapCoordinatesChangedMaskForChrome
{
  mCoordinatesChangedMaskForChrome = self->mCoordinatesChangedMaskForChrome;
  self->mCoordinatesChangedMaskForChrome = 0;
  return mCoordinatesChangedMaskForChrome;
}

- (id)p_getStyleProvidingAncestorLayout
{
  v5 = objc_msgSend_parent(self, a2, v2, v3, v4);
  do
  {
    v15 = &unk_283535098;
    v6 = TSUProtocolCast();
    v11 = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    if ((objc_msgSend_wantsToProvideStylesForTextLayout_(v6, v7, 0, v9, v10, &unk_283535098) & 1) == 0)
    {

LABEL_6:
      v12 = 0;
      goto LABEL_7;
    }

    v12 = v11;
LABEL_7:
    v13 = objc_msgSend_parent(v5, v7, v8, v9, v10, v15);

    if (!v13)
    {
      break;
    }

    v5 = v13;
  }

  while (!v12);

  return v12;
}

- (BOOL)p_getLayoutDirectionLeftToRight
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_tableStyle(v5, v6, v7, v8, v9);

  LOBYTE(v5) = objc_msgSend_intValueForProperty_(v10, v11, 798, v12, v13) != 1;
  return v5;
}

- (void)validatePageNumberCount
{
  v21 = objc_msgSend_tableInfo(self, a2, v2, v3, v4);
  v10 = objc_msgSend_wasRemovedFromDocument(v21, v6, v7, v8, v9);

  if ((v10 & 1) == 0)
  {
    self->mPageNumber = 1;
    self->mPageCount = 1;
    v22 = objc_msgSend_parent(self, v11, v12, v13, v14);
    if (objc_opt_respondsToSelector())
    {
      self->mPageNumber = objc_msgSend_performSelector_(v22, v15, sel_pageNumber, v16, v17);
    }

    if (objc_opt_respondsToSelector())
    {
      self->mPageCount = objc_msgSend_performSelector_(v22, v18, sel_pageCount, v19, v20);
    }
  }
}

+ (id)findLayoutIfAvailableInSet:(id)a3 intersectingRow:(unsigned int)a4
{
  v5 = a3;
  v9 = sub_2211C6428(a4, 1, v6, v7, v8);
  v11 = v10;
  v15 = objc_msgSend_anyObject(v5, v10, v12, v13, v14);
  v20 = objc_msgSend_tableInfo(v15, v16, v17, v18, v19);
  v25 = objc_msgSend_numberOfHeaderRows(v20, v21, v22, v23, v24);
  v29 = sub_2211C6428(v25, 1, v26, v27, v28);
  v31 = v30;

  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_2211BFB80;
  v53 = sub_2211BFB90;
  v54 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2211C658C;
  v48[3] = &unk_278460C70;
  v48[6] = v11;
  v48[7] = v29;
  v48[8] = v31;
  v48[4] = &v49;
  v48[5] = v9;
  v35 = objc_msgSend_objectsPassingTest_(v5, v32, v48, v33, v34);
  if (objc_msgSend_count(v35, v36, v37, v38, v39))
  {
    v44 = objc_msgSend_anyObject(v35, v40, v41, v42, v43);
  }

  else
  {
    v45 = v50[5];
    if (!v45)
    {
      v45 = v15;
    }

    v44 = v45;
  }

  v46 = v44;

  _Block_object_dispose(&v49, 8);

  return v46;
}

- (BOOL)shouldShowCaption
{
  v6 = sub_2211B79C0(self, a2, v2, v3, v4);
  if (v6)
  {

    LOBYTE(v6) = sub_2211B7A08(self, v7, v8, v9, v10);
  }

  return v6;
}

- (CGRect)_visibleFrameForOverscrolledChildFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.origin.x = *&qword_27CFB3A88 + sub_2211BA638(self, a2, v3, v4, v5);
  v11 = v10 - (*&qword_27CFB3A88 + *&qword_27CFB3A88);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v14.origin.y = y;
  v14.size.width = v11;
  v14.size.height = height;
  result = CGRectIntersection(v12, v14);
  if (width > v11)
  {
    if (x != result.origin.x)
    {
      result.origin.x = result.origin.x - (v11 - result.size.width);
    }

    result.size.width = result.size.width + v11 - result.size.width;
  }

  return result;
}

- (id)styleProvider
{
  v5 = objc_msgSend_p_getStyleProvidingAncestorLayout(self, a2, v2, v3, v4);
  v10 = objc_msgSend_styleProvider(v5, v6, v7, v8, v9);

  return v10;
}

- (id)styleProviderForTextLayout:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_p_getStyleProvidingAncestorLayout(self, v5, v6, v7, v8);
  v13 = objc_msgSend_styleProviderForTextLayout_(v9, v10, v4, v11, v12);

  return v13;
}

- (TSUCellRect)editingSpillingTextRange
{
  p_mEditingSpillingTextRange = &self->mEditingSpillingTextRange;
  origin = self->mEditingSpillingTextRange.origin;
  size = p_mEditingSpillingTextRange->size;
  result.size = size;
  result.origin = origin;
  return result;
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

- (TSUCellRect)prevEditingSpillingTextRange
{
  p_mPrevEditingSpillingTextRange = &self->mPrevEditingSpillingTextRange;
  origin = self->mPrevEditingSpillingTextRange.origin;
  size = p_mPrevEditingSpillingTextRange->size;
  result.size = size;
  result.origin = origin;
  return result;
}

- (TSWPStorage)tableNameEditingStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_tableNameEditingStorage);

  return WeakRetained;
}

- (id)cellIteratorWithRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5
{
  size = a3.size;
  origin = a3.origin;
  v10 = [TSTLayoutCellIterator alloc];
  v12 = objc_msgSend_initWithLayout_range_flags_searchFlags_(v10, v11, self, origin, size, a4, a5);

  return v12;
}

- (void)iterateCellsAndTerminateWithIterator:(id)a3 usingBlock:(id)a4
{
  v12 = a3;
  objc_msgSend_iterateCellsUsingBlock_(v12, v5, a4, v6, v7);
  objc_msgSend_terminate(v12, v8, v9, v10, v11);
}

- (void)iterateCellsInRange:(TSUCellRect)a3 flags:(unint64_t)a4 searchFlags:(unint64_t)a5 usingBlock:(id)a6
{
  size = a3.size;
  origin = a3.origin;
  v11 = a6;
  v15 = objc_msgSend_cellIteratorWithRange_flags_searchFlags_(self, v12, origin, size, a4, a5);
  objc_msgSend_iterateCellsAndTerminateWithIterator_usingBlock_(self, v13, v15, v11, v14);
}

@end