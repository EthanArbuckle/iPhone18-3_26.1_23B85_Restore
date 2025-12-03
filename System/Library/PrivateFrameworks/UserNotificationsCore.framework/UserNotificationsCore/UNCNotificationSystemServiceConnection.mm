@interface UNCNotificationSystemServiceConnection
- (BOOL)isApplicationForeground:(id)foreground;
- (BOOL)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier;
- (BOOL)setBadgeString:(id)string forBundleIdentifier:(id)identifier;
- (UNCNotificationSystemServiceConnection)initWithConnection:(id)connection connectionDelegate:(id)delegate delegate:(id)a5;
- (id)allBundleIdentifiersForCategories;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
- (id)categoriesForBundleIdentifier:(id)identifier;
- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier;
- (void)notificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)pendingNotificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier;
- (void)topicRepositoryDidChangeTopicsForBundleIdentifier:(id)identifier;
- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation UNCNotificationSystemServiceConnection

- (UNCNotificationSystemServiceConnection)initWithConnection:(id)connection connectionDelegate:(id)delegate delegate:(id)a5
{
  connectionCopy = connection;
  delegateCopy = delegate;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = UNCNotificationSystemServiceConnection;
  v12 = [(UNCNotificationSystemServiceConnection *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    objc_storeWeak(&v13->_connectionDelegate, delegateCopy);
    objc_storeWeak(&v13->_delegate, v11);
    objc_initWeak(&location, v13);
    connection = v13->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __89__UNCNotificationSystemServiceConnection_initWithConnection_connectionDelegate_delegate___block_invoke;
    v16[3] = &unk_1E85D7420;
    v17 = v13;
    objc_copyWeak(&v18, &location);
    [(BSServiceConnectionHost *)connection configureConnection:v16];
    [(BSServiceConnectionHost *)v13->_connection activate];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  return v13;
}

void __89__UNCNotificationSystemServiceConnection_initWithConnection_connectionDelegate_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v4];

  v5 = +[UNCNotificationSystemService serviceInterface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__UNCNotificationSystemServiceConnection_initWithConnection_connectionDelegate_delegate___block_invoke_2;
  v8[3] = &unk_1E85D73F8;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__UNCNotificationSystemServiceConnection_initWithConnection_connectionDelegate_delegate___block_invoke_2;
  v6[3] = &unk_1E85D73F8;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __89__UNCNotificationSystemServiceConnection_initWithConnection_connectionDelegate_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DA7A9000, v2, OS_LOG_TYPE_INFO, "System service connection is interrupted", v5, 2u);
    }

    v3 = objc_loadWeakRetained(WeakRetained + 1);
    v4 = v3;
    if (v3)
    {
      [v3 systemServiceConnectionDidInvalidate:WeakRetained];
    }
  }
}

- (void)dealloc
{
  [(BSServiceConnectionHost *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = UNCNotificationSystemServiceConnection;
  [(UNCNotificationSystemServiceConnection *)&v3 dealloc];
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained badgeNumberForBundleIdentifier:identifierCopy];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier
{
  numberCopy = number;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained setBadgeNumber:numberCopy forBundleIdentifier:identifierCopy];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setBadgeString:(id)string forBundleIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained setBadgeString:stringCopy forBundleIdentifier:identifierCopy];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)isApplicationForeground:(id)foreground
{
  foregroundCopy = foreground;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained isApplicationForeground:foregroundCopy];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)willPresentNotification:(id)notification forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  notificationCopy = notification;
  identifierCopy = identifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __104__UNCNotificationSystemServiceConnection_willPresentNotification_forBundleIdentifier_completionHandler___block_invoke;
    v13[3] = &unk_1E85D7448;
    v14 = handlerCopy;
    [WeakRetained willPresentNotification:notificationCopy forBundleIdentifier:identifierCopy withCompletionHandler:v13];
    v12 = v14;
LABEL_6:

    goto LABEL_7;
  }

  if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (handlerCopy)
  {
LABEL_5:
    v12 = _UNCNilDelegateError("[UNCNotificationSystemServiceConnection willPresentNotification:forBundleIdentifier:completionHandler:]");
    (*(handlerCopy + 2))(handlerCopy, &unk_1F5663620, v12);
    goto LABEL_6;
  }

LABEL_7:
}

void __104__UNCNotificationSystemServiceConnection_willPresentNotification_forBundleIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = a3;
    v7 = [v5 numberWithInteger:a2];
    (*(v3 + 16))(v3, v7, v6);
  }
}

- (void)notificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  updatesCopy = updates;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notificationRepositoryDidPerformUpdates:updatesCopy forBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

- (void)notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notificationRepositoryDidDiscoverContentOnFirstUnlockForBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

- (void)pendingNotificationRepositoryDidPerformUpdates:(id)updates forBundleIdentifier:(id)identifier
{
  updatesCopy = updates;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained pendingNotificationRepositoryDidPerformUpdates:updatesCopy forBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

- (void)categoryRepositoryDidChangeCategoriesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained categoryRepositoryDidChangeCategoriesForBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

- (void)topicRepositoryDidChangeTopicsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained topicRepositoryDidChangeTopicsForBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeNotificationRecordsForIdentifiers:identifiersCopy bundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

- (id)allBundleIdentifiersForCategories
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    allBundleIdentifiersForCategories = [WeakRetained allBundleIdentifiersForCategories];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    allBundleIdentifiersForCategories = MEMORY[0x1E695E0F0];
  }

  return allBundleIdentifiersForCategories;
}

- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained categoryForIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)categoriesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained categoriesForBundleIdentifier:identifierCopy];
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier
{
  categoriesCopy = categories;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCategories:categoriesCopy forBundleIdentifier:identifierCopy];
  }

  else if (os_log_type_enabled(*MEMORY[0x1E69833B0], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationSystemServiceConnection badgeNumberForBundleIdentifier:];
  }
}

@end