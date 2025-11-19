@interface UIContextMenuCollectionViewLayout
@end

@implementation UIContextMenuCollectionViewLayout

_UIContextMenuLayoutSection *___UIContextMenuCollectionViewLayout_block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v152[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(a1 + 32) sectionIdentifiers];
  v146 = a2;
  v7 = [v6 objectAtIndexedSubscript:a2];

  v8 = [v5 traitCollection];
  v9 = [v7 cellSizeGivenTraits:v8];

  v10 = [*(a1 + 32) numberOfItemsInSection:v7];
  v147 = a1;
  if ([v7 layout] != 1)
  {
    v142 = v7;
    v29 = 3;
    if (v9 != 1)
    {
      v29 = 0;
    }

    if (!v9)
    {
      v29 = 4;
    }

    if (v10 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v10;
    }

    v31 = [MEMORY[0x1E695DFA8] set];
    v143 = v10;
    v145 = v31;
    if (v30)
    {
      v144 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 40) compactGroupInsets];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v141 = v5;
      v40 = [v5 container];
      [v40 effectiveContentSize];
      v42 = v41 - v35 - v39;

      v43 = 0;
      v44 = (v30 >> 1);
      if ((v30 & 1) == 0)
      {
        v44 = (v30 - 1);
      }

      v45 = v44;
      do
      {
        UIFloorToScale(v42 / v30, *(a1 + 64));
        if (v45 == v43)
        {
          v47 = v42 - v46 * (v30 - 1);
        }

        else
        {
          v47 = v46;
        }

        v48 = *(a1 + 72);
        v49 = MEMORY[0x1E695E0F0];
        if (v48 > 0.0)
        {
          v50 = _UIContextMenuSeparator(2, v48);
          v151 = v50;
          v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v151 count:1];
        }

        v51 = [off_1E70ECB18 absoluteDimension:v47];
        v52 = [off_1E70ECB18 uniformAcrossSiblingsWithEstimate:*(a1 + 80)];
        v53 = [off_1E70ECB40 sizeWithWidthDimension:v51 heightDimension:v52];
        v54 = [off_1E70ECB30 itemWithSize:v53 decorationItems:v49];
        [v144 addObject:v54];

        a1 = v147;
        v55 = [MEMORY[0x1E696AC88] indexPathForItem:v43 inSection:v146];
        [v145 addObject:v55];

        ++v43;
      }

      while (v30 != v43);
      v11 = [off_1E70ECB28 horizontalGroupWithLayoutSize:*(v147 + 48) subitems:v144];
      [v11 setContentInsets:{v33, v35, v37, v39}];

      v5 = v141;
      v10 = v143;
    }

    else
    {
      v58 = v31;
      v59 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:a2];
      [v58 addObject:v59];

      v11 = 0;
    }

    v60 = v10 - v30;
    if (v60 < 1)
    {
      v26 = 0;
    }

    else
    {
      v61 = *(a1 + 72);
      if (v61 <= 0.0)
      {
        v63 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v62 = _UIContextMenuSeparator(1, v61);
        v150 = v62;
        v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
      }

      v64 = [off_1E70ECB30 itemWithSize:*(a1 + 48) decorationItems:v63];
      v26 = [off_1E70ECB28 verticalGroupWithLayoutSize:*(a1 + 48) repeatingSubitem:v64 count:v60];
      v65 = [off_1E70ECB48 fixedSpacing:*(a1 + 72)];
      [v26 setInterItemSpacing:v65];
    }

    v66 = [MEMORY[0x1E695DF70] array];
    v67 = v66;
    if (v11)
    {
      [v66 addObject:v11];
      v68 = v147;
      if (!v26)
      {
        v69 = 1;
LABEL_38:
        v70 = [_UIContextMenuLayoutSection alloc];
        [off_1E70ECB28 verticalGroupWithLayoutSize:*(v68 + 48) subitems:v67];
        v72 = v71 = v68;
        v73 = v70;
        v74 = v145;
        v75 = [(_UIContextMenuLayoutSection *)v73 initWithLayoutGroup:v72 hiddenSeparatorIndexPaths:v145];

        [*(v71 + 40) sectionInsets];
        v77 = v76;
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v84 = (v11 != 0) & [*(v71 + 40) compactSectionIgnoresVerticalInsets];
        if (v84)
        {
          v85 = 0.0;
        }

        else
        {
          v85 = v77;
        }

        if ((v84 & v69) != 0)
        {
          v86 = 0.0;
        }

        else
        {
          v86 = v81;
        }

        [(NSCollectionLayoutSection *)v75 setContentInsets:v85, v79, v86, v83];
        v7 = v142;
        v10 = v143;
        goto LABEL_59;
      }
    }

    else
    {
      v68 = v147;
      if (!v26)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v140 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v140, OS_LOG_TYPE_FAULT, "Found repeated instances of the same menu element in the context menu, only one will be used. This is a client issue.", buf, 2u);
          }
        }

        else
        {
          v97 = *(__UILogGetCategoryCachedImpl("Assert", &kContextMenuSubmenuTitleHeader_block_invoke___s_category) + 8);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v97, OS_LOG_TYPE_ERROR, "Found repeated instances of the same menu element in the context menu, only one will be used. This is a client issue.", buf, 2u);
          }
        }

        v98 = *(v147 + 48);
        v69 = 1;
        v99 = _UIContextMenuSeparator(1, *(v147 + 72));
        v149 = v99;
        v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
        v101 = v98;
        v68 = v147;
        v102 = [off_1E70ECB30 itemWithSize:v101 decorationItems:v100];

        [v67 addObject:v102];
        goto LABEL_38;
      }
    }

    [v67 addObject:v26];
    v69 = 0;
    goto LABEL_38;
  }

  v11 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
  [*(a1 + 40) paletteMinimumItemSize];
  v13 = v12;
  v15 = v14;
  v16 = a1;
  v17 = v5;
  v18 = [v5 container];
  [v18 contentSize];
  v20 = v19;

  [v11 _scaledValueForValue:v15];
  UIRoundToScale(v21, *(v16 + 64));
  v23 = v22;
  if ([*(v16 + 40) enableFloatingFocusStyle])
  {
    v24 = [off_1E70ECB18 uniformAcrossSiblingsWithEstimate:v13];
    v25 = [off_1E70ECB18 uniformAcrossSiblingsWithEstimate:v23];
    v26 = [off_1E70ECB40 sizeWithWidthDimension:v24 heightDimension:v25];
    v27 = 16.0;
    v28 = 24.0;
  }

  else
  {
    if ([v7 preferredCellSize] == 2)
    {
      v28 = 16.0;
      v56 = floor((v20 + -16.0) / (v23 + 16.0));
      if (v56 >= v10)
      {
        v56 = v10;
      }

      v27 = fmax((v20 - v23 * v56) / (v56 + 1), 16.0);
      v57 = v23;
    }

    else
    {
      [v11 _scaledValueForValue:v13];
      UIRoundToScale(v87, *(v147 + 64));
      v89 = v88;
      v90 = floor(v20 / v88);
      if (v10 < 4)
      {
        v96 = v20 / (v10 + 1);
      }

      else
      {
        [*(v147 + 40) dynamicImageBoxWidth];
        v92 = v91 * 0.5;
        [*(v147 + 40) menuItemInternalPadding];
        v94 = v92 + v93;
        [*(v147 + 40) leadingImageOffset];
        v96 = (v20 - (v94 + v95 + v94 + v95)) / (v10 - 1);
        if (v96 < v89)
        {
          v96 = v89;
        }
      }

      UIRoundToScale(v96, *(v147 + 64));
      v103 = v10;
      if (v90 <= v10)
      {
        v103 = v90;
      }

      v28 = (v20 - v103 * v57) * 0.5;
      v27 = 0.0;
    }

    v24 = [off_1E70ECB18 estimatedDimension:v57];
    v25 = [off_1E70ECB18 estimatedDimension:v23];
    v26 = [off_1E70ECB40 sizeWithWidthDimension:v24 heightDimension:v25];
  }

  v104 = [off_1E70ECB30 itemWithLayoutSize:v26];
  v152[0] = v104;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:1];
  v67 = [off_1E70ECB28 verticalGroupWithLayoutSize:v26 subitems:v105];

  v75 = [off_1E70ECB38 sectionWithGroup:v67];
  [(NSCollectionLayoutSection *)v75 setOrthogonalScrollingBehavior:1];
  [(NSCollectionLayoutSection *)v75 setContentInsets:0.0, v28, 0.0, v28];
  v106 = [*(v147 + 40) gradientMaskingConfiguration];
  [(NSCollectionLayoutSection *)v75 _setClipsContentToBounds:v106 != 0];

  v74 = v104;
  [(NSCollectionLayoutSection *)v75 setSupplementaryContentInsetsReference:1];
  [(NSCollectionLayoutSection *)v75 setInterGroupSpacing:v27];
  v5 = v17;
LABEL_59:

  if (v10 < 1)
  {
    goto LABEL_76;
  }

  v107 = [MEMORY[0x1E695DF70] array];
  if (([v7 isRoot] & 1) == 0)
  {
    v108 = [v7 title];
    v109 = [v108 length];

    if (v109)
    {
      v110 = *(v147 + 48);
      [*(v147 + 40) headerOffset];
      v111 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v110 elementKind:@"kContextMenuHeader" alignment:1 absoluteOffset:?];
      [v107 addObject:v111];
    }
  }

  v112 = [*(v147 + 32) sectionIdentifiers];
  v113 = [v112 count] - 1;

  if (v113 > v146)
  {
    v114 = v7;
    if ([v7 wantsSectionSeparator])
    {
      v115 = [*(v147 + 32) sectionIdentifiers];
      v116 = [v115 objectAtIndexedSubscript:v146 + 1];
      v117 = [v116 wantsSectionSeparator];

      if (v117)
      {
        v118 = [off_1E70ECB18 fractionalWidthDimension:1.0];
        v119 = _UIContextMenuGetPlatformMetrics([*(v147 + 56) userInterfaceIdiom]);
        [v119 sectionSeparatorHeight];
        v121 = v120;

        v122 = [off_1E70ECB18 absoluteDimension:v121];
        v123 = [off_1E70ECB40 sizeWithWidthDimension:v118 heightDimension:v122];

        v124 = [*(v147 + 40) gradientMaskingConfiguration];
        v125 = [v124 backgroundMasksCorners];

        if (v125)
        {
          v126 = @"kContextMenuGradientMaskSectionSeparator";
        }

        else
        {
          v126 = @"kContextMenuSectionSeparator";
        }

        v127 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v123 elementKind:v126 alignment:5];
        v128 = _UIContextMenuGetPlatformMetrics([*(v147 + 56) userInterfaceIdiom]);
        [v128 sectionSeparatorInsets];
        v130 = v129;
        v132 = v131;
        v134 = v133;
        v136 = v135;

        [v127 setContentInsets:{v130, v132, v134, v136}];
        if (v125)
        {
          [v127 setZIndex:-1];
        }

        goto LABEL_73;
      }
    }

    if (*(v147 + 72) > 0.0)
    {
      v137 = [off_1E70ECB18 fractionalWidthDimension:1.0];
      v138 = [off_1E70ECB18 absoluteDimension:*(v147 + 72)];
      v123 = [off_1E70ECB40 sizeWithWidthDimension:v137 heightDimension:v138];

      v127 = [off_1E70ECB08 boundarySupplementaryItemWithLayoutSize:v123 elementKind:@"kContextMenuThinSectionSeparator" alignment:5];
LABEL_73:

      v7 = v114;
      if (v127)
      {
        [v107 addObject:v127];
      }
    }
  }

  [(NSCollectionLayoutSection *)v75 setBoundarySupplementaryItems:v107];

LABEL_76:

  return v75;
}

@end