@interface UIDragItem
- ($1AB5FA073B851C12C2339EC22442E995)_associatedObjectManipulationDragItemSize;
- (CGAffineTransform)_suggestedTransform;
- (CGPoint)_visibleDropItemCenter;
- (CGSize)_visibleDropItemSize;
- (UIDragItem)initWithItemProvider:(NSItemProvider *)itemProvider;
- (_UIDragDropSessionInternal)_dragDropSession;
- (_UIDragSetDownAnimationTarget)_destinationVisualTarget;
- (_UIDragSetDownAnimationTarget)_sourceVisualTarget;
- (id)_currentPreviewProvider;
- (id)_currentPreviewProviderView;
- (id)_previewProviderForType:(unint64_t)a3;
- (void)_loadOriginalImageComponentProvider;
- (void)_previewNeedsUpdateForType:(unint64_t)a3;
- (void)_setDeferPreviewUpdates:(BOOL)a3;
- (void)_setDragDropSession:(id)a3;
- (void)_setPreviewProvider:(id)a3 systemSet:(BOOL)a4;
- (void)_updatePreferredPreview;
- (void)previewProvider;
- (void)set_suggestedTransform:(CGAffineTransform *)a3;
@end

@implementation UIDragItem

- (UIDragItem)initWithItemProvider:(NSItemProvider *)itemProvider
{
  v5 = itemProvider;
  v10.receiver = self;
  v10.super_class = UIDragItem;
  v6 = [(UIDragItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemProvider, itemProvider);
    v7->_preferredPreviewType = 1;
    v8 = v7;
  }

  return v7;
}

- (void)_updatePreferredPreview
{
  updatedPreviewType = self->_updatedPreviewType;
  if (updatedPreviewType)
  {
    self->_dirty = 1;
    self->_preferredPreviewType = updatedPreviewType;
    self->_updatedPreviewType = 0;
  }
}

- (void)_setDeferPreviewUpdates:(BOOL)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_deferPreviewUpdates != a3)
  {
    self->_deferPreviewUpdates = a3;
    if (!a3)
    {
      if (self->_updatedPreviewType)
      {
        v4 = [(UIDragItem *)self _dragDropSession];
        v6[0] = self;
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
        [v4 _itemsNeedUpdate:v5];
      }
    }
  }
}

- (void)_loadOriginalImageComponentProvider
{
  v2 = [(UIDragItem *)self _previewProviderForType:1];
  [v2 imageComponent];
}

- (void)_setPreviewProvider:(id)a3 systemSet:(BOOL)a4
{
  v6 = a3;
  if (a4 || !self->_previewProviderIsSystemSet)
  {
    self->_previewProviderIsSystemSet = a4;
    if (self->_previewProvider != v6)
    {
      v11 = v6;
      v7 = _Block_copy(v6);
      previewProvider = self->_previewProvider;
      self->_previewProvider = v7;

      if (v11)
      {
        v9 = [_UIDragPreviewBlockProvider previewProviderWithBlock:?];
      }

      else
      {
        v9 = 0;
      }

      dragPreviewBlockProvider = self->_dragPreviewBlockProvider;
      self->_dragPreviewBlockProvider = v9;

      [(UIDragItem *)self _previewNeedsUpdateForType:2];
      v6 = v11;
    }
  }
}

- (void)previewProvider
{
  if (self->_previewProviderIsSystemSet)
  {
    v3 = 0;
  }

  else
  {
    v3 = _Block_copy(self->_previewProvider);
  }

  return v3;
}

- (void)_setDragDropSession:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dragDropSession);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_dragDropSession);

    objc_storeWeak(&self->_dragDropSession, obj);
    if (!v5)
    {
      v6 = objc_loadWeakRetained(&self->_dragDropSession);
      if (v6)
      {
        previewProvider = self->_previewProvider;

        if (previewProvider)
        {
          [(UIDragItem *)self _previewNeedsUpdateForType:2];
        }
      }
    }
  }
}

- (void)_previewNeedsUpdateForType:(unint64_t)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  self->_updatedPreviewType = a3;
  if (!self->_deferPreviewUpdates)
  {
    v4 = [(UIDragItem *)self _dragDropSession];
    v6[0] = self;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 _itemsNeedUpdate:v5];
  }
}

- (id)_previewProviderForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = 96;
LABEL_5:
    v6 = [*(&self->super.isa + v5) _dragPreviewProvider];

    return v6;
  }

  if (a3 == 2)
  {
    v5 = 40;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_currentPreviewProvider
{
  v3 = [(UIDragItem *)self preferredPreviewType];

  return [(UIDragItem *)self _previewProviderForType:v3];
}

- (id)_currentPreviewProviderView
{
  v2 = [(UIDragItem *)self _previewProviderForType:[(UIDragItem *)self preferredPreviewType]];
  v3 = [v2 imageComponent];
  v4 = [v3 view];

  return v4;
}

- (_UIDragDropSessionInternal)_dragDropSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDropSession);

  return WeakRetained;
}

- (CGSize)_visibleDropItemSize
{
  width = self->_visibleDropItemSize.width;
  height = self->_visibleDropItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)_visibleDropItemCenter
{
  x = self->_visibleDropItemCenter.x;
  y = self->_visibleDropItemCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_UIDragSetDownAnimationTarget)_sourceVisualTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceVisualTarget);

  return WeakRetained;
}

- (_UIDragSetDownAnimationTarget)_destinationVisualTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_destinationVisualTarget);

  return WeakRetained;
}

- ($1AB5FA073B851C12C2339EC22442E995)_associatedObjectManipulationDragItemSize
{
  width = self->_associatedObjectManipulationDragItemSize.width;
  height = self->_associatedObjectManipulationDragItemSize.height;
  depth = self->_associatedObjectManipulationDragItemSize.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (CGAffineTransform)_suggestedTransform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (void)set_suggestedTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->__suggestedTransform.tx = *&a3->tx;
  *&self->__suggestedTransform.c = v4;
  *&self->__suggestedTransform.a = v3;
}

@end