@interface UNCNotificationCoreServiceClient
- (UNCNotificationCoreServiceClient)init;
- (id)badgeNumberForBundleIdentifier:(id)a3;
- (id)categoriesForBundleIdentifier:(id)a3;
- (id)categoryForIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (id)notificationRecordsForBundleIdentifier:(id)a3;
- (void)categoryRepository:(id)a3 didChangeCategoriesForBundleIdentifier:(id)a4;
- (void)removeAllNotificationRecordsForBundleIdentifier:(id)a3;
- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)a3;
- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4;
- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3;
- (void)removeSimilarNotificationRecords:(id)a3 forBundleIdentifier:(id)a4;
- (void)removeStoreForBundleIdentifier:(id)a3;
- (void)setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setCategories:(id)a3 forBundleIdentifier:(id)a4;
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

- (void)categoryRepository:(id)a3 didChangeCategoriesForBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E6983358];
  if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
  {
    [UNCNotificationCoreServiceClient categoryRepository:v6 didChangeCategoriesForBundleIdentifier:?];
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client categoryRepositoryDidChangeCategories:v5];
}

- (id)notificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UNCNotificationCoreServiceClientImpl *)self->_client notificationRecordsForBundleIdentifier:v4];
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

- (id)notificationRecordForIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(UNCNotificationCoreServiceClientImpl *)self->_client notificationRecordForIdentifier:v6 bundleIdentifier:v7];
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

- (void)removeNotificationRecordsForIdentifiers:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      [(UNCNotificationCoreServiceClientImpl *)self->_client removeNotificationRecordsForIdentifiersWithIdentifiers:v6 bundleIdentifier:v7];
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

- (void)removeSimilarNotificationRecords:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      [(UNCNotificationCoreServiceClientImpl *)self->_client removeSimilarNotificationRecords:v6 forBundleIdentifier:v7];
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

- (void)removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeNotificationRecordsWithNonPushTriggerForBundleIdentifier:v4];
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

- (void)removeInvalidNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeInvalidNotificationRecordsForBundleIdentifier:v4];
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

- (void)removeAllNotificationRecordsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeAllNotificationRecordsForBundleIdentifier:v4];
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

- (void)removeStoreForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(UNCNotificationCoreServiceClientImpl *)self->_client removeStoreForBundleIdentifier:v4];
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

- (id)badgeNumberForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UNCNotificationCoreServiceClientImpl *)self->_client badgeNumberForBundleIdentifier:v4];
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

- (void)setBadgeNumber:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setBadgeNumber:v11 forBundleIdentifier:? completionHandler:?];
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    v12 = _UNCNilArgumentError("[UNCNotificationCoreServiceClient setBadgeNumber:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
    v10[2](v10, v12);

    goto LABEL_6;
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client setBadgeNumber:v8 forBundleIdentifier:v9 completionHandler:v10];
LABEL_6:
}

- (void)setBadgeCount:(int64_t)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v10 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setBadgeCount:v10 forBundleIdentifier:? completionHandler:?];
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    else if (!v9)
    {
      goto LABEL_6;
    }

    v11 = _UNCNilArgumentError("[UNCNotificationCoreServiceClient setBadgeCount:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
    v9[2](v9, v11);

    goto LABEL_6;
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client setBadgeCount:a3 forBundleIdentifier:v8 completionHandler:v9];
LABEL_6:
}

- (void)setBadgeString:(id)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      [UNCNotificationCoreServiceClient setBadgeString:v11 forBundleIdentifier:? completionHandler:?];
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    v12 = _UNCNilArgumentError("[UNCNotificationCoreServiceClient setBadgeString:forBundleIdentifier:completionHandler:]", @"bundleIdentifier");
    v10[2](v10, v12);

    goto LABEL_6;
  }

  [(UNCNotificationCoreServiceClientImpl *)self->_client setBadgeString:v8 forBundleIdentifier:v9 completionHandler:v10];
LABEL_6:
}

- (id)categoryForIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(UNCNotificationCoreServiceClientImpl *)self->_client categoryForIdentifier:v6 bundleIdentifier:v7];
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

- (id)categoriesForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UNCNotificationCoreServiceClientImpl *)self->_client categoriesForBundleIdentifier:v4];
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

- (void)setCategories:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      [(UNCNotificationCoreServiceClientImpl *)self->_client setCategories:v6 forBundleIdentifier:v7];
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