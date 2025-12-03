@interface UNCNotificationCoreServiceClient
- (UNCNotificationCoreServiceClient)init;
- (id)badgeNumberForBundleIdentifier:(id)identifier;
- (id)categoriesForBundleIdentifier:(id)identifier;
- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)notificationRecordForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (id)notificationRecordsForBundleIdentifier:(id)identifier;
- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier;
- (void)removeAllNotificationRecordsForBundleIdentifier:(id)identifier;
- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier;
- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)identifier;
- (void)removeSimilarNotificationRecords:(id)records forBundleIdentifier:(id)identifier;
- (void)removeStoreForBundleIdentifier:(id)identifier;
- (void)setBadgeCount:(int64_t)count forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier;
@end

@implementation UNCNotificationCoreServiceClient

- (UNCNotificationCoreServiceClient)init
{
  v6.receiver = self;
  v6.super_class = UNCNotificationCoreServiceClient;
  v2 = [(UNCNotificationCoreServiceClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(UNCNotificationCoreServiceClientImpl);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (void)categoryRepository:(id)repository didChangeCategoriesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationCoreServiceClient categoryRepository:v6 didChangeCategoriesForBundleIdentifier:?];
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client categoryRepositoryDidChangeCategories:identifierCopy];
}

- (id)notificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(UNCNotificationCoreServiceClientImpl *)self->_client notificationRecordsForBundleIdentifier:identifierCopy];
  }

  else
  {
    v6 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient notificationRecordsForBundleIdentifier:v6];
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)notificationRecordForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v8 = bundleIdentifierCopy;
  if (identifierCopy)
  {
    if (bundleIdentifierCopy)
    {
      v9 = [(UNCNotificationCoreServiceClientImpl *)self->_client notificationRecordForIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];
      goto LABEL_9;
    }

    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient notificationRecordForIdentifier:v11 bundleIdentifier:?];
    }
  }

  else
  {
    v10 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient notificationRecordForIdentifier:v10 bundleIdentifier:?];
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)removeNotificationRecordsForIdentifiers:(id)identifiers bundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifiersCopy)
  {
    if (identifierCopy)
    {
      [(UNCNotificationCoreServiceClientImpl *)self->_client removeNotificationRecordsForIdentifiersWithIdentifiers:identifiersCopy bundleIdentifier:identifierCopy];
    }

    else
    {
      v10 = *MEMORY[0x1E6983358];
      if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
      {
        [UNCNotificationCoreServiceClient removeNotificationRecordsForIdentifiers:v10 bundleIdentifier:?];
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient removeNotificationRecordsForIdentifiers:v9 bundleIdentifier:?];
    }
  }
}

- (void)removeSimilarNotificationRecords:(id)records forBundleIdentifier:(id)identifier
{
  recordsCopy = records;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (recordsCopy)
  {
    if (identifierCopy)
    {
      [(UNCNotificationCoreServiceClientImpl *)self->_client removeSimilarNotificationRecords:recordsCopy forBundleIdentifier:identifierCopy];
    }

    else
    {
      v10 = *MEMORY[0x1E6983358];
      if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
      {
        [UNCNotificationCoreServiceClient removeSimilarNotificationRecords:v10 forBundleIdentifier:?];
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient removeSimilarNotificationRecords:v9 forBundleIdentifier:?];
    }
  }
}

- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:identifierCopy];
  }

  else
  {
    v5 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:v5];
    }
  }
}

- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeInvalidNotificationRecordsForBundleIdentifier:identifierCopy];
  }

  else
  {
    v5 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient removeInvalidNotificationRecordsForBundleIdentifier:v5];
    }
  }
}

- (void)removeAllNotificationRecordsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeAllNotificationRecordsForBundleIdentifier:identifierCopy];
  }

  else
  {
    v5 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient removeAllNotificationRecordsForBundleIdentifier:v5];
    }
  }
}

- (void)removeStoreForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeStoreForBundleIdentifier:identifierCopy];
  }

  else
  {
    v5 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient removeStoreForBundleIdentifier:v5];
    }
  }
}

- (id)badgeNumberForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(UNCNotificationCoreServiceClientImpl *)self->_client badgeNumberForBundleIdentifier:identifierCopy];
  }

  else
  {
    v6 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient badgeNumberForBundleIdentifier:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setBadgeNumber:(id)number forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  numberCopy = number;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setBadgeNumber:v11 forBundleIdentifier:? completionHandler:?];
      if (!handlerCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v12 = _UNCNilArgumentError("[UNCNotificationCoreServiceClient setBadgeNumber:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
    handlerCopy[2](handlerCopy, v12);

    goto LABEL_6;
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client setBadgeNumber:numberCopy forBundleIdentifier:identifierCopy completionHandler:handlerCopy];
LABEL_6:
}

- (void)setBadgeCount:(int64_t)count forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v10 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setBadgeCount:v10 forBundleIdentifier:? completionHandler:?];
      if (!handlerCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v11 = _UNCNilArgumentError("[UNCNotificationCoreServiceClient setBadgeCount:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
    handlerCopy[2](handlerCopy, v11);

    goto LABEL_6;
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client setBadgeCount:count forBundleIdentifier:identifierCopy completionHandler:handlerCopy];
LABEL_6:
}

- (void)setBadgeString:(id)string forBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  stringCopy = string;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setBadgeString:v11 forBundleIdentifier:? completionHandler:?];
      if (!handlerCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v12 = _UNCNilArgumentError("[UNCNotificationCoreServiceClient setBadgeString:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
    handlerCopy[2](handlerCopy, v12);

    goto LABEL_6;
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client setBadgeString:stringCopy forBundleIdentifier:identifierCopy completionHandler:handlerCopy];
LABEL_6:
}

- (id)categoryForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v8 = bundleIdentifierCopy;
  if (identifierCopy)
  {
    if (bundleIdentifierCopy)
    {
      v9 = [(UNCNotificationCoreServiceClientImpl *)self->_client categoryForIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy];
      goto LABEL_9;
    }

    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient categoryForIdentifier:v11 bundleIdentifier:?];
    }
  }

  else
  {
    v10 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient categoryForIdentifier:v10 bundleIdentifier:?];
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)categoriesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(UNCNotificationCoreServiceClientImpl *)self->_client categoriesForBundleIdentifier:identifierCopy];
  }

  else
  {
    v6 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient categoriesForBundleIdentifier:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (void)setCategories:(id)categories forBundleIdentifier:(id)identifier
{
  categoriesCopy = categories;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (categoriesCopy)
  {
    if (identifierCopy)
    {
      [(UNCNotificationCoreServiceClientImpl *)self->_client setCategories:categoriesCopy forBundleIdentifier:identifierCopy];
    }

    else
    {
      v10 = *MEMORY[0x1E6983358];
      if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
      {
        [UNCNotificationCoreServiceClient setCategories:v10 forBundleIdentifier:?];
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setCategories:v9 forBundleIdentifier:?];
    }
  }
}

- (void)notificationRecordsForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient notificationRecordsForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notificationRecordForIdentifier:(void *)a1 bundleIdentifier:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient notificationRecordForIdentifier:bundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notificationRecordForIdentifier:(void *)a1 bundleIdentifier:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient notificationRecordForIdentifier:bundleIdentifier:]", @"identifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveNotificationRecord:(void *)a1 targetRevisionNumber:shouldRepost:forBundleIdentifier:completionHandler:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient saveNotificationRecord:targetRevisionNumber:shouldRepost:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveNotificationRecord:(void *)a1 targetRevisionNumber:shouldRepost:forBundleIdentifier:completionHandler:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient saveNotificationRecord:targetRevisionNumber:shouldRepost:forBundleIdentifier:completionHandler:]", @"notificationRecord");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveNotificationRequest:(void *)a1 shouldRepost:apsMessageTimestamp:forBundleIdentifier:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient saveNotificationRequest:shouldRepost:apsMessageTimestamp:forBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveNotificationRequest:(void *)a1 shouldRepost:apsMessageTimestamp:forBundleIdentifier:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient saveNotificationRequest:shouldRepost:apsMessageTimestamp:forBundleIdentifier:]", @"apsMessageTimestamp");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveNotificationRequest:(void *)a1 shouldRepost:apsMessageTimestamp:forBundleIdentifier:.cold.3(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient saveNotificationRequest:shouldRepost:apsMessageTimestamp:forBundleIdentifier:]", @"notificationRequest");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeNotificationRecordsForIdentifiers:(void *)a1 bundleIdentifier:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeNotificationRecordsForIdentifiers:bundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeNotificationRecordsForIdentifiers:(void *)a1 bundleIdentifier:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeNotificationRecordsForIdentifiers:bundleIdentifier:]", @"identifiers");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeSimilarNotificationRecords:(void *)a1 forBundleIdentifier:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeSimilarNotificationRecords:forBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeSimilarNotificationRecords:(void *)a1 forBundleIdentifier:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeSimilarNotificationRecords:forBundleIdentifier:]", @"records");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeInvalidNotificationRecordsForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeInvalidNotificationRecordsForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAllNotificationRecordsForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeAllNotificationRecordsForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeStoreForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient removeStoreForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)badgeNumberForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient badgeNumberForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setBadgeNumber:(void *)a1 forBundleIdentifier:completionHandler:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient setBadgeNumber:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setBadgeCount:(void *)a1 forBundleIdentifier:completionHandler:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient setBadgeCount:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setBadgeString:(void *)a1 forBundleIdentifier:completionHandler:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient setBadgeString:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)categoryForIdentifier:(void *)a1 bundleIdentifier:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient categoryForIdentifier:bundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)categoryForIdentifier:(void *)a1 bundleIdentifier:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient categoryForIdentifier:bundleIdentifier:]", @"categoryIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)categoriesForBundleIdentifier:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient categoriesForBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setCategories:(void *)a1 forBundleIdentifier:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient setCategories:forBundleIdentifier:]", @"bundleIdentifier");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setCategories:(void *)a1 forBundleIdentifier:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _UNCNilArgumentErrorDescription("[UNCNotificationCoreServiceClient setCategories:forBundleIdentifier:]", @"categories");
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_4(&dword_1DA7A9000, v3, v4, "%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

@end