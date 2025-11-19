@interface UICollectionLayoutSectionListSolver
@end

@implementation UICollectionLayoutSectionListSolver

void __63___UICollectionLayoutSectionListSolver__resolveWithParameters___block_invoke(uint64_t a1, unint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v71 = [(_UICollectionPreferredSizes *)*(v2 + 96) objectAtIndexedSubscript:a2];
  if (v71)
  {
    v5 = *(v2 + 8);
    v4 = (v2 + 8);
    v6 = *(v2 + 16) - v5;
    if (!v6 || (v7 = [_UICollectionLayoutSectionListSolver _regionIndexForFrameIndex:v2 startRegionIndex:a2 endRegionIndex:0x86BCA1AF286BCA1BLL * (v6 >> 3) - 1], v7 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel__updatePreferredSizeForFrameIndex_ object:v2 file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:715 description:{@"Invalid parameter not satisfying: %@", @"regionIndex != NSNotFound"}];

      v5 = *v4;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    v10 = *(v5 + 152 * v8 + 8);
    if (v10 >= 2)
    {
      v11 = (v5 + 152 * v8);
      v12 = *v11;
      v14 = v11[2];
      v13 = v11[3];
      if (a2 == *v11)
      {
        *v11 = a2 + 1;
        *(v11 + 1) = v10 - 1;
        v86.location = a2;
        v86.length = 1;
        _UIRegionSolveResult::_UIRegionSolveResult(v80, v86, v14, v13, *(v2 + 32));
        std::vector<_UIRegionSolveResult>::insert(v2 + 8, *v4 + 152 * v8, v80);
      }

      else
      {
        *(v11 + 1) = a2 - *v11;
        v87.location = a2;
        v87.length = 1;
        _UIRegionSolveResult::_UIRegionSolveResult(v80, v87, v14, v13, *(v2 + 32));
        ++v8;
        std::vector<_UIRegionSolveResult>::insert(v2 + 8, 152 * v8 + *v4, v80);
        v88.location = a2 + 1;
        v88.length = v10 + ~a2 + *&v12;
        _UIRegionSolveResult::_UIRegionSolveResult(&v73, v88, v14, v13, *(v2 + 32));
        std::vector<_UIRegionSolveResult>::insert(v2 + 8, 152 * v8 + *v4 + 152, &v73);

        v79[0] = v78;
        std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](v79);
        v79[0] = &v77;
        std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](v79);
      }

      *&v73 = &v82;
      std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v73);
      *&v73 = &v81;
      std::vector<_UIAuxillarySolveResult>::__destroy_vector::operator()[abi:nn200100](&v73);
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v67 = [MEMORY[0x1E696AAA8] currentHandler];
        [v67 handleFailureInMethod:sel__updatePreferredSizeForFrameIndex_ object:v2 file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:721 description:{@"Invalid parameter not satisfying: %@", @"regionIndexToUpdate != NSNotFound"}];

        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v15 = *(v2 + 56);
    v16 = *(v2 + 8) + 152 * v8;
    [(_UICollectionPreferredSize *)v71 fittingSize];
    v18 = v17;
    v89.origin.x = *(v16 + 32);
    v89.origin.y = *(v16 + 40);
    v19 = v16 + 32;
    v89.size.width = *(v19 + 16);
    v89.size.height = *(v19 + 24);
    Height = CGRectGetHeight(v89);
    MinX = CGRectGetMinX(*v19);
    MinY = CGRectGetMinY(*v19);
    Width = CGRectGetWidth(*v19);
    *v19 = MinX;
    *(v19 + 8) = MinY;
    *(v19 + 16) = Width;
    *(v19 + 24) = v18;
    v24 = CGRectGetMinX(*(v19 + 32));
    v25 = CGRectGetMinY(*(v19 + 32));
    v26 = CGRectGetWidth(*(v19 + 32));
    v27 = CGRectGetHeight(*(v19 + 32));
    *(v19 + 32) = v24;
    *(v19 + 40) = v25;
    *(v19 + 48) = v26;
    *(v19 + 56) = v18 - Height + v27;
    if (fabs(v18 - Height) < 2.22044605e-16)
    {
      v28 = v71[7];
      v29 = v28 == 0;

      if (v15)
      {
        v30 = v29;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_56;
      }
    }

    else if (!v15)
    {
      goto LABEL_56;
    }

    v31 = *(v15 + 48);
    if (v31)
    {
      if (*(v31 + 64))
      {
        v32 = *(v19 + 64);
        v72 = v19 + 64;
        for (i = *(v19 + 72); i != v32; i -= 48)
        {
        }

        v35 = v19 + 88;
        v34 = *(v19 + 88);
        *(v19 + 72) = v32;
        for (j = *(v19 + 96); j != v34; j -= 48)
        {
        }

        *(v19 + 96) = v34;
        v70 = objc_alloc_init(_UICollectionPreferredSizes);
        [(_UICollectionPreferredSizes *)v70 setObject:v71 atIndexedSubscript:0];
        v37 = *(v15 + 24);
        v38 = *(v15 + 88);
        v39 = *(v15 + 32);
        [(_UICollectionLayoutItemSolver *)v15 _solveForContainer:v37 layoutAxis:v38 traitCollection:v39 maxFrameCount:0x7FFFFFFFFFFFFFFFLL layoutRTL:*(v15 + 8) preferredSizes:v70 largestKnownItemSize:0 solutionRecursionDepth:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

        v40 = *(v15 + 48);
        if (!v40 || *(v40 + 56) != 1)
        {
          v68 = [MEMORY[0x1E696AAA8] currentHandler];
          v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIItemSolveResult::resolveAuxillaryResultsForFramePreferredSize(_UICollectionPreferredSize *const __strong, _UICollectionLayoutItemSolver *const __strong)"}];
          [v68 handleFailureInFunction:v69 file:@"_UICollectionLayoutSectionListSolver.mm" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"solution.itemFrameCount == 1", v70}];
        }

        v41 = [(_UICollectionLayoutItemSolver *)v15 itemFrames];
        v42 = [v41 objectAtIndexedSubscript:0];
        v43 = *(v19 + 112);
        *(v19 + 112) = v42;

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v44 = [(_UICollectionLayoutItemSolver *)v15 auxillaryFrames];
        v45 = [v44 countByEnumeratingWithState:&v73 objects:v80 count:16];
        if (v45)
        {
          v46 = *v74;
          do
          {
            v47 = 0;
            do
            {
              if (*v74 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = *(*(&v73 + 1) + 8 * v47);
              if (v48)
              {
                v50 = v48[10];
                v49 = v48[11];
                v52 = v48[12];
                v51 = v48[13];
                v53 = v48[2];
                v54 = v48;
                v55 = v54;
                v56 = v54[6];
                v57 = v35;
                if (v56 != 3)
                {
                  if (v56 != 4)
                  {
                    goto LABEL_51;
                  }

                  v57 = v72;
                }

                v59 = *(v57 + 8);
                v58 = *(v57 + 16);
                if (v59 >= v58)
                {
                  v61 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v57) >> 4);
                  v62 = v61 + 1;
                  if (v61 + 1 > 0x555555555555555)
                  {
                    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
                  }

                  v63 = 0xAAAAAAAAAAAAAAABLL * ((v58 - *v57) >> 4);
                  if (2 * v63 > v62)
                  {
                    v62 = 2 * v63;
                  }

                  if (v63 >= 0x2AAAAAAAAAAAAAALL)
                  {
                    v64 = 0x555555555555555;
                  }

                  else
                  {
                    v64 = v62;
                  }

                  v79[4] = v57;
                  if (v64)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<_UIAuxillarySolveResult>>(v64);
                  }

                  v65 = 48 * v61;
                  v79[0] = 0;
                  v79[1] = v65;
                  v79[3] = 0;
                  *v65 = v50;
                  *(v65 + 8) = v49;
                  *(v65 + 16) = v52;
                  *(v65 + 24) = v51;
                  *(v65 + 32) = v53;
                  *(v65 + 40) = v55;
                  v79[2] = (v65 + 48);
                  std::vector<_UIAuxillarySolveResult>::__swap_out_circular_buffer(v57, v79);
                  v60 = *(v57 + 8);
                  std::__split_buffer<_UIAuxillarySolveResult>::~__split_buffer(v79);
                }

                else
                {
                  *v59 = v50;
                  v59[1] = v49;
                  v59[2] = v52;
                  v59[3] = v51;
                  v59[4] = v53;
                  v59[5] = v54;
                  v60 = v59 + 6;
                }

                *(v57 + 8) = v60;
              }

LABEL_51:

              ++v47;
            }

            while (v45 != v47);
            v66 = [v44 countByEnumeratingWithState:&v73 objects:v80 count:16];
            v45 = v66;
          }

          while (v66);
        }
      }
    }
  }

LABEL_56:
}

@end