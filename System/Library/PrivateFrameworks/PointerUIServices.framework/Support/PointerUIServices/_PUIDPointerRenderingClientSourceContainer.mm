@interface _PUIDPointerRenderingClientSourceContainer
- (NSArray)contentMatchMoveSources;
- (NSArray)pointerPortalSourceCollections;
- (void)addContentMatchMoveSource:(id)source;
- (void)addPointerPortalSourceCollection:(id)collection;
- (void)removeContentMatchMoveSource:(id)source;
- (void)removePointerPortalSourceCollection:(id)collection;
@end

@implementation _PUIDPointerRenderingClientSourceContainer

- (NSArray)contentMatchMoveSources
{
  v2 = [(NSMutableArray *)self->_contentMatchMoveSources copy];

  return v2;
}

- (NSArray)pointerPortalSourceCollections
{
  v2 = [(NSMutableArray *)self->_pointerPortalSourceCollections copy];

  return v2;
}

- (void)addPointerPortalSourceCollection:(id)collection
{
  collectionCopy = collection;
  pointerPortalSourceCollections = self->_pointerPortalSourceCollections;
  v8 = collectionCopy;
  if (!pointerPortalSourceCollections)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:1];
    v7 = self->_pointerPortalSourceCollections;
    self->_pointerPortalSourceCollections = v6;

    collectionCopy = v8;
    pointerPortalSourceCollections = self->_pointerPortalSourceCollections;
  }

  [(NSMutableArray *)pointerPortalSourceCollections addObject:collectionCopy];
}

- (void)removePointerPortalSourceCollection:(id)collection
{
  [(NSMutableArray *)self->_pointerPortalSourceCollections removeObject:collection];
  if (![(NSMutableArray *)self->_pointerPortalSourceCollections count])
  {
    pointerPortalSourceCollections = self->_pointerPortalSourceCollections;
    self->_pointerPortalSourceCollections = 0;
  }
}

- (void)addContentMatchMoveSource:(id)source
{
  sourceCopy = source;
  contentMatchMoveSources = self->_contentMatchMoveSources;
  v8 = sourceCopy;
  if (!contentMatchMoveSources)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contentMatchMoveSources;
    self->_contentMatchMoveSources = v6;

    sourceCopy = v8;
    contentMatchMoveSources = self->_contentMatchMoveSources;
  }

  [(NSMutableArray *)contentMatchMoveSources addObject:sourceCopy];
}

- (void)removeContentMatchMoveSource:(id)source
{
  [(NSMutableArray *)self->_contentMatchMoveSources removeObject:source];
  if (![(NSMutableArray *)self->_contentMatchMoveSources count])
  {
    contentMatchMoveSources = self->_contentMatchMoveSources;
    self->_contentMatchMoveSources = 0;
  }
}

@end