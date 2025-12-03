@interface _UIDocumentURLChangeObserver
- (BOOL)isObserving;
- (_UIDocumentURLChangeObserver)initWithFileURL:(id)l;
- (void)presentedItemDidChange;
- (void)presentedItemDidMoveToURL:(id)l;
- (void)startObservingWithChangeHandler:(id)handler;
- (void)stopObserving;
@end

@implementation _UIDocumentURLChangeObserver

- (_UIDocumentURLChangeObserver)initWithFileURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"fileURL != nil"}];
  }

  v13.receiver = self;
  v13.super_class = _UIDocumentURLChangeObserver;
  v7 = [(_UIDocumentURLChangeObserver *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_presentedItemURL, l);
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    presentedItemOperationQueue = v8->_presentedItemOperationQueue;
    v8->_presentedItemOperationQueue = mainQueue;
  }

  return v8;
}

- (BOOL)isObserving
{
  changeHandler = [(_UIDocumentURLChangeObserver *)self changeHandler];
  v3 = changeHandler != 0;

  return v3;
}

- (void)startObservingWithChangeHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"changeHandler != NULL"}];
  }

  if ([(_UIDocumentURLChangeObserver *)self isObserving])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:43 description:@"Already observing."];
  }

  [(_UIDocumentURLChangeObserver *)self setChangeHandler:handlerCopy];
  [MEMORY[0x1E696ABF8] addFilePresenter:self];
}

- (void)stopObserving
{
  if (![(_UIDocumentURLChangeObserver *)self isObserving])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDocumentURLChangeObserver.m" lineNumber:50 description:@"Not observing."];
  }

  [MEMORY[0x1E696ABF8] removeFilePresenter:self];

  [(_UIDocumentURLChangeObserver *)self setChangeHandler:0];
}

- (void)presentedItemDidChange
{
  changeHandler = [(_UIDocumentURLChangeObserver *)self changeHandler];
  if (changeHandler)
  {
    v3 = changeHandler;
    changeHandler[2](changeHandler, 0);
    changeHandler = v3;
  }
}

- (void)presentedItemDidMoveToURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_presentedItemURL, l);
  changeHandler = [(_UIDocumentURLChangeObserver *)self changeHandler];
  v6 = changeHandler;
  if (changeHandler)
  {
    (*(changeHandler + 16))(changeHandler, lCopy);
  }
}

@end