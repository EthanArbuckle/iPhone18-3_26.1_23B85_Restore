@interface _UICollectionSectionSolutionBookmark
- (double)_layoutFrameIncludingContentInsets:(int)a3 supplementaries:(char)a4 clampingToContainer:;
- (double)contentInsetsOffset;
- (double)sectionAuxiliaryContentInsetsOffset;
- (float64x2_t)memoizedDescriptor;
- (id)description;
- (id)initWithSolution:(void *)a3 globalFrame:(void *)a4 globalPinningFrame:(void *)a5 insetEnvironment:(void *)a6 supplementaryInsetEnvironment:(double)a7 section:(double)a8 preferredSizes:(double)a9;
- (uint64_t)_containerAxis;
@end

@implementation _UICollectionSectionSolutionBookmark

- (double)sectionAuxiliaryContentInsetsOffset
{
  v1 = 0.0;
  if (a1)
  {
    v3 = [(_UICollectionSectionSolutionBookmark *)a1 _containerAxis];
    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 2;
    }

    [(_UIContentInsetsEnvironment *)*(a1 + 96) effectiveInsets];
    if (v4 && v4 != 2)
    {
      return v5;
    }
  }

  return v1;
}

- (uint64_t)_containerAxis
{
  v2 = [*(a1 + 8) layoutAxis];
  v3 = [*(a1 + 16) scrollsOrthogonally];
  v4 = v2 == 2;
  if (v2 == 1)
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

- (double)contentInsetsOffset
{
  v1 = 0.0;
  if (a1)
  {
    v3 = [(_UICollectionSectionSolutionBookmark *)a1 _containerAxis];
    if (v3 == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = v3 == 2;
    }

    [(_UIContentInsetsEnvironment *)*(a1 + 88) effectiveInsets];
    if (v4 && v4 != 2)
    {
      return v5;
    }
  }

  return v1;
}

- (float64x2_t)memoizedDescriptor
{
  if (a1)
  {
    v3 = (a1 + 112);
    v2 = *(a1 + 112);
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v5 = *(a1 + 16);
      v6 = *(a1 + 8);
      v4 = objc_opt_new();
      v7 = [v6 layoutAxis];
      v8 = [v5 orthogonalScrollingBehavior];
      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      v10 = [v5 _orthogonalScrollingProperties];
      v11 = v10;
      if (v10)
      {
        [v10 decelerationRate];
        v90 = v12;
        v89 = [v11 bounce];
      }

      else
      {
        v89 = 0;
        v90 = *off_1E70ECC78;
      }

      v13 = 0.0;
      v14 = 0.0;
      if (v9 == 4)
      {
        [v5 interGroupSpacing];
      }

      v88 = v14;
      if ([v5 scrollsOrthogonally])
      {
        [v6 _dimensionForRootGroupAlongAxis:v7];
        v16 = v15;
        [v5 interGroupSpacing];
        v13 = v16 + v17;
      }

      v91 = v7;
      v18 = 0.0;
      if (v9 == 4)
      {
        v18 = v13;
      }

      v86 = v18;
      [v5 _cornerRadius];
      v85 = v19;
      v84 = [v5 _clipsContentToBounds];
      v20 = [v5 _excludesBoundarySupplementariesFromClipping];
      v87 = v13;
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v22 = [v5 boundarySupplementaryItems];
        v21 = [v22 count] != 0;
      }

      [v5 _clippingInsets];
      v24 = v23;
      v26 = v25;
      v93 = v27;
      v29 = v28;
      v30 = [v6 traitCollection];
      [v30 displayScale];
      v32 = v31;

      v33 = [(_UICollectionSectionSolutionBookmark *)a1 _layoutFrameIncludingContentInsets:1 supplementaries:1 clampingToContainer:?];
      v82 = v34;
      v83 = v33;
      v80 = v36;
      v81 = v35;
      v37 = [(_UICollectionSectionSolutionBookmark *)a1 _layoutFrameIncludingContentInsets:0 supplementaries:0 clampingToContainer:?];
      v78 = v38;
      v79 = v37;
      v76 = v40;
      v77 = v39;
      v96.origin.x = [(_UICollectionSectionSolutionBookmark *)a1 _layoutFrameIncludingContentInsets:0 supplementaries:1 clampingToContainer:?];
      x = v96.origin.x;
      y = v96.origin.y;
      width = v96.size.width;
      height = v96.size.height;
      MinX = CGRectGetMinX(v96);
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = width;
      v97.size.height = height;
      MinY = CGRectGetMinY(v97);
      v98.origin.x = x;
      v98.origin.y = y;
      v98.size.width = width;
      v98.size.height = height;
      v73 = CGRectGetWidth(v98);
      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.width = width;
      v99.size.height = height;
      v71 = CGRectGetHeight(v99);
      v45 = v26 + [(_UICollectionSectionSolutionBookmark *)a1 _layoutFrameIncludingContentInsets:v21 supplementaries:1 clampingToContainer:?];
      v47 = v46 - (v29 + v26);
      v49 = v24 + v48;
      v51 = v50 - (v24 + v93);
      v100.origin.x = v45;
      v100.origin.y = v49;
      v100.size.width = v47;
      v100.size.height = v51;
      v72 = CGRectGetMinX(v100);
      v101.origin.x = v45;
      v101.origin.y = v49;
      v101.size.width = v47;
      v101.size.height = v51;
      v70 = CGRectGetMinY(v101);
      v102.origin.x = v45;
      v102.origin.y = v49;
      v102.size.width = v47;
      v102.size.height = v51;
      v69 = CGRectGetWidth(v102);
      v103.origin.x = v45;
      v103.origin.y = v49;
      v103.size.width = v47;
      v103.size.height = v51;
      *&v52 = CGRectGetHeight(v103);
      v67 = v52;
      if (v4)
      {
        *&v4[1].f64[0] = v91;
        *&v4[1].f64[1] = v8;
        v53 = 1.0;
        v4[2].f64[0] = v90;
        if (fabs(v32) >= 2.22044605e-16)
        {
          v53 = v32;
        }

        v94 = *&v53;
        *&v4[2].f64[1] = v89;
        LOBYTE(v4->f64[1]) = v84;
        BYTE1(v4->f64[1]) = v20;
        v4[3].f64[0] = v85;
        [v6 orthogonalScrollingPrefetchingUnitVector];
        v4[5].f64[0] = v54;
        v4[5].f64[1] = v55;
        v4[3].f64[1] = v86;
        v4[4].f64[0] = v87;
        v4[4].f64[1] = v88;
        [v6 orthogonalOffset];
        v4[6].f64[0] = v56;
        v4[6].f64[1] = v57;
        v4[7].f64[0] = v83;
        v4[7].f64[1] = v82;
        v4[8].f64[0] = v81;
        v4[8].f64[1] = v80;
        v4[9].f64[0] = v79;
        v4[9].f64[1] = v78;
        v4[10].f64[0] = v77;
        v4[10].f64[1] = v76;
        v58.f64[0] = v73;
        v58.f64[1] = v71;
        v59.f64[0] = MinX;
        v59.f64[1] = MinY;
        v92 = vdupq_lane_s64(v94, 0);
        v4[13] = vdivq_f64(vrndaq_f64(vmulq_n_f64(v59, *&v94)), v92);
        v4[14] = vdivq_f64(vrndaq_f64(vmulq_n_f64(v58, *&v94)), v92);
        [v5 contentInsets];
        v4[11].f64[0] = v60;
        v4[11].f64[1] = v61;
        v4[12].f64[0] = v62;
        v4[12].f64[1] = v63;
        v64.f64[0] = v69;
        v64.f64[1] = v68;
        v65.f64[0] = v72;
        v65.f64[1] = v70;
        v4[15] = vdivq_f64(vrndaq_f64(vmulq_n_f64(v65, *&v94)), v92);
        v4[16] = vdivq_f64(vrndaq_f64(vmulq_n_f64(v64, *&v94)), v92);
      }

      else
      {
        [v6 orthogonalScrollingPrefetchingUnitVector];
        [v6 orthogonalOffset];
        [v5 contentInsets];
      }

      objc_storeStrong(v3, v4);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)initWithSolution:(void *)a3 globalFrame:(void *)a4 globalPinningFrame:(void *)a5 insetEnvironment:(void *)a6 supplementaryInsetEnvironment:(double)a7 section:(double)a8 preferredSizes:(double)a9
{
  v14 = a1;
  if (!a1)
  {
    return v14;
  }

  if (a2)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:v14 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3697 description:{@"Invalid parameter not satisfying: %@", @"solution != nil"}];

    if (a3)
    {
LABEL_4:
      if (a4)
      {
        goto LABEL_5;
      }

LABEL_14:
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:v14 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3699 description:{@"Invalid parameter not satisfying: %@", @"supplementaryInsetEnvironment != nil"}];

      if (a5)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:v14 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3698 description:{@"Invalid parameter not satisfying: %@", @"insetEnvironment != nil"}];

  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (a5)
  {
    goto LABEL_6;
  }

LABEL_15:
  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:v14 file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3700 description:{@"Invalid parameter not satisfying: %@", @"section != nil"}];

LABEL_6:
  v36.receiver = v14;
  v36.super_class = _UICollectionSectionSolutionBookmark;
  v28 = objc_msgSendSuper2(&v36, sel_init);
  v14 = v28;
  if (v28)
  {
    objc_storeStrong(v28 + 1, a2);
    *(v14 + 3) = a7;
    *(v14 + 4) = a8;
    *(v14 + 5) = a9;
    *(v14 + 6) = a10;
    *(v14 + 7) = a11;
    *(v14 + 8) = a12;
    *(v14 + 9) = a13;
    *(v14 + 10) = a14;
    objc_storeStrong(v14 + 11, a3);
    objc_storeStrong(v14 + 12, a4);
    objc_storeStrong(v14 + 2, a5);
    if (a6)
    {
      v29 = a6;
    }

    else
    {
      v29 = objc_alloc_init(_UICollectionPreferredSizes);
    }

    v30 = v14[13];
    v14[13] = v29;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromRect(self->_globalFrame);
  insetEnvironment = self->_insetEnvironment;
  section = self->_section;
  v9 = [(_UICollectionPreferredSizes *)self->_preferredSizes indexes];
  v10 = [v3 stringWithFormat:@"<%@ %p: frame=%@ insetEnvironment=%@; section=%p; preferredSizes:%@>", v5, self, v6, insetEnvironment, section, v9];;

  return v10;
}

- (double)_layoutFrameIncludingContentInsets:(int)a3 supplementaries:(char)a4 clampingToContainer:
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = [(_UICollectionSectionSolutionBookmark *)a1 _containerAxis];
  v12 = v11;
  if (v11 == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 == 2;
  }

  v14 = [v8 layoutSection];
  [v14 contentInsets];
  v60 = v16;
  v61 = v15;
  v58 = v18;
  v59 = v17;

  if (a3)
  {
    v56 = v10;
    v57 = v9;
    v19 = [(_UIContentInsetsEnvironment *)*(a1 + 88) effectiveInsets];
    v21 = v20;
    v22 = [(_UIContentInsetsEnvironment *)*(a1 + 96) effectiveInsets];
    v52 = v23;
    v53 = v22;
    v24 = _UILeadingOffsetForInsetsAlongAxis(v13, v22, v23);
    v25 = _UILeadingOffsetForInsetsAlongAxis(v13, v19, v21);
    [v8 contentFrameIncludingAuxiliaries];
    v54 = v27;
    v55 = v26;
    v62 = v29;
    v63 = v28;
    if (v24 < v25)
    {
      v30 = [v8 supplementaryContainer];
      v21 = v52;
      v19 = v53;
    }

    else
    {
      v30 = [v8 container];
    }

    v10 = v56;
    v9 = v57;
    v34 = v54;
    v32 = v55;
  }

  else
  {
    [v8 primaryContentFrame];
    v32 = v31;
    v34 = v33;
    v62 = v36;
    v63 = v35;
    v19 = [(_UIContentInsetsEnvironment *)*(a1 + 88) effectiveInsets];
    v21 = v37;
    v30 = [v8 container];
  }

  v38 = _UIAddPointValueForAxisFromPoint(v12, v32, v34, v9, v10);
  v39 = _UILeadingOffsetForInsetsAlongAxis(v13, v19, v21);
  v40 = v38 + _UISetPointValueForAxis(v13, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v39);
  if (a3)
  {
    if (a4)
    {
      if (a2)
      {
        v42 = v62;
        v41 = v63;
LABEL_16:
        [v30 contentSize];
LABEL_19:
        v50 = _UISizeValueForAxis(v13, v43, v44);
        _UISetSizeValueForAxis(v13, v41, v42, v50);
        goto LABEL_20;
      }

LABEL_18:
      v45 = _UITotalEdgeDimensionsForLayoutAxis(v13, v61, v59, v58, v60);
      [v30 contentSize];
      v47 = v46;
      v43 = v48 + _UISetSizeValueForAxis(v13, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), -v45);
      v44 = v47 + v49;
      v42 = v62;
      v41 = v63;
      goto LABEL_19;
    }
  }

  else if (a2)
  {
    v40 = v40 - v59;
    v41 = v63 - (-v59 - v60);
    v42 = v62 - (-v58 - v61);
    if (a4)
    {
      goto LABEL_16;
    }
  }

  else if (a4)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v40;
}

@end