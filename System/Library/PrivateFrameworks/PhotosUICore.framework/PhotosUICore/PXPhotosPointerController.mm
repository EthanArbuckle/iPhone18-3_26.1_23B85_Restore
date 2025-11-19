@interface PXPhotosPointerController
- (PXPhotosPointerController)initWithContentView:(id)a3 delegate:(id)a4;
- (PXPhotosPointerControllerDelegate)delegate;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (void)_setupWithContentView:(id)a3;
- (void)invalidate;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXPhotosPointerController

- (PXPhotosPointerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v8 = a3;
  v6 = +[PXCursorInteractionSettings sharedInstance];

  if (v6 != v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXPhotosPointerController.m" lineNumber:99 description:{@"Unexpected settings observer instance: %@", v8}];
  }

  [(PXPhotosPointerController *)self invalidate];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  [a4 rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = [(PXPhotosPointerController *)self contentView];
  v14 = [(PXPhotosPointerController *)self delegate];
  [v14 pointerController:self didExitRegionWithRect:v15 inCoordinateSpace:{v7, v9, v11, v13}];
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  [a4 rect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = [(PXPhotosPointerController *)self contentView];
  v14 = [(PXPhotosPointerController *)self delegate];
  [v14 pointerController:self willEnterRegionWithRect:v15 inCoordinateSpace:{v7, v9, v11, v13}];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  v7 = [(PXPhotosPointerController *)self delegate];
  v8 = [(PXPhotosPointerController *)self contentView];
  [v6 location];
  v10 = v9;
  v12 = v11;
  v13 = [v8 coordinateSpace];
  v14 = [v7 pointerController:self regionOfInterestForCursorAtLocation:v13 inCoordinateSpace:{v10, v12}];

  if (v14)
  {
    [v6 location];
    v16 = v15;
    v18 = v17;
    v19 = [v8 coordinateSpace];
    v20 = [v7 pointerController:self identifierForRegionAtLocation:v19 inCoordinateSpace:{v16, v18}];

    v21 = MEMORY[0x1E69DCDC0];
    [v14 rectInCoordinateSpace:v8];
    v22 = [v21 regionWithRect:v20 identifier:?];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_setupWithContentView:(id)a3
{
  v8 = a3;
  v4 = +[PXCursorInteractionSettings sharedInstance];
  v5 = [v4 enableCuratedLibraryEffects];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    [v8 addInteraction:v6];
    pointerInteraction = self->_pointerInteraction;
    self->_pointerInteraction = v6;
  }
}

- (void)invalidate
{
  v2 = [(PXPhotosPointerController *)self pointerInteraction];
  [v2 invalidate];
}

- (PXPhotosPointerController)initWithContentView:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PXPhotosPointerController;
  v9 = [(PXPhotosPointerController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_contentView, a3);
    [(PXPhotosPointerController *)v10 _setupWithContentView:v7];
    v11 = +[PXCursorInteractionSettings sharedInstance];
    [v11 addDeferredKeyObserver:v10];
  }

  return v10;
}

@end