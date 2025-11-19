@interface PUVideoExportNode
- (CGSize)renderedVideoSize;
- (PUVideoExportNode)initWithVideoURLNode:(id)a3 imageURLNode:(id)a4 quality:(unint64_t)a5 livePhotoPairingIdentifier:(id)a6 compositionController:(id)a7;
- (double)progress;
- (id)_editSource;
- (id)_exportPresetName;
- (id)_newOutputURL;
- (void)didCancel;
- (void)run;
@end

@implementation PUVideoExportNode

- (CGSize)renderedVideoSize
{
  width = self->_renderedVideoSize.width;
  height = self->_renderedVideoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)didCancel
{
  v2 = [(PUVideoExportNode *)self exportProgress];
  [v2 cancel];
}

- (double)progress
{
  v2 = [(PUVideoExportNode *)self exportProgress];
  [v2 fractionCompleted];
  v4 = v3;

  return v4;
}

- (void)run
{
  self->_renderedVideoSize = *MEMORY[0x1E695F060];
  v3 = [(PUVideoExportNode *)self _editSource];
  if (v3 && ([(PUVideoExportNode *)self compositionController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v3 renderPriority:2];
    v6 = [(PUVideoExportNode *)self compositionController];
    [v5 setCompositionController:v6];

    v7 = [(PUVideoExportNode *)self _newOutputURL];
    videoURL = self->_videoURL;
    self->_videoURL = v7;

    v9 = [(PUVideoExportNode *)self _exportPresetName];
    objc_initWeak(&location, self);
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = self->_videoURL;
    livePhotoPairingIdentifier = self->_livePhotoPairingIdentifier;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __24__PUVideoExportNode_run__block_invoke;
    v18 = &unk_1E7B7FED8;
    v13 = v10;
    v19 = v13;
    v20 = self;
    objc_copyWeak(&v21, &location);
    v14 = [v5 exportVideoToURL:v11 preset:v9 livePhotoPairingIdentifier:livePhotoPairingIdentifier completion:&v15];
    [(PUVideoExportNode *)self setExportProgress:v14, v15, v16, v17, v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXRunNode *)self cancel];
  }
}

void __24__PUVideoExportNode_run__block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceDate:*(a1 + 32)];
  v12 = v11;

  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = v12;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEFAULT, "PUVideoExportNode render time: %f sec", &v17, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    v14 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 40) compositionController];
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Error exporting the video for compositionController:%@\n%@", &v17, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleExportCompletedWithSuccess:a2 editedSize:v9 error:{a4, a5}];
}

- (id)_editSource
{
  v3 = [(PUVideoURLNode *)self->_videoURLNode videoURL];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69BE880]) initWithVideoURL:v3];
    v5 = [(PUImageInfoNode *)self->_imageInfoNode imageDataURL];
    if (v5 && self->_livePhotoPairingIdentifier)
    {
      v6 = [(PUImageInfoNode *)self->_imageInfoNode imageDataUTI];
      v7 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:v5 type:v6 image:0 useEmbeddedPreview:0];
      v8 = [objc_alloc(MEMORY[0x1E69BE518]) initWithPhotoSource:v7 videoComplement:v4];
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_newOutputURL
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = [v3 stringByAppendingPathExtension:@"mov"];

  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];

  return v7;
}

- (id)_exportPresetName
{
  v2 = [(PUVideoExportNode *)self quality];
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = **(&unk_1E7B7FEF8 + v2);
  }

  return v3;
}

- (PUVideoExportNode)initWithVideoURLNode:(id)a3 imageURLNode:(id)a4 quality:(unint64_t)a5 livePhotoPairingIdentifier:(id)a6 compositionController:(id)a7
{
  v30[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    if (v15)
    {
LABEL_3:
      v30[0] = v14;
      v30[1] = v15;
      v18 = MEMORY[0x1E695DEC8];
      v19 = v30;
      v20 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUVideoRenderNodes.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"videoNode != nil"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v29 = v14;
  v18 = MEMORY[0x1E695DEC8];
  v19 = &v29;
  v20 = 1;
LABEL_6:
  v21 = [v18 arrayWithObjects:v19 count:v20];
  v28.receiver = self;
  v28.super_class = PUVideoExportNode;
  v22 = [(PXRunNode *)&v28 initWithDependencies:v21];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_videoURLNode, a3);
    objc_storeStrong(&v23->_imageInfoNode, a4);
    v23->_quality = a5;
    objc_storeStrong(&v23->_compositionController, a7);
    v24 = [v16 copy];
    livePhotoPairingIdentifier = v23->_livePhotoPairingIdentifier;
    v23->_livePhotoPairingIdentifier = v24;
  }

  return v23;
}

@end