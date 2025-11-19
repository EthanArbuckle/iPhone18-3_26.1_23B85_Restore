@interface PXMomentShareStatus
+ (PXMomentShareStatus)new;
- (PXCPLUIStatusProvider)statusProvider;
- (PXMomentShareStatus)init;
- (PXMomentShareStatus)initWithMomentShare:(id)a3;
- (void)performChanges:(id)a3;
- (void)setAllAssetsFetchResult:(id)a3;
- (void)setCopiedAssetsFetchResult:(id)a3;
- (void)setCopyingAssetsFetchResult:(id)a3;
- (void)setMomentShare:(id)a3;
@end

@implementation PXMomentShareStatus

- (void)setAllAssetsFetchResult:(id)a3
{
  v5 = a3;
  if (self->_allAssetsFetchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_allAssetsFetchResult, a3);
    [(PXMomentShareStatus *)self signalChange:8];
    v5 = v6;
  }
}

- (void)setCopiedAssetsFetchResult:(id)a3
{
  v5 = a3;
  if (self->_copiedAssetsFetchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_copiedAssetsFetchResult, a3);
    [(PXMomentShareStatus *)self signalChange:4];
    v5 = v6;
  }
}

- (void)setCopyingAssetsFetchResult:(id)a3
{
  v5 = a3;
  if (self->_copyingAssetsFetchResult != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_copyingAssetsFetchResult, a3);
    [(PXMomentShareStatus *)self signalChange:2];
    v5 = v6;
  }
}

- (void)setMomentShare:(id)a3
{
  v5 = a3;
  if (self->_momentShare != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_momentShare, a3);
    [(PXMomentShareStatus *)self signalChange:1];
    v5 = v6;
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXMomentShareStatus;
  [(PXMomentShareStatus *)&v3 performChanges:a3];
}

- (PXCPLUIStatusProvider)statusProvider
{
  statusProvider = self->_statusProvider;
  if (!statusProvider)
  {
    v4 = [(PXMomentShareStatus *)self _createStatusProvider];
    v5 = self->_statusProvider;
    self->_statusProvider = v4;

    statusProvider = self->_statusProvider;
  }

  return statusProvider;
}

- (PXMomentShareStatus)initWithMomentShare:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v11.receiver = self;
  v11.super_class = PXMomentShareStatus;
  v7 = [(PXMomentShareStatus *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_momentShare, a3);
  }

  return v8;
}

- (PXMomentShareStatus)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMomentShareStatus.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXMomentShareStatus init]"}];

  abort();
}

+ (PXMomentShareStatus)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXMomentShareStatus.m" lineNumber:42 description:{@"%s is not available as initializer", "+[PXMomentShareStatus new]"}];

  abort();
}

@end