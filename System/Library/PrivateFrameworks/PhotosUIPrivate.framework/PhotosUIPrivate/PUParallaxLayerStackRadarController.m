@interface PUParallaxLayerStackRadarController
+ (id)visualDiagnosticsActionForAsset:(id)a3 compoundLayerStack:(id)a4 segmentationItem:(id)a5 fromViewController:(id)a6 actionBeingHandler:(id)a7 actionEndHandler:(id)a8;
+ (id)visualDiagnosticsConfigurationForAsset:(id)a3 compoundLayerStack:(id)a4 segmentationItem:(id)a5;
+ (void)loadLayerStackForAsset:(id)a3 completion:(id)a4;
- (PUParallaxLayerStackRadarController)initWithAsset:(id)a3 compoundLayerStack:(id)a4 segmentationItem:(id)a5 posterDescriptor:(id)a6 posterConfiguration:(id)a7;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)saveDebugLayerStack:(id)a3 toFileName:(id)a4 item:(id)a5 completion:(id)a6;
@end

@implementation PUParallaxLayerStackRadarController

- (void)saveDebugLayerStack:(id)a3 toFileName:(id)a4 item:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__PUParallaxLayerStackRadarController_saveDebugLayerStack_toFileName_item_completion___block_invoke;
  aBlock[3] = &unk_1E7B79188;
  aBlock[4] = self;
  v29 = v12;
  v14 = v12;
  v15 = a5;
  v16 = _Block_copy(aBlock);
  v17 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v15];
  v18 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v17 setPriority:v18];

  [v17 setLayerStackOptions:20];
  [v17 setSettlingEffectEnabled:{objc_msgSend(v15, "isSettlingEffectAvailable")}];
  v19 = [v15 isSpatialPhotoAvailable];

  [v17 setSpatialPhotoEnabled:v19];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__PUParallaxLayerStackRadarController_saveDebugLayerStack_toFileName_item_completion___block_invoke_2;
  v23[3] = &unk_1E7B791B0;
  v26 = v13;
  v27 = a2;
  v23[4] = self;
  v24 = v11;
  v25 = v16;
  v20 = v13;
  v21 = v16;
  v22 = v11;
  [v17 submit:v23];
}

id __86__PUParallaxLayerStackRadarController_saveDebugLayerStack_toFileName_item_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) baseTemporaryURL];
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v7) = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:a3];

  v11 = 0;
  if (v7)
  {
    v12 = [v9 URLByAppendingPathComponent:*(a1 + 40)];
    v13 = [v12 URLByAppendingPathExtension:@"imagestack"];

    if ([MEMORY[0x1E69C0780] saveCompoundLayerStack:v5 toURL:v13 options:0xFFFFLL error:a3])
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void __86__PUParallaxLayerStackRadarController_saveDebugLayerStack_toFileName_item_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = 0;
  v3 = [a2 result:&v21];
  v4 = v21;
  if (v3)
  {
    v5 = [v3 compoundLayerStack];
    v6 = [v5 portraitLayerStack];

    v7 = [v3 compoundLayerStack];
    v8 = [v7 landscapeLayerStack];

    if (!v6)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PUParallaxLayerStackRadarController.m" lineNumber:213 description:@"A portrait layer stack should always be available"];
    }

    v9 = [*(a1 + 40) portraitLayerStack];
    v10 = [v6 layers];
    v11 = [v6 layout];
    [v11 imageSize];
    v12 = [v9 layerStackByUpdatingLayers:v10 imageSize:?];

    if (v8)
    {
      v13 = [*(a1 + 40) landscapeLayerStack];
      v14 = [v8 layers];
      v15 = [v8 layout];
      [v15 imageSize];
      v16 = [v13 layerStackByUpdatingLayers:v14 imageSize:?];
    }

    else
    {
      v16 = 0;
    }

    v18 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v12 landscapeLayerStack:v16];
    v19 = (*(*(a1 + 48) + 16))();
    v17 = v4;

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v17 = v4;
  }
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke;
  aBlock[3] = &unk_1E7B79070;
  v5 = v4;
  v46 = v5;
  v47 = self;
  v6 = _Block_copy(aBlock);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_3;
  v42[3] = &unk_1E7B79098;
  v7 = v5;
  v43 = v7;
  v44 = self;
  v8 = _Block_copy(v42);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_225;
  v40[3] = &unk_1E7B790C0;
  v40[4] = self;
  v9 = v7;
  v41 = v9;
  v10 = _Block_copy(v40);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_228;
  v35[3] = &unk_1E7B790E8;
  v11 = v8;
  v37 = v11;
  v27 = v6;
  v38 = v27;
  v35[4] = self;
  v12 = v10;
  v39 = v12;
  v13 = v9;
  v36 = v13;
  v14 = _Block_copy(v35);
  v15 = [(PUParallaxLayerStackRadarController *)self compoundLayerStack];
  if (v15)
  {
    v16 = [(PUParallaxLayerStackRadarController *)self segmentationItem];
    v14[2](v14, v15, v16);
  }

  else
  {
    v17 = [v13 beginCollectionOperationWithName:@"Load Layer Stack" timeout:{1.84467441e19, v27}];
    v18 = objc_opt_class();
    v19 = [(PUParallaxLayerStackRadarController *)self asset];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_2_236;
    v32[3] = &unk_1E7B79110;
    v32[4] = self;
    v33 = v17;
    v34 = v14;
    v16 = v17;
    [v18 loadLayerStackForAsset:v19 completion:v32];
  }

  v20 = [v13 beginCollectionOperationWithName:@"Asset Resource" timeout:10.0];
  v21 = MEMORY[0x1E6978630];
  v22 = [(PUParallaxLayerStackRadarController *)self asset];
  v48[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_243;
  v29[3] = &unk_1E7B79138;
  v30 = v13;
  v31 = v20;
  v24 = v20;
  v25 = v13;
  [v21 px_generateResourceFilesForAssets:v23 completionHandler:v29];

  v26 = [(PUParallaxLayerStackRadarController *)self screenshotURL];
  [v25 addAttachment:v26];
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 beginCollectionOperationWithName:@"Visual Diagnostics" timeout:10.0];
  v12 = [objc_opt_class() visualDiagnosticsConfigurationForAsset:v10 compoundLayerStack:v9 segmentationItem:v8];

  v13 = MEMORY[0x1E69C3C80];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_2;
  v15[3] = &unk_1E7B80258;
  v16 = *(a1 + 32);
  v17 = v11;
  v14 = v11;
  [v13 requestVisualDiagnosticsPDFDocumentURLWithConfiguration:v12 resultHandler:v15];
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 beginCollectionOperationWithName:@"Save Debug Layer Stack" timeout:1.84467441e19];
  v6 = [*(a1 + 40) asset];
  v7 = [v6 filename];
  v8 = [v7 stringByDeletingPathExtension];
  v9 = v8;
  v10 = @"radarLayerStack";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = *(a1 + 40);
  v13 = [v12 segmentationItem];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_4;
  v15[3] = &unk_1E7B80258;
  v16 = *(a1 + 32);
  v17 = v5;
  v14 = v5;
  [v12 saveDebugLayerStack:v4 toFileName:v11 item:v13 completion:v15];
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_225(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [*(a1 + 32) baseTemporaryURL];
    v9 = [*(a1 + 32) asset];
    v10 = [v9 uuid];
    v11 = [v8 URLByAppendingPathComponent:v10 isDirectory:1];

    v23 = 0;
    LOBYTE(v8) = [v7 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v23];
    v12 = v23;
    if ((v8 & 1) == 0)
    {
      v13 = PLWallpaperGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "Failed to create destination directory for settling effect attachment, error: %@", buf, 0xCu);
      }

      v17 = v12;
      goto LABEL_17;
    }

    v13 = [v11 URLByAppendingPathComponent:v5];
    v14 = [v13 path];
    v15 = [v7 fileExistsAtPath:v14];

    if (v15)
    {
      v22 = v12;
      v16 = [v7 removeItemAtURL:v13 error:&v22];
      v17 = v22;

      if ((v16 & 1) == 0)
      {
        v19 = PLWallpaperGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v25 = v5;
          v26 = 2112;
          v27 = v17;
          v20 = "Failed to remove old copy of %@, error: %@";
          goto LABEL_15;
        }

LABEL_16:

        goto LABEL_17;
      }

      v12 = v17;
    }

    v21 = v12;
    v18 = [v6 writeToURL:v13 options:1 error:&v21];
    v17 = v21;

    if (v18)
    {
      [*(a1 + 40) addAttachment:v13];
LABEL_17:

      goto LABEL_18;
    }

    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v17;
      v20 = "Failed to write additional data %@, error: %@";
LABEL_15:
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_18:
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_228(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = a2;
  v6(v5, v8);
  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) asset];
  (*(v9 + 16))(v9, v10, v8, v7);

  v11 = *(a1 + 64);
  v12 = [*(a1 + 32) segmentationItem];
  v13 = [v12 settlingEffectVideoData];
  (*(v11 + 16))(v11, @"SettlingEffect.mov", v13);

  v14 = [*(a1 + 32) baseTemporaryURL];
  v15 = [*(a1 + 32) posterDescriptor];
  v25 = 0;
  LODWORD(v10) = [v15 saveToURL:v14 error:&v25];
  v16 = v25;

  if (v10)
  {
    v17 = *(a1 + 40);
    v18 = [v14 URLByAppendingPathComponent:*MEMORY[0x1E69C0C60]];
    [v17 addAttachment:v18];
  }

  v19 = [*(a1 + 32) posterConfiguration];
  v24 = v16;
  v20 = [v19 saveToURL:v14 error:&v24];
  v21 = v24;

  if (v20)
  {
    v22 = *(a1 + 40);
    v23 = [v14 URLByAppendingPathComponent:*MEMORY[0x1E69C0C40]];
    [v22 addAttachment:v23];
  }
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_2_236(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (a3)
  {
    v11 = [v9 compoundLayerStack];
    [*(a1 + 32) setCompoundLayerStack:v11];

    [*(a1 + 32) setSegmentationItem:v7];
    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) compoundLayerStack];
    v14 = [*(a1 + 32) segmentationItem];
    (*(v12 + 16))(v12, v13, v14);
  }

  else
  {
    v15 = PLWallpaperGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Failed to generate layer stack. Error: %@", &v19, 0xCu);
    }
  }

  v16 = *(a1 + 40);
  v17 = [v10 compoundLayerStack];

  v18 = [v17 portraitLayerStack];
  [v16 endWithSuccess:v18 != 0 error:v8];
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_243(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) addAttachment:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) endWithSuccess:objc_msgSend(v3 error:{"count") != 0, 0}];
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addAttachment:a2];
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to archive layer stack. Error: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 40) endWithSuccess:a2 != 0 error:v5];
}

void __81__PUParallaxLayerStackRadarController_collectTapToRadarDiagnosticsIntoContainer___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addAttachment:a2];
  [*(a1 + 40) endWithSuccess:a2 != 0 error:v6];
}

- (PUParallaxLayerStackRadarController)initWithAsset:(id)a3 compoundLayerStack:(id)a4 segmentationItem:(id)a5 posterDescriptor:(id)a6 posterConfiguration:(id)a7
{
  v27 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v28.receiver = self;
  v28.super_class = PUParallaxLayerStackRadarController;
  v17 = [(PUParallaxLayerStackRadarController *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, a3);
    objc_storeStrong(&v18->_compoundLayerStack, a4);
    objc_storeStrong(&v18->_segmentationItem, a5);
    objc_storeStrong(&v18->_posterDescriptor, a6);
    objc_storeStrong(&v18->_posterConfiguration, a7);
    v19 = MEMORY[0x1E695DFF8];
    v20 = NSTemporaryDirectory();
    v21 = [v20 stringByAppendingPathComponent:@"photosradarfeedback"];
    v22 = [v19 fileURLWithPath:v21];
    baseTemporaryURL = v18->_baseTemporaryURL;
    v18->_baseTemporaryURL = v22;

    v24 = [MEMORY[0x1E69C3578] captureScreenshot];
    screenshotURL = v18->_screenshotURL;
    v18->_screenshotURL = v24;
  }

  return v18;
}

+ (id)visualDiagnosticsActionForAsset:(id)a3 compoundLayerStack:(id)a4 segmentationItem:(id)a5 fromViewController:(id)a6 actionBeingHandler:(id)a7 actionEndHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = MEMORY[0x1E69DC628];
  v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __162__PUParallaxLayerStackRadarController_visualDiagnosticsActionForAsset_compoundLayerStack_segmentationItem_fromViewController_actionBeingHandler_actionEndHandler___block_invoke;
  v30[3] = &unk_1E7B79200;
  v36 = v19;
  v37 = a1;
  v31 = v15;
  v32 = v14;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v22 = v19;
  v23 = v17;
  v24 = v16;
  v25 = v14;
  v26 = v15;
  v27 = v18;
  v28 = [v20 actionWithTitle:@"Parallax Diagnostics" image:v21 identifier:0 handler:v30];

  return v28;
}

void __162__PUParallaxLayerStackRadarController_visualDiagnosticsActionForAsset_compoundLayerStack_segmentationItem_fromViewController_actionBeingHandler_actionEndHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [*(a1 + 80) visualDiagnosticsConfigurationForAsset:*(a1 + 40) compoundLayerStack:v5 segmentationItem:*(a1 + 48)];
    [MEMORY[0x1E69C3C80] showVisualDiagnosticsWithConfiguration:v6 fromViewController:*(a1 + 56) completionHandler:*(a1 + 72)];
  }

  else
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __162__PUParallaxLayerStackRadarController_visualDiagnosticsActionForAsset_compoundLayerStack_segmentationItem_fromViewController_actionBeingHandler_actionEndHandler___block_invoke_2;
    v9[3] = &unk_1E7B791D8;
    v14 = *(a1 + 80);
    v10 = v8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    [v7 loadLayerStackForAsset:v10 completion:v9];
  }
}

void __162__PUParallaxLayerStackRadarController_visualDiagnosticsActionForAsset_compoundLayerStack_segmentationItem_fromViewController_actionBeingHandler_actionEndHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3)
  {
    v8 = [*(a1 + 64) visualDiagnosticsConfigurationForAsset:*(a1 + 32) compoundLayerStack:*(a1 + 40) segmentationItem:a2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __162__PUParallaxLayerStackRadarController_visualDiagnosticsActionForAsset_compoundLayerStack_segmentationItem_fromViewController_actionBeingHandler_actionEndHandler___block_invoke_278;
    block[3] = &unk_1E7B80CB0;
    v11 = v8;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v9 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v9 = PLWallpaperGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Failed to generate layer stack. Error: %@", buf, 0xCu);
    }
  }
}

+ (id)visualDiagnosticsConfigurationForAsset:(id)a3 compoundLayerStack:(id)a4 segmentationItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(PUParallaxVisualDiagnosticsProvider);
  [(PUParallaxVisualDiagnosticsProvider *)v10 setAsset:v9];

  [(PUParallaxVisualDiagnosticsProvider *)v10 setCompoundLayerStack:v8];
  [(PUParallaxVisualDiagnosticsProvider *)v10 setSegmentationItem:v7];

  v11 = [objc_alloc(MEMORY[0x1E69C4618]) initWithRootProvider:v10];
  [v11 setName:@"ParallaxDiagnostics"];
  [v11 setIsPrivateDataAllowed:1];

  return v11;
}

+ (void)loadLayerStackForAsset:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E6978B20];
  v7 = a3;
  v8 = [[v6 alloc] initWithPhotoAsset:v7];

  v9 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PUParallaxLayerStackRadarController_loadLayerStackForAsset_completion___block_invoke;
  v11[3] = &unk_1E7B79160;
  v12 = v5;
  v10 = v5;
  [v9 loadSegmentationItemWithCompletion:v11];
}

void __73__PUParallaxLayerStackRadarController_loadLayerStackForAsset_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v3];
    [v4 setLayerStackOptions:0xFFFFLL];
    v5 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
    [v4 setPriority:v5];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__PUParallaxLayerStackRadarController_loadLayerStackForAsset_completion___block_invoke_2;
    v6[3] = &unk_1E7B80350;
    v8 = *(a1 + 32);
    v7 = v3;
    [v4 submit:v6];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __73__PUParallaxLayerStackRadarController_loadLayerStackForAsset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = 0;
  v3 = [a2 result:&v5];
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

@end