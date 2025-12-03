@interface SRUIFConversationTransaction
- (SRUIFConversationTransaction)initWithUpdatedItemIndexPaths:(id)paths insertedItemIndexPaths:(id)indexPaths presentationStateChangedItemIndexPaths:(id)itemIndexPaths;
@end

@implementation SRUIFConversationTransaction

- (SRUIFConversationTransaction)initWithUpdatedItemIndexPaths:(id)paths insertedItemIndexPaths:(id)indexPaths presentationStateChangedItemIndexPaths:(id)itemIndexPaths
{
  pathsCopy = paths;
  indexPathsCopy = indexPaths;
  itemIndexPathsCopy = itemIndexPaths;
  v15.receiver = self;
  v15.super_class = SRUIFConversationTransaction;
  v12 = [(SRUIFConversationTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedItemIndexPaths, paths);
    objc_storeStrong(&v13->_insertedItemIndexPaths, indexPaths);
    objc_storeStrong(&v13->_presentationStateChangedItemIndexPaths, itemIndexPaths);
  }

  return v13;
}

@end