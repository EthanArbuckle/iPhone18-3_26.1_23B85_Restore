@interface PLInvitationRecordsChangeNotification
+ (id)notificationWithAlbum:(id)album snapshot:(id)snapshot;
- (PLGenericAlbum)album;
- (id)userInfo;
- (void)_calculateDiffs;
@end

@implementation PLInvitationRecordsChangeNotification

+ (id)notificationWithAlbum:(id)album snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  albumCopy = album;
  v8 = [[self alloc] _initWithObject:albumCopy snapshot:snapshotCopy changedObjects:0];

  return v8;
}

- (void)_calculateDiffs
{
  self->_invitationRecordsDidChange = 0;
  album = [(PLInvitationRecordsChangeNotification *)self album];
  v4 = [album conformsToProtocol:&unk_1F0FFFF38];

  if (v4)
  {
    snapshot = [(PLContainerChangeNotification *)self snapshot];
    v6 = snapshot;
    if (snapshot && [snapshot hasSnapshotValueForProperty:@"invitationRecords"])
    {
      v7 = [v6 snapshotValueForProperty:@"invitationRecords"];
      v8 = [v7 count];
    }

    else
    {
      v8 = 0;
    }

    album2 = [(PLInvitationRecordsChangeNotification *)self album];
    invitationRecords = [album2 invitationRecords];
    v11 = [invitationRecords count];

    self->_invitationRecordsDidChange = v8 != v11;
  }

  [(PLContainerChangeNotification *)self _setDidCalculateDiffs:1];
}

- (PLGenericAlbum)album
{
  object = [(PLContainerChangeNotification *)self object];
  if ([object conformsToProtocol:&unk_1F0FDA510])
  {
    object2 = [(PLContainerChangeNotification *)self object];
  }

  else
  {
    object2 = 0;
  }

  return object2;
}

- (id)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    v5 = self->_userInfo;
    self->_userInfo = dictionary;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

@end