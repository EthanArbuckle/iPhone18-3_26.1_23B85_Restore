@interface SXComponentController
- (CGRect)renderBounds;
- (SXComponentController)initWithViewport:(id)a3 DOMObjectProvider:(id)a4;
- (SXComponentHosting)host;
- (id)componentViewForIdentifier:(id)a3;
- (id)componentViewForPoint:(CGPoint)a3;
- (id)componentViewForPoint:(CGPoint)a3 inComponents:(id)a4;
- (id)componentViewsForRole:(int)a3;
- (id)componentViewsForRole:(int)a3 forLayoutBlueprint:(id)a4;
- (id)componentsInRect:(CGRect)a3;
- (id)presentComponentBlueprint:(id)a3 inHost:(id)a4 columnLayout:(id)a5;
- (void)addObserver:(id)a3;
- (void)assistiveTechnologyStatusDidChange;
- (void)fadeComponent:(id)a3 completion:(id)a4;
- (void)integrateBlueprint:(id)a3 withCompletion:(id)a4;
- (void)presentBlueprint:(id)a3 forParentComponentView:(id)a4 inHost:(id)a5;
- (void)presentComponentsInBlueprint:(id)a3;
- (void)provideInfosLayoutTo:(id)a3;
- (void)removeComponentsInLayoutBlueprint:(id)a3 removedFromLayoutBlueprint:(id)a4;
- (void)removeObserver:(id)a3;
- (void)renderContentsIfNeededForComponents:(id)a3;
- (void)updatePresentationStateForNestedComponentView:(id)a3 presentationState:(int64_t)a4;
- (void)updatePresentationStateForNestedComponentViews:(id)a3 presentationState:(int64_t)a4;
- (void)updateVisibilityStatesForComponentViews:(id)a3 parentComponent:(id)a4 withOffset:(CGPoint)a5;
- (void)updateVisibilityStatesForComponentViews:(id)a3 toState:(int64_t)a4;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
- (void)viewport:(id)a3 boundsDidChangeFromBounds:(CGRect)a4;
- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4;
@end

@implementation SXComponentController

- (SXComponentController)initWithViewport:(id)a3 DOMObjectProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = SXComponentController;
  v9 = [(SXComponentController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, a3);
    objc_storeStrong(&v10->_DOMObjectProvider, a4);
    v11 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    mappedComponentViews = v10->_mappedComponentViews;
    v10->_mappedComponentViews = v13;

    v15 = [MEMORY[0x1E695DF70] array];
    sortedComponentViews = v10->_sortedComponentViews;
    v10->_sortedComponentViews = v15;

    v17 = [MEMORY[0x1E695DF70] array];
    nestedComponentViews = v10->_nestedComponentViews;
    v10->_nestedComponentViews = v17;

    [(SXViewport *)v10->_viewport addViewportChangeListener:v10 forOptions:14];
  }

  return v10;
}

- (void)integrateBlueprint:(id)a3 withCompletion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(SXComponentController *)self setIsPresenting:1];
  v9 = [(SXComponentController *)self nestedComponentViews];
  v10 = [v9 copy];

  [(SXComponentController *)self removeComponentsInLayoutBlueprint:self->_presentedBlueprint removedFromLayoutBlueprint:v7];
  v11 = [(SXComponentController *)self host];
  [(SXComponentController *)self presentBlueprint:v7 forParentComponentView:0 inHost:v11];

  objc_storeStrong(&self->_presentedBlueprint, a3);
  [(SXComponentController *)self presentComponentsInBlueprint:v7];
  self->_isPresented = 1;
  v12 = [(SXComponentController *)self viewport];
  v13 = [v12 appearState];

  if (v13)
  {
    v14 = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:v14];
  }

  v15 = [(SXComponentController *)self presentationAttributes];
  v16 = [v15 fadeInComponents];

  v17 = [(SXComponentController *)self nestedComponentViews];
  v18 = v17;
  if (v16)
  {
    v33 = v8;
    v19 = [v17 mutableCopy];

    [v19 removeObjectsInArray:v10];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v39 + 1) + 8 * i);
          if ([v25 visibilityState] == 1)
          {
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __59__SXComponentController_integrateBlueprint_withCompletion___block_invoke;
            v38[3] = &unk_1E84FEC78;
            v38[4] = self;
            v38[5] = v25;
            [(SXComponentController *)self fadeComponent:v25 completion:v38];
          }

          else
          {
            [(SXComponentController *)self updatePresentationStateForNestedComponentView:v25 presentationState:2];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v22);
    }

    v8 = v33;
  }

  else
  {
    [(SXComponentController *)self updatePresentationStateForNestedComponentViews:v17 presentationState:2];
  }

  v26 = [(SXComponentController *)self flattenedComponentViews];
  [(SXComponentController *)self renderContentsIfNeededForComponents:v26];

  [(SXComponentController *)self setIsPresenting:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = [(SXComponentController *)self observers];
  v28 = [v27 copy];

  v29 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v35;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v34 + 1) + 8 * j) componentControllerDidPresent:self];
      }

      v30 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v30);
  }

  v8[2](v8);
}

- (void)presentBlueprint:(id)a3 forParentComponentView:(id)a4 inHost:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  v9 = a5;
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [v8 componentIdentifiers];
  v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v8 componentBlueprintForComponentIdentifier:*(*(&v25 + 1) + 8 * i)];
        v15 = [v8 layoutOptions];
        v16 = [v15 columnLayout];
        v17 = [(SXComponentController *)self presentComponentBlueprint:v14 inHost:v9 columnLayout:v16];

        if ([v14 hasValidLayout])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            v19 = [v14 layoutBlueprint];
            [(SXComponentController *)self presentBlueprint:v19 forParentComponentView:v18 inHost:v18];
          }
        }

        if (v17)
        {
          [v24 addObject:v17];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  if (v22)
  {
    v20 = v24;
    [v22 setComponentViews:v24];
  }

  else
  {
    v21 = self;
    v20 = v24;
    [(SXComponentController *)v21 setNestedComponentViews:v24];
  }
}

- (void)fadeComponent:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E6979318];
  v6 = a4;
  v7 = a3;
  v11 = [v5 animationWithKeyPath:@"opacity"];
  [v11 setFromValue:&unk_1F538A4A8];
  v8 = MEMORY[0x1E696AD98];
  [v7 alpha];
  v9 = [v8 numberWithDouble:?];
  [v11 setToValue:v9];

  [v11 setDuration:0.3];
  [MEMORY[0x1E6979518] setCompletionBlock:v6];

  v10 = [v7 layer];

  [v10 addAnimation:v11 forKey:@"opacity"];
}

- (id)presentComponentBlueprint:(id)a3 inHost:(id)a4 columnLayout:(id)a5
{
  v126 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SXComponentController *)self mappedComponentViews];
  v12 = [v8 component];
  v13 = [v12 identifier];
  v14 = [v11 objectForKey:v13];

  if ([v8 hasValidLayout] && (objc_msgSend(v8, "isHidden") & 1) == 0)
  {
    if (!v14)
    {
      v15 = [(SXComponentController *)self componentViewEngine];
      v16 = [v8 component];
      v14 = [v15 componentViewForComponent:v16];

      if (v14)
      {
        [v14 setComponentHost:v9];
        v17 = [v8 parentLayoutBlueprint];
        v18 = [v17 componentIdentifiers];
        v19 = [v8 component];
        v20 = [v19 identifier];
        [v14 setComponentIndex:{objc_msgSend(v18, "indexOfObject:", v20)}];

        v21 = [(SXComponentController *)self mappedComponentViews];
        v22 = [v8 component];
        v23 = [v22 identifier];
        [v21 setObject:v14 forKey:v23];

        v24 = [(SXComponentController *)self sortedComponentViews];
        [v24 addObject:v14];
      }

      [v14 configure];
    }

    v25 = [v14 component];
    if (!v25 || (v26 = v25, [v14 component], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "component"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqual:", v28), v28, v27, v26, (v29 & 1) == 0))
    {
      v30 = [v8 component];
      [v14 loadComponent:v30];
    }

    [v8 absoluteFrame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [(SXComponentController *)self viewport];
    [v39 contentFrame];
    MinY = CGRectGetMinY(v128);
    v129.origin.x = v32;
    v129.origin.y = v34;
    v129.size.width = v36;
    v129.size.height = v38;
    v130 = CGRectOffset(v129, 0.0, MinY);
    x = v130.origin.x;
    y = v130.origin.y;
    width = v130.size.width;
    height = v130.size.height;

    [v8 componentViewFrame];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = [v8 parentLayoutBlueprint];
    v54 = [v8 rootLayoutBlueprint];

    if (v53 == v54)
    {
      [v8 componentViewFrame];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v63 = [(SXComponentController *)self viewport];
      [v63 contentFrame];
      v64 = CGRectGetMinY(v131);
      v132.origin.x = v56;
      v132.origin.y = v58;
      v132.size.width = v60;
      v132.size.height = v62;
      v133 = CGRectOffset(v132, 0.0, v64);
      v118 = v133.origin.y;
      v119 = v133.origin.x;
      v116 = v133.size.height;
      v117 = v133.size.width;
    }

    else
    {
      v116 = v52;
      v117 = v50;
      v118 = v48;
      v119 = v46;
    }

    v120 = v9;
    [v14 absoluteFrame];
    v67 = y == v66 && x == v65;
    [v8 contentFrame];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [v14 contentFrame];
    v135.origin.x = v76;
    v135.origin.y = v77;
    v135.size.width = v78;
    v135.size.height = v79;
    v134.origin.x = v69;
    v134.origin.y = v71;
    v134.size.width = v73;
    v134.size.height = v75;
    v80 = !CGRectEqualToRect(v134, v135);
    v81 = [v8 componentState];
    v82 = [v81 identifier];
    v83 = [v14 state];
    v84 = [v83 identifier];
    v85 = [v82 isEqualToString:v84];

    v86 = [v8 componentState];
    [v14 setState:v86];

    [v14 setAbsoluteFrame:{x, y, width, height}];
    [v8 layoutMargins];
    [v14 setComponentLayoutMargins:?];
    [v8 contentViewFrame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v14 contentView];
    [v95 setFrame:{v88, v90, v92, v94}];

    [v8 contentFrame];
    [v14 setContentFrame:?];
    [v8 backgroundViewFrame];
    [v14 setBackgroundViewFrame:?];
    [v8 backgroundViewFrame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v104 = [v14 backgroundView];
    [v104 setFrame:{v97, v99, v101, v103}];

    [v8 borderInsets];
    [v14 setBorderInsets:?];
    if ([v14 requiresThoroughFrameCalculations])
    {
      [v14 setFrameUsingCenterAndBounds:{v119, v118, v117, v116}];
    }

    else
    {
      [v14 setFrame:{v119, v118, v117, v116}];
    }

    [v14 setDocumentColumnLayout:v10];
    v105 = 0x10000;
    if (v85)
    {
      v105 = 0;
    }

    v106 = 256;
    if (v67)
    {
      v106 = 0;
    }

    [v14 setPresentationChanges:v106 | v80 | v105];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v107 = [v8 infoFromLayouting];
    v108 = [v107 countByEnumeratingWithState:&v121 objects:v125 count:16];
    if (v108)
    {
      v109 = v108;
      v110 = *v122;
      do
      {
        for (i = 0; i != v109; ++i)
        {
          if (*v122 != v110)
          {
            objc_enumerationMutation(v107);
          }

          v112 = *(*(&v121 + 1) + 8 * i);
          v113 = [v8 infoFromLayouting];
          v114 = [v113 objectForKeyedSubscript:v112];

          [v14 receivedInfo:v114 fromLayoutingPhaseWithIdentifier:v112];
        }

        v109 = [v107 countByEnumeratingWithState:&v121 objects:v125 count:16];
      }

      while (v109);
    }

    v9 = v120;
  }

  return v14;
}

- (void)presentComponentsInBlueprint:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = a3;
  obj = [v19 componentIdentifiers];
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v19 componentBlueprintForComponentIdentifier:*(*(&v20 + 1) + 8 * v8)];
        v10 = [(SXComponentController *)self mappedComponentViews];
        v11 = [v9 component];
        v12 = [v11 identifier];
        v13 = [v10 objectForKey:v12];

        [v13 setPresentationState:1];
        v4 = v4 & 0xFFFFFFFFFF000000 | [v13 presentationChanges] & 0xFFFFFF;
        [v13 willPresentComponentWithChanges:v4];
        if (([v13 allowHierarchyRemoval] & 1) == 0)
        {
          v14 = [v13 superview];

          if (!v14)
          {
            v15 = [v13 componentHost];
            [v15 addComponentView:v13];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v9 layoutBlueprint];
          [(SXComponentController *)self presentComponentsInBlueprint:v16];
        }

        v3 = v3 & 0xFFFFFFFFFF000000 | [v13 presentationChanges] & 0xFFFFFF;
        [v13 presentComponentWithChanges:v3];
        [v13 setPresentationChanges:0];

        ++v8;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)removeComponentsInLayoutBlueprint:(id)a3 removedFromLayoutBlueprint:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v9 = [v6 componentIdentifiers];
    [v8 addObjectsFromArray:v9];

    v10 = [v7 componentIdentifiers];
    [v8 addObjectsFromArray:v10];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v8;
    v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v28)
    {
      v27 = *v30;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v6 componentBlueprintForComponentIdentifier:v12];
          v14 = [v7 componentBlueprintForComponentIdentifier:v12];
          v15 = v14;
          if (!v14 || [v14 isHidden])
          {
            [(SXComponentController *)self mappedComponentViews];
            v16 = v7;
            v18 = v17 = v6;
            v19 = [v18 objectForKey:v12];

            [v19 discardContents];
            [v19 setPresentationState:0];
            [v19 setVisibilityState:2];
            v20 = [v19 componentHost];
            [v20 removeComponentView:v19];

            v21 = [(SXComponentController *)self mappedComponentViews];
            [v21 removeObjectForKey:v12];

            v6 = v17;
            v7 = v16;
            v22 = [(SXComponentController *)self sortedComponentViews];
            [v22 removeObject:v19];

            v23 = [(SXComponentController *)self nestedComponentViews];
            [v23 removeObject:v19];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v13 layoutBlueprint];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v15 layoutBlueprint];
            }

            else
            {
              v25 = 0;
            }

            [(SXComponentController *)self removeComponentsInLayoutBlueprint:v24 removedFromLayoutBlueprint:v25];
          }
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v28);
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentController *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentController *)self observers];
  [v5 removeObject:v4];
}

- (id)componentsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(SXComponentController *)self presentedBlueprint];
  v8 = [v7 componentsInRect:{x, y, width, height}];

  return v8;
}

- (id)componentViewForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SXComponentController *)self componentViews];
  v7 = [(SXComponentController *)self componentViewForPoint:v6 inComponents:x, y];

  return v7;
}

- (id)componentViewForPoint:(CGPoint)a3 inComponents:(id)a4
{
  y = a3.y;
  x = a3.x;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 visibilityState] == 1)
        {
          [v13 absoluteFrame];
          v27.x = x;
          v27.y = y;
          if (CGRectContainsPoint(v28, v27))
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v15 = v13;
            v16 = v15;
            if (isKindOfClass)
            {
              v17 = [v15 componentViews];
              v18 = [(SXComponentController *)self componentViewForPoint:v17 inComponents:x, y];

              if (v18)
              {
                v10 = v16;
                v16 = v18;
              }

              else
              {
                v10 = v16;
                v16 = v10;
              }
            }

            v10 = v16;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)componentViewsForRole:(int)a3
{
  v3 = *&a3;
  v5 = [(SXComponentController *)self presentedBlueprint];
  v6 = [(SXComponentController *)self componentViewsForRole:v3 forLayoutBlueprint:v5];

  return v6;
}

- (id)componentViewsForRole:(int)a3 forLayoutBlueprint:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(SXComponentController *)self flattenedComponentViews];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 classification];
        v14 = [objc_opt_class() role];

        if (v14 == a3)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)componentViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXComponentController *)self mappedComponentViews];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)provideInfosLayoutTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SXComponentController *)self flattenedComponentViews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) provideInfosLayoutTo:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 appearState];
  if (a4 && !v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(SXComponentController *)self flattenedComponentViews];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 visibilityState] != 1)
          {
            [v13 discardContents];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [(SXComponentController *)self flattenedComponentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:v14 toState:2];
    goto LABEL_15;
  }

  if ([v6 appearState])
  {
    v14 = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self renderContentsIfNeededForComponents:v14];
LABEL_15:
  }

  if (!a4 && [v6 appearState])
  {
    v15 = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:v15];
  }
}

- (void)viewport:(id)a3 boundsDidChangeFromBounds:(CGRect)a4
{
  v5 = [(SXComponentController *)self flattenedComponentViews:a3];
  [(SXComponentController *)self renderContentsIfNeededForComponents:v5];
}

- (CGRect)renderBounds
{
  v3 = [(SXComponentController *)self viewport];
  if ([v3 appearState] == 2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [(SXComponentController *)self viewport];
  [v5 bounds];
  v7 = v6;

  v8 = [(SXComponentController *)self viewport];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = -(v12 * v4);
  v14 = v7 - v10;
  v15 = v10 + v12 * v4 * 2.0;
  v16 = v12 + v10 * 2.0;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)renderContentsIfNeededForComponents:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SXComponentController *)self renderBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        [v18 absoluteFrame];
        v40.origin.x = v19;
        v40.origin.y = v20;
        v40.size.width = v21;
        v40.size.height = v22;
        v39.origin.x = v6;
        v39.origin.y = v8;
        v39.size.width = v10;
        v39.size.height = v12;
        v23 = CGRectIntersectsRect(v39, v40);
        if (!v23 && ([v18 allowHierarchyRemoval] & 1) != 0)
        {
LABEL_10:
          v25 = [v18 superview];
          if (v25)
          {
            v26 = v25;
            v27 = [v18 allowHierarchyRemoval];

            if (v27)
            {
              v28 = [v18 componentHost];
              [v28 removeComponentView:v18];
            }
          }

          continue;
        }

        v24 = [v18 superview];

        if (v24)
        {
          if (!v23)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v29 = [v18 componentHost];
          [v29 addComponentView:v18];

          v36 = v18;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          [(SXComponentController *)self updateVisibilityStatesForComponentViews:v30];

          if (!v23)
          {
            continue;
          }
        }

        v31 = [v18 superview];

        if (v31)
        {
          [v18 renderContentsIfNeeded];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }
}

- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4
{
  v5 = [(SXComponentController *)self viewport:a3];
  v6 = [v5 appearState];

  if (v6)
  {
    v7 = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:v7];
  }
}

- (void)updateVisibilityStatesForComponentViews:(id)a3 toState:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) setVisibilityState:a4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)updateVisibilityStatesForComponentViews:(id)a3 parentComponent:(id)a4 withOffset:(CGPoint)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(SXComponentController *)self isPresented])
  {
    v9 = [(SXComponentController *)self viewport];
    [v9 dynamicBounds];
    v61 = v11;
    v62 = v10;
    v13 = v12;
    v15 = v14;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v64;
      v21 = a5.y != 1.79769313e308 && v8 != 0;
      v60 = v21;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v63 + 1) + 8 * i);
          v24 = [v23 superview];

          if (v24)
          {
            if (([v23 requiresThoroughFrameCalculations] & 1) != 0 || ((objc_msgSend(v23, "absoluteFrame"), v26 < v13) || (objc_msgSend(v23, "absoluteFrame"), v27 > v13 + v15)) && ((objc_msgSend(v23, "absoluteFrame"), v29 = v28, objc_msgSend(v23, "absoluteFrame"), v25 = v29 + v30, v29 + v30 <= v13) || (objc_msgSend(v23, "absoluteFrame", v25), v31 > v13)))
            {
              if ([v23 requiresThoroughFrameCalculations])
              {
                [v23 frame];
                v33 = v32;
                v35 = v34;
                v37 = v36;
                v39 = v38;
                v40 = [v8 contentView];
                v41 = [v23 superview];

                if (v40 == v41)
                {
                  v44 = a5.x + v33;
                  v46 = a5.y + v35;
                }

                else
                {
                  if (v60)
                  {
                    v42 = [v23 superview];
                    [v8 convertRect:v42 fromView:{v33, v35, v37, v39}];
                    v44 = v43;
                    v46 = v45;
                    v37 = v47;
                    v39 = v48;
                  }

                  else
                  {
                    v42 = [(SXComponentController *)self viewport];
                    v50 = [v23 superview];
                    [v42 convertRect:v50 fromView:{v33, v35, v37, v39}];
                    v44 = v51;
                    v46 = v52;
                    v37 = v53;
                    v39 = v54;
                  }
                }

                [v23 setPresentationFrame:{v44, v46, v37, v39}];
                v69.origin.x = v44;
                v69.origin.y = v46;
                v69.size.width = v37;
                v69.size.height = v39;
                MinY = CGRectGetMinY(v69);
                v70.origin.x = v44;
                v70.origin.y = v46;
                v70.size.width = v37;
                v70.size.height = v39;
                Width = CGRectGetWidth(v70);
                v71.origin.x = v44;
                v71.origin.y = v46;
                v71.size.width = v37;
                v71.size.height = v39;
                v73.size.height = CGRectGetHeight(v71);
                v73.origin.x = 0.0;
                v72.size.width = v61;
                v72.origin.x = v62;
                v72.origin.y = v13;
                v72.size.height = v15;
                v73.origin.y = MinY;
                v73.size.width = Width;
                if (CGRectIntersectsRect(v72, v73))
                {
                  v49 = 1;
                }

                else
                {
                  v49 = 2;
                }
              }

              else
              {
                v49 = 2;
              }
            }

            else
            {
              v49 = 1;
            }

            if (v49 != [v23 visibilityState])
            {
              [v23 setVisibilityState:v49];
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = v23;
              v58 = [v57 componentViews];
              [v57 absoluteFrame];
              [(SXComponentController *)self updateVisibilityStatesForComponentViews:v58 parentComponent:v57 withOffset:?];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v18);
    }
  }
}

- (void)assistiveTechnologyStatusDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SXComponentController *)self flattenedComponentViews];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) assistiveTechnologyStatusDidChange];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(SXComponentController *)self flattenedComponentViews];
  [(SXComponentController *)self renderContentsIfNeededForComponents:v8];
}

- (void)updatePresentationStateForNestedComponentViews:(id)a3 presentationState:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SXComponentController *)self updatePresentationStateForNestedComponentView:*(*(&v11 + 1) + 8 * v10++) presentationState:a4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)updatePresentationStateForNestedComponentView:(id)a3 presentationState:(int64_t)a4
{
  v7 = a3;
  [v7 setPresentationState:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 componentViews];
    [(SXComponentController *)self updatePresentationStateForNestedComponentViews:v6 presentationState:a4];
  }
}

- (SXComponentHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end