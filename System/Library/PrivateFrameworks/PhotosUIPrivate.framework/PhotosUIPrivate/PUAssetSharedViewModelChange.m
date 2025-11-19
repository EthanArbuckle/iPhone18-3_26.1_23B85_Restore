@interface PUAssetSharedViewModelChange
- (BOOL)hasChanges;
@end

@implementation PUAssetSharedViewModelChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUAssetSharedViewModelChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUAssetSharedViewModelChange *)self loadingStatusChanged]|| [(PUAssetSharedViewModelChange *)self saveProgressChanged]|| [(PUAssetSharedViewModelChange *)self saveStateChanged]|| [(PUAssetSharedViewModelChange *)self needsDeferredProcessingChanged]|| [(PUAssetSharedViewModelChange *)self deferredProcessingNeededChanged]|| [(PUAssetSharedViewModelChange *)self flippingFullSizeRenderStateChanged];
}

@end