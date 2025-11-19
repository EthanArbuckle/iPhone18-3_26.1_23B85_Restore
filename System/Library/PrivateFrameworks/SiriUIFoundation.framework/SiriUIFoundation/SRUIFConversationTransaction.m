@interface SRUIFConversationTransaction
- (SRUIFConversationTransaction)initWithUpdatedItemIndexPaths:(id)a3 insertedItemIndexPaths:(id)a4 presentationStateChangedItemIndexPaths:(id)a5;
@end

@implementation SRUIFConversationTransaction

- (SRUIFConversationTransaction)initWithUpdatedItemIndexPaths:(id)a3 insertedItemIndexPaths:(id)a4 presentationStateChangedItemIndexPaths:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SRUIFConversationTransaction;
  v12 = [(SRUIFConversationTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedItemIndexPaths, a3);
    objc_storeStrong(&v13->_insertedItemIndexPaths, a4);
    objc_storeStrong(&v13->_presentationStateChangedItemIndexPaths, a5);
  }

  return v13;
}

@end