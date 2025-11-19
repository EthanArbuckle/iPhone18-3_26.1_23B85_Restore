@interface _PUIDPointerRenderingClientSourceContainer
- (NSArray)contentMatchMoveSources;
- (NSArray)pointerPortalSourceCollections;
- (void)addContentMatchMoveSource:(id)a3;
- (void)addPointerPortalSourceCollection:(id)a3;
- (void)removeContentMatchMoveSource:(id)a3;
- (void)removePointerPortalSourceCollection:(id)a3;
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

- (void)addPointerPortalSourceCollection:(id)a3
{
  v4 = a3;
  pointerPortalSourceCollections = self->_pointerPortalSourceCollections;
  v8 = v4;
  if (!pointerPortalSourceCollections)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:1];
    v7 = self->_pointerPortalSourceCollections;
    self->_pointerPortalSourceCollections = v6;

    v4 = v8;
    pointerPortalSourceCollections = self->_pointerPortalSourceCollections;
  }

  [(NSMutableArray *)pointerPortalSourceCollections addObject:v4];
}

- (void)removePointerPortalSourceCollection:(id)a3
{
  [(NSMutableArray *)self->_pointerPortalSourceCollections removeObject:a3];
  if (![(NSMutableArray *)self->_pointerPortalSourceCollections count])
  {
    pointerPortalSourceCollections = self->_pointerPortalSourceCollections;
    self->_pointerPortalSourceCollections = 0;
  }
}

- (void)addContentMatchMoveSource:(id)a3
{
  v4 = a3;
  contentMatchMoveSources = self->_contentMatchMoveSources;
  v8 = v4;
  if (!contentMatchMoveSources)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contentMatchMoveSources;
    self->_contentMatchMoveSources = v6;

    v4 = v8;
    contentMatchMoveSources = self->_contentMatchMoveSources;
  }

  [(NSMutableArray *)contentMatchMoveSources addObject:v4];
}

- (void)removeContentMatchMoveSource:(id)a3
{
  [(NSMutableArray *)self->_contentMatchMoveSources removeObject:a3];
  if (![(NSMutableArray *)self->_contentMatchMoveSources count])
  {
    contentMatchMoveSources = self->_contentMatchMoveSources;
    self->_contentMatchMoveSources = 0;
  }
}

@end