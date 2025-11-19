@interface _UICollectionLayoutAuxillaryItemSolver
- (double)_frameForSupplementaryItem:(void *)a3 container:(int)a4 primaryContentFrame:(double)a5 supplementaryItemSize:(double)a6 frameOffset:(double)a7 layoutRTL:(double)a8;
- (double)_requiredContentSizeForSupplementaryFrames:(uint64_t)a3 forLayoutAxis:(double)a4 containerSize:(double)a5;
- (double)_sizeForSupplementaryItem:(uint64_t)a3 container:(uint64_t)a4 preferredSizes:(uint64_t)a5 preferredIndex:;
- (double)_visiblePinningRectFromVisibleRect:(CGFloat)a3 auxillaryHost:(CGFloat)a4;
- (id)_rearrangedFramesForFrames:(void *)a3 container:(uint64_t)a4 primaryContentFrame:(int)a5 frameOffset:(void *)a6 preferredSizes:(double)a7 layoutRTL:(double)a8 supplementaryKind:(double)a9;
- (id)queryFramesIntersectingRect:(float64_t)a3 frameOffset:(float64_t)a4;
- (id)supplementaryFrameWithKind:(uint64_t)a3 index:;
- (id)supplementaryFrameWithKind:(uint64_t)a3 index:(double)a4 additionalFrameOffset:(double)a5;
- (id)supplementaryFrames;
- (id)unpinnedFramesOfPinnedSupplementaries;
- (uint64_t)initWithAuxillaryHost:(void *)a1;
- (uint64_t)memoizedSupplementaryKind;
- (void)_updateSupplementaryFrames:(void *)a3 atIndexes:(CGFloat)a4 forPinningToVisibleRect:(CGFloat)a5;
- (void)elementKinds;
- (void)resolve;
- (void)resolveSupplementaryItemsForVisibleBounds:(CGFloat)a3;
- (void)setFrames:(uint64_t)a1;
- (void)unpinnedSupplementaryFrameWithKind:(uint64_t)a3 index:;
@end

@implementation _UICollectionLayoutAuxillaryItemSolver

- (uint64_t)memoizedSupplementaryKind
{
  result = *(a1 + 8);
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    *(a1 + 8) = [WeakRetained auxillaryHostAuxillaryKind];

    return *(a1 + 8);
  }

  return result;
}

- (void)resolve
{
  v204 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    *(v1 + 56) = 0;
    if (!WeakRetained)
    {
LABEL_109:

      return;
    }

    v3 = objc_loadWeakRetained((v1 + 64));

    v140 = WeakRetained;
    v149 = v1;
    if (!v3)
    {
      v126 = [MEMORY[0x1E696AAA8] currentHandler];
      [v126 handleFailureInMethod:sel_memoizedSupplementaryItems object:v1 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:850 description:{@"Invalid parameter not satisfying: %@", @"self.auxillaryHost"}];
    }

    v4 = *(v1 + 16);
    if (!v4)
    {
      v146 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v199 = 0u;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v5 = objc_loadWeakRetained((v1 + 64));
      obj = [v5 auxillaryHostAuxillaryItems];

      v6 = [obj countByEnumeratingWithState:&v199 objects:v203 count:16];
      if (!v6)
      {
        goto LABEL_45;
      }

      v143 = *v200;
      while (1)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v200 != v143)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v199 + 1) + 8 * i);
          v9 = [v8 boundarySupplementaryItem];
          if (v9)
          {
            v10 = objc_loadWeakRetained((v149 + 64));
            v11 = [v10 auxillaryHostLayoutAxis];
            if ((v11 - 3) > 0xFFFFFFFFFFFFFFFDLL && (v12 = [v9 alignment]) != 0)
            {
              if (v11 == 2)
              {
                if (v12 >= 9)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = qword_18A678CA0[v12 - 1];
                }

                v15 = 5;
                if (v12 - 2 >= 3)
                {
                  v16 = 8 * (v12 - 6 < 3);
                }

                else
                {
                  v16 = 2;
                }

                goto LABEL_32;
              }

              if (v12 - 2 >= 3)
              {
                v13 = 8 * (v12 - 6 < 3);
              }

              else
              {
                v13 = 2;
              }

              if (v12 > 8)
              {
                goto LABEL_31;
              }

              if (((1 << v12) & 0x70) != 0)
              {
                v15 = 10;
                v16 = 4;
              }

              else
              {
                if (((1 << v12) & 0x106) != 0)
                {
                  v15 = 10;
                  v16 = 1;
                  goto LABEL_32;
                }

LABEL_31:
                v16 = 0;
                v15 = 10;
              }

LABEL_32:
              v17 = (v13 & v15) != 0;
              [v9 offset];
              v18 = [off_1E70ECB00 layoutAnchorWithEdges:v16 | v13 absoluteOffset:?];
              if ((v17 & [v9 extendsBoundary]) == 1)
              {
                if ((v13 - 1) > 7)
                {
                  v19 = 0;
                }

                else
                {
                  v19 = qword_18A678C60[v13 - 1];
                }

                v20 = [off_1E70ECB00 layoutAnchorWithEdges:v19 | v16];
              }

              else
              {
                v20 = 0;
              }

              v14 = [v9 copyWithContainerAnchor:v18 itemAnchor:v20];
            }

            else
            {
              v14 = v9;
            }

            [v146 addObject:v14];
            goto LABEL_40;
          }

          [v146 addObject:v8];
LABEL_40:
          if ((*(v149 + 32) & 1) == 0)
          {
            v21 = [v8 size];
            v22 = [v21 isEstimated];

            if (v22)
            {
              *(v149 + 32) = 1;
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v199 objects:v203 count:16];
        if (!v6)
        {
LABEL_45:

          v23 = *(v149 + 16);
          *(v149 + 16) = v146;

          v4 = *(v149 + 16);
          WeakRetained = v140;
          v1 = v149;
          break;
        }
      }
    }

    v24 = v4;
    if (![v24 count])
    {
LABEL_108:

      WeakRetained = v140;
      goto LABEL_109;
    }

    v147 = [WeakRetained auxillaryHostShouldLayoutRTL];
    v25 = [WeakRetained auxillaryHostLayoutAxis];
    v144 = [(_UICollectionLayoutAuxillaryItemSolver *)v1 memoizedSupplementaryKind];
    v26 = [WeakRetained auxillaryHostContainer];
    if (!v26)
    {
      v127 = [MEMORY[0x1E696AAA8] currentHandler];
      [v127 handleFailureInMethod:sel_resolve object:v149 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:254 description:{@"CompositionalLayout internal bug: Auxiliary host %@ returned a nil host container", v140}];
    }

    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    [v140 auxillaryHostContentSize];
    v30 = v29;
    v32 = v31;
    v133 = v25 - 1;
    if (v25 == 1)
    {
      v33 = 2;
    }

    else
    {
      v33 = v25 == 2;
    }

    v34 = MEMORY[0x1E695F060];
    if (v25)
    {
      v205.origin.x = v27;
      v205.origin.y = v28;
      v205.size.width = v30;
      v205.size.height = v32;
      Width = CGRectGetWidth(v205);
      v206.origin.x = v27;
      v206.origin.y = v28;
      v206.size.width = v30;
      v206.size.height = v32;
      if (fabs(Width * CGRectGetHeight(v206)) < 2.22044605e-16)
      {
        [v26 contentSize];
        v38 = _UISizeValueForAxis(v33, v36, v37);
        v30 = _UISetSizeValueForAxis(v33, v30, v32, v38);
        v32 = v39;
      }

      v30 = _UISizeClampToMinimumSizeForAxis(v25, v30, v32, *v34, v34[1]);
      v32 = v40;
    }

    v41 = v28;
    v42 = v27;
    if (objc_opt_respondsToSelector())
    {
      [v140 auxillaryHostAdditionalFrameOffset];
      v42 = v43;
      v41 = v44;
    }

    v45 = [v140 auxillaryHostSupplementaryEnroller];
    if (!v45)
    {
      v128 = [MEMORY[0x1E696AAA8] currentHandler];
      [v128 handleFailureInMethod:sel_resolve object:v149 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"supplementaryEnroller"}];
    }

    v46 = [v140 auxillaryHostPreferredSizes];
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
    v49 = v25;
    v50 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v191 = 0;
    v192 = &v191;
    v193 = 0x4010000000;
    v194 = "";
    v195 = v27;
    v196 = v28;
    v197 = v30;
    v198 = v32;
    v187 = 0;
    v188 = &v187;
    v189 = 0x2020000000;
    v190 = 0;
    v183 = 0;
    v184 = &v183;
    v185 = 0x2020000000;
    v186 = 0;
    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __49___UICollectionLayoutAuxillaryItemSolver_resolve__block_invoke;
    v163[3] = &unk_1E70FB400;
    v173 = sel_resolve;
    v163[4] = v149;
    v137 = v45;
    v164 = v137;
    v51 = v26;
    v165 = v51;
    obja = v46;
    v166 = obja;
    v174 = v27;
    v175 = v28;
    v176 = v30;
    v177 = v32;
    v134 = v42;
    v178 = v42;
    v179 = v41;
    v52 = v41;
    v182 = v147;
    v53 = v144;
    v180 = v144;
    v54 = v47;
    v167 = v54;
    v139 = v50;
    v55 = v50;
    v56 = v49;
    v138 = v55;
    v168 = v55;
    v170 = &v183;
    v57 = v48;
    v169 = v57;
    v171 = &v187;
    v181 = v49;
    v172 = &v191;
    [v24 enumerateObjectsUsingBlock:v163];
    v58 = v188[3];
    v59 = v32;
    v60 = v30;
    v61 = v149;
    v62 = MEMORY[0x1E695F060];
    if (v58 > 0.0)
    {
      v60 = v30 + _UISetSizeValueForAxis(v49, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), v58);
      v59 = v32 + v63;
    }

    v207.origin.x = v27;
    v207.origin.y = v28;
    v207.size.width = v30;
    v207.size.height = v32;
    v211.origin.x = v27;
    v211.origin.y = v28;
    v211.size.width = v60;
    v211.size.height = v59;
    if (!CGRectEqualToRect(v207, v211))
    {
      v64 = v192;
      v192[4] = v27;
      v64[5] = v28;
      v64[6] = v60;
      v64[7] = v59;
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = __49___UICollectionLayoutAuxillaryItemSolver_resolve__block_invoke_2;
      v150[3] = &unk_1E70FB428;
      v150[4] = v149;
      v151 = v51;
      v154 = v27;
      v155 = v28;
      v156 = v60;
      v157 = v59;
      v158 = v134;
      v159 = v52;
      v162 = v147;
      v160 = v49;
      v161 = sel_resolve;
      v152 = v54;
      v153 = &v191;
      [v152 enumerateObjectsUsingBlock:v150];

      v61 = v149;
      v53 = v144;
    }

    v145 = 0.0;
    if (v184[3] >= 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v140 auxillaryHostPaddingBeforeBoundarySupplementaries];
      v145 = v65;
      if (v65 > 0.0)
      {
        if (v49 == 2)
        {
          v66 = 7;
          v67 = 5;
        }

        else
        {
          if (v49 != 1)
          {
            goto LABEL_72;
          }

          v66 = 6;
          v67 = 4;
        }

        v68 = v192;
        v192[v67] = v192[v67] - v65;
        v68[v66] = v65 + v68[v66];
      }
    }

LABEL_72:
    v208.origin.x = v27;
    v208.origin.y = v28;
    v208.size.width = v60;
    v208.size.height = v59;
    v69 = !CGRectIsEmpty(v208);
    v70 = v53 == 4 || v69;
    if (v70)
    {
      v71 = v192;
      v72 = v192[6];
      v73 = v192[7];
      v74 = v72;
      v75 = v73;
LABEL_87:
      v102 = _UIRectSubtractingRectYieldingDirectionalInsets(v27, v28, v30, v32, v71[4], v71[5], v72, v73);
      v103 = v101;
      v105 = v104;
      v107 = v106;
      if (v184[3])
      {
        v108 = 0;
      }

      else
      {
        v108 = v70;
      }

      if ((v108 & 1) == 0)
      {
        if (fabs(v101) >= 2.22044605e-16 || fabs(v102) >= 2.22044605e-16)
        {
          v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v201 = 0u;
          v202 = 0u;
          v199 = 0u;
          v200 = 0u;
          v110 = v54;
          v111 = [v110 countByEnumeratingWithState:&v199 objects:v203 count:16];
          if (v111)
          {
            v112 = *v200;
            do
            {
              v113 = 0;
              do
              {
                if (*v200 != v112)
                {
                  objc_enumerationMutation(v110);
                }

                v114 = *(*(&v199 + 1) + 8 * v113);
                if (v114)
                {
                  v115 = *(v114 + 80);
                  v116 = *(v114 + 88);
                  v117 = *(v114 + 96);
                  v118 = *(v114 + 104);
                  v119 = *(v114 + 16);
                }

                else
                {
                  v119 = 0;
                  v116 = 0.0;
                  v115 = 0.0;
                  v118 = 0.0;
                  v117 = 0.0;
                }

                v120 = [(_UICollectionLayoutFramesQueryResult *)v114 copyWithFrame:v119 index:v115 - v103, v116 - v102, v117, v118];
                [v109 addObject:v120];

                ++v113;
              }

              while (v111 != v113);
              v121 = [v110 countByEnumeratingWithState:&v199 objects:v203 count:16];
              v111 = v121;
            }

            while (v121);
          }
        }

        else
        {
          v109 = [MEMORY[0x1E695DEC8] arrayWithArray:v54];
        }

        v122 = [v109 mutableCopy];

        v54 = v122;
        v61 = v149;
      }

      objc_setProperty_nonatomic_copy(v61, v100, v54, 80);
      objc_storeStrong(v61 + 5, v139);
      [(_UICollectionLayoutAuxillaryItemSolver *)v149 setFrames:v54];
      *(v149 + 112) = v74;
      *(v149 + 120) = v75;
      *(v149 + 144) = v102;
      *(v149 + 152) = v103;
      *(v149 + 160) = v105;
      *(v149 + 168) = v107;
      *(v149 + 128) = -v103;
      *(v149 + 136) = -v102;
      v123 = *(v149 + 48);
      *(v149 + 48) = v57;
      v124 = v57;

      v125 = *(v149 + 104);
      *(v149 + 104) = 0;

      _Block_object_dispose(&v183, 8);
      _Block_object_dispose(&v187, 8);
      _Block_object_dispose(&v191, 8);

      goto LABEL_108;
    }

    [v51 contentSize];
    [v51 contentSize];
    v131 = v76;
    v132 = v77;
    if (v133 > 1)
    {
      v82 = *v62;
      v84 = v62[1];
      v135 = *v62;
      v136 = v84;
      if (v56)
      {
LABEL_86:
        v74 = v82 + _UISetSizeValueForAxis(v56, v135, v136, v145);
        v75 = v84 + v99;
        v71 = v192;
        v72 = v192[6];
        v73 = v192[7];
        goto LABEL_87;
      }

      v85 = _UISetSizeValueForAxis(1, v76, v77, 1000000.0);
      v87 = v86;
      v81 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _rearrangedFramesForFrames:v54 container:v51 primaryContentFrame:obja frameOffset:v147 preferredSizes:v53 layoutRTL:v27 supplementaryKind:v28, v85, v86, v27, v28];
      v88 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _requiredContentSizeForSupplementaryFrames:v81 forLayoutAxis:1 containerSize:v85, v87];
      v129 = v89;
      v130 = v88;
      v90 = _UISetSizeValueForAxis(2, v131, v132, 1000000.0);
      v92 = v91;
      v93 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _rearrangedFramesForFrames:v54 container:v51 primaryContentFrame:obja frameOffset:v147 preferredSizes:v53 layoutRTL:v27 supplementaryKind:v28, v90, v91, v27, v28];
      v94 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _requiredContentSizeForSupplementaryFrames:v93 forLayoutAxis:2 containerSize:v90, v92];
      v148 = v95;
      v96 = v94;
      v82 = _UISizeValueForAxis(1, v130, v129);
      v209.origin.x = v27;
      v209.origin.y = v28;
      v209.size.width = v60;
      v209.size.height = v59;
      v97 = CGRectGetWidth(v209);
      if (v82 < v97)
      {
        v82 = v97;
      }

      v84 = _UISizeValueForAxis(2, v96, v148);
      v210.origin.x = v27;
      v210.origin.y = v28;
      v210.size.width = v60;
      v210.size.height = v59;
      Height = CGRectGetHeight(v210);
      if (v84 < Height)
      {
        v84 = Height;
      }
    }

    else
    {
      v78 = _UISetSizeValueForAxis(v56, v76, v77, 1000000.0);
      v80 = v79;
      v81 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _rearrangedFramesForFrames:v54 container:v51 primaryContentFrame:obja frameOffset:v147 preferredSizes:v53 layoutRTL:v27 supplementaryKind:v28, v78, v79, v27, v28];
      v82 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _requiredContentSizeForSupplementaryFrames:v81 forLayoutAxis:v56 containerSize:v78, v80];
      v84 = v83;
      v135 = *v62;
      v136 = v62[1];
    }

    v61 = v149;
    goto LABEL_86;
  }
}

- (id)supplementaryFrames
{
  if (a1)
  {
    a1 = a1[9];
    v1 = vars8;
  }

  return a1;
}

- (void)elementKinds
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[3];
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = v1[9];
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [(_UICollectionLayoutFramesQueryResult *)*(*(&v13 + 1) + 8 * v8) auxillaryItem];
            v10 = [v9 elementKind];
            if ([v10 length])
            {
              [v3 addObject:v10];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v11 = v1[3];
      v1[3] = v3;

      v2 = v1[3];
    }

    a1 = v2;
  }

  return a1;
}

- (uint64_t)initWithAuxillaryHost:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = _UICollectionLayoutAuxillaryItemSolver;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeWeak(v3 + 8, a2);
    *(v4 + 8) = 0;
    *(v4 + 56) = 0;
    [(_UICollectionLayoutAuxillaryItemSolver *)v4 resolve];
  }

  return v4;
}

- (void)setFrames:(uint64_t)a1
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
    v4 = *(a1 + 104);
    *(a1 + 104) = 0;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = a2;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          if (v12)
          {
            v13 = v12[7];
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          [v5 setObject:v12 forKeyedSubscript:{v14, v20}];

          v15 = [(_UICollectionLayoutFramesQueryResult *)v12 kindIndexKey];
          [v6 setObject:v12 forKeyedSubscript:v15];

          ++v11;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v9 = v16;
      }

      while (v16);
    }

    v17 = *(a1 + 88);
    *(a1 + 88) = v5;
    v18 = v5;

    v19 = *(a1 + 96);
    *(a1 + 96) = v6;
  }
}

- (void)resolveSupplementaryItemsForVisibleBounds:(CGFloat)a3
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    if (WeakRetained)
    {
      v17 = WeakRetained;
      v11 = a1[5];
      if ([v11 count])
      {
        v12 = [a1[10] mutableCopy];
        if ([v12 count])
        {
          v13 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 _visiblePinningRectFromVisibleRect:v17 auxillaryHost:a2, a3, a4, a5];
          [(_UICollectionLayoutAuxillaryItemSolver *)a1 _updateSupplementaryFrames:v12 atIndexes:v11 forPinningToVisibleRect:v13, v14, v15, v16];
          [(_UICollectionLayoutAuxillaryItemSolver *)a1 setFrames:v12];
        }
      }

      WeakRetained = v17;
    }
  }
}

- (double)_visiblePinningRectFromVisibleRect:(CGFloat)a3 auxillaryHost:(CGFloat)a4
{
  if (!a1)
  {
    return 0.0;
  }

  [a2 auxillaryHostPinningRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  if (CGRectIsEmpty(v19))
  {
    return *MEMORY[0x1E695F050];
  }

  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  if (!CGRectIntersectsRect(v20, v22))
  {
    return *MEMORY[0x1E695F050];
  }

  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  *&result = CGRectIntersection(v21, v23);
  return result;
}

- (void)_updateSupplementaryFrames:(void *)a3 atIndexes:(CGFloat)a4 forPinningToVisibleRect:(CGFloat)a5
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      if ([a3 count])
      {
        v22.origin.x = a4;
        v22.origin.y = a5;
        v22.size.width = a6;
        v22.size.height = a7;
        if (!CGRectIsNull(v22))
        {
          v13 = [a2 objectsAtIndexes:a3];
          if ([v13 count])
          {
            v14 = [WeakRetained auxillaryHostWantsOverlapAdjustmentForMatchingAlignmentsOnly];
            [WeakRetained auxillaryHostPinningRect];
            v19 = _UIPinnedNonOverlappingFramesForContentFrameVisibleFrame(v13, v14, v15, v16, v17, v18, a4, a5, a6, a7);
            [a2 replaceObjectsAtIndexes:a3 withObjects:v19];
          }
        }
      }
    }
  }
}

- (id)queryFramesIntersectingRect:(float64_t)a3 frameOffset:(float64_t)a4
{
  if (a1)
  {
    v10 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 memoizedSupplementaryKind];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = *(a1 + 72);
    v13 = *(a1 + 104);
    if (!v13)
    {
      v14 = objc_alloc_init(_UIRTree);
      v15 = *(a1 + 72);
      *&v40.f64[0] = MEMORY[0x1E69E9820];
      *&v40.f64[1] = 3221225472;
      *&v41.f64[0] = __65___UICollectionLayoutAuxillaryItemSolver__updateGeometricIndexer__block_invoke;
      *&v41.f64[1] = &unk_1E70FADE8;
      v16 = v14;
      v42 = v16;
      [v15 enumerateObjectsUsingBlock:&v40];
      v17 = *(a1 + 104);
      *(a1 + 104) = v16;
      v18 = v16;

      v13 = *(a1 + 104);
    }

    v19 = v13;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __82___UICollectionLayoutAuxillaryItemSolver_queryFramesIntersectingRect_frameOffset___block_invoke;
    v30[3] = &unk_1E70FB3D8;
    v32 = v12;
    v33 = a2;
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = v10;
    v20 = v11;
    v31 = v20;
    v21 = v20;
    if (v19)
    {
      v43 = 0;
      v22 = v19[1];
      v23.f64[0] = a2;
      v24.f64[0] = a4;
      v23.f64[1] = a3;
      v24.f64[1] = a5;
      v40 = vaddq_f64(v23, vminnmq_f64(v24, 0));
      v41 = vabsq_f64(v24);
      _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(v22, &v40, &v43, v30);
      v21 = v31;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)unpinnedFramesOfPinnedSupplementaries
{
  if (a1)
  {
    a1 = a1[10];
    v1 = vars8;
  }

  return a1;
}

- (id)supplementaryFrameWithKind:(uint64_t)a3 index:
{
  if (a1)
  {
    a1 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 supplementaryFrameWithKind:a2 index:a3 additionalFrameOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v3 = vars8;
  }

  return a1;
}

- (id)supplementaryFrameWithKind:(uint64_t)a3 index:(double)a4 additionalFrameOffset:(double)a5
{
  v5 = a1;
  if (a1)
  {
    if (![a2 length])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:sel_supplementaryFrameWithKind_index_additionalFrameOffset_ object:v5 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    v10 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:a2 index:a3];
    v11 = [v5[12] objectForKeyedSubscript:v10];
    v5 = v11;
    if (a4 != *MEMORY[0x1E695EFF8] || a5 != *(MEMORY[0x1E695EFF8] + 8))
    {
      v13 = [(_UICollectionLayoutFramesQueryResult *)v11 copyWithOffset:a4, a5];

      v5 = v13;
    }
  }

  return v5;
}

- (void)unpinnedSupplementaryFrameWithKind:(uint64_t)a3 index:
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_20;
  }

  if ([a1[10] count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = a1[10];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          if (v11)
          {
            v12 = v11[2];
          }

          else
          {
            v12 = 0;
          }

          if (v12 == a3)
          {
            v13 = [(_UICollectionLayoutFramesQueryResult *)*(*(&v19 + 1) + 8 * v10) auxillaryItem];
            v14 = [v13 elementKind];
            v15 = [v14 isEqualToString:a2];

            if (v15)
            {
              v17 = v11;

              goto LABEL_20;
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v16 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v8 = v16;
      }

      while (v16);
    }

    goto LABEL_17;
  }

  v17 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 supplementaryFrameWithKind:a2 index:a3];
LABEL_20:

  return v17;
}

- (double)_sizeForSupplementaryItem:(uint64_t)a3 container:(uint64_t)a4 preferredSizes:(uint64_t)a5 preferredIndex:
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = objc_loadWeakRetained((a1 + 64));
  v11 = [v10 auxillaryHostTraitCollection];
  [v11 displayScale];
  v13 = v12;

  v14 = [a2 size];
  [v14 _effectiveSizeForContainer:a3 displayScale:0 ignoringInsets:v13];
  v16 = v15;
  v18 = v17;

  if (a4)
  {
    v19 = [a2 elementKind];
    v20 = [(_UICollectionPreferredSizes *)a4 objectForKeyedSubscript:v19];
    v21 = [(_UICollectionPreferredSizes *)v20 objectAtIndexedSubscript:a5];

    if (v21)
    {
      if (_UICollectionViewCompositionalLayoutShouldRespectPreferredSizeOnEstimatedAxisOnly())
      {
        v22 = [a2 size];
        v16 = [(_UICollectionPreferredSize *)v21 preferredSizeForOriginalSize:v22 layoutSize:v16, v18];
        v18 = v23;
      }

      else if ((v21[48] & 1) == 0)
      {
        v16 = [(_UICollectionPreferredSize *)v21 fittingSize];
        v18 = v24;
      }

      if (v16 == *MEMORY[0x1E695F060] && v18 == *(MEMORY[0x1E695F060] + 8))
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:sel__sizeForSupplementaryItem_container_preferredSizes_preferredIndex_ object:a1 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:632 description:{@"Preferred size is ZERO for auxiliary item %@ in container %@", a2, a3}];
      }
    }
  }

  return v16;
}

- (double)_frameForSupplementaryItem:(void *)a3 container:(int)a4 primaryContentFrame:(double)a5 supplementaryItemSize:(double)a6 frameOffset:(double)a7 layoutRTL:(double)a8
{
  if (!a1)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v24 = [WeakRetained auxillaryHostLayoutAxis];
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if ((v24 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v29 = v24;
    [a3 contentInsets];
    if (v29 == 1)
    {
      v25 = 0.0;
    }

    else
    {
      v26 = 0.0;
    }

    if (v29 == 1)
    {
      v27 = 0.0;
    }

    else
    {
      v28 = 0.0;
    }
  }

  v30 = a5 + v27;
  v31 = a7 - (v25 + v27);
  v32 = a6 + v28;
  v33 = a8 - (v26 + v28);
  [a3 effectiveContentSize];
  v62 = v35;
  v63 = v34;
  v36 = [a2 containerAnchor];
  v37 = [a2 itemAnchor];
  [v36 _itemFrameForContainerRect:v37 itemSize:v30 itemLayoutAnchor:{v32, v31, v33, a9, a10}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [a2 _effectiveContentInsets];
  v47 = v39 + v46;
  v49 = v43 - (v48 + v46);
  v51 = v41 + v50;
  v53 = v45 - (v50 + v52);
  v54 = a11 + v47;
  v55 = a12 + v41 + v50;
  v64.origin.x = v47;
  v64.origin.y = v51;
  v64.size.width = v49;
  v64.size.height = v53;
  Width = CGRectGetWidth(v64);
  v65.origin.x = v47;
  v65.origin.y = v51;
  v65.size.width = v49;
  v65.size.height = v53;
  Height = CGRectGetHeight(v65);
  if (a4)
  {
    v58 = [a2 item];
    v59 = [v58 ignoresRTL];

    if ((v59 & 1) == 0 && fabs(v63 * v62) >= 2.22044605e-16)
    {
      _UIApplyRTLTransformForFrameWithDimension(v54, v55, Width, Height, v63);
      v54 = v60;
    }
  }

  return v54;
}

- (id)_rearrangedFramesForFrames:(void *)a3 container:(uint64_t)a4 primaryContentFrame:(int)a5 frameOffset:(void *)a6 preferredSizes:(double)a7 layoutRTL:(double)a8 supplementaryKind:(double)a9
{
  v60 = *MEMORY[0x1E69E9840];
  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = a2;
  v54 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v54)
  {
    v44 = *v56;
    do
    {
      v16 = 0;
      do
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v55 + 1) + 8 * v16);
        v18 = [(_UICollectionLayoutFramesQueryResult *)v17 auxillaryItem];
        if (v18)
        {
          if (v17)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v40 = [MEMORY[0x1E696AAA8] currentHandler];
          [v40 handleFailureInMethod:sel__rearrangedFramesForFrames_container_primaryContentFrame_frameOffset_preferredSizes_layoutRTL_supplementaryKind_ object:a1 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:509 description:@"Failed to retrieve auxillary item from result."];

          if (v17)
          {
LABEL_8:
            v19 = *(v17 + 16);
            goto LABEL_9;
          }
        }

        v19 = 0;
LABEL_9:
        v20 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 _sizeForSupplementaryItem:v18 container:a3 preferredSizes:a4 preferredIndex:v19];
        v22 = [(_UICollectionLayoutAuxillaryItemSolver *)a1 _frameForSupplementaryItem:v18 container:a3 primaryContentFrame:a5 supplementaryItemSize:a7 frameOffset:a8 layoutRTL:a9, a10, v20, v21, a11, a12];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = [_UICollectionLayoutFramesQueryResult alloc];
        if (v17)
        {
          v30 = *(v17 + 64);
          v31 = *(v17 + 8);
          v32 = *(v17 + 72);
          v33 = *(v17 + 16);
          if (*(v17 + 24) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = 0;
          }

          else
          {
            v34 = *(v17 + 24);
          }

          v35 = *(v17 + 32);
          v36 = [v18 item];
          v37 = *(v17 + 56);
        }

        else
        {
          v36 = [v18 item];
          v35 = 0;
          v33 = 0;
          v31 = 0;
          v30 = 0;
          v34 = 0;
          v37 = 0;
          v32 = 0.0;
        }

        v38 = v37;
        v39 = [(_UICollectionLayoutFramesQueryResult *)&v29->super.isa initWithFrame:v30 pinningAlignment:v31 & 1 adjustedForPinning:v33 visibleRectDisplacement:v34 index:v35 zIndex:v36 resultKind:a6 item:v22 auxillaryKind:v24 supplementaryEnrollmentIdentifier:v26, v28, v32, v38];

        [v53 addObject:v39];
        ++v16;
      }

      while (v54 != v16);
      v41 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      v54 = v41;
    }

    while (v41);
  }

  return v53;
}

- (double)_requiredContentSizeForSupplementaryFrames:(uint64_t)a3 forLayoutAxis:(double)a4 containerSize:(double)a5
{
  v64 = *MEMORY[0x1E69E9840];
  if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:sel__requiredContentSizeForSupplementaryFrames_forLayoutAxis_containerSize_ object:a1 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:756 description:{@"Invalid parameter not satisfying: %@", @"layoutAxis == UIAxisVertical || layoutAxis == UIAxisHorizontal"}];
  }

  if (![a2 count])
  {
    return *MEMORY[0x1E695F060];
  }

  v46 = a4;
  v47 = a5;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = a2;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v10)
  {
    v11 = *v59;
    v12 = 0.0;
    do
    {
      v13 = 0;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        if (v14)
        {
          v15 = *(v14 + 80);
          v16 = *(v14 + 88);
        }

        else
        {
          v16 = 0.0;
          v15 = 0.0;
        }

        v17 = _UIPointValueForAxis(a3, v15, v16);
        v18 = fabs(v17);
        if (v18 > v12 && v17 < 0.0)
        {
          v12 = v18;
        }

        ++v13;
      }

      while (v10 != v13);
      v20 = [v9 countByEnumeratingWithState:&v58 objects:v63 count:16];
      v10 = v20;
    }

    while (v20);
  }

  else
  {
    v12 = 0.0;
  }

  v48 = _UISetPointValueForAxis(a3, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12);
  v23 = v22;
  if (dyld_program_sdk_at_least())
  {
    v24 = 6.0;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = v9;
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v27)
  {
    v28 = *v55;
    do
    {
      v29 = 0;
      do
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v54 + 1) + 8 * v29);
        if (v30)
        {
          v32 = v30[10];
          v31 = v30[11];
          v33 = v30[12];
          Height = v30[13];
        }

        else
        {
          v31 = 0.0;
          v33 = 0.0;
          Height = 0.0;
          v32 = 0.0;
        }

        if (v12 > 0.0)
        {
          v65.origin.x = v32;
          v65.origin.y = v31;
          v65.size.width = v33;
          v65.size.height = Height;
          Width = CGRectGetWidth(v65);
          v66.origin.x = v32;
          v66.origin.y = v31;
          v66.size.width = v33;
          v66.size.height = Height;
          Height = CGRectGetHeight(v66);
          v32 = v48 + v32;
          v31 = v23 + v31;
          v33 = Width;
        }

        v36 = v32;
        v37 = v31;
        v38 = v33;
        v39 = Height;
        if (a3 == 2)
        {
          MinY = CGRectGetMinY(*&v36);
          v67.origin.x = v32;
          v67.origin.y = v31;
          v67.size.width = v33;
          v67.size.height = Height;
          MaxY = CGRectGetMaxY(v67);
        }

        else
        {
          MinY = CGRectGetMinX(*&v36);
          v68.origin.x = v32;
          v68.origin.y = v31;
          v68.size.width = v33;
          v68.size.height = Height;
          MaxY = CGRectGetMaxX(v68);
        }

        [v25 addIndexesInRange:{(v24 * MinY), (v24 * MaxY) - (v24 * MinY)}];
        ++v29;
      }

      while (v27 != v29);
      v42 = [v26 countByEnumeratingWithState:&v54 objects:v62 count:16];
      v27 = v42;
    }

    while (v42);
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __113___UICollectionLayoutAuxillaryItemSolver__requiredContentSizeForSupplementaryFrames_forLayoutAxis_containerSize___block_invoke;
  v49[3] = &unk_1E70FB450;
  v49[4] = &v50;
  *&v49[5] = v24;
  [v25 enumerateRangesUsingBlock:v49];
  v21 = _UISetSizeValueForAxis(a3, v46, v47, v51[3]);
  _Block_object_dispose(&v50, 8);

  return v21;
}

@end