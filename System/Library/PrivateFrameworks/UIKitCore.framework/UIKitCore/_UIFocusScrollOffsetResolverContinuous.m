@interface _UIFocusScrollOffsetResolverContinuous
- (CGPoint)contentOffsetForScrollRequest:(id)a3;
@end

@implementation _UIFocusScrollOffsetResolverContinuous

- (CGPoint)contentOffsetForScrollRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 environmentScrollableContainer];
  v5 = [v4 scrollableContainer];

  v6 = [v3 focusItemInfo];
  [v3 focusItemFrame];
  v8 = v7;
  v10 = v9;
  rect_24 = v11;
  rect_16 = v12;
  v13 = [v3 focusMovement];
  [v13 heading];

  [v3 originatingContentOffset];
  v114 = v14;
  v115 = v15;
  CanScrollX = _UIFocusItemScrollableContainerCanScrollX(v5);
  CanScrollY = _UIFocusItemScrollableContainerCanScrollY(v5);
  [v3 targetContentOffset];
  v126 = v18;
  v127 = v19;
  [v3 originatingBounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (_IsKindOfUIView(v5) & 1) != 0 || (v28 = objc_opt_respondsToSelector(), v29 = 0.0, v122 = 0.0, v30 = 0.0, v31 = 0.0, (v28))
  {
    [v5 safeAreaInsets];
    v30 = v32;
    v122 = v33;
  }

  v116 = v31;
  v119 = v29;
  v34 = dyld_program_sdk_at_least();
  v35 = 90.0;
  if (v34)
  {
    v35 = 80.0;
  }

  v123 = v35;
  v121 = v30;
  if ([v5 __isKindOfUIScrollView])
  {
    [v5 _effectiveContentInset];
    v21 = v21 + v36;
    v23 = v23 + v37;
    v25 = v25 - (v36 + v38);
    v27 = v27 - (v37 + v39);
  }

  v133.origin.x = v21;
  v133.origin.y = v23;
  v133.size.width = v25;
  v133.size.height = v27;
  Height = CGRectGetHeight(v133);
  rect = v8;
  v134.origin.x = v8;
  v134.origin.y = v10;
  v134.size.width = rect_24;
  v134.size.height = rect_16;
  v118 = CGRectGetHeight(v134);
  if (!CanScrollX || (v135.origin.x = v21, v135.origin.y = v23, v135.size.width = v25, v135.size.height = v27, v41 = v123, CGRectGetWidth(v135) < v41 + v41))
  {
    v41 = 0.0;
  }

  rect_8 = v10;
  if (!CanScrollY || (v136.origin.x = v21, v136.origin.y = v23, v136.size.width = v25, v136.size.height = v27, v42 = CGRectGetHeight(v136), v43 = Height * 0.25, v42 < Height * 0.25 + Height * 0.25))
  {
    v43 = 0.0;
  }

  v117 = Height * 0.25;
  v137.origin.x = v21;
  v137.origin.y = v23;
  v137.size.width = v25;
  v137.size.height = v27;
  v138 = CGRectInset(v137, v41, v43);
  x = v138.origin.x;
  y = v138.origin.y;
  width = v138.size.width;
  v47 = v138.size.height;
  v48 = _UIFocusItemScrollableContainerScrollableAreaInsets(v5);
  v52 = width - v49 - v51;
  if (v52 >= 0.0)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v52 * 0.5;
  }

  v54 = v47 - v48 - v50;
  if (v54 >= 0.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v54 * 0.5;
  }

  v56 = x + v49;
  v57 = y + v48;
  v58 = [v6 item];

  if (v58)
  {
    v58 = [v3 environmentScrollableContainer];
    v59 = [v6 item];
    v60 = _UIFocusItemScrollableContainerScrollBoundaryMetricsForItem(v58, v59);

    v61 = [v60 isMinX];
    v62 = [v60 isMaxX];
    LODWORD(v58) = [v60 isMinY];
    v63 = [v60 isMaxY];
  }

  else
  {
    v63 = 0;
    v62 = 0;
    v61 = 0;
  }

  v64 = fmax(v52, 0.0);
  v65 = fmax(v54, 0.0);
  v124 = v57 + v55;
  v125 = v56 + v53;
  v66 = _UIFocusItemScrollableContainerMinimumContentOffset(v5);
  v68 = v67;
  v69 = _UIFocusItemScrollableContainerMaximumContentOffset(v5);
  v120 = v70;
  v71 = rect_8;
  v72 = v126;
  if (CanScrollX)
  {
    v73 = v69;
    v139.origin.x = v125;
    v139.origin.y = v124;
    v139.size.width = v64;
    v139.size.height = v65;
    MinX = CGRectGetMinX(v139);
    v140.origin.x = v125;
    v140.origin.y = v124;
    v140.size.width = v64;
    v140.size.height = v65;
    MaxX = CGRectGetMaxX(v140);
    v141.origin.y = rect_8;
    v141.origin.x = rect;
    v141.size.width = rect_24;
    v141.size.height = rect_16;
    v76 = CGRectGetMinX(v141);
    v142.origin.x = rect;
    v142.origin.y = rect_8;
    v142.size.width = rect_24;
    v142.size.height = rect_16;
    v77 = CGRectGetMaxX(v142);
    v78 = v77 - v76;
    v79 = MaxX - MinX;
    v80 = v126 + v77 - MaxX;
    if (v77 <= MaxX)
    {
      v80 = v126;
    }

    if (v76 < MinX)
    {
      v80 = v126 - (MinX - v76);
    }

    v81 = MinX + MaxX;
    v71 = rect_8;
    v82 = v126 - (v81 * 0.5 - (v76 + v77) * 0.5);
    if (v78 < v79)
    {
      v82 = v80;
    }

    if ((v62 & v61) != 0)
    {
      v83 = v82;
    }

    else
    {
      v83 = v66;
    }

    if (v62)
    {
      v82 = v73;
    }

    if (v61)
    {
      v82 = v83;
    }

    if (v82 < v66)
    {
      v82 = v66;
    }

    v72 = v82 <= v73 ? v82 : v73;
    v143.origin.x = rect;
    v143.origin.y = rect_8;
    v143.size.width = rect_24;
    v143.size.height = rect_16;
    v84 = CGRectGetMinX(v143);
    v144.origin.x = rect;
    v144.origin.y = rect_8;
    v144.size.width = rect_24;
    v144.size.height = rect_16;
    v85 = CGRectGetMaxX(v144);
    if (v84 < v72 || ([v5 visibleSize], v85 > v72 + v86))
    {
      [v5 visibleSize];
      v88 = v87;
      v145.origin.x = rect;
      v145.origin.y = rect_8;
      v145.size.width = rect_24;
      v145.size.height = rect_16;
      v89 = v88 - CGRectGetWidth(v145);
      if (v89 <= v122 + v116 + v123)
      {
        if (v89 >= 0.0)
        {
          v72 = v84 + v89 * 0.5 - v116;
          goto LABEL_52;
        }

        v90 = v84 - v116;
        [v5 visibleSize];
        v92 = v85 - v93;
      }

      else
      {
        v90 = v84 - v123 - v116;
        [v5 visibleSize];
        v92 = v123 + v85 - v91;
      }

      v94 = v122 + v92;
      if (vabdd_f64(v90, v114) >= vabdd_f64(v94, v114))
      {
        v72 = v94;
      }

      else
      {
        v72 = v90;
      }
    }
  }

LABEL_52:
  if (!CanScrollY)
  {
    v100 = v127;
    if (!v6)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v146.origin.x = v125;
  v146.origin.y = v124;
  v146.size.width = v64;
  v146.size.height = v65;
  MinY = CGRectGetMinY(v146);
  v147.origin.x = v125;
  v147.origin.y = v124;
  v147.size.width = v64;
  v147.size.height = v65;
  MaxY = CGRectGetMaxY(v147);
  v148.origin.x = rect;
  v148.origin.y = v71;
  v148.size.width = rect_24;
  v148.size.height = rect_16;
  MidY = CGRectGetMidY(v148);
  v98 = v127;
  if (MidY >= MinY)
  {
    v99 = v121;
    if (MidY > MaxY)
    {
      v98 = v127 + MidY - MaxY;
    }
  }

  else
  {
    v98 = v127 - (MinY - MidY);
    v99 = v121;
  }

  if ((v63 & v58) != 0)
  {
    v101 = v98;
  }

  else
  {
    v101 = v68;
  }

  if (v63)
  {
    v98 = v120;
  }

  if (!v58)
  {
    v101 = v98;
  }

  if (v101 < v68)
  {
    v101 = v68;
  }

  if (v101 <= v120)
  {
    v100 = v101;
  }

  else
  {
    v100 = v120;
  }

  v149.origin.x = rect;
  v149.origin.y = v71;
  v149.size.width = rect_24;
  v149.size.height = rect_16;
  v102 = CGRectGetMinY(v149);
  v150.origin.x = rect;
  v150.origin.y = v71;
  v150.size.width = rect_24;
  v150.size.height = rect_16;
  v103 = CGRectGetMaxY(v150);
  if (v102 < v100 || ([v5 visibleSize], v103 > v100 + v104 - v99))
  {
    v105 = fmax(v117 - v118, 0.0);
    [v5 visibleSize];
    v107 = v106;
    v151.origin.x = rect;
    v151.origin.y = v71;
    v151.size.width = rect_24;
    v151.size.height = rect_16;
    v108 = v107 - CGRectGetHeight(v151);
    if (v108 <= v99 + v119 + v105)
    {
      if (v108 >= 0.0)
      {
        v100 = v102 + v108 * 0.5 - v119;
        if (!v6)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      v109 = v102 - v119;
    }

    else
    {
      v109 = v102 - v105 - v119;
      v103 = v105 + v103;
    }

    [v5 visibleSize];
    if (vabdd_f64(v109, v115) >= vabdd_f64(v99 + v103 - v110, v115))
    {
      v100 = v99 + v103 - v110;
    }

    else
    {
      v100 = v109;
    }
  }

  if (v6)
  {
LABEL_81:
    v72 = _UIFocusItemScrollableContainerAdjustedContentOffsetToShowFocusItem(v5, v6, v72, v100);
    v100 = v111;
  }

LABEL_82:

  v112 = v72;
  v113 = v100;
  result.y = v113;
  result.x = v112;
  return result;
}

@end