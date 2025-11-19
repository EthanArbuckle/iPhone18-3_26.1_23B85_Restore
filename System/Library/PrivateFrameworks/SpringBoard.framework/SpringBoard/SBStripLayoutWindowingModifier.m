@interface SBStripLayoutWindowingModifier
- (BOOL)_appLayout:(id)a3 isContainedInStrip:(id)a4;
- (BOOL)_isGroupForAppLayoutHighlightedFromHover:(id)a3;
- (BOOL)_isGroupForAppLayoutHighlightedFromTouch:(id)a3;
- (BOOL)_isStripStashed;
- (CGPoint)_positionForPositionIn3DContainerSpace:(CGPoint)a3 layerPosition:(CGPoint)a4 layerSize:(CGSize)a5 layerAnchorPoint:(CGPoint)a6 layerTransform:(CATransform3D *)a7 containerPerspective:(double)a8;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBStripLayoutWindowingModifier)init;
- (SBSwitcherWallpaperGradientAttributes)_wallpaperGradientAttributesForAppLayout:(id)a3 viewModel:(id)a4 row:(int64_t)a5 pileIndex:(int64_t)a6;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (double)_highlightScaleForAppLayout:(id)a3 pileIndex:(int64_t)a4;
- (double)_stripOriginX;
- (double)_wallpaperDimmingForAppLayout:(id)a3 row:(int64_t)a4 pileIndex:(int64_t)a5;
- (id)_flexibleAutoLayoutSpaceForStripAppLayout:(id)a3;
- (id)_stripItems;
- (id)_visibleStripItems;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)topMostItems;
- (id)visibleItems;
- (void)_applyAnimationAttributes:(id)a3 forAppLayout:(id)a4;
- (void)didUpdate;
- (void)highlightDidChange:(id)a3;
- (void)layoutViewModelsIfNeeded;
- (void)transitionDidUpdate:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBStripLayoutWindowingModifier

- (SBStripLayoutWindowingModifier)init
{
  v8.receiver = self;
  v8.super_class = SBStripLayoutWindowingModifier;
  v2 = [(SBWindowingModifier *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    highlightedByTouchAppLayouts = v2->_highlightedByTouchAppLayouts;
    v2->_highlightedByTouchAppLayouts = v3;

    v5 = objc_opt_new();
    highlightedByHoverAppLayouts = v2->_highlightedByHoverAppLayouts;
    v2->_highlightedByHoverAppLayouts = v5;
  }

  return v2;
}

- (id)visibleItems
{
  v7.receiver = self;
  v7.super_class = SBStripLayoutWindowingModifier;
  v3 = [(SBWindowingModifier *)&v7 visibleItems];
  v4 = [(SBStripLayoutWindowingModifier *)self _visibleStripItems];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)topMostItems
{
  v3 = [(SBStripLayoutWindowingModifier *)self strip];
  v4 = [v3 appLayoutsInStrip];
  v5 = [v4 bs_flatten];

  v9.receiver = self;
  v9.super_class = SBStripLayoutWindowingModifier;
  v6 = [(SBWindowingModifier *)&v9 topMostItems];
  v7 = [v6 arrayByAddingObjectsFromArray:v5];

  return v7;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v19.receiver = self;
  v19.super_class = SBStripLayoutWindowingModifier;
  v4 = [(SBStripLayoutWindowingModifier *)&v19 adjustedAppLayoutsForAppLayouts:a3];
  v5 = [(SBStripLayoutWindowingModifier *)self displayItemInSlideOver];
  if (v5 && (-[SBStripLayoutWindowingModifier appLayouts](self, "appLayouts"), v6 = objc_claimAutoreleasedReturnValue(), [v6 firstObject], v7 = objc_claimAutoreleasedReturnValue(), -[SBStripLayoutWindowingModifier layoutAttributesForDisplayItem:inAppLayout:](self, "layoutAttributesForDisplayItem:inAppLayout:", v5, v7), v8 = objc_claimAutoreleasedReturnValue(), -[SBDisplayItemLayoutAttributes slideOverConfiguration](v8, v18), v9 = v18[33], v8, v7, v6, v9 == 1))
  {
    v10 = [(SBStripLayoutWindowingModifier *)self strip];
    v11 = [v10 appLayoutsInStrip];
    v12 = [v11 bs_flatten];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SBStripLayoutWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v16[3] = &unk_2783AE218;
    v17 = v12;
    v13 = v12;
    v14 = [v4 bs_compactMap:v16];
  }

  else
  {
    v14 = v4;
  }

  return v14;
}

id __66__SBStripLayoutWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SBStripLayoutWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
  v12[3] = &unk_2783A8CB8;
  v5 = v3;
  v13 = v5;
  v6 = [v4 bs_firstObjectPassingTest:v12];
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__SBStripLayoutWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_3;
    v10[3] = &unk_2783A8C90;
    v11 = v6;
    v8 = [v5 appLayoutWithItemsPassingTest:v10];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v6 = a4;
  retstr->bounds.origin = 0u;
  retstr->bounds.size = 0u;
  retstr->position = 0u;
  retstr->anchorPoint = 0u;
  retstr->scale = 0u;
  retstr->translation = 0u;
  v23.receiver = self;
  v23.super_class = SBStripLayoutWindowingModifier;
  [(SBWindowingItemFrame *)&v23 frameForItem:v6];
  v7 = [v6 appLayout];
  if (v7)
  {
    v8 = [(SBWindowingModifier *)self appLayoutOnStage];
    if ([v7 isEqual:v8])
    {
LABEL_7:

      goto LABEL_8;
    }

    v9 = [(SBStripLayoutWindowingModifier *)self _stripItems];
    v10 = [v9 containsObject:v6];

    if ((v10 & 1) == 0)
    {
      v8 = [(SBWindowingModifier *)self windowingConfiguration];
      [(SBStripLayoutWindowingModifier *)self bounds];
      v12 = v11;
      v14 = v13;
      [v8 stripOffscreenPadding];
      v16 = v15;
      [v8 stripWidth];
      v18 = v17;
      v19 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      v20 = v12 - v18 - v16;
      if (v19 == 1)
      {
        v20 = v16 + v14 + v18;
      }

      retstr->position.x = v20;
      [v8 stripCardScale];
      retstr->scale.x = v21;
      retstr->scale.y = v21;
      goto LABEL_7;
    }
  }

LABEL_8:

  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
  if (v12 && (-[SBStripLayoutWindowingModifier _stripItems](self, "_stripItems"), v13 = objc_claimAutoreleasedReturnValue(), [v11 leafAppLayoutForItem:v12], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "containsObject:", v14), v14, v13, v15))
  {
    v16 = [(SBStripLayoutWindowingModifier *)self _flexibleAutoLayoutSpaceForStripAppLayout:v11];
    v17 = [v11 itemForLayoutRole:a3];
    v18 = [v16 flexibleAutoLayoutItemForDisplayItem:v17];
    [v18 position];
    [v18 size];
    SBRectWithSize();
    UIRectCenteredAboutPoint();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v16 boundingBox];
    v28 = v20 - v27;
    [v16 boundingBox];
    v30 = x + v28;
    v31 = y + v22 - v29;
  }

  else
  {
    v40.receiver = self;
    v40.super_class = SBStripLayoutWindowingModifier;
    [(SBStripLayoutWindowingModifier *)&v40 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v30 = v32;
    v31 = v33;
    v24 = v34;
    v26 = v35;
  }

  v36 = v30;
  v37 = v31;
  v38 = v24;
  v39 = v26;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (void)layoutViewModelsIfNeeded
{
  v138[1] = *MEMORY[0x277D85DE8];
  v136.receiver = self;
  v136.super_class = SBStripLayoutWindowingModifier;
  [(SBWindowingModifier *)&v136 layoutViewModelsIfNeeded];
  v108 = [(SBStripLayoutWindowingModifier *)self strip];
  v109 = [v108 appLayoutsInStrip];
  if ([v109 count])
  {
    v3 = [(SBStripLayoutWindowingModifier *)self appLayout];
    v4 = [(SBWindowingModifier *)self windowingConfiguration];
    [v4 stripWidth];
    v6 = v5;
    [v4 stripStackDistance];
    v8 = v7;
    [v4 stripCardScale];
    v110 = v9;
    [v4 stripInterItemSpacing];
    v106 = v10;
    [(SBStripLayoutWindowingModifier *)self bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(SBStripLayoutWindowingModifier *)self _stripOriginX];
    v117 = v19;
    v20 = [(SBStripLayoutWindowingModifier *)self switcherSettings];
    v21 = [v20 windowingSettings];
    v118 = [v21 numberOfVisibleItemsPerGroup];

    v22 = v18;
    if (([(SBStripLayoutWindowingModifier *)self prefersDockHidden]& 1) == 0)
    {
      [(SBStripLayoutWindowingModifier *)self floatingDockHeight];
      v22 = v18 - v23;
    }

    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = __58__SBStripLayoutWindowingModifier_layoutViewModelsIfNeeded__block_invoke;
    v135[3] = &__block_descriptor_88_e8_d16__0q8l;
    v135[4] = v12;
    v135[5] = v14;
    v135[6] = v16;
    *&v135[7] = v18;
    v135[8] = v6;
    v135[9] = v8;
    v135[10] = v118;
    v24 = MEMORY[0x223D6F7F0](v135);
    v114 = [v109 count];
    if (v114 < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v105 = (v22 + 0.0) * 0.5;
      v107 = v24;
      v27 = 1.0;
      v28 = 0.0;
      v120 = v3;
      do
      {
        v116 = v26;
        v29 = [v109 objectAtIndex:{v26, *&v105}];
        v30 = [v29 count];
        v31 = [v29 firstObject];
        v115 = [(SBStripLayoutWindowingModifier *)self _flexibleAutoLayoutSpaceForStripAppLayout:v31];
        v112 = v31;
        if (v30 == 1 && ([v31 allItems], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count"), v32, v33 == 1))
        {
          v34 = [v31 allItems];
          v35 = [v34 firstObject];
          v36 = [v115 flexibleAutoLayoutItemForDisplayItem:v35];
          [v36 size];
          v38 = v37;
          v40 = v39;
        }

        else
        {
          v34 = [(SBStripLayoutWindowingModifier *)self _flexibleAutoLayoutSpaceForStripAppLayout:v31];
          [v34 boundingBox];
          v38 = v41;
          v40 = v42;
        }

        v43 = v107[2](v107, v30);
        v44 = v110;
        if (v38 > v43)
        {
          v44 = v110 * (v43 / v38);
        }

        v113 = v28;
        v111 = v40 * v44;
        if (v30 >= 1)
        {
          v45 = 0;
          v119 = v28 + v40 * v44 * 0.5;
          do
          {
            v46 = [v29 objectAtIndex:v45];
            v47 = v40;
            if (v45)
            {
              v48 = [(SBStripLayoutWindowingModifier *)self _flexibleAutoLayoutSpaceForStripAppLayout:v46];
              [v48 boundingBox];
              v47 = v49;
            }

            v50 = 0.0;
            v51 = v44;
            if (v30 != 1)
            {
              [v4 stripCardScale];
              v53 = v52;
              [v4 stripStackDistance];
              v55 = v54;
              v56 = [v29 indexOfObject:v46];
              if (v56 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v57 = 0;
              }

              else
              {
                v57 = v56;
              }

              v50 = v53 / v44 * (v55 / v38) * v57 + -(v30 + -1.0) * (v53 / v44 * (v55 / v38));
              v58 = [v29 indexOfObject:v46];
              if (v58 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v59 = 0;
              }

              else
              {
                v59 = v58;
              }

              v51 = v59 * -0.01 + v44 * (v40 / v47);
            }

            [(SBStripLayoutWindowingModifier *)self _highlightScaleForAppLayout:v46 pileIndex:v45];
            v61 = v60;
            v62 = [(SBWindowingModifier *)self viewModelForItem:v46];
            v63 = [v62 mutableCopy];

            if (!v25)
            {
              v25 = objc_opt_new();
            }

            v137 = v46;
            v138[0] = v63;
            v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:&v137 count:1];
            [v25 addEntriesFromDictionary:v64];

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            if (v63)
            {
              [v63 frame];
            }

            SBRectWithSize();
            *&v129 = v65;
            *(&v129 + 1) = v66;
            *&v130 = v67;
            *(&v130 + 1) = v68;
            *&v131 = v117;
            *(&v131 + 1) = v119;
            *&v133 = v51 * v61;
            *(&v133 + 1) = v51 * v61;
            v69 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
            v70 = v27 - v50;
            if (v69 != 1)
            {
              v70 = v50;
            }

            *&v132 = v70;
            *(&v132 + 1) = 0x3FE0000000000000;
            v125 = v131;
            v126 = v132;
            v127 = v133;
            v128 = v134;
            v123 = v129;
            v124 = v130;
            [v63 setFrame:&v123];
            [v4 stripCornerRadii];
            SBRectCornerRadiiForRadius();
            SBWindowingItemCornersMake(15, &v123, v71, v72, v73, v74);
            [v63 setCorners:&v123];
            if (v3 && (-[SBWindowingModifier flexibleAutoLayoutSpaceForAppLayout:](self, "flexibleAutoLayoutSpaceForAppLayout:", v3), v75 = objc_claimAutoreleasedReturnValue(), v76 = [v75 isStripVisible], v75, !v76))
            {
              v79 = 0.0;
            }

            else
            {
              v77 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
              [v4 stripTiltAngle];
              v79 = -v78;
              if (v77 != 1)
              {
                v79 = v78;
              }

              LOBYTE(v76) = 1;
            }

            [v63 setPerspectiveAngle:{0.0, v79}];
            if (v45 >= v118)
            {
              v80 = 0.0;
            }

            else
            {
              v80 = v27;
            }

            [v63 setOpacity:v80];
            SBWindowingItemShadowMake();
            [v63 setShadow:{v81, v82}];
            if (!v120 || (v76 & 1) != 0 || ([(SBStripLayoutWindowingModifier *)self continuousExposeStripProgress], BSFloatIsZero()))
            {
              [(SBStripLayoutWindowingModifier *)self _wallpaperGradientAttributesForAppLayout:v46 viewModel:v63 row:v116 pileIndex:v45];
              [v63 setWallpaperGradientAttributes:?];
            }

            if (v63)
            {
              [v63 titleStyle];
            }

            *&v122[8] = vdupq_n_s64(1uLL);
            if (v45)
            {
              v83 = 0.0;
            }

            else
            {
              v83 = v27;
            }

            *v122 = v83;
            v123 = *&v83;
            v124 = *v122;
            *&v125 = *&v122[16];
            [v63 setTitleStyle:&v123];
            [v63 setDimmingAlpha:0.0];
            [v63 setSupportsHomeAffordance:0];
            [(SBStripLayoutWindowingModifier *)self _applyAnimationAttributes:v63 forAppLayout:v46];
            v84 = [v63 spaceAccessoryViewModel];
            v85 = [v84 mutableCopy];

            if (!v85)
            {
              v85 = [[SBMutableWindowingItemViewModel alloc] initWithItem:v46];
              [v63 setSpaceAccessoryViewModel:v85];
            }

            SBRectWithSize();
            v87 = v86;
            v89 = v88;
            v91 = v90;
            v93 = v92;
            v121 = v131;
            if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
            {
              v94 = 1.0;
            }

            else
            {
              v94 = 0.0;
            }

            v128 = *MEMORY[0x277CBF348];
            *&v123 = v87;
            *(&v123 + 1) = v89;
            *&v124 = v91;
            *(&v124 + 1) = v93;
            v125 = v121;
            *&v126 = v94;
            *(&v126 + 1) = 0x3FE0000000000000;
            *&v127 = v44;
            *(&v127 + 1) = v44;
            [(SBWindowingItemViewModel *)v85 setFrame:&v123];

            ++v45;
            v3 = v120;
            v27 = 1.0;
          }

          while (v30 != v45);
        }

        v26 = v116 + 1;
        v28 = v106 + v113 + v111;

        if (v116 + 1 >= v114)
        {
          v28 = v113 + v111;
        }
      }

      while (v26 != v114);
      for (i = 0; i != v114; ++i)
      {
        v96 = [v108 appLayoutsInStrip];
        v97 = [v96 objectAtIndex:i];

        v98 = [v97 count];
        if (v98 >= 1)
        {
          v99 = v98;
          for (j = 0; j != v99; ++j)
          {
            v101 = [v97 objectAtIndex:j];
            v102 = [v25 objectForKey:v101];
            v103 = v102;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            if (v102)
            {
              [v102 frame];
              v104 = *(&v131 + 1);
            }

            else
            {
              v104 = 0.0;
            }

            *(&v131 + 1) = v105 + v28 * -0.5 + v104;
            v125 = v131;
            v126 = v132;
            v127 = v133;
            v128 = v134;
            v123 = v129;
            v124 = v130;
            [v103 setFrame:&v123];
            [(SBWindowingModifier *)self setViewModel:v103 forItem:v101];
          }
        }
      }

      v3 = v120;
      v24 = v107;
    }
  }

  else
  {
    v25 = 0;
  }
}

- (void)didUpdate
{
  stripOriginX = self->_stripOriginX;
  [(SBStripLayoutWindowingModifier *)self _stripOriginX];
  self->_stripOriginX = v4;
  if (stripOriginX != v4 && !self->_isTrackingInteractiveStripGesture)
  {
    v5 = [(SBWindowingModifier *)self transitioningToAppLayout];
    if (!v5)
    {
      v6 = [(SBWindowingModifier *)self transitioningFromAppLayout];

      if (v6)
      {
        return;
      }

      v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:1];
      [(SBWindowingModifier *)self appendResponse:v7];
      v5 = v7;
    }
  }
}

- (void)transitionWillBegin:(id)a3
{
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)transitionDidUpdate:(id)a3
{
  [(SBStripLayoutWindowingModifier *)self continuousExposeStripProgress];
  if (v4 > 0.0)
  {
    v5 = [(SBStripLayoutWindowingModifier *)self appLayout];
    v6 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v5];
    v7 = [v6 isStripVisible];

    if ((v7 & 1) == 0)
    {
      v8 = [(SBStripLayoutWindowingModifier *)self strip];
      v9 = [v8 appLayoutsInStrip];
      v10 = [v9 count];

      if (!v10)
      {
        v11 = [[SBUpdateContinuousExposeStripsPresentationResponse alloc] initWithPresentationOptions:0 dismissalOptions:1];
        [(SBWindowingModifier *)self appendResponse:v11];
      }
    }
  }
}

- (void)highlightDidChange:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 appLayout];
  if (([v4 isHandled] & 1) == 0 && v5 && (objc_msgSend(v4, "isPencilHoverEvent") & 1) == 0)
  {
    v6 = [v4 phase] - 1;
    v7 = [(SBStripLayoutWindowingModifier *)self appLayout];
    v8 = [v5 isEqual:v7];

    v9 = [v4 isHoverEvent];
    if ((v8 & 1) == 0 && v6 > 1)
    {
      if (v9)
      {
        v10 = 200;
      }

      else
      {
        v10 = 192;
      }

      [*(&self->super.super.super.super.isa + v10) addObject:v5];
      goto LABEL_37;
    }

    if (v6 < 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v11 == 1)
    {
      v12 = 200;
      if (![(NSMutableSet *)self->_highlightedByHoverAppLayouts containsObject:v5])
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = [(NSMutableSet *)self->_highlightedByHoverAppLayouts copy];
        v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v30;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v29 + 1) + 8 * i);
              if ([v18 containsAnyItemFromAppLayout:v5])
              {
                [(NSMutableSet *)self->_highlightedByHoverAppLayouts removeObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
          }

          while (v15);
        }

LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v12 = 192;
      if (![(NSMutableSet *)self->_highlightedByTouchAppLayouts containsObject:v5])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = [(NSMutableSet *)self->_highlightedByTouchAppLayouts copy];
        v19 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v26;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v13);
              }

              v23 = *(*(&v25 + 1) + 8 * j);
              if ([v23 containsAnyItemFromAppLayout:v5])
              {
                [(NSMutableSet *)self->_highlightedByTouchAppLayouts removeObject:v23];
              }
            }

            v20 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v20);
        }

        goto LABEL_36;
      }
    }

    [*(&self->super.super.super.super.isa + v12) removeObject:v5];
LABEL_37:
    v24 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    [(SBWindowingModifier *)self appendResponse:v24];
    [v4 handleWithReason:@"Strip"];
  }
}

- (void)_applyAnimationAttributes:(id)a3 forAppLayout:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([(NSArray *)self->_appLayoutsPerformingInitialLayout containsObject:v6])
  {
    v7 = 2;
  }

  else
  {
    v8 = [(SBStripLayoutWindowingModifier *)self strip];
    v9 = [(SBStripLayoutWindowingModifier *)self _appLayout:v6 isContainedInStrip:v8];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = 3;
  }

  v10 = [v12 animationAttributes];
  v11 = [v10 mutableCopy];

  [v11 setUpdateMode:v7];
  [v11 setLayoutUpdateMode:v7];
  [v11 setPositionUpdateMode:v7];
  [v11 setScaleUpdateMode:v7];
  [v12 setAnimationAttributes:v11];

LABEL_6:
}

- (SBSwitcherWallpaperGradientAttributes)_wallpaperGradientAttributesForAppLayout:(id)a3 viewModel:(id)a4 row:(int64_t)a5 pileIndex:(int64_t)a6
{
  v10 = a4;
  [(SBStripLayoutWindowingModifier *)self _wallpaperDimmingForAppLayout:a3 row:a5 pileIndex:a6];
  v12 = v11;
  v13 = 0.0;
  v14 = 0.0;
  if ((BSFloatLessThanOrEqualToFloat() & 1) == 0)
  {
    [v10 perspectiveAngle];
    v16 = v15;
    v17 = 0.0;
    v13 = v12;
    v14 = v12;
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [(SBStripLayoutWindowingModifier *)self bounds];
      v46 = v19;
      v47 = v18;
      v52 = v21;
      v53 = v20;
      v22 = [(SBWindowingModifier *)self windowingConfiguration];
      [v22 stripScreenEdgePadding];
      v54 = v23;
      [v22 stripWidth];
      v51 = v24;
      [v22 containerPerspective];
      v50 = v25;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
      if (v10)
      {
        [v10 frame];
        v27 = *(&v63 + 1);
        v31 = *&v64;
        v29 = *(&v61 + 1);
        v30 = *&v61;
        v17 = *(&v62 + 1);
        v28 = *&v63;
        v26 = *&v62;
      }

      v49 = v27;
      memset(&v59, 0, sizeof(v59));
      CATransform3DMakeScale(&v59, v31, v31, 1.0);
      memset(&v58, 0, sizeof(v58));
      CATransform3DMakeRotation(&v58, v16, 0.0, 1.0, 0.0);
      memset(&v57, 0, sizeof(v57));
      a = v59;
      b = v58;
      CATransform3DConcat(&v57, &a, &b);
      a = v57;
      [(SBStripLayoutWindowingModifier *)self _positionForPositionIn3DContainerSpace:&a layerPosition:v30 * -0.5 layerSize:0.0 layerAnchorPoint:v26 layerTransform:v17 containerPerspective:v30, v29, v28, v49, v50];
      v48 = v32;
      a = v57;
      [(SBStripLayoutWindowingModifier *)self _positionForPositionIn3DContainerSpace:&a layerPosition:v30 * 0.5 layerSize:0.0 layerAnchorPoint:v26 layerTransform:v17 containerPerspective:v30, v29, v28, v49, v50];
      v34 = v33;
      [v22 minimumDefaultWindowSize];
      IsZero = BSFloatIsZero();
      v36 = 0.25;
      if ((IsZero & 1) == 0)
      {
        v37 = [(SBStripLayoutWindowingModifier *)self prefersStripHidden];
        v36 = 0.6;
        if (v37)
        {
          v36 = 0.25;
        }
      }

      v38 = v12 + v36;
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v67.origin.x = v47;
        v67.origin.y = v46;
        v67.size.height = v52;
        v67.size.width = v53;
        MaxX = CGRectGetMaxX(v67);
        v68.size.width = v53;
        v68.size.height = v52;
        v40 = (v38 - v12) * (MaxX - v48 - v54) / (v51 - v54);
        v68.origin.x = v47;
        v68.origin.y = v46;
        v41 = (v38 - v12) * (CGRectGetMaxX(v68) - v34 - v54) / (v51 - v54);
      }

      else
      {
        v40 = (v48 - v54) * (v38 - v12) / (v51 - v54);
        v41 = (v34 - v54) * (v38 - v12) / (v51 - v54);
      }

      v42 = v12 + v40;
      v43 = v12 + v41;
      if (v12 + v40 >= v38)
      {
        v42 = v38;
      }

      if (v42 >= v12)
      {
        v14 = v42;
      }

      else
      {
        v14 = v12;
      }

      if (v43 >= v38)
      {
        v43 = v38;
      }

      if (v43 >= v12)
      {
        v13 = v43;
      }

      else
      {
        v13 = v12;
      }
    }
  }

  SBSwitcherWallpaperGradientAttributesMakeEmpty();

  v44 = v13;
  v45 = v14;
  result.trailingAlpha = v45;
  result.leadingAlpha = v44;
  return result;
}

- (BOOL)_appLayout:(id)a3 isContainedInStrip:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [a4 appLayoutsInStrip];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v5 isEqual:*(*(&v19 + 1) + 8 * j)])
              {

                v17 = 1;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (double)_wallpaperDimmingForAppLayout:(id)a3 row:(int64_t)a4 pileIndex:(int64_t)a5
{
  v6 = [(SBStripLayoutWindowingModifier *)self _isGroupForAppLayoutHighlightedFromHover:a3, a4];
  result = a5 * 0.25 + 0.1;
  v8 = result + 0.1;
  if (!a5)
  {
    v8 = 0.0;
  }

  if (v6)
  {
    return v8;
  }

  return result;
}

- (CGPoint)_positionForPositionIn3DContainerSpace:(CGPoint)a3 layerPosition:(CGPoint)a4 layerSize:(CGSize)a5 layerAnchorPoint:(CGPoint)a6 layerTransform:(CATransform3D *)a7 containerPerspective:(double)a8
{
  [(SBStripLayoutWindowingModifier *)self bounds];
  v9 = v8;
  v16 = v10;
  CAPointApplyTransform();
  CAPointApplyTransform();
  v14 = v9 * 0.5 + v11 / v12;
  v15 = v16 * 0.5 + v13 / v12;
  result.y = v15;
  result.x = v14;
  return result;
}

- (double)_highlightScaleForAppLayout:(id)a3 pileIndex:(int64_t)a4
{
  result = 1.0;
  if (!a4)
  {
    v6 = a3;
    v7 = [(SBStripLayoutWindowingModifier *)self _isGroupForAppLayoutHighlightedFromHover:v6];
    v8 = [(SBStripLayoutWindowingModifier *)self _isGroupForAppLayoutHighlightedFromTouch:v6];

    if (v7 && v8)
    {
      return 0.98;
    }

    else
    {
      result = 1.1;
      if (!v7)
      {
        result = 1.0;
      }

      if (v8)
      {
        return 0.9;
      }
    }
  }

  return result;
}

- (BOOL)_isGroupForAppLayoutHighlightedFromTouch:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBStripLayoutWindowingModifier *)self appLayout];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SBStripLayoutWindowingModifier *)self _stripIdentifierForAppLayout:v4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_highlightedByTouchAppLayouts;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(SBStripLayoutWindowingModifier *)self _stripIdentifierForAppLayout:*(*(&v17 + 1) + 8 * i), v17];
          v15 = [v14 isEqualToString:v8];

          if (v15)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  return v7;
}

- (BOOL)_isGroupForAppLayoutHighlightedFromHover:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBStripLayoutWindowingModifier *)self appLayout];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SBStripLayoutWindowingModifier *)self _stripIdentifierForAppLayout:v4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_highlightedByHoverAppLayouts;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(SBStripLayoutWindowingModifier *)self _stripIdentifierForAppLayout:*(*(&v17 + 1) + 8 * i), v17];
          v15 = [v14 isEqualToString:v8];

          if (v15)
          {
            v7 = 1;
            goto LABEL_13;
          }
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_13:
  }

  return v7;
}

- (double)_stripOriginX
{
  [(SBStripLayoutWindowingModifier *)self continuousExposeStripProgress];
  v4 = v3;
  v5 = [(SBWindowingModifier *)self windowingConfiguration];
  [v5 stripWidth];
  v7 = v6;
  [v5 stripScreenEdgePadding];
  v9 = v8;
  [v5 stripOffscreenPadding];
  v11 = v4 * (v9 + v7 + v10);
  [v5 stripOffscreenPadding];
  v13 = v11 - (v7 + v12);
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    [(SBStripLayoutWindowingModifier *)self bounds];
    v13 = v14 - v13;
  }

  return v13;
}

- (BOOL)_isStripStashed
{
  v3 = [(SBWindowingModifier *)self transitioningToAppLayout];
  if (v3)
  {
    v4 = v3;
    v5 = [(SBWindowingModifier *)self transitioningFromAppLayout];
    if (v5)
    {
    }

    else
    {
      v6 = [(SBStripLayoutWindowingModifier *)self environmentMode];

      if (v6 == 1)
      {
        goto LABEL_9;
      }
    }
  }

  v7 = [(SBWindowingModifier *)self transitioningFromAppLayout];
  if (v7)
  {
    v8 = v7;
    v9 = [(SBWindowingModifier *)self transitioningToAppLayout];
    if (v9)
    {

      goto LABEL_10;
    }

    v10 = [(SBStripLayoutWindowingModifier *)self environmentMode];

    if (v10 != 1)
    {
      goto LABEL_10;
    }

LABEL_9:
    LOBYTE(v11) = 1;
    return v11;
  }

LABEL_10:
  v12 = [(SBStripLayoutWindowingModifier *)self appLayout];
  if (v12)
  {
    v13 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v12];
    v11 = [v13 isStripVisible] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_stripItems
{
  v2 = [(SBStripLayoutWindowingModifier *)self strip];
  v3 = [v2 appLayoutsInStrip];
  v4 = [v3 bs_flatten];
  v5 = [v4 bs_set];

  return v5;
}

- (id)_visibleStripItems
{
  v3 = [(SBStripLayoutWindowingModifier *)self switcherSettings];
  v4 = [v3 windowingSettings];
  v5 = [v4 numberOfVisibleItemsPerGroup];

  v6 = [(SBStripLayoutWindowingModifier *)self _stripItems];
  v7 = [v6 mutableCopy];

  v8 = [(SBStripLayoutWindowingModifier *)self strip];
  v9 = [v8 appLayoutsInStrip];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SBStripLayoutWindowingModifier__visibleStripItems__block_invoke;
  v12[3] = &unk_2783B6120;
  v14 = v5;
  v10 = v7;
  v13 = v10;
  [v9 enumerateObjectsUsingBlock:v12];

  return v10;
}

void __52__SBStripLayoutWindowingModifier__visibleStripItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  while (v4 < [v3 count])
  {
    v5 = *(a1 + 32);
    v6 = [v7 objectAtIndex:v4];
    [v5 removeObject:v6];

    ++v4;
    v3 = v7;
  }
}

- (id)_flexibleAutoLayoutSpaceForStripAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBStripLayoutWindowingModifier *)self displayItemLayoutAttributesCalculator];
  v6 = [(SBStripLayoutWindowingModifier *)self switcherInterfaceOrientation];
  [(SBStripLayoutWindowingModifier *)self floatingDockHeight];
  v35 = v7;
  [(SBStripLayoutWindowingModifier *)self screenScale];
  v34 = v8;
  [(SBStripLayoutWindowingModifier *)self containerViewBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(SBStripLayoutWindowingModifier *)self isDisplayEmbedded];
  v18 = [(SBStripLayoutWindowingModifier *)self prefersStripHidden];
  v19 = [(SBStripLayoutWindowingModifier *)self prefersDockHidden];
  [(SBStripLayoutWindowingModifier *)self leftStatusBarPartIntersectionRegion];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(SBStripLayoutWindowingModifier *)self rightStatusBarPartIntersectionRegion];
  v32 = [v5 flexibleWindowingAutoLayoutSpaceForAppLayout:v4 containerOrientation:v6 floatingDockHeight:v17 screenScale:v18 bounds:v19 isEmbeddedDisplay:v35 prefersStripHidden:v34 prefersDockHidden:v10 leftStatusBarPartIntersectionRegion:v12 rightStatusBarPartIntersectionRegion:{v14, v16, v21, v23, v25, v27, v28, v29, v30, v31}];

  return v32;
}

@end