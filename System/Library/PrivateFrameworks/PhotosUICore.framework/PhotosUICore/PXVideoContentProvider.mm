@interface PXVideoContentProvider
- (NSNumber)videoAspectRatio;
- (void)beginLoadingWithPriority:(int64_t)priority;
- (void)cancelLoading;
- (void)makeUniqueContentIdentifier;
- (void)setLoadingResult:(id)result;
@end

@implementation PXVideoContentProvider

- (NSNumber)videoAspectRatio
{
  loadingResult = [(PXVideoContentProvider *)self loadingResult];
  playerItem = [loadingResult playerItem];

  if (playerItem)
  {
    [playerItem presentationSize];
    PXSizeIsEmpty();
  }

  return 0;
}

- (void)setLoadingResult:(id)result
{
  resultCopy = result;
  if (self->_loadingResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_loadingResult, result);
    [(PXVideoContentProvider *)self signalChange:1];
    resultCopy = v6;
  }
}

- (void)cancelLoading
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoContentProvider.m" lineNumber:40 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoContentProvider cancelLoading]", v6}];

  abort();
}

- (void)beginLoadingWithPriority:(int64_t)priority
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoContentProvider.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoContentProvider beginLoadingWithPriority:]", v7}];

  abort();
}

- (void)makeUniqueContentIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoContentProvider.m" lineNumber:32 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoContentProvider makeUniqueContentIdentifier]", v6}];

  abort();
}

@end