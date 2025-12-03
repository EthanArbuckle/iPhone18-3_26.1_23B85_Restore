@interface PLAssetComputeSyncNodeContainerPayloadAdapter
- (PLAssetComputeSyncNodeContainerPayloadAdapter)initWithManagedObject:(id)object;
@end

@implementation PLAssetComputeSyncNodeContainerPayloadAdapter

- (PLAssetComputeSyncNodeContainerPayloadAdapter)initWithManagedObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = PLAssetComputeSyncNodeContainerPayloadAdapter;
  v5 = [(PLJournalEntryPayloadUpdateAdapter *)&v11 initWithManagedObject:objectCopy];
  if (v5)
  {
    v6 = objectCopy;
    nodeContainerClass = [v6 nodeContainerClass];
    if (nodeContainerClass)
    {
      v8 = [PLGraphNodeContainer newNodeContainerWithNode:v6 containerClass:nodeContainerClass];
      nodeContainer = v5->_nodeContainer;
      v5->_nodeContainer = v8;
    }
  }

  return v5;
}

@end