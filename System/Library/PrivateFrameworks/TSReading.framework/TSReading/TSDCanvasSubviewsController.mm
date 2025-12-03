@interface TSDCanvasSubviewsController
- (TSDCanvasSubviewsController)initWithLayerAndSubviewHost:(id)host;
- (id)p_topLevelReps;
- (id)updateAlternateLayersForViews;
- (void)addSubviews:(id)subviews;
- (void)dealloc;
- (void)p_recursivelyFindAlternateLayersForRep:(id)rep accumulatingLayers:(id)layers repsByChildLayer:(id)layer;
- (void)p_recursivelyFindChildViewsForRep:(id)rep accumulatingViews:(id)views accumulatingRepsByChildView:(id)view;
- (void)p_recursivelyFindHostingRepsForRep:(id)rep accumulatingHostingReps:(id)reps;
- (void)removeSubviews:(id)subviews;
- (void)syncPerformBlock:(id)block;
- (void)updateTopLevelLayersForTiling:(id)tiling;
- (void)updateViewsFromReps;
@end

@implementation TSDCanvasSubviewsController

- (TSDCanvasSubviewsController)initWithLayerAndSubviewHost:(id)host
{
  v9 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = TSDCanvasSubviewsController;
  v4 = [(TSDCanvasSubviewsController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_host = host;
    v4->_subviewLayers = objc_opt_new();
    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2);
    pthread_mutex_init(&v5->_mutex, &v8);
    pthread_mutexattr_destroy(&v8);
  }

  return v5;
}

- (void)dealloc
{
  if (!self->_hasBeenTornDown)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasSubviewsController dealloc]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasSubviewsController.m"), 80, @"Canvas Subviews Controller should have been torn down before dealloc"}];
  }

  self->_repChildViews = 0;
  self->_repsByChildView = 0;

  self->_alternateLayersForViews = 0;
  self->_repViewControllersByChildView = 0;

  self->_subviewLayers = 0;
  pthread_mutex_destroy(&self->_mutex);
  v5.receiver = self;
  v5.super_class = TSDCanvasSubviewsController;
  [(TSDCanvasSubviewsController *)&v5 dealloc];
}

- (id)p_topLevelReps
{
  if (self->_hasBeenTornDown)
  {
    return 0;
  }

  else
  {
    return [(TSDLayerAndSubviewHosting *)self->_host topLevelReps];
  }
}

- (void)p_recursivelyFindAlternateLayersForRep:(id)rep accumulatingLayers:(id)layers repsByChildLayer:(id)layer
{
  v31 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v20 = &unk_287E30CC8;
  v8 = TSUClassAndProtocolCast();
  if (v8)
  {
    v9 = v8;
    if (objc_opt_respondsToSelector())
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v9 addAlternateLayersForChildViewsToArray:{v10, &unk_287E30CC8}];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [layer setObject:v9 forUncopiedKey:*(*(&v25 + 1) + 8 * i)];
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v12);
      }

      [layers addObjectsFromArray:v10];
    }

    if (!TSUProtocolCast())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      childReps = [v9 childReps];
      v16 = [childReps countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(childReps);
            }

            [(TSDCanvasSubviewsController *)self p_recursivelyFindAlternateLayersForRep:*(*(&v21 + 1) + 8 * j) accumulatingLayers:layers repsByChildLayer:layer, v20];
          }

          v17 = [childReps countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v17);
      }
    }
  }
}

- (id)updateAlternateLayersForViews
{
  v30 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(MEMORY[0x277D6C368]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  p_topLevelReps = [(TSDCanvasSubviewsController *)self p_topLevelReps];
  v6 = [p_topLevelReps countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(p_topLevelReps);
        }

        [(TSDCanvasSubviewsController *)self p_recursivelyFindAlternateLayersForRep:*(*(&v24 + 1) + 8 * i) accumulatingLayers:array repsByChildLayer:v4];
      }

      v7 = [p_topLevelReps countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [array countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(array);
        }

        v14 = *(*(&v20 + 1) + 8 * j);
        v15 = [v4 objectForKey:v14];
        v16 = objc_opt_respondsToSelector();
        v17 = 1.0;
        if ((v16 & 1) == 0)
        {
          goto LABEL_22;
        }

        v18 = [v15 positionForChildViewAlternateLayer:{v14, 1.0}];
        if (v18 > 1)
        {
          if (v18 == 3)
          {
            v17 = -1.0;
LABEL_22:
            [v14 setZPosition:v17];
            continue;
          }

          v17 = 1.0;
          if (v18 == 2)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = 2.0;
          if (!v18)
          {
            goto LABEL_22;
          }

          v17 = 0.0;
          if (v18 == 1)
          {
            goto LABEL_22;
          }
        }
      }

      v11 = [array countByEnumeratingWithState:&v20 objects:v28 count:{16, v17}];
    }

    while (v11);
  }

  [(TSDCanvasSubviewsController *)self p_sortLayers:array];

  self->_alternateLayersForViews = array;
  return array;
}

- (void)p_recursivelyFindChildViewsForRep:(id)rep accumulatingViews:(id)views accumulatingRepsByChildView:(id)view
{
  v34 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v23 = &unk_287E30CC8;
  v8 = TSUClassAndProtocolCast();
  if (v8)
  {
    v9 = v8;
    if (objc_opt_respondsToSelector())
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v9 addChildViewsToArray:{v10, &unk_287E30CC8}];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [view setObject:v9 forUncopiedKey:*(*(&v28 + 1) + 8 * i)];
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }

      [views addObjectsFromArray:v10];
    }

    v15 = TSUProtocolCast();
    if (v15)
    {
      layerAndSubviewHost = [v15 layerAndSubviewHost];
      subviewsController = [layerAndSubviewHost subviewsController];
      [objc_msgSend(layerAndSubviewHost "subviewsController")];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      childReps = [v9 childReps];
      v19 = [childReps countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(childReps);
            }

            [(TSDCanvasSubviewsController *)self p_recursivelyFindChildViewsForRep:*(*(&v24 + 1) + 8 * j) accumulatingViews:views accumulatingRepsByChildView:view, v23];
          }

          v20 = [childReps countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)p_recursivelyFindHostingRepsForRep:(id)rep accumulatingHostingReps:(id)reps
{
  v20 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v7 = TSUClassAndProtocolCast();
  if (v7)
  {
    v8 = v7;
    if (([rep hasBeenRemoved] & 1) == 0)
    {
      v9 = TSUProtocolCast();
      if (v9)
      {

        [reps addObject:v9];
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        childReps = [v8 childReps];
        v11 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(childReps);
              }

              [(TSDCanvasSubviewsController *)self p_recursivelyFindHostingRepsForRep:*(*(&v15 + 1) + 8 * i) accumulatingHostingReps:reps];
            }

            v12 = [childReps countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

uint64_t __44__TSDCanvasSubviewsController_p_sortLayers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [a2 zPosition];
  v6 = v5;
  [a3 zPosition];
  if (v6 > v7)
  {
    return 1;
  }

  [a2 zPosition];
  v10 = v9;
  [a3 zPosition];
  if (v10 >= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t __46__TSDCanvasSubviewsController_p_sortSubviews___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(a2 "layer")];
  v6 = v5;
  [objc_msgSend(a3 "layer")];
  if (v6 > v7)
  {
    return 1;
  }

  [objc_msgSend(a2 "layer")];
  v10 = v9;
  [objc_msgSend(a3 "layer")];
  if (v10 >= v11)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)updateViewsFromReps
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277D6C368]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  p_topLevelReps = [(TSDCanvasSubviewsController *)self p_topLevelReps];
  v6 = [p_topLevelReps countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v70;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v70 != v8)
        {
          objc_enumerationMutation(p_topLevelReps);
        }

        [(TSDCanvasSubviewsController *)self p_recursivelyFindChildViewsForRep:*(*(&v69 + 1) + 8 * i) accumulatingViews:v3 accumulatingRepsByChildView:v4];
      }

      v7 = [p_topLevelReps countByEnumeratingWithState:&v69 objects:v77 count:16];
    }

    while (v7);
  }

  if (![(NSDictionary *)v4 count])
  {

    v4 = 0;
  }

  if ([v3 count])
  {
    v10 = [objc_alloc(MEMORY[0x277D6C370]) initWithArray:v3];
  }

  else
  {
    v10 = 0;
  }

  v48 = v4;
  containerView = [(TSDLayerAndSubviewHosting *)self->_host containerView];
  v50 = v10;
  containerViewController = [(TSDLayerAndSubviewHosting *)self->_host containerViewController];
  v11 = [(NSSet *)v10 isSubsetOfSet:self->_repChildViews];
  needsLayout = self->_needsLayout;
  self->_needsLayout = 0;
  obj = v3;
  if (!v11 || needsLayout)
  {
    v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v13 = [v3 countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (!v13)
    {
      goto LABEL_39;
    }

    v14 = v13;
    v15 = *v66;
    while (1)
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v65 + 1) + 8 * j);
        v18 = [(NSDictionary *)v48 objectForKey:v17, obj];
        if (objc_opt_respondsToSelector())
        {
          [v18 willAddChildView:v17 toView:containerView];
        }

        if (objc_opt_respondsToSelector())
        {
          containerManagesChildView = [v18 containerManagesChildView];
        }

        else
        {
          containerManagesChildView = 0;
        }

        v20 = 1.0;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_34;
        }

        v21 = [v18 positionForChildView:v17];
        if (v21 > 1)
        {
          if (v21 == 3)
          {
            v20 = -1.0;
LABEL_34:
            [objc_msgSend(v17 "layer")];
            goto LABEL_35;
          }

          v20 = 1.0;
          if (v21 == 2)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v20 = 2.0;
          if (!v21)
          {
            goto LABEL_34;
          }

          v20 = 0.0;
          if (v21 == 1)
          {
            goto LABEL_34;
          }
        }

LABEL_35:
        if ((containerManagesChildView & 1) == 0)
        {
          [v49 addObject:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (!v14)
      {
LABEL_39:
        [(TSDCanvasSubviewsController *)self p_sortSubviews:v49, obj];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v22 = [v49 countByEnumeratingWithState:&v61 objects:v75 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v62;
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v62 != v24)
              {
                objc_enumerationMutation(v49);
              }

              v26 = *(*(&v61 + 1) + 8 * k);
              if (containerViewController)
              {
                v27 = [(NSDictionary *)v48 objectForKey:*(*(&v61 + 1) + 8 * k)];
                if (objc_opt_respondsToSelector())
                {
                  v28 = [v27 viewControllerForView:v26];
                  if (v28 && v28 != containerViewController)
                  {
                    v30 = v28;
                    [containerViewController addChildViewController:v28];
                    repViewControllersByChildView = self->_repViewControllersByChildView;
                    if (!repViewControllersByChildView)
                    {
                      repViewControllersByChildView = objc_alloc_init(MEMORY[0x277D6C368]);
                      self->_repViewControllersByChildView = repViewControllersByChildView;
                    }

                    [(TSURetainedPointerKeyDictionary *)repViewControllersByChildView setObject:v30 forUncopiedKey:v26];
                  }
                }
              }

              [containerView addSubview:v26];
            }

            v23 = [v49 countByEnumeratingWithState:&v61 objects:v75 count:16];
          }

          while (v23);
        }

        break;
      }
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  repChildViews = self->_repChildViews;
  v33 = [(NSSet *)repChildViews countByEnumeratingWithState:&v57 objects:v74 count:16, obj];
  if (v33)
  {
    v34 = v33;
    v35 = *v58;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(repChildViews);
        }

        v37 = *(*(&v57 + 1) + 8 * m);
        if (![(NSSet *)v50 containsObject:v37])
        {
          v38 = [(NSDictionary *)self->_repsByChildView objectForKey:v37];
          if (objc_opt_respondsToSelector())
          {
            [v38 willRemoveChildView:v37];
          }

          if ((objc_opt_respondsToSelector() & 1) == 0 || ([v38 containerManagesChildView] & 1) == 0)
          {
            v39 = [(TSURetainedPointerKeyDictionary *)self->_repViewControllersByChildView objectForKey:v37];
            if (v39)
            {
              [v39 removeFromParentViewController];
              [(TSURetainedPointerKeyDictionary *)self->_repViewControllersByChildView removeObjectForKey:v37];
            }

            [v37 removeFromSuperview];
          }
        }
      }

      v34 = [(NSSet *)repChildViews countByEnumeratingWithState:&v57 objects:v74 count:16];
    }

    while (v34);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v40 = [(NSSet *)v50 countByEnumeratingWithState:&v53 objects:v73 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v54;
    do
    {
      for (n = 0; n != v41; ++n)
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(v50);
        }

        v44 = *(*(&v53 + 1) + 8 * n);
        if (![(NSSet *)self->_repChildViews containsObject:v44])
        {
          v45 = [(NSDictionary *)v48 objectForKey:v44];
          if (objc_opt_respondsToSelector())
          {
            [v45 didAddChildView:v44];
          }
        }
      }

      v41 = [(NSSet *)v50 countByEnumeratingWithState:&v53 objects:v73 count:16];
    }

    while (v41);
  }

  self->_repChildViews = v50;
  self->_repsByChildView = v48;
}

- (void)syncPerformBlock:(id)block
{
  if (block)
  {
    pthread_mutex_lock(&self->_mutex);
    (*(block + 2))(block);

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)updateTopLevelLayersForTiling:(id)tiling
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  p_topLevelReps = [(TSDCanvasSubviewsController *)self p_topLevelReps];
  v7 = [p_topLevelReps countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(p_topLevelReps);
        }

        [(TSDCanvasSubviewsController *)self p_recursivelyFindHostingRepsForRep:*(*(&v30 + 1) + 8 * v10++) accumulatingHostingReps:v5];
      }

      while (v8 != v10);
      v8 = [p_topLevelReps countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v5);
        }

        layerAndSubviewHost = [*(*(&v26 + 1) + 8 * v14) layerAndSubviewHost];
        if (layerAndSubviewHost)
        {
          [tiling addObject:{objc_msgSend(layerAndSubviewHost, "topLevelTilingLayer")}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v12);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__TSDCanvasSubviewsController_updateTopLevelLayersForTiling___block_invoke;
  v25[3] = &unk_279D47708;
  v25[4] = self;
  v25[5] = tiling;
  [(TSDCanvasSubviewsController *)self syncPerformBlock:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  alternateLayersForViews = self->_alternateLayersForViews;
  v17 = [(NSArray *)alternateLayersForViews countByEnumeratingWithState:&v21 objects:v34 count:16];
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
          objc_enumerationMutation(alternateLayersForViews);
        }

        [tiling removeObject:*(*(&v21 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [(NSArray *)alternateLayersForViews countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v18);
  }
}

uint64_t __61__TSDCanvasSubviewsController_updateTopLevelLayersForTiling___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 48);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
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

        [*(a1 + 40) removeObject:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)addSubviews:(id)subviews
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasSubviewsController addSubviews:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasSubviewsController.m"), 498, @"This operation must only be performed on the main thread."}];
  }

  containerView = [(TSDLayerAndSubviewHosting *)self->_host containerView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__TSDCanvasSubviewsController_addSubviews___block_invoke;
  v8[3] = &unk_279D47C18;
  v8[4] = containerView;
  v8[5] = subviews;
  v8[6] = self;
  [(TSDCanvasSubviewsController *)self syncPerformBlock:v8];
}

void __43__TSDCanvasSubviewsController_addSubviews___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(*(a1 + 32) "subviews")];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if (([v2 tsu_containsObjectIdenticalTo:v8] & 1) == 0)
        {
          [v2 addObject:v8];
        }

        v9 = [v8 layer];
        if (v9)
        {
          v10 = v9;
          if (([*(*(a1 + 48) + 48) tsu_containsObjectIdenticalTo:v9] & 1) == 0)
          {
            [*(*(a1 + 48) + 48) addObject:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  [*(a1 + 48) p_sortSubviews:v2];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) addSubview:*(*(&v15 + 1) + 8 * j)];
      }

      v12 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)removeSubviews:(id)subviews
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasSubviewsController removeSubviews:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasSubviewsController.m"), 533, @"This operation must only be performed on the main thread."}];
  }

  containerView = [(TSDLayerAndSubviewHosting *)self->_host containerView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__TSDCanvasSubviewsController_removeSubviews___block_invoke;
  v8[3] = &unk_279D47C18;
  v8[4] = subviews;
  v8[5] = containerView;
  v8[6] = self;
  [(TSDCanvasSubviewsController *)self syncPerformBlock:v8];
}

uint64_t __46__TSDCanvasSubviewsController_removeSubviews___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if ([v7 superview] && objc_msgSend(v7, "superview") != a1[5])
        {
          v8 = [MEMORY[0x277D6C290] currentHandler];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDCanvasSubviewsController removeSubviews:]_block_invoke"];
          [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCanvasSubviewsController.m"), 538, @"removing view %@ from %@; but superview is %@", v7, a1[5], objc_msgSend(v7, "superview")}];
        }

        [v7 removeFromSuperview];
        v10 = [v7 layer];
        if (v10)
        {
          [*(a1[6] + 48) removeObject:v10];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

@end