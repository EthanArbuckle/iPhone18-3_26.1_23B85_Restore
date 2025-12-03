@interface _UICollectionSectionSolutionBookmark
- (double)_layoutFrameIncludingContentInsets:(int)insets supplementaries:(char)supplementaries clampingToContainer:;
- (double)contentInsetsOffset;
- (double)sectionAuxiliaryContentInsetsOffset;
- (float64x2_t)memoizedDescriptor;
- (id)description;
- (id)initWithSolution:(void *)solution globalFrame:(void *)frame globalPinningFrame:(void *)pinningFrame insetEnvironment:(void *)environment supplementaryInsetEnvironment:(double)insetEnvironment section:(double)section preferredSizes:(double)sizes;
- (uint64_t)_containerAxis;
@end

@implementation _UICollectionSectionSolutionBookmark

- (double)sectionAuxiliaryContentInsetsOffset
{
  v1 = 0.0;
  if (self)
  {
    _containerAxis = [(_UICollectionSectionSolutionBookmark *)self _containerAxis];
    if (_containerAxis == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = _containerAxis == 2;
    }

    [(_UIContentInsetsEnvironment *)*(self + 96) effectiveInsets];
    if (v4 && v4 != 2)
    {
      return v5;
    }
  }

  return v1;
}

- (uint64_t)_containerAxis
{
  layoutAxis = [*(self + 8) layoutAxis];
  scrollsOrthogonally = [*(self + 16) scrollsOrthogonally];
  v4 = layoutAxis == 2;
  if (layoutAxis == 1)
  {
    v4 = 2;
  }

  if (scrollsOrthogonally)
  {
    return v4;
  }

  else
  {
    return layoutAxis;
  }
}

- (double)contentInsetsOffset
{
  v1 = 0.0;
  if (self)
  {
    _containerAxis = [(_UICollectionSectionSolutionBookmark *)self _containerAxis];
    if (_containerAxis == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = _containerAxis == 2;
    }

    [(_UIContentInsetsEnvironment *)*(self + 88) effectiveInsets];
    if (v4 && v4 != 2)
    {
      return v5;
    }
  }

  return v1;
}

- (float64x2_t)memoizedDescriptor
{
  if (self)
  {
    v3 = (self + 112);
    v2 = *(self + 112);
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v5 = *(self + 16);
      v6 = *(self + 8);
      v4 = objc_opt_new();
      layoutAxis = [v6 layoutAxis];
      orthogonalScrollingBehavior = [v5 orthogonalScrollingBehavior];
      v9 = orthogonalScrollingBehavior & 0xFFFFFFFFFFFFFFFELL;
      _orthogonalScrollingProperties = [v5 _orthogonalScrollingProperties];
      v11 = _orthogonalScrollingProperties;
      if (_orthogonalScrollingProperties)
      {
        [_orthogonalScrollingProperties decelerationRate];
        v90 = v12;
        bounce = [v11 bounce];
      }

      else
      {
        bounce = 0;
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
        [v6 _dimensionForRootGroupAlongAxis:layoutAxis];
        v16 = v15;
        [v5 interGroupSpacing];
        v13 = v16 + v17;
      }

      v91 = layoutAxis;
      v18 = 0.0;
      if (v9 == 4)
      {
        v18 = v13;
      }

      v86 = v18;
      [v5 _cornerRadius];
      v85 = v19;
      _clipsContentToBounds = [v5 _clipsContentToBounds];
      _excludesBoundarySupplementariesFromClipping = [v5 _excludesBoundarySupplementariesFromClipping];
      v87 = v13;
      if (_excludesBoundarySupplementariesFromClipping)
      {
        v21 = 0;
      }

      else
      {
        boundarySupplementaryItems = [v5 boundarySupplementaryItems];
        v21 = [boundarySupplementaryItems count] != 0;
      }

      [v5 _clippingInsets];
      v24 = v23;
      v26 = v25;
      v93 = v27;
      v29 = v28;
      traitCollection = [v6 traitCollection];
      [traitCollection displayScale];
      v32 = v31;

      v33 = [(_UICollectionSectionSolutionBookmark *)self _layoutFrameIncludingContentInsets:1 supplementaries:1 clampingToContainer:?];
      v82 = v34;
      v83 = v33;
      v80 = v36;
      v81 = v35;
      v37 = [(_UICollectionSectionSolutionBookmark *)self _layoutFrameIncludingContentInsets:0 supplementaries:0 clampingToContainer:?];
      v78 = v38;
      v79 = v37;
      v76 = v40;
      v77 = v39;
      v96.origin.x = [(_UICollectionSectionSolutionBookmark *)self _layoutFrameIncludingContentInsets:0 supplementaries:1 clampingToContainer:?];
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
      v45 = v26 + [(_UICollectionSectionSolutionBookmark *)self _layoutFrameIncludingContentInsets:v21 supplementaries:1 clampingToContainer:?];
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
        *&v4[1].f64[1] = orthogonalScrollingBehavior;
        v53 = 1.0;
        v4[2].f64[0] = v90;
        if (fabs(v32) >= 2.22044605e-16)
        {
          v53 = v32;
        }

        v94 = *&v53;
        *&v4[2].f64[1] = bounce;
        LOBYTE(v4->f64[1]) = _clipsContentToBounds;
        BYTE1(v4->f64[1]) = _excludesBoundarySupplementariesFromClipping;
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

- (id)initWithSolution:(void *)solution globalFrame:(void *)frame globalPinningFrame:(void *)pinningFrame insetEnvironment:(void *)environment supplementaryInsetEnvironment:(double)insetEnvironment section:(double)section preferredSizes:(double)sizes
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  if (a2)
  {
    if (solution)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3697 description:{@"Invalid parameter not satisfying: %@", @"solution != nil"}];

    if (solution)
    {
LABEL_4:
      if (frame)
      {
        goto LABEL_5;
      }

LABEL_14:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3699 description:{@"Invalid parameter not satisfying: %@", @"supplementaryInsetEnvironment != nil"}];

      if (pinningFrame)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3698 description:{@"Invalid parameter not satisfying: %@", @"insetEnvironment != nil"}];

  if (!frame)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (pinningFrame)
  {
    goto LABEL_6;
  }

LABEL_15:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:sel_initWithSolution_globalFrame_globalPinningFrame_insetEnvironment_supplementaryInsetEnvironment_section_preferredSizes_ object:selfCopy file:@"_UICollectionCompositionalLayoutSolver.m" lineNumber:3700 description:{@"Invalid parameter not satisfying: %@", @"section != nil"}];

LABEL_6:
  v36.receiver = selfCopy;
  v36.super_class = _UICollectionSectionSolutionBookmark;
  v28 = objc_msgSendSuper2(&v36, sel_init);
  selfCopy = v28;
  if (v28)
  {
    objc_storeStrong(v28 + 1, a2);
    *(selfCopy + 3) = insetEnvironment;
    *(selfCopy + 4) = section;
    *(selfCopy + 5) = sizes;
    *(selfCopy + 6) = a10;
    *(selfCopy + 7) = a11;
    *(selfCopy + 8) = a12;
    *(selfCopy + 9) = a13;
    *(selfCopy + 10) = a14;
    objc_storeStrong(selfCopy + 11, solution);
    objc_storeStrong(selfCopy + 12, frame);
    objc_storeStrong(selfCopy + 2, pinningFrame);
    if (environment)
    {
      environmentCopy = environment;
    }

    else
    {
      environmentCopy = objc_alloc_init(_UICollectionPreferredSizes);
    }

    v30 = selfCopy[13];
    selfCopy[13] = environmentCopy;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromRect(self->_globalFrame);
  insetEnvironment = self->_insetEnvironment;
  section = self->_section;
  indexes = [(_UICollectionPreferredSizes *)self->_preferredSizes indexes];
  v10 = [v3 stringWithFormat:@"<%@ %p: frame=%@ insetEnvironment=%@; section=%p; preferredSizes:%@>", v5, self, v6, insetEnvironment, section, indexes];;

  return v10;
}

- (double)_layoutFrameIncludingContentInsets:(int)insets supplementaries:(char)supplementaries clampingToContainer:
{
  v8 = *(self + 8);
  v9 = *(self + 24);
  v10 = *(self + 32);
  _containerAxis = [(_UICollectionSectionSolutionBookmark *)self _containerAxis];
  v12 = _containerAxis;
  if (_containerAxis == 1)
  {
    v13 = 2;
  }

  else
  {
    v13 = _containerAxis == 2;
  }

  layoutSection = [v8 layoutSection];
  [layoutSection contentInsets];
  v60 = v16;
  v61 = v15;
  v58 = v18;
  v59 = v17;

  if (insets)
  {
    v56 = v10;
    v57 = v9;
    effectiveInsets = [(_UIContentInsetsEnvironment *)*(self + 88) effectiveInsets];
    v21 = v20;
    effectiveInsets2 = [(_UIContentInsetsEnvironment *)*(self + 96) effectiveInsets];
    v52 = v23;
    v53 = effectiveInsets2;
    v24 = _UILeadingOffsetForInsetsAlongAxis(v13, effectiveInsets2, v23);
    v25 = _UILeadingOffsetForInsetsAlongAxis(v13, effectiveInsets, v21);
    [v8 contentFrameIncludingAuxiliaries];
    v54 = v27;
    v55 = v26;
    v62 = v29;
    v63 = v28;
    if (v24 < v25)
    {
      supplementaryContainer = [v8 supplementaryContainer];
      v21 = v52;
      effectiveInsets = v53;
    }

    else
    {
      supplementaryContainer = [v8 container];
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
    effectiveInsets = [(_UIContentInsetsEnvironment *)*(self + 88) effectiveInsets];
    v21 = v37;
    supplementaryContainer = [v8 container];
  }

  v38 = _UIAddPointValueForAxisFromPoint(v12, v32, v34, v9, v10);
  v39 = _UILeadingOffsetForInsetsAlongAxis(v13, effectiveInsets, v21);
  v40 = v38 + _UISetPointValueForAxis(v13, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v39);
  if (insets)
  {
    if (supplementaries)
    {
      if (a2)
      {
        v42 = v62;
        v41 = v63;
LABEL_16:
        [supplementaryContainer contentSize];
LABEL_19:
        v50 = _UISizeValueForAxis(v13, v43, v44);
        _UISetSizeValueForAxis(v13, v41, v42, v50);
        goto LABEL_20;
      }

LABEL_18:
      v45 = _UITotalEdgeDimensionsForLayoutAxis(v13, v61, v59, v58, v60);
      [supplementaryContainer contentSize];
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
    if (supplementaries)
    {
      goto LABEL_16;
    }
  }

  else if (supplementaries)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v40;
}

@end