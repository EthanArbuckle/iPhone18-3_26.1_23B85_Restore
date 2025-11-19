@interface TSCHChartPieWedgeLayoutInfo
- (BOOL)combinedLabelIsOnLeftSide;
- (BOOL)combinedLabelOutsideWedge;
- (BOOL)pointOutsidePieChart:(CGPoint)a3;
- (BOOL)stackLabels;
- (CGAffineTransform)combinedLabelTransformIntoPieChartCoordinateSpace;
- (CGPoint)combinedLabelRectBottomLeftCornerInChartCoordinateSpace;
- (CGPoint)combinedLabelRectBottomRightCornerInChartCoordinateSpace;
- (CGPoint)combinedLabelRectMidpointInChartCoordinateSpace;
- (CGPoint)combinedLabelRectTopLeftCornerInChartCoordinateSpace;
- (CGPoint)combinedLabelRectTopRightCornerInChartCoordinateSpace;
- (CGPoint)pointAtLabelInChartCoordinateSpace;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideBottomYWithStartPoint:(CGPoint)a3;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideMiddleY;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideMiddleYWithStartPoint:(CGPoint)a3;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideTopYWithStartPoint:(CGPoint)a3;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnFarXSideBottomYWithStartPoint:(CGPoint)a3;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnFarXSideMiddleYWithStartPoint:(CGPoint)a3;
- (CGPoint)pointAtLabelInChartCoordinateSpaceOnFarXSideTopYWithStartPoint:(CGPoint)a3;
- (CGPoint)vectorFromWedgeTipToCombinedLabelRect;
- (CGRect)combinedLabelErasableFrame;
- (CGRect)combinedLabelErasableFrameInChartCoordinateSpace;
- (CGRect)combinedLabelRect;
- (CGRect)combinedLabelRectInChartCoordinateSpace;
- (TSCHChartPieWedgeLayoutInfo)initWithPieWedgeElement:(id)a3 pieLabels:(id)a4 combinedLabelTransformIntoPieChartCoordinateSpace:(CGAffineTransform *)a5;
- (double)combinedLabelDistanceFromWedgeTip;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)enableCalloutLineSetting;
- (void)concatenateCombinedLabelTransformWithTransform:(CGAffineTransform *)a3;
- (void)realignPieLabels:(int64_t)a3;
- (void)setCombinedLabelTransformIntoPieChartCoordinateSpace:(CGAffineTransform *)a3;
- (void)updateToUseChartCoordinateSpaceWithChartBodyCenterPoint:(CGPoint)a3;
@end

@implementation TSCHChartPieWedgeLayoutInfo

- (TSCHChartPieWedgeLayoutInfo)initWithPieWedgeElement:(id)a3 pieLabels:(id)a4 combinedLabelTransformIntoPieChartCoordinateSpace:(CGAffineTransform *)a5
{
  v9 = a3;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = TSCHChartPieWedgeLayoutInfo;
  v11 = [(TSCHChartPieWedgeLayoutInfo *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_wedgeElement, a3);
    v17 = objc_msgSend_copy(v10, v13, v14, v15, v16);
    pieLabels = v12->_pieLabels;
    v12->_pieLabels = v17;

    v19 = *&a5->a;
    v20 = *&a5->c;
    *&v12->_combinedLabelTransformIntoPieChartCoordinateSpace.tx = *&a5->tx;
    *&v12->_combinedLabelTransformIntoPieChartCoordinateSpace.c = v20;
    *&v12->_combinedLabelTransformIntoPieChartCoordinateSpace.a = v19;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, a3);
  v16 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v16)
  {
    v20 = objc_msgSend_wedgeElement(self, v15, v17, v18, v19);
    v25 = objc_msgSend_copy(v20, v21, v22, v23, v24);
    objc_msgSend_setWedgeElement_(v16, v26, v27, v28, v29, v25);

    v34 = objc_msgSend_pieLabels(self, v30, v31, v32, v33);
    v39 = objc_msgSend_copy(v34, v35, v36, v37, v38);
    objc_msgSend_setPieLabels_(v16, v40, v41, v42, v43, v39);

    objc_msgSend_combinedLabelTransformIntoPieChartCoordinateSpace(self, v44, v45, v46, v47);
    v51[0] = v51[3];
    v51[1] = v52;
    v51[2] = v53;
    objc_msgSend_setCombinedLabelTransformIntoPieChartCoordinateSpace_(v16, v48, *&v53, *&v52, v49, v51);
  }

  return v16;
}

- (void)updateToUseChartCoordinateSpaceWithChartBodyCenterPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_centerPoint(self->_wedgeElement, a2, a3.x, a3.y, v3);
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, x - v7, y - v8);
  v13 = v14;
  objc_msgSend_concatenateCombinedLabelTransformWithTransform_(self, v9, v14.tx, v14.c, v10, &v13);
  objc_msgSend_setToChartCoordinateSpaceWithChartBodyCenterPoint_(self->_wedgeElement, v11, x, y, v12);
}

- (CGRect)combinedLabelRect
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF398];
  v2 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v4 = *(MEMORY[0x277CBF398] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_pieLabels;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v28, v32, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_rectInCombinedLabelSpace(*(*(&v28 + 1) + 8 * v18), v12, v13, v14, v15, v28);
        v36.origin.x = v19;
        v36.origin.y = v20;
        v36.size.width = v21;
        v36.size.height = v22;
        v34.origin.x = v3;
        v34.origin.y = v2;
        v34.size.width = v5;
        v34.size.height = v4;
        *&v13 = CGRectUnion(v34, v36);
        v3 = v13;
        v2 = v14;
        v5 = v15;
        v4 = v23;
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v28, v32, 16);
    }

    while (v16);
  }

  v24 = v3;
  v25 = v2;
  v26 = v5;
  v27 = v4;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)combinedLabelErasableFrame
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF398];
  v2 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v4 = *(MEMORY[0x277CBF398] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = self->_pieLabels;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, v9, v10, &v28, v32, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_erasableFrameInCombinedLabelSpace(*(*(&v28 + 1) + 8 * v18), v12, v13, v14, v15, v28);
        v36.origin.x = v19;
        v36.origin.y = v20;
        v36.size.width = v21;
        v36.size.height = v22;
        v34.origin.x = v3;
        v34.origin.y = v2;
        v34.size.width = v5;
        v34.size.height = v4;
        *&v13 = CGRectUnion(v34, v36);
        v3 = v13;
        v2 = v14;
        v5 = v15;
        v4 = v23;
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v12, v13, v14, v15, &v28, v32, 16);
    }

    while (v16);
  }

  v24 = v3;
  v25 = v2;
  v26 = v5;
  v27 = v4;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGAffineTransform)combinedLabelTransformIntoPieChartCoordinateSpace
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

- (CGRect)combinedLabelRectInChartCoordinateSpace
{
  objc_msgSend_combinedLabelRect(self, a2, v2, v3, v4);
  v6 = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.c;
  *&v7.a = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.a;
  *&v7.c = v6;
  *&v7.tx = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.tx;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (CGPoint)combinedLabelRectMidpointInChartCoordinateSpace
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);

  TSUCenterOfRect();
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)combinedLabelErasableFrameInChartCoordinateSpace
{
  objc_msgSend_combinedLabelErasableFrame(self, a2, v2, v3, v4);
  v6 = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.c;
  *&v7.a = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.a;
  *&v7.c = v6;
  *&v7.tx = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.tx;
  return CGRectApplyAffineTransform(v8, &v7);
}

- (void)concatenateCombinedLabelTransformWithTransform:(CGAffineTransform *)a3
{
  v4 = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.c;
  *&t1.a = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.a;
  *&t1.c = v4;
  *&t1.tx = *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.tx;
  v5 = *&a3->c;
  *&v7.a = *&a3->a;
  *&v7.c = v5;
  *&v7.tx = *&a3->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  v6 = *&v9.c;
  *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.a = *&v9.a;
  *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.c = v6;
  *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.tx = *&v9.tx;
}

- (void)realignPieLabels:(int64_t)a3
{
  v4 = self;
  v82 = *MEMORY[0x277D85DE8];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v5 = self->_pieLabels;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, v8, v9, &v77, v81, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v78;
    v73 = *(MEMORY[0x277CBF2C0] + 16);
    v74 = *MEMORY[0x277CBF2C0];
    v72 = *(MEMORY[0x277CBF2C0] + 32);
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v78 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v77 + 1) + 8 * i);
        *&v76.a = v74;
        *&v76.c = v73;
        *&v76.tx = v72;
        if (a3 == 2)
        {
          objc_msgSend_rectInCombinedLabelSpace(v16, v11, *&v72, *&v74, v12);
          MaxX = CGRectGetMaxX(v87);
          objc_msgSend_rectInCombinedLabelSpace(v16, v38, MaxX, v39, v40);
          MidY = CGRectGetMidY(v88);
          objc_msgSend_combinedLabelRect(v4, v42, MidY, v43, v44);
          v45 = CGRectGetMaxX(v89);
          objc_msgSend_combinedLabelRect(v4, v46, v45, v47, v48);
          CGRectGetMidY(v90);
          goto LABEL_12;
        }

        if (a3 == 1)
        {
          objc_msgSend_rectInCombinedLabelSpace(v16, v11, *&v72, *&v74, v12);
          TSUCenterOfRect();
          objc_msgSend_combinedLabelRect(v4, v33, v34, v35, v36);
          TSUCenterOfRect();
LABEL_12:
          TSUSubtractPoints();
          CGAffineTransformMakeTranslation(&v75, v49, v50);
          v76 = v75;
          goto LABEL_14;
        }

        if (a3)
        {
          v51 = MEMORY[0x277D81150];
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, *&v72, *&v74, v12, "[TSCHChartPieWedgeLayoutInfo realignPieLabels:]");
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieWedgeLayoutInfo.m");
          v57 = a3;
          v58 = v4;
          v59 = v13;
          v61 = v60 = v14;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v62, v63, v64, v65, v52, v61, 125, 0, "Invalid TSCHChartPieLabelAlign value. Not realigning pie label.");

          v14 = v60;
          v13 = v59;
          v4 = v58;
          a3 = v57;

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
        }

        else
        {
          objc_msgSend_rectInCombinedLabelSpace(v16, v11, *&v72, *&v74, v12);
          MinX = CGRectGetMinX(v83);
          objc_msgSend_rectInCombinedLabelSpace(v16, v18, MinX, v19, v20);
          v21 = CGRectGetMidY(v84);
          objc_msgSend_combinedLabelRect(v4, v22, v21, v23, v24);
          v25 = CGRectGetMinX(v85);
          objc_msgSend_combinedLabelRect(v4, v26, v25, v27, v28);
          CGRectGetMidY(v86);
          TSUSubtractPoints();
          CGAffineTransformMakeTranslation(&v76, v29, v30);
        }

LABEL_14:
        v75 = v76;
        objc_msgSend_concatenateTransformWithCGAffineTransform_(v16, v31, v76.tx, v76.c, v32, &v75, v72, v73, v74);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, v70, v71, v12, &v77, v81, 16);
    }

    while (v13);
  }
}

- (int64_t)enableCalloutLineSetting
{
  enableCalloutLine = self->_enableCalloutLine;
  if (!enableCalloutLine)
  {
    v7 = objc_msgSend_series(self->_wedgeElement, a2, v2, v3, v4);
    v12 = objc_msgSend_intValueForProperty_defaultValue_(v7, v8, v9, v10, v11, 1138, 2);

    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, v14, v15, v16, v12);
    v18 = self->_enableCalloutLine;
    self->_enableCalloutLine = v17;

    enableCalloutLine = self->_enableCalloutLine;
  }

  return objc_msgSend_intValue(enableCalloutLine, a2, v2, v3, v4);
}

- (BOOL)stackLabels
{
  v5 = objc_msgSend_series(self->_wedgeElement, a2, v2, v3, v4);
  v10 = objc_msgSend_intValueForProperty_defaultValue_(v5, v6, v7, v8, v9, 1183, 0) != 0;

  return v10;
}

- (CGPoint)pointAtLabelInChartCoordinateSpace
{
  v27 = *MEMORY[0x277CBF348];
  wedgeElement = self->_wedgeElement;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, *&v27, v2, v3, v27);
  if (!objc_msgSend_wedgeBisectionIntersectsRect_outIntersectionPointClosestToWedgeTip_(wedgeElement, v6, v7, v8, v9, &v27))
  {
    objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v10, v11, v12, v13);
    objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, v14, v15, v16, v17);
    TSUClampPointInRect();
  }

  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v10, v11, v12, v13);
  TSUDistance();
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v18, v19, -5.0, v20);
  objc_msgSend_normalizedWedgeBisectionVector(self->_wedgeElement, v21, v22, v23, v24);
  TSUMultiplyPointScalar();
  TSUAddPoints();
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnFarXSideMiddleYWithStartPoint:(CGPoint)a3
{
  x = a3.x;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, a3.x, a3.y, v3);
  MaxX = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidY = CGRectGetMidY(v13);
  if (x <= MaxX)
  {
    v14.origin.x = MaxX;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MaxX = CGRectGetMaxX(v14);
  }

  v10 = MaxX;
  v11 = MidY;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnFarXSideTopYWithStartPoint:(CGPoint)a3
{
  x = a3.x;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, a3.x, a3.y, v3);
  MaxX = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MinY = CGRectGetMinY(v13);
  if (x <= MaxX)
  {
    v14.origin.x = MaxX;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MaxX = CGRectGetMaxX(v14);
  }

  v10 = MaxX;
  v11 = MinY;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnFarXSideBottomYWithStartPoint:(CGPoint)a3
{
  x = a3.x;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, a3.x, a3.y, v3);
  MaxX = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MaxY = CGRectGetMaxY(v13);
  if (x <= MaxX)
  {
    v14.origin.x = MaxX;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MaxX = CGRectGetMaxX(v14);
  }

  v10 = MaxX;
  v11 = MaxY;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideMiddleY
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  objc_msgSend_combinedLabelRectMidpointInChartCoordinateSpace(self, v14, v6, v8, v10);
  v16 = v15;
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  MaxX = CGRectGetMaxX(v27);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v19, MaxX, v20, v21);
  if (v22 <= v16)
  {
    v28.origin.x = v7;
    v28.origin.y = v9;
    v28.size.width = v11;
    v28.size.height = v13;
    v23 = CGRectGetMinX(v28) + -5.0;
  }

  else
  {
    v23 = MaxX + 5.0;
  }

  v24 = MidY;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideMiddleYWithStartPoint:(CGPoint)a3
{
  x = a3.x;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, a3.x, a3.y, v3);
  v5 = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidY = CGRectGetMidY(v13);
  v14.origin.x = v5;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetMaxX(v14) + 5.0;
  if (x <= v5)
  {
    v10 = v5 + -5.0;
  }

  v11 = MidY;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideTopYWithStartPoint:(CGPoint)a3
{
  x = a3.x;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, a3.x, a3.y, v3);
  v5 = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MinY = CGRectGetMinY(v13);
  v14.origin.x = v5;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxX = CGRectGetMaxX(v14);
  if (x <= v5)
  {
    MaxX = v5;
  }

  v11 = MinY;
  result.y = v11;
  result.x = MaxX;
  return result;
}

- (CGPoint)pointAtLabelInChartCoordinateSpaceOnCloseXSideBottomYWithStartPoint:(CGPoint)a3
{
  x = a3.x;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, a3.x, a3.y, v3);
  v5 = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MaxY = CGRectGetMaxY(v13);
  v14.origin.x = v5;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxX = CGRectGetMaxX(v14);
  if (x <= v5)
  {
    MaxX = v5;
  }

  v11 = MaxY;
  result.y = v11;
  result.x = MaxX;
  return result;
}

- (BOOL)combinedLabelOutsideWedge
{
  objc_msgSend_combinedLabelRectTopLeftCornerInChartCoordinateSpace(self, a2, v2, v3, v4);
  v10 = objc_msgSend_pointOutsidePieChart_(self, v6, v7, v8, v9);
  objc_msgSend_combinedLabelRectTopRightCornerInChartCoordinateSpace(self, v11, v12, v13, v14);
  v19 = objc_msgSend_pointOutsidePieChart_(self, v15, v16, v17, v18) + v10;
  objc_msgSend_combinedLabelRectBottomLeftCornerInChartCoordinateSpace(self, v20, v21, v22, v23);
  v28 = objc_msgSend_pointOutsidePieChart_(self, v24, v25, v26, v27);
  objc_msgSend_combinedLabelRectBottomRightCornerInChartCoordinateSpace(self, v29, v30, v31, v32);
  return v19 + v28 + objc_msgSend_pointOutsidePieChart_(self, v33, v34, v35, v36) > 1;
}

- (BOOL)combinedLabelIsOnLeftSide
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  TSUCenterOfRect();
  v7 = v6;
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v8, v6, v9, v10);
  return v7 <= v11;
}

- (BOOL)pointOutsidePieChart:(CGPoint)a3
{
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, a2, a3.x, a3.y, v3);
  TSUDistance();
  v6 = v5;
  objc_msgSend_radius(self->_wedgeElement, v7, v5, v8, v9);
  return v6 > v10;
}

- (double)combinedLabelDistanceFromWedgeTip
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  TSUCenterOfRect();
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v6, v7, v8, v9);

  TSUDistance();
  return result;
}

- (CGPoint)vectorFromWedgeTipToCombinedLabelRect
{
  objc_msgSend_combinedLabelRectMidpointInChartCoordinateSpace(self, a2, v2, v3, v4);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(self->_wedgeElement, v6, v7, v8, v9);

  TSUSubtractPoints();
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)combinedLabelRectTopLeftCornerInChartCoordinateSpace
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  MinX = CGRectGetMinX(v13);
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, v7, MinX, v8, v9);
  MinY = CGRectGetMinY(v14);
  v11 = MinX;
  result.y = MinY;
  result.x = v11;
  return result;
}

- (CGPoint)combinedLabelRectBottomLeftCornerInChartCoordinateSpace
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  MinX = CGRectGetMinX(v13);
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, v7, MinX, v8, v9);
  MaxY = CGRectGetMaxY(v14);
  v11 = MinX;
  result.y = MaxY;
  result.x = v11;
  return result;
}

- (CGPoint)combinedLabelRectTopRightCornerInChartCoordinateSpace
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  MaxX = CGRectGetMaxX(v13);
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, v7, MaxX, v8, v9);
  MinY = CGRectGetMinY(v14);
  v11 = MaxX;
  result.y = MinY;
  result.x = v11;
  return result;
}

- (CGPoint)combinedLabelRectBottomRightCornerInChartCoordinateSpace
{
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, a2, v2, v3, v4);
  MaxX = CGRectGetMaxX(v13);
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(self, v7, MaxX, v8, v9);
  MaxY = CGRectGetMaxY(v14);
  v11 = MaxX;
  result.y = MaxY;
  result.x = v11;
  return result;
}

- (void)setCombinedLabelTransformIntoPieChartCoordinateSpace:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.tx = *&a3->tx;
  *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.c = v4;
  *&self->_combinedLabelTransformIntoPieChartCoordinateSpace.a = v3;
}

@end