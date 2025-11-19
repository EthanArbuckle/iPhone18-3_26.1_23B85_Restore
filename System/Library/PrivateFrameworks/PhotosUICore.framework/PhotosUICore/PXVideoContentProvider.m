@interface PXVideoContentProvider
- (NSNumber)videoAspectRatio;
- (void)beginLoadingWithPriority:(int64_t)a3;
- (void)cancelLoading;
- (void)makeUniqueContentIdentifier;
- (void)setLoadingResult:(id)a3;
@end

@implementation PXVideoContentProvider

- (NSNumber)videoAspectRatio
{
  v2 = [(PXVideoContentProvider *)self loadingResult];
  v3 = [v2 playerItem];

  if (v3)
  {
    [v3 presentationSize];
    PXSizeIsEmpty();
  }

  return 0;
}

- (void)setLoadingResult:(id)a3
{
  v5 = a3;
  if (self->_loadingResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_loadingResult, a3);
    [(PXVideoContentProvider *)self signalChange:1];
    v5 = v6;
  }
}

- (void)cancelLoading
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoContentProvider.m" lineNumber:40 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoContentProvider cancelLoading]", v6}];

  abort();
}

- (void)beginLoadingWithPriority:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXVideoContentProvider.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoContentProvider beginLoadingWithPriority:]", v7}];

  abort();
}

- (void)makeUniqueContentIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXVideoContentProvider.m" lineNumber:32 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoContentProvider makeUniqueContentIdentifier]", v6}];

  abort();
}

@end