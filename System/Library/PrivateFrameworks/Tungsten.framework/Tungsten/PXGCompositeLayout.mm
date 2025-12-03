@interface PXGCompositeLayout
- (PXGCompositeLayout)init;
- (PXGCompositeLayout)initWithComposition:(id)composition;
- (PXGSublayoutFaultingDelegate)sublayoutFaultingDelegate;
- (UIEdgeInsets)faultInOutsets;
- (UIEdgeInsets)faultOutOutsets;
- (double)alphaForSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)_invalidateStylableType:(int64_t)type;
- (void)_invalidateSublayouts;
- (void)_updateSublayoutOfStylableType:(int64_t)type;
- (void)_updateSublayouts;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)dealloc;
- (void)didAddSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)didApplySublayoutChangeDetails:(id)details axAdjustedSubgroupChangeDetails:(id)changeDetails countAfterChanges:(int64_t)changes;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)scrollSpeedRegimeDidChange;
- (void)setComposition:(id)composition;
- (void)setSublayoutIndex:(int64_t)index forUniquelyStylableType:(int64_t)type animated:(BOOL)animated;
- (void)sublayoutDidChangeContentSize:(id)size;
- (void)sublayoutNeedsUpdate:(id)update;
- (void)update;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willRemoveSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags;
- (void)willUpdate;
@end

@implementation PXGCompositeLayout

- (UIEdgeInsets)faultOutOutsets
{
  top = self->_faultOutOutsets.top;
  left = self->_faultOutOutsets.left;
  bottom = self->_faultOutOutsets.bottom;
  right = self->_faultOutOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)faultInOutsets
{
  top = self->_faultInOutsets.top;
  left = self->_faultInOutsets.left;
  bottom = self->_faultInOutsets.bottom;
  right = self->_faultInOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXGSublayoutFaultingDelegate)sublayoutFaultingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sublayoutFaultingDelegate);

  return WeakRetained;
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  v10 = infoCopy;
  if ((change & 2) != 0)
  {
    v20 = 0;
    PXGAXGetFocusFromAndToInfosForUserInfo(infoCopy, 0, &v20);
    v11 = v20;
    v12 = v11;
    if (v11)
    {
      axContainingGroup = [v11 axContainingGroup];
      for (i = [axContainingGroup containingLayout];
      {
        v15 = i;

        superlayout = [v15 superlayout];

        if (!v15 || superlayout == self)
        {
          break;
        }

        axContainingGroup = v15;
        [v15 superlayout];
      }

      if (v15)
      {
        sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
        v18 = [sublayoutDataStore indexOfSublayout:v15];
      }

      else
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (self->_currentSingleLayouts[1] != v18)
    {
      [(PXGCompositeLayout *)self setSublayoutIndex:v18 forUniquelyStylableType:1 animated:1];
    }
  }

  v19.receiver = self;
  v19.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v19 axGroup:groupCopy didChange:change userInfo:v10];
}

- (void)_updateSublayouts
{
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v5 = [sublayoutDataStore count];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = v5;
  if (self->_isUpdatingSublayouts)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGCompositeLayout.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"!_isUpdatingSublayouts"}];
  }

  self->_isUpdatingSublayouts = 1;
  composition = [(PXGCompositeLayout *)self composition];
  if (!composition)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGCompositeLayout.m" lineNumber:323 description:{@"%@ has no defined composition", self}];
  }

  v143 = 0;
  v144 = &v143;
  v145 = 0x4010000000;
  v146 = "";
  v147 = 0u;
  v148 = 0u;
  [(PXGLayout *)self visibleRect];
  *&v147 = v8;
  *(&v147 + 1) = v9;
  *&v148 = v10;
  *(&v148 + 1) = v11;
  [composition setSublayoutDataStore:sublayoutDataStore];
  [(PXGLayout *)self referenceSize];
  [composition setReferenceSize:?];
  [(PXGLayout *)self visibleRect];
  [composition setVisibleRect:?];
  [composition updateEstimate];
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v142 = 0x7FFFFFFFFFFFFFFFLL;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  anchoredContentEdges = [(PXGLayout *)self anchoredContentEdges];
  v14 = anchoredContentEdges;
  v15 = v140[3];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL || !anchoredContentEdges)
  {
LABEL_10:
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  v16 = [composition anchorSublayoutIndexForAnchoredContentEdges:anchoredContentEdges];
  v140[3] = v16;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    shouldFaultInContentAtAnchoredContentEdges = [(PXGLayout *)self shouldFaultInContentAtAnchoredContentEdges];
    *(v136 + 24) = shouldFaultInContentAtAnchoredContentEdges;
    v15 = v140[3];
    goto LABEL_10;
  }

LABEL_11:
  anchoredSublayoutIndex = [(PXGLayout *)self anchoredSublayoutIndex];
  v140[3] = anchoredSublayoutIndex;
  if (anchoredSublayoutIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = 1;
LABEL_25:
    *(v136 + 24) = v25;
    goto LABEL_26;
  }

  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __39__PXGCompositeLayout__updateSublayouts__block_invoke;
  v134[3] = &unk_2782A8EF0;
  v134[4] = &v139;
  v134[5] = &v135;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v134];
  if (v140[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 >= 1)
    {
      v19 = 0;
      for (i = 0; i != v6; ++i)
      {
        geometries = [sublayoutDataStore geometries];
        v22 = *(geometries + v19 + 48);
        v23 = *(geometries + v19 + 56);
        v150.size.width = *(geometries + v19 + 32);
        v150.size.height = *(geometries + v19 + 40);
        v150.origin.x = v22;
        v150.origin.y = v23;
        if (CGRectIntersectsRect(v150, v144[1]))
        {
          v149.x = v22;
          v149.y = v23;
          v24 = CGRectContainsPoint(v144[1], v149);
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = i;
          }

          if (v24)
          {
            v12 = i;
            goto LABEL_24;
          }
        }

        v19 += 136;
      }

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }
    }

    v12 = 0;
LABEL_24:
    v25 = 0;
    v140[3] = v12;
    goto LABEL_25;
  }

LABEL_26:
  viewEnvironment = [(PXGLayout *)self viewEnvironment];
  if ([viewEnvironment accessibilityEnabled])
  {
    v27 = v140[3];
    v28 = 1;
    if (v27 > 0)
    {
      v28 = 2;
    }

    v29 = v27 - (v27 > 0);
    if (v6 - v27 <= 1)
    {
      v30 = v28;
    }

    else
    {
      v30 = v28 + 1;
    }

    v93 = v30;
    v95 = v29;
  }

  else
  {
    v93 = 0;
    v95 = 0x7FFFFFFFFFFFFFFFLL;
  }

  geometries2 = [sublayoutDataStore geometries];
  infos = [sublayoutDataStore infos];
  [(PXGCompositeLayout *)self faultInOutsets];
  PXEdgeInsetsInvert();
  v87 = v32;
  v88 = v31;
  v86 = v33;
  v35 = v34;
  [(PXGCompositeLayout *)self faultOutOutsets];
  PXEdgeInsetsInvert();
  v84 = v37;
  v85 = v36;
  v83 = v38;
  v40 = v39;
  [(PXGLayout *)self displayScale];
  v82 = v41;
  [(PXGLayout *)self lastScrollDirection];
  v80 = v43;
  v81 = v42;
  scrollSpeedRegime = [(PXGLayout *)self scrollSpeedRegime];
  userInterfaceDirection = [(PXGLayout *)self userInterfaceDirection];
  [(PXGLayout *)self safeAreaInsets];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [(PXGLayout *)self referenceDepth];
  v55 = v54;
  wantsCustomAlphaForSublayouts = [(PXGCompositeLayout *)self wantsCustomAlphaForSublayouts];
  sublayoutFaultingDelegate = [(PXGCompositeLayout *)self sublayoutFaultingDelegate];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __39__PXGCompositeLayout__updateSublayouts__block_invoke_2;
  v103[3] = &unk_2782A8F18;
  v107 = &v139;
  v108 = &v135;
  v111 = infos;
  v112 = v95;
  v113 = v93;
  v109 = &v143;
  v110 = geometries2;
  v114 = v40;
  v115 = v85;
  v116 = v84;
  v117 = v83;
  v94 = sublayoutFaultingDelegate;
  v104 = v94;
  selfCopy = self;
  v118 = v35;
  v119 = v88;
  v120 = v87;
  v121 = v86;
  v58 = viewEnvironment;
  v106 = v58;
  v122 = v55;
  v123 = v82;
  v124 = v81;
  v125 = v80;
  v126 = scrollSpeedRegime;
  v127 = userInterfaceDirection;
  v128 = v47;
  v129 = v49;
  v130 = v51;
  v131 = v53;
  v133 = wantsCustomAlphaForSublayouts;
  v132 = v14;
  v59 = MEMORY[0x21CEE40A0](v103);
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __39__PXGCompositeLayout__updateSublayouts__block_invoke_3;
  v99[3] = &unk_2782A8F68;
  v60 = composition;
  v100 = v60;
  v102 = &v139;
  v61 = v59;
  v101 = v61;
  v62 = MEMORY[0x21CEE40A0](v99);
  v62[2]();
  if ([(PXGLayout *)self hasSublayoutsRemainingToBeUpdated]&& [(PXGCompositeLayout *)self allowsRepeatedSublayoutsUpdates])
  {
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __39__PXGCompositeLayout__updateSublayouts__block_invoke_5;
    v97[3] = &unk_2782A8F90;
    v98 = v62;
    [(PXGLayout *)self performRepeatedSublayoutsUpdate:v97];
  }

  [v60 contentBounds];
  v65 = v64;
  v67 = v66;
  if (v68 != *MEMORY[0x277CBF348] || v63 != *(MEMORY[0x277CBF348] + 8))
  {
    PXPointSubtract();
    v90 = v69;
    v92 = v70;
    PXPointAdd();
    if (v6 >= 1)
    {
      v71 = 0;
      v72.f64[0] = v90;
      v72.f64[1] = v92;
      v96 = v72;
      do
      {
        v73 = ([sublayoutDataStore geometries] + v71);
        v74 = v73[4].f64[0] + 0.0;
        v73[3] = vaddq_f64(v96, v73[3]);
        v73[4].f64[0] = v74;
        v71 += 136;
        --v6;
      }

      while (v6);
    }

    PXPointAdd();
    v75 = v144;
    v144[1].origin.x = v76;
    v75[1].origin.y = v77;
  }

  [(PXGLayout *)self setContentSize:v65, v67];
  [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:v144[1].origin.x, v144[1].origin.y, v144[1].size.width, v144[1].size.height];
  [(PXGCompositeLayout *)self didUpdateSublayouts];
  self->_isUpdatingSublayouts = 0;

  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);

LABEL_44:
}

uint64_t __39__PXGCompositeLayout__updateSublayouts__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 numberOfDescendantAnchors];
  if (result >= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __39__PXGCompositeLayout__updateSublayouts__block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 80) + 136 * a2;
  v9 = (*(a1 + 88) + 16 * a2);
  if (*(*(*(a1 + 56) + 8) + 24) == a2 && (*(*(*(a1 + 64) + 8) + 24) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(a1 + 96);
    v13 = a2 >= v11;
    v12 = a2 - v11;
    v13 = !v13 || v12 >= *(a1 + 104);
    v10 = !v13;
  }

  v14 = (v8 + 32);
  v15 = *(v8 + 32);
  if (!v9[1])
  {
    goto LABEL_26;
  }

  v17 = *(v8 + 48);
  v16 = *(v8 + 56);
  v18 = *(v8 + 40);
  if (!*v9)
  {
    if ((v10 & 1) != 0 || (PXEdgeInsetsInsetRect(), v54.origin.x = v20, v54.origin.y = v21, v54.size.width = v22, v54.size.height = v23, v50.origin.x = v17, v50.origin.y = v16, v50.size.width = v15, v50.size.height = v18, CGRectIntersectsRect(v50, v54)) || (objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) layout:*(a1 + 40) shouldFaultInSublayoutIfOutsideVisibleRect:a2])
    {
      v24 = *(a1 + 40);
      v25 = v9[1];
      v26 = [v25 layout:v24 createSublayoutAtIndex:a2];

      if (v26)
      {
        v26 = v26;
        if (*v9 != v26)
        {

          *v9 = v26;
        }

        [*(a1 + 40) didFaultInSublayout:v26 atIndex:a2 fromEstimatedContentSize:{v15, v18}];
      }

      else
      {
        v9[1] = 0;
        *v14 = *MEMORY[0x277CBF3A8];
      }

LABEL_25:
    }

LABEL_26:
    v19 = *v9;
    if (!v19)
    {
      return;
    }

    goto LABEL_27;
  }

  if ((v10 & 1) == 0)
  {
    PXEdgeInsetsInsetRect();
    v55.origin.x = v27;
    v55.origin.y = v28;
    v55.size.width = v29;
    v55.size.height = v30;
    v51.origin.x = v17;
    v51.origin.y = v16;
    v51.size.width = v15;
    v51.size.height = v18;
    if (CGRectIntersectsRect(v51, v55))
    {
      goto LABEL_26;
    }

    v26 = *v9;
    if (([*(a1 + 32) layout:*(a1 + 40) shouldPreventFaultOutOfSublayout:v26] & 1) == 0)
    {
      [*(a1 + 40) willFaultOutSublayout:v26 atIndex:a2];
      if (*v9)
      {

        *v9 = 0;
      }
    }

    goto LABEL_25;
  }

  v19 = *v9;
LABEL_27:
  v48 = v19;
  v31 = *(v8 + 48);
  v32 = *(v8 + 56);
  v52 = CGRectOffset(*(*(*(a1 + 72) + 8) + 32), -v31, -v32);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  [v48 contentSize];
  if (v37 != *MEMORY[0x277CBF3A8] || v38 != *(MEMORY[0x277CBF3A8] + 8))
  {
    if ((a3 & 8) != 0)
    {
      x = x + v37 - *v14;
    }

    if ((a3 & 4) != 0)
    {
      y = y + v38 - *(v8 + 40);
    }
  }

  [v48 setViewEnvironment:*(a1 + 48)];
  [v48 setReferenceSize:{*v8, *(v8 + 8)}];
  [v48 setReferenceDepth:*(a1 + 176) * *(v8 + 16)];
  [v48 setReferenceOptions:*(v8 + 24)];
  [v48 setVisibleRect:{x, y, width, height}];
  [v48 setDisplayScale:*(a1 + 184)];
  [v48 setLastScrollDirection:{*(a1 + 192), *(a1 + 200)}];
  [v48 setScrollSpeedRegime:*(a1 + 208)];
  [v48 setUserInterfaceDirection:*(a1 + 216)];
  [v48 setSafeAreaInsets:{*(a1 + 224), *(a1 + 232), *(a1 + 240), *(a1 + 248)}];
  if (*(a1 + 264) == 1)
  {
    [*(a1 + 40) alphaForSublayout:v48 atIndex:a2];
    [v48 setAlpha:?];
  }

  v40 = [v48 createAnchorFromSuperlayoutWithSublayoutIndex:a2 sublayoutPositionEdges:a4 ignoringScrollingAnimationAnchors:1];
  v41 = v40;
  if (v40)
  {
    v42 = [v40 autoInvalidate];
  }

  else if ((*(*(*(a1 + 56) + 8) + 24) != a2 || *(a1 + 256)) && ![v48 numberOfDescendantAnchors] && objc_msgSend(v48, "needsUpdate"))
  {
    if (*(a1 + 256))
    {
      v43 = *(a1 + 256);
    }

    else
    {
      v43 = a3;
    }

    v44 = [v48 createAnchorForContentEdges:v43];
    v45 = [v44 autoInvalidate];
  }

  [v48 updateIfNeeded];
  [*(a1 + 40) didUpdateSublayout:v48];
  if (*(*(*(a1 + 56) + 8) + 24) == a2)
  {
    [v48 visibleRect];
    *(*(*(a1 + 72) + 8) + 32) = CGRectOffset(v53, v31, v32);
  }

  [v48 contentSize];
  *(v8 + 32) = v46;
  *(v8 + 40) = v47;
  PXGAssertErrValidSize(v46, v47);
}

void __39__PXGCompositeLayout__updateSublayouts__block_invoke_3(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__PXGCompositeLayout__updateSublayouts__block_invoke_4;
  v3[3] = &unk_2782A8F40;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 updateSublayoutGeometriesFromAnchorSublayoutIndex:v1 usingSublayoutUpdateBlock:v3];
}

- (void)_invalidateSublayouts
{
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 8;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 8) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout _invalidateSublayouts]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGCompositeLayout.m" lineNumber:308 description:{@"invalidating %lu after it already has been updated", 8}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 8;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_updateSublayoutOfStylableType:(int64_t)type
{
  v5 = +[PXTungstenSettings sharedInstance];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  geometries = [sublayoutDataStore geometries];
  composition = [(PXGCompositeLayout *)self composition];
  [composition sublayoutInsetsForStylableType:type];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __53__PXGCompositeLayout__updateSublayoutOfStylableType___block_invoke;
  v31[3] = &__block_descriptor_72_e11_v20__0q8B16l;
  v31[4] = geometries;
  v31[5] = v10;
  v31[6] = v12;
  v31[7] = v14;
  v31[8] = v16;
  v17 = MEMORY[0x21CEE40A0](v31);
  v18 = v17;
  v19 = self->_currentSingleLayouts[type];
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(v17 + 16))(v17, self->_currentSingleLayouts[type], 0);
  }

  v20 = self->_pendingSingleLayouts[type];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18[2](v18, self->_pendingSingleLayouts[type], 1);
  }

  if (self->_pendingAnimations[type])
  {
    enableTungstenKeyboardNavigation = [v5 enableTungstenKeyboardNavigation];
    v22 = v20 == 0x7FFFFFFFFFFFFFFFLL && v19 == 0x7FFFFFFFFFFFFFFFLL;
    if (!v22 && enableTungstenKeyboardNavigation != 0)
    {
      v28 = v5;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __53__PXGCompositeLayout__updateSublayoutOfStylableType___block_invoke_2;
      v29[3] = &unk_2782A8EC8;
      v30 = v5;
      v24 = MEMORY[0x21CEE40A0](v29);
      createAnimation = [(PXGLayout *)self createAnimation];
      v24[2](v24);
      superlayout = [(PXGLayout *)self superlayout];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        createAnimation2 = [superlayout createAnimation];
        (v24[2])(v24, createAnimation2);
      }

      v5 = v28;
    }
  }

  self->_currentSingleLayouts[type] = v20;
  self->_pendingAnimations[type] = 0;
}

CGFloat __53__PXGCompositeLayout__updateSublayoutOfStylableType___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32) + 136 * a2;
  v14 = *PXGSpriteGeometryTransformIdentity;
  if (a3)
  {
    v4 = *(v3 + 32);
    if (v4 > 0.0)
    {
      v5 = *(v3 + 40);
      if (v5 > 0.0)
      {
        v6 = (v4 - *(a1 + 48) - *(a1 + 64)) / v4;
        v7 = v5 - *(a1 + 40) - *(a1 + 56);
        v8 = v4 * 0.5 + *(v3 + 48);
        v9 = v5 * 0.5 + *(v3 + 56);
        v13 = *PXGSpriteGeometryTransformIdentity;
        v15 = *PXGSpriteGeometryTransformIdentity;
        v10 = v7 / v5;
        CGAffineTransformTranslate(&v13, &v15, v8, v9);
        v14 = v13;
        v15 = v13;
        CGAffineTransformScale(&v13, &v15, v6, v10);
        v14 = v13;
        v15 = v13;
        CGAffineTransformTranslate(&v13, &v15, -v8, -v9);
        v14 = v13;
      }
    }
  }

  v11 = *&v14.c;
  *(v3 + 72) = *&v14.a;
  *(v3 + 88) = v11;
  result = v14.tx;
  *(v3 + 104) = *&v14.tx;
  *(v3 + 120) = 0;
  return result;
}

void __53__PXGCompositeLayout__updateSublayoutOfStylableType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 keyboardAnimationDuration];
  [v5 setDuration:?];
  [*(a1 + 32) keyboardDampingRatio];
  *&v4 = v4;
  [v5 setDampingRatio:v4];
  [v5 setScope:1];
}

- (void)_invalidateStylableType:(int64_t)type
{
  if (type == 2)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_18:
        v7 = needsUpdate | 4;
        goto LABEL_22;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      v9 = 4;
      goto LABEL_27;
    }

    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout _invalidateStylableType:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXGCompositeLayout.m" lineNumber:237 description:{@"invalidating %lu after it already has been updated", 4}];
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (type == 1)
  {
    p_updateFlags = &self->_updateFlags;
    v5 = self->_updateFlags.needsUpdate;
    if (v5)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_15:
        v7 = v5 | 1;
LABEL_22:
        p_updateFlags->needsUpdate = v7;
        return;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      v9 = 1;
      goto LABEL_27;
    }

    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout _invalidateStylableType:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXGCompositeLayout.m" lineNumber:234 description:{@"invalidating %lu after it already has been updated", 1}];
      goto LABEL_34;
    }

    goto LABEL_15;
  }

  if (type)
  {
    return;
  }

  p_updateFlags = &self->_updateFlags;
  v4 = self->_updateFlags.needsUpdate;
  if (v4)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_20:
    if ((self->_updateFlags.updated & 2) == 0)
    {
LABEL_21:
      v7 = v4 | 2;
      goto LABEL_22;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout _invalidateStylableType:]"];
    [currentHandler handleFailureInFunction:v11 file:@"PXGCompositeLayout.m" lineNumber:231 description:{@"invalidating %lu after it already has been updated", 2}];
LABEL_34:

    abort();
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  v9 = 2;
LABEL_27:
  p_updateFlags->needsUpdate = v9;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGCompositeLayout.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  numberOfDescendantAnchors = [(PXGLayout *)self numberOfDescendantAnchors];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (numberOfDescendantAnchors < 1)
  {
    self->_updateFlags.willPerformUpdate = 0;
    if (!needsUpdate)
    {
      goto LABEL_25;
    }

    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      if ((self->_updateFlags.updated & 8) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout update]"];
        [currentHandler handleFailureInFunction:v21 file:@"PXGCompositeLayout.m" lineNumber:202 description:{@"invalidating %lu after it already has been updated", 8}];

        abort();
      }

      p_updateFlags->needsUpdate = needsUpdate | 8;
      self->_updateFlags.willPerformUpdate = 0;
      p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
LABEL_5:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXGCompositeLayout.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
      goto LABEL_10;
    }

    needsUpdate |= 8uLL;
    p_updateFlags->needsUpdate = needsUpdate;
    self->_updateFlags.willPerformUpdate = 0;
    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
  }

LABEL_10:
  self->_updateFlags.isPerformingUpdate = 1;
  self->_updateFlags.updated = 8;
  if ((needsUpdate & 8) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFF7;
    [(PXGCompositeLayout *)self _updateSublayouts];
    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout update]"];
      [currentHandler3 handleFailureInFunction:v13 file:@"PXGCompositeLayout.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }
  }

  v9 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 1uLL;
  if (v9)
  {
    p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFFELL;
    [(PXGCompositeLayout *)self _updateSublayoutOfStylableType:1];
  }

  if (!*p_isPerformingUpdate)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout update]"];
    [currentHandler4 handleFailureInFunction:v15 file:@"PXGCompositeLayout.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v10 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 2uLL;
  if ((v10 & 2) != 0)
  {
    p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFFDLL;
    [(PXGCompositeLayout *)self _updateSublayoutOfStylableType:0];
  }

  if (!*p_isPerformingUpdate)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout update]"];
    [currentHandler5 handleFailureInFunction:v17 file:@"PXGCompositeLayout.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v11 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 4uLL;
  if ((v11 & 4) != 0)
  {
    p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFFBLL;
    [(PXGCompositeLayout *)self _updateSublayoutOfStylableType:2];
    v11 = p_updateFlags->needsUpdate;
  }

  *p_isPerformingUpdate = 0;
  if (v11)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout update]"];
    [currentHandler6 handleFailureInFunction:v19 file:@"PXGCompositeLayout.m" lineNumber:218 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_25:
  v22.receiver = self;
  v22.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v22 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGCompositeLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGCompositeLayout.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)didApplySublayoutChangeDetails:(id)details axAdjustedSubgroupChangeDetails:(id)changeDetails countAfterChanges:(int64_t)changes
{
  detailsCopy = details;
  v17.receiver = self;
  v17.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v17 didApplySublayoutChangeDetails:detailsCopy axAdjustedSubgroupChangeDetails:changeDetails countAfterChanges:changes];
  if ([detailsCopy hasMoves])
  {
    [(PXGCompositeLayout *)self _invalidateSublayouts];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v13 = __103__PXGCompositeLayout_didApplySublayoutChangeDetails_axAdjustedSubgroupChangeDetails_countAfterChanges___block_invoke;
  v14 = &unk_2782AAF40;
  selfCopy = self;
  v9 = detailsCopy;
  v10 = 0;
  v16 = v9;
  v18 = 0;
  do
  {
    (v13)(v12, v10, &v18);
    if (v18)
    {
      break;
    }
  }

  while (v10++ != 2);
}

uint64_t __103__PXGCompositeLayout_didApplySublayoutChangeDetails_axAdjustedSubgroupChangeDetails_countAfterChanges___block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(*(v4 + 880) + 8 * a2);
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(result + 40) indexAfterApplyingChangesToIndex:*(*(v4 + 880) + 8 * a2)];
    v4 = *(v3 + 32);
    if (v5 != result)
    {
      *(*(v4 + 880) + 8 * a2) = result;
      result = [*(v3 + 32) _invalidateStylableType:a2];
      v4 = *(v3 + 32);
    }
  }

  if (*(*(v4 + 888) + 8 * a2) != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(v3 + 40) indexAfterApplyingChangesToIndex:?];
    *(*(*(v3 + 32) + 888) + 8 * a2) = result;
  }

  return result;
}

- (void)scrollSpeedRegimeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 scrollSpeedRegimeDidChange];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 displayScaleDidChange];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 visibleRectDidChange];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 referenceDepthDidChange];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 referenceSizeDidChange];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)viewEnvironmentDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 viewEnvironmentDidChange];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)sublayoutDidChangeContentSize:(id)size
{
  v4.receiver = self;
  v4.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v4 sublayoutDidChangeContentSize:size];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)sublayoutNeedsUpdate:(id)update
{
  updateCopy = update;
  v5.receiver = self;
  v5.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v5 sublayoutNeedsUpdate:updateCopy];
  if (self->_isUpdatingSublayouts)
  {
    [(PXGLayout *)self assumeWillUpdateSublayoutInUpdatePass:updateCopy];
  }

  else
  {
    [(PXGCompositeLayout *)self _invalidateSublayouts];
  }
}

- (void)willRemoveSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  v6.receiver = self;
  v6.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v6 willRemoveSublayout:sublayout atIndex:index flags:flags];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)didAddSublayout:(id)sublayout atIndex:(int64_t)index flags:(unint64_t)flags
{
  v6.receiver = self;
  v6.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v6 didAddSublayout:sublayout atIndex:index flags:flags];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)insertSublayoutProvider:(id)provider inRange:(_NSRange)range
{
  v5.receiver = self;
  v5.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v5 insertSublayoutProvider:provider inRange:range.location, range.length];
  [(PXGCompositeLayout *)self _invalidateSublayouts];
}

- (void)setSublayoutIndex:(int64_t)index forUniquelyStylableType:(int64_t)type animated:(BOOL)animated
{
  self->_pendingSingleLayouts[type] = index;
  self->_pendingAnimations[type] = animated;
  [(PXGCompositeLayout *)self _invalidateStylableType:type];
}

- (double)alphaForSublayout:(id)sublayout atIndex:(int64_t)index
{
  sublayoutCopy = sublayout;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGCompositeLayout.m" lineNumber:89 description:{@"Method %s is a responsibility of subclass %@", "-[PXGCompositeLayout alphaForSublayout:atIndex:]", v9}];

  abort();
}

- (void)setComposition:(id)composition
{
  compositionCopy = composition;
  composition = self->_composition;
  if (composition != compositionCopy)
  {
    v12 = compositionCopy;
    [(PXGSublayoutComposition *)composition setCompositeLayout:0];
    objc_storeStrong(&self->_composition, composition);
    compositeLayout = [(PXGSublayoutComposition *)self->_composition compositeLayout];

    if (compositeLayout)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = self->_composition;
      compositeLayout2 = [(PXGSublayoutComposition *)v10 compositeLayout];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGCompositeLayout.m" lineNumber:72 description:{@"a layout composition currently cannot be use for multiple PXGCompositeLayouts (%@ is already assigned to %@, and thus can't be used with %@)", v10, compositeLayout2, self}];
    }

    [(PXGSublayoutComposition *)self->_composition setCompositeLayout:self];
    [(PXGCompositeLayout *)self _invalidateSublayouts];
    [(PXGCompositeLayout *)self _invalidateStylableType:1];
    [(PXGCompositeLayout *)self _invalidateStylableType:0];
    [(PXGCompositeLayout *)self _invalidateStylableType:2];
    compositionCopy = v12;
  }
}

- (PXGCompositeLayout)initWithComposition:(id)composition
{
  compositionCopy = composition;
  v5 = [(PXGCompositeLayout *)self init];
  [(PXGCompositeLayout *)v5 setComposition:compositionCopy];

  return v5;
}

- (void)dealloc
{
  free(self->_currentSingleLayouts);
  free(self->_pendingSingleLayouts);
  free(self->_pendingAnimations);
  v3.receiver = self;
  v3.super_class = PXGCompositeLayout;
  [(PXGLayout *)&v3 dealloc];
}

- (PXGCompositeLayout)init
{
  v7.receiver = self;
  v7.super_class = PXGCompositeLayout;
  v2 = [(PXGLayout *)&v7 init];
  if (v2)
  {
    v3 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
    v2->_currentSingleLayouts = v3;
    memset_pattern16(v3, &unk_21AE2D540, 0x18uLL);
    v4 = malloc_type_calloc(3uLL, 8uLL, 0x100004000313F17uLL);
    v2->_pendingSingleLayouts = v4;
    memset_pattern16(v4, &unk_21AE2D540, 0x18uLL);
    v5 = malloc_type_calloc(3uLL, 1uLL, 0x100004077774924uLL);
    v2->_pendingAnimations = v5;
    v5[2] = 0;
    *v5 = 0;
  }

  return v2;
}

@end