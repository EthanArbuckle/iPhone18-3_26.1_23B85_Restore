@interface FBScene(PRUISAdditions)
- (id)_layersToExcludeForOptions:()PRUISAdditions;
- (id)pruis_createSnapshotWithContext:()PRUISAdditions;
- (id)pruis_snapshotContextConfiguredWithOptions:()PRUISAdditions;
- (void)pruis_restoreSceneAfterSnapshottingWithUpdater:()PRUISAdditions completion:;
- (void)pruis_setupSceneForSnapshottingWithOptions:()PRUISAdditions traitCollection:updater:completion:;
- (void)pruis_snapshotSceneWithOptions:()PRUISAdditions traitCollection:completion:;
- (void)pruis_updateWithoutActivating:()PRUISAdditions withCompletion:;
@end

@implementation FBScene(PRUISAdditions)

- (void)pruis_updateWithoutActivating:()PRUISAdditions withCompletion:
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [FBScene(PRUISAdditions) pruis_updateWithoutActivating:a2 withCompletion:self];
  }

  v9 = v8;
  if ([self isActive])
  {
    [self performUpdate:v7 withCompletion:v9];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__FBScene_PRUISAdditions__pruis_updateWithoutActivating_withCompletion___block_invoke;
    v12[3] = &unk_1E83A7400;
    v13 = v7;
    [self updateSettingsWithBlock:v12];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __72__FBScene_PRUISAdditions__pruis_updateWithoutActivating_withCompletion___block_invoke_2;
      v10[3] = &unk_1E83A7428;
      v11 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], v10);
    }
  }
}

- (void)pruis_setupSceneForSnapshottingWithOptions:()PRUISAdditions traitCollection:updater:completion:
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  IsFloatingLayerOnly = PRSPosterSnapshotOptionsIsFloatingLayerOnly();
  v14 = [self _renderingContentForOptions:a3];
  if ((a3 & 0x40) != 0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  userInterfaceStyle = [v10 userInterfaceStyle];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105__FBScene_PRUISAdditions__pruis_setupSceneForSnapshottingWithOptions_traitCollection_updater_completion___block_invoke;
  v19[3] = &unk_1E83A7718;
  v25 = IsFloatingLayerOnly;
  v21 = v11;
  v22 = v14;
  v23 = v15;
  v24 = userInterfaceStyle;
  v26 = (a3 & 2) != 0;
  v27 = (a3 & 4) != 0;
  v20 = v10;
  v17 = v11;
  v18 = v10;
  [self performUpdate:v19 withCompletion:v12];
}

- (void)pruis_restoreSceneAfterSnapshottingWithUpdater:()PRUISAdditions completion:
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__FBScene_PRUISAdditions__pruis_restoreSceneAfterSnapshottingWithUpdater_completion___block_invoke;
  v8[3] = &unk_1E83A7740;
  v9 = v6;
  v7 = v6;
  [self performUpdate:v8 withCompletion:a4];
}

- (void)pruis_snapshotSceneWithOptions:()PRUISAdditions traitCollection:completion:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__FBScene_PRUISAdditions__pruis_snapshotSceneWithOptions_traitCollection_completion___block_invoke;
  v10[3] = &unk_1E83A7768;
  v10[4] = self;
  v11 = v8;
  v12 = a3;
  v9 = v8;
  [self pruis_setupSceneForSnapshottingWithOptions:a3 traitCollection:a4 completion:v10];
}

- (id)pruis_createSnapshotWithContext:()PRUISAdditions
{
  v2 = [self createSnapshotWithContext:?];
  if ([v2 capture])
  {
    iOSurface = [v2 IOSurface];
    v4 = MEMORY[0x1E696AD98];
    settings = [self settings];
    v6 = [v4 numberWithInteger:{objc_msgSend(settings, "interfaceOrientation")}];
    [iOSurface setAttachment:v6 forKey:*MEMORY[0x1E69C5690]];

    v7 = MEMORY[0x1E696AD98];
    settings2 = [self settings];
    v9 = [v7 numberWithInteger:{objc_msgSend(settings2, "pui_deviceOrientation")}];
    [iOSurface setAttachment:v9 forKey:*MEMORY[0x1E69C5680]];

    v10 = MEMORY[0x1E696AD98];
    context = [v2 context];
    [context scale];
    v12 = [v10 numberWithDouble:?];
    [iOSurface setAttachment:v12 forKey:*MEMORY[0x1E69C5688]];

    settings3 = [self settings];
    [settings3 pui_salientContentRectangle];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    clientSettings = [self clientSettings];
    if ([clientSettings pui_adaptiveTimeMode] == 2)
    {
      IsValidSalientContentRectangle = PUICGRectIsValidSalientContentRectangle();

      if (!IsValidSalientContentRectangle)
      {
LABEL_6:

        goto LABEL_7;
      }

      v26.origin.x = v15;
      v26.origin.y = v17;
      v26.size.width = v19;
      v26.size.height = v21;
      clientSettings = NSStringFromCGRect(v26);
      [iOSurface setAttachment:clientSettings forKey:*MEMORY[0x1E69C5698]];
    }

    goto LABEL_6;
  }

LABEL_7:

  return v2;
}

- (id)pruis_snapshotContextConfiguredWithOptions:()PRUISAdditions
{
  snapshotContext = [self snapshotContext];
  [snapshotContext setOpaque:PRSPosterSnapshotOptionsAllowTransparency() ^ 1];
  v6 = [self _layersToExcludeForOptions:a3];
  [snapshotContext setLayersToExclude:v6];

  return snapshotContext;
}

- (id)_layersToExcludeForOptions:()PRUISAdditions
{
  layerManager = [self layerManager];
  layers = [layerManager layers];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__FBScene_PRUISAdditions___layersToExcludeForOptions___block_invoke;
  v9[3] = &__block_descriptor_40_e22_B16__0__FBSceneLayer_8l;
  v9[4] = a3;
  v6 = [layers bs_filter:v9];
  v7 = [v6 set];

  return v7;
}

- (void)pruis_updateWithoutActivating:()PRUISAdditions withCompletion:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"updater != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRUISSceneTypes.m";
    v16 = 1024;
    v17 = 19;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end