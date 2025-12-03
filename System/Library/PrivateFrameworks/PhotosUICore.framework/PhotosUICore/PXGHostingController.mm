@interface PXGHostingController
+ (OS_dispatch_queue)sharedQueue;
- (BOOL)engine:(id)engine shouldRenderLayout:(id)layout sprites:(id)sprites;
- (BOOL)layoutQueue_acceptSize:(id)size;
- (NSArray)presenters;
- (PXGHostingController)init;
- (PXGHostingController)initWithClientQueue:(id)queue layoutQueue:(id)layoutQueue initialConfiguration:(id)configuration;
- (PXGRenderFrame)lastFrame;
- (id)addPresenter;
- (void)_clientQueue_propagateConfigurationToEngine;
- (void)_dispatchFrame:(id)frame async:(BOOL)async toObserver:(id)observer;
- (void)_distributeFrame:(id)frame;
- (void)_layoutQueue_applyConfiguration;
- (void)_layoutQueue_performInitialEngineSetupIfNeeded;
- (void)_mainQueue_initialize;
- (void)_mainQueue_updateIsAppInactive;
- (void)_notePresentersDidChange;
- (void)clientQueue_presenterDidChange:(id)change;
- (void)dealloc;
- (void)engineSetNeedsUpdate:(id)update;
- (void)layoutQueue_skipFrameCount:(int64_t)count forProposedSize:(id)size;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)registerFrameObserver:(id)observer;
- (void)setLayoutQueue_configuration:(id)queue_configuration;
- (void)setLayoutQueue_isAppInactive:(BOOL)inactive;
- (void)unregisterFrameObserver:(id)observer;
@end

@implementation PXGHostingController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ApplicationStateObservationContext_243120 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGHostingController.m" lineNumber:508 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXGHostingController *)self _mainQueue_updateIsAppInactive];
    observableCopy = v11;
  }
}

- (BOOL)engine:(id)engine shouldRenderLayout:(id)layout sprites:(id)sprites
{
  v22 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  layoutCopy = layout;
  spritesCopy = sprites;
  dispatch_assert_queue_V2(self->_layoutQueue);
  layoutQueue_skipDegradedFramesCount = self->_layoutQueue_skipDegradedFramesCount;
  if (self->_layoutQueue_skipFramesCount <= 0)
  {
    if (layoutQueue_skipDegradedFramesCount < 1)
    {
      goto LABEL_9;
    }
  }

  else if (layoutQueue_skipDegradedFramesCount < 1)
  {
    goto LABEL_8;
  }

  *v18 = 0;
  v19 = v18;
  v20 = 0x2020000000;
  v21 = 0;
  entityManager = [(PXGEngine *)self->_layoutQueue_engine entityManager];
  loadingStatus = [entityManager loadingStatus];

  v14 = loadingStatus;
  states = [loadingStatus states];
  [layoutCopy visibleRect];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__PXGHostingController_engine_shouldRenderLayout_sprites___block_invoke;
  v17[3] = &unk_1E774A208;
  v17[4] = v18;
  v17[5] = states;
  [spritesCopy enumerateSpritesInRect:v17 usingBlock:?];
  if (v19[24] == 1)
  {
    PXGTungstenGetLog();
  }

  self->_layoutQueue_skipDegradedFramesCount = 0;

  _Block_object_dispose(v18, 8);
  if (self->_layoutQueue_skipFramesCount >= 1)
  {
LABEL_8:
    PXGTungstenGetLog();
  }

LABEL_9:

  return 1;
}

uint64_t __58__PXGHostingController_engine_shouldRenderLayout_sprites___block_invoke(uint64_t result, uint64_t a2, unsigned int **a3, _BYTE *a4)
{
  if (*a3[3] != 1)
  {
    v4 = *(*(result + 40) + **a3);
    v5 = v4 > 4;
    v6 = (1 << v4) & 0x16;
    if (!v5 && v6 != 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (void)engineSetNeedsUpdate:(id)update
{
  dispatch_assert_queue_V2(self->_layoutQueue);
  layoutQueue_scrollController = self->_layoutQueue_scrollController;

  [(PXGAsyncScrollController *)layoutQueue_scrollController setNeedsUpdate];
}

- (BOOL)layoutQueue_acceptSize:(id)size
{
  v7 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  dispatch_assert_queue_V2(self->_layoutQueue);
  layoutQueue_pendingProposedSize = self->_layoutQueue_pendingProposedSize;
  if (layoutQueue_pendingProposedSize == sizeCopy)
  {
    self->_layoutQueue_pendingProposedSize = 0;

    PXGTungstenGetLog();
  }

  return layoutQueue_pendingProposedSize == sizeCopy;
}

- (void)layoutQueue_skipFrameCount:(int64_t)count forProposedSize:(id)size
{
  layoutQueue = self->_layoutQueue;
  sizeCopy = size;
  dispatch_assert_queue_V2(layoutQueue);
  layoutQueue_pendingProposedSize = self->_layoutQueue_pendingProposedSize;

  if (layoutQueue_pendingProposedSize == sizeCopy)
  {
    ++self->_layoutQueue_skipFramesCount;
  }
}

- (void)_layoutQueue_performInitialEngineSetupIfNeeded
{
  if (!self->_layoutQueue_engine)
  {
    v2 = self->_layoutQueue_configuration;
    [(PXGConcreteEngineControllerConfiguration *)v2 referenceSize];
    [(PXGConcreteEngineControllerConfiguration *)v2 displayScale];
    PXSizeScale();
  }
}

void __70__PXGHostingController__layoutQueue_performInitialEngineSetupIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[PXGRenderFrame alloc] initWithFrameID:a3 pixelBuffer:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _distributeFrame:v5];
}

- (void)_layoutQueue_applyConfiguration
{
  dispatch_assert_queue_V2(self->_layoutQueue);
  [(PXGHostingController *)self _layoutQueue_performInitialEngineSetupIfNeeded];
  v3 = self->_layoutQueue_configuration;
  v4 = self->_layoutQueue_engine;
  if (v4)
  {
    layoutQueue_pendingRootLayoutPromise = self->_layoutQueue_pendingRootLayoutPromise;
    if (layoutQueue_pendingRootLayoutPromise)
    {
      v6 = layoutQueue_pendingRootLayoutPromise[2]();
      layoutQueue_placeholderLayout = v6;
      if (!v6)
      {
        layoutQueue_placeholderLayout = self->_layoutQueue_placeholderLayout;
      }

      [(PXGEngine *)v4 setLayout:layoutQueue_placeholderLayout];

      v8 = self->_layoutQueue_pendingRootLayoutPromise;
      self->_layoutQueue_pendingRootLayoutPromise = 0;

      layout = [(PXGEngine *)v4 layout];
      [(PXGConcreteEngineControllerConfiguration *)v3 referenceSize];
      [layout hostingControllerDidChangeReferenceSize:?];
    }

    viewEnvironment = [(PXGConcreteEngineControllerConfiguration *)v3 viewEnvironment];
    [(PXGEngine *)v4 setViewEnvironment:viewEnvironment];

    [(PXGEngine *)v4 setVisible:[(PXGConcreteEngineControllerConfiguration *)v3 isVisible]];
    backgroundColor = [(PXGConcreteEngineControllerConfiguration *)v3 backgroundColor];
    [(PXGPixelBufferMetalRenderDestination *)self->_layoutQueue_renderDestination setBackgroundColor:backgroundColor];

    [(PXGConcreteEngineControllerConfiguration *)v3 displayScale];
    if (v12 == 0.0)
    {
      v12 = 1.0;
    }

    [(PXGPixelBufferMetalRenderDestination *)self->_layoutQueue_renderDestination setScale:v12];
    layout2 = [(PXGEngine *)v4 layout];
    [(PXGConcreteEngineControllerConfiguration *)v3 displayScale];
    [layout2 setDisplayScale:?];
    v14 = self->_layoutQueue_scrollController;
    [(PXGAsyncScrollController *)v14 referenceSize];
    v16 = v15;
    v18 = v17;
    [(PXGConcreteEngineControllerConfiguration *)v3 referenceSize];
    v21 = v18 == v20 && v16 == v19;
    if (!v21 || ([(PXGPixelBufferMetalRenderDestination *)self->_layoutQueue_renderDestination renderSize], v23 = v22, v25 = v24, [(PXGConcreteEngineControllerConfiguration *)v3 pixelSize], v23 != v27) || v25 != v26)
    {
      v28 = [PXGHostingControllerProposedSize alloc];
      [(PXGConcreteEngineControllerConfiguration *)v3 referenceSize];
      v31 = [(PXGHostingControllerProposedSize *)v28 initWithReferenceSize:[(PXGConcreteEngineControllerConfiguration *)v3 deferReferenceSizeChanges]^ 1 shouldPreferAcceptingReferenceSize:self hostingController:v29, v30];
      layoutQueue_pendingProposedSize = self->_layoutQueue_pendingProposedSize;
      self->_layoutQueue_pendingProposedSize = v31;

      PXGTungstenGetLog();
    }

    [layout2 hostingControllerCanceledPreviouslyProposedReferenceSize];
    v33 = ![(PXGHostingController *)self layoutQueue_isAppInactive]&& [(PXGConcreteEngineControllerConfiguration *)v3 isVisible];
    [(PXGAsyncScrollController *)v14 setIsActive:v33];
  }
}

- (void)setLayoutQueue_isAppInactive:(BOOL)inactive
{
  if (self->_layoutQueue_isAppInactive != inactive)
  {
    self->_layoutQueue_isAppInactive = inactive;
    [(PXGHostingController *)self _layoutQueue_applyConfiguration];
  }
}

- (void)setLayoutQueue_configuration:(id)queue_configuration
{
  queue_configurationCopy = queue_configuration;
  version = [(PXGConcreteEngineControllerConfiguration *)self->_layoutQueue_configuration version];
  if (version != [queue_configurationCopy version])
  {
    rootLayoutPromise = [queue_configurationCopy rootLayoutPromise];

    if (rootLayoutPromise)
    {
      rootLayoutPromise2 = [queue_configurationCopy rootLayoutPromise];
      layoutQueue_pendingRootLayoutPromise = self->_layoutQueue_pendingRootLayoutPromise;
      self->_layoutQueue_pendingRootLayoutPromise = rootLayoutPromise2;

      [queue_configurationCopy setRootLayoutPromise:0];
    }

    objc_storeStrong(&self->_layoutQueue_configuration, queue_configuration);
    [(PXGHostingController *)self _layoutQueue_applyConfiguration];
  }
}

- (void)_clientQueue_propagateConfigurationToEngine
{
  v3 = [(PXGConcreteEngineControllerConfiguration *)self->_clientQueue_configuration copy];
  rootLayoutPromise = [(PXGConcreteEngineControllerConfiguration *)self->_clientQueue_configuration rootLayoutPromise];

  if (rootLayoutPromise)
  {
    [(PXGConcreteEngineControllerConfiguration *)self->_clientQueue_configuration setRootLayoutPromise:0];
  }

  objc_initWeak(&location, self);
  layoutQueue = self->_layoutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PXGHostingController__clientQueue_propagateConfigurationToEngine__block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v9, &location);
  v8 = v3;
  v6 = v3;
  dispatch_async(layoutQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__PXGHostingController__clientQueue_propagateConfigurationToEngine__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLayoutQueue_configuration:v1];
}

- (void)_dispatchFrame:(id)frame async:(BOOL)async toObserver:(id)observer
{
  asyncCopy = async;
  frameCopy = frame;
  observerCopy = observer;
  v10 = observerCopy;
  if (frameCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PXGHostingController__dispatchFrame_async_toObserver___block_invoke;
    aBlock[3] = &unk_1E774A1B8;
    v11 = observerCopy;
    v16 = v11;
    selfCopy = self;
    v18 = frameCopy;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (asyncCopy)
    {
      hostingControllerObservationQueue = [v11 hostingControllerObservationQueue];
      dispatch_async(hostingControllerObservationQueue, v13);
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

- (void)_distributeFrame:(id)frame
{
  v16 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_lastFrame, frame);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_lock_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [(PXGHostingController *)self _dispatchFrame:frameCopy async:1 toObserver:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterFrameObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerFrameObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];
  v4 = self->_lock_lastFrame;
  os_unfair_lock_unlock(&self->_lock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    hostingControllerObservationQueue = [observerCopy hostingControllerObservationQueue];
    v6 = hostingControllerObservationQueue != MEMORY[0x1E69E96A0];
  }

  else
  {
    v6 = 1;
  }

  [(PXGHostingController *)self _dispatchFrame:v4 async:v6 toObserver:observerCopy];
}

- (PXGRenderFrame)lastFrame
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_lastFrame;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)performChanges:(id)changes
{
  clientQueue = self->_clientQueue;
  changesCopy = changes;
  dispatch_assert_queue_V2(clientQueue);
  clientQueue_isPerformingChanges = self->_clientQueue_isPerformingChanges;
  self->_clientQueue_isPerformingChanges = 1;
  version = [(PXGConcreteEngineControllerConfiguration *)self->_clientQueue_configuration version];
  changesCopy[2](changesCopy, self->_clientQueue_configuration);

  version2 = [(PXGConcreteEngineControllerConfiguration *)self->_clientQueue_configuration version];
  self->_clientQueue_isPerformingChanges = clientQueue_isPerformingChanges;
  if (!clientQueue_isPerformingChanges && version != version2)
  {

    [(PXGHostingController *)self _clientQueue_propagateConfigurationToEngine];
  }
}

- (void)_notePresentersDidChange
{
  onPresentersDidChange = [(PXGHostingController *)self onPresentersDidChange];
  if (onPresentersDidChange)
  {
    v3 = onPresentersDidChange;
    onPresentersDidChange[2]();
    onPresentersDidChange = v3;
  }
}

- (void)clientQueue_presenterDidChange:(id)change
{
  dispatch_assert_queue_V2(self->_clientQueue);

  [(PXGHostingController *)self _notePresentersDidChange];
}

- (NSArray)presenters
{
  dispatch_assert_queue_V2(self->_clientQueue);
  [(NSHashTable *)self->_clientQueue_activePresenters allObjects];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

id __34__PXGHostingController_presenters__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (id)addPresenter
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v3 = objc_alloc_init(PXGConcreteHostingControllerPresenter);
  [(NSHashTable *)self->_clientQueue_activePresenters addObject:v3];
  [(PXGConcreteHostingControllerPresenter *)v3 setHostingController:self];
  [(PXGHostingController *)self _notePresentersDidChange];

  return v3;
}

- (void)dealloc
{
  v3 = self->_layoutQueue_engine;
  v4 = self->_layoutQueue;
  v5 = v4;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__PXGHostingController_dealloc__block_invoke;
    block[3] = &unk_1E774C620;
    v8 = v4;
    v9 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v6.receiver = self;
  v6.super_class = PXGHostingController;
  [(PXGHostingController *)&v6 dealloc];
}

void __31__PXGHostingController_dealloc__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PXGHostingController_dealloc__block_invoke_2;
  block[3] = &unk_1E774C648;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)_mainQueue_updateIsAppInactive
{
  mainQueue_applicationState = [(PXGHostingController *)self mainQueue_applicationState];
  v4 = [mainQueue_applicationState visibilityState] != 1;

  objc_initWeak(&location, self);
  layoutQueue = self->_layoutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXGHostingController__mainQueue_updateIsAppInactive__block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v7, &location);
  v8 = v4;
  dispatch_async(layoutQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __54__PXGHostingController__mainQueue_updateIsAppInactive__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLayoutQueue_isAppInactive:v1];
}

- (void)_mainQueue_initialize
{
  v3 = +[PXApplicationState sharedState];
  mainQueue_applicationState = self->_mainQueue_applicationState;
  self->_mainQueue_applicationState = v3;

  [(PXApplicationState *)self->_mainQueue_applicationState registerChangeObserver:self context:ApplicationStateObservationContext_243120];

  [(PXGHostingController *)self _mainQueue_updateIsAppInactive];
}

- (PXGHostingController)init
{
  v3 = +[PXGHostingController sharedQueue];
  v4 = [(PXGHostingController *)self initWithClientQueue:MEMORY[0x1E69E96A0] layoutQueue:v3];

  return v4;
}

- (PXGHostingController)initWithClientQueue:(id)queue layoutQueue:(id)layoutQueue initialConfiguration:(id)configuration
{
  queueCopy = queue;
  layoutQueueCopy = layoutQueue;
  configurationCopy = configuration;
  v26.receiver = self;
  v26.super_class = PXGHostingController;
  v12 = [(PXGHostingController *)&v26 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientQueue, queue);
    objc_storeStrong(&v13->_layoutQueue, layoutQueue);
    v14 = objc_alloc_init(PXGConcreteEngineControllerConfiguration);
    clientQueue_configuration = v13->_clientQueue_configuration;
    v13->_clientQueue_configuration = v14;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    clientQueue_activePresenters = v13->_clientQueue_activePresenters;
    v13->_clientQueue_activePresenters = weakObjectsHashTable;

    v18 = [(PXGConcreteEngineControllerConfiguration *)v13->_clientQueue_configuration copy];
    layoutQueue_configuration = v13->_layoutQueue_configuration;
    v13->_layoutQueue_configuration = v18;

    v13->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v13->_lock_observers;
    v13->_lock_observers = weakObjectsHashTable2;

    [(PXGHostingController *)v13 performChanges:configurationCopy];
    objc_initWeak(&location, v13);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__PXGHostingController_initWithClientQueue_layoutQueue_initialConfiguration___block_invoke;
    v23[3] = &unk_1E774C318;
    objc_copyWeak(&v24, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v23);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __77__PXGHostingController_initWithClientQueue_layoutQueue_initialConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_initialize];
}

+ (OS_dispatch_queue)sharedQueue
{
  if (sharedQueue_onceToken_243250 != -1)
  {
    dispatch_once(&sharedQueue_onceToken_243250, &__block_literal_global_243251);
  }

  v3 = sharedQueue_sharedQueue_243252;

  return v3;
}

void __35__PXGHostingController_sharedQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.hostingController.async-queue", attr);
  v2 = sharedQueue_sharedQueue_243252;
  sharedQueue_sharedQueue_243252 = v1;
}

@end