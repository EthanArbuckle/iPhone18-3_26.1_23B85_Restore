@interface _UIDragMonitorSessionPreview
- (CGPoint)previewContentOffset;
- (CGSize)previewContentSize;
- (CGSize)previewScaledSize;
- (UIBezierPath)outline;
- (_UIDragMonitorSessionPreview)initWithImageComponent:(id)component preview:(id)preview;
- (id)previewImageWithSnapshotSettings:(id)settings;
@end

@implementation _UIDragMonitorSessionPreview

- (_UIDragMonitorSessionPreview)initWithImageComponent:(id)component preview:(id)preview
{
  componentCopy = component;
  previewCopy = preview;
  v16.receiver = self;
  v16.super_class = _UIDragMonitorSessionPreview;
  v9 = [(_UIDragMonitorSessionPreview *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageComponent, component);
    objc_storeStrong(&v10->_preview, preview);
    parameters = [previewCopy parameters];
    v12 = parameters;
    if (parameters)
    {
      v13 = parameters;
    }

    else
    {
      v13 = objc_alloc_init(UIDragPreviewParameters);
    }

    parameters = v10->_parameters;
    v10->_parameters = v13;
  }

  return v10;
}

- (id)previewImageWithSnapshotSettings:(id)settings
{
  v36[4] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  imageComponent = [(_UIDragMonitorSessionPreview *)self imageComponent];
  v6 = [imageComponent createSnapshotViewForPreview:self->_preview];

  [(_UIDragMonitorSessionPreview *)self previewContentSize];
  v8 = v7;
  v10 = v9;
  visiblePath = [(UIPreviewParameters *)self->_parameters visiblePath];
  if (visiblePath)
  {
    [(_DUIPreview *)self->_preview contentOffset];
    v12 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [v6 bounds];
    [v12 setFrame:?];
    [v12 setPath:{objc_msgSend(visiblePath, "CGPath")}];
    layer = [v6 layer];
    [layer setMask:v12];

    [visiblePath bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v19 = v8;
    v21 = v10;
  }

  v22 = v8 * v10;
  if (v8 * v10 > 62500.0)
  {
    if (v8 <= v10)
    {
      v24 = v8 / v10;
      v10 = 250.0;
      v22 = v24 * 250.0;
      *&v22 = v22;
      *&v22 = floorf(*&v22);
      v8 = *&v22;
    }

    else
    {
      v23 = v10 / v8;
      v8 = 250.0;
      v22 = v23 * 250.0;
      *&v22 = v22;
      *&v22 = floorf(*&v22);
      v10 = *&v22;
    }
  }

  v35[0] = @"dst-size";
  *v34 = v8;
  *&v34[1] = v10;
  v25 = [MEMORY[0x1E696B098] valueWithBytes:v34 objCType:{"{CGSize=dd}", v22}];
  v36[0] = v25;
  v35[1] = @"src-rect";
  v33[0] = v15;
  v33[1] = v17;
  *&v33[2] = v19;
  *&v33[3] = v21;
  v26 = [MEMORY[0x1E696B098] valueWithBytes:v33 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v36[1] = v26;
  v36[2] = &unk_1EFE32E48;
  v35[2] = @"dst-scale";
  v35[3] = @"dst-component-type";
  v36[3] = &unk_1EFE32E60;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:4];

  windowSceneForSnapshotting = [settingsCopy windowSceneForSnapshotting];

  if (windowSceneForSnapshotting)
  {
    v29 = [v27 mutableCopy];
    windowSceneForSnapshotting2 = [settingsCopy windowSceneForSnapshotting];
    [v29 setObject:windowSceneForSnapshotting2 forKeyedSubscript:@"src-window-scene"];

    v27 = v29;
  }

  v31 = _UIRenderViewImageAfterCommit(v6, v27, 1);

  return v31;
}

- (CGSize)previewScaledSize
{
  preview = [(_UIDragMonitorSessionPreview *)self preview];
  [preview scaledSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)previewContentSize
{
  preview = [(_UIDragMonitorSessionPreview *)self preview];
  [preview contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGPoint)previewContentOffset
{
  preview = [(_UIDragMonitorSessionPreview *)self preview];
  [preview contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (UIBezierPath)outline
{
  preview = [(_UIDragMonitorSessionPreview *)self preview];
  outline = [preview outline];

  return outline;
}

@end