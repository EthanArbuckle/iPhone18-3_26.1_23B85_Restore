@interface BRCFailedListSaveObject
- (BRCFailedListSaveObject)initWithPendingChangesStream:(id)a3 serverTruthCallback:(id)a4 clientTruthCallback:(id)a5;
@end

@implementation BRCFailedListSaveObject

- (BRCFailedListSaveObject)initWithPendingChangesStream:(id)a3 serverTruthCallback:(id)a4 clientTruthCallback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = BRCFailedListSaveObject;
  v12 = [(BRCFailedListSaveObject *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pendingChangesStream, a3);
    v14 = MEMORY[0x22AA4A310](v10);
    serverTruthCallback = v13->_serverTruthCallback;
    v13->_serverTruthCallback = v14;

    v16 = MEMORY[0x22AA4A310](v11);
    clientTruthCallback = v13->_clientTruthCallback;
    v13->_clientTruthCallback = v16;
  }

  return v13;
}

@end