@interface PXPlacesMapInPlaceUpdatePlan
- (PXPlacesMapInPlaceUpdatePlan)init;
- (PXPlacesMapPipelineComponentProvider)pipelineComponentProvider;
- (id)_changesBetweenSourceLayoutResult:(id)a3 targetLayoutResult:(id)a4;
- (id)annotationForLayoutItem:(id)a3;
- (id)removalPlanResult;
- (id)resultForNewLayoutResult:(id)a3;
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

- (id)annotationForLayoutItem:(id)a3
{
  sema = self->_sema;
  v5 = a3;
  dispatch_semaphore_wait(sema, 0xFFFFFFFFFFFFFFFFLL);
  v6 = [(PXPlacesMapInPlaceUpdatePlan *)self currentLayoutItemToAnnotationTable];
  v7 = [v6 objectForKey:v5];

  dispatch_semaphore_signal(self->_sema);

  return v7;
}

- (id)_changesBetweenSourceLayoutResult:(id)a3 targetLayoutResult:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PXPlacesMapLayoutDiffer *)[PXPlacesMapInPlaceLayoutDiffer alloc] initWithSourceLayoutResult:v6 targetLayoutResult:v5];

  v8 = [(PXPlacesMapLayoutDiffer *)v7 computeChanges];

  return v8;
}

- (id)removalPlanResult
{
  v3 = objc_alloc_init(PXPlacesMapUpdatePlanResultImpl);
  dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
  v4 = [(PXPlacesMapUpdatePlanResultImpl *)v3 annotationsToRemoveImmediately];
  v5 = [(PXPlacesMapInPlaceUpdatePlan *)self currentLayoutItemToAnnotationTable];
  v6 = [v5 objectEnumerator];
  v7 = [v6 allObjects];
  [v4 addObjectsFromArray:v7];

  dispatch_semaphore_signal(self->_sema);

  return v3;
}

- (id)resultForNewLayoutResult:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_semaphore_wait(self->_sema, 0xFFFFFFFFFFFFFFFFLL);
  v78 = objc_alloc_init(PXPlacesMapUpdatePlanResultImpl);
  v5 = [(PXPlacesMapInPlaceUpdatePlan *)self currentLayoutResult];
  v71 = v4;
  v6 = [(PXPlacesMapInPlaceUpdatePlan *)self _changesBetweenSourceLayoutResult:v5 targetLayoutResult:v4];

  v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
  v8 = [(PXPlacesMapInPlaceUpdatePlan *)self pipelineComponentProvider];
  v75 = [v8 renderer];

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
        v16 = [v15 sourceLayoutItem];
        v17 = [v15 targetLayoutItem];
        if (v16)
        {
          [v77 addObject:v16];
        }

        if (v17)
        {
          [v9 addObject:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v95 objects:v103 count:16];
    }

    while (v12);
  }

  v73 = self;

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
        v24 = [v23 type];
        v25 = [v23 sourceLayoutItem];
        v26 = [v23 targetLayoutItem];
        v27 = v26;
        if (v24 == 2)
        {
          if (v25)
          {
            if (v26)
            {
LABEL_20:
              v28 = [(dispatch_semaphore_t *)v73 currentLayoutItemToAnnotationTable];
              v29 = [v28 objectForKey:v25];

              if (!v29)
              {
                v37 = [MEMORY[0x1E696AAA8] currentHandler];
                [v37 handleFailureInMethod:a2 object:v73 file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:87 description:@"annotation for sourceItem cannot be nil"];
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
              [v77 removeObject:v25];
              [v9 removeObject:v27];
              if (([v25 isEqualToLayoutItem:v27] & 1) == 0)
              {
                [v7 setObject:v31 forKey:v27];
                [v77 removeObject:v25];
                [v9 removeObject:v27];
                v32 = [v27 geotaggables];
                v33 = [v32 copy];
                [v31 setGeotaggables:v33];

                v7 = v76;
                v34 = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsToRedraw];
                [v34 addObject:v30];

                v18 = v72;
              }

              goto LABEL_29;
            }
          }

          else
          {
            v35 = [MEMORY[0x1E696AAA8] currentHandler];
            [v35 handleFailureInMethod:a2 object:v73 file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:84 description:@"sourceItem cannot be nil for PXPlacesMapLayoutDiffTypeRelated"];

            if (v27)
            {
              goto LABEL_20;
            }
          }

          v36 = [MEMORY[0x1E696AAA8] currentHandler];
          [v36 handleFailureInMethod:a2 object:v73 file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:85 description:@"targetItem cannot be nil for PXPlacesMapLayoutDiffTypeRelated"];

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
        v44 = [v43 geotaggables];
        [v43 coordinate];
        v45 = [v75 annotationForGeotaggables:v44 initialCoordinate:?];

        if (!v45)
        {
          v47 = [MEMORY[0x1E696AAA8] currentHandler];
          [v47 handleFailureInMethod:a2 object:v73 file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:116 description:@"annotation for targetItem cannot be nil"];
        }

        v46 = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsToAddImmediately];
        [v46 addObject:v45];

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
        v54 = [(dispatch_semaphore_t *)v73 currentLayoutItemToAnnotationTable];
        v55 = [v54 objectForKey:v53];

        if (!v55)
        {
          v57 = [MEMORY[0x1E696AAA8] currentHandler];
          [v57 handleFailureInMethod:a2 object:v73 file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:125 description:@"annotation for sourceItem cannot be nil"];
        }

        v56 = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsToRemoveImmediately];
        [v56 addObject:v55];
      }

      v50 = [v48 countByEnumeratingWithState:&v83 objects:v100 count:16];
    }

    while (v50);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v58 = [v71 layoutItems];
  v59 = [v58 countByEnumeratingWithState:&v79 objects:v99 count:16];
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
          objc_enumerationMutation(v58);
        }

        v64 = [v76 objectForKey:*(*(&v79 + 1) + 8 * m)];
        if (!v64)
        {
          v68 = [MEMORY[0x1E696AAA8] currentHandler];
          [v68 handleFailureInMethod:a2 object:v73 file:@"PXPlacesMapInPlaceUpdatePlan.m" lineNumber:135 description:@"annotation for layout item cannot be nil"];
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
          v67 = [(PXPlacesMapUpdatePlanResultImpl *)v78 annotationsWithUpdatedIndex];
          [v67 addObject:v66];
        }

        ++v61;
LABEL_67:
      }

      v60 = [v58 countByEnumeratingWithState:&v79 objects:v99 count:16];
    }

    while (v60);
  }

  [(dispatch_semaphore_t *)v73 setCurrentLayoutResult:v71];
  [(dispatch_semaphore_t *)v73 setCurrentLayoutItemToAnnotationTable:v76];
  dispatch_semaphore_signal(v73[1]);

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