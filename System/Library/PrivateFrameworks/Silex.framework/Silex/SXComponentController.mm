@interface SXComponentController
- (CGRect)renderBounds;
- (SXComponentController)initWithViewport:(id)viewport DOMObjectProvider:(id)provider;
- (SXComponentHosting)host;
- (id)componentViewForIdentifier:(id)identifier;
- (id)componentViewForPoint:(CGPoint)point;
- (id)componentViewForPoint:(CGPoint)point inComponents:(id)components;
- (id)componentViewsForRole:(int)role;
- (id)componentViewsForRole:(int)role forLayoutBlueprint:(id)blueprint;
- (id)componentsInRect:(CGRect)rect;
- (id)presentComponentBlueprint:(id)blueprint inHost:(id)host columnLayout:(id)layout;
- (void)addObserver:(id)observer;
- (void)assistiveTechnologyStatusDidChange;
- (void)fadeComponent:(id)component completion:(id)completion;
- (void)integrateBlueprint:(id)blueprint withCompletion:(id)completion;
- (void)presentBlueprint:(id)blueprint forParentComponentView:(id)view inHost:(id)host;
- (void)presentComponentsInBlueprint:(id)blueprint;
- (void)provideInfosLayoutTo:(id)to;
- (void)removeComponentsInLayoutBlueprint:(id)blueprint removedFromLayoutBlueprint:(id)layoutBlueprint;
- (void)removeObserver:(id)observer;
- (void)renderContentsIfNeededForComponents:(id)components;
- (void)updatePresentationStateForNestedComponentView:(id)view presentationState:(int64_t)state;
- (void)updatePresentationStateForNestedComponentViews:(id)views presentationState:(int64_t)state;
- (void)updateVisibilityStatesForComponentViews:(id)views parentComponent:(id)component withOffset:(CGPoint)offset;
- (void)updateVisibilityStatesForComponentViews:(id)views toState:(int64_t)state;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
- (void)viewport:(id)viewport boundsDidChangeFromBounds:(CGRect)bounds;
- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds;
@end

@implementation SXComponentController

- (SXComponentController)initWithViewport:(id)viewport DOMObjectProvider:(id)provider
{
  viewportCopy = viewport;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = SXComponentController;
  v9 = [(SXComponentController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewport, viewport);
    objc_storeStrong(&v10->_DOMObjectProvider, provider);
    v11 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    observers = v10->_observers;
    v10->_observers = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mappedComponentViews = v10->_mappedComponentViews;
    v10->_mappedComponentViews = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    sortedComponentViews = v10->_sortedComponentViews;
    v10->_sortedComponentViews = array;

    array2 = [MEMORY[0x1E695DF70] array];
    nestedComponentViews = v10->_nestedComponentViews;
    v10->_nestedComponentViews = array2;

    [(SXViewport *)v10->_viewport addViewportChangeListener:v10 forOptions:14];
  }

  return v10;
}

- (void)integrateBlueprint:(id)blueprint withCompletion:(id)completion
{
  v45 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  completionCopy = completion;
  [(SXComponentController *)self setIsPresenting:1];
  nestedComponentViews = [(SXComponentController *)self nestedComponentViews];
  v10 = [nestedComponentViews copy];

  [(SXComponentController *)self removeComponentsInLayoutBlueprint:self->_presentedBlueprint removedFromLayoutBlueprint:blueprintCopy];
  host = [(SXComponentController *)self host];
  [(SXComponentController *)self presentBlueprint:blueprintCopy forParentComponentView:0 inHost:host];

  objc_storeStrong(&self->_presentedBlueprint, blueprint);
  [(SXComponentController *)self presentComponentsInBlueprint:blueprintCopy];
  self->_isPresented = 1;
  viewport = [(SXComponentController *)self viewport];
  appearState = [viewport appearState];

  if (appearState)
  {
    componentViews = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:componentViews];
  }

  presentationAttributes = [(SXComponentController *)self presentationAttributes];
  fadeInComponents = [presentationAttributes fadeInComponents];

  nestedComponentViews2 = [(SXComponentController *)self nestedComponentViews];
  v18 = nestedComponentViews2;
  if (fadeInComponents)
  {
    v33 = completionCopy;
    v19 = [nestedComponentViews2 mutableCopy];

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

    completionCopy = v33;
  }

  else
  {
    [(SXComponentController *)self updatePresentationStateForNestedComponentViews:nestedComponentViews2 presentationState:2];
  }

  flattenedComponentViews = [(SXComponentController *)self flattenedComponentViews];
  [(SXComponentController *)self renderContentsIfNeededForComponents:flattenedComponentViews];

  [(SXComponentController *)self setIsPresenting:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  observers = [(SXComponentController *)self observers];
  v28 = [observers copy];

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

  completionCopy[2](completionCopy);
}

- (void)presentBlueprint:(id)blueprint forParentComponentView:(id)view inHost:(id)host
{
  v30 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  viewCopy = view;
  hostCopy = host;
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [blueprintCopy componentIdentifiers];
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

        v14 = [blueprintCopy componentBlueprintForComponentIdentifier:*(*(&v25 + 1) + 8 * i)];
        layoutOptions = [blueprintCopy layoutOptions];
        columnLayout = [layoutOptions columnLayout];
        v17 = [(SXComponentController *)self presentComponentBlueprint:v14 inHost:hostCopy columnLayout:columnLayout];

        if ([v14 hasValidLayout])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
            layoutBlueprint = [v14 layoutBlueprint];
            [(SXComponentController *)self presentBlueprint:layoutBlueprint forParentComponentView:v18 inHost:v18];
          }
        }

        if (v17)
        {
          [array addObject:v17];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  if (viewCopy)
  {
    v20 = array;
    [viewCopy setComponentViews:array];
  }

  else
  {
    selfCopy = self;
    v20 = array;
    [(SXComponentController *)selfCopy setNestedComponentViews:array];
  }
}

- (void)fadeComponent:(id)component completion:(id)completion
{
  v5 = MEMORY[0x1E6979318];
  completionCopy = completion;
  componentCopy = component;
  v11 = [v5 animationWithKeyPath:@"opacity"];
  [v11 setFromValue:&unk_1F538A4A8];
  v8 = MEMORY[0x1E696AD98];
  [componentCopy alpha];
  v9 = [v8 numberWithDouble:?];
  [v11 setToValue:v9];

  [v11 setDuration:0.3];
  [MEMORY[0x1E6979518] setCompletionBlock:completionCopy];

  layer = [componentCopy layer];

  [layer addAnimation:v11 forKey:@"opacity"];
}

- (id)presentComponentBlueprint:(id)blueprint inHost:(id)host columnLayout:(id)layout
{
  v126 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  hostCopy = host;
  layoutCopy = layout;
  mappedComponentViews = [(SXComponentController *)self mappedComponentViews];
  component = [blueprintCopy component];
  identifier = [component identifier];
  v14 = [mappedComponentViews objectForKey:identifier];

  if ([blueprintCopy hasValidLayout] && (objc_msgSend(blueprintCopy, "isHidden") & 1) == 0)
  {
    if (!v14)
    {
      componentViewEngine = [(SXComponentController *)self componentViewEngine];
      component2 = [blueprintCopy component];
      v14 = [componentViewEngine componentViewForComponent:component2];

      if (v14)
      {
        [v14 setComponentHost:hostCopy];
        parentLayoutBlueprint = [blueprintCopy parentLayoutBlueprint];
        componentIdentifiers = [parentLayoutBlueprint componentIdentifiers];
        component3 = [blueprintCopy component];
        identifier2 = [component3 identifier];
        [v14 setComponentIndex:{objc_msgSend(componentIdentifiers, "indexOfObject:", identifier2)}];

        mappedComponentViews2 = [(SXComponentController *)self mappedComponentViews];
        component4 = [blueprintCopy component];
        identifier3 = [component4 identifier];
        [mappedComponentViews2 setObject:v14 forKey:identifier3];

        sortedComponentViews = [(SXComponentController *)self sortedComponentViews];
        [sortedComponentViews addObject:v14];
      }

      [v14 configure];
    }

    component5 = [v14 component];
    if (!component5 || (v26 = component5, [v14 component], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(blueprintCopy, "component"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqual:", v28), v28, v27, v26, (v29 & 1) == 0))
    {
      component6 = [blueprintCopy component];
      [v14 loadComponent:component6];
    }

    [blueprintCopy absoluteFrame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    viewport = [(SXComponentController *)self viewport];
    [viewport contentFrame];
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

    [blueprintCopy componentViewFrame];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    parentLayoutBlueprint2 = [blueprintCopy parentLayoutBlueprint];
    rootLayoutBlueprint = [blueprintCopy rootLayoutBlueprint];

    if (parentLayoutBlueprint2 == rootLayoutBlueprint)
    {
      [blueprintCopy componentViewFrame];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      viewport2 = [(SXComponentController *)self viewport];
      [viewport2 contentFrame];
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

    v120 = hostCopy;
    [v14 absoluteFrame];
    v67 = y == v66 && x == v65;
    [blueprintCopy contentFrame];
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
    componentState = [blueprintCopy componentState];
    identifier4 = [componentState identifier];
    state = [v14 state];
    identifier5 = [state identifier];
    v85 = [identifier4 isEqualToString:identifier5];

    componentState2 = [blueprintCopy componentState];
    [v14 setState:componentState2];

    [v14 setAbsoluteFrame:{x, y, width, height}];
    [blueprintCopy layoutMargins];
    [v14 setComponentLayoutMargins:?];
    [blueprintCopy contentViewFrame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    contentView = [v14 contentView];
    [contentView setFrame:{v88, v90, v92, v94}];

    [blueprintCopy contentFrame];
    [v14 setContentFrame:?];
    [blueprintCopy backgroundViewFrame];
    [v14 setBackgroundViewFrame:?];
    [blueprintCopy backgroundViewFrame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    backgroundView = [v14 backgroundView];
    [backgroundView setFrame:{v97, v99, v101, v103}];

    [blueprintCopy borderInsets];
    [v14 setBorderInsets:?];
    if ([v14 requiresThoroughFrameCalculations])
    {
      [v14 setFrameUsingCenterAndBounds:{v119, v118, v117, v116}];
    }

    else
    {
      [v14 setFrame:{v119, v118, v117, v116}];
    }

    [v14 setDocumentColumnLayout:layoutCopy];
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
    infoFromLayouting = [blueprintCopy infoFromLayouting];
    v108 = [infoFromLayouting countByEnumeratingWithState:&v121 objects:v125 count:16];
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
            objc_enumerationMutation(infoFromLayouting);
          }

          v112 = *(*(&v121 + 1) + 8 * i);
          infoFromLayouting2 = [blueprintCopy infoFromLayouting];
          v114 = [infoFromLayouting2 objectForKeyedSubscript:v112];

          [v14 receivedInfo:v114 fromLayoutingPhaseWithIdentifier:v112];
        }

        v109 = [infoFromLayouting countByEnumeratingWithState:&v121 objects:v125 count:16];
      }

      while (v109);
    }

    hostCopy = v120;
  }

  return v14;
}

- (void)presentComponentsInBlueprint:(id)blueprint
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  blueprintCopy = blueprint;
  obj = [blueprintCopy componentIdentifiers];
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

        v9 = [blueprintCopy componentBlueprintForComponentIdentifier:*(*(&v20 + 1) + 8 * v8)];
        mappedComponentViews = [(SXComponentController *)self mappedComponentViews];
        component = [v9 component];
        identifier = [component identifier];
        v13 = [mappedComponentViews objectForKey:identifier];

        [v13 setPresentationState:1];
        v4 = v4 & 0xFFFFFFFFFF000000 | [v13 presentationChanges] & 0xFFFFFF;
        [v13 willPresentComponentWithChanges:v4];
        if (([v13 allowHierarchyRemoval] & 1) == 0)
        {
          superview = [v13 superview];

          if (!superview)
          {
            componentHost = [v13 componentHost];
            [componentHost addComponentView:v13];
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layoutBlueprint = [v9 layoutBlueprint];
          [(SXComponentController *)self presentComponentsInBlueprint:layoutBlueprint];
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

- (void)removeComponentsInLayoutBlueprint:(id)blueprint removedFromLayoutBlueprint:(id)layoutBlueprint
{
  v34 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  layoutBlueprintCopy = layoutBlueprint;
  if (blueprintCopy)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    componentIdentifiers = [blueprintCopy componentIdentifiers];
    [v8 addObjectsFromArray:componentIdentifiers];

    componentIdentifiers2 = [layoutBlueprintCopy componentIdentifiers];
    [v8 addObjectsFromArray:componentIdentifiers2];

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
          v13 = [blueprintCopy componentBlueprintForComponentIdentifier:v12];
          v14 = [layoutBlueprintCopy componentBlueprintForComponentIdentifier:v12];
          v15 = v14;
          if (!v14 || [v14 isHidden])
          {
            [(SXComponentController *)self mappedComponentViews];
            v16 = layoutBlueprintCopy;
            v18 = v17 = blueprintCopy;
            v19 = [v18 objectForKey:v12];

            [v19 discardContents];
            [v19 setPresentationState:0];
            [v19 setVisibilityState:2];
            componentHost = [v19 componentHost];
            [componentHost removeComponentView:v19];

            mappedComponentViews = [(SXComponentController *)self mappedComponentViews];
            [mappedComponentViews removeObjectForKey:v12];

            blueprintCopy = v17;
            layoutBlueprintCopy = v16;
            sortedComponentViews = [(SXComponentController *)self sortedComponentViews];
            [sortedComponentViews removeObject:v19];

            nestedComponentViews = [(SXComponentController *)self nestedComponentViews];
            [nestedComponentViews removeObject:v19];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            layoutBlueprint = [v13 layoutBlueprint];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              layoutBlueprint2 = [v15 layoutBlueprint];
            }

            else
            {
              layoutBlueprint2 = 0;
            }

            [(SXComponentController *)self removeComponentsInLayoutBlueprint:layoutBlueprint removedFromLayoutBlueprint:layoutBlueprint2];
          }
        }

        v28 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v28);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SXComponentController *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SXComponentController *)self observers];
  [observers removeObject:observerCopy];
}

- (id)componentsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  presentedBlueprint = [(SXComponentController *)self presentedBlueprint];
  v8 = [presentedBlueprint componentsInRect:{x, y, width, height}];

  return v8;
}

- (id)componentViewForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  componentViews = [(SXComponentController *)self componentViews];
  v7 = [(SXComponentController *)self componentViewForPoint:componentViews inComponents:x, y];

  return v7;
}

- (id)componentViewForPoint:(CGPoint)point inComponents:(id)components
{
  y = point.y;
  x = point.x;
  v25 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [componentsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(componentsCopy);
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
              componentViews = [v15 componentViews];
              v18 = [(SXComponentController *)self componentViewForPoint:componentViews inComponents:x, y];

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

      v9 = [componentsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)componentViewsForRole:(int)role
{
  v3 = *&role;
  presentedBlueprint = [(SXComponentController *)self presentedBlueprint];
  v6 = [(SXComponentController *)self componentViewsForRole:v3 forLayoutBlueprint:presentedBlueprint];

  return v6;
}

- (id)componentViewsForRole:(int)role forLayoutBlueprint:(id)blueprint
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  flattenedComponentViews = [(SXComponentController *)self flattenedComponentViews];
  v8 = [flattenedComponentViews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(flattenedComponentViews);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        classification = [v12 classification];
        role = [objc_opt_class() role];

        if (role == role)
        {
          [array addObject:v12];
        }
      }

      v9 = [flattenedComponentViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)componentViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mappedComponentViews = [(SXComponentController *)self mappedComponentViews];
  v6 = [mappedComponentViews objectForKey:identifierCopy];

  return v6;
}

- (void)provideInfosLayoutTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  flattenedComponentViews = [(SXComponentController *)self flattenedComponentViews];
  v6 = [flattenedComponentViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(flattenedComponentViews);
        }

        [*(*(&v10 + 1) + 8 * v9++) provideInfosLayoutTo:toCopy];
      }

      while (v7 != v9);
      v7 = [flattenedComponentViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
  viewportCopy = viewport;
  appearState = [viewportCopy appearState];
  if (state && !appearState)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    flattenedComponentViews = [(SXComponentController *)self flattenedComponentViews];
    v9 = [flattenedComponentViews countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(flattenedComponentViews);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 visibilityState] != 1)
          {
            [v13 discardContents];
          }
        }

        v10 = [flattenedComponentViews countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    flattenedComponentViews2 = [(SXComponentController *)self flattenedComponentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:flattenedComponentViews2 toState:2];
    goto LABEL_15;
  }

  if ([viewportCopy appearState])
  {
    flattenedComponentViews2 = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self renderContentsIfNeededForComponents:flattenedComponentViews2];
LABEL_15:
  }

  if (!state && [viewportCopy appearState])
  {
    componentViews = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:componentViews];
  }
}

- (void)viewport:(id)viewport boundsDidChangeFromBounds:(CGRect)bounds
{
  v5 = [(SXComponentController *)self flattenedComponentViews:viewport];
  [(SXComponentController *)self renderContentsIfNeededForComponents:v5];
}

- (CGRect)renderBounds
{
  viewport = [(SXComponentController *)self viewport];
  if ([viewport appearState] == 2)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  viewport2 = [(SXComponentController *)self viewport];
  [viewport2 bounds];
  v7 = v6;

  viewport3 = [(SXComponentController *)self viewport];
  [viewport3 bounds];
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

- (void)renderContentsIfNeededForComponents:(id)components
{
  v38 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  [(SXComponentController *)self renderBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = componentsCopy;
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
          superview = [v18 superview];
          if (superview)
          {
            v26 = superview;
            allowHierarchyRemoval = [v18 allowHierarchyRemoval];

            if (allowHierarchyRemoval)
            {
              componentHost = [v18 componentHost];
              [componentHost removeComponentView:v18];
            }
          }

          continue;
        }

        superview2 = [v18 superview];

        if (superview2)
        {
          if (!v23)
          {
            goto LABEL_10;
          }
        }

        else
        {
          componentHost2 = [v18 componentHost];
          [componentHost2 addComponentView:v18];

          v36 = v18;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          [(SXComponentController *)self updateVisibilityStatesForComponentViews:v30];

          if (!v23)
          {
            continue;
          }
        }

        superview3 = [v18 superview];

        if (superview3)
        {
          [v18 renderContentsIfNeeded];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }
}

- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds
{
  v5 = [(SXComponentController *)self viewport:viewport];
  appearState = [v5 appearState];

  if (appearState)
  {
    componentViews = [(SXComponentController *)self componentViews];
    [(SXComponentController *)self updateVisibilityStatesForComponentViews:componentViews];
  }
}

- (void)updateVisibilityStatesForComponentViews:(id)views toState:(int64_t)state
{
  v15 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [viewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        [*(*(&v10 + 1) + 8 * v9++) setVisibilityState:state];
      }

      while (v7 != v9);
      v7 = [viewsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)updateVisibilityStatesForComponentViews:(id)views parentComponent:(id)component withOffset:(CGPoint)offset
{
  v68 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  componentCopy = component;
  if ([(SXComponentController *)self isPresented])
  {
    viewport = [(SXComponentController *)self viewport];
    [viewport dynamicBounds];
    v61 = v11;
    v62 = v10;
    v13 = v12;
    v15 = v14;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v16 = viewsCopy;
    v17 = [v16 countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v64;
      v21 = offset.y != 1.79769313e308 && componentCopy != 0;
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
          superview = [v23 superview];

          if (superview)
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
                contentView = [componentCopy contentView];
                superview2 = [v23 superview];

                if (contentView == superview2)
                {
                  v44 = offset.x + v33;
                  v46 = offset.y + v35;
                }

                else
                {
                  if (v60)
                  {
                    superview3 = [v23 superview];
                    [componentCopy convertRect:superview3 fromView:{v33, v35, v37, v39}];
                    v44 = v43;
                    v46 = v45;
                    v37 = v47;
                    v39 = v48;
                  }

                  else
                  {
                    superview3 = [(SXComponentController *)self viewport];
                    superview4 = [v23 superview];
                    [superview3 convertRect:superview4 fromView:{v33, v35, v37, v39}];
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
              componentViews = [v57 componentViews];
              [v57 absoluteFrame];
              [(SXComponentController *)self updateVisibilityStatesForComponentViews:componentViews parentComponent:v57 withOffset:?];
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
  flattenedComponentViews = [(SXComponentController *)self flattenedComponentViews];
  v4 = [flattenedComponentViews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(flattenedComponentViews);
        }

        [*(*(&v9 + 1) + 8 * v7++) assistiveTechnologyStatusDidChange];
      }

      while (v5 != v7);
      v5 = [flattenedComponentViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  flattenedComponentViews2 = [(SXComponentController *)self flattenedComponentViews];
  [(SXComponentController *)self renderContentsIfNeededForComponents:flattenedComponentViews2];
}

- (void)updatePresentationStateForNestedComponentViews:(id)views presentationState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        [(SXComponentController *)self updatePresentationStateForNestedComponentView:*(*(&v11 + 1) + 8 * v10++) presentationState:state];
      }

      while (v8 != v10);
      v8 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)updatePresentationStateForNestedComponentView:(id)view presentationState:(int64_t)state
{
  viewCopy = view;
  [viewCopy setPresentationState:state];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    componentViews = [viewCopy componentViews];
    [(SXComponentController *)self updatePresentationStateForNestedComponentViews:componentViews presentationState:state];
  }
}

- (SXComponentHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end