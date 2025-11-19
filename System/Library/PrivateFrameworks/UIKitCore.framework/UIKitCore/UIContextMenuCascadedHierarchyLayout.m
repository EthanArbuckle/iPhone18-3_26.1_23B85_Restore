@interface UIContextMenuCascadedHierarchyLayout
@end

@implementation UIContextMenuCascadedHierarchyLayout

void __108___UIContextMenuCascadedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) traitCollection];
  v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);

  v6 = [v3 listView];
  [*(a1 + 40) _submenuOffsetForCascadingLeft:{objc_msgSend(v3, "leftOfParentWhenCascading")}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v6 nativeContentSize];
  if (*(a1 + 72) == 1)
  {
    v15 = *(a1 + 32);
    v147 = [v3 menu];
    v16 = [v147 metadata];
    rect = [v3 menu];
    v17 = [rect metadata];
    v141 = [v3 menu];
    v135 = [v141 metadata];
    v139 = [v3 menu];
    if (([v139 options] & 0x100) != 0)
    {
      if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsUIKitester())
      {
        v18 = v5;
        IsOverlayUI = 1;
      }

      else
      {
        v18 = v5;
        IsOverlayUI = _UIApplicationProcessIsOverlayUI();
      }
    }

    else
    {
      v18 = v5;
      IsOverlayUI = 0;
    }

    v137 = [*(a1 + 32) traitCollection];
    v21 = [v137 userInterfaceIdiom];
    v22 = v15;
    v23 = _UIContextMenuGetPlatformMetrics(v21);
    [v23 defaultMenuWidth];
    v25 = v24;
    if (IsOverlayUI)
    {
      [v23 keyboardShortcutsWidthExtension];
      v25 = v25 + v26;
    }

    v27 = [v23 leadingIndentationContributesToWidth];
    v28 = 0.0;
    v29 = 0.0;
    if ((v16 & 0x100) != 0 && v27)
    {
      v30 = _UIContextMenuGetPlatformMetrics(v21);
      [v30 leadingIndentationWidth];
      v29 = v31;
    }

    v32 = v25 + v29;
    if ((v17 & 0x10000) != 0)
    {
      v33 = _UIContextMenuGetPlatformMetrics(v21);
      [v33 menuGutterWidth];
      v28 = v34;
    }

    v35 = v32 + v28;
    if ((v135 & 0x100000000) != 0)
    {
      [v23 largePaletteWidthExtension];
      v35 = v35 + v36;
    }

    v5 = v18;
    if (v22)
    {
      v37 = [v22 traitCollection];
      v38 = [v37 preferredContentSizeCategory];
      IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v38, v39);

      if (IsAccessibilityContentSizeCategory)
      {
        [v22 bounds];
        Width = CGRectGetWidth(v158);
        v42 = _UIContextMenuDefaultContentSpacing(v22);
        v43 = Width - (v42 + v42);
        v44 = [v22 traitCollection];
        v45 = [v44 userInterfaceIdiom];

        if (v45)
        {
          v35 = 343.0;
        }

        else
        {
          v46 = [v22 _screen];
          [v46 _referenceBounds];
          v47 = CGRectGetWidth(v159);
          v48 = _UIContextMenuDefaultContentSpacing(v22);
          v35 = v47 - (v48 + v48);
        }

        if (v43 < v35)
        {
          v35 = v43;
        }
      }
    }

    v49 = *(a1 + 56);
    if (v49 >= v35)
    {
      v49 = v35;
    }

    [v6 preferredContentSizeWithinContainerSize:{v49, *(a1 + 64)}];
    v51 = v50;
    v20 = v52;
    [*(a1 + 32) maximumMenuHeight];
    v54 = v53;
    [v5 menuMaximumHeightLimitThreshold];
    if (v20 > v54 + v55)
    {
      [*(a1 + 32) maximumMenuHeight];
      v20 = v56;
    }

    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v57 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v125 = _UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled)
      {
        while (v57 >= v125)
        {
          _UIInternalPreferenceSync(v57, &_UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled, @"ContextMenuScrollTruncationDetentsEnabled", _UIInternalPreferenceUpdateBool);
          v125 = _UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled;
          if (v57 == _UIInternalPreference_ContextMenuScrollTruncationDetentsEnabled)
          {
            goto LABEL_32;
          }
        }

        if (byte_1EA95E0E4)
        {
          [v6 closestScrollTruncationDetentToHeight:v20];
          v20 = v126;
        }
      }
    }

LABEL_32:
    v148 = v51;
    [v6 setNativeContentSize:{v51, v20}];
  }

  else
  {
    v20 = v14;
    v148 = v13;
  }

  [v6 center];
  [v6 anchorPoint];
  v138 = v58;
  v60 = v59;
  [*(a1 + 32) _rectOfNodeParentElement:v3];
  v144 = v12;
  recta = v64;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v134 = v10;
    v136 = v8;
    [*(a1 + 40) _cascadingAreaBounds];
    v72 = v71;
    v132 = v69;
    v133 = v70;
    v131 = v68;
    if (*(a1 + 72) == 1)
    {
      v73 = v68;
      v127 = v67;
      v74 = v66;
      v75 = v69;
      v76 = v65;
      v77 = v70;
      MinY = CGRectGetMinY(*&v68);
      v160.origin.x = v73;
      v160.origin.y = v75;
      v160.size.width = v77;
      v160.size.height = v72;
      v78 = v72;
      v79 = CGRectGetMaxY(v160) - v20;
      v128 = v74;
      v129 = v76;
      v161.origin.x = v76;
      v161.origin.y = v74;
      v67 = v127;
      v161.size.width = recta;
      v161.size.height = v127;
      v80 = fmax(MinY, fmin(v79, CGRectGetMinY(v161)));
      v162.origin.x = v73;
      v162.origin.y = v75;
      v162.size.width = v77;
      v130 = v78;
      v162.size.height = v78;
      v81 = CGRectGetMaxY(v162) - v80;
      if (v20 >= v81)
      {
        v82 = v81;
      }

      else
      {
        v82 = v20;
      }

      if ([v3 leftOfParentWhenCascading])
      {
        v163.origin.x = 0.0;
        v163.origin.y = 0.0;
        v83 = v148;
        v163.size.width = v148;
        v163.size.height = v82;
        v84 = v136 + CGRectGetWidth(v163);
      }

      else
      {
        v84 = -v136;
        v83 = v148;
      }

      v167.origin.x = 0.0;
      v167.origin.y = 0.0;
      v167.size.width = v83;
      v167.size.height = v82;
      v138 = v84 / CGRectGetWidth(v167);
      v66 = v128;
      v65 = v129;
      v168.origin.x = v129;
      v168.origin.y = v128;
      v168.size.width = recta;
      v168.size.height = v127;
      v103 = CGRectGetMidY(v168) - v80;
      v169.origin.x = 0.0;
      v169.origin.y = 0.0;
      v149 = v83;
      v169.size.width = v83;
      v169.size.height = v82;
      v97 = 0.0;
      v140 = 0.0;
      v143 = v103 / CGRectGetHeight(v169);
      v72 = v130;
    }

    else
    {
      v143 = v60;
      [v6 bounds];
      v140 = v99;
      v97 = v100;
      v149 = v101;
      v82 = v102;
    }

    [v6 bounds];
    v104 = CGRectGetWidth(v170);
    v105 = [v3 leftOfParentWhenCascading];
    v106 = v65;
    v107 = v66;
    v108 = recta;
    v109 = v67;
    if (v105)
    {
      v110 = CGRectGetMinX(*&v106) - v136;
    }

    else
    {
      v110 = v136 + CGRectGetMaxX(*&v106);
    }

    if ([v3 leftOfParentWhenCascading])
    {
      v171.origin.x = v131;
      v171.origin.y = v132;
      v171.size.width = v133;
      v171.size.height = v72;
      v111 = v104 + CGRectGetMinX(v171);
      if (v110 >= v111)
      {
        v94 = v110;
      }

      else
      {
        v94 = v111;
      }
    }

    else
    {
      v172.origin.x = v131;
      v172.origin.y = v132;
      v172.size.width = v133;
      v172.size.height = v72;
      v112 = CGRectGetMaxX(v172) - v104;
      if (v110 >= v112)
      {
        v94 = v112;
      }

      else
      {
        v94 = v110;
      }
    }

    v173.origin.x = v65;
    v173.origin.y = v66;
    v173.size.width = recta;
    v173.size.height = v67;
    v98 = v134 + CGRectGetMidY(v173);
    v96 = v144;
    v93 = v149;
    v86 = v138;
    v92 = v82;
  }

  else
  {
    [*(a1 + 32) anchorPoint];
    v86 = v85;
    v88 = v87;
    [v6 nativeContentSize];
    v90 = v89;
    [*(a1 + 32) bounds];
    Height = CGRectGetHeight(v164);
    if (v90 >= Height)
    {
      v92 = Height;
    }

    else
    {
      v92 = v90;
    }

    v93 = v148;
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = v148;
    v165.size.height = v92;
    v94 = v148 * 0.5 + 0.0 + (v86 + -0.5) * CGRectGetWidth(v165);
    v143 = v88;
    v95 = v88 + -0.5;
    v96 = v144;
    v97 = 0.0;
    v166.origin.x = 0.0;
    v166.origin.y = 0.0;
    v166.size.width = v148;
    v166.size.height = v92;
    v98 = v95 * CGRectGetHeight(v166) + v92 * 0.5 + 0.0;
    v140 = 0.0;
  }

  v113 = [*(a1 + 32) hoveredListView];
  if (v6 == v113)
  {
    goto LABEL_64;
  }

  v114 = [*(a1 + 32) submenus];
  v115 = [v114 nodes];
  if ([v115 count] <= 1)
  {

LABEL_64:
    v117 = 1.0;
    goto LABEL_65;
  }

  v116 = [v5 applySubmenuScaling];

  if (v116)
  {
    v117 = 0.99;
  }

  else
  {
    v117 = 1.0;
  }

LABEL_65:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108___UIContextMenuCascadedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke_2;
  aBlock[3] = &unk_1E70F3B20;
  v118 = v6;
  v153 = v118;
  v154 = v86;
  v155 = v143;
  v156 = v94;
  v157 = v98;
  v119 = _Block_copy(aBlock);
  if ([*(a1 + 40) isAnimatingMenuAddition] && (objc_msgSend(*(a1 + 32), "currentListView"), v120 = objc_claimAutoreleasedReturnValue(), v120, v118 == v120))
  {
    [UIView performWithoutAnimation:v119];
  }

  else
  {
    v119[2](v119);
  }

  [v118 setBounds:{v140, v97, v93, v92}];
  [v118 bounds];
  [v118 setVisibleContentSize:{v121, v122}];
  CGAffineTransformMakeScale(&v151, v117, v117);
  v150 = v151;
  [v118 setTransform:&v150];
  v123 = v96 * *(*(*(a1 + 48) + 8) + 24);
  v124 = [v118 layer];
  [v124 setZPosition:v123];

  ++*(*(*(a1 + 48) + 8) + 24);
}

uint64_t __108___UIContextMenuCascadedHierarchyLayout_performLayoutForComputingPreferredContentSize_withMaxContainerSize___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAnchorPoint:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v4 setCenter:{v2, v3}];
}

void __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke(id *a1)
{
  [a1[4] addSubview:a1[5]];
  [a1[4] _rectOfNodeParentElement:a1[6]];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [a1[4] window];
  [a1[5] bounds];
  Width = CGRectGetWidth(v30);
  [a1[7] _cascadingAreaBounds];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_2;
  aBlock[3] = &unk_1E711F7B8;
  aBlock[4] = a1[7];
  *&aBlock[5] = v3;
  *&aBlock[6] = v5;
  *&aBlock[7] = v7;
  *&aBlock[8] = v9;
  *&aBlock[9] = Width;
  aBlock[10] = v12;
  aBlock[11] = v13;
  aBlock[12] = v14;
  aBlock[13] = v15;
  v16 = _Block_copy(aBlock);
  v17 = v16[2](v16, 1);
  v18 = v16[2](v16, 2);
  v19 = v18;
  if (v17 && v18)
  {
    v19 = [a1[8] leftOfParentWhenCascading];
  }

  else if (((v18 | v17) & 1) == 0)
  {
    [a1[4] convertRect:v10 toView:{v3, v5, v7, v9}];
    x = v31.origin.x;
    y = v31.origin.y;
    v22 = v31.size.width;
    height = v31.size.height;
    MinX = CGRectGetMinX(v31);
    [v10 bounds];
    v25 = CGRectGetWidth(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = v22;
    v33.size.height = height;
    v19 = MinX > v25 - CGRectGetMaxX(v33);
  }

  [a1[6] setLeftOfParentWhenCascading:v19];
  [a1[5] setBounds:{0.0, 0.0, Width, 44.0}];
  CGAffineTransformMakeScale(&v28, 0.2, 0.2);
  v26 = a1[5];
  v27 = v28;
  [v26 setTransform:&v27];
  [a1[5] setShadowAlpha:0.0];
  [a1[5] setAlpha:0.0];
}

BOOL __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _submenuOffsetForCascadingLeft:a2 == 2];
  v5 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (a2 == 2)
  {
    v10 = CGRectGetMinX(*&v6) - v5 - *(a1 + 72);
    return v10 > CGRectGetMinX(*(a1 + 80));
  }

  else
  {
    v12 = v5 + CGRectGetMaxX(*&v6) + *(a1 + 72);
    return v12 < CGRectGetMaxX(*(a1 + 80));
  }
}

void __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_3(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_4;
  v8[3] = &unk_1E70F3590;
  v9 = *(a1 + 32);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v8 animations:v5, v6, v7];
}

uint64_t __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 setShadowAlpha:1.0];
}

void __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_5(uint64_t a1)
{
  v11 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_6;
  v8[3] = &unk_1E70F6150;
  v8[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v8 animations:v5, v6, v7];
}

uint64_t __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setIsAnimatingMenuAddition:1];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  v3 = *(a1 + 32);

  return [v3 setIsAnimatingMenuAddition:0];
}

uint64_t __100___UIContextMenuCascadedHierarchyLayout_navigateDownFromNode_toNode_alongsideAnimations_completion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) didCompleteMenuAppearanceAnimation];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __98___UIContextMenuCascadedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke(uint64_t a1)
{
  v11 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___UIContextMenuCascadedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_2;
  v8[3] = &unk_1E70F37C0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *&v5 = minimum;
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView _modifyAnimationsWithPreferredFrameRateRange:1048614 updateReason:v8 animations:v5, v6, v7];
}

void __98___UIContextMenuCascadedHierarchyLayout_navigateUpFromNode_toNode_alongsideAnimations_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) listView];
  CGAffineTransformMakeScale(&v5, 0.2, 0.2);
  v4 = v5;
  [v2 setTransform:&v4];
  [v2 setAlpha:0.0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, 2);
  }
}

@end