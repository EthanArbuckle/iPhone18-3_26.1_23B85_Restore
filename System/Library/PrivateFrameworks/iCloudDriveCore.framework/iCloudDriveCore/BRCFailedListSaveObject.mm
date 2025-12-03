@interface BRCFailedListSaveObject
- (BRCFailedListSaveObject)initWithPendingChangesStream:(id)stream serverTruthCallback:(id)callback clientTruthCallback:(id)truthCallback;
@end

@implementation BRCFailedListSaveObject

- (BRCFailedListSaveObject)initWithPendingChangesStream:(id)stream serverTruthCallback:(id)callback clientTruthCallback:(id)truthCallback
{
  streamCopy = stream;
  callbackCopy = callback;
  truthCallbackCopy = truthCallback;
  v19.receiver = self;
  v19.super_class = BRCFailedListSaveObject;
  v12 = [(BRCFailedListSaveObject *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pendingChangesStream, stream);
    v14 = MEMORY[0x22AA4A310](callbackCopy);
    serverTruthCallback = v13->_serverTruthCallback;
    v13->_serverTruthCallback = v14;

    v16 = MEMORY[0x22AA4A310](truthCallbackCopy);
    clientTruthCallback = v13->_clientTruthCallback;
    v13->_clientTruthCallback = v16;
  }

  return v13;
}

@end