@interface ICDAccountManager
- (ICConnectionConfiguration)activeConfiguration;
- (ICDAccountManager)initWithLibraryManagementPolicy:(int64_t)policy;
- (ICDAccountManagerState)state;
- (ICDAccountManagerStateChange)stateChange;
- (NSArray)supportedConfigurations;
- (id)_buildStateChange;
- (int64_t)libraryManagementPolicy;
- (void)_updateStateWithChange:(id)change;
- (void)changeLibraryManagementPolicy:(int64_t)policy;
- (void)updateState;
@end

@implementation ICDAccountManager

- (NSArray)supportedConfigurations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001278BC;
  v11 = sub_1001278CC;
  v12 = 0;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000025A8;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_updateStateWithChange:(id)change
{
  changeCopy = change;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100127614;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)_buildStateChange
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001278BC;
  v19 = sub_1001278CC;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1001278BC;
  v13 = sub_1001278CC;
  v14 = 0;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001278D4;
  block[3] = &unk_1001DEF78;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(serialQueue, block);

  if (v10[5])
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v10[5];
      *buf = 134218242;
      selfCopy = self;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ICDAccountManager %p - Unable to compute state change [Error retrieving store accounts] - error=%{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = v16[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (int64_t)libraryManagementPolicy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127ACC;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (ICDAccountManagerStateChange)stateChange
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001278BC;
  v11 = sub_1001278CC;
  v12 = 0;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127BFC;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (ICDAccountManagerState)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001278BC;
  v11 = sub_1001278CC;
  v12 = 0;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127D64;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (ICConnectionConfiguration)activeConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1001278BC;
  v11 = sub_1001278CC;
  v12 = 0;
  serialQueue = [(ICDAccountManager *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127ECC;
  v6[3] = &unk_1001DEF50;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)changeLibraryManagementPolicy:(int64_t)policy
{
  libraryManagementPolicy = self->_libraryManagementPolicy;
  v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (libraryManagementPolicy == policy)
  {
    if (v7)
    {
      v8 = self->_libraryManagementPolicy;
      v10 = 134218240;
      selfCopy2 = self;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDAccountManager %p - policy type is unchanged currentValue=%d", &v10, 0x12u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = self->_libraryManagementPolicy;
      v10 = 134218496;
      selfCopy2 = self;
      v12 = 1024;
      v13 = v9;
      v14 = 1024;
      policyCopy = policy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDAccountManager %p - Changing policy type currentValue=%d, newValue=%d", &v10, 0x18u);
    }

    self->_libraryManagementPolicy = policy;
    [(ICDAccountManager *)self updateState];
  }
}

- (void)updateState
{
  stateChange = [(ICDAccountManager *)self stateChange];
  _buildStateChange = [(ICDAccountManager *)self _buildStateChange];
  v5 = _buildStateChange;
  if (_buildStateChange)
  {
    if (([_buildStateChange activeConfigurationChanged] & 1) == 0 && (objc_msgSend(v5, "supportedConfigurationsChanged") & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        selfCopy3 = self;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ICDAccountManager %p - No account changes detected - %@", &v12, 0x16u);
      }
    }

    if (![stateChange isEqual:v5])
    {
      [(ICDAccountManager *)self _updateStateWithChange:v5];
      goto LABEL_15;
    }

    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      selfCopy3 = self;
      v14 = 2112;
      v15 = v5;
      v8 = "ICDAccountManager %p - No state changes detected - %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v12, v11);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      selfCopy3 = self;
      v8 = "ICDAccountManager %p - Unable to update state [No state change built]";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_12;
    }
  }

LABEL_15:
}

- (ICDAccountManager)initWithLibraryManagementPolicy:(int64_t)policy
{
  v19.receiver = self;
  v19.super_class = ICDAccountManager;
  v4 = [(ICDAccountManager *)&v19 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.itunescloudd.ICDAccountManager.serial.queue", v5);
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v6;

    v8 = +[ICMonitoredAccountStore sharedAccountStore];
    v18 = 0;
    v9 = [v8 allStoreAccountsWithError:&v18];
    v10 = v18;

    if (v10)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v21 = v4;
        v22 = 2114;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICDAccountManager %p - init - Unable to retrieve accounts [empty accounts for restoration fallback] - error=%{public}@", buf, 0x16u);
      }
    }

    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v13 = [ICDAccountManagerState restoredStatedWithFallbackAccounts:v12];
    state = v4->_state;
    v4->_state = v13;

    v4->_libraryManagementPolicy = policy;
    v15 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v4->_state;
      *buf = 134218242;
      v21 = v4;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ICDAccountManager %p - init - _state=%@", buf, 0x16u);
    }

    [(ICDAccountManagerState *)v4->_state save];
  }

  return v4;
}

@end