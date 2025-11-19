@interface ABSSyncController
- (ABSSyncController)init;
- (void)addSyChanges:(id)a3 forSession:(id)a4;
- (void)deleteSyChange:(id)a3;
- (void)resetSyncState;
- (void)updateSyChange:(id)a3 forSession:(id)a4;
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

- (void)addSyChanges:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 firstObject];
    v9 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v8 pbObject];
      v12 = [v11 contactWrapper];
      v13 = [v12 guid];
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "addSyChange for %{public}@", &v19, 0xCu);
    }

    v14 = [v8 pbObject];
    if ([v14 hasContactWrapper])
    {
    }

    else
    {
      v15 = [v8 pbObject];
      v16 = [v15 hasLmaSyncData];

      if (!v16)
      {
        v17 = [v8 pbObject];
        v18 = [v17 hasFavoritesSyncObject];

        if (v18)
        {
          [(ABSFavoritesSyncManager *)self->_favoritesSyncManager replace:v8];
        }

        else if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10003B880();
        }

        goto LABEL_10;
      }
    }

    [(ABSContactsSyncManager *)self->_abSyncManager addBatch:v6 forSession:v7];
LABEL_10:

    goto LABEL_11;
  }

  if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10003B8B4();
  }

LABEL_11:
}

- (void)updateSyChange:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 pbObject];
  v10 = [v9 hasContactWrapper];

  if (v10)
  {
    v11 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v8 pbObject];
      v14 = [v13 contactWrapper];
      v15 = [v14 guid];
      v34 = 138543362;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "updateSyChange for contact %{public}@", &v34, 0xCu);
    }

    [(ABSContactsSyncManager *)self->_abSyncManager addOrUpdateContactIn:v8 forSession:v7];
    goto LABEL_24;
  }

  v16 = [v8 pbObject];
  v17 = [v16 hasFavoritesSyncObject];

  if (v17)
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

  v19 = [v8 pbObject];
  v20 = [v19 hasCountValidationObject];

  if (v20)
  {
    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "updateSyChange for validation", &v34, 2u);
    }

    v22 = [v8 pbObject];
    v23 = [v22 countValidationObject];
    [v7 setValidationMessage:v23];

    goto LABEL_24;
  }

  v24 = [v8 pbObject];
  v25 = [v24 hasAccountsSyncObject];

  if (v25)
  {
    v26 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "updateSyChange for accounts", &v34, 2u);
    }

    v27 = [v8 pbObject];
    v28 = [v27 accountsSyncObject];
    [v7 setAccountsMessage:v28];

    v29 = [v7 accountsMessage];
    [ABSAccountsSyncObject processSyncObjASAPPortion:v29];
LABEL_21:

    goto LABEL_24;
  }

  v30 = [v8 pbObject];
  v31 = [v30 hasContainerSyncObject];

  v32 = *(qword_100071D00 + 8);
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "updateSyChange for container", &v34, 2u);
    }

    v33 = objc_opt_class();
    v29 = [v8 pbObject];
    [v33 applyChange:v29];
    goto LABEL_21;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_10003B8E8();
  }

LABEL_24:
}

- (void)deleteSyChange:(id)a3
{
  v4 = a3;
  v5 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 pbObject];
    v8 = [v7 deleteWrapper];
    v9 = [v8 guid];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "deleteSyChange for %{public}@", &v12, 0xCu);
  }

  v10 = [v4 pbObject];
  v11 = [v10 hasDeleteWrapper];

  if (v11)
  {
    [(ABSContactsSyncManager *)self->_abSyncManager remove:v4];
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