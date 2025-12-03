@interface CSDChannelProviderManagerDataSource
- (BOOL)isProviderInstalled:(id)installed;
- (CSDChannelProviderManagerDataSource)init;
- (CSDChannelProviderManagerDataSourceDelegate)delegate;
- (NSDictionary)providerByIdentifier;
- (id)providerForIdentifier:(id)identifier;
- (void)dealloc;
- (void)notifyDelegateProviderByIdentifierChanged;
- (void)setProvider:(id)provider forIdentifier:(id)identifier;
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
  mutableProviderByIdentifier = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v4 = [mutableProviderByIdentifier copy];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v4;
}

- (id)providerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  mutableProviderByIdentifier = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v6 = [mutableProviderByIdentifier objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (void)setProvider:(id)provider forIdentifier:(id)identifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  mutableProviderByIdentifier = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  v8 = [mutableProviderByIdentifier objectForKeyedSubscript:identifierCopy];

  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    mutableProviderByIdentifier2 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
    [mutableProviderByIdentifier2 setObject:providerCopy forKeyedSubscript:identifierCopy];

    [(CSDChannelProviderManagerDataSource *)self notifyDelegateProviderByIdentifierChanged];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (BOOL)isProviderInstalled:(id)installed
{
  bundleURL = [installed bundleURL];
  if (bundleURL)
  {
    v10 = 0;
    v4 = [[LSApplicationRecord alloc] initWithURL:bundleURL allowPlaceholder:1 error:&v10];
    v5 = v10;
    if (!v4)
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1004715F4(bundleURL, v5, v6);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  applicationState = [v4 applicationState];
  isInstalled = [applicationState isInstalled];

  return isInstalled;
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
  mutableProviderByIdentifier = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  allValues = [mutableProviderByIdentifier allValues];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = allValues;
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
          mutableProviderByIdentifier2 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
          identifier = [v9 identifier];
          [mutableProviderByIdentifier2 setObject:0 forKeyedSubscript:identifier];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  mutableProviderByIdentifier3 = [(CSDChannelProviderManagerDataSource *)self mutableProviderByIdentifier];
  allValues2 = [mutableProviderByIdentifier3 allValues];
  v14 = [v5 isEqualToArray:allValues2];

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