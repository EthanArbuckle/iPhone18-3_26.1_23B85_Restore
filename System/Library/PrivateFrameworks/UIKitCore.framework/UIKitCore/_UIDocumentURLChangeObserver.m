@interface _UIDocumentURLChangeObserver
- (BOOL)isObserving;
- (_UIDocumentURLChangeObserver)initWithFileURL:(id)a3;
- (void)presentedItemDidChange;
- (void)presentedItemDidMoveToURL:(id)a3;
- (void)startObservingWithChangeHandler:(id)a3;
- (void)stopObserving;
@end

@implementation _UIDocumentURLChangeObserver

- (_UIDocumentURLChangeObserver)initWithFileURL:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"fileURL != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UIDocumentURLChangeObserver;
  v7 = [(_UIDocumentURLChangeObserver *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_presentedItemURL, a3);
    v9 = [MEMORY[0x1E696ADC8] mainQueue];
    presentedItemOperationQueue = v8->_presentedItemOperationQueue;
    v8->_presentedItemOperationQueue = v9;
  }

  return v8;
}

- (BOOL)isObserving
{
  v2 = [(_UIDocumentURLChangeObserver *)self changeHandler];
  v3 = v2 != 0;

  return v3;
}

- (void)startObservingWithChangeHandler:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"changeHandler != NULL"}];
  }

  if ([(_UIDocumentURLChangeObserver *)self isObserving])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:43 description:@"Already observing."];
  }

  [(_UIDocumentURLChangeObserver *)self setChangeHandler:v7];
  [MEMORY[0x1E696ABF8] addFilePresenter:self];
}

- (void)stopObserving
{
  if (![(_UIDocumentURLChangeObserver *)self isObserving])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:50 description:@"Not observing."];
  }

  [MEMORY[0x1E696ABF8] removeFilePresenter:self];

  [(_UIDocumentURLChangeObserver *)self setChangeHandler:0];
}

- (void)presentedItemDidChange
{
  v2 = [(_UIDocumentURLChangeObserver *)self changeHandler];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, 0);
    v2 = v3;
  }
}

- (void)presentedItemDidMoveToURL:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_presentedItemURL, a3);
  v5 = [(_UIDocumentURLChangeObserver *)self changeHandler];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }
}

@end