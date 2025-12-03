@interface PUVideoExportNode
- (CGSize)renderedVideoSize;
- (PUVideoExportNode)initWithVideoURLNode:(id)node imageURLNode:(id)lNode quality:(unint64_t)quality livePhotoPairingIdentifier:(id)identifier compositionController:(id)controller;
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
  exportProgress = [(PUVideoExportNode *)self exportProgress];
  [exportProgress cancel];
}

- (double)progress
{
  exportProgress = [(PUVideoExportNode *)self exportProgress];
  [exportProgress fractionCompleted];
  v4 = v3;

  return v4;
}

- (void)run
{
  self->_renderedVideoSize = *MEMORY[0x1E695F060];
  _editSource = [(PUVideoExportNode *)self _editSource];
  if (_editSource && ([(PUVideoExportNode *)self compositionController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:_editSource renderPriority:2];
    compositionController = [(PUVideoExportNode *)self compositionController];
    [v5 setCompositionController:compositionController];

    _newOutputURL = [(PUVideoExportNode *)self _newOutputURL];
    videoURL = self->_videoURL;
    self->_videoURL = _newOutputURL;

    _exportPresetName = [(PUVideoExportNode *)self _exportPresetName];
    objc_initWeak(&location, self);
    date = [MEMORY[0x1E695DF00] date];
    v11 = self->_videoURL;
    livePhotoPairingIdentifier = self->_livePhotoPairingIdentifier;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __24__PUVideoExportNode_run__block_invoke;
    v18 = &unk_1E7B7FED8;
    v13 = date;
    v19 = v13;
    selfCopy = self;
    objc_copyWeak(&v21, &location);
    v14 = [v5 exportVideoToURL:v11 preset:_exportPresetName livePhotoPairingIdentifier:livePhotoPairingIdentifier completion:&v15];
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
  videoURL = [(PUVideoURLNode *)self->_videoURLNode videoURL];
  if (videoURL)
  {
    v4 = [objc_alloc(MEMORY[0x1E69BE880]) initWithVideoURL:videoURL];
    imageDataURL = [(PUImageInfoNode *)self->_imageInfoNode imageDataURL];
    if (imageDataURL && self->_livePhotoPairingIdentifier)
    {
      imageDataUTI = [(PUImageInfoNode *)self->_imageInfoNode imageDataUTI];
      v7 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:imageDataURL type:imageDataUTI image:0 useEmbeddedPreview:0];
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v4 = [uUIDString stringByAppendingPathExtension:@"mov"];

  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];

  return v7;
}

- (id)_exportPresetName
{
  quality = [(PUVideoExportNode *)self quality];
  if (quality > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = **(&unk_1E7B7FEF8 + quality);
  }

  return v3;
}

- (PUVideoExportNode)initWithVideoURLNode:(id)node imageURLNode:(id)lNode quality:(unint64_t)quality livePhotoPairingIdentifier:(id)identifier compositionController:(id)controller
{
  v30[2] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  lNodeCopy = lNode;
  identifierCopy = identifier;
  controllerCopy = controller;
  if (nodeCopy)
  {
    if (lNodeCopy)
    {
LABEL_3:
      v30[0] = nodeCopy;
      v30[1] = lNodeCopy;
      v18 = MEMORY[0x1E695DEC8];
      v19 = v30;
      v20 = 2;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUVideoRenderNodes.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"videoNode != nil"}];

    if (lNodeCopy)
    {
      goto LABEL_3;
    }
  }

  v29 = nodeCopy;
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
    objc_storeStrong(&v22->_videoURLNode, node);
    objc_storeStrong(&v23->_imageInfoNode, lNode);
    v23->_quality = quality;
    objc_storeStrong(&v23->_compositionController, controller);
    v24 = [identifierCopy copy];
    livePhotoPairingIdentifier = v23->_livePhotoPairingIdentifier;
    v23->_livePhotoPairingIdentifier = v24;
  }

  return v23;
}

@end