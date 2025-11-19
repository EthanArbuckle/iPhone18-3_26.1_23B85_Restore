@interface PLAssetComputeSyncNodeContainerPayloadAdapter
- (PLAssetComputeSyncNodeContainerPayloadAdapter)initWithManagedObject:(id)a3;
@end

@implementation PLAssetComputeSyncNodeContainerPayloadAdapter

- (PLAssetComputeSyncNodeContainerPayloadAdapter)initWithManagedObject:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLAssetComputeSyncNodeContainerPayloadAdapter;
  v5 = [(PLJournalEntryPayloadUpdateAdapter *)&v11 initWithManagedObject:v4];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 nodeContainerClass];
    if (v7)
    {
      v8 = [PLGraphNodeContainer newNodeContainerWithNode:v6 containerClass:v7];
      nodeContainer = v5->_nodeContainer;
      v5->_nodeContainer = v8;
    }
  }

  return v5;
}

@end