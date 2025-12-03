@interface PXPhotosPointerController
- (PXPhotosPointerController)initWithContentView:(id)view delegate:(id)delegate;
- (PXPhotosPointerControllerDelegate)delegate;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (void)_setupWithContentView:(id)view;
- (void)invalidate;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PXPhotosPointerController

- (PXPhotosPointerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  v6 = +[PXCursorInteractionSettings sharedInstance];

  if (v6 != settingsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosPointerController.m" lineNumber:99 description:{@"Unexpected settings observer instance: %@", settingsCopy}];
  }

  [(PXPhotosPointerController *)self invalidate];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  [region rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView = [(PXPhotosPointerController *)self contentView];
  delegate = [(PXPhotosPointerController *)self delegate];
  [delegate pointerController:self didExitRegionWithRect:contentView inCoordinateSpace:{v7, v9, v11, v13}];
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  [region rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView = [(PXPhotosPointerController *)self contentView];
  delegate = [(PXPhotosPointerController *)self delegate];
  [delegate pointerController:self willEnterRegionWithRect:contentView inCoordinateSpace:{v7, v9, v11, v13}];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  delegate = [(PXPhotosPointerController *)self delegate];
  contentView = [(PXPhotosPointerController *)self contentView];
  [requestCopy location];
  v10 = v9;
  v12 = v11;
  coordinateSpace = [contentView coordinateSpace];
  v14 = [delegate pointerController:self regionOfInterestForCursorAtLocation:coordinateSpace inCoordinateSpace:{v10, v12}];

  if (v14)
  {
    [requestCopy location];
    v16 = v15;
    v18 = v17;
    coordinateSpace2 = [contentView coordinateSpace];
    v20 = [delegate pointerController:self identifierForRegionAtLocation:coordinateSpace2 inCoordinateSpace:{v16, v18}];

    v21 = MEMORY[0x1E69DCDC0];
    [v14 rectInCoordinateSpace:contentView];
    v22 = [v21 regionWithRect:v20 identifier:?];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_setupWithContentView:(id)view
{
  viewCopy = view;
  v4 = +[PXCursorInteractionSettings sharedInstance];
  enableCuratedLibraryEffects = [v4 enableCuratedLibraryEffects];

  if (enableCuratedLibraryEffects)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    [viewCopy addInteraction:v6];
    pointerInteraction = self->_pointerInteraction;
    self->_pointerInteraction = v6;
  }
}

- (void)invalidate
{
  pointerInteraction = [(PXPhotosPointerController *)self pointerInteraction];
  [pointerInteraction invalidate];
}

- (PXPhotosPointerController)initWithContentView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PXPhotosPointerController;
  v9 = [(PXPhotosPointerController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_contentView, view);
    [(PXPhotosPointerController *)v10 _setupWithContentView:viewCopy];
    v11 = +[PXCursorInteractionSettings sharedInstance];
    [v11 addDeferredKeyObserver:v10];
  }

  return v10;
}

@end