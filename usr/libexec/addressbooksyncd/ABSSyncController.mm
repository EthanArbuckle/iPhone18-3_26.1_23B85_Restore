@interface ABSSyncController
- (ABSSyncController)init;
- (void)addSyChanges:(id)changes forSession:(id)session;
- (void)deleteSyChange:(id)change;
- (void)resetSyncState;
- (void)updateSyChange:(id)change forSession:(id)session;
@end

@implementation ABSSyncController

- (ABSSyncController)init
{
  v8.receiver = self;
  v8.super_class = ABSSyncController;
  v2 = [(ABSSyncController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(ABSContactsSyncManager);
    abSyncManager = v2->_abSyncManager;
    v2->_abSyncManager = v3;

    v5 = objc_alloc_init(ABSFavoritesSyncManager);
    favoritesSyncManager = v2->_favoritesSyncManager;
    v2->_favoritesSyncManager = v5;
  }

  return v2;
}

- (void)addSyChanges:(id)changes forSession:(id)session
{
  changesCopy = changes;
  sessionCopy = session;
  if ([changesCopy count])
  {
    firstObject = [changesCopy firstObject];
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      pbObject = [firstObject pbObject];
      contactWrapper = [pbObject contactWrapper];
      guid = [contactWrapper guid];
      v19 = 138543362;
      v20 = guid;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "addSyChange for %{public}@", &v19, 0xCu);
    }

    pbObject2 = [firstObject pbObject];
    if ([pbObject2 hasContactWrapper])
    {
    }

    else
    {
      pbObject3 = [firstObject pbObject];
      hasLmaSyncData = [pbObject3 hasLmaSyncData];

      if (!hasLmaSyncData)
      {
        pbObject4 = [firstObject pbObject];
        hasFavoritesSyncObject = [pbObject4 hasFavoritesSyncObject];

        if (hasFavoritesSyncObject)
        {
          [(ABSFavoritesSyncManager *)self->_favoritesSyncManager replace:firstObject];
        }

        else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10003B880();
        }

        goto LABEL_10;
      }
    }

    [(ABSContactsSyncManager *)self->_abSyncManager addBatch:changesCopy forSession:sessionCopy];
LABEL_10:

    goto LABEL_11;
  }

  if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003B8B4();
  }

LABEL_11:
}

- (void)updateSyChange:(id)change forSession:(id)session
{
  changeCopy = change;
  sessionCopy = session;
  v8 = changeCopy;
  pbObject = [v8 pbObject];
  hasContactWrapper = [pbObject hasContactWrapper];

  if (hasContactWrapper)
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      pbObject2 = [v8 pbObject];
      contactWrapper = [pbObject2 contactWrapper];
      guid = [contactWrapper guid];
      v34 = 138543362;
      v35 = guid;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "updateSyChange for contact %{public}@", &v34, 0xCu);
    }

    [(ABSContactsSyncManager *)self->_abSyncManager addOrUpdateContactIn:v8 forSession:sessionCopy];
    goto LABEL_24;
  }

  pbObject3 = [v8 pbObject];
  hasFavoritesSyncObject = [pbObject3 hasFavoritesSyncObject];

  if (hasFavoritesSyncObject)
  {
    v18 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "updateSyChange for favorites", &v34, 2u);
    }

    [(ABSFavoritesSyncManager *)self->_favoritesSyncManager replace:v8];
    goto LABEL_24;
  }

  pbObject4 = [v8 pbObject];
  hasCountValidationObject = [pbObject4 hasCountValidationObject];

  if (hasCountValidationObject)
  {
    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "updateSyChange for validation", &v34, 2u);
    }

    pbObject5 = [v8 pbObject];
    countValidationObject = [pbObject5 countValidationObject];
    [sessionCopy setValidationMessage:countValidationObject];

    goto LABEL_24;
  }

  pbObject6 = [v8 pbObject];
  hasAccountsSyncObject = [pbObject6 hasAccountsSyncObject];

  if (hasAccountsSyncObject)
  {
    v26 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "updateSyChange for accounts", &v34, 2u);
    }

    pbObject7 = [v8 pbObject];
    accountsSyncObject = [pbObject7 accountsSyncObject];
    [sessionCopy setAccountsMessage:accountsSyncObject];

    accountsMessage = [sessionCopy accountsMessage];
    [ABSAccountsSyncObject processSyncObjASAPPortion:accountsMessage];
LABEL_21:

    goto LABEL_24;
  }

  pbObject8 = [v8 pbObject];
  hasContainerSyncObject = [pbObject8 hasContainerSyncObject];

  v32 = *(qword_100071D00 + 8);
  if (hasContainerSyncObject)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "updateSyChange for container", &v34, 2u);
    }

    v33 = objc_opt_class();
    accountsMessage = [v8 pbObject];
    [v33 applyChange:accountsMessage];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_10003B8E8();
  }

LABEL_24:
}

- (void)deleteSyChange:(id)change
{
  changeCopy = change;
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    pbObject = [changeCopy pbObject];
    deleteWrapper = [pbObject deleteWrapper];
    guid = [deleteWrapper guid];
    v12 = 138543362;
    v13 = guid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "deleteSyChange for %{public}@", &v12, 0xCu);
  }

  pbObject2 = [changeCopy pbObject];
  hasDeleteWrapper = [pbObject2 hasDeleteWrapper];

  if (hasDeleteWrapper)
  {
    [(ABSContactsSyncManager *)self->_abSyncManager remove:changeCopy];
  }

  else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003B91C();
  }
}

- (void)resetSyncState
{
  [(ABSContactsSyncManager *)self->_abSyncManager deleteShadow];
  favoritesSyncManager = self->_favoritesSyncManager;

  [(ABSFavoritesSyncManager *)favoritesSyncManager deleteShadow];
}

@end