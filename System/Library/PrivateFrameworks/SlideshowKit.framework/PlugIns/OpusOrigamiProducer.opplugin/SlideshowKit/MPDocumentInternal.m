@interface MPDocumentInternal
- (void)dealloc;
@end

@implementation MPDocumentInternal

- (void)dealloc
{
  self->lastRandomTransition = 0;

  self->orderedRandomTransitions = 0;
  self->propertiesLock = 0;

  self->documentLayerGroup = 0;
  self->cachedAbsolutePaths = 0;

  self->cachedAbsoluteStillPaths = 0;
  self->cachedPathLock = 0;

  self->undoManager = 0;
  self->cachedActionableLayers = 0;

  self->fileURL = 0;
  self->uuid = 0;
  v3.receiver = self;
  v3.super_class = MPDocumentInternal;
  [(MPDocumentInternal *)&v3 dealloc];
}

@end