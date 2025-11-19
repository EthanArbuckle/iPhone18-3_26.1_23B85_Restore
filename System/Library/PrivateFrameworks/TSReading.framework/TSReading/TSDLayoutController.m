@interface TSDLayoutController
+ (void)temporaryLayoutControllerForInfos:(id)a3 useInBlock:(id)a4;
- (CGRect)rectOfTopLevelLayouts;
- (TSDLayoutController)initWithCanvas:(id)a3;
- (id)ancestorLayoutOfLayout:(id)a3 orDelegateConformingToProtocol:(id)a4;
- (id)layoutForInfo:(id)a3;
- (id)layoutForInfo:(id)a3 childOfLayout:(id)a4;
- (id)layoutGeometryProviderForLayout:(id)a3;
- (id)layoutsForInfo:(id)a3;
- (id)layoutsForInfos:(id)a3;
- (id)sortLayoutsForDependencies:(id)a3;
- (id)validatedLayoutForInfo:(id)a3;
- (id)validatedLayoutForInfo:(id)a3 childOfLayout:(id)a4;
- (id)validatedLayoutsForInfo:(id)a3;
- (void)dealloc;
- (void)i_registerLayout:(id)a3;
- (void)i_removeAllLayouts;
- (void)i_unregisterLayout:(id)a3;
- (void)invalidateChildrenOfLayout:(id)a3;
- (void)invalidateLayout:(id)a3;
- (void)invalidateLayoutForRecreation:(id)a3;
- (void)preregisterLayout:(id)a3;
- (void)setInfos:(id)a3;
- (void)unregisterLayout:(id)a3;
- (void)validateLayoutWithDependencies:(id)a3;
- (void)validateLayouts;
- (void)validateLayouts:(id)a3;
- (void)validateLayoutsWithDependencies:(id)a3;
- (void)validateOrderedLayouts:(id)a3;
@end

@implementation TSDLayoutController

- (TSDLayoutController)initWithCanvas:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = TSDLayoutController;
  v6 = [(TSDLayoutController *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mCanvas, a3);
    v8 = [[TSDRootLayout alloc] initWithLayoutController:v7];
    mRootLayout = v7->mRootLayout;
    v7->mRootLayout = v8;

    v7->mLayoutsByInfo = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mInvalidLayouts = v7->mInvalidLayouts;
    v7->mInvalidLayouts = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mInvalidChildrenLayouts = v7->mInvalidChildrenLayouts;
    v7->mInvalidChildrenLayouts = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mLayoutsNeedingRecreating = v7->mLayoutsNeedingRecreating;
    v7->mLayoutsNeedingRecreating = v14;

    if ([v5 isCanvasInteractive])
    {
      v16 = TSDLayoutControllerAllInteractiveControllers;
      if (!TSDLayoutControllerAllInteractiveControllers)
      {
        v17 = objc_alloc_init(MEMORY[0x277D6C310]);
        v18 = TSDLayoutControllerAllInteractiveControllers;
        TSDLayoutControllerAllInteractiveControllers = v17;

        v16 = TSDLayoutControllerAllInteractiveControllers;
      }

      [v16 addObject:v7];
    }
  }

  return v7;
}

- (void)dealloc
{
  mCanvas = self->mCanvas;
  self->mCanvas = 0;

  [TSDLayoutControllerAllInteractiveControllers removeObject:self];
  [(TSDAbstractLayout *)self->mRootLayout setChildren:0];
  mRootLayout = self->mRootLayout;
  self->mRootLayout = 0;

  mInvalidLayouts = self->mInvalidLayouts;
  self->mInvalidLayouts = 0;

  mInvalidChildrenLayouts = self->mInvalidChildrenLayouts;
  self->mInvalidChildrenLayouts = 0;

  mLayoutsNeedingRecreating = self->mLayoutsNeedingRecreating;
  self->mLayoutsNeedingRecreating = 0;

  mLayoutsByInfo = self->mLayoutsByInfo;
  if (mLayoutsByInfo)
  {
    CFRelease(mLayoutsByInfo);
    self->mLayoutsByInfo = 0;
  }

  v9.receiver = self;
  v9.super_class = TSDLayoutController;
  [(TSDLayoutController *)&v9 dealloc];
}

+ (void)temporaryLayoutControllerForInfos:(id)a3 useInBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [[TSDCanvas alloc] initForTemporaryLayout];
  v7 = [v10 layoutController];
  [v7 setInfos:v6];

  v8 = [v10 layoutController];
  [v8 validateLayouts];

  v9 = [v10 layoutController];
  v5[2](v5, v9);

  [v10 teardown];
}

- (void)setInfos:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(TSDLayoutController *)self layoutsForInfo:v11, v18];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 allObjects];
          [v5 addObjectsFromArray:v15];
        }

        else
        {
          v15 = [objc_alloc(objc_msgSend(v11 "layoutClass"))];
          [v5 addObject:v15];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = [(TSDAbstractLayout *)self->mRootLayout children];
  v17 = [v16 isEqual:v5];

  if ((v17 & 1) == 0)
  {
    [(TSDAbstractLayout *)self->mRootLayout setChildren:v5];
    [(TSDCanvas *)self->mCanvas layoutInvalidated];
  }

  [v5 makeObjectsPerformSelector:{sel_updateChildrenFromInfo, v18}];
}

- (void)invalidateLayout:(id)a3
{
  if (self->mValidatingLayout != a3)
  {
    [(NSMutableSet *)self->mInvalidLayouts addObject:?];
    mCanvas = self->mCanvas;

    [(TSDCanvas *)mCanvas layoutInvalidated];
  }
}

- (void)invalidateChildrenOfLayout:(id)a3
{
  [(NSMutableSet *)self->mInvalidChildrenLayouts addObject:a3];
  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas layoutInvalidated];
}

- (void)invalidateLayoutForRecreation:(id)a3
{
  [(NSMutableSet *)self->mLayoutsNeedingRecreating addObject:a3];
  mCanvas = self->mCanvas;

  [(TSDCanvas *)mCanvas layoutInvalidated];
}

- (id)layoutForInfo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TSDLayoutController *)self layoutsForInfo:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v8 || [*(*(&v14 + 1) + 8 * i) orderedBefore:v8])
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)layoutsForInfo:(id)a3
{
  mLayoutsByInfo = self->mLayoutsByInfo;
  if (mLayoutsByInfo)
  {
    mLayoutsByInfo = CFDictionaryGetValue(mLayoutsByInfo, a3);
    v3 = vars8;
  }

  return mLayoutsByInfo;
}

- (id)layoutsForInfos:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(TSDLayoutController *)self layoutForInfo:*(*(&v17 + 1) + 8 * i)];
        objc_opt_class();
        v11 = TSUDynamicCast();
        v12 = v11;
        if (v11)
        {
          v13 = [v11 partitioner];
          v14 = [v13 i_layout];

          v10 = v14;
        }

        if (v10)
        {
          [v16 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v16;
}

- (id)layoutForInfo:(id)a3 childOfLayout:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(TSDLayoutController *)self layoutsForInfo:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 parent];

        if (v12 == v6)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (CGRect)rectOfTopLevelLayouts
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBF3A0];
  v2 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v4 = *(MEMORY[0x277CBF3A0] + 24);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(TSDAbstractLayout *)self->mRootLayout children];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v22 + 1) + 8 * v10) frameForCulling];
        v3 = TSDUnionRect(v3, v2, v5, v4, v11, v12, v13, v14);
        v2 = v15;
        v5 = v16;
        v4 = v17;
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = v3;
  v19 = v2;
  v20 = v5;
  v21 = v4;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)validateLayouts
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->mLayoutsNeedingRecreating;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 info];
        v11 = objc_alloc([v10 layoutClass]);
        v12 = [v8 info];
        v13 = [v11 initWithInfo:v12];

        [(NSMutableSet *)self->mInvalidLayouts removeObject:v8];
        [(NSMutableSet *)self->mInvalidLayouts addObject:v13];
        v14 = [v8 parent];
        [v14 replaceChild:v8 with:v13];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->mLayoutsNeedingRecreating removeAllObjects];
  if ([(NSMutableSet *)self->mInvalidChildrenLayouts count])
  {
    v15 = [(NSMutableSet *)self->mInvalidChildrenLayouts copy];
    [(NSMutableSet *)self->mInvalidChildrenLayouts removeAllObjects];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        v20 = 0;
        do
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v30 + 1) + 8 * v20++) updateChildrenFromInfo];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v18);
    }

    if ([(NSMutableSet *)self->mInvalidChildrenLayouts intersectsSet:v16])
    {
      v21 = [MEMORY[0x277D6C290] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayoutController validateLayouts]"];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayoutController.m"];
      [v21 handleFailureInFunction:v22 file:v23 lineNumber:259 description:{@"one of these layouts had invalidateChildren while updating: %@", self->mInvalidChildrenLayouts}];
    }
  }

  while ([(NSMutableSet *)self->mInvalidLayouts count])
  {
    v24 = self->mInvalidLayouts;
    v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mInvalidLayouts = self->mInvalidLayouts;
    self->mInvalidLayouts = v25;

    [(TSDLayoutController *)self validateLayouts:v24];
    if ([(NSMutableSet *)self->mInvalidLayouts intersectsSet:v24])
    {
      v27 = [MEMORY[0x277D6C290] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayoutController validateLayouts]"];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayoutController.m"];
      [v27 handleFailureInFunction:v28 file:v29 lineNumber:271 description:{@"one of these layouts was invalidated while validating: %@", self->mInvalidLayouts}];
    }
  }
}

- (id)sortLayoutsForDependencies:(id)a3
{
  v94 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 mutableCopy];
  v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [objc_alloc(MEMORY[0x277D6C348]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v59 = v3;
  v6 = [objc_alloc(MEMORY[0x277D6C348]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v85;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v85 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v84 + 1) + 8 * i);
        v13 = [MEMORY[0x277CBEB58] set];
        [v5 setObject:v13 forUncopiedKey:v12];

        v14 = [MEMORY[0x277CBEB58] set];
        [v6 setObject:v14 forUncopiedKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v84 objects:v93 count:16];
    }

    while (v9);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v7;
  v60 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v60)
  {
    v58 = *v81;
    do
    {
      for (j = 0; j != v60; ++j)
      {
        if (*v81 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v80 + 1) + 8 * j);
        v17 = MEMORY[0x277CBEB58];
        v18 = [v16 dependentLayouts];
        v19 = [v17 setWithArray:v18];

        v20 = MEMORY[0x277CBEB58];
        v21 = [v16 reliedOnLayouts];
        v22 = [v20 setWithSet:v21];

        [v22 intersectSet:v59];
        [v19 intersectSet:v59];
        v62 = [v6 objectForKey:v16];
        [v62 unionSet:v19];
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v76 objects:v91 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v77;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v77 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [v6 objectForKey:*(*(&v76 + 1) + 8 * k)];
              [v28 addObject:v16];
            }

            v25 = [v23 countByEnumeratingWithState:&v76 objects:v91 count:16];
          }

          while (v25);
        }

        v61 = [v5 objectForKey:v16];
        [v61 unionSet:v23];
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v29 = v19;
        v30 = [v29 countByEnumeratingWithState:&v72 objects:v90 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v73;
          do
          {
            for (m = 0; m != v31; ++m)
            {
              if (*v73 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [v5 objectForKey:*(*(&v72 + 1) + 8 * m)];
              [v34 addObject:v16];
            }

            v31 = [v29 countByEnumeratingWithState:&v72 objects:v90 count:16];
          }

          while (v31);
        }
      }

      v60 = [obj countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v60);
  }

  v35 = [MEMORY[0x277CBEB58] set];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v36 = obj;
  v37 = [v36 countByEnumeratingWithState:&v68 objects:v89 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v69;
    do
    {
      for (n = 0; n != v38; ++n)
      {
        if (*v69 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v68 + 1) + 8 * n);
        v42 = [v5 objectForKey:v41];
        if (![v42 count])
        {
          [v35 addObject:v41];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v68 objects:v89 count:16];
    }

    while (v38);
  }

  if ([v36 count])
  {
    v63 = v36;
    while ([v35 count])
    {
      v43 = [v35 anyObject];
      [v35 removeObject:v43];
      [v36 removeObject:v43];
      [v56 addObject:v43];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v44 = [v6 objectForKey:v43];
      v45 = [v44 countByEnumeratingWithState:&v64 objects:v88 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v65;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v65 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v64 + 1) + 8 * ii);
            v50 = [v5 objectForKey:v49];
            if ([v50 count] == 1)
            {
              [v35 addObject:v49];
            }

            else
            {
              [v50 removeObject:v43];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v64 objects:v88 count:16];
        }

        while (v46);
      }

      v36 = v63;
      if (![v63 count])
      {
        goto LABEL_54;
      }
    }

    v51 = [MEMORY[0x277D6C290] currentHandler];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDLayoutController sortLayoutsForDependencies:]"];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDLayoutController.m"];
    [v51 handleFailureInFunction:v52 file:v53 lineNumber:334 description:@"Layout dependency loop"];

    v54 = [v36 allObjects];
    [v56 addObjectsFromArray:v54];
  }

LABEL_54:

  return v56;
}

- (void)validateOrderedLayouts:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 shouldValidate])
        {
          objc_storeStrong(&self->mValidatingLayout, v9);
          [v9 validate];
          mValidatingLayout = self->mValidatingLayout;
          self->mValidatingLayout = 0;

          [(NSMutableSet *)self->mInvalidLayouts removeObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)validateLayouts:(id)a3
{
  v4 = [(TSDLayoutController *)self sortLayoutsForDependencies:a3];
  [(TSDLayoutController *)self validateOrderedLayouts:v4];
}

- (void)validateLayoutsWithDependencies:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v21 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
        do
        {
          [v7 removeAllObjects];
          [v6 i_accumulateLayoutsIntoSet:v7];
          if (![(NSMutableSet *)self->mInvalidChildrenLayouts count])
          {
            break;
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (!v9)
          {

            break;
          }

          v10 = v9;
          v11 = 0;
          v12 = *v26;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v25 + 1) + 8 * j);
              if ([(NSMutableSet *)self->mInvalidChildrenLayouts containsObject:v14])
              {
                [v14 updateChildrenFromInfo];
                [(NSMutableSet *)self->mInvalidChildrenLayouts removeObject:v14];
                v11 = 1;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }

        while ((v11 & 1) != 0);
        [v22 unionSet:v7];

        objc_autoreleasePoolPop(context);
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  [(TSDLayoutController *)self validateLayouts:v22];
  v15 = [(TSDCanvas *)self->mCanvas delegate];
  if (v15)
  {
    v16 = v15;
    v17 = [(TSDCanvas *)self->mCanvas delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(TSDCanvas *)self->mCanvas delegate];
      [v19 canvasDidValidateLayoutsWithDependencies:self->mCanvas];
    }
  }
}

- (void)validateLayoutWithDependencies:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(TSDLayoutController *)self validateLayoutsWithDependencies:v4];
}

- (id)validatedLayoutForInfo:(id)a3
{
  v3 = [(TSDLayoutController *)self validatedLayoutsForInfo:a3];
  v4 = [v3 anyObject];

  return v4;
}

- (id)validatedLayoutsForInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TSDLayoutController *)self layoutsForInfo:v4];
  if (!v5)
  {
    v6 = [objc_alloc(objc_msgSend(v4 "layoutClass"))];
    if (v6)
    {
      v5 = [MEMORY[0x277CBEB98] setWithObject:v6];
      [(TSDAbstractLayout *)self->mRootLayout addChild:v6];
      [(NSMutableSet *)self->mInvalidChildrenLayouts addObject:v6];
      [(NSMutableSet *)self->mInvalidLayouts addObject:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([(NSMutableSet *)self->mInvalidChildrenLayouts intersectsSet:v5])
  {
    [v5 makeObjectsPerformSelector:sel_updateChildrenFromInfo];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSMutableSet *)self->mInvalidChildrenLayouts removeObject:*(*(&v22 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }
  }

  if ([(NSMutableSet *)self->mInvalidLayouts intersectsSet:v5])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(TSDLayoutController *)self validateLayoutWithDependencies:*(*(&v18 + 1) + 8 * j), v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (id)validatedLayoutForInfo:(id)a3 childOfLayout:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(TSDLayoutController *)self validatedLayoutsForInfo:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 parent];

        if (v12 == v6)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)i_registerLayout:(id)a3
{
  value = a3;
  [value willBeAddedToLayoutController:self];
  if (value && self->mLayoutsByInfo)
  {
    v4 = [value info];
    if (v4)
    {
      v5 = CFDictionaryGetValue(self->mLayoutsByInfo, v4);
      if (v5)
      {
        Mutable = v5;
        CFRetain(v5);
      }

      else
      {
        Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
        CFDictionarySetValue(self->mLayoutsByInfo, v4, Mutable);
      }

      CFSetAddValue(Mutable, value);
      CFRelease(Mutable);
    }

    v7 = [(TSDCanvas *)self->mCanvas canvasController];
    [v7 i_layoutRegistered:value];
  }

  [(TSDCanvas *)self->mCanvas layoutInvalidated];
  [value wasAddedToLayoutController:self];
}

- (void)i_unregisterLayout:(id)a3
{
  value = a3;
  [value willBeRemovedFromLayoutController:self];
  if (value && self->mLayoutsByInfo)
  {
    v4 = [value info];
    if (v4)
    {
      v5 = CFDictionaryGetValue(self->mLayoutsByInfo, v4);
      if (v5)
      {
        v6 = v5;
        CFSetRemoveValue(v5, value);
        if (!CFSetGetCount(v6))
        {
          CFDictionaryRemoveValue(self->mLayoutsByInfo, v4);
        }
      }
    }

    v7 = [(TSDCanvas *)self->mCanvas canvasController];
    [v7 i_layoutUnregistered:value];
  }

  [(TSDCanvas *)self->mCanvas layoutInvalidated];
  [(NSMutableSet *)self->mInvalidLayouts removeObject:value];
  [(NSMutableSet *)self->mInvalidChildrenLayouts removeObject:value];
  [value wasRemovedFromLayoutController:self];
}

- (void)i_removeAllLayouts
{
  mRootLayout = self->mRootLayout;
  v4 = [MEMORY[0x277CBEA60] array];
  [(TSDAbstractLayout *)mRootLayout setChildren:v4];

  CFDictionaryRemoveAllValues(self->mLayoutsByInfo);
  [(NSMutableSet *)self->mInvalidLayouts removeAllObjects];
  mInvalidChildrenLayouts = self->mInvalidChildrenLayouts;

  [(NSMutableSet *)mInvalidChildrenLayouts removeAllObjects];
}

- (id)layoutGeometryProviderForLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 parent];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v7 = TSUProtocolCast();
      if (v7)
      {
        break;
      }

      v8 = [v6 parent];

      v6 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v10 = v7;
  }

  else
  {
LABEL_5:
    v9 = [(TSDLayoutController *)self canvas];
    v10 = [v9 layoutGeometryProviderForLayout:v4];

    v6 = 0;
  }

  return v10;
}

- (id)ancestorLayoutOfLayout:(id)a3 orDelegateConformingToProtocol:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 parent];
    if (v8)
    {
      v9 = v8;
      while (1)
      {
        v10 = [v9 delegateConformingToProtocol:v7 forLayout:v6];
        if (v10)
        {
          v12 = v10;
          v11 = v9;
          goto LABEL_16;
        }

        if ([v9 conformsToProtocol:v7])
        {
          break;
        }

        v11 = [v9 parent];

        v9 = v11;
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v11 = v9;
      v12 = v11;
    }

    else
    {
      v11 = 0;
LABEL_10:
      v13 = [(TSDLayoutController *)self canvas];
      v14 = [v13 canvasController];

      v15 = [v14 delegate];
      if (objc_opt_respondsToSelector())
      {
        v12 = [v15 interactiveCanvasController:v14 delegateConformingToProtocol:v7 forLayout:v6];
      }

      else
      {
        v12 = 0;
      }
    }

LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)preregisterLayout:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TSDLayoutController *)self i_registerLayout:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 children];
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

        [(TSDLayoutController *)self preregisterLayout:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)unregisterLayout:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TSDLayoutController *)self i_unregisterLayout:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 children];
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

        [(TSDLayoutController *)self unregisterLayout:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end