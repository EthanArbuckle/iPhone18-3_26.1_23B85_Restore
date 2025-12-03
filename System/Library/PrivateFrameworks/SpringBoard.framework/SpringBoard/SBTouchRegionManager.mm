@interface SBTouchRegionManager
+ (id)sharedInstance;
- (BOOL)_queue_shouldConsiderElementFullScreenModal:(id)modal;
- (CGAffineTransform)_queue_hitTestRegionTransformWithDisplayLayout:(SEL)layout;
- (CGAffineTransform)rootWindowTransform;
- (FBSDisplayLayoutMonitor)displayLayoutMonitor;
- (SBTouchRegionManager)init;
- (double)edgeTouchRegionBuffer;
- (double)touchRegionBuffer;
- (id)_initWithBKSInterface:(id)interface displayLayoutMonitor:(id)monitor;
- (id)_queue_calculateBorderHitTestRegionsWithDisplayLayout:(id)layout;
- (id)_queue_calculateHitTestRegionsFromTiledSceneRects:(id)rects;
- (id)_queue_calculateTouchRectsFromTiledSceneRects:(id)rects;
- (id)_queue_floatingHitTestRegionForLayout:(id)layout elementRect:(CGRect)rect;
- (id)_queue_fullscreenHitTestRegionForLayout:(id)layout;
- (id)_queue_transformHitTestRegions:(id)regions withDisplayLayout:(id)layout;
- (id)_queue_transformRegionsIfNeeded:(id)needed layout:(id)layout;
- (void)_queue_displayLayoutDidUpdate:(id)update chamoisEnabled:(BOOL)enabled;
- (void)_queue_handleChamoisOrFlexibleWindowingUILayout:(id)layout;
- (void)_queue_handleMedusaUILayout:(id)layout;
- (void)dealloc;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
- (void)setDisplayLayoutMonitor:(id)monitor;
- (void)setEdgeTouchRegionBuffer:(double)buffer;
- (void)setRootWindowTransform:(CGAffineTransform *)transform;
- (void)setTouchRegionBuffer:(double)buffer;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBTouchRegionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_26 != -1)
  {
    +[SBTouchRegionManager sharedInstance];
  }

  v3 = sharedInstance___shared_1;

  return v3;
}

uint64_t __38__SBTouchRegionManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBTouchRegionManager);
  v1 = sharedInstance___shared_1;
  sharedInstance___shared_1 = v0;

  return kdebug_trace();
}

- (SBTouchRegionManager)init
{
  v3 = objc_alloc_init(SBBackBoardServicesInterface);
  v4 = [MEMORY[0x277D0AD08] sharedMonitorForDisplayType:0];
  v5 = [(SBTouchRegionManager *)self _initWithBKSInterface:v3 displayLayoutMonitor:v4];

  return v5;
}

- (id)_initWithBKSInterface:(id)interface displayLayoutMonitor:(id)monitor
{
  interfaceCopy = interface;
  monitorCopy = monitor;
  v24.receiver = self;
  v24.super_class = SBTouchRegionManager;
  v9 = [(SBTouchRegionManager *)&v24 init];
  if (v9)
  {
    v10 = +[SBMedusaDomain rootSettings];
    medusa1oSettings = [v10 medusa1oSettings];
    medusaSettings = v9->_medusaSettings;
    v9->_medusaSettings = medusa1oSettings;

    [(PTSettings *)v9->_medusaSettings addKeyObserver:v9];
    v13 = +[SBScreenSharingOverlayUIDomain rootSettings];
    screenSharingSettings = v9->_screenSharingSettings;
    v9->_screenSharingSettings = v13;

    [(PTSettings *)v9->_screenSharingSettings addKeyObserver:v9];
    Serial = BSDispatchQueueCreateSerial();
    queue = v9->_queue;
    v9->_queue = Serial;

    objc_storeStrong(&v9->_queue_bksInterface, interface);
    [(SBMedusa1oSettings *)v9->_medusaSettings gapSwipeBuffer];
    v9->_queue_touchRegionBuffer = v17;
    [(SBScreenSharingOverlayUISettings *)v9->_screenSharingSettings edgeSwipeBuffer];
    v9->_queue_edgeTouchRegionBuffer = v18;
    objc_storeStrong(&v9->_queue_displayLayoutMonitor, monitor);
    [(FBSDisplayLayoutMonitor *)v9->_queue_displayLayoutMonitor addObserver:v9];
    v19 = MEMORY[0x277CBF2C0];
    v20 = *MEMORY[0x277CBF2C0];
    v21 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9->_rootWindowTransform.a = *MEMORY[0x277CBF2C0];
    *&v9->_rootWindowTransform.c = v21;
    v22 = *(v19 + 32);
    *&v9->_rootWindowTransform.tx = v22;
    *&v9->_queue_rootWindowTransform.a = v20;
    *&v9->_queue_rootWindowTransform.c = v21;
    *&v9->_queue_rootWindowTransform.tx = v22;
  }

  return v9;
}

- (void)dealloc
{
  v3 = self->_queue;
  v4 = self->_queue_bksInterface;
  v5 = self->_queue_displayLayoutMonitor;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SBTouchRegionManager_dealloc__block_invoke;
  block[3] = &unk_2783A8ED8;
  v11 = v4;
  v12 = v5;
  v13 = v3;
  v6 = v3;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);

  v9.receiver = self;
  v9.super_class = SBTouchRegionManager;
  [(SBTouchRegionManager *)&v9 dealloc];
}

id __31__SBTouchRegionManager_dealloc__block_invoke()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  return objc_opt_self();
}

- (double)touchRegionBuffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SBTouchRegionManager_touchRegionBuffer__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __41__SBTouchRegionManager_touchRegionBuffer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setTouchRegionBuffer:(double)buffer
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SBTouchRegionManager_setTouchRegionBuffer___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  *&v4[5] = buffer;
  dispatch_async(queue, v4);
}

double __45__SBTouchRegionManager_setTouchRegionBuffer___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 96) = result;
  return result;
}

- (double)edgeTouchRegionBuffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SBTouchRegionManager_edgeTouchRegionBuffer__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __45__SBTouchRegionManager_edgeTouchRegionBuffer__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setEdgeTouchRegionBuffer:(double)buffer
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SBTouchRegionManager_setEdgeTouchRegionBuffer___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  *&v4[5] = buffer;
  dispatch_async(queue, v4);
}

double __49__SBTouchRegionManager_setEdgeTouchRegionBuffer___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 104) = result;
  return result;
}

- (void)setDisplayLayoutMonitor:(id)monitor
{
  monitorCopy = monitor;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SBTouchRegionManager_setDisplayLayoutMonitor___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = monitorCopy;
  selfCopy = self;
  v6 = monitorCopy;
  dispatch_async(queue, v7);
}

void *__48__SBTouchRegionManager_setDisplayLayoutMonitor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(*(a1 + 40) + 24);
  if (v2 != result)
  {
    [result removeObserver:?];
    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
    v4 = *(*(a1 + 40) + 24);

    return [v4 addObserver:?];
  }

  return result;
}

- (void)setRootWindowTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v5;
  *&t1.tx = *&transform->tx;
  v6 = *&self->_rootWindowTransform.c;
  *&t2.a = *&self->_rootWindowTransform.a;
  *&t2.c = v6;
  *&t2.tx = *&self->_rootWindowTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v7 = *&transform->a;
    v8 = *&transform->tx;
    *&self->_rootWindowTransform.c = *&transform->c;
    *&self->_rootWindowTransform.tx = v8;
    *&self->_rootWindowTransform.a = v7;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__SBTouchRegionManager_setRootWindowTransform___block_invoke;
    block[3] = &unk_2783AF078;
    block[4] = self;
    v10 = *&transform->c;
    v12 = *&transform->a;
    v13 = v10;
    v14 = *&transform->tx;
    dispatch_async(queue, block);
  }
}

void __47__SBTouchRegionManager_setRootWindowTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v2[4] = *(a1 + 56);
  v2[5] = v4;
  v2[3] = v3;
  v5 = [*(*(a1 + 32) + 24) currentLayout];
  v6 = [v5 display];
  v7 = [v6 identity];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBTouchRegionManager_setRootWindowTransform___block_invoke_2;
  block[3] = &unk_2783A8ED8;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__SBTouchRegionManager_setRootWindowTransform___block_invoke_2(void *a1)
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 windowSceneForDisplayIdentity:a1[4]];

  v4 = [v3 switcherController];
  v5 = [v4 windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  v8 = a1[5];
  v7 = a1[6];
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBTouchRegionManager_setRootWindowTransform___block_invoke_3;
  block[3] = &unk_2783A97D8;
  block[4] = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, block);
}

- (FBSDisplayLayoutMonitor)displayLayoutMonitor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SBTouchRegionManager_displayLayoutMonitor__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_queue_calculateTouchRectsFromTiledSceneRects:(id)rects
{
  v67 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  queue_touchRegionBuffer = self->_queue_touchRegionBuffer;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = rectsCopy;
  v35 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v35)
  {
    v34 = *v61;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v61 != v34)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v60 + 1) + 8 * i) bs_CGRectValue];
        r2[0] = v7;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v59[0] = 0;
        v59[1] = v59;
        v59[2] = 0x2020000000;
        v59[3] = 0x7FEFFFFFFFFFFFFFLL;
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __70__SBTouchRegionManager__queue_calculateTouchRectsFromTiledSceneRects___block_invoke;
        v52[3] = &unk_2783B75B8;
        v54 = v59;
        v55 = r2[0];
        v56 = v9;
        v57 = v11;
        v58 = v13;
        v15 = v14;
        v53 = v15;
        [obj enumerateObjectsUsingBlock:v52];
        if ([v15 count])
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __70__SBTouchRegionManager__queue_calculateTouchRectsFromTiledSceneRects___block_invoke_2;
          v45[3] = &unk_2783B75E0;
          v47 = r2[0];
          v48 = v9;
          v49 = v11;
          v50 = v13;
          v51 = queue_touchRegionBuffer;
          v46 = v5;
          [v15 enumerateObjectsUsingBlock:v45];
        }

        v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v17 = obj;
        v18 = [v17 countByEnumeratingWithState:&v41 objects:v65 count:16];
        if (v18)
        {
          v19 = *v42;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v42 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v41 + 1) + 8 * j);
              [v21 bs_CGRectValue];
              if (BSFloatLessThanFloat() && BSFloatGreaterThanFloat())
              {
                [v16 removeAllObjects];
                [v16 addObject:v21];
              }

              else if (BSFloatEqualToFloat())
              {
                [v16 addObject:v21];
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v41 objects:v65 count:16];
          }

          while (v18);
        }

        v39 = 0u;
        v40 = 0u;
        memset(&r2[1], 0, 32);
        v22 = v16;
        v23 = [v22 countByEnumeratingWithState:&r2[1] objects:v64 count:16];
        if (v23)
        {
          v24 = *r2[3];
          do
          {
            for (k = 0; k != v23; ++k)
            {
              if (*r2[3] != v24)
              {
                objc_enumerationMutation(v22);
              }

              [*(r2[2] + 8 * k) bs_CGRectValue];
              x = v69.origin.x;
              v28 = v27;
              v69.origin.y = v9;
              *&v71.origin.x = r2[0];
              v71.origin.y = v9;
              v71.size.width = v11;
              v71.size.height = v13;
              v70 = CGRectIntersection(v69, v71);
              v29 = v70.origin.x;
              width = v70.size.width;
              if (!CGRectIsNull(v70))
              {
                v31 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v29, v9 + v13 - queue_touchRegionBuffer, width, queue_touchRegionBuffer}];
                [v5 addObject:v31];

                v32 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{x, v28, width, queue_touchRegionBuffer}];
                [v5 addObject:v32];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&r2[1] objects:v64 count:16];
          }

          while (v23);
        }

        _Block_object_dispose(v59, 8);
      }

      v35 = [v17 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v35);
  }

  return v5;
}

void __70__SBTouchRegionManager__queue_calculateTouchRectsFromTiledSceneRects___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 bs_CGRectValue];
  v4 = v3;
  if (BSFloatLessThanFloat() && BSFloatGreaterThanFloat())
  {
    *(*(*(a1 + 40) + 8) + 24) = v4;
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    [v6 removeAllObjects];
  }

  else
  {
    if (!BSFloatEqualToFloat())
    {
      goto LABEL_7;
    }

    v5 = (a1 + 32);
  }

  [*v5 addObject:v7];
LABEL_7:
}

void __70__SBTouchRegionManager__queue_calculateTouchRectsFromTiledSceneRects___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 bs_CGRectValue];
  v4 = v3;
  y = v14.origin.y;
  v14.origin.x = *(a1 + 40);
  v16.origin.y = *(a1 + 48);
  v16.size.width = *(a1 + 56);
  v16.size.height = *(a1 + 64);
  v16.origin.x = v14.origin.x;
  v15 = CGRectIntersection(v14, v16);
  v6 = v15.origin.y;
  height = v15.size.height;
  if (!CGRectIsNull(v15))
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{*(a1 + 40) + *(a1 + 56) - v8, v6, v8, height}];
    [v9 addObject:v10];

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v4, y, v8, height}];
    [v11 addObject:v12];
  }
}

- (id)_queue_calculateHitTestRegionsFromTiledSceneRects:(id)rects
{
  v63 = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  queue_touchRegionBuffer = self->_queue_touchRegionBuffer;
  v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v45 = [(SBTouchRegionManager *)self _queue_calculateTouchRectsFromTiledSceneRects:rectsCopy];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = rectsCopy;
  v5 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v5)
  {
    v6 = v5;
    v44 = *v58;
    v42 = *MEMORY[0x277CBF348];
    v43 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v57 + 1) + 8 * i) bs_CGRectValue];
        v9 = v8;
        v52 = v10;
        v12 = v11;
        v14 = v13;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v15 = v45;
        v16 = [v15 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (!v16)
        {

          v33 = v14;
          v34 = v43;
LABEL_43:
          v36 = v42;
          v35 = v12;
          goto LABEL_44;
        }

        v17 = v16;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = *v54;
        do
        {
          v23 = 0;
          do
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v53 + 1) + 8 * v23) bs_CGRectValue];
            v69.origin.x = v24;
            v69.origin.y = v25;
            v69.size.width = v26;
            v69.size.height = v27;
            v65.origin.x = v9;
            v65.origin.y = v52;
            v65.size.width = v12;
            v28 = v14;
            v65.size.height = v14;
            y = v69.origin.y;
            x = v69.origin.x;
            height = v69.size.height;
            width = v69.size.width;
            v66 = CGRectIntersection(v65, v69);
            v29 = v66.origin.x;
            v30 = v66.origin.y;
            if (CGRectIsNull(v66))
            {
              goto LABEL_12;
            }

            if (v9 == v29 && v52 == v30)
            {
              if (BSFloatEqualToFloat())
              {
                v20 = 1;
                goto LABEL_12;
              }

              v14 = v28;
              if (BSFloatEqualToFloat())
              {
                v18 = 1;
                goto LABEL_13;
              }
            }

            else
            {
              v67.origin.x = v9;
              v67.origin.y = v52;
              v67.size.width = v12;
              v67.size.height = v28;
              CGRectGetMaxX(v67);
              if (BSFloatEqualToFloat())
              {
                v21 = 1;
LABEL_12:
                v14 = v28;
                goto LABEL_13;
              }

              v68.origin.x = v9;
              v68.origin.y = v52;
              v68.size.width = v12;
              v68.size.height = v28;
              CGRectGetMaxY(v68);
              v14 = v28;
              if (BSFloatEqualToFloat())
              {
                v19 = 1;
                goto LABEL_13;
              }
            }

            [(SBTouchRegionManager *)a2 _queue_calculateHitTestRegionsFromTiledSceneRects:selfCopy, x, y, width, height, v9, v52, v12, v14];
LABEL_13:
            ++v23;
          }

          while (v17 != v23);
          v32 = [v15 countByEnumeratingWithState:&v53 objects:v61 count:16];
          v17 = v32;
        }

        while (v32);

        if (v18)
        {
          v33 = v14 - queue_touchRegionBuffer;
        }

        else
        {
          v33 = v14;
        }

        if (v18)
        {
          v34 = queue_touchRegionBuffer;
        }

        else
        {
          v34 = v43;
        }

        if (v19)
        {
          v33 = v33 - queue_touchRegionBuffer;
        }

        if ((v20 & 1) == 0)
        {
          v35 = v12;
          v36 = v42;
          if (v21)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        v35 = v12 - queue_touchRegionBuffer;
        v36 = queue_touchRegionBuffer;
        if ((v21 & 1) == 0)
        {
          v36 = queue_touchRegionBuffer;
          goto LABEL_44;
        }

LABEL_42:
        v35 = v35 - queue_touchRegionBuffer;
LABEL_44:
        v37 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:v9 exclusiveTouchSubRect:{v52, v12, v14, v36, v34, v35, v33}];
        [v46 addObject:v37];
      }

      v6 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v6);
  }

  return v46;
}

- (id)_queue_floatingHitTestRegionForLayout:(id)layout elementRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsEmpty(v21))
  {
    v10 = 0;
  }

  else
  {
    queue_touchRegionBuffer = self->_queue_touchRegionBuffer;
    [layoutCopy interfaceOrientation];
    if (BSInterfaceOrientationIsLandscape())
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectInset(v22, 0.0, -queue_touchRegionBuffer);
      v12 = v23.origin.x;
      v13 = v23.origin.y;
      v14 = v23.size.width;
      v15 = v23.size.height;
      v23.origin.x = *MEMORY[0x277CBF348];
      v23.origin.y = *(MEMORY[0x277CBF348] + 8);
      v24 = CGRectInset(v23, 0.0, queue_touchRegionBuffer);
      v16 = v24.origin.x;
      v17 = v24.size.height;
      v18 = v14;
    }

    else
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v26 = CGRectInset(v25, -queue_touchRegionBuffer, 0.0);
      v12 = v26.origin.x;
      v13 = v26.origin.y;
      v18 = v26.size.width;
      v17 = v26.size.height;
      v26.origin.x = *MEMORY[0x277CBF348];
      v26.origin.y = *(MEMORY[0x277CBF348] + 8);
      v27 = CGRectInset(v26, queue_touchRegionBuffer, 0.0);
      v16 = v27.origin.x;
      v14 = v27.size.width;
      queue_touchRegionBuffer = 0.0;
      v15 = v17;
    }

    v10 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:v12 exclusiveTouchSubRect:{v13, v18, v15, v16, queue_touchRegionBuffer, v14, v17}];
  }

  return v10;
}

- (id)_queue_transformRegionsIfNeeded:(id)needed layout:(id)layout
{
  neededCopy = needed;
  layoutCopy = layout;
  displayConfiguration = [layoutCopy displayConfiguration];
  if (![displayConfiguration isMainDisplay])
  {

    goto LABEL_9;
  }

  v10 = *&self->_queue_rootWindowTransform.c;
  *&v19.a = *&self->_queue_rootWindowTransform.a;
  *&v19.c = v10;
  *&v19.tx = *&self->_queue_rootWindowTransform.tx;
  IsIdentity = CGAffineTransformIsIdentity(&v19);

  if (IsIdentity)
  {
LABEL_9:
    v12 = neededCopy;
    goto LABEL_10;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [(SBTouchRegionManager *)self _queue_transformHitTestRegions:neededCopy withDisplayLayout:layoutCopy];
  v14 = [v13 count];
  if (v14 != [neededCopy count])
  {
    [(SBTouchRegionManager *)neededCopy _queue_transformRegionsIfNeeded:v13 layout:a2, self];
  }

  allObjects = [v13 allObjects];
  [v12 addObjectsFromArray:allObjects];

  v16 = [(SBTouchRegionManager *)self _queue_calculateBorderHitTestRegionsWithDisplayLayout:layoutCopy];
  if ([v16 count] != 4)
  {
    [(SBTouchRegionManager *)v16 _queue_transformRegionsIfNeeded:a2 layout:self];
  }

  allObjects2 = [v16 allObjects];
  [v12 addObjectsFromArray:allObjects2];

LABEL_10:

  return v12;
}

- (id)_queue_fullscreenHitTestRegionForLayout:(id)layout
{
  displayConfiguration = [layout displayConfiguration];
  [displayConfiguration bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:{v5, v7, v9, v11}];
  [v12 setExclusiveTouchNormalizedSubRect:{0.0, 0.0, 1.0, 1.0}];

  return v12;
}

- (void)_queue_displayLayoutDidUpdate:(id)update chamoisEnabled:(BOOL)enabled
{
  if (enabled)
  {
    [(SBTouchRegionManager *)self _queue_handleChamoisOrFlexibleWindowingUILayout:update];
  }

  else
  {
    [(SBTouchRegionManager *)self _queue_handleMedusaUILayout:update];
  }
}

- (BOOL)_queue_shouldConsiderElementFullScreenModal:(id)modal
{
  modalCopy = modal;
  layoutRole = [modalCopy layoutRole];
  if ((layoutRole - 3) >= 2)
  {
    if (layoutRole == 1)
    {
      identifier = [modalCopy identifier];
      v7 = [identifier isEqual:*MEMORY[0x277D66F10]];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    identifier2 = [modalCopy identifier];
    v6 = [identifier2 isEqual:*MEMORY[0x277D66F18]];

    v7 = v6 ^ 1;
  }

  return v7;
}

- (void)_queue_handleMedusaUILayout:(id)layout
{
  v49 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  displayConfiguration = [layoutCopy displayConfiguration];
  isMainDisplay = [displayConfiguration isMainDisplay];

  if (isMainDisplay)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v12 = *(MEMORY[0x277CBF3A0] + 24);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    elements = [layoutCopy elements];
    v14 = [elements countByEnumeratingWithState:&v44 objects:v48 count:16];
    v15 = v12;
    v16 = v11;
    v17 = v10;
    v18 = v9;
    v40 = v12;
    v41 = v11;
    v42 = v10;
    v43 = v9;
    if (v14)
    {
      v19 = v14;
      v15 = v12;
      v16 = v11;
      v17 = v10;
      v18 = v9;
      v20 = *v45;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(elements);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          if ([(SBTouchRegionManager *)self _queue_shouldConsiderElementFullScreenModal:v22, *&v40, *&v41, *&v42, *&v43])
          {
            [v7 removeAllObjects];

            v35 = [(SBTouchRegionManager *)self _queue_fullscreenHitTestRegionForLayout:layoutCopy];
            [v7 addObject:v35];
            goto LABEL_25;
          }

          layoutRole = [v22 layoutRole];
          if ((layoutRole - 7) < 2)
          {
            [v22 referenceFrame];
            v28 = [(SBTouchRegionManager *)self _queue_floatingHitTestRegionForLayout:layoutCopy elementRect:?];
            if (v28)
            {
              [v7 addObject:v28];
            }
          }

          else if (layoutRole == 2)
          {
            [v22 referenceFrame];
            v18 = v29;
            v17 = v30;
            v16 = v31;
            v15 = v32;
          }

          else if (layoutRole == 1)
          {
            [v22 referenceFrame];
            v9 = v24;
            v10 = v25;
            v11 = v26;
            v12 = v27;
          }
        }

        v19 = [elements countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v50.origin.y = v42;
    v50.origin.x = v43;
    v50.size.height = v40;
    v50.size.width = v41;
    v53.origin.x = v9;
    v53.origin.y = v10;
    v53.size.width = v11;
    v53.size.height = v12;
    if (!CGRectEqualToRect(v50, v53))
    {
      v33 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v9, v10, v11, v12}];
      [v8 addObject:v33];
    }

    v51.origin.x = v9;
    v51.origin.y = v10;
    v51.size.width = v11;
    v51.size.height = v12;
    v54.origin.x = v18;
    v54.origin.y = v17;
    v54.size.width = v16;
    v54.size.height = v15;
    if (!CGRectIntersectsRect(v51, v54))
    {
      v52.origin.y = v42;
      v52.origin.x = v43;
      v52.size.height = v40;
      v52.size.width = v41;
      v55.origin.x = v18;
      v55.origin.y = v17;
      v55.size.width = v16;
      v55.size.height = v15;
      if (!CGRectEqualToRect(v52, v55))
      {
        v34 = [MEMORY[0x277CCAE60] bs_valueWithCGRect:{v18, v17, v16, v15}];
        [v8 addObject:v34];
      }
    }

    v35 = [(SBTouchRegionManager *)self _queue_calculateHitTestRegionsFromTiledSceneRects:v8, *&v40, *&v41, *&v42, *&v43];
    allObjects = [v35 allObjects];
    [v7 addObjectsFromArray:allObjects];

LABEL_25:
    displayConfiguration2 = [layoutCopy displayConfiguration];
    hardwareIdentifier = [displayConfiguration2 hardwareIdentifier];

    v39 = [(SBTouchRegionManager *)self _queue_transformRegionsIfNeeded:v7 layout:layoutCopy];
    [(SBBackBoardServicesInterface *)self->_queue_bksInterface setHitTestRegions:v39 forDisplay:hardwareIdentifier];
  }
}

- (void)_queue_handleChamoisOrFlexibleWindowingUILayout:(id)layout
{
  v37 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  displayConfiguration = [layoutCopy displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  elements = [layoutCopy elements];
  v9 = [elements countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(elements);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if ([(SBTouchRegionManager *)self _queue_shouldConsiderElementFullScreenModal:v17])
        {
          [v7 removeAllObjects];
          goto LABEL_15;
        }

        if ([v17 isUIApplicationElement])
        {
          if ([v17 zOrderIndex])
          {
            [v17 referenceFrame];
            v39.origin.x = v12;
            v39.origin.y = v13;
            v39.size.width = v14;
            v39.size.height = v15;
            if (!CGRectEqualToRect(v38, v39))
            {
              [v7 addObject:v17];
            }
          }
        }
      }

      v10 = [elements countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  [v7 sortUsingComparator:&__block_literal_global_28];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v7;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v27 + 1) + 8 * j) referenceFrame];
        v24 = [(SBTouchRegionManager *)self _queue_floatingHitTestRegionForLayout:layoutCopy elementRect:?];
        if (v24)
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  v25 = [(SBTouchRegionManager *)self _queue_fullscreenHitTestRegionForLayout:layoutCopy];
  [v18 addObject:v25];
  v26 = [(SBTouchRegionManager *)self _queue_transformRegionsIfNeeded:v18 layout:layoutCopy];
  [(SBBackBoardServicesInterface *)self->_queue_bksInterface setHitTestRegions:v26 forDisplay:hardwareIdentifier];
}

uint64_t __72__SBTouchRegionManager__queue_handleChamoisOrFlexibleWindowingUILayout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 zOrderIndex];
  v6 = [v4 zOrderIndex];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (CGAffineTransform)_queue_hitTestRegionTransformWithDisplayLayout:(SEL)layout
{
  v6 = a4;
  displayConfiguration = [v6 displayConfiguration];
  [displayConfiguration bounds];
  v9 = v8;
  v11 = v10;

  v12 = v11 * self->_queue_rootWindowTransform.c + self->_queue_rootWindowTransform.a * v9;
  v13 = v11 * self->_queue_rootWindowTransform.d + self->_queue_rootWindowTransform.b * v9;
  displayConfiguration2 = [v6 displayConfiguration];
  [displayConfiguration2 pointScale];
  v16 = v15;

  displayConfiguration3 = [v6 displayConfiguration];

  [displayConfiguration3 nativeOrientation];
  v19 = v18;

  v20 = 6.28318531 - v19;
  memset(&v29.c, 0, 32);
  if (v19 == 0.0)
  {
    v20 = 0.0;
  }

  *&v29.a = 0uLL;
  CGAffineTransformMakeRotation(&v27, v20);
  UIIntegralTransform();
  result = CGAffineTransformScale(&v29, &v28, 1.0 / v16, 1.0 / v16);
  tx = self->_queue_rootWindowTransform.tx;
  ty = self->_queue_rootWindowTransform.ty;
  v24 = v29.tx + ty * v29.c + v29.a * tx;
  v25 = v29.ty + ty * v29.d + v29.b * tx;
  v26 = *&self->_queue_rootWindowTransform.c;
  *&retstr->a = *&self->_queue_rootWindowTransform.a;
  *&retstr->c = v26;
  retstr->tx = v24 + (v9 - v12) * 0.5;
  retstr->ty = v25 + (v11 - v13) * 0.5;
  return result;
}

- (id)_queue_transformHitTestRegions:(id)regions withDisplayLayout:(id)layout
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  regionsCopy = regions;
  [(SBTouchRegionManager *)self _queue_hitTestRegionTransformWithDisplayLayout:layout];
  v7 = [MEMORY[0x277CBEB58] set];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v12 = v15;
  v13 = v16;
  v10[2] = __73__SBTouchRegionManager__queue_transformHitTestRegions_withDisplayLayout___block_invoke;
  v10[3] = &unk_2783B7628;
  v14 = v17;
  v8 = v7;
  v11 = v8;
  [regionsCopy enumerateObjectsUsingBlock:v10];

  return v8;
}

void __73__SBTouchRegionManager__queue_transformHitTestRegions_withDisplayLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF0700];
  v4 = a2;
  v5 = [v3 alloc];
  [v4 rect];
  v6 = *(a1 + 56);
  *&v16.a = *(a1 + 40);
  *&v16.c = v6;
  *&v16.tx = *(a1 + 72);
  v18 = CGRectApplyAffineTransform(v17, &v16);
  v7 = [v5 initWithRect:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
  [v4 exclusiveTouchNormalizedSubRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v7 setExclusiveTouchNormalizedSubRect:{v9, v11, v13, v15}];
  [*(a1 + 32) addObject:v7];
}

- (id)_queue_calculateBorderHitTestRegionsWithDisplayLayout:(id)layout
{
  queue_edgeTouchRegionBuffer = self->_queue_edgeTouchRegionBuffer;
  layoutCopy = layout;
  displayConfiguration = [layoutCopy displayConfiguration];
  [displayConfiguration bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(SBTouchRegionManager *)self _queue_hitTestRegionTransformWithDisplayLayout:layoutCopy];
  v53.origin.x = v8;
  v48 = v12;
  v49 = v10;
  v53.origin.y = v10;
  v53.size.width = v12;
  v53.size.height = v14;
  v54 = CGRectApplyAffineTransform(v53, &v51);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v16 = [MEMORY[0x277CBEB58] set];
  v50 = v8;
  v46 = x;
  v17 = x - v8;
  v18 = MEMORY[0x277CBF3A0];
  if (x - v8 <= queue_edgeTouchRegionBuffer)
  {
    v20 = *MEMORY[0x277CBF3A0];
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v22 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v19 = v17 - queue_edgeTouchRegionBuffer;
    v20 = 0.0;
    v21 = 0.0;
    v22 = v14;
  }

  v23 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:v50 exclusiveTouchSubRect:{v10, v17, v14, v20, v21, v19, v22}];
  [v16 addObject:v23];
  v24 = v46 + width;
  v25 = v50 + v48 - (v46 + width);
  if (v25 <= queue_edgeTouchRegionBuffer)
  {
    v27 = *v18;
    v26 = v18[1];
    v28 = v18[3];
    v44 = v18[2];
  }

  else
  {
    v44 = v25 - queue_edgeTouchRegionBuffer;
    v26 = 0.0;
    v27 = queue_edgeTouchRegionBuffer;
    v28 = v14;
  }

  v29 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:v24 exclusiveTouchSubRect:{v10, v25, v14, v27, v26, v44, v28}];
  [v16 addObject:v29];
  v30 = y - v10;
  if (y - v10 <= queue_edgeTouchRegionBuffer)
  {
    v32 = *v18;
    v33 = v18[1];
    v35 = v18[2];
    v31 = v18[3];
    v34 = v48;
  }

  else
  {
    v31 = v30 - queue_edgeTouchRegionBuffer;
    v32 = 0.0;
    v33 = 0.0;
    v34 = v48;
    v35 = v48;
  }

  v36 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:v50 exclusiveTouchSubRect:{v49, v34, v30, v32, v33, v35, v31}];
  [v16 addObject:v36];
  v37 = v49 + v14 - (y + height);
  if (v37 <= queue_edgeTouchRegionBuffer)
  {
    v39 = *v18;
    queue_edgeTouchRegionBuffer = v18[1];
    v40 = v34;
    v34 = v18[2];
    v38 = v18[3];
  }

  else
  {
    v38 = v37 - queue_edgeTouchRegionBuffer;
    v39 = 0.0;
    v40 = v34;
  }

  v41 = [objc_alloc(MEMORY[0x277CF0700]) initWithRect:v50 exclusiveTouchSubRect:{y + height, v40, v37, v39, queue_edgeTouchRegionBuffer, v34, v38}];
  [v16 addObject:v41];

  return v16;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBTouchRegionManager_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  v8[3] = &unk_2783A92D8;
  v9 = layoutCopy;
  selfCopy = self;
  v7 = layoutCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __73__SBTouchRegionManager_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayConfiguration];
  v3 = [v2 identity];

  v4 = [SBApp windowSceneManager];
  v5 = [v4 windowSceneForDisplayIdentity:v3];

  v6 = [v5 switcherController];
  v7 = [v6 windowManagementContext];
  v8 = [v7 isChamoisOrFlexibleWindowing];

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SBTouchRegionManager_layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke_2;
  block[3] = &unk_2783A97D8;
  block[4] = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  if (self->_medusaSettings == settingsCopy && [keyCopy isEqual:@"gapSwipeBuffer"])
  {
    [(SBMedusa1oSettings *)self->_medusaSettings gapSwipeBuffer];
    [(SBTouchRegionManager *)self setTouchRegionBuffer:?];
  }

  else if (self->_screenSharingSettings == settingsCopy && [keyCopy isEqual:@"edgeSwipeBuffer"])
  {
    [(SBScreenSharingOverlayUISettings *)self->_screenSharingSettings edgeSwipeBuffer];
    [(SBTouchRegionManager *)self setEdgeTouchRegionBuffer:?];
  }
}

- (CGAffineTransform)rootWindowTransform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (void)_queue_calculateHitTestRegionsFromTiledSceneRects:(CGFloat)a3 .cold.1(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v20 = [MEMORY[0x277CCA890] currentHandler];
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  v21 = NSStringFromCGRect(v23);
  v24.origin.x = a7;
  v24.origin.y = a8;
  v24.size.width = a9;
  v24.size.height = a10;
  v22 = NSStringFromCGRect(v24);
  [v20 handleFailureInMethod:a1 object:a2 file:@"SBTouchRegionManager.m" lineNumber:408 description:{@"This touchRegion: %@ doesn't intersect this rect along the side: %@", v21, v22}];
}

- (void)_queue_transformRegionsIfNeeded:(uint64_t)a3 layout:(uint64_t)a4 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a3 object:a4 file:@"SBTouchRegionManager.m" lineNumber:472 description:{@"Number of hit test regions before and after applying the root window transform are mismatched [%lu][%lu]", objc_msgSend(a1, "count"), objc_msgSend(a2, "count")}];
}

- (void)_queue_transformRegionsIfNeeded:(uint64_t)a3 layout:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"SBTouchRegionManager.m" lineNumber:477 description:{@"Unexpected number of border hit test regions [%lu]", objc_msgSend(a1, "count")}];
}

@end