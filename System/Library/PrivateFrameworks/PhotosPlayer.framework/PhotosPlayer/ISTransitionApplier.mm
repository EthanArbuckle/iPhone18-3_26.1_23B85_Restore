@interface ISTransitionApplier
+ (ISTransitionApplier)defaultApplier;
- (void)_applyAlpha:(double)alpha blurRadius:(double)radius toLayer:(id)layer withTransitionOptions:(id)options completion:(id)completion;
- (void)_applyScale:(double)scale toLayer:(id)layer withTransitionOptions:(id)options completion:(id)completion;
- (void)applyOutputInfo:(id)info withTransitionOptions:(id)options toPhotoLayer:(id)layer videoLayer:(id)videoLayer completion:(id)completion;
- (void)applyScale:(double)scale withTransitionOptions:(id)options toPhotoLayer:(id)layer videoLayer:(id)videoLayer completion:(id)completion;
- (void)setValue:(id)value forKeyPath:(id)path ofLayer:(id)layer withTransitionOptions:(id)options completion:(id)completion;
@end

@implementation ISTransitionApplier

- (void)setValue:(id)value forKeyPath:(id)path ofLayer:(id)layer withTransitionOptions:(id)options completion:(id)completion
{
  valueCopy = value;
  pathCopy = path;
  layerCopy = layer;
  completionCopy = completion;
  [options transitionDuration];
  v16 = v15;
  presentationLayer = [layerCopy presentationLayer];
  v18 = presentationLayer;
  if (presentationLayer)
  {
    v19 = presentationLayer;
  }

  else
  {
    v19 = layerCopy;
  }

  v20 = v19;

  if (v16 <= 0.0)
  {
    [layerCopy removeAnimationForKey:pathCopy];
    [layerCopy setValue:valueCopy forKeyPath:pathCopy];
  }

  else
  {
    v21 = [v20 valueForKeyPath:pathCopy];
    if ([v21 isEqual:valueCopy])
    {
      v22 = 0;
    }

    else
    {
      v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:pathCopy];
      [v22 setToValue:valueCopy];
      [v22 setDuration:v16];
      [v22 setFromValue:v21];
      if (completionCopy)
      {
        v23 = [completionCopy copy];
        [v22 setValue:v23 forKey:@"ISTransitionApplierAnimationCompletionHandlerKey"];
      }
    }

    [layerCopy setValue:valueCopy forKeyPath:pathCopy];
    if (v22)
    {
      [v22 setDelegate:self];
      [layerCopy addAnimation:v22 forKey:pathCopy];

      goto LABEL_14;
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_14:
}

- (void)_applyScale:(double)scale toLayer:(id)layer withTransitionOptions:(id)options completion:(id)completion
{
  layerCopy = layer;
  optionsCopy = options;
  completionCopy = completion;
  if (layerCopy)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 1;
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__ISTransitionApplier__applyScale_toLayer_withTransitionOptions_completion___block_invoke;
    v22[3] = &unk_279A2A040;
    v24 = v25;
    v15 = v13;
    v23 = v15;
    [(ISTransitionApplier *)self setValue:v14 forKeyPath:@"transform.scale" ofLayer:layerCopy withTransitionOptions:optionsCopy completion:v22];

    if (completionCopy)
    {
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __76__ISTransitionApplier__applyScale_toLayer_withTransitionOptions_completion___block_invoke_2;
      v19 = &unk_279A2A068;
      v20 = completionCopy;
      v21 = v25;
      dispatch_group_notify(v15, MEMORY[0x277D85CD0], &v16);
    }

    [MEMORY[0x277CD9FF0] commit];

    _Block_object_dispose(v25, 8);
  }
}

- (void)_applyAlpha:(double)alpha blurRadius:(double)radius toLayer:(id)layer withTransitionOptions:(id)options completion:(id)completion
{
  layerCopy = layer;
  optionsCopy = options;
  completionCopy = completion;
  if (layerCopy)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 1;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:alpha];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __87__ISTransitionApplier__applyAlpha_blurRadius_toLayer_withTransitionOptions_completion___block_invoke;
    v26[3] = &unk_279A2A040;
    v28 = v29;
    v17 = v15;
    v27 = v17;
    [(ISTransitionApplier *)self setValue:v16 forKeyPath:@"opacity" ofLayer:layerCopy withTransitionOptions:optionsCopy completion:v26];

    [layerCopy is_addBlurFilterIfNeeded];
    dispatch_group_enter(v17);
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__ISTransitionApplier__applyAlpha_blurRadius_toLayer_withTransitionOptions_completion___block_invoke_2;
    v23[3] = &unk_279A2A040;
    v25 = v29;
    v19 = v17;
    v24 = v19;
    [(ISTransitionApplier *)self setValue:v18 forKeyPath:@"filters.LivePhotoBlur.inputRadius" ofLayer:layerCopy withTransitionOptions:optionsCopy completion:v23];

    if (completionCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__ISTransitionApplier__applyAlpha_blurRadius_toLayer_withTransitionOptions_completion___block_invoke_3;
      block[3] = &unk_279A2A068;
      v21 = completionCopy;
      v22 = v29;
      dispatch_group_notify(v19, MEMORY[0x277D85CD0], block);
    }

    [MEMORY[0x277CD9FF0] commit];

    _Block_object_dispose(v29, 8);
  }
}

- (void)applyScale:(double)scale withTransitionOptions:(id)options toPhotoLayer:(id)layer videoLayer:(id)videoLayer completion:(id)completion
{
  optionsCopy = options;
  layerCopy = layer;
  videoLayerCopy = videoLayer;
  completionCopy = completion;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 1;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__ISTransitionApplier_applyScale_withTransitionOptions_toPhotoLayer_videoLayer_completion___block_invoke;
  v28[3] = &unk_279A2A040;
  v30 = v31;
  v17 = v16;
  v29 = v17;
  [(ISTransitionApplier *)self _applyScale:layerCopy toLayer:optionsCopy withTransitionOptions:v28 completion:scale];
  dispatch_group_enter(v17);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__ISTransitionApplier_applyScale_withTransitionOptions_toPhotoLayer_videoLayer_completion___block_invoke_2;
  v25[3] = &unk_279A2A040;
  v27 = v31;
  v18 = v17;
  v26 = v18;
  [(ISTransitionApplier *)self _applyScale:videoLayerCopy toLayer:optionsCopy withTransitionOptions:v25 completion:scale];
  if (completionCopy)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __91__ISTransitionApplier_applyScale_withTransitionOptions_toPhotoLayer_videoLayer_completion___block_invoke_3;
    v22 = &unk_279A2A068;
    v23 = completionCopy;
    v24 = v31;
    dispatch_group_notify(v18, MEMORY[0x277D85CD0], &v19);
  }

  [MEMORY[0x277CD9FF0] commit];

  _Block_object_dispose(v31, 8);
}

- (void)applyOutputInfo:(id)info withTransitionOptions:(id)options toPhotoLayer:(id)layer videoLayer:(id)videoLayer completion:(id)completion
{
  infoCopy = info;
  optionsCopy = options;
  layerCopy = layer;
  videoLayerCopy = videoLayer;
  completionCopy = completion;
  v17 = dispatch_group_create();
  v18 = v17;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 1;
  if (layerCopy)
  {
    dispatch_group_enter(v17);
    [infoCopy photoBlurRadius];
    v20 = v19;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __96__ISTransitionApplier_applyOutputInfo_withTransitionOptions_toPhotoLayer_videoLayer_completion___block_invoke;
    v31[3] = &unk_279A2A040;
    v33 = v34;
    v32 = v18;
    [(ISTransitionApplier *)self _applyAlpha:layerCopy blurRadius:optionsCopy toLayer:v31 withTransitionOptions:1.0 completion:v20];
  }

  if (videoLayerCopy)
  {
    dispatch_group_enter(v18);
    [infoCopy videoAlpha];
    v22 = v21;
    [infoCopy videoBlurRadius];
    v24 = v23;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __96__ISTransitionApplier_applyOutputInfo_withTransitionOptions_toPhotoLayer_videoLayer_completion___block_invoke_2;
    v28[3] = &unk_279A2A040;
    v30 = v34;
    v29 = v18;
    [(ISTransitionApplier *)self _applyAlpha:videoLayerCopy blurRadius:optionsCopy toLayer:v28 withTransitionOptions:v22 completion:v24];
  }

  if (completionCopy)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __96__ISTransitionApplier_applyOutputInfo_withTransitionOptions_toPhotoLayer_videoLayer_completion___block_invoke_3;
    v25[3] = &unk_279A2A068;
    v26 = completionCopy;
    v27 = v34;
    dispatch_group_notify(v18, MEMORY[0x277D85CD0], v25);
  }

  _Block_object_dispose(v34, 8);
}

+ (ISTransitionApplier)defaultApplier
{
  if (defaultApplier_onceToken != -1)
  {
    dispatch_once(&defaultApplier_onceToken, &__block_literal_global_3119);
  }

  v3 = defaultApplier_applier;

  return v3;
}

uint64_t __37__ISTransitionApplier_defaultApplier__block_invoke()
{
  v0 = objc_alloc_init(ISTransitionApplier);
  v1 = defaultApplier_applier;
  defaultApplier_applier = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end