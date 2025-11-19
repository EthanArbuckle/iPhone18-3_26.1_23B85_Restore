@interface PLInvitationRecordsChangeNotification
+ (id)notificationWithAlbum:(id)a3 snapshot:(id)a4;
- (PLGenericAlbum)album;
- (id)userInfo;
- (void)_calculateDiffs;
@end

@implementation PLInvitationRecordsChangeNotification

+ (id)notificationWithAlbum:(id)a3 snapshot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithObject:v7 snapshot:v6 changedObjects:0];

  return v8;
}

- (void)_calculateDiffs
{
  self->_invitationRecordsDidChange = 0;
  v3 = [(PLInvitationRecordsChangeNotification *)self album];
  v4 = [v3 conformsToProtocol:&unk_1F0FFFF38];

  if (v4)
  {
    v5 = [(PLContainerChangeNotification *)self snapshot];
    v6 = v5;
    if (v5 && [v5 hasSnapshotValueForProperty:@"invitationRecords"])
    {
      v7 = [v6 snapshotValueForProperty:@"invitationRecords"];
      v8 = [v7 count];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PLInvitationRecordsChangeNotification *)self album];
    v10 = [v9 invitationRecords];
    v11 = [v10 count];

    self->_invitationRecordsDidChange = v8 != v11;
  }

  [(PLContainerChangeNotification *)self _setDidCalculateDiffs:1];
}

- (PLGenericAlbum)album
{
  v3 = [(PLContainerChangeNotification *)self object];
  if ([v3 conformsToProtocol:&unk_1F0FDA510])
  {
    v4 = [(PLContainerChangeNotification *)self object];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = [MEMORY[0x1E695DF20] dictionary];
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

@end