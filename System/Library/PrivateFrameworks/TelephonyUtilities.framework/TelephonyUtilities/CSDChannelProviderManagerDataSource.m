@interface CSDChannelProviderManagerDataSource
- (BOOL)isProviderInstalled:(id)a3;
- (CSDChannelProviderManagerDataSource)init;
- (CSDChannelProviderManagerDataSourceDelegate)delegate;
- (NSDictionary)providerByIdentifier;
- (id)providerForIdentifier:(id)a3;
- (void)dealloc;
- (void)notifyDelegateProviderByIdentifierChanged;
- (void)setProvider:(id)a3 forIdentifier:(id)a4;
- (void)updateProviderByIdentifier;
@end

@implementation CSDChannelProviderManagerDataSource

- (CSDChannelProviderManagerDataSource)init
{
  v7.receiver = self;
  v7.super_class = CSDChannelProviderManagerDataSource;
  v2 = [(CSDChannelProviderManagerDataSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    mutableProviderByIdentifier = v3->_mutableProviderByIdentifier;
    v3->_mutableProviderByIdentifier = v4;
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v4.receiver = self;
  v4.super_class = CSDChannelProviderManagerDataSource;
  [(CSDChannelProviderManagerDataSource *)&v4 dealloc];
}

- (NSDictionary)providerByIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v4;
}

- (id)providerForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (void)setProvider:(id)a3 forIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v8 = [v7 objectForKeyedSubscript:v6];

  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v9 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
    [v9 setObject:v10 forKeyedSubscript:v6];

    [(CSDChannelProviderManagerDataSource *)self notifyDelegateProviderByIdentifierChanged];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isProviderInstalled:(id)a3
{
  v3 = [a3 bundleURL];
  if (v3)
  {
    v10 = 0;
    v4 = [[LSApplicationRecord alloc] initWithURL:v3 allowPlaceholder:1 error:&v10];
    v5 = v10;
    if (!v4)
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1004715F4(v3, v5, v6);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [v4 applicationState];
  v8 = [v7 isInstalled];

  return v8;
}

- (void)notifyDelegateProviderByIdentifierChanged
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100070270;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)updateProviderByIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v4 = [v3 allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (![(CSDChannelProviderManagerDataSource *)self isProviderInstalled:v9, v15])
        {
          v10 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
          v11 = [v9 identifier];
          [v10 setObject:0 forKeyedSubscript:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v13 = [v12 allValues];
  v14 = [v5 isEqualToArray:v13];

  if ((v14 & 1) == 0)
  {
    [(CSDChannelProviderManagerDataSource *)self notifyDelegateProviderByIdentifierChanged];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (CSDChannelProviderManagerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end