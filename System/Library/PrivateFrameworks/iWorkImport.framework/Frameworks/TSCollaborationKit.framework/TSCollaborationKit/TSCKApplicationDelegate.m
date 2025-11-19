@interface TSCKApplicationDelegate
+ (TSCKApplicationDelegate)tsck_sharedDelegate;
+ (TSCKApplicationPropertiesProvider)tsck_sharedPropertiesProvider;
- (double)activityAuthorCacheAuditTimeInterval;
- (double)activityAuthorCacheCleanAuthorDuringAuditMinimumTimeInterval;
- (unint64_t)activityStreamPruningThresholdWithDocumentRoot:(id)a3;
- (unint64_t)operationStoragePruningThresholdWithDocumentRoot:(id)a3;
@end

@implementation TSCKApplicationDelegate

+ (TSCKApplicationDelegate)tsck_sharedDelegate
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSCKApplicationDelegate;
  v2 = objc_msgSendSuper2(&v4, sel_sharedDelegate);

  return v2;
}

+ (TSCKApplicationPropertiesProvider)tsck_sharedPropertiesProvider
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TSCKApplicationDelegate;
  v2 = objc_msgSendSuper2(&v4, sel_sharedPropertiesProvider);

  return v2;
}

- (unint64_t)operationStoragePruningThresholdWithDocumentRoot:(id)a3
{
  objc_opt_class();
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4, v5);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"TSCKOperationStoragePruningThresholdInMB", v8);
  v10 = TSUCheckedDynamicCast();

  v14 = objc_msgSend_unsignedIntegerValue(v10, v11, v12, v13);
  if (v14)
  {
    v15 = 1000000 * v14;
  }

  else
  {
    v15 = 900000000;
  }

  return v15;
}

- (unint64_t)activityStreamPruningThresholdWithDocumentRoot:(id)a3
{
  objc_opt_class();
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v3, v4, v5);
  v9 = objc_msgSend_objectForKey_(v6, v7, @"TSCKActivityStreamPruningThresholdInMB", v8);
  v10 = TSUCheckedDynamicCast();

  v14 = objc_msgSend_unsignedIntegerValue(v10, v11, v12, v13);
  if (v14)
  {
    v15 = 1000000 * v14;
  }

  else
  {
    v15 = 900000000;
  }

  return v15;
}

- (double)activityAuthorCacheAuditTimeInterval
{
  objc_opt_class();
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v2, v3, v4);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"TSCKActivityAuthorCacheAuditTimeInterval", v7);
  v9 = TSUCheckedDynamicCast();

  if (v9)
  {
    objc_msgSend_doubleValue(v9, v10, v11, v12);
    v14 = v13;
  }

  else
  {
    v14 = 3600.0;
  }

  return v14;
}

- (double)activityAuthorCacheCleanAuthorDuringAuditMinimumTimeInterval
{
  objc_opt_class();
  v5 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v2, v3, v4);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"TSCKActivityAuthorCacheCleanAuthorDuringAuditMinimumTimeInterval", v7);
  v9 = TSUCheckedDynamicCast();

  if (v9)
  {
    objc_msgSend_doubleValue(v9, v10, v11, v12);
    v14 = v13;
  }

  else
  {
    v14 = 600.0;
  }

  return v14;
}

@end