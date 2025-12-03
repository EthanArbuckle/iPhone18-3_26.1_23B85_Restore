@interface PUEditableMediaProvider
- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int)requestAsynchronousVideoURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
@end

@implementation PUEditableMediaProvider

- (int)requestAsynchronousVideoURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUEditableMediaProvider.m" lineNumber:19 description:@"concrete subclass must implement"];

  return 0;
}

- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUEditableMediaProvider.m" lineNumber:14 description:@"concrete subclass must implement"];

  return 0;
}

@end