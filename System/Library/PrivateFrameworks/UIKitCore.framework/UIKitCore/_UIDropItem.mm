@interface _UIDropItem
- (id)_privateLocalContext;
- (id)itemProvider;
- (id)localObject;
- (void)_setPrivateLocalContext:(id)context;
- (void)setLocalObject:(id)object;
- (void)setNeedsDropPreviewUpdate;
@end

@implementation _UIDropItem

- (id)itemProvider
{
  dropItemProvider = self->_dropItemProvider;
  if (dropItemProvider)
  {
    itemProvider = dropItemProvider;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIDropItem;
    itemProvider = [(UIDragItem *)&v5 itemProvider];
  }

  return itemProvider;
}

- (id)localObject
{
  _localDragItem = [(_UIDropItem *)self _localDragItem];
  localObject = [_localDragItem localObject];

  return localObject;
}

- (void)setLocalObject:(id)object
{
  objectCopy = object;
  _localDragItem = [(_UIDropItem *)self _localDragItem];
  [_localDragItem setLocalObject:objectCopy];
}

- (id)_privateLocalContext
{
  _localDragItem = [(_UIDropItem *)self _localDragItem];
  _privateLocalContext = [_localDragItem _privateLocalContext];

  return _privateLocalContext;
}

- (void)_setPrivateLocalContext:(id)context
{
  contextCopy = context;
  _localDragItem = [(_UIDropItem *)self _localDragItem];
  [_localDragItem _setPrivateLocalContext:contextCopy];
}

- (void)setNeedsDropPreviewUpdate
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->super.__currentSetDownAnimation);
  }

  selfCopy2 = self;
  [(_UIDropItem *)self dirtyTargetedDragPreviewForDragItem:selfCopy];
}

@end