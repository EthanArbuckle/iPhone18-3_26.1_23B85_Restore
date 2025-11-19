@interface CSDPersistedChannelRegistry
+ (id)sharedInstance;
- (BOOL)_queue_tearDownPersistedChannelForBundleIdentifier:(id)a3 teardownType:(int)a4;
- (BOOL)tearDownPersistedChannelForBundleIdentifier:(id)a3 teardownType:(int)a4;
- (BOOL)tearDownPersistedChannelForCall:(id)a3 teardownType:(int)a4;
- (CSDPersistedChannelRegistry)initWithUserDefaults:(id)a3;
- (CSDPersistedChannelRegistry)initWithUserDefaults:(id)a3 observerQueue:(id)a4;
- (id)_queue_activePersistedChannelIdentity;
- (id)activePersistedChannelIdentity;
- (id)persistedTornDownChannelUUIDForBundleIdentifier:(id)a3;
- (void)_queue_addPendingTeardownAcknowledgement:(id)a3;
- (void)_queue_clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:(id)a3;
- (void)_queue_notePushToTalkChannelConnectedForCall:(id)a3;
- (void)addObserver:(id)a3;
- (void)clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:(id)a3;
- (void)handleAppUninstall:(id)a3;
- (void)notePushToTalkChannelConnectedForCall:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation CSDPersistedChannelRegistry

+ (id)sharedInstance
{
  if (qword_1006ACC18 != -1)
  {
    sub_100473C50();
  }

  v3 = qword_1006ACC10;

  return v3;
}

- (CSDPersistedChannelRegistry)initWithUserDefaults:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("com.apple.csd.persistedChannelRegistryObserver", 0);
  v6 = [(CSDPersistedChannelRegistry *)self initWithUserDefaults:v4 observerQueue:v5];

  return v6;
}

- (CSDPersistedChannelRegistry)initWithUserDefaults:(id)a3 observerQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CSDPersistedChannelRegistry;
  v9 = [(CSDPersistedChannelRegistry *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaults, a3);
    v11 = +[NSHashTable weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v11;

    objc_storeStrong(&v10->_observerQueue, a4);
    v13 = dispatch_queue_create("com.apple.csd.persistedChannelRegistryIvars", 0);
    ivarQueue = v10->_ivarQueue;
    v10->_ivarQueue = v13;

    [(NSUserDefaults *)v10->_defaults setObject:0 forKey:@"CSDPersistedChannelUUIDString"];
    [(NSUserDefaults *)v10->_defaults setObject:0 forKey:@"CSDPersistedChannelBundleIdentifier"];
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CC96C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CCA58;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

- (void)notePushToTalkChannelConnectedForCall:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CCB44;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

- (void)_queue_notePushToTalkChannelConnectedForCall:(id)a3
{
  ivarQueue = self->_ivarQueue;
  v6 = a3;
  dispatch_assert_queue_V2(ivarQueue);
  v7 = [(CSDPersistedChannelRegistry *)self _queue_activePersistedChannelIdentity];
  v8 = [CSDPersistedChannelIdentity alloc];
  v9 = [v6 providerIdentifier];
  v10 = [v6 provider];
  v11 = [v10 bundleIdentifier];
  v12 = [v6 uniqueProxyIdentifierUUID];

  v13 = [(CSDPersistedChannelIdentity *)v8 initWithApplicationIdentifier:v9 bundleIdentifier:v11 channelUUID:v12];
  if (v7)
  {
    if ([(CSDPersistedChannelIdentity *)v7 isEqualToPersistedChannelIdentity:v13])
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CXPersistedChannelRegistry newly connected channel matches persisted channel %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v15 = [(CSDPersistedChannelIdentity *)v7 bundleIdentifier];
    v16 = [(CSDPersistedChannelIdentity *)v13 bundleIdentifier];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "CXPersistedChannelRegistry has updated channel %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = +[NSAssertionHandler currentHandler];
      v20 = [(CSDPersistedChannelIdentity *)v7 bundleIdentifier];
      v21 = [(CSDPersistedChannelIdentity *)v13 bundleIdentifier];
      [v19 handleFailureInMethod:a2 object:self file:@"CSDPersistedChannelRegistry.m" lineNumber:101 description:{@"only one active channel application allowed at a time. persisted:%@ active:%@", v20, v21}];
    }
  }

  v28 = 0;
  v22 = [(CSDPersistedChannelIdentity *)v13 archivedDataWithError:&v28];
  v23 = v28;
  v14 = v23;
  if (v22)
  {
    [(NSUserDefaults *)self->_defaults setObject:v22 forKey:@"CSDPersistedChannel"];
    observerQueue = self->_observerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CCEA8;
    block[3] = &unk_100619D88;
    block[4] = self;
    v27 = v13;
    dispatch_async(observerQueue, block);
  }

  else if (v23)
  {
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100473C64();
    }
  }

LABEL_17:
}

- (BOOL)tearDownPersistedChannelForCall:(id)a3 teardownType:(int)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  ivarQueue = self->_ivarQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CD07C;
  v10[3] = &unk_10061ADF8;
  v11 = v6;
  v12 = &v14;
  v10[4] = self;
  v13 = a4;
  v8 = v6;
  dispatch_sync(ivarQueue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (BOOL)tearDownPersistedChannelForBundleIdentifier:(id)a3 teardownType:(int)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if ([v6 length])
  {
    ivarQueue = self->_ivarQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CD1E8;
    v10[3] = &unk_10061ADF8;
    v12 = &v14;
    v10[4] = self;
    v11 = v6;
    v13 = a4;
    dispatch_sync(ivarQueue, v10);
  }

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)_queue_tearDownPersistedChannelForBundleIdentifier:(id)a3 teardownType:(int)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_ivarQueue);
  v7 = [(CSDPersistedChannelRegistry *)self _queue_activePersistedChannelIdentity];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    [(NSUserDefaults *)self->_defaults setObject:0 forKey:@"CSDPersistedChannel"];
    v18 = v9;
    if (a4 == 3)
    {
      [(CSDPersistedChannelRegistry *)self _queue_addPendingTeardownAcknowledgement:v7];
    }

    else
    {
      [(CSDPersistedChannelRegistry *)self _queue_clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:v6];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(CSDPersistedChannelRegistry *)self observers];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          observerQueue = self->_observerQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000CD4C0;
          block[3] = &unk_100619D38;
          block[4] = v15;
          dispatch_async(observerQueue, block);
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    LOBYTE(v9) = v18;
  }

  return v9;
}

- (void)handleAppUninstall:(id)a3
{
  v4 = a3;
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD564;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

- (id)_queue_activePersistedChannelIdentity
{
  dispatch_assert_queue_V2(self->_ivarQueue);
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"CSDPersistedChannel"];
  if ([v3 length])
  {
    v10 = 0;
    v4 = [CSDPersistedChannelIdentity unarchivedObjectFromData:v3 error:&v10];
    v5 = v10;
    v6 = v5;
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (!v7)
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100473CCC();
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activePersistedChannelIdentity
{
  dispatch_assert_queue_not_V2(self->_ivarQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028634;
  v11 = sub_1000328A4;
  v12 = 0;
  ivarQueue = self->_ivarQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CD780;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(ivarQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_queue_addPendingTeardownAcknowledgement:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100473D34(a2, self);
  }

  dispatch_assert_queue_V2(self->_ivarQueue);
  v6 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"CSDPersistedTornDownChannelIdentities"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v9 = v8;
  v14 = 0;
  v10 = [v5 archivedDataWithError:&v14];
  v11 = v14;
  v12 = v11;
  if (v10)
  {
    v13 = [v5 bundleIdentifier];
    [v9 setObject:v10 forKey:v13];
LABEL_11:

    goto LABEL_12;
  }

  if (v11)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100473DA8();
    }

    goto LABEL_11;
  }

LABEL_12:
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"CSDPersistedTornDownChannelIdentities"];
}

- (id)persistedTornDownChannelUUIDForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_100473E10(a2, self);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100028634;
  v17 = sub_1000328A4;
  v18 = 0;
  dispatch_assert_queue_not_V2(self->_ivarQueue);
  ivarQueue = self->_ivarQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CDA68;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v11 = v5;
  v12 = &v13;
  v7 = v5;
  dispatch_sync(ivarQueue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)_queue_clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_ivarQueue);
  if (!v8)
  {
    sub_100473E84(a2, self);
  }

  v5 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"CSDPersistedTornDownChannelIdentities"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    [v7 removeObjectForKey:v8];
    [(NSUserDefaults *)self->_defaults setObject:v7 forKey:@"CSDPersistedTornDownChannelIdentities"];
  }
}

- (void)clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_ivarQueue);
  ivarQueue = self->_ivarQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CDD0C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(ivarQueue, v7);
}

@end