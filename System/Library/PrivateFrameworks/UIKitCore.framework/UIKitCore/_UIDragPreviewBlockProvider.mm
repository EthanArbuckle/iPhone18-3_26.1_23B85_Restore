@interface _UIDragPreviewBlockProvider
+ (id)previewProviderWithBlock:(id)block;
- (UIDragPreview)preview;
- (id)_createImageComponent;
- (id)_duiPreview;
- (id)imageComponent;
@end

@implementation _UIDragPreviewBlockProvider

+ (id)previewProviderWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragPreview.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"previewProviderBlock"}];
  }

  objc_opt_class();
  v6 = objc_opt_new();
  v7 = _Block_copy(blockCopy);
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (UIDragPreview)preview
{
  preview = self->_preview;
  if (!preview)
  {
    preview = self->_previewProviderBlock;
    if (preview)
    {
      v4 = preview[2](preview, a2);
      v5 = self->_preview;
      self->_preview = v4;

      previewProviderBlock = self->_previewProviderBlock;
      self->_previewProviderBlock = 0;

      preview = self->_preview;
    }
  }

  return preview;
}

- (id)_duiPreview
{
  preview = [(_UIDragPreviewBlockProvider *)self preview];
  _duiPreview = [preview _duiPreview];

  return _duiPreview;
}

- (id)imageComponent
{
  imageComponent = self->_imageComponent;
  if (!imageComponent)
  {
    _createImageComponent = [(_UIDragPreviewBlockProvider *)self _createImageComponent];
    v5 = self->_imageComponent;
    self->_imageComponent = _createImageComponent;

    imageComponent = self->_imageComponent;
  }

  return imageComponent;
}

- (id)_createImageComponent
{
  preview = [(_UIDragPreviewBlockProvider *)self preview];

  if (!preview)
  {
    initHidingDragImage = [[_UIDraggingImageComponent alloc] initHidingDragImage];
    goto LABEL_18;
  }

  preview2 = [(_UIDragPreviewBlockProvider *)self preview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[_UIDragPreviewBlockProvider preview](self, "preview"), v6 = objc_claimAutoreleasedReturnValue(), [v6 _dragPreviewProvider], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "imageComponent"), initHidingDragImage = objc_claimAutoreleasedReturnValue(), v7, v6, !initHidingDragImage))
  {
    preview3 = [(_UIDragPreviewBlockProvider *)self preview];
    view = [preview3 view];
    parameters = [preview3 parameters];
    _previewMode = [parameters _previewMode];

    if ((_previewMode - 3) <= 1)
    {
      initHidingDragImage = [[_UIDraggingImageComponent alloc] initWithView:view];
LABEL_17:

      goto LABEL_18;
    }

    if ([UIApp _isSpringBoard])
    {
      v13 = 0;
    }

    else
    {
      v13 = [preview3 _preventAfterScreenUpdatesSnapshot] ^ 1;
    }

    CanBeRenderedAfterCommit = _UIViewCanBeRenderedAfterCommit(view, v13);
    accessibilityIgnoresInvertColors = [view accessibilityIgnoresInvertColors];
    [view bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    if (!CanBeRenderedAfterCommit)
    {
      goto LABEL_15;
    }

    if (v13)
    {
      _internalTraitOverrides = [(UIView *)view _internalTraitOverrides];
      [_internalTraitOverrides _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];

      [(UIView *)view _addChildTraitCollectionTransformWithIdentifier:&__block_literal_global_717 transform:?];
      [view updateTraitsIfNeeded];
      v25 = _UIRenderViewImageAfterCommit(view, 0, 1);
      _internalTraitOverrides2 = [(UIView *)view _internalTraitOverrides];
      [(_UITraitOverrides *)_internalTraitOverrides2 _removeTraitToken:?];

      [(UIView *)view _removeChildTraitCollectionTransformWithIdentifier:?];
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v25 = _UIRenderViewImageAfterCommit(view, 0, 0);
      if (!v25)
      {
LABEL_15:
        v27 = [[UIGraphicsImageRenderer alloc] initWithSize:v21, v23];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __52___UIDragPreviewBlockProvider__createImageComponent__block_invoke_2;
        v29[3] = &unk_1E70F6F38;
        v31 = v17;
        v32 = v19;
        v33 = v21;
        v34 = v23;
        v30 = view;
        v25 = [(UIGraphicsImageRenderer *)v27 imageWithActions:v29];
      }
    }

    initHidingDragImage = [[_UIDraggingImageComponent alloc] initWithImage:v25 frame:accessibilityIgnoresInvertColors ignoreAccessibilityFilters:v17, v19, v21, v23];

    goto LABEL_17;
  }

LABEL_18:

  return initHidingDragImage;
}

@end