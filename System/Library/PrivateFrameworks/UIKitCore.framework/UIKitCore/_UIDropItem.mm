@interface _UIDropItem
- (id)_privateLocalContext;
- (id)itemProvider;
- (id)localObject;
- (void)_setPrivateLocalContext:(id)a3;
- (void)setLocalObject:(id)a3;
- (void)setNeedsDropPreviewUpdate;
@end

@implementation _UIDropItem

- (id)itemProvider
{
  dropItemProvider = self->_dropItemProvider;
  if (dropItemProvider)
  {
    v3 = dropItemProvider;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIDropItem;
    v3 = [(UIDragItem *)&v5 itemProvider];
  }

  return v3;
}

- (id)localObject
{
  v2 = [(_UIDropItem *)self _localDragItem];
  v3 = [v2 localObject];

  return v3;
}

- (void)setLocalObject:(id)a3
{
  v4 = a3;
  v5 = [(_UIDropItem *)self _localDragItem];
  [v5 setLocalObject:v4];
}

- (id)_privateLocalContext
{
  v2 = [(_UIDropItem *)self _localDragItem];
  v3 = [v2 _privateLocalContext];

  return v3;
}

- (void)_setPrivateLocalContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIDropItem *)self _localDragItem];
  [v5 _setPrivateLocalContext:v4];
}

- (void)setNeedsDropPreviewUpdate
{
  v2 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->super.__currentSetDownAnimation);
  }

  v3 = self;
  [(_UIDropItem *)self dirtyTargetedDragPreviewForDragItem:v2];
}

@end