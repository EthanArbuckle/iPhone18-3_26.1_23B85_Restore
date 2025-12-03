@interface _UICollectionLayoutAuxillaryItemSolver
- (double)_frameForSupplementaryItem:(void *)item container:(int)container primaryContentFrame:(double)frame supplementaryItemSize:(double)size frameOffset:(double)offset layoutRTL:(double)l;
- (double)_requiredContentSizeForSupplementaryFrames:(uint64_t)frames forLayoutAxis:(double)axis containerSize:(double)size;
- (double)_sizeForSupplementaryItem:(uint64_t)item container:(uint64_t)container preferredSizes:(uint64_t)sizes preferredIndex:;
- (double)_visiblePinningRectFromVisibleRect:(CGFloat)rect auxillaryHost:(CGFloat)host;
- (id)_rearrangedFramesForFrames:(void *)frames container:(uint64_t)container primaryContentFrame:(int)frame frameOffset:(void *)offset preferredSizes:(double)sizes layoutRTL:(double)l supplementaryKind:(double)kind;
- (id)queryFramesIntersectingRect:(float64_t)rect frameOffset:(float64_t)offset;
- (id)supplementaryFrameWithKind:(uint64_t)kind index:;
- (id)supplementaryFrameWithKind:(uint64_t)kind index:(double)index additionalFrameOffset:(double)offset;
- (id)supplementaryFrames;
- (id)unpinnedFramesOfPinnedSupplementaries;
- (uint64_t)initWithAuxillaryHost:(void *)host;
- (uint64_t)memoizedSupplementaryKind;
- (void)_updateSupplementaryFrames:(void *)frames atIndexes:(CGFloat)indexes forPinningToVisibleRect:(CGFloat)rect;
- (void)elementKinds;
- (void)resolve;
- (void)resolveSupplementaryItemsForVisibleBounds:(CGFloat)bounds;
- (void)setFrames:(uint64_t)frames;
- (void)unpinnedSupplementaryFrameWithKind:(uint64_t)kind index:;
@end

@implementation _UICollectionLayoutAuxillaryItemSolver

- (uint64_t)memoizedSupplementaryKind
{
  result = *(self + 8);
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained((self + 64));
    *(self + 8) = [WeakRetained auxillaryHostAuxillaryKind];

    return *(self + 8);
  }

  return result;
}

- (void)resolve
{
  v204 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained((self + 64));
    *(selfCopy + 56) = 0;
    if (!WeakRetained)
    {
LABEL_109:

      return;
    }

    v3 = objc_loadWeakRetained((selfCopy + 64));

    v140 = WeakRetained;
    v149 = selfCopy;
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_memoizedSupplementaryItems object:selfCopy file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:850 description:{@"Invalid parameter not satisfying: %@", @"self.auxillaryHost"}];
    }

    v4 = *(selfCopy + 16);
    if (!v4)
    {
      v146 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v199 = 0u;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v5 = objc_loadWeakRetained((selfCopy + 64));
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
          boundarySupplementaryItem = [v8 boundarySupplementaryItem];
          if (boundarySupplementaryItem)
          {
            v10 = objc_loadWeakRetained((v149 + 64));
            auxillaryHostLayoutAxis = [v10 auxillaryHostLayoutAxis];
            if ((auxillaryHostLayoutAxis - 3) > 0xFFFFFFFFFFFFFFFDLL && (v12 = [boundarySupplementaryItem alignment]) != 0)
            {
              if (auxillaryHostLayoutAxis == 2)
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
              [boundarySupplementaryItem offset];
              v18 = [off_1E70ECB00 layoutAnchorWithEdges:v16 | v13 absoluteOffset:?];
              if ((v17 & [boundarySupplementaryItem extendsBoundary]) == 1)
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

              v14 = [boundarySupplementaryItem copyWithContainerAnchor:v18 itemAnchor:v20];
            }

            else
            {
              v14 = boundarySupplementaryItem;
            }

            [v146 addObject:v14];
            goto LABEL_40;
          }

          [v146 addObject:v8];
LABEL_40:
          if ((*(v149 + 32) & 1) == 0)
          {
            v21 = [v8 size];
            isEstimated = [v21 isEstimated];

            if (isEstimated)
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
          selfCopy = v149;
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

    auxillaryHostShouldLayoutRTL = [WeakRetained auxillaryHostShouldLayoutRTL];
    auxillaryHostLayoutAxis2 = [WeakRetained auxillaryHostLayoutAxis];
    memoizedSupplementaryKind = [(_UICollectionLayoutAuxillaryItemSolver *)selfCopy memoizedSupplementaryKind];
    auxillaryHostContainer = [WeakRetained auxillaryHostContainer];
    if (!auxillaryHostContainer)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_resolve object:v149 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:254 description:{@"CompositionalLayout internal bug: Auxiliary host %@ returned a nil host container", v140}];
    }

    v27 = *MEMORY[0x1E695EFF8];
    v28 = *(MEMORY[0x1E695EFF8] + 8);
    [v140 auxillaryHostContentSize];
    v30 = v29;
    v32 = v31;
    v133 = auxillaryHostLayoutAxis2 - 1;
    if (auxillaryHostLayoutAxis2 == 1)
    {
      v33 = 2;
    }

    else
    {
      v33 = auxillaryHostLayoutAxis2 == 2;
    }

    v34 = MEMORY[0x1E695F060];
    if (auxillaryHostLayoutAxis2)
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
        [auxillaryHostContainer contentSize];
        v38 = _UISizeValueForAxis(v33, v36, v37);
        v30 = _UISetSizeValueForAxis(v33, v30, v32, v38);
        v32 = v39;
      }

      v30 = _UISizeClampToMinimumSizeForAxis(auxillaryHostLayoutAxis2, v30, v32, *v34, v34[1]);
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

    auxillaryHostSupplementaryEnroller = [v140 auxillaryHostSupplementaryEnroller];
    if (!auxillaryHostSupplementaryEnroller)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:sel_resolve object:v149 file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"supplementaryEnroller"}];
    }

    auxillaryHostPreferredSizes = [v140 auxillaryHostPreferredSizes];
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = objc_alloc_init(_UICollectionLayoutAuxillaryOffsets);
    v49 = auxillaryHostLayoutAxis2;
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
    v137 = auxillaryHostSupplementaryEnroller;
    v164 = v137;
    v51 = auxillaryHostContainer;
    v165 = v51;
    obja = auxillaryHostPreferredSizes;
    v166 = obja;
    v174 = v27;
    v175 = v28;
    v176 = v30;
    v177 = v32;
    v134 = v42;
    v178 = v42;
    v179 = v41;
    v52 = v41;
    v182 = auxillaryHostShouldLayoutRTL;
    v53 = memoizedSupplementaryKind;
    v180 = memoizedSupplementaryKind;
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
      v162 = auxillaryHostShouldLayoutRTL;
      v160 = v49;
      v161 = sel_resolve;
      v152 = v54;
      v153 = &v191;
      [v152 enumerateObjectsUsingBlock:v150];

      v61 = v149;
      v53 = memoizedSupplementaryKind;
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

                v118 = [(_UICollectionLayoutFramesQueryResult *)v114 copyWithFrame:v119 index:v115 - v103, v116 - v102, v117, v118];
                [v109 addObject:v118];

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
      v81 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _rearrangedFramesForFrames:v54 container:v51 primaryContentFrame:obja frameOffset:auxillaryHostShouldLayoutRTL preferredSizes:v53 layoutRTL:v27 supplementaryKind:v28, v85, v86, v27, v28];
      v88 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _requiredContentSizeForSupplementaryFrames:v81 forLayoutAxis:1 containerSize:v85, v87];
      v129 = v89;
      v130 = v88;
      v90 = _UISetSizeValueForAxis(2, v131, v132, 1000000.0);
      v92 = v91;
      v93 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _rearrangedFramesForFrames:v54 container:v51 primaryContentFrame:obja frameOffset:auxillaryHostShouldLayoutRTL preferredSizes:v53 layoutRTL:v27 supplementaryKind:v28, v90, v91, v27, v28];
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
      v81 = [(_UICollectionLayoutAuxillaryItemSolver *)v61 _rearrangedFramesForFrames:v54 container:v51 primaryContentFrame:obja frameOffset:auxillaryHostShouldLayoutRTL preferredSizes:v53 layoutRTL:v27 supplementaryKind:v28, v78, v79, v27, v28];
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
  if (self)
  {
    self = self[9];
    v1 = vars8;
  }

  return self;
}

- (void)elementKinds
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[3];
    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = selfCopy[9];
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

            auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)*(*(&v13 + 1) + 8 * v8) auxillaryItem];
            elementKind = [auxillaryItem elementKind];
            if ([elementKind length])
            {
              [v3 addObject:elementKind];
            }

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v11 = selfCopy[3];
      selfCopy[3] = v3;

      v2 = selfCopy[3];
    }

    self = v2;
  }

  return self;
}

- (uint64_t)initWithAuxillaryHost:(void *)host
{
  if (!host)
  {
    return 0;
  }

  v6.receiver = host;
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

- (void)setFrames:(uint64_t)frames
{
  v25 = *MEMORY[0x1E69E9840];
  if (frames)
  {
    objc_storeStrong((frames + 72), a2);
    v4 = *(frames + 104);
    *(frames + 104) = 0;

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

          kindIndexKey = [(_UICollectionLayoutFramesQueryResult *)v12 kindIndexKey];
          [v6 setObject:v12 forKeyedSubscript:kindIndexKey];

          ++v11;
        }

        while (v9 != v11);
        v16 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v9 = v16;
      }

      while (v16);
    }

    v17 = *(frames + 88);
    *(frames + 88) = v5;
    v18 = v5;

    v19 = *(frames + 96);
    *(frames + 96) = v6;
  }
}

- (void)resolveSupplementaryItemsForVisibleBounds:(CGFloat)bounds
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 8);
    if (WeakRetained)
    {
      v17 = WeakRetained;
      v11 = self[5];
      if ([v11 count])
      {
        v12 = [self[10] mutableCopy];
        if ([v12 count])
        {
          v13 = [(_UICollectionLayoutAuxillaryItemSolver *)self _visiblePinningRectFromVisibleRect:v17 auxillaryHost:a2, bounds, a4, a5];
          [(_UICollectionLayoutAuxillaryItemSolver *)self _updateSupplementaryFrames:v12 atIndexes:v11 forPinningToVisibleRect:v13, v14, v15, v16];
          [(_UICollectionLayoutAuxillaryItemSolver *)self setFrames:v12];
        }
      }

      WeakRetained = v17;
    }
  }
}

- (double)_visiblePinningRectFromVisibleRect:(CGFloat)rect auxillaryHost:(CGFloat)host
{
  if (!self)
  {
    return 0.0;
  }

  [a2 auxillaryHostPinningRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19.origin.x = rect;
  v19.origin.y = host;
  v19.size.width = a5;
  v19.size.height = a6;
  if (CGRectIsEmpty(v19))
  {
    return *MEMORY[0x1E695F050];
  }

  v20.origin.x = rect;
  v20.origin.y = host;
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

  v21.origin.x = rect;
  v21.origin.y = host;
  v21.size.width = a5;
  v21.size.height = a6;
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  *&result = CGRectIntersection(v21, v23);
  return result;
}

- (void)_updateSupplementaryFrames:(void *)frames atIndexes:(CGFloat)indexes forPinningToVisibleRect:(CGFloat)rect
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 64));
    if (WeakRetained)
    {
      if ([frames count])
      {
        v22.origin.x = indexes;
        v22.origin.y = rect;
        v22.size.width = a6;
        v22.size.height = a7;
        if (!CGRectIsNull(v22))
        {
          v13 = [a2 objectsAtIndexes:frames];
          if ([v13 count])
          {
            auxillaryHostWantsOverlapAdjustmentForMatchingAlignmentsOnly = [WeakRetained auxillaryHostWantsOverlapAdjustmentForMatchingAlignmentsOnly];
            [WeakRetained auxillaryHostPinningRect];
            v19 = _UIPinnedNonOverlappingFramesForContentFrameVisibleFrame(v13, auxillaryHostWantsOverlapAdjustmentForMatchingAlignmentsOnly, v15, v16, v17, v18, indexes, rect, a6, a7);
            [a2 replaceObjectsAtIndexes:frames withObjects:v19];
          }
        }
      }
    }
  }
}

- (id)queryFramesIntersectingRect:(float64_t)rect frameOffset:(float64_t)offset
{
  if (self)
  {
    memoizedSupplementaryKind = [(_UICollectionLayoutAuxillaryItemSolver *)self memoizedSupplementaryKind];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = *(self + 72);
    v13 = *(self + 104);
    if (!v13)
    {
      v14 = objc_alloc_init(_UIRTree);
      v15 = *(self + 72);
      *&v40.f64[0] = MEMORY[0x1E69E9820];
      *&v40.f64[1] = 3221225472;
      *&v41.f64[0] = __65___UICollectionLayoutAuxillaryItemSolver__updateGeometricIndexer__block_invoke;
      *&v41.f64[1] = &unk_1E70FADE8;
      v16 = v14;
      v42 = v16;
      [v15 enumerateObjectsUsingBlock:&v40];
      v17 = *(self + 104);
      *(self + 104) = v16;
      v18 = v16;

      v13 = *(self + 104);
    }

    v19 = v13;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __82___UICollectionLayoutAuxillaryItemSolver_queryFramesIntersectingRect_frameOffset___block_invoke;
    v30[3] = &unk_1E70FB3D8;
    v32 = v12;
    v33 = a2;
    rectCopy = rect;
    offsetCopy = offset;
    v36 = a5;
    v37 = a6;
    v38 = a7;
    v39 = memoizedSupplementaryKind;
    v20 = v11;
    v31 = v20;
    v21 = v20;
    if (v19)
    {
      v43 = 0;
      v22 = v19[1];
      v23.f64[0] = a2;
      v24.f64[0] = offset;
      v23.f64[1] = rect;
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
  if (self)
  {
    self = self[10];
    v1 = vars8;
  }

  return self;
}

- (id)supplementaryFrameWithKind:(uint64_t)kind index:
{
  if (self)
  {
    self = [(_UICollectionLayoutAuxillaryItemSolver *)self supplementaryFrameWithKind:a2 index:kind additionalFrameOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v3 = vars8;
  }

  return self;
}

- (id)supplementaryFrameWithKind:(uint64_t)kind index:(double)index additionalFrameOffset:(double)offset
{
  selfCopy = self;
  if (self)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_supplementaryFrameWithKind_index_additionalFrameOffset_ object:selfCopy file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"kind.length"}];
    }

    v10 = [_UICollectionLayoutFramesQueryResult kindIndexKeyForKind:a2 index:kind];
    v11 = [selfCopy[12] objectForKeyedSubscript:v10];
    selfCopy = v11;
    if (index != *MEMORY[0x1E695EFF8] || offset != *(MEMORY[0x1E695EFF8] + 8))
    {
      offset = [(_UICollectionLayoutFramesQueryResult *)v11 copyWithOffset:index, offset];

      selfCopy = offset;
    }
  }

  return selfCopy;
}

- (void)unpinnedSupplementaryFrameWithKind:(uint64_t)kind index:
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_20;
  }

  if ([self[10] count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self[10];
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

          if (v12 == kind)
          {
            auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)*(*(&v19 + 1) + 8 * v10) auxillaryItem];
            elementKind = [auxillaryItem elementKind];
            v15 = [elementKind isEqualToString:a2];

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

  v17 = [(_UICollectionLayoutAuxillaryItemSolver *)self supplementaryFrameWithKind:a2 index:kind];
LABEL_20:

  return v17;
}

- (double)_sizeForSupplementaryItem:(uint64_t)item container:(uint64_t)container preferredSizes:(uint64_t)sizes preferredIndex:
{
  if (!self)
  {
    return 0.0;
  }

  v10 = objc_loadWeakRetained((self + 64));
  auxillaryHostTraitCollection = [v10 auxillaryHostTraitCollection];
  [auxillaryHostTraitCollection displayScale];
  v13 = v12;

  v14 = [a2 size];
  [v14 _effectiveSizeForContainer:item displayScale:0 ignoringInsets:v13];
  fittingSize = v15;
  v18 = v17;

  if (container)
  {
    elementKind = [a2 elementKind];
    v20 = [(_UICollectionPreferredSizes *)container objectForKeyedSubscript:elementKind];
    v21 = [(_UICollectionPreferredSizes *)v20 objectAtIndexedSubscript:sizes];

    if (v21)
    {
      if (_UICollectionViewCompositionalLayoutShouldRespectPreferredSizeOnEstimatedAxisOnly())
      {
        v22 = [a2 size];
        fittingSize = [(_UICollectionPreferredSize *)v21 preferredSizeForOriginalSize:v22 layoutSize:fittingSize, v18];
        v18 = v23;
      }

      else if ((v21[48] & 1) == 0)
      {
        fittingSize = [(_UICollectionPreferredSize *)v21 fittingSize];
        v18 = v24;
      }

      if (fittingSize == *MEMORY[0x1E695F060] && v18 == *(MEMORY[0x1E695F060] + 8))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__sizeForSupplementaryItem_container_preferredSizes_preferredIndex_ object:self file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:632 description:{@"Preferred size is ZERO for auxiliary item %@ in container %@", a2, item}];
      }
    }
  }

  return fittingSize;
}

- (double)_frameForSupplementaryItem:(void *)item container:(int)container primaryContentFrame:(double)frame supplementaryItemSize:(double)size frameOffset:(double)offset layoutRTL:(double)l
{
  if (!self)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((self + 64));
  auxillaryHostLayoutAxis = [WeakRetained auxillaryHostLayoutAxis];
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if ((auxillaryHostLayoutAxis - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v29 = auxillaryHostLayoutAxis;
    [item contentInsets];
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

  v30 = frame + v27;
  v31 = offset - (v25 + v27);
  v32 = size + v28;
  v33 = l - (v26 + v28);
  [item effectiveContentSize];
  v62 = v35;
  v63 = v34;
  containerAnchor = [a2 containerAnchor];
  itemAnchor = [a2 itemAnchor];
  [containerAnchor _itemFrameForContainerRect:itemAnchor itemSize:v30 itemLayoutAnchor:{v32, v31, v33, a9, a10}];
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
  if (container)
  {
    item = [a2 item];
    ignoresRTL = [item ignoresRTL];

    if ((ignoresRTL & 1) == 0 && fabs(v63 * v62) >= 2.22044605e-16)
    {
      _UIApplyRTLTransformForFrameWithDimension(v54, v55, Width, Height, v63);
      v54 = v60;
    }
  }

  return v54;
}

- (id)_rearrangedFramesForFrames:(void *)frames container:(uint64_t)container primaryContentFrame:(int)frame frameOffset:(void *)offset preferredSizes:(double)sizes layoutRTL:(double)l supplementaryKind:(double)kind
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
        auxillaryItem = [(_UICollectionLayoutFramesQueryResult *)v17 auxillaryItem];
        if (auxillaryItem)
        {
          if (v17)
          {
            goto LABEL_8;
          }
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__rearrangedFramesForFrames_container_primaryContentFrame_frameOffset_preferredSizes_layoutRTL_supplementaryKind_ object:self file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:509 description:@"Failed to retrieve auxillary item from result."];

          if (v17)
          {
LABEL_8:
            v19 = *(v17 + 16);
            goto LABEL_9;
          }
        }

        v19 = 0;
LABEL_9:
        v20 = [(_UICollectionLayoutAuxillaryItemSolver *)self _sizeForSupplementaryItem:auxillaryItem container:frames preferredSizes:container preferredIndex:v19];
        v22 = [(_UICollectionLayoutAuxillaryItemSolver *)self _frameForSupplementaryItem:auxillaryItem container:frames primaryContentFrame:frame supplementaryItemSize:sizes frameOffset:l layoutRTL:kind, a10, v20, v21, a11, a12];
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
          item = [auxillaryItem item];
          v37 = *(v17 + 56);
        }

        else
        {
          item = [auxillaryItem item];
          v35 = 0;
          v33 = 0;
          v31 = 0;
          v30 = 0;
          v34 = 0;
          v37 = 0;
          v32 = 0.0;
        }

        v38 = v37;
        v39 = [(_UICollectionLayoutFramesQueryResult *)&v29->super.isa initWithFrame:v30 pinningAlignment:v31 & 1 adjustedForPinning:v33 visibleRectDisplacement:v34 index:v35 zIndex:item resultKind:offset item:v22 auxillaryKind:v24 supplementaryEnrollmentIdentifier:v26, v28, v32, v38];

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

- (double)_requiredContentSizeForSupplementaryFrames:(uint64_t)frames forLayoutAxis:(double)axis containerSize:(double)size
{
  v64 = *MEMORY[0x1E69E9840];
  if ((frames - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__requiredContentSizeForSupplementaryFrames_forLayoutAxis_containerSize_ object:self file:@"_UICollectionLayoutAuxillaryItemSolver.m" lineNumber:756 description:{@"Invalid parameter not satisfying: %@", @"layoutAxis == UIAxisVertical || layoutAxis == UIAxisHorizontal"}];
  }

  if (![a2 count])
  {
    return *MEMORY[0x1E695F060];
  }

  axisCopy = axis;
  sizeCopy = size;
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

        v17 = _UIPointValueForAxis(frames, v15, v16);
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

  v48 = _UISetPointValueForAxis(frames, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12);
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
        if (frames == 2)
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
  v21 = _UISetSizeValueForAxis(frames, axisCopy, sizeCopy, v51[3]);
  _Block_object_dispose(&v50, 8);

  return v21;
}

@end