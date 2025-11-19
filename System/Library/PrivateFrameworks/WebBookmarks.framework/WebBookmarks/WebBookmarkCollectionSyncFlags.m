@interface WebBookmarkCollectionSyncFlags
- (WebBookmarkCollectionSyncFlags)initWithSyncAllowed:(BOOL)a3;
@end

@implementation WebBookmarkCollectionSyncFlags

- (WebBookmarkCollectionSyncFlags)initWithSyncAllowed:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = WebBookmarkCollectionSyncFlags;
  v4 = [(WebBookmarkCollectionSyncFlags *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_syncAllowed = a3;
    v4->_syncLockFileDescriptor = -1;
    v4->_postSyncNotificationWhenUnlocking = 0;
    v6 = [MEMORY[0x277CBEB58] set];
    lockSyncHoldRequestorPointers = v5->_lockSyncHoldRequestorPointers;
    v5->_lockSyncHoldRequestorPointers = v6;

    v5->_syncNotificationType = 0;
    v8 = v5;
  }

  return v5;
}

@end