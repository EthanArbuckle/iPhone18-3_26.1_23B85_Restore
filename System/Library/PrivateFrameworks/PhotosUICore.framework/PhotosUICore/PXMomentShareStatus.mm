@interface PXMomentShareStatus
+ (PXMomentShareStatus)new;
- (PXCPLUIStatusProvider)statusProvider;
- (PXMomentShareStatus)init;
- (PXMomentShareStatus)initWithMomentShare:(id)share;
- (void)performChanges:(id)changes;
- (void)setAllAssetsFetchResult:(id)result;
- (void)setCopiedAssetsFetchResult:(id)result;
- (void)setCopyingAssetsFetchResult:(id)result;
- (void)setMomentShare:(id)share;
@end

@implementation PXMomentShareStatus

- (void)setAllAssetsFetchResult:(id)result
{
  resultCopy = result;
  if (self->_allAssetsFetchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_allAssetsFetchResult, result);
    [(PXMomentShareStatus *)self signalChange:8];
    resultCopy = v6;
  }
}

- (void)setCopiedAssetsFetchResult:(id)result
{
  resultCopy = result;
  if (self->_copiedAssetsFetchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_copiedAssetsFetchResult, result);
    [(PXMomentShareStatus *)self signalChange:4];
    resultCopy = v6;
  }
}

- (void)setCopyingAssetsFetchResult:(id)result
{
  resultCopy = result;
  if (self->_copyingAssetsFetchResult != resultCopy)
  {
    v6 = resultCopy;
    objc_storeStrong(&self->_copyingAssetsFetchResult, result);
    [(PXMomentShareStatus *)self signalChange:2];
    resultCopy = v6;
  }
}

- (void)setMomentShare:(id)share
{
  shareCopy = share;
  if (self->_momentShare != shareCopy)
  {
    v6 = shareCopy;
    objc_storeStrong(&self->_momentShare, share);
    [(PXMomentShareStatus *)self signalChange:1];
    shareCopy = v6;
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXMomentShareStatus;
  [(PXMomentShareStatus *)&v3 performChanges:changes];
}

- (PXCPLUIStatusProvider)statusProvider
{
  statusProvider = self->_statusProvider;
  if (!statusProvider)
  {
    _createStatusProvider = [(PXMomentShareStatus *)self _createStatusProvider];
    v5 = self->_statusProvider;
    self->_statusProvider = _createStatusProvider;

    statusProvider = self->_statusProvider;
  }

  return statusProvider;
}

- (PXMomentShareStatus)initWithMomentShare:(id)share
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v11.receiver = self;
  v11.super_class = PXMomentShareStatus;
  v7 = [(PXMomentShareStatus *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_momentShare, share);
  }

  return v8;
}

- (PXMomentShareStatus)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXMomentShareStatus init]"}];

  abort();
}

+ (PXMomentShareStatus)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:42 description:{@"%s is not available as initializer", "+[PXMomentShareStatus new]"}];

  abort();
}

@end