@interface PXGSplitLayout
- (UIEdgeInsets)padding;
- (UIEdgeInsets)presentedPadding;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_performUpdateSublayoutGeometries;
- (void)_replaceSublayout:(id)a3 withSublayout:(id)a4 atIndex:(int64_t)a5;
- (void)_updateSublayoutGeometries;
- (void)didAddSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)didChangeSublayoutOrigins;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)enumerateSublayoutsForCreatingPointReferenceUsingBlock:(id)a3;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)removeSublayoutsInRange:(_NSRange)a3;
- (void)safeAreaInsetsDidChange;
- (void)scrollSpeedRegimeDidChange;
- (void)setAdjustSublayoutZPositions:(BOOL)a3;
- (void)setFirstSublayout:(id)a3;
- (void)setMode:(int64_t)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setSecondSublayout:(id)a3;
- (void)setShouldExcludeTopAndBottomPaddingFromReferenceSize:(BOOL)a3;
- (void)sublayoutDidChangeContentSize:(id)a3;
- (void)sublayoutDidChangeLastBaseline:(id)a3;
- (void)sublayoutNeedsUpdate:(id)a3;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5;
- (void)willUpdate;
@end

@implementation PXGSplitLayout

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 displayScaleDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout displayScaleDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:499 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)viewEnvironmentDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 viewEnvironmentDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout viewEnvironmentDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:464 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (int64_t)scrollableAxis
{
  v3 = [(PXGSplitLayout *)self mode];
  if (v3 > 7)
  {
    goto LABEL_6;
  }

  if (((1 << v3) & 0xDE) != 0)
  {
    v4 = [(PXGSplitLayout *)self secondSublayout];
    goto LABEL_4;
  }

  if (v3)
  {
    v4 = [(PXGSplitLayout *)self firstSublayout];
    goto LABEL_4;
  }

  v4 = [(PXGSplitLayout *)self firstSublayout];
  if (v4)
  {
LABEL_4:
    v5 = v4;
    v6 = [v4 scrollableAxis];
    goto LABEL_5;
  }

  v8 = [(PXGSplitLayout *)self secondSublayout];
  v6 = [v8 scrollableAxis];

  v5 = 0;
LABEL_5:

  if (!v6)
  {
LABEL_6:
    v9.receiver = self;
    v9.super_class = PXGSplitLayout;
    return [(PXGLayout *)&v9 scrollableAxis];
  }

  return v6;
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 visibleRectDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout visibleRectDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:485 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 safeAreaInsetsDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout safeAreaInsetsDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:492 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 referenceSizeDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout referenceSizeDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:471 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXGSplitLayout;
  [(PXGLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGSplitLayout.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)update
{
  v3 = [(PXGLayout *)self numberOfDescendantAnchors];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (v3 >= 1)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      needsUpdate |= 1uLL;
      p_updateFlags->needsUpdate = needsUpdate;
      self->_updateFlags.willPerformUpdate = 0;
      p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
      goto LABEL_10;
    }

    if (self->_updateFlags.updated)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXGSplitLayout.m" lineNumber:190 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    p_updateFlags->needsUpdate = needsUpdate | 1;
    self->_updateFlags.willPerformUpdate = 0;
    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
    goto LABEL_5;
  }

  self->_updateFlags.willPerformUpdate = 0;
  if (!needsUpdate)
  {
    goto LABEL_21;
  }

  p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_5:
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout update]"];
    [v7 handleFailureInFunction:v8 file:@"PXGSplitLayout.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

    needsUpdate = p_updateFlags->needsUpdate;
  }

LABEL_10:
  self->_updateFlags.isPerformingUpdate = 1;
  self->_updateFlags.updated = 1;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    [(PXGSplitLayout *)self _updateSublayoutGeometries];
    p_additionalUpdateFlags = &self->_additionalUpdateFlags;
    self->_additionalUpdateFlags.willPerformUpdate = 0;
    v10 = self->_additionalUpdateFlags.needsUpdate;
    if (v10)
    {
      if (self->_additionalUpdateFlags.isPerformingUpdate)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout update]"];
        [v13 handleFailureInFunction:v14 file:@"PXGSplitLayout.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"!_additionalUpdateFlags.isPerformingUpdate"}];

        v10 = p_additionalUpdateFlags->needsUpdate;
      }

      self->_additionalUpdateFlags.isPerformingUpdate = 1;
      self->_additionalUpdateFlags.updated = 1;
      if (v10)
      {
        p_additionalUpdateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFFELL;
        self->_isPerformingAdditionalUpdate = 1;
        [(PXGSplitLayout *)self _updateSublayoutGeometries];
        self->_isPerformingAdditionalUpdate = 0;
        v10 = p_additionalUpdateFlags->needsUpdate;
      }

      self->_additionalUpdateFlags.isPerformingUpdate = 0;
      if (v10)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout update]"];
        [v15 handleFailureInFunction:v16 file:@"PXGSplitLayout.m" lineNumber:203 description:{@"still needing to update %lu after update pass", p_additionalUpdateFlags->needsUpdate}];
      }
    }

    needsUpdate = p_updateFlags->needsUpdate;
  }

  *p_isPerformingUpdate = 0;
  if (needsUpdate)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout update]"];
    [v11 handleFailureInFunction:v12 file:@"PXGSplitLayout.m" lineNumber:205 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_21:
  v19.receiver = self;
  v19.super_class = PXGSplitLayout;
  [(PXGLayout *)&v19 update];
}

- (void)_updateSublayoutGeometries
{
  self->_isUpdatingSublayouts = 1;
  [(PXGSplitLayout *)self _performUpdateSublayoutGeometries];
  if ([(PXGLayout *)self hasSublayoutsRemainingToBeUpdated]&& [(PXGSplitLayout *)self allowsRepeatedSublayoutsUpdates])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __44__PXGSplitLayout__updateSublayoutGeometries__block_invoke;
    v3[3] = &unk_2782ABE50;
    v3[4] = self;
    [(PXGLayout *)self performRepeatedSublayoutsUpdate:v3];
  }

  self->_isUpdatingSublayouts = 0;
}

- (void)_performUpdateSublayoutGeometries
{
  v3 = [(PXGSplitLayout *)self mode];
  [(PXGSplitLayout *)self padding];
  v5 = v4;
  v92 = v6;
  v8 = v7;
  v87 = v9;
  [(PXGLayout *)self referenceSize];
  v11 = v10;
  v13 = v12;
  [(PXGLayout *)self referenceDepth];
  v80 = v14;
  v15 = [(PXGSplitLayout *)self shouldExcludeTopAndBottomPaddingFromReferenceSize];
  v16 = v13 - (v5 + v8);
  if (v15)
  {
    v16 = v13;
  }

  v81 = v8;
  v82 = v16;
  v85 = [(PXGLayout *)self referenceOptions];
  v79 = [(PXGLayout *)self viewEnvironment];
  [(PXGLayout *)self safeAreaInsets];
  v83 = v18;
  v84 = v17;
  v20 = v19;
  v22 = v21;
  [(PXGLayout *)self displayScale];
  v24 = v23;
  [(PXGLayout *)self visibleRect];
  x = v25;
  y = v26;
  width = v27;
  height = v28;
  [(PXGLayout *)self lastScrollDirection];
  v30 = v29;
  v32 = v31;
  v33 = [(PXGLayout *)self scrollSpeedRegime];
  v34 = [(PXGLayout *)self userInterfaceDirection];
  if (v3 > 7)
  {
    v38 = 0;
    v35 = 0;
    goto LABEL_8;
  }

  if (((1 << v3) & 0xDE) != 0)
  {
    v35 = self->_secondSublayout;
    v36 = 904;
  }

  else
  {
    if (!v3)
    {
      if ([(PXGLayout *)self numberOfSublayouts]== 1)
      {
        firstSublayout = self->_firstSublayout;
        v38 = 0;
        if (!firstSublayout)
        {
          firstSublayout = self->_secondSublayout;
        }

        v35 = firstSublayout;
      }

      else
      {
        firstSublayout = 0;
        v38 = 0;
        v35 = 0;
      }

      goto LABEL_7;
    }

    v35 = self->_firstSublayout;
    v36 = 912;
  }

  firstSublayout = *(&self->super.super.isa + v36);
  v38 = firstSublayout;
LABEL_7:
  v39 = firstSublayout;
LABEL_8:
  v132 = *MEMORY[0x277CBF348];
  v133 = v132;
  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x3010000000;
  v130[3] = "";
  v131 = v132;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x4010000000;
  v127[3] = "";
  v40 = *(MEMORY[0x277CBF3A0] + 16);
  v128 = *MEMORY[0x277CBF3A0];
  v129 = v40;
  v41 = [(PXGLayout *)self sublayoutDataStore];
  v42 = [v41 count];

  v43 = [(PXGLayout *)self sublayoutDataStore];
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __51__PXGSplitLayout__performUpdateSublayoutGeometries__block_invoke;
  v101[3] = &unk_2782A7A18;
  v108 = v11 - (v92 + v87);
  v109 = v82;
  v126 = v85;
  v110 = v80;
  v111 = v24;
  v112 = v30;
  v113 = v32;
  v114 = v33;
  v115 = v84;
  v116 = v83;
  v117 = v20;
  v118 = v22;
  v119 = v34;
  v120 = x;
  v121 = y;
  v122 = width;
  v123 = height;
  v77 = v79;
  v102 = v77;
  v106 = v130;
  v44 = v35;
  v103 = v44;
  v107 = v127;
  v124 = v3;
  v125 = v42;
  v86 = v38;
  v104 = v86;
  v105 = self;
  [v43 enumerateSublayoutsUsingBlock:v101];

  if (v44)
  {
    [(PXGLayout *)v44 visibleRect];
    PXPointSubtract();
    v46 = v45;
    v48 = v47;
    v134.origin.x = x;
    v134.origin.y = y;
    v134.size.width = width;
    v134.size.height = height;
    v135 = CGRectOffset(v134, v46, v48);
    x = v135.origin.x;
    y = v135.origin.y;
    width = v135.size.width;
    height = v135.size.height;
    v49 = [(PXGSplitLayout *)self mode];
    v50 = v48 == *(MEMORY[0x277CBF348] + 8) && v46 == *MEMORY[0x277CBF348];
    if (!v50 && v86)
    {
      v51 = x;
      v52 = y;
      v53 = width;
      v54 = height;
      if (v49 != 2)
      {
        v51 = x;
        v52 = y;
        v53 = width;
        v54 = height;
        if (v49 != 5)
        {
          if (v49 != 6)
          {
LABEL_19:
            [(PXGLayout *)v86 updateIfNeeded];
            [(PXGLayout *)self didUpdateSublayout:v86];
            goto LABEL_20;
          }

          PXRectWithOriginAndSize();
        }
      }

      [(PXGLayout *)v86 setVisibleRect:v51, v52, v53, v54];
      goto LABEL_19;
    }
  }

LABEL_20:
  if ([(PXGSplitLayout *)self scrollableAxis])
  {
    [(PXGSplitLayout *)self scrollableAxis];
  }

  PXAxisTransposed();
  PXPointValueForAxis();
  v55 = self->_firstSublayout;
  if (v55)
  {
    [(PXGLayout *)v55 contentSize];
    PXSizeValueForAxis();
  }

  secondSublayout = self->_secondSublayout;
  if (secondSublayout)
  {
    [(PXGLayout *)secondSublayout contentSize];
    PXSizeValueForAxis();
  }

  [(PXGSplitLayout *)self floatingThresholdOffset];
  [(PXGSplitLayout *)self floatingModesRespectSafeArea];
  PXSizeValueForAxis();
  v57 = 0.0;
  if (v3 > 7)
  {
    goto LABEL_46;
  }

  if (((1 << v3) & 0x4E) == 0)
  {
    if (((1 << v3) & 0x30) != 0)
    {
      v61 = 0;
      *&v133 = v92;
      *(&v133 + 1) = v5;
      *&v132 = v92;
      *(&v132 + 1) = v5;
      v62 = 0.0;
      if (v3 == 4)
      {
        v66 = 0.0;
      }

      else
      {
        v66 = v80 * 0.5;
      }

      if (v3 == 4)
      {
        v57 = v80 * 0.5;
      }

      else
      {
        v57 = 0.0;
      }

      goto LABEL_55;
    }

    if (v3 == 7)
    {
      v61 = 0;
      *&v133 = v92;
      *(&v133 + 1) = v5;
      *&v132 = v92;
      *(&v132 + 1) = v5;
      v66 = v80 * 0.5;
LABEL_54:
      v62 = 0.0;
      goto LABEL_55;
    }

LABEL_46:
    if (v3)
    {
      v61 = 0;
      v66 = 0.0;
    }

    else
    {
      *&v133 = v92;
      *(&v133 + 1) = v5;
      PXPointSetValueForAxis();
      PXPointValueForAxis();
      PXPointSetValueForAxis();
      v67 = self->_firstSublayout;
      v57 = 0.0;
      if (v67 && !self->_secondSublayout)
      {
        [(PXGLayout *)v67 contentSize];
        PXSizeValueForAxis();
      }

      v61 = 0;
      v66 = 0.0;
    }

    goto LABEL_54;
  }

  PXPointValueForAxis();
  PXPointValueForAxis();
  PXClamp();
  PXPointSetValueForAxis();
  PXPointValueForAxis();
  PXPointSetValueForAxis();
  PXPointValueForAxis();
  v59 = v58;
  PXPointValueForAxis();
  v61 = v59 > v60;
  v62 = 0.0;
  if (v59 > v60)
  {
    PXPointValueForAxis();
    v64 = v63;
    PXPointValueForAxis();
    v62 = v64 - v65;
  }

  *&v132 = v92;
  *(&v132 + 1) = v5;
  if (v3 == 1)
  {
    PXPointValueForAxis();
    PXPointSetValueForAxis();
  }

  v57 = v80 * 0.5;
  v66 = 0.0;
LABEL_55:
  v68 = [(PXGSplitLayout *)self adjustSublayoutZPositions];
  v69 = [(PXGLayout *)self sublayoutDataStore];
  v70 = v69;
  v94[0] = MEMORY[0x277D85DD0];
  if (v68)
  {
    v71 = v66;
  }

  else
  {
    v71 = 0.0;
  }

  if (v68)
  {
    v72 = v57;
  }

  else
  {
    v72 = 0.0;
  }

  v94[1] = 3221225472;
  v94[2] = __51__PXGSplitLayout__performUpdateSublayoutGeometries__block_invoke_2;
  v94[3] = &unk_2782A7A40;
  v94[4] = self;
  v95 = v133;
  v100 = v61;
  v96 = v71;
  v97 = v62;
  v98 = v132;
  v99 = v72;
  [v69 enumerateSublayoutGeometriesUsingBlock:v94];

  v93 = *MEMORY[0x277CBF3A8];
  PXSizeSetValueForAxis();
  PXSizeSetValueForAxis();
  [(PXGLayout *)self setContentSize:v93];
  if ([(PXGSplitLayout *)self mode]== 5 && self->_firstSublayout || !self->_secondSublayout)
  {
    PXPointValueForAxis();
    v74 = v76;
    [(PXGLayout *)self->_firstSublayout lastBaseline];
  }

  else
  {
    PXPointValueForAxis();
    v74 = v73;
    [(PXGLayout *)self->_secondSublayout lastBaseline];
  }

  [(PXGLayout *)self setLastBaseline:v74 + v75];
  [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:x, y, width, height];
  self->_presentedPadding.top = v5;
  self->_presentedPadding.left = v92;
  self->_presentedPadding.bottom = v81;
  self->_presentedPadding.right = v87;

  _Block_object_dispose(v127, 8);
  _Block_object_dispose(v130, 8);
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

void __51__PXGSplitLayout__performUpdateSublayoutGeometries__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  [v13 setViewEnvironment:*(a1 + 32)];
  [v13 setReferenceSize:{*(a1 + 80), *(a1 + 88)}];
  [v13 setReferenceDepth:*(a1 + 96)];
  [v13 setReferenceOptions:*(a1 + 224)];
  [v13 setDisplayScale:*(a1 + 104)];
  [v13 setLastScrollDirection:{*(a1 + 112), *(a1 + 120)}];
  [v13 setScrollSpeedRegime:*(a1 + 128)];
  [v13 setSafeAreaInsets:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
  [v13 setUserInterfaceDirection:*(a1 + 168)];
  v15 = CGRectOffset(*(a1 + 176), -*(*(*(a1 + 64) + 8) + 32), -*(*(*(a1 + 64) + 8) + 40));
  v5 = v13;
  if (*(a1 + 40) == v13)
  {
    *(*(*(a1 + 72) + 8) + 32) = v15;
  }

  if (*(a1 + 48) == v13 && *(a1 + 208) == 6)
  {
    PXRectWithOriginAndSize();
    v5 = v13;
  }

  [v5 setVisibleRect:?];
  if (a2 || (v6 = *(a1 + 208), v6 > 5))
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_21AE2D820[v6];
  }

  if (*(a1 + 216) - 1 == a2)
  {
    v8 = *(a1 + 208);
    v9 = 5;
    if (v8 == 5)
    {
      v9 = v7;
    }

    if (v8 >= 2)
    {
      v7 = v9;
    }

    else
    {
      v7 |= 4uLL;
    }
  }

  v10 = [v13 createAnchorFromSuperlayoutWithSublayoutIndex:a2 sublayoutPositionEdges:v7 ignoringScrollingAnimationAnchors:0];
  v11 = [v10 autoInvalidate];

  [v13 updateIfNeeded];
  [*(a1 + 56) didUpdateSublayout:v13];
  if (*(a1 + 208) <= 1uLL)
  {
    [v13 contentSize];
    *(*(*(a1 + 64) + 8) + 40) = v12 + *(*(*(a1 + 64) + 8) + 40);
  }
}

void __51__PXGSplitLayout__performUpdateSublayoutGeometries__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  if (*a4)
  {
    v12 = *a4;
    [v12 contentSize];
    v6 = v12;
    *(a3 + 32) = v7;
    *(a3 + 40) = v8;
    v9 = *(a1 + 32);
    if (v12 == *(v9 + 904))
    {
      v11 = *(a1 + 56);
      *(a3 + 48) = *(a1 + 40);
      *(a3 + 64) = v11;
      [v12 setFloating:*(a1 + 96)];
      [v12 setFloatingOffset:*(a1 + 64)];
      v6 = v12;
    }

    else if (v12 == *(v9 + 912))
    {
      v10 = *(a1 + 88);
      *(a3 + 48) = *(a1 + 72);
      *(a3 + 64) = v10;
    }
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXGSplitLayout;
  [(PXGLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGSplitLayout.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (UIEdgeInsets)presentedPadding
{
  top = self->_presentedPadding.top;
  left = self->_presentedPadding.left;
  bottom = self->_presentedPadding.bottom;
  right = self->_presentedPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)willRemoveSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = PXGSplitLayout;
  [(PXGLayout *)&v5 willRemoveSublayout:a3 atIndex:a4 flags:a5];
}

- (void)didAddSublayout:(id)a3 atIndex:(int64_t)a4 flags:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = PXGSplitLayout;
  [(PXGLayout *)&v5 didAddSublayout:a3 atIndex:a4 flags:a5];
}

- (void)enumerateSublayoutsForCreatingPointReferenceUsingBlock:(id)a3
{
  v4 = a3;
  v7 = 0;
  v5 = [(PXGSplitLayout *)self secondSublayout];
  if (v5)
  {
    v4[2](v4, v5, &v7);
  }

  v6 = [(PXGSplitLayout *)self firstSublayout];
  if (v6 && (v7 & 1) == 0)
  {
    v4[2](v4, v6, &v7);
  }
}

- (void)didChangeSublayoutOrigins
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 didChangeSublayoutOrigins];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout didChangeSublayoutOrigins]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:543 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)sublayoutDidChangeLastBaseline:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGSplitLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeLastBaseline:v4];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout sublayoutDidChangeLastBaseline:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGSplitLayout.m" lineNumber:536 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutDidChangeContentSize:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGSplitLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeContentSize:v4];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout sublayoutDidChangeContentSize:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGSplitLayout.m" lineNumber:529 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutNeedsUpdate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGSplitLayout;
  [(PXGLayout *)&v10 sublayoutNeedsUpdate:v4];
  if (self->_isUpdatingSublayouts)
  {
    [(PXGLayout *)self assumeWillUpdateSublayoutInUpdatePass:v4];
    goto LABEL_9;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      goto LABEL_9;
    }

LABEL_7:
    if (self->_updateFlags.updated)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout sublayoutNeedsUpdate:]"];
      [v8 handleFailureInFunction:v9 file:@"PXGSplitLayout.m" lineNumber:520 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_9:
}

- (void)userInterfaceDirectionDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 userInterfaceDirectionDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout userInterfaceDirectionDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:513 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)scrollSpeedRegimeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 scrollSpeedRegimeDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout scrollSpeedRegimeDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:506 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)referenceDepthDidChange
{
  v8.receiver = self;
  v8.super_class = PXGSplitLayout;
  [(PXGLayout *)&v8 referenceDepthDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout referenceDepthDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGSplitLayout.m" lineNumber:478 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v9 = a3;
  v10 = [(PXGSplitLayout *)self objectReferenceLookup];
  switch(v10)
  {
    case 2:
      v14 = v9;
      *a5 = v9;
      v12 = [(PXGSplitLayout *)self secondSublayout];
      if (v12)
      {
        v13 = [(PXGSplitLayout *)self secondSublayout];
        goto LABEL_9;
      }

LABEL_10:
      v5 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    case 1:
      v11 = v9;
      *a5 = v9;
      v12 = [(PXGSplitLayout *)self firstSublayout];
      if (v12)
      {
        v13 = [(PXGSplitLayout *)self firstSublayout];
LABEL_9:
        v15 = v13;
        v5 = [(PXGLayout *)self indexOfSublayout:v13];

LABEL_11:
        break;
      }

      goto LABEL_10;
    case 0:
      v17.receiver = self;
      v17.super_class = PXGSplitLayout;
      v5 = [(PXGLayout *)&v17 sublayoutIndexForObjectReference:v9 options:a4 updatedObjectReference:a5];
      break;
  }

  return v5;
}

- (void)setAdjustSublayoutZPositions:(BOOL)a3
{
  if (self->_adjustSublayoutZPositions != a3)
  {
    self->_adjustSublayoutZPositions = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout setAdjustSublayoutZPositions:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGSplitLayout.m" lineNumber:138 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setShouldExcludeTopAndBottomPaddingFromReferenceSize:(BOOL)a3
{
  if (self->_shouldExcludeTopAndBottomPaddingFromReferenceSize != a3)
  {
    self->_shouldExcludeTopAndBottomPaddingFromReferenceSize = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout setShouldExcludeTopAndBottomPaddingFromReferenceSize:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGSplitLayout.m" lineNumber:130 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_padding = &self->_padding;
  if ((PXEdgeInsetsApproximatelyEqualToEdgeInsets() & 1) == 0)
  {
    p_padding->top = top;
    p_padding->left = left;
    p_padding->bottom = bottom;
    p_padding->right = right;
    if (self->_isUpdatingSublayouts)
    {
      if (self->_isPerformingAdditionalUpdate)
      {
        return;
      }

      p_additionalUpdateFlags = &self->_additionalUpdateFlags;
      needsUpdate = self->_additionalUpdateFlags.needsUpdate;
      if (self->_additionalUpdateFlags.isPerformingUpdate && (self->_additionalUpdateFlags.updated & 1) != 0)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout setPadding:]"];
        [v11 handleFailureInFunction:v12 file:@"PXGSplitLayout.m" lineNumber:119 description:{@"invalidating %lu after it already has been updated", 1}];
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    p_additionalUpdateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_12:
        p_additionalUpdateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_11:
      if (self->_updateFlags.updated)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout setPadding:]"];
        [v11 handleFailureInFunction:v12 file:@"PXGSplitLayout.m" lineNumber:117 description:{@"invalidating %lu after it already has been updated", 1}];
LABEL_19:

        abort();
      }

      goto LABEL_12;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_11;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_additionalUpdateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode == a3)
  {
    return;
  }

  self->_mode = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_6:
    if (self->_updateFlags.updated)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout setMode:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGSplitLayout.m" lineNumber:106 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_8:

  [(PXGLayout *)self setNeedsUpdateOfScrollableAxis];
}

- (void)removeSublayoutsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (self->_firstSublayout)
  {
    a3.length = (self->_secondSublayout != 0) + 1;
  }

  else
  {
    a3.length = self->_secondSublayout != 0;
  }

  v17.location = a3.location;
  v17.length = length;
  a3.location = 0;
  v6 = NSIntersectionRange(v17, a3);
  if (v6.length)
  {
    v7 = location == v6.location;
  }

  else
  {
    v7 = 0;
  }

  if (!v7 || length != v6.length)
  {
    v15.receiver = self;
    v15.super_class = PXGSplitLayout;
    [(PXGLayout *)&v15 removeSublayoutsInRange:location, length];
    return;
  }

  if (self->_firstSublayout)
  {
    v9 = [(PXGSplitLayout *)self firstSublayoutIndex];
    v11 = v9 >= location && v9 - location < v6.length;
  }

  else
  {
    v11 = 0;
  }

  if (self->_secondSublayout)
  {
    v12 = [(PXGSplitLayout *)self secondSublayoutIndex];
    v14 = v12 >= location && v12 - location < v6.length;
    if (v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
LABEL_29:
      [(PXGSplitLayout *)self setFirstSublayout:0];
    }
  }

  if (v14)
  {

    [(PXGSplitLayout *)self setSecondSublayout:0];
  }
}

- (void)_replaceSublayout:(id)a3 withSublayout:(id)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  self->_settingSublayouts = 1;
  [v9 setNeedsUpdate];
  if (v8)
  {
    v15.receiver = self;
    v15.super_class = PXGSplitLayout;
    [(PXGLayout *)&v15 removeSublayoutsInRange:a5, 1];
  }

  if (v9)
  {
    [(PXGLayout *)self insertSublayout:v9 atIndex:a5];
  }

  self->_settingSublayouts = 0;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_10:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      goto LABEL_11;
    }

LABEL_9:
    if (self->_updateFlags.updated)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSplitLayout _replaceSublayout:withSublayout:atIndex:]"];
      [v13 handleFailureInFunction:v14 file:@"PXGSplitLayout.m" lineNumber:67 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_9;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_11:
  [(PXGLayout *)self setNeedsUpdateOfScrollableAxis];
}

- (void)setSecondSublayout:(id)a3
{
  v4 = a3;
  if (self->_secondSublayout != v4)
  {
    v10 = v4;
    v5 = [(PXGSplitLayout *)self secondSublayoutIndex];
    secondSublayout = self->_secondSublayout;
    v7 = v10;
    v8 = self->_secondSublayout;
    self->_secondSublayout = v7;
    v9 = secondSublayout;

    [(PXGSplitLayout *)self _replaceSublayout:v9 withSublayout:v7 atIndex:v5];
    v4 = v10;
  }
}

- (void)setFirstSublayout:(id)a3
{
  v4 = a3;
  firstSublayout = self->_firstSublayout;
  if (firstSublayout != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_firstSublayout;
    self->_firstSublayout = v6;
    v8 = firstSublayout;

    [(PXGSplitLayout *)self _replaceSublayout:v8 withSublayout:v6 atIndex:[(PXGSplitLayout *)self firstSublayoutIndex]];
    v4 = v9;
  }
}

@end