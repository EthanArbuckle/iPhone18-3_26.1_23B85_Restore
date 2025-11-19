@interface SBFlexibleWindowingAutoLayoutController
- (BOOL)_isDockVisibleForBoundingBox:(CGRect)a3 configuration:(id)a4 slideOverItem:(id)a5;
- (BOOL)_isStripVisibleForBoundingBox:(CGRect)a3 configuration:(id)a4 effectiveStripWidth:(double)a5 slideOverItem:(id)a6;
- (CGRect)_boundingBoxForSpace:(id)a3 configuration:(id)a4;
- (CGRect)_effectiveStageAreaForSnappingItem:(id)a3 inSpace:(id)a4 configuration:(id)a5;
- (CGRect)_stageAreaForBoundingBox:(CGRect)a3 configuration:(id)a4 effectiveStripWidth:(double)a5 slideOverItem:(id)a6;
- (id)spaceByPerformingFlexibleAutoLayoutWithSpace:(id)a3 configuration:(id)a4 options:(unint64_t)a5 itemsNeedingPositionSnapping:(id)a6 itemsNeedingSizeSnapping:(id)a7;
- (int64_t)_snapPositionOfItem:(id)a3 ifNecessaryInSpace:(id)a4 autoLayoutConfiguration:(id)a5 snappedEdgesMask:(int64_t)a6;
- (int64_t)_snapPositionOfItem:(id)a3 toRect:(CGRect)a4 inSpace:(id)a5 autoLayoutConfiguration:(id)a6 considerAdjacency:(BOOL)a7 snappedEdgesMask:(int64_t)a8 itemForPotentialPairing:(id)a9;
- (int64_t)_snapSizeOfItem:(id)a3 ifNecessaryForSpace:(id)a4 configuration:(id)a5 snappedEdgesMask:(int64_t)a6;
- (int64_t)_snapSizeOfItem:(id)a3 toRect:(CGRect)a4 inSpace:(id)a5 windowingConfiguration:(id)a6 considerAdjacency:(BOOL)a7 snappedEdgesMask:(int64_t)a8 newFrame:(CGRect *)a9;
- (void)_clusterForExposeWithRects:(CGRect *)a3 count:(int64_t)a4 stage:(CGRect)a5 padding:(CGSize)a6 screenScale:(double)a7 fullScreenRectsIfAny:(BOOL *)a8;
- (void)_updateCompactedFramesForSpace:(id)a3 configuration:(id)a4;
- (void)_updateExposeFramesForSpace:(id)a3 configuration:(id)a4;
- (void)_updateGroupingsOnSpace:(id)a3 windowingConfiguration:(id)a4;
- (void)_updateOcclusionStatusForItemsInSpace:(id)a3 containerBounds:(CGRect)a4;
- (void)_updateOccupiedAreaForSpace:(id)a3 configuration:(id)a4;
- (void)_updateOwnedRectEdgesForSpace:(id)a3 configuration:(id)a4;
@end

@implementation SBFlexibleWindowingAutoLayoutController

- (id)spaceByPerformingFlexibleAutoLayoutWithSpace:(id)a3 configuration:(id)a4 options:(unint64_t)a5 itemsNeedingPositionSnapping:(id)a6 itemsNeedingSizeSnapping:(id)a7
{
  v151 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v121 = a6;
  v120 = a7;
  v12 = [v11 windowingConfiguration];
  [v11 containerBounds];
  v129 = v14;
  v130 = v13;
  v134 = v16;
  v135 = v15;
  v17 = [v10 mutableCopy];
  v18 = [v17 autoLayoutItems];
  v19 = [v18 count];

  if (v19)
  {
    v116 = v10;
    [v12 minimumOnscreenWindowMargin];
    v21 = v20;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v118 = v17;
    v22 = [v17 autoLayoutItems];
    v23 = [v22 countByEnumeratingWithState:&v144 objects:v150 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v145;
      v122 = v134 - v21;
      v124 = v135 - v21;
      v27 = 0.5;
      v126 = v21;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v145 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v144 + 1) + 8 * i);
          v30 = [v29 isInSlideOver];
          [v29 position];
          v32 = v31;
          v34 = v33;
          [v29 size];
          v37 = v35;
          v38 = v36;
          if (v30)
          {
            [v12 slideOverBorderWidth];
            v40 = v39;
            [v12 dockTopMargin];
            v42 = v40 + v41;
            [v12 statusBarHeight];
            v44 = v40 + v43;
            obj = v40 + v43;
            if (v37 > v135 + v42 * -2.0)
            {
              v37 = v135 + v42 * -2.0;
            }

            if (v38 <= v134 - (v42 + v44))
            {
              v45 = v38;
            }

            else
            {
              v45 = v134 - (v42 + v44);
            }

            [v29 setSize:{v37, v45}];
            v27 = 0.5;
            v46 = v135 - v42 - v37 * 0.5;
            v47 = v42 + v37 * 0.5;
            if (v47 < v32)
            {
              v47 = v32;
            }

            if (v46 > v47)
            {
              v46 = v47;
            }

            v48 = v45 * 0.5;
            v21 = v126;
            v49 = v134 - v42 - v48;
            v50 = obj + v48;
            if (v50 < v34)
            {
              v50 = v34;
            }

            if (v49 > v50)
            {
              v49 = v50;
            }

            [v29 setPosition:{v46, v49}];
            if (!v25)
            {
              v25 = v29;
            }
          }

          else
          {
            v51 = v36 * v27;
            v52 = v124 + v35 * v27;
            v53 = v21 - v35 * v27;
            if (v53 < v32)
            {
              v53 = v32;
            }

            if (v52 <= v53)
            {
              v53 = v124 + v37 * v27;
            }

            v54 = v122 + v51;
            if (v51 < v34)
            {
              v51 = v34;
            }

            if (v54 <= v51)
            {
              v51 = v54;
            }

            [v29 setPosition:{v53, v51}];
            [v29 frame];
            v154.origin.y = v129;
            v154.origin.x = v130;
            v154.size.height = v134;
            v154.size.width = v135;
            if (CGRectEqualToRect(v153, v154))
            {
              [v29 setPositionIsSystemManaged:1];
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v144 objects:v150 count:16];
      }

      while (v24);
    }

    else
    {
      v25 = 0;
    }

    [v12 stripWidth];
    v56 = v55;
    [v12 minimumDefaultWindowSize];
    v58 = (v135 - v57) * 0.5;
    if (v56 >= v58)
    {
      v56 = v58;
    }

    [(SBFlexibleWindowingAutoLayoutController *)self _boundingBoxForSpace:v17 configuration:v11];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v123 = v56;
    [SBFlexibleWindowingAutoLayoutController _stageAreaForBoundingBox:"_stageAreaForBoundingBox:configuration:effectiveStripWidth:slideOverItem:" configuration:v11 effectiveStripWidth:v25 slideOverItem:?];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = v60;
    v115 = v62;
    v74 = v62;
    v75 = v64;
    v77 = v76;
    [v17 setBoundingBox:{v60, v74, v75, v66}];
    v78 = v68;
    v79 = v68;
    v80 = v70;
    v125 = v72;
    [v17 setStageArea:{v79, v70, v77, v72}];
    v127 = [v120 count];
    v117 = v11;
    if (v127 < 1)
    {
      v128 = [v121 count];
      if (v128 < 1)
      {
        v88 = v123;
        v89 = v115;
LABEL_68:
        v112 = [(SBFlexibleWindowingAutoLayoutController *)self _isStripVisibleForBoundingBox:v11 configuration:v25 effectiveStripWidth:v73 slideOverItem:v89, v75, v66, v88];
        v113 = [(SBFlexibleWindowingAutoLayoutController *)self _isDockVisibleForBoundingBox:v11 configuration:v25 slideOverItem:v73, v89, v75, v66];
        [v17 setBoundingBox:{v73, v89, v75, v66}];
        [v17 setStageArea:{v78, v80, v77, v125}];
        [v17 setStripVisible:v112];
        [v17 setDockVisible:v113];
        [v17 setConfiguration:v11];
        [(SBFlexibleWindowingAutoLayoutController *)self _updateOcclusionStatusForItemsInSpace:v17 containerBounds:v130, v129, v135, v134];
        [(SBFlexibleWindowingAutoLayoutController *)self _updateCompactedFramesForSpace:v17 configuration:v11];
        [(SBFlexibleWindowingAutoLayoutController *)self _updateGroupingsOnSpace:v17 windowingConfiguration:v12];
        [(SBFlexibleWindowingAutoLayoutController *)self _updateExposeFramesForSpace:v17 configuration:v11];
        [(SBFlexibleWindowingAutoLayoutController *)self _updateOwnedRectEdgesForSpace:v17 configuration:v11];
        [(SBFlexibleWindowingAutoLayoutController *)self _updateOccupiedAreaForSpace:v17 configuration:v11];

        v10 = v116;
        goto LABEL_69;
      }

      v85 = 0;
      v88 = v123;
      v89 = v115;
    }

    else
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v81 = [v17 autoLayoutItems];
      v82 = [v81 reverseObjectEnumerator];

      obja = v82;
      v83 = [v82 countByEnumeratingWithState:&v140 objects:v149 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = 0;
        v86 = 0;
        v87 = *v141;
        v88 = v123;
        v89 = v115;
LABEL_42:
        v90 = 0;
        while (1)
        {
          if (*v141 != v87)
          {
            objc_enumerationMutation(obja);
          }

          v91 = *(*(&v140 + 1) + 8 * v90);
          v92 = [v91 displayItem];
          v93 = [v120 containsObject:v92];

          if (v93)
          {
            v85 |= [(SBFlexibleWindowingAutoLayoutController *)self _snapSizeOfItem:v91 ifNecessaryForSpace:v118 configuration:v117 snappedEdgesMask:0]!= 0;
            if (++v86 == v127)
            {
              break;
            }
          }

          if (v84 == ++v90)
          {
            v84 = [obja countByEnumeratingWithState:&v140 objects:v149 count:16];
            if (v84)
            {
              goto LABEL_42;
            }

            break;
          }
        }
      }

      else
      {
        v85 = 0;
        v88 = v123;
        v89 = v115;
      }

      v128 = [v121 count];
      if (v128 <= 0)
      {
        goto LABEL_65;
      }

      v17 = v118;
    }

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v94 = [v17 autoLayoutItems];
    v95 = [v94 reverseObjectEnumerator];

    objb = v95;
    v96 = [v95 countByEnumeratingWithState:&v136 objects:v148 count:16];
    if (v96)
    {
      v97 = v96;
      v98 = 0;
      v99 = *v137;
LABEL_57:
      v100 = 0;
      while (1)
      {
        if (*v137 != v99)
        {
          objc_enumerationMutation(objb);
        }

        v101 = *(*(&v136 + 1) + 8 * v100);
        v102 = [v101 displayItem];
        v103 = [v121 containsObject:v102];

        if (v103)
        {
          v85 |= [(SBFlexibleWindowingAutoLayoutController *)self _snapPositionOfItem:v101 ifNecessaryInSpace:v118 autoLayoutConfiguration:v117 snappedEdgesMask:0]!= 0;
          if (++v98 == v128)
          {
            break;
          }
        }

        if (v97 == ++v100)
        {
          v97 = [objb countByEnumeratingWithState:&v136 objects:v148 count:16];
          if (v97)
          {
            goto LABEL_57;
          }

          break;
        }
      }
    }

LABEL_65:
    v11 = v117;
    v17 = v118;
    if (v85)
    {
      [(SBFlexibleWindowingAutoLayoutController *)self _boundingBoxForSpace:v118 configuration:v117];
      v73 = v104;
      v89 = v105;
      v75 = v106;
      v66 = v107;
      [SBFlexibleWindowingAutoLayoutController _stageAreaForBoundingBox:"_stageAreaForBoundingBox:configuration:effectiveStripWidth:slideOverItem:" configuration:v117 effectiveStripWidth:v25 slideOverItem:?];
      v78 = v108;
      v80 = v109;
      v77 = v110;
      v125 = v111;
    }

    goto LABEL_68;
  }

LABEL_69:

  return v17;
}

- (int64_t)_snapPositionOfItem:(id)a3 ifNecessaryInSpace:(id)a4 autoLayoutConfiguration:(id)a5 snappedEdgesMask:(int64_t)a6
{
  v6 = a6;
  v10 = ~a6;
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v12 autoLayoutItems];
  v15 = [v14 firstObject];

  if ((v10 & 0xF) != 0)
  {
    [(SBFlexibleWindowingAutoLayoutController *)self _effectiveStageAreaForSnappingItem:v11 inSpace:v12 configuration:v13];
    v6 = [(SBFlexibleWindowingAutoLayoutController *)self _snapPositionOfItem:v11 toRect:v12 inSpace:v13 autoLayoutConfiguration:0 considerAdjacency:v6 snappedEdgesMask:0 itemForPotentialPairing:?];
  }

  if (([v11 isInSlideOver] & 1) == 0)
  {
    v24 = v11;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v12 autoLayoutItems];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = self;
      v20 = *v26;
LABEL_6:
      v21 = 0;
      while (1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v16);
        }

        if ((~v6 & 0xF) == 0)
        {
          break;
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        if ((BSEqualObjects() & 1) == 0)
        {
          [v22 frame];
          v6 = [(SBFlexibleWindowingAutoLayoutController *)v19 _snapPositionOfItem:v24 toRect:v12 inSpace:v13 autoLayoutConfiguration:1 considerAdjacency:v6 snappedEdgesMask:v22 itemForPotentialPairing:?];
        }

        if (v18 == ++v21)
        {
          v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v18)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v11 = v24;
  }

  return v6;
}

- (int64_t)_snapPositionOfItem:(id)a3 toRect:(CGRect)a4 inSpace:(id)a5 autoLayoutConfiguration:(id)a6 considerAdjacency:(BOOL)a7 snappedEdgesMask:(int64_t)a8 itemForPotentialPairing:(id)a9
{
  v10 = a8;
  v11 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = ~a8;
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  if ((v18 & 0xF) == 0)
  {
    goto LABEL_5;
  }

  [v19 frame];
  v27 = v23;
  v28 = v24;
  v29 = v10 & 0xC;
  v30 = v10 & 3;
  if ((v10 & 3) != 0 && (v10 & 0xC) != 0)
  {
    goto LABEL_4;
  }

  v32 = v24 + v26;
  v100 = x + width;
  v101 = v23 + v25;
  v33 = y + height;
  [v20 stageArea];
  v34 = [v21 windowingConfiguration];
  v35 = [v34 snapPaddingSettings];
  [v35 interItemPadding];
  v37 = v36;

  v38 = [v34 snapPaddingSettings];
  [v38 edgePadding];
  v99 = v39;

  [v34 stageInterItemSpacing];
  v96 = v40;
  [v34 splitViewHandleNubWidth];
  v41 = [v19 isInSlideOver];
  v42 = 0.0;
  if (v41)
  {
    [v34 slideOverBorderWidth];
    v42 = v43;
  }

  if (v32 >= v33)
  {
    v44 = v33;
  }

  else
  {
    v44 = v32;
  }

  if (v28 >= y)
  {
    v45 = v28;
  }

  else
  {
    v45 = y;
  }

  v46 = v44 - v45;
  v47 = x + width;
  if (v101 < v100)
  {
    v47 = v101;
  }

  if (v27 >= x)
  {
    v48 = v27;
  }

  else
  {
    v48 = x;
  }

  v97 = v46;
  v98 = v47 - v48;
  if (!v11)
  {
    v37 = v99;
  }

  if (v29)
  {
    v49 = 1;
    goto LABEL_23;
  }

  v95 = v42;
  v50 = v28 - v42;
  [v19 position];
  if (v11 && fabs(v50 - v33) <= v37 && v98 > 0.0)
  {
    goto LABEL_33;
  }

  v42 = v95;
  v51 = v32 + v95;
  if (v11 && fabs(v51 - y) < v37 && v98 > 0.0)
  {
    goto LABEL_33;
  }

  if (fabs(y - v50) > v37 || v97 <= 0.0)
  {
    v49 = 0;
    if (fabs(v33 - v51) <= v37 && v97 > 0.0)
    {
LABEL_33:
      [v19 setPosition:?];
      if (!v30)
      {
        v49 = 1;
        v42 = v95;
        goto LABEL_56;
      }

LABEL_34:

LABEL_4:
      v10 = 15;
      goto LABEL_5;
    }
  }

  else
  {
    [v19 setPosition:?];
    if (v11 || !BSFloatIsZero())
    {
      v49 = 1;
      v42 = v95;
    }

    else
    {
      [v19 position];
      v91 = v52;
      v92 = v53;
      [v21 containerBounds];
      v55 = v54;
      v57 = vabdd_f64(v27, v56);
      v90 = v56;
      v89 = v56 + v54;
      v94 = vabdd_f64(v101, v56 + v54);
      [v21 leftStatusBarPartIntersectionRegion];
      v93 = v58;
      v60 = v59;
      [v21 rightStatusBarPartIntersectionRegion];
      v62 = v93 + v60;
      v63 = (v93 + v60) * 0.5;
      if (v99 >= v63)
      {
        v63 = v99;
      }

      if (v99 >= (v55 - v61) * 0.5)
      {
        v64 = v99;
      }

      else
      {
        v64 = (v55 - v61) * 0.5;
      }

      if (v57 <= v63 || v94 <= v64)
      {
        [v19 size];
        v67 = v87 * 0.5;
        if (v57 <= v94 || v94 > v64)
        {
          v88 = v90 + v67;
          goto LABEL_94;
        }

        v68 = v89;
LABEL_91:
        v88 = v68 - v67;
LABEL_94:
        [v19 setPosition:{v88, v92, v66}];
        goto LABEL_34;
      }

      v65 = v62 - v27;
      v66 = v101;
      v67 = v101 - v61;
      v42 = v95;
      if (v67 > 0.0 && (v66 = v101, v101 < v55) || (v49 = 1, v27 > 0.0) && v65 > 0.0)
      {
        if (v65 >= v67)
        {
          v88 = v91 + v65;
          goto LABEL_94;
        }

        v68 = v91;
        goto LABEL_91;
      }
    }
  }

LABEL_23:
  if (!v30)
  {
LABEL_56:
    v69 = v42;
    v70 = v101 + v42;
    [v19 position];
    v73 = v71;
    if (v11 && (v74 = v70 - x, fabs(v70 - x) <= v37) && v97 > 0.0)
    {
      v75 = v71;
      v76 = v72;
      if (v22 && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat())
      {
LABEL_75:
        [v21 screenScale];
        UISizeRoundToScale();
        v80 = v79;
        v82 = v81;
        [v22 setSize:?];
        UIRectGetCenter();
        [v22 setPosition:?];
        [v19 setSize:{v80, v82}];
        UIRectGetCenter();
        v84 = v19;
        goto LABEL_85;
      }

      v86 = v96 + v74;
    }

    else
    {
      v77 = v27 - v69;
      if (!v11 || (v78 = v77 - v100, fabs(v77 - v100) > v37) || v97 <= 0.0)
      {
        v85 = x - v77;
        if (fabs(v85) > v37 || v98 <= 0.0)
        {
          v85 = v100 - v70;
          v10 = 0;
          if (fabs(v100 - v70) > v37 || v98 <= 0.0)
          {
            goto LABEL_25;
          }
        }

        v83 = v85 + v73;
        v84 = v19;
LABEL_85:
        [v84 setPosition:{v83, v72}];

        if ((v49 & 1) == 0)
        {
          v10 = 3;
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v75 = v73;
      v76 = v72;
      if (v22 && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat() && BSFloatApproximatelyEqualToFloat())
      {
        goto LABEL_75;
      }

      v86 = v78 - v96;
    }

    v83 = v75 - v86;
    v84 = v19;
    v72 = v76;
    goto LABEL_85;
  }

  v10 = 3;
LABEL_25:

  if (v49)
  {
    v10 |= 0xCuLL;
  }

LABEL_5:

  return v10;
}

- (int64_t)_snapSizeOfItem:(id)a3 ifNecessaryForSpace:(id)a4 configuration:(id)a5 snappedEdgesMask:(int64_t)a6
{
  v6 = a6;
  v10 = ~a6;
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v13 windowingConfiguration];
  v15 = v11;
  [v15 frame];
  v36.origin.x = v16;
  v36.origin.y = v17;
  v36.size.width = v18;
  v36.size.height = v19;
  if ((v10 & 0xF) != 0)
  {
    [(SBFlexibleWindowingAutoLayoutController *)self _effectiveStageAreaForSnappingItem:v15 inSpace:v12 configuration:v13];
    v6 = [(SBFlexibleWindowingAutoLayoutController *)self _snapSizeOfItem:v15 toRect:v12 inSpace:v14 windowingConfiguration:0 considerAdjacency:v6 snappedEdgesMask:&v36 newFrame:?];
  }

  if (([v15 isInSlideOver] & 1) == 0)
  {
    v31 = v13;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [v12 autoLayoutItems];
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
LABEL_6:
      v24 = 0;
      while (1)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if ((~v6 & 0xF) == 0)
        {
          break;
        }

        v25 = *(*(&v32 + 1) + 8 * v24);
        if ((BSEqualObjects() & 1) == 0)
        {
          [v25 frame];
          v6 = [(SBFlexibleWindowingAutoLayoutController *)self _snapSizeOfItem:v15 toRect:v12 inSpace:v14 windowingConfiguration:1 considerAdjacency:v6 snappedEdgesMask:&v36 newFrame:?];
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v22)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v13 = v31;
  }

  if (v6)
  {
    [v15 frame];
    v39.origin.x = v26;
    v39.origin.y = v27;
    v39.size.width = v28;
    v39.size.height = v29;
    if (!CGRectEqualToRect(v36, v39))
    {
      [v13 screenScale];
      UISizeRoundToScale();
      [v15 setSize:?];
      UIRectGetCenter();
      [v15 setPosition:?];
    }
  }

  return v6;
}

- (int64_t)_snapSizeOfItem:(id)a3 toRect:(CGRect)a4 inSpace:(id)a5 windowingConfiguration:(id)a6 considerAdjacency:(BOOL)a7 snappedEdgesMask:(int64_t)a8 newFrame:(CGRect *)a9
{
  v11 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = a6;
  v19 = [v18 snapPaddingSettings];
  [v19 interItemPadding];
  v21 = v20;

  v22 = [v18 snapPaddingSettings];
  [v22 edgePadding];
  v24 = v23;

  [v18 stageInterItemSpacing];
  v26 = v25;
  v27 = 0.0;
  if ([v17 isInSlideOver])
  {
    [v18 slideOverBorderWidth];
    v27 = v28;
  }

  if ((~a8 & 0xFLL) != 0)
  {
    [v17 frame];
    v32 = v29 + v31;
    v34 = v30 + v33;
    v35 = x + width;
    v36 = y + height;
    v37 = a9->size.width;
    v38 = v29 - v27;
    if (v11)
    {
      v39 = v21;
    }

    else
    {
      v39 = v24;
    }

    if (v34 >= v36)
    {
      v40 = y + height;
    }

    else
    {
      v40 = v34;
    }

    if (v30 >= y)
    {
      v41 = v30;
    }

    else
    {
      v41 = y;
    }

    v42 = v40 - v41;
    if (v32 >= v35)
    {
      v43 = x + width;
    }

    else
    {
      v43 = v32;
    }

    if (v29 < x)
    {
      v29 = x;
    }

    v44 = v43 - v29;
    if ((a8 & 1) == 0 && v11 && vabdd_f64(v38, v35) < v39 && v38 - v35 != 0.0 && v42 >= 0.0)
    {
      v37 = v37 + v38 - v35 - v26;
      v45 = v35 + v26;
LABEL_29:
      v46 = v45 + v37 * 0.5;
      v32 = v46 + v37 * 0.5;
LABEL_33:
      v48 = 1;
      goto LABEL_34;
    }

    v46 = a9->origin.x + v37 * 0.5;
    if ((a8 & 1) != 0 || (v47 = x - v38, fabs(v47) >= v39))
    {
      if (a8)
      {
        v32 = v37 * 0.5 + v46;
        goto LABEL_33;
      }

      v48 = 0;
    }

    else
    {
      v48 = 0;
      if (v47 != 0.0 && v44 > 0.0)
      {
        v37 = v37 - v47;
        v45 = x + v27;
        goto LABEL_29;
      }
    }

LABEL_34:
    v49 = v27 + v32;
    if ((a8 & 2) != 0 || !v11 || vabdd_f64(v49, x) >= v39 || v49 - x == 0.0 || v42 < 0.0)
    {
      v51 = (a8 >> 1) & 1;
      if ((a8 & 2) != 0 || (v52 = v35 - v49, fabs(v52) >= v39) || (LODWORD(v51) = 0, v52 == 0.0) || v44 <= 0.0)
      {
LABEL_46:
        v53 = a9->size.height;
        v54 = v30 - v27;
        if ((a8 & 4) == 0 && v11)
        {
          v55 = v54 - v36;
          if (fabs(v54 - v36) < v39 && v55 != 0.0 && v44 >= 0.0)
          {
            v53 = v53 + v55 - v26;
            v56 = y + height;
LABEL_57:
            v57 = v56 + v53 * 0.5;
            v34 = v57 + v53 * 0.5;
LABEL_61:
            v59 = 1;
            goto LABEL_62;
          }
        }

        v57 = a9->origin.y + v53 * 0.5;
        if ((a8 & 4) != 0 || (v58 = y - v54, fabs(y - v54) >= v39))
        {
          if ((a8 & 4) != 0)
          {
            v34 = v53 * 0.5 + v57;
            goto LABEL_61;
          }

          v59 = 0;
        }

        else
        {
          v59 = 0;
          if (v58 != 0.0 && v42 > 0.0)
          {
            v53 = v53 - v58;
            v56 = y + v27;
            goto LABEL_57;
          }
        }

LABEL_62:
        v60 = v27 + v34;
        if ((a8 & 8) != 0 || !v11 || vabdd_f64(v60, y) >= v39 || v60 - y == 0.0 || v44 < 0.0)
        {
          if ((a8 & 8) != 0 || (v61 = v36 - v60, fabs(v36 - v60) >= v39))
          {
            if (v51)
            {
              v48 |= 2uLL;
            }

            if (v59)
            {
              v48 |= 4uLL;
            }

            if ((a8 & 8) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_83;
          }

          if (v61 == 0.0 || v42 <= 0.0)
          {
            if (v51)
            {
              v48 |= 2uLL;
            }

            if (v59)
            {
              v48 |= 4uLL;
            }

            goto LABEL_88;
          }

          v53 = v53 + v61;
          y = v36 - v27;
        }

        else
        {
          v53 = v53 - (v26 + v60 - y);
        }

        v57 = y + v53 * -0.5;
        if (v51)
        {
          v48 |= 2uLL;
        }

        if (v59)
        {
          v48 |= 4uLL;
        }

LABEL_83:
        v48 |= 8uLL;
LABEL_88:
        a9->origin.x = v46 - v37 * 0.5;
        a9->origin.y = v57 - v53 * 0.5;
        a9->size.width = v37;
        a9->size.height = v53;
        a8 = v48;
        goto LABEL_89;
      }

      v37 = v37 + v52;
      v50 = v35 - v27;
    }

    else
    {
      v37 = v37 - (v26 + v49 - x);
      v50 = x - v26;
    }

    v46 = v50 + v37 * -0.5;
    LODWORD(v51) = 1;
    goto LABEL_46;
  }

LABEL_89:

  return a8;
}

- (void)_updateOcclusionStatusForItemsInSpace:(id)a3 containerBounds:(CGRect)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 autoLayoutItems];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        [v12 frame];
        v13 = SBSafeAutoreleasedRegionFromCGRect();
        if (v9)
        {
          DifferenceWithRegion = CGRegionCreateDifferenceWithRegion();
          CFAutorelease(DifferenceWithRegion);
          if ((CGRegionIsEmpty() & 1) != 0 || (SBSafeAutoreleasedRegionFromCGRect(), IntersectionWithRegion = CGRegionCreateIntersectionWithRegion(), CFAutorelease(IntersectionWithRegion), CGRegionIsEmpty()))
          {
            [v12 setFullyOccluded:1];
            [v12 setOverlapped:1];
            [v12 setSceneRelevancyHint:2];
          }

          if (CGRegionIntersectsRegion())
          {
            [v12 setSceneRelevancyHint:1];
            if (([v12 isInSlideOver] & 1) == 0 && v8 && CGRegionIntersectsRegion())
            {
              [v12 setOverlapped:1];
            }
          }

          UnionWithRegion = CGRegionCreateUnionWithRegion();
          v9 = CFAutorelease(UnionWithRegion);
          if (([v12 isInSlideOver] & 1) == 0)
          {
            if (v8)
            {
              v17 = CGRegionCreateUnionWithRegion();
              v8 = CFAutorelease(v17);
            }

            else
            {
              v8 = v13;
            }
          }
        }

        else
        {
          [v12 setOverlapped:0];
          [v12 setFullyOccluded:0];
          [v12 setSceneRelevancyHint:0];
          if (!v8)
          {
            if ([v12 isInSlideOver])
            {
              v8 = 0;
            }

            else
            {
              v8 = v13;
            }
          }

          v9 = v13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_updateOccupiedAreaForSpace:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 containerBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v5 autoLayoutItems];
  v16 = objc_autoreleasePoolPush();
  if ([v15 count])
  {
    v17 = 0;
    v18 = MEMORY[0x277CBF398];
    v33 = v14;
    v34 = 0.0;
    do
    {
      v19 = [v15 objectAtIndex:{v17, *&v33}];
      [v19 frame];
      v39.origin.x = v8;
      v39.origin.y = v10;
      v39.size.width = v12;
      v39.size.height = v14;
      v37 = CGRectIntersection(v36, v39);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      v24 = CGRegionCreateWithRect();
      CFAutorelease(v24);
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      if (!CGRectIsNull(v38))
      {
        v25 = v12;
        v26 = v10;
        v27 = v8;
        v28 = width * height;
        if (v17)
        {
          IntersectionWithRect = CGRegionCreateIntersectionWithRect();
          CFAutorelease(IntersectionWithRect);
          if ((CGRegionIsEmpty() & 1) == 0)
          {
            v30 = CGRegionEnumeratorCreate();
            v35.origin = *v18;
            v35.size = v18[1];
            v31 = 0.0;
            if (CGRegionEnumeratorGetNextRect())
            {
              do
              {
                if (!CGRectIsNull(v35))
                {
                  v31 = v31 + v35.size.width * v35.size.height;
                }
              }

              while ((CGRegionEnumeratorGetNextRect() & 1) != 0);
            }

            if (v28 - v31 >= 0.0)
            {
              v28 = v28 - v31;
            }

            else
            {
              v28 = 0.0;
            }

            MEMORY[0x223D6BFF0](v30);
          }

          v34 = v34 + v28;
          UnionWithRegion = CGRegionCreateUnionWithRegion();
          CFAutorelease(UnionWithRegion);
        }

        else
        {
          v34 = width * height;
        }

        v8 = v27;
        v10 = v26;
        v12 = v25;
        v14 = v33;
      }

      ++v17;
    }

    while (v17 < [v15 count]);
  }

  else
  {
    v34 = 0.0;
  }

  objc_autoreleasePoolPop(v16);
  [v5 setOccupiedAreaPercentage:round(v34 / (v12 * v14) * 1000.0) / 1000.0];
}

- (void)_updateGroupingsOnSpace:(id)a3 windowingConfiguration:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a4 stageInterItemSpacing];
  v7 = v6;
  v51 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [v5 autoLayoutItems];
  if ([v10 count])
  {
    v11 = 0;
    v12 = v7 + 1.0;
    while (1)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      if (([v8 containsObject:v13] & 1) == 0)
      {
        break;
      }

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      v15 = [v9 containsObject:v14];

      if (!v15)
      {
        goto LABEL_7;
      }

      v16 = v11 + 1;
LABEL_35:
      v11 = v16;
      if (v16 >= [v10 count])
      {
        goto LABEL_36;
      }
    }

LABEL_7:
    v17 = [v10 objectAtIndex:v11];
    v18 = v11 + 1;
    if (v11 + 1 >= [v10 count])
    {
LABEL_34:

      v16 = v11 + 1;
      goto LABEL_35;
    }

    while (1)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      if ([v8 containsObject:v19])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
        v21 = [v9 containsObject:v20];

        if (v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }

      v22 = [v10 objectAtIndex:v18];
      if (([v17 isOverlapped] & 1) == 0 && (objc_msgSend(v22, "isOverlapped") & 1) == 0 && (objc_msgSend(v17, "isInSlideOver") & 1) == 0 && (objc_msgSend(v22, "isInSlideOver") & 1) == 0)
      {
        [v17 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v22 frame];
        v34 = v33;
        v35 = v26 + v30;
        v37 = v31 + v36;
        if (v26 + v30 >= v37)
        {
          v35 = v37;
        }

        if (v26 >= v31)
        {
          v31 = v26;
        }

        if (v35 > v31)
        {
          if (vabdd_f64(v24, v34 + v32) <= v12)
          {
            v38 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            if ([v8 containsObject:v38])
            {
            }

            else
            {
              v39 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
              v49 = [v9 containsObject:v39];

              if ((v49 & 1) == 0)
              {
                v46 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
                [v8 addObject:v46];

                v47 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
                [v9 addObject:v47];

                v44 = [SBFlexibleWindowingAutoLayoutGroup alloc];
                v53[0] = v22;
                v53[1] = v17;
                v45 = v53;
                goto LABEL_30;
              }
            }
          }

          if (vabdd_f64(v34, v24 + v28) <= v12)
          {
            v40 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
            if ([v9 containsObject:v40])
            {
              goto LABEL_31;
            }

            v41 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
            v50 = [v8 containsObject:v41];

            if ((v50 & 1) == 0)
            {
              v42 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
              [v8 addObject:v42];

              v43 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
              [v9 addObject:v43];

              v44 = [SBFlexibleWindowingAutoLayoutGroup alloc];
              v52[0] = v17;
              v52[1] = v22;
              v45 = v52;
LABEL_30:
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
              v48 = [(SBFlexibleWindowingAutoLayoutGroup *)v44 initWithItems:v40];
              [v51 addObject:v48];

LABEL_31:
            }
          }
        }
      }

LABEL_33:
      if (++v18 >= [v10 count])
      {
        goto LABEL_34;
      }
    }
  }

LABEL_36:
  [v5 setGroups:v51];
}

- (CGRect)_boundingBoxForSpace:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0x7FEFFFFFFFFFFFFFLL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x10000000000000;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FEFFFFFFFFFFFFFLL;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x10000000000000;
  v7 = [v5 autoLayoutItems];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__SBFlexibleWindowingAutoLayoutController__boundingBoxForSpace_configuration___block_invoke;
  v16[3] = &unk_2783B2518;
  v16[4] = &v29;
  v16[5] = &v25;
  v16[6] = &v21;
  v16[7] = &v17;
  [v7 enumerateObjectsUsingBlock:v16];

  v8 = v30[3];
  v9 = v22[3];
  v10 = v26[3] - v8;
  v11 = v18[3] - v9;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

void __78__SBFlexibleWindowingAutoLayoutController__boundingBoxForSpace_configuration___block_invoke(void *a1, void *a2)
{
  v3 = *(*(a1[4] + 8) + 24);
  v4 = a2;
  [v4 frame];
  if (v3 < v5)
  {
    v5 = v3;
  }

  *(*(a1[4] + 8) + 24) = v5;
  v6 = *(*(a1[5] + 8) + 24);
  [v4 frame];
  v9 = v7 + v8;
  if (v6 >= v9)
  {
    v9 = v6;
  }

  *(*(a1[5] + 8) + 24) = v9;
  v10 = *(*(a1[6] + 8) + 24);
  [v4 frame];
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *(*(a1[6] + 8) + 24) = v12;
  v13 = *(*(a1[7] + 8) + 24);
  [v4 frame];
  v15 = v14;
  v17 = v16;

  v18 = v15 + v17;
  if (v13 >= v15 + v17)
  {
    v18 = v13;
  }

  *(*(a1[7] + 8) + 24) = v18;
}

- (void)_updateCompactedFramesForSpace:(id)a3 configuration:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v6 containerBounds];
  v42 = v8;
  v43 = v7;
  v9 = [v6 windowingConfiguration];
  [v9 switcherPileCompactingFactor];
  v41 = v10;
  [v6 containerBounds];
  UIRectGetCenter();
  v39 = v12;
  v40 = v11;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = [v5 autoLayoutItems];
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    v17 = 1.79769313e308;
    v18 = -1.79769313e308;
    v19 = -1.79769313e308;
    v20 = 1.79769313e308;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        v44 = v18;
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        [v22 position];
        v24 = v23;
        v26 = v25;
        [v22 size];
        v28 = v27;
        v30 = v29;
        v31 = v27 * 0.5;
        v32 = v43 - v27 * 0.5;
        if (v31 >= v24)
        {
          v33 = v31;
        }

        else
        {
          v33 = v24;
        }

        if (v32 > v33)
        {
          v32 = v33;
        }

        v34 = v42 - v30 * 0.5;
        if (v30 * 0.5 >= v26)
        {
          v35 = v30 * 0.5;
        }

        else
        {
          v35 = v26;
        }

        if (v34 > v35)
        {
          v34 = v35;
        }

        v36 = v40 + v41 * (v32 - v40);
        v37 = v39 + v41 * (v34 - v39);
        [v22 setCompactedPosition:{v36, v37}];
        v38 = v37 - v30 * 0.5;
        if (v20 >= v36 - v31)
        {
          v20 = v36 - v31;
        }

        if (v19 < v28 + v36 - v31)
        {
          v19 = v28 + v36 - v31;
        }

        v18 = v44;
        if (v17 >= v38)
        {
          v17 = v37 - v30 * 0.5;
        }

        if (v44 < v30 + v38)
        {
          v18 = v30 + v38;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v15);
  }

  [v6 screenScale];
  UIRectRoundToScale();
  [v5 setCompactedBoundingBox:?];
}

- (BOOL)_isStripVisibleForBoundingBox:(CGRect)a3 configuration:(id)a4 effectiveStripWidth:(double)a5 slideOverItem:(id)a6
{
  width = a3.size.width;
  x = a3.origin.x;
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    [v10 containerBounds];
    v15 = x + width <= v13 + v14 - a5;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = x >= a5;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  if (v15)
  {
    v16 = [v10 windowingConfiguration];
    v17 = [*v12 userInterfaceLayoutDirection];
    [v11 frame];
    v20 = v18;
    if (v17 == 1)
    {
      v21 = v18 + v19;
      [v16 slideOverBorderWidth];
      v23 = v22 + v21;
      [v10 containerBounds];
      LOBYTE(v15) = v23 <= v24 + v25 - a5;
    }

    else
    {
      [v16 slideOverBorderWidth];
      LOBYTE(v15) = v20 - v26 >= a5;
    }
  }

LABEL_10:

  return v15;
}

- (CGRect)_stageAreaForBoundingBox:(CGRect)a3 configuration:(id)a4 effectiveStripWidth:(double)a5 slideOverItem:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v14 = a4;
  v15 = [v14 windowingConfiguration];
  [v14 containerBounds];
  v17 = v16;
  v19 = v18;
  v20 = [(SBFlexibleWindowingAutoLayoutController *)self _isStripVisibleForBoundingBox:v14 configuration:v13 effectiveStripWidth:x slideOverItem:y, width, height, a5];
  v21 = [(SBFlexibleWindowingAutoLayoutController *)self _isDockVisibleForBoundingBox:v14 configuration:v13 slideOverItem:x, y, width, height];

  [v15 statusBarHeight];
  v23 = 0.0;
  v24 = y < v22 * 0.5;
  v25 = 0.0;
  if (!v24)
  {
    [v15 statusBarHeight];
    v25 = v26;
  }

  if (v20)
  {
    v23 = [v15 prefersStripHidden] ? 0.0 : a5;
    if (![v15 prefersStripHidden])
    {
      v17 = v17 - a5;
    }
  }

  v27 = v19 - v25;
  if (v21)
  {
    [v15 floatingDockHeightWithTopAndBottomPadding];
    v27 = v27 - v28;
  }

  v29 = v23;
  v30 = v25;
  v31 = v17;
  v32 = v27;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)_isDockVisibleForBoundingBox:(CGRect)a3 configuration:(id)a4 slideOverItem:(id)a5
{
  height = a3.size.height;
  y = a3.origin.y;
  v8 = a5;
  v9 = a4;
  v10 = [v9 windowingConfiguration];
  [v9 containerBounds];
  v12 = v11;

  [v10 floatingDockHeightWithTopAndBottomPadding];
  if (v12 - (y + height) >= v13)
  {
    v15 = [v10 prefersDockHidden];
    v14 = v15 ^ 1;
    if (v8 && (v15 & 1) == 0)
    {
      [v8 frame];
      v18 = v16 + v17;
      [v10 slideOverBorderWidth];
      v20 = v19 + v18;
      [v10 floatingDockHeightWithTopAndBottomPadding];
      v14 = v20 <= v12 - v21;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)_effectiveStageAreaForSnappingItem:(id)a3 inSpace:(id)a4 configuration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  [v7 stageArea];
  v36 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 containerBounds];
  v18 = v17;
  v19 = [v8 windowingConfiguration];
  [v19 floatingDockHeightWithTopAndBottomPadding];
  v21 = v20;
  v22 = [v9 isInSlideOver];

  v23 = 0.0;
  v24 = 0.0;
  if (v22)
  {
    [v19 dockTopMargin];
    v23 = v25;
    [v19 statusBarHeight];
    v24 = v26;
  }

  v27 = v12 + v16;
  if (([v19 prefersDockHidden] & 1) != 0 || (objc_msgSend(v8, "dockHeightWithBottomEdgePadding"), v27 <= v18 - v28) || (objc_msgSend(v7, "boundingBox"), v18 - (v29 + v30) <= v21 * 0.5))
  {
    [v19 floatingDockHeightWithTopAndBottomPadding];
    if (v27 > v18 - v31 + 1.0)
    {
      v16 = v16 - v23;
    }
  }

  else
  {
    v16 = v16 - v21;
  }

  if (v12 + -1.0 <= 0.0)
  {
    v16 = v16 - v24;
    v12 = v12 + v24;
  }

  v32 = v36 + v23;
  v33 = v12;
  v34 = v14 + v23 * -2.0;
  v35 = v16;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)_updateOwnedRectEdgesForSpace:(id)a3 configuration:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  context = objc_autoreleasePoolPush();
  [v6 leftStatusBarPartIntersectionRegion];
  [v6 rightStatusBarPartIntersectionRegion];
  SBSafeAutoreleasedRegionFromCGRect();
  SBSafeAutoreleasedRegionFromCGRect();
  v46 = v6;
  [v6 containerBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = v5;
  obj = [v5 autoLayoutItems];
  v15 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = *v54;
    v51 = v8 + v12 + -1.0;
    v52 = v8 + v12 + 1.0;
    v49 = v10 + v14 + -1.0;
    v50 = v10 + v14 + 1.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        [v21 position];
        v23 = v22;
        v25 = v24;
        [v21 size];
        v27 = v26 * 0.5;
        v29 = v28 * 0.5;
        [v21 setOwnedDisplayRectCorners:0];
        [v21 frame];
        v30 = SBSafeAutoreleasedRegionFromCGRect();
        v31 = vabdd_f64(v23, v27);
        v32 = vabdd_f64(v25, v29);
        if (v31 > 1.0 || v32 > 1.0)
        {
          v34 = 0;
          v35 = 0;
        }

        else if (v17)
        {
          v35 = 0;
          v34 = 1;
        }

        else
        {
          if (!v18 || (CGRegionIntersectsRegion() & 1) == 0)
          {
            v17 |= 1uLL;
          }

          v34 = 1;
          v35 = 1;
        }

        v36 = v23 + v27 < v51 || v23 + v27 > v52;
        if (!v36 && v32 <= 1.0)
        {
          if ((v17 & 2) == 0)
          {
            if (!v18 || (CGRegionIntersectsRegion() & 1) == 0)
            {
              v17 |= 2uLL;
            }

            v35 |= 2uLL;
          }

          v34 |= 2uLL;
        }

        v37 = v25 + v29 > v50;
        if (v25 + v29 < v49)
        {
          v37 = 1;
        }

        v38 = v17 | 4;
        v39 = v35 | ~v17 & 4;
        v40 = v34 | 4;
        if (v37)
        {
          v38 = v17;
          v40 = v34;
          v39 = v35;
        }

        if (v31 > 1.0)
        {
          v38 = v17;
          v40 = v34;
          v39 = v35;
        }

        v41 = v36 || v37;
        if (v41)
        {
          v17 = v38;
        }

        else
        {
          v17 = v38 | 8;
        }

        if (v41)
        {
          v42 = v40;
        }

        else
        {
          v42 = v40 | 8;
        }

        if (v41)
        {
          v43 = v39;
        }

        else
        {
          v43 = v39 | ~v38 & 8;
        }

        [v21 setOwnedDisplayRectCorners:v43];
        [v21 setIntersectedDisplayRectCorners:v42];
        if (v18)
        {
          UnionWithRegion = CGRegionCreateUnionWithRegion();
          v18 = CFAutorelease(UnionWithRegion);
        }

        else
        {
          v18 = v30;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  [v47 setOwnedDisplayRectCorners:v17];
  objc_autoreleasePoolPop(context);
}

- (void)_updateExposeFramesForSpace:(id)a3 configuration:(id)a4
{
  v56 = a3;
  v6 = a4;
  v7 = [v56 autoLayoutItems];
  v8 = [v7 count];

  if (v8 >= 1)
  {
    v9 = [v6 windowingConfiguration];
    [v9 statusBarHeight];
    v11 = v10;
    [v6 containerBounds];
    v13 = v12;
    v15 = v14;
    v16 = v14 + -16.0;
    [v6 dockHeightWithBottomEdgePadding];
    v61.size.width = v13 + -160.0;
    v18 = v16 - v17 - v11;
    v61.origin.x = 80.0;
    v61.origin.y = v11;
    v61.size.height = v18;
    v62 = CGRectInset(v61, 40.0, 40.0);
    x = v62.origin.x;
    y = v62.origin.y;
    width = v62.size.width;
    height = v62.size.height;
    v23 = malloc_type_calloc(v8, 0x20uLL, 0x1000040E0EAB150uLL);
    if (v23)
    {
      v24 = v23;
      v53 = height;
      v54 = x;
      v58 = self;
      v55 = v9;
      v57 = v18 + -80.0 + -40.0;
      v25 = [v56 autoLayoutItems];
      v26 = 0;
      v27 = 0;
      v28 = v24 + 2;
      do
      {
        v29 = [v25 objectAtIndex:v27];
        [v29 position];
        v31 = v30;
        v33 = v32;
        [v29 size];
        v36 = v35;
        v37 = v34;
        if (v35 == v13 && v34 == v15)
        {
          if (!v26)
          {
            v26 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
          }

          v26[v27] = 1;
        }

        else
        {
          v31 = v13 * 0.5 + v31;
        }

        *(v28 - 2) = v31 - v36 * 0.5;
        *(v28 - 1) = v33 - v37 * 0.5;
        *v28 = v36;
        v28[1] = v37;
        v28 += 4;

        ++v27;
      }

      while (v8 != v27);
      [v6 screenScale];
      [(SBFlexibleWindowingAutoLayoutController *)v58 _clusterForExposeWithRects:v24 count:v8 stage:v26 padding:v54 screenScale:y fullScreenRectsIfAny:width, v53, 40.0, 40.0, v39];
      v40 = 0;
      v41 = v24 + 2;
      v42 = -1.79769313e308;
      v43 = 1.79769313e308;
      v44 = 1.79769313e308;
      v45 = -1.79769313e308;
      do
      {
        v46 = [v25 objectAtIndex:v40];
        v47 = *(v41 - 2);
        v48 = *(v41 - 1);
        v49 = *v41;
        v50 = v41[1];
        v41 += 4;
        v59 = v49;
        UIRectGetCenter();
        [v46 setExposePosition:?];
        if (v57 >= v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = v57;
        }

        [v46 size];
        [v46 setExposeScale:v51 / v52];
        if (v43 >= v47)
        {
          v43 = v47;
        }

        if (v42 < v47 + v59)
        {
          v42 = v47 + v59;
        }

        if (v44 >= v48)
        {
          v44 = v48;
        }

        if (v45 < v48 + v50)
        {
          v45 = v48 + v50;
        }

        ++v40;
      }

      while (v8 != v40);
      [v56 setExposeBoundingBox:{v43, v44, v42 - v43, v45 - v44}];
      free(v24);
      if (v26)
      {
        free(v26);
      }

      v9 = v55;
    }
  }
}

- (void)_clusterForExposeWithRects:(CGRect *)a3 count:(int64_t)a4 stage:(CGRect)a5 padding:(CGSize)a6 screenScale:(double)a7 fullScreenRectsIfAny:(BOOL *)a8
{
  height = a6.height;
  width = a6.width;
  v10 = a5.size.height;
  v11 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v15 = a4;
  v16 = round(sqrt(a4 / (a5.size.width / a5.size.height)));
  if (v16 == 1.0 && a8 == 0 && a4 == 3)
  {
    v19 = 2.0;
  }

  else
  {
    v19 = v16;
  }

  v20 = ceil(v15 / v19);
  while (1)
  {
    v21 = v20 * v19;
    if (v20 * v19 >= v15)
    {
      break;
    }

    if (v11 <= a5.size.height)
    {
      v19 = v19 + 1.0;
    }

    else
    {
      v20 = v20 + 1.0;
    }
  }

  v156 = v20;
  v157 = v19;
  v22 = v21;
  v23 = malloc_type_calloc(v21, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v23)
  {
    return;
  }

  v24 = v23;
  if (v157 <= 0.0)
  {
    v28 = 1.79769313e308;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0.0;
    v28 = 1.79769313e308;
    do
    {
      if (v156 > 0.0)
      {
        v29 = y + (v27 + 0.5) * (v10 / v157);
        v30 = &v23[v25].f64[1];
        v31 = 0.0;
        v32 = 1;
        do
        {
          v33 = x + (v31 + 0.5) * (v11 / v156);
          ++v25;
          *(v30 - 1) = v33;
          *v30 = v29;
          if (v28 >= v33)
          {
            v28 = v33;
          }

          v31 = v32;
          v30 += 2;
          ++v32;
        }

        while (v156 > v31);
      }

      v27 = ++v26;
    }

    while (v157 > v26);
  }

  v34 = v22 <= v14 ? v14 : v22;
  v154 = malloc_type_calloc(v34 * v34, 8uLL, 0x100004000313F17uLL);
  if (!v154)
  {
    return;
  }

  v150 = height;
  v151 = x;
  v152 = v11;
  v153 = v10;
  v147 = v24;
  if (v34 >= 1)
  {
    v35 = 0;
    v36 = &v24->f64[1];
    v37 = v154;
    do
    {
      v38 = 0;
      v39 = &a3[v35];
      if (v35 >= v14)
      {
        v39 = MEMORY[0x277CBF398];
      }

      v40 = v39->origin.x;
      v41 = v39->origin.y;
      v43 = v39->size.width;
      v42 = v39->size.height;
      v161 = v41 + v42 * 0.5;
      v163 = v39->origin.x + v43 * 0.5;
      v159 = v43;
      v44 = v39->origin.x + v43;
      v45 = v41 + v42;
      v46 = v36;
      do
      {
        v47 = 0.0;
        if (v35 < v14 && v38 < v22)
        {
          v48 = *(v46 - 1);
          v49 = *v46;
          v50 = hypot(v48 - v163, *v46 - v161);
          v51 = v50 + hypot(v48 - v44, v49 - v45);
          v47 = v51 + hypot(v48 - v40, v49 - v41);
          if (a8)
          {
            if (a8[v35])
            {
              v47 = v47 + (v48 - v28) * (v159 + v47);
            }
          }
        }

        v37[v38++] = v47;
        v46 += 2;
      }

      while (v34 != v38);
      ++v35;
      v37 += v34;
    }

    while (v35 != v34);
  }

  v52 = malloc_type_calloc(v14, 8uLL, 0x100004000313F17uLL);
  if (!v52)
  {
    return;
  }

  v53 = v52;
  if (v14 >= 1)
  {
    memset(v52, 255, 8 * v14);
  }

  v54 = malloc_type_calloc(v22, 8uLL, 0x100004000313F17uLL);
  if (!v54)
  {
    return;
  }

  v55 = v54;
  if (v22 >= 1)
  {
    memset(v54, 255, 8 * v22);
  }

  v56 = malloc_type_calloc(v34, 1uLL, 0x100004077774924uLL);
  if (!v56)
  {
    return;
  }

  v57 = v56;
  v58 = malloc_type_calloc(v34, 1uLL, 0x100004077774924uLL);
  if (!v58)
  {
    return;
  }

  v59 = v58;
  v186[0] = MEMORY[0x277D85DD0];
  v186[1] = 3221225472;
  v186[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke;
  v186[3] = &__block_descriptor_56_e5_v8__0l;
  v186[4] = v34;
  v186[5] = v57;
  v186[6] = v58;
  v60 = MEMORY[0x223D6F7F0](v186);
  v60[2]();
  v61 = malloc_type_calloc(v34 * v34, 1uLL, 0x100004077774924uLL);
  if (!v61)
  {
LABEL_136:

    return;
  }

  v62 = v61;
  v63 = 2 * v34;
  v185[0] = 0;
  v185[1] = v185;
  v185[2] = 0x2020000000;
  v185[3] = -1;
  v184[0] = 0;
  v184[1] = v184;
  v184[2] = 0x2020000000;
  v184[3] = -1;
  v64 = malloc_type_calloc(v63 * v63, 8uLL, 0x100004000313F17uLL);
  if (!v64)
  {
    _Block_object_dispose(v184, 8);
    _Block_object_dispose(v185, 8);
    goto LABEL_136;
  }

  v183[0] = MEMORY[0x277D85DD0];
  v183[1] = 3221225472;
  v183[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_2;
  v183[3] = &__block_descriptor_48_e5_q8__0l;
  v183[4] = v34;
  v183[5] = v154;
  v144 = v64;
  v164 = MEMORY[0x223D6F7F0](v183);
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_3;
  v176[3] = &unk_2783B2560;
  v178 = v34;
  v179 = v154;
  v180 = v57;
  v181 = v59;
  v182 = v62;
  counta = v60;
  v177 = counta;
  v160 = MEMORY[0x223D6F7F0](v176);
  v175[0] = MEMORY[0x277D85DD0];
  v175[1] = 3221225472;
  v175[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_4;
  v175[3] = &__block_descriptor_56_e5_q8__0l;
  v175[4] = v34;
  v175[5] = v62;
  v175[6] = v59;
  v146 = MEMORY[0x223D6F7F0](v175);
  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_5;
  v174[3] = &unk_2783B25A8;
  v174[6] = v63 * v34 + 12;
  v174[7] = v34;
  v174[8] = v154;
  v174[9] = v57;
  v174[10] = v59;
  v174[11] = v62;
  v174[4] = v185;
  v174[5] = v184;
  v162 = MEMORY[0x223D6F7F0](v174);
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_6;
  v166[3] = &unk_2783B25D0;
  v168 = v185;
  v169 = v184;
  v170 = v144;
  v171 = v63 * v34 + 12;
  v172 = v34;
  v173 = v62;
  v142 = counta;
  v167 = v142;
  count = MEMORY[0x223D6F7F0](v166);
  v165[0] = MEMORY[0x277D85DD0];
  v165[1] = 3221225472;
  v165[2] = __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_7;
  v165[3] = &__block_descriptor_64_e5_q8__0l;
  v165[4] = v34;
  v165[5] = v57;
  v143 = v57;
  v165[6] = v59;
  v165[7] = v154;
  v145 = MEMORY[0x223D6F7F0](v165);
  if (v63 * v34 >= -11)
  {
    v65 = 0;
    v66 = 1;
    while (1)
    {
      if (v65 > 2)
      {
        v67 = v162;
        if (v65 != 3)
        {
          v67 = count;
          if (v65 != 4)
          {
            v67 = v145;
          }
        }
      }

      else
      {
        v67 = v164;
        if (v65)
        {
          v67 = v160;
          if (v65 != 1)
          {
            v67 = v146;
            if (v65 != 2)
            {
              goto LABEL_63;
            }
          }
        }
      }

      v65 = v67[2](v67);
LABEL_63:
      if (v66 < v63 * v34 + 12)
      {
        ++v66;
        if (v65 < 6)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v14 >= 1)
  {
    v68 = 0;
    v69 = v62;
    do
    {
      if (v22 >= 1)
      {
        for (i = 0; i != v22; ++i)
        {
          if (v69[i] == 1)
          {
            v53[v68] = i;
            v55[i] = v68;
          }
        }
      }

      ++v68;
      v69 += v34;
    }

    while (v68 != v14);
  }

  free(v143);
  free(v59);
  free(v62);
  free(v144);

  _Block_object_dispose(v184, 8);
  _Block_object_dispose(v185, 8);

  if (v14 >= 1)
  {
    p_size = &a3->size;
    __asm { FMOV            V0.2D, #-0.5 }

    v76 = v53;
    v77 = v14;
    do
    {
      v78 = *v76++;
      p_size[-1] = vaddq_f64(v147[v78 & ~(v78 >> 63)], vmulq_f64(*p_size, _Q0));
      p_size += 2;
      --v77;
    }

    while (v77);
  }

  v79 = malloc_type_calloc(v157, 8uLL, 0x100004000313F17uLL);
  if (v79)
  {
    v80 = v79;
    v81 = malloc_type_calloc(v157, 8uLL, 0x100004000313F17uLL);
    if (v81)
    {
      v82 = v81;
      v83 = 0.0;
      v84 = 0.0;
      if (v157 > 0.0)
      {
        v85 = 0;
        do
        {
          v86 = 0.0;
          v87 = 0.0;
          if (v156 > 0.0)
          {
            v88 = 0.0;
            v89 = 1;
            do
            {
              v90 = v55[(v88 + v84 * v156)];
              if (v90 != -1)
              {
                v91 = &a3[v90];
                v86 = v86 + v91->size.width;
                if (v87 < v91->size.height)
                {
                  v87 = v91->size.height;
                }
              }

              v88 = v89++;
            }

            while (v156 > v88);
          }

          v80[v85] = v86;
          v81[v85++] = v87;
          v84 = v85;
        }

        while (v157 > v85);
        v92 = 0;
        v84 = 0.0;
        v83 = 0.0;
        do
        {
          if (v83 < v80[v92])
          {
            v83 = v80[v92];
          }

          v84 = v84 + v81[v92++];
        }

        while (v157 > v92);
      }

      v93 = (v152 - v156 * width) / v83;
      v94 = (v153 - v157 * v150) / v84;
      if (v93 < v94)
      {
        v94 = v93;
      }

      v95 = fmin(v94, 1.0);
      if (v14 >= 1)
      {
        v96 = &a3->size;
        v97 = v14;
        do
        {
          *&v96[-1].width = CGRectInset(*&v96[-1].width, width * -0.5 / v95, v150 * -0.5 / v95);
          v96 += 2;
          --v97;
        }

        while (v97);
      }

      if (v157 > 0.0)
      {
        v98 = 0;
        v99 = 0.0;
        v100 = 0.0;
        v101 = v150 / v95;
        while (1)
        {
          if (v156 > 0.0)
          {
            v102 = 0.0;
            v103 = 1.79769313e308;
            v104 = -1.79769313e308;
            v105 = 1;
            do
            {
              v106 = v55[(v102 + v99 * v156)];
              if (v106 != -1)
              {
                v107 = &a3[v106];
                v108 = v107->origin.x;
                if (v103 == 1.79769313e308)
                {
                  v103 = v107->origin.x;
                }

                if (v104 != -1.79769313e308)
                {
                  v108 = v104;
                }

                v104 = v108 + v107->size.width;
                v107->origin.x = v108;
              }

              v102 = v105++;
            }

            while (v156 > v102);
            if (v156 > 0.0)
            {
              break;
            }
          }

          v113 = v101 + v82[v98];
LABEL_125:
          v100 = v100 + v113;
          v99 = ++v98;
          if (v157 <= v98)
          {
            goto LABEL_126;
          }
        }

        v109 = v151 + v152 * 0.5 + (v103 + v104) * -0.5;
        v110 = 0.0;
        v111 = 1;
        do
        {
          v112 = v55[(v110 + v99 * v156)];
          if (v112 != -1)
          {
            a3[v112].origin.x = v109 + a3[v112].origin.x;
          }

          v110 = v111++;
        }

        while (v156 > v110);
        v113 = v101 + v82[v98];
        v114 = 0.0;
        v115 = 1;
        while (1)
        {
          v116 = v55[(v114 + v99 * v156)];
          if (v116 != -1)
          {
            break;
          }

LABEL_122:
          v114 = v115++;
          if (v156 <= v114)
          {
            goto LABEL_125;
          }
        }

        v117 = &a3[v116];
        v118 = v117->origin.y;
        v119 = v117->size.height;
        if (v104 != -1.79769313e308)
        {
          v118 = v100;
        }

        if (v98)
        {
          if (v157 + -1.0 <= v99)
          {
LABEL_121:
            v117->origin.y = v118;
            goto LABEL_122;
          }

          v120 = (v113 - v119) * 0.5;
        }

        else
        {
          v120 = v113 - v119;
        }

        v118 = v118 + v120;
        goto LABEL_121;
      }

LABEL_126:
      if (v14 > 0)
      {
        v121 = &a3->size;
        v122 = v14;
        do
        {
          *&v121[-1].width = CGRectInset(*&v121[-1].width, width * 0.5 / v95, v150 * 0.5 / v95);
          v121 += 2;
          --v122;
        }

        while (v122);
        v124 = *(MEMORY[0x277CBF398] + 16);
        v123 = *(MEMORY[0x277CBF398] + 24);
        v125 = *MEMORY[0x277CBF398];
        v126 = *(MEMORY[0x277CBF398] + 8);
        v127 = &a3->size;
        v128 = v14;
        do
        {
          v130 = v127[-1].width;
          v129 = v127[-1].height;
          v131 = v127->width;
          v132 = v127->height;
          v187.origin.x = v125;
          v187.origin.y = v126;
          v187.size.width = v124;
          v187.size.height = v123;
          if (CGRectIsNull(v187))
          {
            v133 = v129;
            v134 = v131;
          }

          else
          {
            v188.origin.x = v125;
            v188.origin.y = v126;
            v188.size.width = v124;
            v188.size.height = v123;
            v189.origin.x = v130;
            v189.origin.y = v129;
            v189.size.width = v131;
            v189.size.height = v132;
            *(&v133 - 1) = CGRectUnion(v188, v189);
            v130 = v135;
            v132 = v136;
          }

          v127 += 2;
          v123 = v132;
          v124 = v134;
          v126 = v133;
          v125 = v130;
          --v128;
        }

        while (v128);
      }

      UIRectGetCenter();
      UIRectGetCenter();
      if (v14 >= 1)
      {
        v137 = &a3->size;
        do
        {
          UIRectRoundToScale();
          v137[-1].width = v138;
          v137[-1].height = v139;
          v137->width = v140;
          v137->height = v141;
          v137 += 2;
          --v14;
        }

        while (v14);
      }

      free(v147);
      free(v154);
      free(v53);
      free(v55);
      free(v80);
      free(v82);
    }
  }
}

void *__123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke(void *result)
{
  v1 = result[4];
  if (v1 >= 1)
  {
    v2 = result[5];
    v3 = result[6];
    do
    {
      *v2++ = 0;
      *v3++ = 0;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 40);
    do
    {
      v4 = 0;
      v5 = 1.79769313e308;
      do
      {
        if (v5 >= *(v3 + 8 * v4))
        {
          v5 = *(v3 + 8 * v4);
        }

        ++v4;
      }

      while (v1 != v4);
      for (i = 0; i != v1; ++i)
      {
        *(v3 + 8 * i) = *(v3 + 8 * i) - v5;
      }

      ++v2;
      v3 += 8 * v1;
    }

    while (v2 != v1);
  }

  return 1;
}

uint64_t __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_3(void *a1)
{
  v1 = a1[5];
  if (v1 >= 1)
  {
    v2 = 0;
    for (i = 0; i < v1; ++i)
    {
      if (v1 >= 1)
      {
        v4 = 0;
        while (*(a1[6] + v1 * v2 + 8 * v4) != 0.0 || (*(a1[7] + i) & 1) != 0 || (*(a1[8] + v4) & 1) != 0)
        {
          if (v1 == ++v4)
          {
            goto LABEL_11;
          }
        }

        *(a1[9] + v1 * i + v4) = 1;
        v5 = a1[8];
        *(a1[7] + i) = 1;
        *(v5 + v4) = 1;
        v1 = a1[5];
      }

LABEL_11:
      v2 += 8;
    }
  }

  (*(a1[4] + 16))();
  return 2;
}

uint64_t __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_4(void *a1)
{
  v1 = a1[4];
  if (v1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = a1[5];
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*(v4 + i) == 1)
        {
          v6 = a1[6];
          if ((*(v6 + i) & 1) == 0)
          {
            *(v6 + i) = 1;
            ++v3;
          }
        }
      }

      ++v2;
      v4 += v1;
    }

    while (v2 != v1);
  }

  if (v3 >= v1)
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

uint64_t __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_5(void *a1)
{
  if (a1[6] < 1)
  {
    return 4;
  }

  v2 = a1[7];
  result = 5;
  for (i = 1; v2 >= 1; ++i)
  {
    v5 = 0;
    v6 = a1[8];
    v7 = -1;
    v8 = -1;
    do
    {
      v9 = 0;
      while (*(v6 + 8 * v9) != 0.0 || (*(a1[9] + v5) & 1) != 0 || *(a1[10] + v9) == 1)
      {
        if (v2 == ++v9)
        {
          goto LABEL_12;
        }
      }

      v8 = v5;
      v7 = v9;
LABEL_12:
      v10 = v8 == -1 || v7 == -1;
      v11 = v10;
      if (!v10)
      {
        break;
      }

      ++v5;
      v6 += 8 * v2;
    }

    while (v5 < v2);
    if (v11)
    {
      break;
    }

    *(a1[11] + v8 * v2 + v7) = 2;
    v2 = a1[7];
    if (v2 < 1)
    {
LABEL_29:
      *(*(a1[4] + 8) + 24) = v8;
      *(*(a1[5] + 8) + 24) = v7;
      return 4;
    }

    v12 = 0;
    while (*(a1[11] + v2 * v8 + v12) != 1)
    {
      if (v2 == ++v12)
      {
        goto LABEL_29;
      }
    }

    v13 = a1[10];
    *(a1[9] + v8) = 1;
    *(v13 + v12) = 0;
    if (i >= a1[6])
    {
      return 4;
    }
  }

  return result;
}

uint64_t __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_6(void *a1)
{
  v2 = a1[7];
  *v2 = *(*(a1[5] + 8) + 24);
  v2[1] = *(*(a1[6] + 8) + 24);
  if (a1[8] < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = a1[9];
      if (v5 < 1)
      {
        break;
      }

      v6 = 0;
      v7 = a1[10];
      v8 = (v7 + v2[2 * v3 * v5 + 1]);
      while (*v8 != 1)
      {
        v8 += v5;
        if (v5 == ++v6)
        {
          goto LABEL_16;
        }
      }

      v9 = 16 * (v3 | 1);
      *(v2 + v9 * v5) = v6;
      v2[2 * (v3 | 1) * a1[9] + 1] = v2[2 * v3 * a1[9] + 1];
      v10 = a1[9];
      v11 = *(v2 + v9 * v10);
      if (v10 < 1)
      {
LABEL_12:
        v12 = -1;
      }

      else
      {
        v12 = 0;
        v13 = v7 + v11 * v10;
        while (*(v13 + v12) != 2)
        {
          if (v10 == ++v12)
          {
            goto LABEL_12;
          }
        }
      }

      v3 += 2;
      v2[2 * v3 * v10] = v11;
      v2[2 * v3 * a1[9] + 1] = v12;
    }

    while (v4++ < a1[8]);
  }

LABEL_16:
  v15 = a1[9];
  v16 = v15 - 1;
  if (v15 >= 1)
  {
    v17 = 0;
    if (v3 >= v16)
    {
      v3 = v16;
    }

    v18 = (v3 & ~(v3 >> 63)) + 1;
    do
    {
      v19 = a1[9];
      v20 = (a1[7] + 8 * v17 * v19);
      *(a1[10] + *v20 * v19 + v20[1]) = *(a1[10] + *v20 * v19 + v20[1]) != 1;
      v17 += 2;
      --v18;
    }

    while (v18);
  }

  (*(a1[4] + 16))();
  v21 = a1[9];
  if (v21)
  {
    v22 = 0;
    do
    {
      v23 = a1[10];
      if (*(v23 + v22) == 2)
      {
        *(v23 + v22) = 0;
        v21 = a1[9];
      }

      ++v22;
    }

    while (v22 < v21 * v21);
  }

  return 2;
}

uint64_t __123__SBFlexibleWindowingAutoLayoutController__clusterForExposeWithRects_count_stage_padding_screenScale_fullScreenRectsIfAny___block_invoke_7(void *a1)
{
  v1 = a1[4];
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 8 * v1;
    v5 = 1.79769313e308;
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if ((*(a1[5] + v3) & 1) == 0 && (*(a1[6] + i) & 1) == 0 && v5 >= *(a1[7] + v2 + 8 * i))
        {
          v5 = *(a1[7] + v2 + 8 * i);
        }
      }

      ++v3;
      v2 += v4;
    }

    while (v3 != v1);
    v7 = 0;
    v8 = 0;
    v9 = a1[5];
    v10 = a1[6];
    do
    {
      v11 = *(v9 + v8);
      v12 = v7;
      v13 = v10;
      v14 = v1;
      do
      {
        if (v11)
        {
          *(a1[7] + v12) = v5 + *(a1[7] + v12);
        }

        if ((*v13 & 1) == 0)
        {
          *(a1[7] + v12) = *(a1[7] + v12) - v5;
        }

        ++v13;
        v12 += 8;
        --v14;
      }

      while (v14);
      ++v8;
      v7 += v4;
    }

    while (v8 != v1);
  }

  return 3;
}

@end