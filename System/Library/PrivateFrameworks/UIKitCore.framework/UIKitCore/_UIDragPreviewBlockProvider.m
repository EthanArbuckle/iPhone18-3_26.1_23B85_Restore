@interface _UIDragPreviewBlockProvider
+ (id)previewProviderWithBlock:(id)a3;
- (UIDragPreview)preview;
- (id)_createImageComponent;
- (id)_duiPreview;
- (id)imageComponent;
@end

@implementation _UIDragPreviewBlockProvider

+ (id)previewProviderWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"UIDragPreview.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"previewProviderBlock"}];
  }

  objc_opt_class();
  v6 = objc_opt_new();
  v7 = _Block_copy(v5);
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
  v2 = [(_UIDragPreviewBlockProvider *)self preview];
  v3 = [v2 _duiPreview];

  return v3;
}

- (id)imageComponent
{
  imageComponent = self->_imageComponent;
  if (!imageComponent)
  {
    v4 = [(_UIDragPreviewBlockProvider *)self _createImageComponent];
    v5 = self->_imageComponent;
    self->_imageComponent = v4;

    imageComponent = self->_imageComponent;
  }

  return imageComponent;
}

- (id)_createImageComponent
{
  v3 = [(_UIDragPreviewBlockProvider *)self preview];

  if (!v3)
  {
    v8 = [[_UIDraggingImageComponent alloc] initHidingDragImage];
    goto LABEL_18;
  }

  v4 = [(_UIDragPreviewBlockProvider *)self preview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (-[_UIDragPreviewBlockProvider preview](self, "preview"), v6 = objc_claimAutoreleasedReturnValue(), [v6 _dragPreviewProvider], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "imageComponent"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    v9 = [(_UIDragPreviewBlockProvider *)self preview];
    v10 = [v9 view];
    v11 = [v9 parameters];
    v12 = [v11 _previewMode];

    if ((v12 - 3) <= 1)
    {
      v8 = [[_UIDraggingImageComponent alloc] initWithView:v10];
LABEL_17:

      goto LABEL_18;
    }

    if ([UIApp _isSpringBoard])
    {
      v13 = 0;
    }

    else
    {
      v13 = [v9 _preventAfterScreenUpdatesSnapshot] ^ 1;
    }

    CanBeRenderedAfterCommit = _UIViewCanBeRenderedAfterCommit(v10, v13);
    v15 = [v10 accessibilityIgnoresInvertColors];
    [v10 bounds];
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
      v24 = [(UIView *)v10 _internalTraitOverrides];
      [v24 _setNSIntegerValue:0 forTraitToken:0x1EFE325A8];

      [(UIView *)v10 _addChildTraitCollectionTransformWithIdentifier:&__block_literal_global_717 transform:?];
      [v10 updateTraitsIfNeeded];
      v25 = _UIRenderViewImageAfterCommit(v10, 0, 1);
      v26 = [(UIView *)v10 _internalTraitOverrides];
      [(_UITraitOverrides *)v26 _removeTraitToken:?];

      [(UIView *)v10 _removeChildTraitCollectionTransformWithIdentifier:?];
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v25 = _UIRenderViewImageAfterCommit(v10, 0, 0);
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
        v30 = v10;
        v25 = [(UIGraphicsImageRenderer *)v27 imageWithActions:v29];
      }
    }

    v8 = [[_UIDraggingImageComponent alloc] initWithImage:v25 frame:v15 ignoreAccessibilityFilters:v17, v19, v21, v23];

    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

@end