@interface TSCHChartPieBendedLineLabelPlacement
- (BOOL)conflictBetweenWedgeLayoutInfo:(id)info nextWedgeLayoutInfo:(id)layoutInfo;
- (BOOL)innermostWedgeLayoutInfoWillUsePerpendicularAngle:(id)angle;
- (BOOL)wedgeLayoutInfoShouldShiftForCleanUp:(id)up withCleanUpOption:(unint64_t)option;
- (BOOL)wedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference:(id)circumference;
- (BOOL)wedgeLayoutInfoShouldShiftToPreventTooShortCalloutLineFirstHalf:(id)half;
- (BOOL)wedgeLayoutInfoShouldUsePerpendicularAngle:(id)angle defaultMidpoint:(CGPoint)midpoint;
- (CGAffineTransform)transformToShiftWedgeLayoutInfoAwayFromAdjacentWedgeLayoutInfo:(SEL)info adjacentWedgeLayoutInfo:(id)layoutInfo adjacentShouldBeAbove:(id)above totalHeightOverlap:(BOOL)overlap;
- (CGPoint)calloutLineEndpointForWedgeLayoutInfo:(id)info;
- (CGPoint)calloutLineMidPointForWedgeLayoutInfo:(id)info startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (CGPoint)calloutLineStartpointForWedgeLayoutInfo:(id)info;
- (CGPoint)defaultCalloutLineMidPointForWedgeLayoutInfo:(id)info startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (CGPoint)firstHalfOfBendedLineVectorNormalizedWithWedgeLayoutInfo:(id)info shouldBeUpwards:(BOOL)upwards;
- (double)amountLabelsInQuadrantNeedToShift:(id)shift cleanUpOption:(unint64_t)option;
- (double)amountWedgeLayoutInfoShouldShiftForCleanUp:(id)up withCleanUpOption:(unint64_t)option;
- (double)amountWedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference:(id)circumference;
- (double)amountWedgeLayoutInfoShouldShiftToPreventShortFirstHalf:(id)half;
- (double)shiftAmountForWedgeLayoutInfo:(id)info adjacentWedgeLayoutInfo:(id)layoutInfo adjacentShouldBeAbove:(BOOL)above;
- (double)totalHeightOverlapWithArray:(id)array;
- (id)arrayOfConflictingLabelsWithWedgeLayoutInfosOnOneSide:(id)side;
- (id)bottomLeftQuadrant;
- (id)bottomRightQuadrant;
- (id)innermostWedgeLayoutInfo:(id)info;
- (id)newCalloutLinePaths:(id)paths startLineEnd:(id)end outStartLineEndPath:(id *)path endLineEnd:(id)lineEnd outEndLineEndPath:(id *)endPath stroke:(id)stroke outStroke:(id *)outStroke context:(CGContext *)self0 contextScale:(float)self1;
- (id)topLeftQuadrant;
- (id)topRightQuadrant;
- (id)updateLabelTransformsToPreventOverlap;
- (id)wedgeLayoutInfosInHorizontalHalfDiskWithWedgeLayoutInfos:(id)infos horizontalHalfDisk:(unint64_t)disk;
- (id)wedgeLayoutInfosInOneQuadrant:(id)quadrant verticalHalfDisk:(unint64_t)disk horizontalHalfDisk:(unint64_t)halfDisk;
- (id)wedgeLayoutInfosInVerticalHalfDiskWithWedgeLayoutInfos:(id)infos verticalHalfDisk:(unint64_t)disk;
- (id)wedgeLayoutInfosThatNeedShiftingToCleanUpQuadrant:(id)quadrant cleanUpOption:(unint64_t)option;
- (void)fixConflictsInOneQuadrantOfPieChartWithArray:(id)array quadrantInHorizontalHalfDisk:(unint64_t)disk;
- (void)fixOverlapsOnOneVerticalSideWithConflictingLabelsArray:(id)array;
- (void)fixOverlapsOutsideWedges;
- (void)fixOverlapsWithWedgeLayoutInfos:(id)infos inVerticalHalfDisk:(unint64_t)disk;
- (void)preventOverlapsWithinWedges;
- (void)shiftLabelsVerticallyInOneQuadrantWithWedgeLayoutInfos:(id)infos shiftAmount:(double)amount quadrantInHorizontalHalfDisk:(unint64_t)disk;
- (void)shiftLabelsVerticallyInQuadrantIfNecessary:(id)necessary withCleanUpOption:(unint64_t)option;
- (void)shiftLabelsVerticallyToCleanUpPlacementWithCleanUpOption:(unint64_t)option;
@end

@implementation TSCHChartPieBendedLineLabelPlacement

- (id)updateLabelTransformsToPreventOverlap
{
  objc_msgSend_preventOverlapsWithinWedges(self, a2, v2, v3, v4);
  objc_msgSend_fixOverlapsOutsideWedges(self, v6, v7, v8, v9);
  objc_msgSend_shiftLabelsVerticallyToCleanUpPlacement(self, v10, v11, v12, v13);

  return objc_msgSend_allWedgeLayoutInfos(self, v14, v15, v16, v17);
}

- (void)preventOverlapsWithinWedges
{
  v6 = objc_msgSend_allWedgeLayoutInfos(self, a2, v2, v3, v4);
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = 0;
    do
    {
      v17 = v16 + 1;
      v18 = objc_msgSend_allWedgeLayoutInfos(self, v12, v13, v14, v15);
      v23 = objc_msgSend_count(v18, v19, v20, v21, v22);

      v28 = objc_msgSend_allWedgeLayoutInfos(self, v24, v25, v26, v27);
      v33 = objc_msgSend_count(v28, v29, v30, v31, v32);

      v38 = objc_msgSend_allWedgeLayoutInfos(self, v34, v35, v36, v37);
      v43 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v38, v39, v40, v41, v42, v16);

      v48 = objc_msgSend_wedgeElement(v43, v44, v45, v46, v47);
      objc_msgSend_labelExplosion(v48, v49, v50, v51, v52);
      if (v54 >= 110.0 || !objc_msgSend_enableCalloutLineSetting(v43, v53, v54, v55, v56))
      {
        goto LABEL_23;
      }

      v61 = (v16 - 1) % v33;
      v62 = objc_msgSend_allWedgeLayoutInfos(self, v57, v58, v59, v60);
      v67 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v62, v63, v64, v65, v66, v17 % v23);

      v72 = objc_msgSend_allWedgeLayoutInfos(self, v68, v69, v70, v71);
      v77 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v72, v73, v74, v75, v76, v61);

      objc_msgSend_minimumNecessaryDistanceFromWedgeTipToWedgeLabelToPreventOverlapForWedgeLayoutInfo_adjacentWedgeLayoutInfo_(self, v78, v79, v80, v81, v43, v67);
      v83 = v82;
      objc_msgSend_minimumNecessaryDistanceFromWedgeTipToWedgeLabelToPreventOverlapForWedgeLayoutInfo_adjacentWedgeLayoutInfo_(self, v84, v82, v85, v86, v43, v77);
      if (v83 < v88)
      {
        v83 = v88;
      }

      objc_msgSend_pointAlongWedgeBisectionInChartCoordinateSpaceWithFloatDistanceFromWedgeTip_(v48, v87, v83, v89, v90);
      v92 = v91;
      objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v48, v93, v94, v91, v95);
      v97 = vabdd_f64(v92, v96);
      objc_msgSend_combinedLabelRectInChartCoordinateSpace(v43, v98, v99, v96, v100);
      objc_msgSend_defaultLabelCenterPointForLabelWithSize_bended_(v48, v101, v102, v103, v102, 1);
      v105 = v104;
      objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v48, v106, v107, v104, v108);
      v110 = vabdd_f64(v105, v109);
      objc_msgSend_combinedLabelDistanceFromWedgeTip(v43, v111, v112, v109, v113);
      if (v115 >= v83)
      {
        if (v97 >= v110)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v116 = vabdd_f64(v115, v83);
        if ((v116 < 0.00999999978 || v115 == v83) && v97 < v110)
        {
          goto LABEL_22;
        }

        if (v97 >= v110)
        {
LABEL_18:
          objc_msgSend_combinedLabelRectMidpointInChartCoordinateSpace(v43, v114, v115, v116, v117);
          TSUSubtractPoints();
          memset(&v149, 0, sizeof(v149));
          CGAffineTransformMakeTranslation(&v149, v122, v123);
          v148 = v149;
          objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v43, v124, v149.tx, v149.c, v125, &v148);
          if (objc_msgSend_stackLabels(v43, v126, v127, v128, v129))
          {
            if (objc_msgSend_combinedLabelIsOnLeftSide(v43, v130, v131, v132, v133))
            {
              objc_msgSend_realignPieLabels_(v43, v134, v135, v136, v137, 2);
            }

            else
            {
              objc_msgSend_realignPieLabels_(v43, v134, v135, v136, v137, 0);
            }
          }

          goto LABEL_22;
        }

        memset(&v149, 0, sizeof(v149));
        objc_msgSend_transformOutwardsAlongWedgeBisectionForWedgeLayoutInfo_withMinimumNecessaryDistance_(self, v114, v83, v116, v117, v43);
        v148 = v149;
        objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v43, v120, v149.tx, v149.c, v121, &v148);
      }

LABEL_22:

LABEL_23:
      v142 = objc_msgSend_allWedgeLayoutInfos(self, v138, v139, v140, v141);
      v147 = objc_msgSend_count(v142, v143, v144, v145, v146);

      v16 = v17;
    }

    while (v17 < v147);
  }
}

- (void)fixOverlapsOutsideWedges
{
  v6 = objc_msgSend_allWedgeLayoutInfos(self, a2, v2, v3, v4);
  objc_msgSend_fixOverlapsWithWedgeLayoutInfos_inVerticalHalfDisk_(self, v7, v8, v9, v10, v6, 0);

  v19 = objc_msgSend_allWedgeLayoutInfos(self, v11, v12, v13, v14);
  objc_msgSend_fixOverlapsWithWedgeLayoutInfos_inVerticalHalfDisk_(self, v15, v16, v17, v18, v19, 1);
}

- (void)fixOverlapsWithWedgeLayoutInfos:(id)infos inVerticalHalfDisk:(unint64_t)disk
{
  infosCopy = infos;
  if (disk >= 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHChartPieBendedLineLabelPlacement fixOverlapsWithWedgeLayoutInfos:inVerticalHalfDisk:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 158, 0, "Invalid TSCHChartPieVerticalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_wedgeLayoutInfosInVerticalHalfDiskWithWedgeLayoutInfos_verticalHalfDisk_(self, v6, v7, v8, v9, infosCopy, disk);
  v30 = objc_msgSend_arrayOfConflictingLabelsWithWedgeLayoutInfosOnOneSide_(self, v26, v27, v28, v29, v25);
  if (objc_msgSend_count(v30, v31, v32, v33, v34))
  {
    v39 = 1;
    do
    {
      v40 = v30;
      objc_msgSend_fixOverlapsOnOneVerticalSideWithConflictingLabelsArray_(self, v35, v36, v37, v38, v30);
      v30 = objc_msgSend_arrayOfConflictingLabelsWithWedgeLayoutInfosOnOneSide_(self, v41, v42, v43, v44, v25);

      if (!objc_msgSend_count(v30, v45, v46, v47, v48))
      {
        break;
      }
    }

    while (v39++ < 0x63);
  }
}

- (void)fixOverlapsOnOneVerticalSideWithConflictingLabelsArray:(id)array
{
  v102 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v5, 0.0, v6, v7, &v97, v101, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v98;
    do
    {
      v15 = 0;
      v96 = v13;
      do
      {
        if (*v98 != v14)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v16 = *(*(&v97 + 1) + 8 * v15);
        if (objc_msgSend_count(v16, v9, v10, v11, v12) >= 2)
        {
          v17 = objc_msgSend_wedgeLayoutInfosInHorizontalHalfDiskWithWedgeLayoutInfos_horizontalHalfDisk_(self, v9, v10, v11, v12, v16, 0);
          v22 = objc_msgSend_wedgeLayoutInfosInHorizontalHalfDiskWithWedgeLayoutInfos_horizontalHalfDisk_(self, v18, v19, v20, v21, v16, 1);
          if (objc_msgSend_count(v17, v23, v24, v25, v26))
          {
            objc_msgSend_fixConflictsInOneQuadrantOfPieChartWithArray_quadrantInHorizontalHalfDisk_(self, v27, v28, v29, v30, v17, 0);
          }

          if (objc_msgSend_count(v22, v27, v28, v29, v30))
          {
            objc_msgSend_fixConflictsInOneQuadrantOfPieChartWithArray_quadrantInHorizontalHalfDisk_(self, v31, v32, v33, v34, v22, 1);
          }

          v35 = objc_msgSend_lastObject(v22, v31, v32, v33, v34);
          v40 = objc_msgSend_firstObject(v17, v36, v37, v38, v39);
          if (objc_msgSend_conflictBetweenWedgeLayoutInfo_nextWedgeLayoutInfo_(self, v41, v42, v43, v44, v35, v40))
          {
            v49 = v14;
            objc_msgSend_shiftAmountForWedgeLayoutInfo_adjacentWedgeLayoutInfo_adjacentShouldBeAbove_(self, v45, v46, v47, v48, v35, v40, 1);
            v51 = v50;
            v55 = objc_msgSend_wedgeElement(v35, v52, v50, v53, v54);
            objc_msgSend_pointAtWedgeCircumferenceMiddleInChartCoordinateSpace(v55, v56, v57, v58, v59);
            v61 = v60;
            v65 = objc_msgSend_wedgeElement(v35, v62, v63, v60, v64);
            objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v65, v66, v67, v68, v69);
            v71 = vabdd_f64(v61, v70);

            v76 = objc_msgSend_wedgeElement(v40, v72, v73, v74, v75);
            objc_msgSend_pointAtWedgeCircumferenceMiddleInChartCoordinateSpace(v76, v77, v78, v79, v80);
            v82 = v81;
            v86 = objc_msgSend_wedgeElement(v40, v83, v84, v81, v85);
            objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v86, v87, v88, v89, v90);
            v92 = vabdd_f64(v82, v91);

            if (v71 >= v92)
            {
              objc_msgSend_shiftLabelsVerticallyInOneQuadrantWithWedgeLayoutInfos_shiftAmount_quadrantInHorizontalHalfDisk_(self, v93, v51, v94, v95, v22, 1);
            }

            else
            {
              objc_msgSend_shiftLabelsVerticallyInOneQuadrantWithWedgeLayoutInfos_shiftAmount_quadrantInHorizontalHalfDisk_(self, v93, v51, v94, v95, v17, 0);
            }

            v14 = v49;
            v13 = v96;
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v9, v10, v11, v12, &v97, v101, 16);
    }

    while (v13);
  }
}

- (void)fixConflictsInOneQuadrantOfPieChartWithArray:(id)array quadrantInHorizontalHalfDisk:(unint64_t)disk
{
  arrayCopy = array;
  if (disk >= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartPieBendedLineLabelPlacement fixConflictsInOneQuadrantOfPieChartWithArray:quadrantInHorizontalHalfDisk:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 214, 0, "Invalid TSCHChartPieHorizontalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_msgSend_totalHeightOverlapWithArray_(self, v6, v8, v9, v10, arrayCopy);
  v27 = v26;
  v28 = MEMORY[0x277CBF2C0];
  v29 = *(MEMORY[0x277CBF2C0] + 16);
  v77 = *MEMORY[0x277CBF2C0];
  v78 = v29;
  tx = *(MEMORY[0x277CBF2C0] + 32);
  if (objc_msgSend_count(arrayCopy, v31, *&v77, *&v29, v32) != 1)
  {
    v37 = 0;
    ty = *(v28 + 40);
    v39 = -1;
    do
    {
      if (disk)
      {
        v40 = 1;
        v41 = v37;
        objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v33, v34, v35, v36, v37);
      }

      else
      {
        v41 = objc_msgSend_count(arrayCopy, v33, v34, v35, v36) + v39;
        v40 = -1;
        objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v42, v43, v44, v45, v41);
      }
      v46 = ;
      v51 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v47, v48, v49, v50, v41 + v40);
      if (objc_msgSend_enableCalloutLineSetting(v46, v52, v53, v54, v55))
      {
        objc_msgSend_transformToShiftWedgeLayoutInfoAwayFromAdjacentWedgeLayoutInfo_adjacentWedgeLayoutInfo_adjacentShouldBeAbove_totalHeightOverlap_(self, v56, v27, c, v59, v46, v51, disk != 0);
        a = v76.a;
        c = v76.c;
        v77 = *&v76.a;
        v78 = *&v76.c;
        tx = v76.tx;
        ty = v76.ty;
      }

      objc_msgSend_shiftAmountForWedgeLayoutInfo_adjacentWedgeLayoutInfo_adjacentShouldBeAbove_(self, v56, a, c, v59, v46, v51, disk != 0);
      v27 = v27 - v60;
      *&v76.a = v77;
      *&v76.c = v78;
      v76.tx = tx;
      v76.ty = ty;
      objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v46, v61, *&v77, *&v78, v62, &v76);

      ++v37;
      --v39;
    }

    while (v37 < objc_msgSend_count(arrayCopy, v63, v64, v65, v66) - 1);
  }

  if (disk)
  {
    objc_msgSend_lastObject(arrayCopy, v33, v34, v35, v36);
  }

  else
  {
    objc_msgSend_firstObject(arrayCopy, v33, v34, v35, v36);
  }
  v67 = ;
  if (objc_msgSend_enableCalloutLineSetting(v67, v68, v69, v70, v71))
  {
    CGAffineTransformMakeTranslation(&v76, tx, 0.0);
    objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v67, v72, v73, v74, v75, &v76);
  }
}

- (CGAffineTransform)transformToShiftWedgeLayoutInfoAwayFromAdjacentWedgeLayoutInfo:(SEL)info adjacentWedgeLayoutInfo:(id)layoutInfo adjacentShouldBeAbove:(id)above totalHeightOverlap:(BOOL)overlap
{
  v7 = -a7;
  if (overlap)
  {
    v7 = a7;
  }

  return CGAffineTransformMakeTranslation(retstr, 0.0, v7);
}

- (double)totalHeightOverlapWithArray:(id)array
{
  arrayCopy = array;
  v13 = 0.0;
  if (objc_msgSend_count(arrayCopy, v5, v6, v7, v8) >= 2)
  {
    v14 = 1;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v9, v10, v11, v12, v14);
      v20 = objc_msgSend_objectAtIndexedSubscript_(arrayCopy, v16, v17, v18, v19, v14 - 1);
      objc_msgSend_shiftAmountForWedgeLayoutInfo_adjacentWedgeLayoutInfo_adjacentShouldBeAbove_(self, v21, v22, v23, v24, v15, v20, 0);
      v13 = v13 + v25;

      ++v14;
    }

    while (v14 < objc_msgSend_count(arrayCopy, v26, v27, v28, v29));
  }

  return v13;
}

- (double)shiftAmountForWedgeLayoutInfo:(id)info adjacentWedgeLayoutInfo:(id)layoutInfo adjacentShouldBeAbove:(BOOL)above
{
  aboveCopy = above;
  layoutInfoCopy = layoutInfo;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(info, v9, v10, v11, v12);
  objc_msgSend_paddedLabelRectWithRect_(self, v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(layoutInfoCopy, v25, v17, v19, v21);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  objc_msgSend_paddedLabelRectWithRect_(self, v34, v27, v29, v31, v33);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v56.origin.x = v18;
  v56.origin.y = v20;
  v56.size.width = v22;
  v56.size.height = v24;
  v60.origin.x = v36;
  v60.origin.y = v38;
  v60.size.width = v40;
  v60.size.height = v42;
  v43 = CGRectIntersectsRect(v56, v60);
  v44 = v18;
  v45 = v20;
  v46 = v22;
  v47 = v24;
  if (v43)
  {
    v61.origin.x = v36;
    v61.origin.y = v38;
    v61.size.width = v40;
    v61.size.height = v42;
    v57 = CGRectIntersection(*&v44, v61);
    if (v57.size.width >= v57.size.height)
    {
      return v57.size.height;
    }

    else
    {
      return v57.size.width;
    }
  }

  else if (aboveCopy)
  {
    MinY = CGRectGetMinY(*&v44);
    v58.origin.x = v36;
    v58.origin.y = v38;
    v58.size.width = v40;
    v58.size.height = v42;
    MaxY = CGRectGetMaxY(v58);
    v51 = MaxY;
    if (MaxY >= MinY)
    {
      return vabdd_f64(MinY, v51) + 4.5;
    }

    v52 = vabdd_f64(MaxY, MinY);
    result = 0.0;
    if (v52 < 0.00999999978)
    {
      return vabdd_f64(MinY, v51) + 4.5;
    }
  }

  else
  {
    v53 = CGRectGetMaxY(*&v44);
    v59.origin.x = v36;
    v59.origin.y = v38;
    v59.size.width = v40;
    v59.size.height = v42;
    v54 = CGRectGetMinY(v59);
    v55 = vabdd_f64(v53, v54);
    if (v53 >= v54)
    {
      return v55 + 4.5;
    }

    result = 0.0;
    if (v55 < 0.00999999978)
    {
      return v55 + 4.5;
    }
  }

  return result;
}

- (void)shiftLabelsVerticallyToCleanUpPlacementWithCleanUpOption:(unint64_t)option
{
  if (option >= 2)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, "[TSCHChartPieBendedLineLabelPlacement shiftLabelsVerticallyToCleanUpPlacementWithCleanUpOption:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v16, v17, v18, v9, v14, 320, 0, "Invalid TSCHChartPieCleanUpOption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  }

  v23 = objc_msgSend_topLeftQuadrant(self, a2, v3, v4, v5);
  objc_msgSend_shiftLabelsVerticallyInQuadrantIfNecessary_withCleanUpOption_(self, v24, v25, v26, v27, v23, option);

  v32 = objc_msgSend_bottomLeftQuadrant(self, v28, v29, v30, v31);
  objc_msgSend_shiftLabelsVerticallyInQuadrantIfNecessary_withCleanUpOption_(self, v33, v34, v35, v36, v32, option);

  v41 = objc_msgSend_topRightQuadrant(self, v37, v38, v39, v40);
  objc_msgSend_shiftLabelsVerticallyInQuadrantIfNecessary_withCleanUpOption_(self, v42, v43, v44, v45, v41, option);

  v54 = objc_msgSend_bottomRightQuadrant(self, v46, v47, v48, v49);
  objc_msgSend_shiftLabelsVerticallyInQuadrantIfNecessary_withCleanUpOption_(self, v50, v51, v52, v53, v54, option);
}

- (void)shiftLabelsVerticallyInQuadrantIfNecessary:(id)necessary withCleanUpOption:(unint64_t)option
{
  necessaryCopy = necessary;
  v43 = necessaryCopy;
  if (option >= 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], necessaryCopy, v7, v8, v9, "[TSCHChartPieBendedLineLabelPlacement shiftLabelsVerticallyInQuadrantIfNecessary:withCleanUpOption:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 328, 0, "Invalid TSCHChartPieCleanUpOption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    necessaryCopy = v43;
  }

  v25 = objc_msgSend_wedgeLayoutInfosThatNeedShiftingToCleanUpQuadrant_cleanUpOption_(self, necessaryCopy, v7, v8, v9, necessaryCopy, option);
  objc_msgSend_amountLabelsInQuadrantNeedToShift_cleanUpOption_(self, v26, v27, v28, v29, v43, option);
  v31 = v30;
  if (objc_msgSend_count(v25, v32, v30, v33, v34))
  {
    v39 = objc_msgSend_horizontalHalfDisk(v43, v35, v36, v37, v38);
    objc_msgSend_shiftLabelsVerticallyInOneQuadrantWithWedgeLayoutInfos_shiftAmount_quadrantInHorizontalHalfDisk_(self, v40, v31, v41, v42, v25, v39);
  }
}

- (double)amountLabelsInQuadrantNeedToShift:(id)shift cleanUpOption:(unint64_t)option
{
  shiftCopy = shift;
  if (option >= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartPieBendedLineLabelPlacement amountLabelsInQuadrantNeedToShift:cleanUpOption:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 341, 0, "Invalid TSCHChartPieCleanUpOption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_horizontalHalfDisk(shiftCopy, v6, v8, v9, v10);
  v31 = objc_msgSend_wedgeLayoutInfos(shiftCopy, v27, v28, v29, v30);
  if (objc_msgSend_count(v31, v32, v33, v34, v35))
  {
    v40 = 0;
    v41 = 0.0;
    v42 = -1;
    do
    {
      v43 = v40;
      if (v26)
      {
        v43 = objc_msgSend_count(v31, v36, v37, v38, v39, v40) + v42;
      }

      v44 = objc_msgSend_objectAtIndexedSubscript_(v31, v36, v37, v38, v39, v43);
      objc_msgSend_amountWedgeLayoutInfoShouldShiftForCleanUp_withCleanUpOption_(self, v45, v46, v47, v48, v44, option);
      if (fabs(v41) <= fabs(v49))
      {
        v41 = v49;
      }

      ++v40;
      --v42;
    }

    while (v40 < objc_msgSend_count(v31, v50, v51, v52, v53));
  }

  else
  {
    v41 = 0.0;
  }

  return v41;
}

- (double)amountWedgeLayoutInfoShouldShiftForCleanUp:(id)up withCleanUpOption:(unint64_t)option
{
  upCopy = up;
  if (option == 1)
  {
    objc_msgSend_amountWedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference_(self, v6, v8, v9, v10, upCopy);
  }

  else
  {
    if (option)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartPieBendedLineLabelPlacement amountWedgeLayoutInfoShouldShiftForCleanUp:withCleanUpOption:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 367, 0, "Invalid TSCHChartPieCleanUpOption value");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
      v12 = 0.0;
      goto LABEL_7;
    }

    objc_msgSend_amountWedgeLayoutInfoShouldShiftToPreventShortFirstHalf_(self, v6, v8, v9, v10, upCopy);
  }

  v12 = v11;
LABEL_7:

  return v12;
}

- (double)amountWedgeLayoutInfoShouldShiftToPreventShortFirstHalf:(id)half
{
  halfCopy = half;
  v13 = 0.0;
  if (objc_msgSend_wedgeLayoutInfoShouldShiftToPreventTooShortCalloutLineFirstHalf_(self, v5, v6, v7, v8, halfCopy))
  {
    objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v9, v10, v11, v12, halfCopy);
    v15 = v14;
    objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v16, v17, v14, v18, halfCopy);
    v13 = 7.0 - vabdd_f64(v19, v15);
  }

  return v13;
}

- (double)amountWedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference:(id)circumference
{
  circumferenceCopy = circumference;
  v13 = 0.0;
  if (objc_msgSend_wedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference_(self, v5, v6, v7, v8, circumferenceCopy))
  {
    objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v9, v10, v11, v12, circumferenceCopy);
    v15 = v14;
    v17 = v16;
    objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v18, v14, v16, v19, circumferenceCopy);
    objc_msgSend_calloutLineMidPointForWedgeLayoutInfo_startPoint_endPoint_(self, v20, v15, v17, v21, circumferenceCopy, v22);
    v27 = objc_msgSend_wedgeElement(circumferenceCopy, v23, v24, v25, v26);
    objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v27, v28, v29, v30, v31);
    TSUDistance();
    v33 = v32;

    v38 = objc_msgSend_wedgeElement(circumferenceCopy, v34, v35, v36, v37);
    objc_msgSend_radius(v38, v39, v40, v41, v42);
    v44 = v43;

    v45 = v44 + 5.0 - v33;
    v49 = objc_msgSend_wedgeElement(circumferenceCopy, v46, v44 + 5.0, v47, v48);
    objc_msgSend_normalizedWedgeBisectionVector(v49, v50, v51, v52, v53);
    TSUAngleFromDelta();
    v55 = fabs(v54);

    v60 = objc_msgSend_combinedLabelIsOnLeftSide(circumferenceCopy, v56, v57, v58, v59);
    v61 = 3.14159265 - v55;
    if (!v60)
    {
      v61 = v55;
    }

    v13 = v45 * sin(v61);
  }

  return v13;
}

- (id)wedgeLayoutInfosThatNeedShiftingToCleanUpQuadrant:(id)quadrant cleanUpOption:(unint64_t)option
{
  quadrantCopy = quadrant;
  if (option >= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartPieBendedLineLabelPlacement wedgeLayoutInfosThatNeedShiftingToCleanUpQuadrant:cleanUpOption:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 406, 0, "Invalid TSCHChartPieCleanUpOption");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_msgSend_horizontalHalfDisk(quadrantCopy, v6, v8, v9, v10);
  v75 = quadrantCopy;
  v31 = objc_msgSend_wedgeLayoutInfos(quadrantCopy, v27, v28, v29, v30);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(v31, v33, v34, v35, v36))
  {
    v41 = 0;
    v42 = -1;
    do
    {
      v43 = v41;
      if (v26)
      {
        v43 = objc_msgSend_count(v31, v37, v38, v39, v40) + v42;
      }

      v44 = objc_msgSend_objectAtIndexedSubscript_(v31, v37, v38, v39, v40, v43);
      if (objc_msgSend_combinedLabelOutsideWedge(v44, v45, v46, v47, v48))
      {
        v53 = objc_msgSend_enableCalloutLineSetting(v44, v49, v50, v51, v52);
        ShouldShiftForCleanUp_withCleanUpOption = objc_msgSend_wedgeLayoutInfoShouldShiftForCleanUp_withCleanUpOption_(self, v54, v55, v56, v57, v44, option);
        if (v53 && ShouldShiftForCleanUp_withCleanUpOption)
        {

          if (v26)
          {
            v63 = v43 + 1;
            v43 = 0;
          }

          else
          {
            v63 = objc_msgSend_count(v31, v37, v38, v39, v40);
          }

          if (v43 < v63)
          {
            do
            {
              v64 = objc_msgSend_objectAtIndexedSubscript_(v31, v37, v38, v39, v40, v43);
              if (objc_msgSend_combinedLabelOutsideWedge(v64, v65, v66, v67, v68))
              {
                objc_msgSend_addObject_(v32, v69, v70, v71, v72, v64);
              }

              ++v43;
            }

            while (v63 != v43);
          }

          break;
        }
      }

      else
      {
        objc_msgSend_wedgeLayoutInfoShouldShiftForCleanUp_withCleanUpOption_(self, v49, v50, v51, v52, v44, option);
      }

      ++v41;
      --v42;
    }

    while (v41 < objc_msgSend_count(v31, v59, v60, v61, v62));
  }

  v73 = objc_msgSend_copy(v32, v37, v38, v39, v40);

  return v73;
}

- (void)shiftLabelsVerticallyInOneQuadrantWithWedgeLayoutInfos:(id)infos shiftAmount:(double)amount quadrantInHorizontalHalfDisk:(unint64_t)disk
{
  infosCopy = infos;
  if (disk >= 2)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, "[TSCHChartPieBendedLineLabelPlacement shiftLabelsVerticallyInOneQuadrantWithWedgeLayoutInfos:shiftAmount:quadrantInHorizontalHalfDisk:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 446, 0, "Invalid TSCHChartPieHorizontalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  if (objc_msgSend_count(infosCopy, v7, v9, v10, v11))
  {
    v30 = 0;
    v31 = -amount;
    if (!disk)
    {
      amount = -amount;
    }

    v32 = -1;
    do
    {
      v33 = v30;
      if (disk)
      {
        v33 = objc_msgSend_count(infosCopy, v27, v31, v28, v29, v30) + v32;
      }

      v34 = objc_msgSend_objectAtIndexedSubscript_(infosCopy, v27, v31, v28, v29, v33);
      memset(&v46, 0, sizeof(v46));
      CGAffineTransformMakeTranslation(&v46, 0.0, amount);
      if (objc_msgSend_enableCalloutLineSetting(v34, v35, v36, v37, v38))
      {
        v45 = v46;
        objc_msgSend_concatenateCombinedLabelTransformWithTransform_(v34, v39, v46.tx, v46.c, v40, &v45);
      }

      ++v30;
      --v32;
    }

    while (v30 < objc_msgSend_count(infosCopy, v41, v42, v43, v44));
  }
}

- (BOOL)wedgeLayoutInfoShouldShiftForCleanUp:(id)up withCleanUpOption:(unint64_t)option
{
  upCopy = up;
  if (option == 1)
  {
    ShouldShiftToPreventBendPointOnCircumference = objc_msgSend_wedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference_(self, v6, v8, v9, v10, upCopy);
  }

  else
  {
    if (option)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartPieBendedLineLabelPlacement wedgeLayoutInfoShouldShiftForCleanUp:withCleanUpOption:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 469, 0, "Invalid TSCHChartPieCleanUpOption.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
      v12 = 0;
      goto LABEL_7;
    }

    ShouldShiftToPreventBendPointOnCircumference = objc_msgSend_wedgeLayoutInfoShouldShiftToPreventTooShortCalloutLineFirstHalf_(self, v6, v8, v9, v10, upCopy);
  }

  v12 = ShouldShiftToPreventBendPointOnCircumference;
LABEL_7:

  return v12;
}

- (BOOL)wedgeLayoutInfoShouldShiftToPreventBendPointOnCircumference:(id)circumference
{
  circumferenceCopy = circumference;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v5, v6, v7, v8, circumferenceCopy);
  v10 = v9;
  v12 = v11;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v13, v9, v11, v14, circumferenceCopy);
  objc_msgSend_calloutLineMidPointForWedgeLayoutInfo_startPoint_endPoint_(self, v15, v10, v12, v16, circumferenceCopy, v17);
  v22 = objc_msgSend_wedgeElement(circumferenceCopy, v18, v19, v20, v21);
  objc_msgSend_pointAtWedgeTipInChartCoordinateSpace(v22, v23, v24, v25, v26);
  TSUDistance();
  v28 = v27;

  v33 = objc_msgSend_wedgeElement(circumferenceCopy, v29, v30, v31, v32);

  objc_msgSend_radius(v33, v34, v35, v36, v37);
  v39 = v38;

  v40 = v39 + -5.0;
  v41 = v39 + -5.0 >= v28 || v40 == v28;
  result = 0;
  if (!v41)
  {
    v42 = v39 + 5.0;
    v43 = vabdd_f64(v40, v28) >= 0.00999999978 && v28 < v42;
    v44 = !v43 || v28 == v42;
    if (!v44 && vabdd_f64(v28, v42) >= 0.00999999978)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)wedgeLayoutInfoShouldShiftToPreventTooShortCalloutLineFirstHalf:(id)half
{
  halfCopy = half;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v5, v6, v7, v8, halfCopy);
  v10 = v9;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v11, v12, v9, v13, halfCopy);
  v15 = vabdd_f64(v14, v10);
  v19 = objc_msgSend_wedgeElement(halfCopy, v16, v17, v14, v18);

  objc_msgSend_radius(v19, v20, v21, v22, v23);
  v25 = v24 * 0.01;

  return v15 >= v25 * 0.5 && v15 <= 7.0;
}

- (id)arrayOfConflictingLabelsWithWedgeLayoutInfosOnOneSide:(id)side
{
  sideCopy = side;
  if (objc_msgSend_count(sideCopy, v5, v6, v7, v8) >= 2)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (objc_msgSend_count(sideCopy, v11, v12, v13, v14) != 1)
    {
      v19 = 0;
      do
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v25 = objc_msgSend_objectAtIndexedSubscript_(sideCopy, v21, v22, v23, v24, v19);
        v34 = ++v19;
        if (v19 < objc_msgSend_count(sideCopy, v26, v27, v28, v29))
        {
          do
          {
            v35 = objc_msgSend_objectAtIndexedSubscript_(sideCopy, v30, v31, v32, v33, v34);
            if (objc_msgSend_conflictBetweenWedgeLayoutInfo_nextWedgeLayoutInfo_(self, v36, v37, v38, v39, v25, v35))
            {
              if ((objc_msgSend_containsObject_(v20, v40, v41, v42, v43, v25) & 1) == 0)
              {
                objc_msgSend_addObject_(v20, v44, v45, v46, v47, v25);
              }

              objc_msgSend_addObject_(v20, v44, v45, v46, v47, v35);
            }

            ++v34;
          }

          while (v34 < objc_msgSend_count(sideCopy, v48, v49, v50, v51));
        }

        if (objc_msgSend_count(v20, v30, v31, v32, v33))
        {
          objc_msgSend_addObject_(v10, v52, v53, v54, v55, v20);
        }
      }

      while (v19 < objc_msgSend_count(sideCopy, v56, v57, v58, v59) - 1);
    }

    v9 = objc_msgSend_copy(v10, v15, v16, v17, v18);
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

- (BOOL)conflictBetweenWedgeLayoutInfo:(id)info nextWedgeLayoutInfo:(id)layoutInfo
{
  infoCopy = info;
  layoutInfoCopy = layoutInfo;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(infoCopy, v8, v9, v10, v11);
  objc_msgSend_paddedLabelRectWithRect_(self, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  TSUCenterOfRect();
  v92 = v24;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(layoutInfoCopy, v25, v24, v26, v27);
  objc_msgSend_paddedLabelRectWithRect_(self, v28, v29, v30, v31);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  TSUCenterOfRect();
  v90 = v40;
  v93.origin.x = v17;
  v93.origin.y = v19;
  v93.size.width = v21;
  v93.size.height = v23;
  v96.origin.x = v33;
  v96.origin.y = v35;
  v96.size.width = v37;
  v96.size.height = v39;
  v41 = CGRectIntersectsRect(v93, v96);
  v94.origin.x = v17;
  v94.origin.y = v19;
  v94.size.width = v21;
  v94.size.height = v23;
  MinY = CGRectGetMinY(v94);
  v95.origin.x = v33;
  v95.origin.y = v35;
  v95.size.width = v37;
  v95.size.height = v39;
  MaxY = CGRectGetMaxY(v95);
  if (MinY >= MaxY)
  {
    v48 = 1;
  }

  else
  {
    v47 = MinY == MaxY;
    MaxY = vabdd_f64(MinY, MaxY);
    v45 = 0.00999999978;
    v48 = MaxY < 0.00999999978 || v47;
  }

  if (objc_msgSend_enableCalloutLineSetting(infoCopy, v43, MaxY, v45, v46, v90) && !((objc_msgSend_enableCalloutLineSetting(layoutInfoCopy, v49, v50, v51, v52) == 0) | v48 & 1) && objc_msgSend_combinedLabelOutsideWedge(infoCopy, v49, v50, v51, v52))
  {
    v53 = objc_msgSend_combinedLabelOutsideWedge(layoutInfoCopy, v49, v50, v51, v52);
  }

  else
  {
    v53 = 0;
  }

  objc_msgSend_combinedLabelRectInChartCoordinateSpace(infoCopy, v49, v50, v51, v52);
  v55 = v54;
  objc_msgSend_combinedLabelRectInChartCoordinateSpace(layoutInfoCopy, v56, v57, v58, v54);
  v60 = v59;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v61, v62, v63, v59, infoCopy);
  v65 = v64;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v66, v64, v67, v68, layoutInfoCopy);
  v73 = v91 <= v92 && v65 <= v91;
  v74 = v92 <= v91 && v70 <= v92;
  v75 = objc_msgSend_enableCalloutLineSetting(infoCopy, v69, v70, v71, v72);
  if (v75)
  {
    if ((objc_msgSend_enableCalloutLineSetting(layoutInfoCopy, v76, v77, v78, v79) == 0) | v48 & 1)
    {
      LOBYTE(v75) = 0;
      goto LABEL_26;
    }

    v82 = vabdd_f64(v92, v91);
    v83 = v55 * 0.5 + v60 * 0.5;
    if (objc_msgSend_combinedLabelOutsideWedge(infoCopy, v80, v60 * 0.5, v55 * 0.5, v81))
    {
      if (v82 <= v83)
      {
        LOBYTE(v75) = 1;
        goto LABEL_26;
      }
    }

    else
    {
      LODWORD(v75) = objc_msgSend_combinedLabelOutsideWedge(layoutInfoCopy, v84, v85, v86, v87);
      if (!v75 || v82 <= v83)
      {
        goto LABEL_26;
      }
    }

    LOBYTE(v75) = v73 || v74;
  }

LABEL_26:
  if (v41)
  {
    v88 = 1;
  }

  else
  {
    v88 = v53 | v75;
  }

  return v88 & 1;
}

- (id)topLeftQuadrant
{
  v6 = objc_msgSend_allWedgeLayoutInfos(self, a2, v2, v3, v4);
  v11 = objc_msgSend_wedgeLayoutInfosInOneQuadrant_verticalHalfDisk_horizontalHalfDisk_(self, v7, v8, v9, v10, v6, 0, 0);

  return v11;
}

- (id)topRightQuadrant
{
  v6 = objc_msgSend_allWedgeLayoutInfos(self, a2, v2, v3, v4);
  v11 = objc_msgSend_wedgeLayoutInfosInOneQuadrant_verticalHalfDisk_horizontalHalfDisk_(self, v7, v8, v9, v10, v6, 1, 0);

  return v11;
}

- (id)bottomLeftQuadrant
{
  v6 = objc_msgSend_allWedgeLayoutInfos(self, a2, v2, v3, v4);
  v11 = objc_msgSend_wedgeLayoutInfosInOneQuadrant_verticalHalfDisk_horizontalHalfDisk_(self, v7, v8, v9, v10, v6, 0, 1);

  return v11;
}

- (id)bottomRightQuadrant
{
  v6 = objc_msgSend_allWedgeLayoutInfos(self, a2, v2, v3, v4);
  v11 = objc_msgSend_wedgeLayoutInfosInOneQuadrant_verticalHalfDisk_horizontalHalfDisk_(self, v7, v8, v9, v10, v6, 1, 1);

  return v11;
}

- (id)wedgeLayoutInfosInOneQuadrant:(id)quadrant verticalHalfDisk:(unint64_t)disk horizontalHalfDisk:(unint64_t)halfDisk
{
  quadrantCopy = quadrant;
  if (disk >= 2)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartPieBendedLineLabelPlacement wedgeLayoutInfosInOneQuadrant:verticalHalfDisk:horizontalHalfDisk:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 594, 0, "Invalid TSCHChartPieVerticalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  if (halfDisk >= 2)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v10, v11, v12, "[TSCHChartPieBendedLineLabelPlacement wedgeLayoutInfosInOneQuadrant:verticalHalfDisk:horizontalHalfDisk:]");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v35, v36, v37, v38, v29, v34, 595, 0, "Invalid TSCHChartPieHorizontalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
  }

  v43 = objc_msgSend_wedgeLayoutInfosInVerticalHalfDiskWithWedgeLayoutInfos_verticalHalfDisk_(self, v8, v10, v11, v12, quadrantCopy, disk);
  v48 = objc_msgSend_wedgeLayoutInfosInHorizontalHalfDiskWithWedgeLayoutInfos_horizontalHalfDisk_(self, v44, v45, v46, v47, v43, halfDisk);

  v49 = [TSCHChartPieQuadrant alloc];
  v54 = objc_msgSend_initWithWedgeLayoutInfos_horizontalHalfDisk_verticalHalfDisk_(v49, v50, v51, v52, v53, v48, halfDisk, disk);

  return v54;
}

- (id)wedgeLayoutInfosInHorizontalHalfDiskWithWedgeLayoutInfos:(id)infos horizontalHalfDisk:(unint64_t)disk
{
  v67 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  if (disk >= 2)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCHChartPieBendedLineLabelPlacement wedgeLayoutInfosInHorizontalHalfDiskWithWedgeLayoutInfos:horizontalHalfDisk:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 605, 0, "Invalid TSCHChartPieHorizontalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v28 = infosCopy;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, &v62, v66, 16);
  if (v33)
  {
    v38 = v33;
    v39 = *v63;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v63 != v39)
        {
          objc_enumerationMutation(v28);
        }

        v41 = *(*(&v62 + 1) + 8 * i);
        v42 = objc_msgSend_wedgeElement(v41, v34, v35, v36, v37, v62);
        objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v43, v44, v45, v46, v41);
        if (objc_msgSend_isInUpperHalfOfChartWithStartPoint_(v42, v47, v48, v49, v50))
        {
          objc_msgSend_addObject_(v26, v51, v52, v53, v54, v41);
        }

        else
        {
          objc_msgSend_addObject_(v27, v51, v52, v53, v54, v41);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v34, v35, v36, v37, &v62, v66, 16);
    }

    while (v38);
  }

  if (disk)
  {
    v59 = objc_msgSend_copy(v27, v55, v56, v57, v58, v62);
  }

  else
  {
    v59 = objc_msgSend_copy(v26, v55, v56, v57, v58, v62);
  }

  v60 = v59;

  return v60;
}

- (id)wedgeLayoutInfosInVerticalHalfDiskWithWedgeLayoutInfos:(id)infos verticalHalfDisk:(unint64_t)disk
{
  v143 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  diskCopy = disk;
  if (disk >= 2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCHChartPieBendedLineLabelPlacement wedgeLayoutInfosInVerticalHalfDiskWithWedgeLayoutInfos:verticalHalfDisk:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHChartPieBendedLineLabelPlacement.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 632, 0, "Invalid TSCHChartPieVerticalHalfDisk value");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v136 = objc_msgSend_firstObject(infosCopy, v27, v28, v29, v30);
  v35 = objc_msgSend_combinedLabelIsOnLeftSide(v136, v31, v32, v33, v34);
  if (objc_msgSend_count(infosCopy, v36, v37, v38, v39))
  {
    v44 = 0;
    while (1)
    {
      v45 = objc_msgSend_objectAtIndexedSubscript_(infosCopy, v40, v41, v42, v43, v44);
      if (v35 != objc_msgSend_combinedLabelIsOnLeftSide(v45, v46, v47, v48, v49))
      {
        break;
      }

      if (++v44 >= objc_msgSend_count(infosCopy, v54, v55, v56, v57))
      {
        goto LABEL_7;
      }
    }

    v59 = objc_msgSend_wedgeElement(v45, v50, v51, v52, v53);
    v64 = objc_msgSend_series(v59, v60, v61, v62, v63);
    v58 = objc_msgSend_seriesIndex(v64, v65, v66, v67, v68);
  }

  else
  {
LABEL_7:
    v58 = 0;
  }

  v69 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v40, v41, v42, v43, infosCopy);
  if (objc_msgSend_count(v69, v70, v71, v72, v73))
  {
    v78 = 0;
    while (1)
    {
      v79 = objc_msgSend_firstObject(v69, v74, v75, v76, v77);
      v84 = objc_msgSend_wedgeElement(v79, v80, v81, v82, v83);
      v89 = objc_msgSend_series(v84, v85, v86, v87, v88);
      v94 = objc_msgSend_seriesIndex(v89, v90, v91, v92, v93);

      if (v94 == v58)
      {
        break;
      }

      objc_msgSend_removeObjectAtIndex_(v69, v95, v96, v97, v98, 0);
      objc_msgSend_addObject_(v69, v99, v100, v101, v102, v79);

      if (++v78 >= objc_msgSend_count(v69, v103, v104, v105, v106))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v107 = v69;
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, v109, v110, v111, &v138, v142, 16);
  if (v112)
  {
    v117 = v112;
    v118 = *v139;
    do
    {
      for (i = 0; i != v117; ++i)
      {
        if (*v139 != v118)
        {
          objc_enumerationMutation(v107);
        }

        v120 = *(*(&v138 + 1) + 8 * i);
        if (objc_msgSend_combinedLabelIsOnLeftSide(v120, v113, v114, v115, v116))
        {
          objc_msgSend_addObject_(v25, v121, v122, v123, v124, v120);
        }

        else
        {
          objc_msgSend_addObject_(v26, v121, v122, v123, v124, v120);
        }
      }

      v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v113, v114, v115, v116, &v138, v142, 16);
    }

    while (v117);
  }

  if (diskCopy)
  {
    v129 = objc_msgSend_reverseObjectEnumerator(v26, v125, v126, v127, v128);
    v134 = objc_msgSend_allObjects(v129, v130, v131, v132, v133);
  }

  else
  {
    v134 = v25;
  }

  return v134;
}

- (id)newCalloutLinePaths:(id)paths startLineEnd:(id)end outStartLineEndPath:(id *)path endLineEnd:(id)lineEnd outEndLineEndPath:(id *)endPath stroke:(id)stroke outStroke:(id *)outStroke context:(CGContext *)self0 contextScale:(float)self1
{
  endCopy = end;
  lineEndCopy = lineEnd;
  strokeCopy = stroke;
  pathsCopy = paths;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v22, v23, v24, v25, pathsCopy);
  v27 = v26;
  v29 = v28;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v30, v26, v28, v31, pathsCopy);
  v33 = v32;
  v35 = v34;
  objc_msgSend_calloutLineMidPointForWedgeLayoutInfo_startPoint_endPoint_(self, v36, v27, v29, v32, pathsCopy, v34);
  v38 = v37;
  v40 = v39;

  if (TSUPointsAlmostEqual())
  {
    v43 = objc_msgSend_bezierPathWithStart_end_(MEMORY[0x277D81160], v41, v27, v29, v33, v35);
    if (!context)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = objc_msgSend_bezierPathWithStart_end_(MEMORY[0x277D81160], v41, v27, v29, v38, v40);
    objc_msgSend_lineToPoint_(v43, v47, v33, v35, v48);
    if (!context)
    {
      goto LABEL_10;
    }
  }

  v49 = objc_msgSend_mutableCopy(strokeCopy, v42, v44, v45, v46);
  scaleCopy = scale;
  objc_msgSend_width(strokeCopy, v51, v52, v53, v54);
  v58 = v57 * scale;
  v59 = 1.0;
  v60 = 1.0;
  if (v58 > 1.0)
  {
    TSURound();
    v62 = v61;
    objc_msgSend_setWidth_(v49, v63, v61 / scaleCopy, v64, v65);
    v59 = v62;
  }

  objc_msgSend_width(strokeCopy, v55, v58, v60, v56);
  objc_msgSend_setActualWidth_(v49, v66, v67, v68, v69);
  *&v70 = v59;
  v74 = objc_msgSend_aliasedPathInContext_effectiveStrokeWidth_(v43, v71, v70, v72, v73, context);

  if (*outStroke)
  {
    v75 = v49;
    *outStroke = v49;
  }

  v43 = v74;
LABEL_10:
  v76 = lineEndCopy;
  v77 = endCopy;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  objc_msgSend_lineEndPositioningOnPath_atHead_headPoint_tailPoint_headLineEnd_tailLineEnd_stroke_(MEMORY[0x277D81160], v78, v33, v35, v27, v43, 0, v76, v77, strokeCopy, v29);
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  objc_msgSend_lineEndPositioningOnPath_atHead_headPoint_tailPoint_headLineEnd_tailLineEnd_stroke_(MEMORY[0x277D81160], v79, v33, v35, v27, v43, 1, v76, v77, strokeCopy, v29);
  *&v89 = qword_2764D7150[v27 < v33];
  v87[0] = v89;
  v87[1] = v90;
  v88 = v91;
  v85[0] = v92;
  v85[1] = v93;
  v86 = v94;
  v83 = objc_msgSend_createClippedPath_headPositioning_tailPositioning_stroke_(MEMORY[0x277D81160], v80, *&v92, *&v93, v81, v43, v87, v85, strokeCopy);
  if (path)
  {
    *path = objc_msgSend_newPathForLineEnd_startPoint_angle_stroke_(self, v82, *(&v92 + 1), *&v93, *&v92, v77, strokeCopy);
  }

  if (endPath)
  {
    *endPath = objc_msgSend_newPathForLineEnd_startPoint_angle_stroke_(self, v82, *(&v89 + 1), *&v90, *&v89, v76, strokeCopy);
  }

  return v83;
}

- (CGPoint)calloutLineStartpointForWedgeLayoutInfo:(id)info
{
  v6 = objc_msgSend_wedgeElement(info, a2, v3, v4, v5);
  objc_msgSend_pointAlongWedgeBisectionInChartCoordinateSpaceWithPercentDistanceFromWedgeTip_(v6, v7, 1.05, v8, v9);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)calloutLineEndpointForWedgeLayoutInfo:(id)info
{
  (MEMORY[0x2821F9670])(info, sel_pointAtLabelInChartCoordinateSpaceOnCloseXSideMiddleY);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)calloutLineMidPointForWedgeLayoutInfo:(id)info startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v7 = point.y;
  v8 = point.x;
  infoCopy = info;
  objc_msgSend_defaultCalloutLineMidPointForWedgeLayoutInfo_startPoint_endPoint_(self, v11, v8, v7, x, infoCopy, y);
  v13 = v12;
  v15 = v14;
  ShouldUsePerpendicularAngle_defaultMidpoint = objc_msgSend_wedgeLayoutInfoShouldUsePerpendicularAngle_defaultMidpoint_(self, v16, v12, v14, v17, infoCopy);

  if (ShouldUsePerpendicularAngle_defaultMidpoint)
  {
    v19 = v7 + y - v7;
  }

  else
  {
    v19 = v15;
  }

  if (ShouldUsePerpendicularAngle_defaultMidpoint)
  {
    v20 = v8;
  }

  else
  {
    v20 = v13;
  }

  result.y = v19;
  result.x = v20;
  return result;
}

- (CGPoint)defaultCalloutLineMidPointForWedgeLayoutInfo:(id)info startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  v6 = point.y;
  v8 = vabdd_f64(endPoint.y, point.y);
  infoCopy = info;
  objc_msgSend_combinedLabelIsOnLeftSide(infoCopy, v10, v11, v12, v13);
  if (y >= v6 || v8 < 0.00999999978)
  {
    objc_msgSend_firstHalfOfBendedLineVectorNormalizedWithWedgeLayoutInfo_shouldBeUpwards_(self, v14, 0.707106781, v15, v16, infoCopy, 0);
  }

  else
  {
    objc_msgSend_firstHalfOfBendedLineVectorNormalizedWithWedgeLayoutInfo_shouldBeUpwards_(self, v14, 0.707106781, v15, v16, infoCopy, 1);
  }

  TSUMultiplyPointScalar();

  TSUAddPoints();
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)wedgeLayoutInfoShouldUsePerpendicularAngle:(id)angle defaultMidpoint:(CGPoint)midpoint
{
  x = midpoint.x;
  angleCopy = angle;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v7, v8, v9, v10, angleCopy);
  v12 = v11;
  v14 = v13;
  objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v15, v11, v13, v16, angleCopy);
  v18 = v17;
  v22 = objc_msgSend_wedgeElement(angleCopy, v19, v17, v20, v21);
  shouldUsePerpendicularBendedLineWithStartPoint = objc_msgSend_shouldUsePerpendicularBendedLineWithStartPoint_(v22, v23, v12, v14, v24);

  v30 = objc_msgSend_combinedLabelIsOnLeftSide(angleCopy, v26, v27, v28, v29);
  v35 = objc_msgSend_innermostWedgeLayoutInfoWillUsePerpendicularAngle_(self, v31, v32, v33, v34, angleCopy);

  v36 = 1;
  if ((shouldUsePerpendicularBendedLineWithStartPoint & 1) == 0 && vabdd_f64(x, v18) >= 5.0)
  {
    v37 = x < v18;
    if (!v30)
    {
      v37 = x > v18;
    }

    v36 = v37 | v35;
  }

  return v36 & 1;
}

- (BOOL)innermostWedgeLayoutInfoWillUsePerpendicularAngle:(id)angle
{
  v8 = objc_msgSend_innermostWedgeLayoutInfo_(self, a2, v3, v4, v5, angle);
  if (v8)
  {
    objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v7, v9, v10, v11, v8);
    v13 = v12;
    v15 = v14;
    objc_msgSend_calloutLineEndpointForWedgeLayoutInfo_(self, v16, v12, v14, v17, v8);
    objc_msgSend_defaultCalloutLineMidPointForWedgeLayoutInfo_startPoint_endPoint_(self, v18, v13, v15, v19, v8, v20);
    ShouldUsePerpendicularAngle_defaultMidpoint = objc_msgSend_wedgeLayoutInfoShouldUsePerpendicularAngle_defaultMidpoint_(self, v21, v22, v23, v24, v8);
  }

  else
  {
    ShouldUsePerpendicularAngle_defaultMidpoint = 0;
  }

  return ShouldUsePerpendicularAngle_defaultMidpoint;
}

- (id)innermostWedgeLayoutInfo:(id)info
{
  infoCopy = info;
  v9 = objc_msgSend_combinedLabelIsOnLeftSide(infoCopy, v5, v6, v7, v8) ^ 1;
  objc_msgSend_calloutLineStartpointForWedgeLayoutInfo_(self, v10, v11, v12, v13, infoCopy);
  v15 = v14;
  v17 = v16;
  v20 = objc_msgSend_wedgeElement(infoCopy, v18, v14, v16, v19);
  started = objc_msgSend_isInUpperHalfOfChartWithStartPoint_(v20, v21, v15, v17, v22);

  v28 = objc_msgSend_allWedgeLayoutInfos(self, v24, v25, v26, v27);
  v33 = objc_msgSend_wedgeLayoutInfosInOneQuadrant_verticalHalfDisk_horizontalHalfDisk_(self, v29, v30, v31, v32, v28, v9, started ^ 1u);

  v38 = objc_msgSend_wedgeLayoutInfos(v33, v34, v35, v36, v37);
  v43 = objc_msgSend_count(v38, v39, v40, v41, v42);

  if (v43)
  {
    v48 = 0;
    while (1)
    {
      v49 = objc_msgSend_wedgeLayoutInfos(v33, v44, v45, v46, v47);
      v54 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, v51, v52, v53, v48);

      LOBYTE(v49) = objc_msgSend_isEqual_(v54, v55, v56, v57, v58, infoCopy);
      if (v49)
      {
        break;
      }

      ++v48;
      v59 = objc_msgSend_wedgeLayoutInfos(v33, v44, v45, v46, v47);
      v64 = objc_msgSend_count(v59, v60, v61, v62, v63);

      if (v48 >= v64)
      {
        goto LABEL_5;
      }
    }

    if (started)
    {
      v65 = v48 - 1;
    }

    else
    {
      v65 = v48 + 1;
    }
  }

  else
  {
LABEL_5:
    v65 = -1;
  }

  v66 = objc_msgSend_wedgeLayoutInfos(v33, v44, v45, v46, v47);
  v71 = objc_msgSend_tsu_rangeCheckedObjectAtIndex_(v66, v67, v68, v69, v70, v65);

  return v71;
}

- (CGPoint)firstHalfOfBendedLineVectorNormalizedWithWedgeLayoutInfo:(id)info shouldBeUpwards:(BOOL)upwards
{
  upwardsCopy = upwards;
  if (objc_msgSend_combinedLabelIsOnLeftSide(info, a2, v4, v5, v6))
  {
    v10.n128_f64[0] = 2.35619449;
  }

  else
  {
    v10.n128_f64[0] = 0.785398163;
  }

  v8.n128_u64[0] = 1.0;
  v9.n128_u64[0] = 0;

  MEMORY[0x2821EC448](!upwardsCopy, v8, v9, v10);
  result.y = v12;
  result.x = v11;
  return result;
}

@end