@interface PXPlacesMapInPlaceUpdatePlan
- (PXPlacesMapInPlaceUpdatePlan)init;
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (id)_changesBetweenSourceLayoutResult:(id)result targetLayoutResult:(id)layoutResult;
- (id)annotationForLayoutItem:(id)item;
- (id)removalPlanResult;
- (id)resultForNewLayoutResult:(id)result;
- (void)reset;
@end

@implementation PXPlacesMapInPlaceUpdatePlan

- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->pipelineComponentProvider);

  return WeakRetained;
}

- (void)reset
{
  dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
  currentLayoutResult = self->_currentLayoutResult;
  self->_currentLayoutResult = 0;

  currentLayoutItemToAnnotationTable = self->_currentLayoutItemToAnnotationTable;
  self->_currentLayoutItemToAnnotationTable = 0;

  sema = self->_sema;

  dispatch_semaphore_signal(sema);
}

- (id)annotationForLayoutItem:(id)item
{
  sema = self->_sema;
  itemCopy = item;
  dispatch_semaphore_wait(sema, 0xFFFFFFFFFFFFFFFFLL);
  currentLayoutItemToAnnotationTable = [(PXPlacesMapInPlaceUpdatePlan *)self currentLayoutItemToAnnotationTable];
  v7 = [currentLayoutItemToAnnotationTable objectForKey:itemCopy];

  dispatch_semaphore_signal(self->_sema);

  return v7;
}

- (id)_changesBetweenSourceLayoutResult:(id)result targetLayoutResult:(id)layoutResult
{
  layoutResultCopy = layoutResult;
  resultCopy = result;
  v7 = [(PXPlacesMapLayoutDiffer *)[PXPlacesMapInPlaceLayoutDiffer alloc] initWithSourceLayoutResult:resultCopy targetLayoutResult:layoutResultCopy];

  computeChanges = [(PXPlacesMapLayoutDiffer *)v7 computeChanges];

  return computeChanges;
}

- (id)removalPlanResult
{
  v3 = objc_alloc_init(PXPlacesMapUpdatePlanResultImpl);
  dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
  annotationsToRemoveImmediately = [(PXPlacesMapUpdatePlanResultImpl *)v3 annotationsToRemoveImmediately];
  currentLayoutItemToAnnotationTable = [(PXPlacesMapInPlaceUpdatePlan *)self currentLayoutItemToAnnotationTable];
  objectEnumerator = [currentLayoutItemToAnnotationTable objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [annotationsToRemoveImmediately addObjectsFromArray:allObjects];

  dispatch_semaphore_signal(self->_sema);

  return v3;
}

- (id)resultForNewLayoutResult:(id)result
{
  v104 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
  v78 = objc_alloc_init(PXPlacesMapUpdatePlanResultImpl);
  currentLayoutResult = [(PXPlacesMapInPlaceUpdatePlan *)self currentLayoutResult];
  v71 = resultCopy;
  v6 = [(PXPlacesMapInPlaceUpdatePlan *)self _changesBetweenSourceLayoutResult:currentLayoutResult targetLayoutResult:resultCopy];

  v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
  pipelineComponentProvider = [(PXPlacesMapInPlaceUpdatePlan *)self pipelineComponentProvider];
  renderer = [pipelineComponentProvider renderer];

  v77 = [MEMORY[0x1E695DFA8] set];
  v9 = [MEMORY[0x1E695DFA8] set];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v95 objects:v103 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v96;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v96 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v95 + 1) + 8 * i);
        sourceLayoutItem = [v15 sourceLayoutItem];
        targetLayoutItem = [v15 targetLayoutItem];
        if (sourceLayoutItem)
        {
          [v77 addObject:sourceLayoutItem];
        }

        if (targetLayoutItem)
        {
          [v9 addObject:targetLayoutItem];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v12);
  }

  selfCopy = self;

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v91 objects:v102 count:16];
  v76 = v7;
  v72 = v18;
  if (v19)
  {
    v20 = v19;
    v21 = *v92;
    do
    {
      v22 = 0;
      do
      {
        if (*v92 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v91 + 1) + 8 * v22);
        type = [v23 type];
        sourceLayoutItem2 = [v23 sourceLayoutItem];
        targetLayoutItem2 = [v23 targetLayoutItem];
        v27 = targetLayoutItem2;
        if (type == 2)
        {
          if (sourceLayoutItem2)
          {
            if (targetLayoutItem2)
            {
LABEL_20:
              currentLayoutItemToAnnotationTable = [(dispatch_semaphore_t *)selfCopy currentLayoutItemToAnnotationTable];
              v29 = [currentLayoutItemToAnnotationTable objectForKey:sourceLayoutItem2];

              if (!v29)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:87 description:@"annotation for sourceItem cannot be nil"];
              }

              v30 = v29;
              if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
              {
                v31 = v30;
              }

              else
              {
                v31 = 0;
              }

              [v7 setObject:v31 forKey:v27];
              [v77 removeObject:sourceLayoutItem2];
              [v9 removeObject:v27];
              if (([sourceLayoutItem2 isEqualToLayoutItem:v27] & 1) == 0)
              {
                [v7 setObject:v31 forKey:v27];
                [v77 removeObject:sourceLayoutItem2];
                [v9 removeObject:v27];
                geotaggables = [v27 geotaggables];
                v33 = [geotaggables copy];
                [v31 setGeotaggables:v33];

                v7 = v76;
                annotationsToRedraw = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsToRedraw];
                [annotationsToRedraw addObject:v30];

                v18 = v72;
              }

              goto LABEL_29;
            }
          }

          else
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:84 description:@"sourceItem cannot be nil for PXPlacesMapLayoutDiffTypeRelated"];

            if (v27)
            {
              goto LABEL_20;
            }
          }

          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:85 description:@"targetItem cannot be nil for PXPlacesMapLayoutDiffTypeRelated"];

          goto LABEL_20;
        }

LABEL_29:

        ++v22;
      }

      while (v20 != v22);
      v38 = [v18 countByEnumeratingWithState:&v91 objects:v102 count:16];
      v20 = v38;
    }

    while (v38);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v9;
  v39 = [obj countByEnumeratingWithState:&v87 objects:v101 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v88;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v88 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v87 + 1) + 8 * j);
        geotaggables2 = [v43 geotaggables];
        [v43 coordinate];
        v45 = [renderer annotationForGeotaggables:geotaggables2 initialCoordinate:?];

        if (!v45)
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:116 description:@"annotation for targetItem cannot be nil"];
        }

        annotationsToAddImmediately = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsToAddImmediately];
        [annotationsToAddImmediately addObject:v45];

        [v7 setObject:v45 forKey:v43];
      }

      v40 = [obj countByEnumeratingWithState:&v87 objects:v101 count:16];
    }

    while (v40);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v48 = v77;
  v49 = [v48 countByEnumeratingWithState:&v83 objects:v100 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v84;
    do
    {
      for (k = 0; k != v50; ++k)
      {
        if (*v84 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v83 + 1) + 8 * k);
        currentLayoutItemToAnnotationTable2 = [(dispatch_semaphore_t *)selfCopy currentLayoutItemToAnnotationTable];
        v55 = [currentLayoutItemToAnnotationTable2 objectForKey:v53];

        if (!v55)
        {
          currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler5 handleFailureInMethod:a2 object:selfCopy file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:125 description:@"annotation for sourceItem cannot be nil"];
        }

        annotationsToRemoveImmediately = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsToRemoveImmediately];
        [annotationsToRemoveImmediately addObject:v55];
      }

      v50 = [v48 countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v50);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  layoutItems = [v71 layoutItems];
  v59 = [layoutItems countByEnumeratingWithState:&v79 objects:v99 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = 0;
    v62 = *v80;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v80 != v62)
        {
          objc_enumerationMutation(layoutItems);
        }

        v64 = [v76 objectForKey:*(*(&v79 + 1) + 8 * m)];
        if (!v64)
        {
          currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler6 handleFailureInMethod:a2 object:selfCopy file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:135 description:@"annotation for layout item cannot be nil"];
        }

        v65 = v64;
        if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_66:
          v66 = 0;
          goto LABEL_67;
        }

        v66 = v65;

        if (!v64)
        {
          goto LABEL_66;
        }

        if (v61 != [v66 index])
        {
          [v66 setIndex:v61];
          annotationsWithUpdatedIndex = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsWithUpdatedIndex];
          [annotationsWithUpdatedIndex addObject:v66];
        }

        ++v61;
LABEL_67:
      }

      v60 = [layoutItems countByEnumeratingWithState:&v79 objects:v99 count:16];
    }

    while (v60);
  }

  [(dispatch_semaphore_t *)selfCopy setCurrentLayoutResult:v71];
  [(dispatch_semaphore_t *)selfCopy setCurrentLayoutItemToAnnotationTable:v76];
  dispatch_semaphore_signal(selfCopy[1]);

  return v78;
}

- (PXPlacesMapInPlaceUpdatePlan)init
{
  v6.receiver = self;
  v6.super_class = PXPlacesMapInPlaceUpdatePlan;
  v2 = [(PXPlacesMapInPlaceUpdatePlan *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    sema = v2->_sema;
    v2->_sema = v3;
  }

  return v2;
}

@end