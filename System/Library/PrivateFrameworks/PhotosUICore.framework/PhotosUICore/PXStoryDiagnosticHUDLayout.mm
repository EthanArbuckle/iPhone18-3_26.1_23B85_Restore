@interface PXStoryDiagnosticHUDLayout
- (PXStoryDiagnosticHUDLayout)init;
- (PXStoryDiagnosticHUDLayout)initWithDataSource:(id)source;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axSpriteIndexes;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_enumerateDiagnosticHUDContentProvidersUsingBlock:(id)block;
- (void)_invalidateContent;
- (void)_invalidateControllers;
- (void)_invalidateModel;
- (void)_updateContent;
- (void)_updateControllers;
- (void)_updateHUDText;
- (void)_updateModel;
- (void)dealloc;
- (void)entityManager:(id)manager componentDidChange:(id)change;
- (void)entityManagerDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)safeAreaInsetsDidChange;
- (void)setAnimationController:(id)controller;
- (void)setModel:(id)model;
- (void)setRelatedController:(id)controller;
- (void)update;
@end

@implementation PXStoryDiagnosticHUDLayout

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  v15 = observableCopy;
  if (DataSourceObservationContext == context)
  {
    dataSource = [(PXStoryDiagnosticHUDLayout *)self dataSource];
    if (([dataSource HUDStoryModelChangeDescriptor] & change) != 0)
    {
      [(PXStoryDiagnosticHUDLayout *)self _invalidateModel];
    }

    if (([dataSource HUDContentChangeDescriptor] & change) != 0)
    {
      [(PXStoryDiagnosticHUDLayout *)self _invalidateContent];
    }

    goto LABEL_14;
  }

  if (ModelObservationContext_13722 != context)
  {
    if (RelatedControllerObservationContext != context && AnimationControllerObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:358 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    goto LABEL_8;
  }

  if ((change & 0x1E01) != 0)
  {
    dataSource2 = [(PXStoryDiagnosticHUDLayout *)self dataSource];
    isHUDVisible = [dataSource2 isHUDVisible];

    observableCopy = v15;
    if (isHUDVisible)
    {
LABEL_8:
      [(PXStoryDiagnosticHUDLayout *)self _invalidateContent];
LABEL_14:
      observableCopy = v15;
    }
  }
}

- (void)entityManager:(id)manager componentDidChange:(id)change
{
  managerCopy = manager;
  changeCopy = change;
  loadingStatus = [managerCopy loadingStatus];

  if (loadingStatus == changeCopy)
  {
    hasPendingContentUpdate = self->_hasPendingContentUpdate;

    if (hasPendingContentUpdate)
    {
      v9 = [(PXStoryDiagnosticHUDLayout *)self entityForSpriteAtIndex:self->_HUDTextSpriteIndex];
      loadingStatus2 = [managerCopy loadingStatus];
      LOBYTE(v9) = [loadingStatus2 stateForEntity:v9];

      if ((v9 - 2) <= 2u)
      {
        [(PXStoryDiagnosticHUDLayout *)self _invalidateContent];
        self->_hasPendingContentUpdate = 0;
      }
    }
  }

  else
  {
  }
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_HUDTextSpriteIndex == index)
  {
    hUDText = [(PXStoryDiagnosticHUDLayout *)self HUDText];
  }

  else
  {
    if (self->_badgeSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:321 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    hUDText = [(PXStoryDiagnosticHUDLayout *)self badgeText];
  }

  v9 = hUDText;

  return v9;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_HUDTextSpriteIndex == index)
  {
    hUDText = [(PXStoryDiagnosticHUDLayout *)self HUDText];
  }

  else
  {
    if (self->_badgeSpriteIndex != index)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:304 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    hUDText = [(PXStoryDiagnosticHUDLayout *)self badgeText];
  }

  v9 = hUDText;
  string = [hUDText string];

  return string;
}

- (void)_updateHUDText
{
  v29[2] = *MEMORY[0x1E69E9840];
  dataSource = [(PXStoryDiagnosticHUDLayout *)self dataSource];
  diagnosticHUDType = [dataSource diagnosticHUDType];
  v5 = diagnosticHUDType - 1;
  if ((diagnosticHUDType - 1) > 0x10 || (v6 = diagnosticHUDType, [dataSource diagnosticHUDContentProviderForType:diagnosticHUDType], v7 = objc_claimAutoreleasedReturnValue(), -[PXStoryDiagnosticHUDLayout contentSize](self, "contentSize"), objc_msgSend(v7, "diagnosticTextForHUDType:displaySize:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = &stru_1F1741150;
  }

  v27 = *MEMORY[0x1E69DB650];
  v9 = v27;
  yellowColor = [MEMORY[0x1E69DC888] yellowColor];
  v29[0] = yellowColor;
  v28 = *MEMORY[0x1E69DB648];
  v11 = v28;
  v12 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB950]];
  v29[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v27 count:2];

  v25[0] = v9;
  yellowColor2 = [MEMORY[0x1E69DC888] yellowColor];
  v25[1] = v11;
  v26[0] = yellowColor2;
  v15 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v26[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v17 = objc_alloc(MEMORY[0x1E696AD40]);
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v5 > 0x12)
  {
    v19 = @"None";
  }

  else
  {
    v19 = off_1E77401C0[v5];
  }

  v20 = v19;
  v21 = [v18 initWithFormat:@"%@\n\n", v20];
  v22 = [v17 initWithString:v21 attributes:v13];

  v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v16];
  [v22 appendAttributedString:v23];
  v24 = [v22 copy];
  [(PXStoryDiagnosticHUDLayout *)self setHUDText:v24];
}

- (void)_updateContent
{
  [(PXStoryDiagnosticHUDLayout *)self _updateHUDText];
  [(PXStoryDiagnosticHUDLayout *)self referenceSize];
  [(PXStoryDiagnosticHUDLayout *)self setContentSize:?];
  dataSource = [(PXStoryDiagnosticHUDLayout *)self dataSource];
  isHUDVisible = [dataSource isHUDVisible];
  if (isHUDVisible)
  {
    LOBYTE(isHUDVisible) = -[PXStoryDiagnosticHUDLayout _shouldDisplayContentForHUDType:](self, "_shouldDisplayContentForHUDType:", [dataSource diagnosticHUDType]);
  }

  self->_wantsHUDContentVisible = isHUDVisible;
  PXRectWithOriginAndSize();
}

- (void)_invalidateContent
{
  if ([(PXGLoadingStatusComponent *)self->_loadingStatusComponent stateForEntity:[(PXStoryDiagnosticHUDLayout *)self entityForSpriteAtIndex:self->_HUDTextSpriteIndex]]== 1)
  {
    self->_hasPendingContentUpdate = 1;
    return;
  }

  ++self->_contentVersion;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:230 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryDiagnosticHUDLayout *)self setNeedsUpdate];
  }
}

- (void)_updateControllers
{
  dataSource = [(PXStoryDiagnosticHUDLayout *)self dataSource];
  model = [(PXStoryDiagnosticHUDLayout *)self model];
  hUDRelatedController = [dataSource HUDRelatedController];
  [(PXStoryDiagnosticHUDLayout *)self setRelatedController:hUDRelatedController];

  animationController = [model animationController];
  [(PXStoryDiagnosticHUDLayout *)self setAnimationController:animationController];
}

- (void)_invalidateControllers
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout _invalidateControllers]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:212 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryDiagnosticHUDLayout *)self setNeedsUpdate];
  }
}

- (void)_updateModel
{
  dataSource = [(PXStoryDiagnosticHUDLayout *)self dataSource];
  hUDStoryModel = [dataSource HUDStoryModel];
  [(PXStoryDiagnosticHUDLayout *)self setModel:hUDStoryModel];
}

- (void)_invalidateModel
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout _invalidateModel]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:204 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryDiagnosticHUDLayout *)self setNeedsUpdate];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout update]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryDiagnosticHUDLayout *)self _updateModel];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout update]"];
        [currentHandler2 handleFailureInFunction:v10 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:193 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryDiagnosticHUDLayout *)self _updateControllers];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout update]"];
      [currentHandler3 handleFailureInFunction:v12 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryDiagnosticHUDLayout *)self _updateContent];
      v6 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v6)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryDiagnosticHUDLayout update]"];
      [currentHandler4 handleFailureInFunction:v14 file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:199 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v15.receiver = self;
  v15.super_class = PXStoryDiagnosticHUDLayout;
  [(PXStoryDiagnosticHUDLayout *)&v15 update];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryDiagnosticHUDLayout;
  [(PXStoryDiagnosticHUDLayout *)&v3 safeAreaInsetsDidChange];
  [(PXStoryDiagnosticHUDLayout *)self _invalidateContent];
}

- (void)entityManagerDidChange
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PXStoryDiagnosticHUDLayout;
  [(PXStoryDiagnosticHUDLayout *)&v10 entityManagerDidChange];
  entityManager = [(PXStoryDiagnosticHUDLayout *)self entityManager];
  loadingStatus = [entityManager loadingStatus];
  loadingStatusComponent = self->_loadingStatusComponent;
  self->_loadingStatusComponent = loadingStatus;

  entityManager2 = [(PXStoryDiagnosticHUDLayout *)self entityManager];
  entityManager3 = [(PXStoryDiagnosticHUDLayout *)self entityManager];
  loadingStatus2 = [entityManager3 loadingStatus];
  v11[0] = loadingStatus2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [entityManager2 registerObserver:self forComponents:v9];
}

- (void)_enumerateDiagnosticHUDContentProvidersUsingBlock:(id)block
{
  blockCopy = block;
  dataSource = [(PXStoryDiagnosticHUDLayout *)self dataSource];
  v6 = 0;
  v8 = 0;
  do
  {
    v7 = [dataSource diagnosticHUDContentProviderForType:v6];
    if (v7)
    {
      blockCopy[2](blockCopy, v7, v6, &v8);
    }

    if (v6 > 0x12)
    {
      break;
    }

    ++v6;
  }

  while ((v8 & 1) == 0);
}

- (void)setAnimationController:(id)controller
{
  controllerCopy = controller;
  animationController = self->_animationController;
  if (animationController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXStoryAnimationController *)animationController unregisterChangeObserver:self context:AnimationControllerObservationContext];
    objc_storeStrong(&self->_animationController, controller);
    [(PXStoryAnimationController *)self->_animationController registerChangeObserver:self context:AnimationControllerObservationContext];
    [(PXStoryDiagnosticHUDLayout *)self _invalidateContent];
    controllerCopy = v7;
  }
}

- (void)setRelatedController:(id)controller
{
  controllerCopy = controller;
  if (self->_relatedController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_relatedController, controller);
    [(PXStoryRelatedController *)self->_relatedController registerChangeObserver:self context:RelatedControllerObservationContext];
    controllerCopy = v6;
  }
}

- (void)setModel:(id)model
{
  modelCopy = model;
  model = self->_model;
  if (model != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)model unregisterChangeObserver:self context:ModelObservationContext_13722];
    objc_storeStrong(&self->_model, model);
    [(PXStoryModel *)self->_model registerChangeObserver:self context:ModelObservationContext_13722];
    [(PXStoryDiagnosticHUDLayout *)self _invalidateControllers];
    [(PXStoryDiagnosticHUDLayout *)self _invalidateContent];
    modelCopy = v7;
  }
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = PXStoryDiagnosticHUDLayout;
  [(PXStoryDiagnosticHUDLayout *)&v3 dealloc];
}

- (PXStoryDiagnosticHUDLayout)initWithDataSource:(id)source
{
  v21[2] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = PXStoryDiagnosticHUDLayout;
  v6 = [(PXStoryDiagnosticHUDLayout *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    hUDObservable = [(PXStoryDiagnosticHUDDataSource *)v7->_dataSource HUDObservable];
    [hUDObservable registerChangeObserver:v7 context:DataSourceObservationContext];

    v9 = [MEMORY[0x1E695DFF0] px_scheduledTimerWithTimeInterval:v7 weakTarget:sel__invalidateContent selector:0 userInfo:1 repeats:1.0];
    timer = v7->_timer;
    v7->_timer = v9;

    v7->_HUDTextSpriteIndex = [(PXStoryDiagnosticHUDLayout *)v7 addSpriteWithInitialState:&__block_literal_global_13764];
    v11 = +[PXStorySettings sharedInstance];
    if ([v11 allowsShowcase] && (objc_msgSend(v11, "disableShowcaseBadge") & 1) == 0)
    {
      v7->_badgeSpriteIndex = [(PXStoryDiagnosticHUDLayout *)v7 addSpriteWithInitialState:&__block_literal_global_10];
      v12 = objc_alloc(MEMORY[0x1E696AAB0]);
      v20[0] = *MEMORY[0x1E69DB650];
      redColor = [MEMORY[0x1E69DC888] redColor];
      v21[0] = redColor;
      v20[1] = *MEMORY[0x1E69DB648];
      v14 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:26.0 weight:*MEMORY[0x1E69DB950]];
      v21[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v16 = [v12 initWithString:@" * Showcase Mode * " attributes:v15];
      badgeText = v7->_badgeText;
      v7->_badgeText = v16;
    }

    else
    {
      v7->_badgeSpriteIndex = -1;
    }

    [(PXStoryDiagnosticHUDLayout *)v7 setContentSource:v7];
    [(PXStoryDiagnosticHUDLayout *)v7 _invalidateModel];
    [(PXStoryDiagnosticHUDLayout *)v7 _invalidateContent];
  }

  return v7;
}

__n128 __49__PXStoryDiagnosticHUDLayout_initWithDataSource___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v4;
  v5 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v5;
  v6 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v6;
  v7 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v7;
  result = *off_1E7722048;
  v9 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v9;
  v10 = *(a3 + 32);
  *(v10 + 1) = 3;
  *(v10 + 34) = 2;
  return result;
}

__n128 __49__PXStoryDiagnosticHUDLayout_initWithDataSource___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v4;
  v5 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v5;
  v6 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v6;
  v7 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v7;
  result = *off_1E7722048;
  v9 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v9;
  v10 = *(a3 + 32);
  *(v10 + 1) = 3;
  *(v10 + 34) = 2;
  return result;
}

- (PXStoryDiagnosticHUDLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDiagnosticHUDLayout.m" lineNumber:59 description:{@"%s is not available as initializer", "-[PXStoryDiagnosticHUDLayout init]"}];

  abort();
}

@end