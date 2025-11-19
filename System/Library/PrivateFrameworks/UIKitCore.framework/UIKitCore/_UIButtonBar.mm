@interface _UIButtonBar
- ($1AB5FA073B851C12C2339EC22442E995)widthInfo;
- (BOOL)_item:(id)a3 addSymbolEffect:(id)a4 options:(id)a5 animated:(BOOL)a6;
- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5;
- (BOOL)_item:(id)a3 removeSymbolEffectOfType:(id)a4 options:(id)a5 animated:(BOOL)a6;
- (BOOL)_itemDidUpdateMenu:(id)a3 fromMenu:(id)a4;
- (BOOL)hasAlwaysOverflowGroups;
- (BOOL)hasVisibleContent;
- (BOOL)needsLeadingSpacer;
- (BOOL)needsTrailingSpacer;
- (CGRect)_preferredRegionRectForButton:(id)a3;
- (NSArray)elementsForOverflowMenu;
- (NSArray)elementsRepresentingOrderedGroups;
- (NSArray)groupRealizedOrder;
- (NSDirectionalEdgeInsets)hitTestDirectionalInsets;
- (NSString)description;
- (UIBarButtonItem)leadingVisibleItem;
- (UIBarButtonItem)popOverPresentingSourceItem;
- (UIBarButtonItem)trailingClippingItem;
- (UIBarButtonItem)trailingVisibleItem;
- (UIEdgeInsets)hitTestInsets;
- (UIView)_viewForOverlayRects;
- (_UIButtonBar)init;
- (_UIButtonBar)initWithCoder:(id)a3;
- (_UIButtonBarAppearanceDelegate)_appearanceDelegate;
- (_UIButtonBarDelegate)delegate;
- (_UIPointerInteractionAssistant)assistant;
- (double)_widthInfoForLayout:(uint64_t)a1;
- (id)_contextMenuInteractionForItem:(id)a3;
- (id)_groupOrdererGroups:(id)a3;
- (id)_overflowFallbackItem;
- (id)_targetActionForBarButtonItem:(id)a3;
- (id)_updatedViewForBarButtonItem:(id)a3 withView:(id)a4;
- (id)itemAtPoint:(CGPoint)a3 inView:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (unint64_t)_numberOfGroups;
- (void)_appearanceChanged;
- (void)_buttonBarStackViewDidLayoutSubviews:(id)a3;
- (void)_confirmOwnershipOfFixedGroups;
- (void)_disablePointerInteractions;
- (void)_enablePointerInteractions;
- (void)_enumerateAllGroups:(id)a3;
- (void)_enumerateLayoutGroups:(id)a3;
- (void)_forwardEnumerateVisibleItems:(void *)a1;
- (void)_groupDidUpdateItems:(id)a3 removedItems:(id)a4;
- (void)_groupDidUpdateRepresentative:(id)a3 fromRepresentative:(id)a4;
- (void)_groupOrdererDidUpdate:(id)a3;
- (void)_invalidateAssistant:(id)a3;
- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5;
- (void)_itemCustomViewDidChange:(id)a3 fromView:(id)a4;
- (void)_itemDidChangeHiddenState:(id)a3;
- (void)_itemDidChangeSelectionState:(id)a3;
- (void)_itemDidChangeWidth:(id)a3;
- (void)_itemStandardViewNeedsUpdate:(id)a3;
- (void)_layoutBar;
- (void)_reverseEnumerateVisibleItems:(void *)a1;
- (void)_setNeedsAppearanceUpdate;
- (void)_setNeedsVisualUpdate;
- (void)_updateEffectiveLayout;
- (void)_updateHitRects;
- (void)_validateAllItems;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setBarButtonGroups:(id)a3;
- (void)setDoneItemAppearance:(id)a3;
- (void)setFixedLeadingGroups:(id)a3;
- (void)setFixedTrailingGroups:(id)a3;
- (void)setForceFixedSpacing:(BOOL)a3;
- (void)setGroupOrderer:(id)a3;
- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)a3;
- (void)setHitTestInsets:(UIEdgeInsets)a3;
- (void)setItemDistribution:(int64_t)a3;
- (void)setItemsInGroupUseSameSize:(BOOL)a3;
- (void)setMinimumInterItemSpace:(double)a3;
- (void)setPlainItemAppearance:(id)a3;
- (void)setSupportsOverflow:(BOOL)a3;
- (void)setTargetLayoutWidth:(double)a3;
- (void)setViewUpdater:(id)a3;
@end

@implementation _UIButtonBar

- (_UIButtonBar)init
{
  v5.receiver = self;
  v5.super_class = _UIButtonBar;
  v2 = [(_UIButtonBar *)&v5 init];
  v3 = v2;
  if (v2)
  {
    _UIButtonBarCommonInit(v2);
  }

  return v3;
}

- (void)_setNeedsVisualUpdate
{
  [(UIView *)self->_stackView setNeedsUpdateConstraints];
  [(UIView *)self->_stackView setNeedsLayout];

  [(_UIButtonBar *)self _disablePointerInteractions];
}

- (void)_disablePointerInteractions
{
  *&self->_buttonBarFlags |= 0x10u;
  WeakRetained = objc_loadWeakRetained(&self->_popOverPresentingSourceItem);
  [WeakRetained invalidate];
}

- (void)_confirmOwnershipOfFixedGroups
{
  _UIButtonBarSetOwners(self->_fixedTrailingGroups, self);
  delegate = self->_delegate;

  _UIButtonBarSetOwners(delegate, self);
}

- (UIBarButtonItem)trailingVisibleItem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35___UIButtonBar_trailingVisibleItem__block_invoke;
  v4[3] = &unk_1E70F7168;
  v4[4] = &v5;
  [(_UIButtonBar *)self _reverseEnumerateVisibleItems:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_layoutBar
{
  v179 = *MEMORY[0x1E69E9840];
  if ((*&self->_buttonBarFlags & 1) == 0)
  {
    *&self->_buttonBarFlags |= 1u;
    [(_UIButtonBar *)self _updateEffectiveLayout];
    if (BYTE2(self->_barButtonGroups) == 1)
    {
      [(_UIButtonBar *)self _widthInfoForLayout:?];
      v4 = v3;
      groupOrderer = self->_groupOrderer;
      v7 = (*&groupOrderer < v6) & (*&self->_buttonBarFlags >> 5);
      v8 = self->_effectiveLayout;
      obj = v7;
      if (*&groupOrderer >= v4 && v7 == 0)
      {
        goto LABEL_44;
      }

      v173 = 0u;
      v172 = 0u;
      v171 = 0u;
      v170 = 0u;
      v10 = self->_effectiveLayout;
      v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v170 objects:v178 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = *v171;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v171 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v170 + 1) + 8 * i);
            if ([v18 critical])
            {
              v19 = v18;

              v15 = v19;
            }

            else
            {
              if ([v18 fixed])
              {
                if (!v14)
                {
                  v14 = [MEMORY[0x1E695DF70] array];
                }

                v20 = v14;
              }

              else
              {
                if (!v13)
                {
                  v13 = [MEMORY[0x1E695DF70] array];
                }

                v20 = v13;
              }

              [v20 addObject:v18];
            }
          }

          v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v170 objects:v178 count:16];
        }

        while (v12);

        if (*&groupOrderer < v4)
        {
          if (v15)
          {
            v21 = [MEMORY[0x1E695DF70] arrayWithObject:v15];
LABEL_37:

            if (v14)
            {
              [(NSMutableArray *)v21 addObjectsFromArray:v14];
            }

            if (!v13)
            {
              goto LABEL_43;
            }

            [(NSMutableArray *)v21 addObjectsFromArray:v13];
LABEL_42:

LABEL_43:
            v8 = v21;
LABEL_44:
            v28 = *&self->_groupOrderer;
            v166 = 0u;
            v167 = 0u;
            v168 = 0u;
            v169 = 0u;
            v22 = v8;
            v29 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v166 objects:&v174 count:16];
            if (!v29)
            {
              goto LABEL_69;
            }

            v30 = v29;
            v31 = *v167;
            v32 = 1;
            v33 = 0.0;
            v34 = 0.0;
            while (1)
            {
              v35 = 0;
              do
              {
                if (*v167 != v31)
                {
                  objc_enumerationMutation(v22);
                }

                v36 = *(*(&v166 + 1) + 8 * v35);
                if ([v36 fixed])
                {
                  [v36 compactWidth];
                  v33 = v33 + v37;
                }

                [v36 compactWidth];
                v34 = v34 + v38;
                v39 = self->_groupOrderer;
                if (v33 > *&v39)
                {
                  [v36 setCompact:1];
                  v40 = [v36 fixed] ^ 1;
                  v41 = v36;
LABEL_55:
                  [v41 setSpilled:v40];
                  goto LABEL_56;
                }

                if (v34 > *&v39)
                {
                  [v36 setCompact:1];
                  v41 = v36;
                  v40 = 1;
                  goto LABEL_55;
                }

                [v36 compactWidth];
                v28 = v28 - v42;
                [v36 expandedWidth];
                v44 = v43;
                [v36 compactWidth];
                v46 = v44 - v45;
                if (([v36 critical] & obj) == 1 && v46 > 0.0)
                {
                  v47 = 1;
                }

                else
                {
                  v49 = [v36 group];
                  v47 = [v49 _shouldAlwaysCollapse];

                  if (((v46 <= v28 + 0.00000011920929) & v32) != 0 && (v47 & 1) == 0)
                  {
                    [v36 setCompact:0];
                    [v36 setSpilled:0];
                    v28 = v28 - v46;
                    v34 = v34 + v46;
                    goto LABEL_56;
                  }
                }

                [v36 setCompact:1];
                if (v28 >= 0.0)
                {
                  v48 = 0;
                }

                else
                {
                  v48 = [v36 fixed] ^ 1;
                }

                [v36 setSpilled:v48];
                v32 &= (v46 <= v28 + 0.00000011920929) & v47;
LABEL_56:
                ++v35;
              }

              while (v30 != v35);
              v50 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v166 objects:&v174 count:16];
              v30 = v50;
              if (!v50)
              {
LABEL_69:

                goto LABEL_70;
              }
            }
          }

LABEL_36:
          v21 = [MEMORY[0x1E695DF70] array];
          v15 = 0;
          goto LABEL_37;
        }
      }

      else
      {

        v13 = 0;
        v14 = 0;
        v15 = 0;
        if (*&groupOrderer < v4)
        {
          goto LABEL_36;
        }
      }

      v21 = [(NSMutableArray *)self->_effectiveLayout mutableCopy];

      [(NSMutableArray *)v21 removeObject:v15];
      [(NSMutableArray *)v21 insertObject:v15 atIndex:0];
      goto LABEL_42;
    }

    v177 = 0u;
    v176 = 0u;
    v175 = 0u;
    v174 = 0u;
    v22 = self->_effectiveLayout;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v174 objects:v178 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v175;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v175 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v174 + 1) + 8 * j);
          [v27 setCompact:0];
          [v27 setSpilled:0];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v174 objects:v178 count:16];
      }

      while (v24);
    }

LABEL_70:

    v124 = [(NSMutableArray *)self->_layoutActiveConstraints copy];
    v51 = [(NSMutableArray *)self->_layoutViews copy];
    v52 = [(NSMutableArray *)self->_layoutGuides copy];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableArray *)self->_layoutViews removeAllObjects];
    [(NSMutableArray *)self->_layoutGuides removeAllObjects];
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    obja = self->_effectiveLayout;
    v55 = [(NSMutableArray *)obja countByEnumeratingWithState:&v159 objects:v178 count:16];
    v128 = v54;
    v129 = v53;
    v122 = v51;
    v123 = v52;
    if (v55)
    {
      v56 = v55;
      v57 = 0;
      v58 = *v160;
      v126 = *v160;
      do
      {
        for (k = 0; k != v56; ++k)
        {
          if (*v160 != v58)
          {
            objc_enumerationMutation(obja);
          }

          v60 = *(*(&v159 + 1) + 8 * k);
          [v60 addLayoutViews:self->_layoutViews layoutGuides:self->_layoutGuides constraintsToActivate:v53 constraintsToDeactivate:{v54, v122, v123}];
          if (!v57)
          {
            v157 = 0u;
            v158 = 0u;
            v155 = 0u;
            v156 = 0u;
            v61 = self->_layoutViews;
            v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v155 objects:&v174 count:16];
            if (v62)
            {
              v63 = v62;
              v57 = 0;
              v64 = *v156;
              do
              {
                for (m = 0; m != v63; ++m)
                {
                  if (*v156 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v66 = *(*(&v155 + 1) + 8 * m);
                  if ([v60 shouldHorizontallyCenterView:v66])
                  {
                    v67 = v66;

                    v57 = v67;
                  }
                }

                v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v155 objects:&v174 count:16];
              }

              while (v63);
            }

            else
            {
              v57 = 0;
            }

            v54 = v128;
            v53 = v129;
            v58 = v126;
          }
        }

        v56 = [(NSMutableArray *)obja countByEnumeratingWithState:&v159 objects:v178 count:16];
      }

      while (v56);
    }

    else
    {
      v57 = 0;
    }

    *&self->_buttonBarFlags &= 0xF1u;
    v68 = [MEMORY[0x1E695DFD8] setWithArray:v53];
    v69 = [MEMORY[0x1E695DFD8] setWithArray:self->_layoutViews];
    v70 = [MEMORY[0x1E695DFD8] setWithArray:self->_layoutGuides];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v71 = v122;
    v72 = [v71 countByEnumeratingWithState:&v151 objects:&v170 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v152;
      do
      {
        for (n = 0; n != v73; ++n)
        {
          if (*v152 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v151 + 1) + 8 * n);
          if (([v69 containsObject:{v76, v122}] & 1) == 0)
          {
            [(UIStackView *)self->_stackView removeArrangedSubview:v76];
            [v76 removeFromSuperview];
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v151 objects:&v170 count:16];
      }

      while (v73);
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    objb = v123;
    v77 = [objb countByEnumeratingWithState:&v147 objects:&v166 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v148;
      do
      {
        for (ii = 0; ii != v78; ++ii)
        {
          if (*v148 != v79)
          {
            objc_enumerationMutation(objb);
          }

          v81 = *(*(&v147 + 1) + 8 * ii);
          if (([v70 containsObject:{v81, v122}] & 1) == 0)
          {
            [(UIView *)self->_stackView removeLayoutGuide:v81];
          }
        }

        v78 = [objb countByEnumeratingWithState:&v147 objects:&v166 count:16];
      }

      while (v78);
    }

    v127 = v71;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v82 = v124;
    v83 = [v82 countByEnumeratingWithState:&v143 objects:v165 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v144;
      do
      {
        for (jj = 0; jj != v84; ++jj)
        {
          if (*v144 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = *(*(&v143 + 1) + 8 * jj);
          if (([v68 containsObject:{v87, v122}] & 1) == 0)
          {
            [v87 setActive:0];
          }
        }

        v84 = [v82 countByEnumeratingWithState:&v143 objects:v165 count:16];
      }

      while (v84);
    }

    v125 = v82;

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v88 = self->_layoutViews;
    v89 = [(NSMutableArray *)v88 countByEnumeratingWithState:&v139 objects:v164 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = 0;
      v92 = *v140;
      do
      {
        for (kk = 0; kk != v90; ++kk)
        {
          if (*v140 != v92)
          {
            objc_enumerationMutation(v88);
          }

          [(UIStackView *)self->_stackView insertArrangedSubview:*(*(&v139 + 1) + 8 * kk) atIndex:v91++, v122];
        }

        v90 = [(NSMutableArray *)v88 countByEnumeratingWithState:&v139 objects:v164 count:16];
      }

      while (v90);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v94 = self->_layoutGuides;
    v95 = [(NSMutableArray *)v94 countByEnumeratingWithState:&v135 objects:v163 count:16];
    v96 = v127;
    if (v95)
    {
      v97 = v95;
      v98 = *v136;
      do
      {
        for (mm = 0; mm != v97; ++mm)
        {
          if (*v136 != v98)
          {
            objc_enumerationMutation(v94);
          }

          [(UIView *)self->_stackView addLayoutGuide:*(*(&v135 + 1) + 8 * mm), v122];
        }

        v97 = [(NSMutableArray *)v94 countByEnumeratingWithState:&v135 objects:v163 count:16];
      }

      while (v97);
    }

    v100 = v129;
    objc_storeStrong(&self->_layoutActiveConstraints, v129);
    v101 = v128;
    if (self->_centeredView)
    {
      [v128 addObject:self->_centeringConstraint];
    }

    [MEMORY[0x1E69977A0] deactivateConstraints:{v128, v122}];
    if (v57)
    {
      v102 = [v57 centerXAnchor];
      v103 = [(UIView *)self->_stackView centerXAnchor];
      v104 = [v102 constraintEqualToAnchor:v103];

      v101 = v128;
      LODWORD(v105) = 1144569856;
      [(NSLayoutConstraint *)v104 setPriority:v105];
      centeringConstraint = self->_centeringConstraint;
      self->_centeringConstraint = v104;
      v107 = v104;
      v96 = v127;
      v108 = v107;

      v100 = v129;
      [v129 addObject:self->_centeringConstraint];
    }

    [MEMORY[0x1E69977A0] activateConstraints:v100];

    v109 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v130 = self->_effectiveLayout;
    v110 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v170 objects:v178 count:16];
    if (v110)
    {
      v111 = v110;
      objc = *v171;
      do
      {
        for (nn = 0; nn != v111; ++nn)
        {
          if (*v171 != objc)
          {
            objc_enumerationMutation(v130);
          }

          v113 = *(*(&v170 + 1) + 8 * nn);
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v169 = 0u;
          v114 = [v113 subLayouts];
          v115 = [v114 countByEnumeratingWithState:&v166 objects:&v174 count:16];
          if (v115)
          {
            v116 = v115;
            v117 = *v167;
            do
            {
              for (i1 = 0; i1 != v116; ++i1)
              {
                if (*v167 != v117)
                {
                  objc_enumerationMutation(v114);
                }

                v119 = [*(*(&v166 + 1) + 8 * i1) barButtonItem];
                if (v119)
                {
                  v120 = [(NSMapTable *)self->_senderActionMap objectForKey:v119];
                  [(NSMapTable *)v109 setObject:v120 forKey:v119];
                }
              }

              v116 = [v114 countByEnumeratingWithState:&v166 objects:&v174 count:16];
            }

            while (v116);
          }
        }

        v111 = [(NSMutableArray *)v130 countByEnumeratingWithState:&v170 objects:v178 count:16];
      }

      while (v111);
    }

    senderActionMap = self->_senderActionMap;
    self->_senderActionMap = v109;

    [(_UIButtonBar *)self _enablePointerInteractions];
    *&self->_buttonBarFlags &= ~1u;
  }
}

- (void)_updateEffectiveLayout
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [*(a1 + 8) distribution] != 0;
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __38___UIButtonBar__updateEffectiveLayout__block_invoke;
    v25[3] = &unk_1E70F72D0;
    v25[4] = a1;
    v29 = v2;
    v18 = v3;
    v26 = v18;
    v19 = v4;
    v27 = v19;
    v28 = &v30;
    [a1 _enumerateLayoutGroups:v25];
    objc_storeStrong((a1 + 64), v4);
    objc_storeStrong((a1 + 80), v3);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = *(a1 + 64);
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v34 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 group];
          v13 = [v12 _isHiddenForCalculation];

          if ((v13 & 1) == 0)
          {
            [v5 addObject:v11];
            [v11 dirtyLayoutForPlainAppearanceChange:(*(a1 + 120) >> 2) & 1 doneAppearanceChanged:(*(a1 + 120) >> 3) & 1];
            if (v8)
            {
              [v20 addObject:v8];
              [v11 setLeadingSpacerType:{+[_UIButtonBarSpacerLayout typeOfSpacerBetweenLayout:andLayout:](_UIButtonBarSpacerLayout, "typeOfSpacerBetweenLayout:andLayout:", v8, v11)}];
            }

            v14 = v11;

            v8 = v14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v34 count:16];
      }

      while (v7);

      if (v8)
      {
        v15 = v20;
        [v20 addObject:v8];
LABEL_17:
        *(a1 + 120) = *(a1 + 120) & 0xDF | (32 * *(v31 + 24));
        v16 = *(a1 + 72);
        *(a1 + 72) = v15;
        v17 = v15;

        _Block_object_dispose(&v30, 8);
        return;
      }
    }

    else
    {

      v8 = 0;
    }

    v15 = v20;
    goto LABEL_17;
  }
}

- (NSArray)groupRealizedOrder
{
  defaultActionFilter = self->_defaultActionFilter;
  if (defaultActionFilter)
  {
    v4 = [(_UIButtonBarGroupOrderer *)defaultActionFilter orderedGroups];
  }

  else
  {
    v4 = *&self->_minimumInterItemSpace;
  }

  return v4;
}

- (void)_enablePointerInteractions
{
  *&self->_buttonBarFlags &= ~0x10u;
  WeakRetained = objc_loadWeakRetained(&self->_popOverPresentingSourceItem);
  [WeakRetained invalidate];
}

- (_UIButtonBarAppearanceDelegate)_appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_plainItemAppearance);

  return WeakRetained;
}

- (void)_updateHitRects
{
  v51 = objc_opt_new();
  _addInteractiveLayouts(self->_effectiveLayout, v51, [(UIView *)self->_stackView _shouldReverseLayoutDirection]);
  v3 = [v51 count];
  if (v3)
  {
    v4 = v3;
    [(UIView *)self->_stackView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self->_stackView hitTestInsets];
    v14 = v6 + v13;
    v16 = v8 + v15;
    v18 = v10 - (v13 + v17);
    v20 = v12 - (v15 + v19);
    v53.origin.x = v14;
    v53.origin.y = v16;
    v53.size.width = v18;
    v53.size.height = v20;
    MinX = CGRectGetMinX(v53);
    v54.origin.x = v14;
    v54.origin.y = v16;
    v54.size.width = v18;
    v54.size.height = v20;
    MaxX = CGRectGetMaxX(v54);
    v23 = MaxX;
    if (v4 == 1)
    {
      v24 = [v51 firstObject];
      if ([v24 isCustomViewItem])
      {
LABEL_14:

        goto LABEL_15;
      }

      v25 = [v24 view];
      _configureInsets(v25, MinX, v23);
    }

    else
    {
      if (v4 < 2)
      {
        goto LABEL_15;
      }

      v49 = MaxX;
      v26 = [v51 firstObject];
      v27 = _viewRepresentingItem(v26, self->_stackView);
      v25 = 0;
      v24 = 0;
      v28 = 1;
      do
      {
        v50 = MinX;
        v29 = [v51 objectAtIndexedSubscript:v28];

        v30 = _viewRepresentingItem(v29, self->_stackView);

        [v27 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        [v30 frame];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v55.origin.x = v32;
        v55.origin.y = v34;
        v55.size.width = v36;
        v55.size.height = v38;
        v47 = CGRectGetMaxX(v55);
        v56.origin.x = v40;
        v56.origin.y = v42;
        v56.size.width = v44;
        v56.size.height = v46;
        v48 = (v47 + CGRectGetMinX(v56)) * 0.5;
        if (([v26 isCustomViewItem] & 1) == 0)
        {
          _configureInsets(v27, v50, v48);
        }

        v25 = v30;

        v24 = v29;
        ++v28;
        v27 = v25;
        v26 = v24;
        MinX = v48;
      }

      while (v4 != v28);
      if (([v24 isCustomViewItem] & 1) == 0)
      {
        _configureInsets(v25, v48, v49);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (_UIButtonBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_targetLayoutWidth);

  return WeakRetained;
}

- (void)dealloc
{
  _UIButtonBarClearOwners(*&self->_minimumInterItemSpace, self);
  _UIButtonBarClearOwners(self->_fixedTrailingGroups, self);
  _UIButtonBarClearOwners(self->_delegate, self);
  [MEMORY[0x1E69977A0] deactivateConstraints:self->_layoutActiveConstraints];
  v3.receiver = self;
  v3.super_class = _UIButtonBar;
  [(_UIButtonBar *)&v3 dealloc];
}

- (_UIButtonBar)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIButtonBar;
  v5 = [(_UIButtonBar *)&v11 init];
  v6 = v5;
  if (v5)
  {
    _UIButtonBarCommonInit(v5);
    v7 = [v4 decodeObjectForKey:@"UIButtonBarGroups"];
    v8 = [v7 copy];
    minimumInterItemSpace = v6->_minimumInterItemSpace;
    *&v6->_minimumInterItemSpace = v8;

    _UIButtonBarSetOwners(*&v6->_minimumInterItemSpace, v6);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  minimumInterItemSpace = self->_minimumInterItemSpace;
  if (minimumInterItemSpace != 0.0)
  {
    [a3 encodeObject:*&minimumInterItemSpace forKey:@"UIButtonBarGroups"];
  }
}

- (UIView)_viewForOverlayRects
{
  v3 = [(UIStackView *)self->_stackView arrangedSubviews];
  if ([v3 count])
  {
    stackView = self->_stackView;
  }

  else
  {
    stackView = 0;
  }

  v5 = stackView;

  return &stackView->super.super;
}

- (void)setBarButtonGroups:(id)a3
{
  v4 = a3;
  v5 = *&self->_minimumInterItemSpace;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    _UIButtonBarClearOwners(*&self->_minimumInterItemSpace, self);
    v8 = COERCE_DOUBLE([v10 copy]);
    minimumInterItemSpace = self->_minimumInterItemSpace;
    self->_minimumInterItemSpace = v8;

    _UIButtonBarSetOwners(*&self->_minimumInterItemSpace, self);
    [(_UIButtonBarGroupOrderer *)self->_defaultActionFilter invalidate];
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }

LABEL_9:
}

- (void)setMinimumInterItemSpace:(double)a3
{
  if (*&self->_fixedLeadingGroups != a3)
  {
    *&self->_fixedLeadingGroups = a3;
    [(NSLayoutConstraint *)self->_minimumInterItemSpaceConstraint setConstant:?];

    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)setItemsInGroupUseSameSize:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (LOBYTE(self->_barButtonGroups) != a3)
  {
    LOBYTE(self->_barButtonGroups) = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_groupLayouts;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setUseGroupSizing:{LOBYTE(self->_barButtonGroups), v9}];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)setForceFixedSpacing:(BOOL)a3
{
  if (BYTE1(self->_barButtonGroups) != a3)
  {
    BYTE1(self->_barButtonGroups) = a3;
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)setSupportsOverflow:(BOOL)a3
{
  if (BYTE2(self->_barButtonGroups) != a3)
  {
    BYTE2(self->_barButtonGroups) = a3;
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)setItemDistribution:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(UIStackView *)self->_stackView distribution]!= a3)
  {
    [(UIStackView *)self->_stackView setDistribution:a3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_groupLayouts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setSuppressSpacing:{a3 != 0, v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (UIEdgeInsets)hitTestInsets
{
  [(UIView *)self->_stackView hitTestInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setHitTestInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(UIView *)self->_stackView hitTestInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    [(UIView *)self->_stackView setHitTestInsets:top, left, bottom, right];

    [(_UIButtonBar *)self setNeedsHitTestUpdate];
  }
}

- (NSDirectionalEdgeInsets)hitTestDirectionalInsets
{
  [(UIView *)self->_stackView hitTestDirectionalInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setHitTestDirectionalInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  [(UIView *)self->_stackView hitTestDirectionalInsets];
  if (v11 != leading || v8 != top || v10 != trailing || v9 != bottom)
  {
    [(UIView *)self->_stackView setHitTestDirectionalInsets:top, leading, bottom, trailing];

    [(_UIButtonBar *)self setNeedsHitTestUpdate];
  }
}

- (void)setFixedLeadingGroups:(id)a3
{
  v4 = a3;
  v5 = self->_fixedTrailingGroups;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    _UIButtonBarClearOwners(self->_fixedTrailingGroups, self);
    v8 = [(NSArray *)v10 copy];
    fixedTrailingGroups = self->_fixedTrailingGroups;
    self->_fixedTrailingGroups = v8;

    _UIButtonBarSetOwners(self->_fixedTrailingGroups, self);
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }

LABEL_9:
}

- (void)setFixedTrailingGroups:(id)a3
{
  v4 = a3;
  v5 = self->_delegate;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(_UIButtonBarDelegate *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    _UIButtonBarClearOwners(self->_delegate, self);
    v8 = [(_UIButtonBarDelegate *)v10 copy];
    delegate = self->_delegate;
    self->_delegate = v8;

    _UIButtonBarSetOwners(self->_delegate, self);
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }

LABEL_9:
}

- ($1AB5FA073B851C12C2339EC22442E995)widthInfo
{
  [(_UIButtonBar *)self _updateEffectiveLayout];
  effectiveLayout = self->_effectiveLayout;

  v4 = [(_UIButtonBar *)self _widthInfoForLayout:?];
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (double)_widthInfoForLayout:(uint64_t)a1
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = 0.0;
  if (a1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v7 = 0.0;
    v8 = 0.0;
    if (v6)
    {
      v9 = v6;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          [v12 recalculateLayoutWidthsGivenItemSpaceWidth:*(a1 + 144)];
          [v12 compactWidth];
          v14 = v13;
          v15 = [v12 group];
          v16 = [v15 _disabledExpansion];

          if (v16)
          {
            [v12 compactWidth];
          }

          else
          {
            [v12 expandedWidth];
          }

          v18 = v17;
          if ([v12 fixed])
          {
            [v12 compactWidth];
            v8 = v8 + v19;
          }

          v7 = v7 + v14;
          v5 = v5 + v18;
        }

        v9 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)setTargetLayoutWidth:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (*&self->_groupOrderer != a3)
  {
    *&self->_groupOrderer = a3;
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)setGroupOrderer:(id)a3
{
  v5 = a3;
  p_defaultActionFilter = &self->_defaultActionFilter;
  defaultActionFilter = self->_defaultActionFilter;
  if (defaultActionFilter != v5)
  {
    v8 = v5;
    if (defaultActionFilter)
    {
      objc_storeWeak(defaultActionFilter + 6, 0);
    }

    objc_storeStrong(&self->_defaultActionFilter, a3);
    if (*p_defaultActionFilter)
    {
      objc_storeWeak(*p_defaultActionFilter + 6, self);
    }

    [(_UIButtonBar *)self _setNeedsVisualUpdate];
    v5 = v8;
  }
}

- (BOOL)hasVisibleContent
{
  v19 = *MEMORY[0x1E69E9840];
  [(_UIButtonBar *)self groupRealizedOrder];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v10 = 0;
        v11 = &v10;
        v12 = 0x2020000000;
        v13 = 0;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __33___UIButtonBar_hasVisibleContent__block_invoke;
        v9[3] = &unk_1E70F7168;
        v9[4] = &v10;
        [v6 enumerateVisibleItems:v9];
        v7 = *(v11 + 24);
        _Block_object_dispose(&v10, 8);
        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasAlwaysOverflowGroups
{
  if (BYTE3(self->_barButtonGroups) == 1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __39___UIButtonBar_hasAlwaysOverflowGroups__block_invoke;
    v4[3] = &unk_1E70F7190;
    v4[4] = &v5;
    [(_UIButtonBar *)self _enumerateAllGroups:v4];
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (NSArray)elementsForOverflowMenu
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = self->_effectiveLayout;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if (([v9 spilled] & 1) == 0)
        {
          v10 = [v9 group];
          v11 = [v10 _showInOverflow];

          if (!v11)
          {
            continue;
          }
        }

        v12 = [v9 group];
        [v3 addObject:v12];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39___UIButtonBar_elementsForOverflowMenu__block_invoke;
  v26[3] = &unk_1E70F71B8;
  v13 = v3;
  v27 = v13;
  [(_UIButtonBar *)self _enumerateAllGroups:v26];
  v14 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v22 + 1) + 8 * j) _effectiveMenuRepresentation];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v17);
  }

  return v14;
}

- (NSArray)elementsRepresentingOrderedGroups
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(_UIButtonBar *)self groupRealizedOrder];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) _effectiveMenuRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)itemAtPoint:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35___UIButtonBar_itemAtPoint_inView___block_invoke;
  v11[3] = &unk_1E70F71E0;
  v8 = v7;
  v14 = x;
  v15 = y;
  v12 = v8;
  v13 = &v16;
  [(_UIButtonBar *)self _forwardEnumerateVisibleItems:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)_forwardEnumerateVisibleItems:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v5 = a1[19];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46___UIButtonBar__forwardEnumerateVisibleItems___block_invoke;
    v15[3] = &unk_1E70F7208;
    v17 = &v18;
    v6 = v3;
    v16 = v6;
    [v5 enumerateObjectsUsingBlock:v15];
    if ((v19[3] & 1) == 0)
    {
      v7 = a1[17];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46___UIButtonBar__forwardEnumerateVisibleItems___block_invoke_2;
      v12[3] = &unk_1E70F7208;
      v14 = &v18;
      v8 = v6;
      v13 = v8;
      [v7 enumerateObjectsUsingBlock:v12];

      if ((v19[3] & 1) == 0)
      {
        v9 = a1[20];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __46___UIButtonBar__forwardEnumerateVisibleItems___block_invoke_3;
        v10[3] = &unk_1E70F7230;
        v11 = v8;
        [v9 enumerateObjectsUsingBlock:v10];
      }
    }

    _Block_object_dispose(&v18, 8);
  }
}

- (void)_reverseEnumerateVisibleItems:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v5 = a1[20];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46___UIButtonBar__reverseEnumerateVisibleItems___block_invoke;
    v15[3] = &unk_1E70F7208;
    v17 = &v18;
    v6 = v3;
    v16 = v6;
    [v5 enumerateObjectsWithOptions:2 usingBlock:v15];
    if ((v19[3] & 1) == 0)
    {
      v7 = a1[17];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46___UIButtonBar__reverseEnumerateVisibleItems___block_invoke_2;
      v12[3] = &unk_1E70F7208;
      v14 = &v18;
      v8 = v6;
      v13 = v8;
      [v7 enumerateObjectsWithOptions:2 usingBlock:v12];

      if ((v19[3] & 1) == 0)
      {
        v9 = a1[19];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __46___UIButtonBar__reverseEnumerateVisibleItems___block_invoke_3;
        v10[3] = &unk_1E70F7230;
        v11 = v8;
        [v9 enumerateObjectsWithOptions:2 usingBlock:v10];
      }
    }

    _Block_object_dispose(&v18, 8);
  }
}

- (unint64_t)_numberOfGroups
{
  v3 = [(NSArray *)self->_fixedTrailingGroups count];
  v4 = [*&self->_minimumInterItemSpace count] + v3;
  return v4 + [(_UIButtonBarDelegate *)self->_delegate count];
}

- (BOOL)needsLeadingSpacer
{
  if (BYTE1(self->_barButtonGroups))
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__14;
    v10 = __Block_byref_object_dispose__14;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34___UIButtonBar_needsLeadingSpacer__block_invoke;
    v5[3] = &unk_1E70F7168;
    v5[4] = &v6;
    [(_UIButtonBar *)self _forwardEnumerateVisibleItems:v5];
    v3 = v7[5];
    if (v3)
    {
      v2 = [v3 isSpaceItem] ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    _Block_object_dispose(&v6, 8);
  }

  return v2;
}

- (BOOL)needsTrailingSpacer
{
  if ((*&self->_buttonBarFlags & 0x20) != 0 && [(_UIButtonBar *)self _numberOfGroups]== 1)
  {
    LOBYTE(v3) = 0;
  }

  else if (BYTE1(self->_barButtonGroups))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__14;
    v11 = __Block_byref_object_dispose__14;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35___UIButtonBar_needsTrailingSpacer__block_invoke;
    v6[3] = &unk_1E70F7168;
    v6[4] = &v7;
    [(_UIButtonBar *)self _reverseEnumerateVisibleItems:v6];
    v4 = v8[5];
    if (v4)
    {
      v3 = [v4 isSpaceItem] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (UIBarButtonItem)leadingVisibleItem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34___UIButtonBar_leadingVisibleItem__block_invoke;
  v4[3] = &unk_1E70F7168;
  v4[4] = &v5;
  [(_UIButtonBar *)self _forwardEnumerateVisibleItems:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (UIBarButtonItem)trailingClippingItem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36___UIButtonBar_trailingClippingItem__block_invoke;
  v4[3] = &unk_1E70F7258;
  v4[4] = &v7;
  v4[5] = v5;
  [(_UIButtonBar *)self _reverseEnumerateVisibleItems:v4];
  v2 = v8[5];
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(&v7, 8);

  return v2;
}

- (void)setViewUpdater:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIButtonBar.m" lineNumber:624 description:@"viewUpdater is nil"];
  }

  if (self[1].super.isa != v5)
  {
    v6 = [(objc_class *)v5 copy];
    isa = self[1].super.isa;
    self[1].super.isa = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_groupLayouts;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) setDirty:{1, v14}];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (id)_targetActionForBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_senderActionMap objectForKey:v4];
  if (!v5)
  {
    v5 = [[_UIButtonBarTargetAction alloc] initWithBarButtonItem:v4];
    [(_UIButtonBarTargetAction *)v5 setActionFilter:self->__appearanceDelegate];
    [(NSMapTable *)self->_senderActionMap setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_enumerateLayoutGroups:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_fixedTrailingGroups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v28 + 1) + 8 * v9++), 1);
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v10 = [(_UIButtonBar *)self groupRealizedOrder];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v4[2](v4, *(*(&v24 + 1) + 8 * v14++), 0);
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_delegate;
  v16 = [(_UIButtonBarDelegate *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v4[2](v4, *(*(&v20 + 1) + 8 * v19++), 1);
      }

      while (v17 != v19);
      v17 = [(_UIButtonBarDelegate *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)_enumerateAllGroups:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_fixedTrailingGroups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v31 + 1) + 8 * v9++), 1);
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  defaultActionFilter = self->_defaultActionFilter;
  if (defaultActionFilter)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __36___UIButtonBar__enumerateAllGroups___block_invoke;
    v29[3] = &unk_1E70F7280;
    v30 = v4;
    [(_UIButtonBarGroupOrderer *)defaultActionFilter enumerateSourceGroups:v29];
    v11 = v30;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = *&self->_minimumInterItemSpace;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v4[2](v4, *(*(&v25 + 1) + 8 * v15++), 0);
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v13);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_delegate;
  v17 = [(_UIButtonBarDelegate *)v16 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v4[2](v4, *(*(&v21 + 1) + 8 * v20++), 1);
      }

      while (v18 != v20);
      v18 = [(_UIButtonBarDelegate *)v16 countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v18);
  }
}

- (void)_buttonBarStackViewDidLayoutSubviews:(id)a3
{
  v4 = [a3 layer];
  v5 = [v4 needsLayout];

  if ((v5 & 1) == 0)
  {
    v6 = [(_UIButtonBar *)self delegate];
    [v6 buttonBarDidLayout:self];
  }
}

- (id)_updatedViewForBarButtonItem:(id)a3 withView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isCustomViewItem])
  {
    v8 = [v6 customView];
  }

  else
  {
    isa = self[1].super.isa;
    if (isa)
    {
      v8 = (*(isa + 2))(isa, self, v6, v7);
    }

    else
    {
      v8 = v7;
    }
  }

  v10 = v8;

  return v10;
}

- (void)_validateAllItems
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *&self->_minimumInterItemSpace;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _validateAllItems];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_appearanceChanged
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_groupLayouts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setDirty:{1, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(_UIButtonBar *)self _setNeedsVisualUpdate];
}

- (void)setPlainItemAppearance:(id)a3
{
  v5 = a3;
  v6 = self->_doneItemAppearance;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(_UIBarAppearanceData *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_doneItemAppearance, a3);
    *&self->_buttonBarFlags |= 4u;
    [(_UIButtonBar *)self _setNeedsAppearanceUpdate];
  }

LABEL_9:
}

- (void)setDoneItemAppearance:(id)a3
{
  v5 = a3;
  v6 = self->_assistant;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(_UIPointerInteractionAssistant *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_assistant, a3);
    *&self->_buttonBarFlags |= 8u;
    [(_UIButtonBar *)self _setNeedsAppearanceUpdate];
  }

LABEL_9:
}

- (void)_setNeedsAppearanceUpdate
{
  if ((*&self->_buttonBarFlags & 2) == 0)
  {
    *&self->_buttonBarFlags |= 2u;
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)_itemCustomViewDidChange:(id)a3 fromView:(id)a4
{
  v5 = a3;
  v6 = [v5 buttonGroup];
  v8 = [(_UIButtonBar *)self _layoutForGroup:v6];

  v7 = [v8 layoutForBarButtonItem:v5];

  [v7 setDirty:1];
  [(_UIButtonBar *)self _setNeedsVisualUpdate];
}

- (void)_itemStandardViewNeedsUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 buttonGroup];
  v7 = [(_UIButtonBar *)self _layoutForGroup:v5];

  v6 = [v7 layoutForBarButtonItem:v4];

  [v6 setDirty:1];
  [(_UIButtonBar *)self _setNeedsVisualUpdate];
}

- (void)_itemDidChangeWidth:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 buttonGroup];
  v6 = [(_UIButtonBar *)self _layoutForGroup:v5];

  v7 = [v6 layoutsForSpacerItem:v4];
  v8 = v7;
  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) setDirty:1];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }

  else
  {
    v13 = [v6 layoutForBarButtonItem:v4];
    [v13 setDirty:1];
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)_itemDidChangeSelectionState:(id)a3
{
  v4 = a3;
  v3 = _UIButtonBarButtonFromItem(v4);
  if (v3)
  {
    [v3 setSelected:{objc_msgSend(v4, "isSelected")}];
  }
}

- (void)_itemDidChangeHiddenState:(id)a3
{
  v4 = [a3 buttonGroup];
  v5 = [(_UIButtonBar *)self _layoutForGroup:v4];
  [v5 setDirty:1];

  [(_UIButtonBar *)self _setNeedsVisualUpdate];
}

- (BOOL)_itemDidUpdateMenu:(id)a3 fromMenu:(id)a4
{
  v5 = a4;
  v6 = _UIButtonBarButtonFromItem(a3);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 updatePresentedMenuFrom:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_contextMenuInteractionForItem:(id)a3
{
  v3 = _UIButtonBarButtonFromItem(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 contextMenuInteraction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_item:(id)a3 addSymbolEffect:(id)a4 options:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  v11 = _UIButtonBarButtonFromItem(a3);
  v12 = v11;
  if (v11)
  {
    [v11 addSymbolEffect:v9 options:v10 animated:v6];
  }

  return v12 == 0;
}

- (BOOL)_item:(id)a3 removeSymbolEffectOfType:(id)a4 options:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  v11 = _UIButtonBarButtonFromItem(a3);
  v12 = v11;
  if (v11)
  {
    [v11 removeSymbolEffectOfType:v9 options:v10 animated:v6];
  }

  return v12 == 0;
}

- (BOOL)_item:(id)a3 removeAllSymbolEffectsWithOptions:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = _UIButtonBarButtonFromItem(a3);
  v9 = v8;
  if (v8)
  {
    [v8 removeAllSymbolEffectsWithOptions:v7 animated:v5];
  }

  return v9 == 0;
}

- (void)_item:(id)a3 applyContentTransition:(id)a4 options:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = _UIButtonBarButtonFromItem(a3);
  v9 = v8;
  if (v8)
  {
    [v8 applyContentTransition:v10 options:v7];
  }
}

- (id)_overflowFallbackItem
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_effectiveLayout;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 spilled] & 1) == 0)
        {
          v9 = [v8 group];
          v10 = [v9 _showInOverflow];

          if ((v10 & 1) == 0)
          {
            continue;
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_viewUpdater);
        goto LABEL_13;
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      WeakRetained = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    WeakRetained = 0;
  }

LABEL_13:

  return WeakRetained;
}

- (void)_groupDidUpdateItems:(id)a3 removedItems:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _UIButtonBarClearOwnedItems(v7, self);
  v8 = [v6 _items];
  _UIButtonBarSetItemOwners(v8, self);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSMapTable *)self->_senderActionMap removeObjectForKey:*(*(&v15 + 1) + 8 * v13++), v15];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = [(_UIButtonBar *)self _layoutForGroup:v6];
  [v14 setDirty:1];

  [(_UIButtonBar *)self _setNeedsVisualUpdate];
}

- (void)_groupDidUpdateRepresentative:(id)a3 fromRepresentative:(id)a4
{
  v6 = a3;
  [a4 _relinquishOwnership:self];
  v7 = [v6 representativeItem];
  [v7 _setViewOwner:self];

  v8 = [(_UIButtonBar *)self _layoutForGroup:v6];

  [v8 setDirty:1];

  [(_UIButtonBar *)self _setNeedsVisualUpdate];
}

- (id)_groupOrdererGroups:(id)a3
{
  if (self->_defaultActionFilter == a3)
  {
    return *&self->_minimumInterItemSpace;
  }

  else
  {
    return 0;
  }
}

- (void)_groupOrdererDidUpdate:(id)a3
{
  if (self->_defaultActionFilter == a3)
  {
    [(_UIButtonBar *)self _setNeedsVisualUpdate];
  }
}

- (void)_invalidateAssistant:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_popOverPresentingSourceItem);
  [WeakRetained invalidate];
}

- (CGRect)_preferredRegionRectForButton:(id)a3
{
  [a3 _buttonBarHitRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ((*&self->_buttonBarFlags & 0x10) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = 0;
    goto LABEL_14;
  }

  [v7 request:v8 locationInView:self->_stackView];
  v9 = [(UIView *)self->_stackView hitTest:0 withEvent:?];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  if (v9 == self->_stackView)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(UIView *)v10 isEnabled])
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)v10 bounds];
      v16 = [v7 createRegionFromRect:v10 targetView:@"com.apple.UIKit.UIButtonBar.UIButton" identifier:-[_UIButtonBarStackView isSelected](v10 selected:{"isSelected"), v17, v18, v19, v20}];
      goto LABEL_13;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  v11 = v10;
  [(_UIButtonBar *)self _preferredRegionRectForButton:v11];
  v16 = [v7 createRegionFromRect:v11 targetView:@"com.apple.UIKit.UIButtonBar._UIButtonBarButton" identifier:-[_UIButtonBarStackView isSelected](v11 selected:{"isSelected"), v12, v13, v14, v15}];

LABEL_13:
LABEL_14:

  return v16;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [v6 targetView];
  if (!v7)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 createStyleForButton:v7 shapeProvider:0];
      goto LABEL_8;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = [v7 pointerInteraction:v5 styleForRegion:v6];
LABEL_8:
  v9 = v8;
LABEL_10:

LABEL_11:

  return v9;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v9 = a5;
  v6 = [a4 targetView];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 visualProvider];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = [v6 _visualProvider];
    }

    v8 = v7;
    [v7 pointerWillEnter:v9];
  }

LABEL_7:
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v9 = a5;
  v6 = [a4 targetView];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 visualProvider];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = [v6 _visualProvider];
    }

    v8 = v7;
    [v7 pointerWillExit:v9];
  }

LABEL_7:
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = _UIButtonBar;
  v4 = [(_UIButtonBar *)&v15 description];
  v5 = [v3 stringWithFormat:@"%@ %@\n", v4, self->_stackView];

  if ((*&self->_buttonBarFlags & 2) != 0)
  {
    v6 = @" needsAppearanceUpdate";
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  [v5 appendFormat:@"metrics=%p layout=%p groupLayouts=%p views=%p guides=%p activeConstraints=%p minimumInterItemSpace=%.3f minimumInterItemSpaceAnchor=%p flexibleSpaceEqualSizeAnchor=%p %@\n", self->_layoutMetrics, self->_effectiveLayout, self->_groupLayoutMap, self->_layoutViews, self->_layoutGuides, self->_layoutActiveConstraints, self->_fixedLeadingGroups, self->_minimumInterItemSpaceConstraint, self->_flexibleSpaceEqualSizeAnchor, v6];
  doneItemAppearance = self->_doneItemAppearance;
  if (doneItemAppearance)
  {
    if ((*&self->_buttonBarFlags & 4) != 0)
    {
      v8 = @"needsUpdate ";
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    [v5 appendFormat:@"%@plainItemAppearance=%@\n", v8, doneItemAppearance];
  }

  assistant = self->_assistant;
  if (assistant)
  {
    if ((*&self->_buttonBarFlags & 8) != 0)
    {
      v10 = @"needsUpdate ";
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    [v5 appendFormat:@"%@doneItemAppearance=%@\n", v10, assistant];
  }

  if ([(NSArray *)self->_fixedTrailingGroups count])
  {
    v11 = [(NSArray *)self->_fixedTrailingGroups componentsJoinedByString:@"\n"];
    [v5 appendFormat:@"fixedLeadingGroups={\n%@\n} ", v11];
  }

  if ([*&self->_minimumInterItemSpace count])
  {
    v12 = [*&self->_minimumInterItemSpace componentsJoinedByString:@"\n"];
    [v5 appendFormat:@"barButtonGroups={\n%@\n} ", v12];
  }

  if ([(_UIButtonBarDelegate *)self->_delegate count])
  {
    v13 = [(_UIButtonBarDelegate *)self->_delegate componentsJoinedByString:@"\n"];
    [v5 appendFormat:@"fixedTrailingGroups={\n%@\n} ", v13];
  }

  return v5;
}

- (_UIPointerInteractionAssistant)assistant
{
  WeakRetained = objc_loadWeakRetained(&self->_popOverPresentingSourceItem);

  return WeakRetained;
}

- (UIBarButtonItem)popOverPresentingSourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_viewUpdater);

  return WeakRetained;
}

@end