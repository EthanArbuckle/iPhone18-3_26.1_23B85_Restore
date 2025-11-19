@interface WFCloudKitSyncToken
+ (id)accountForContainerEnvironmentString:(id)a3 userRecordID:(id)a4;
+ (id)defaultIdentifier;
- (CKServerChangeToken)serverChangeToken;
- (NSOrderedSet)lastOrdering;
- (id)newTokenWithCopiedPayload;
- (void)setLastOrdering:(id)a3;
- (void)setServerChangeToken:(id)a3;
@end

@implementation WFCloudKitSyncToken

- (id)newTokenWithCopiedPayload
{
  v3 = objc_opt_new();
  v4 = [(WFCloudKitSyncToken *)self account];
  [v3 setAccount:v4];

  [v3 setCoherenceSyncEnabled:{-[WFCloudKitSyncToken coherenceSyncEnabled](self, "coherenceSyncEnabled")}];
  v5 = [(WFCloudKitSyncToken *)self serverChangeTokenData];
  [v3 setServerChangeTokenData:v5];

  v6 = [(WFCloudKitSyncToken *)self lastOrderingData];
  [v3 setLastOrderingData:v6];

  v7 = [(WFCloudKitSyncToken *)self lastOrderingCloudKitRecordMetadata];
  [v3 setLastOrderingCloudKitRecordMetadata:v7];

  v8 = [(WFCloudKitSyncToken *)self syncEngineMetadata];
  [v3 setSyncEngineMetadata:v8];

  v9 = [(WFCloudKitSyncToken *)self syncFlagsCloudKitRecordMetadata];
  [v3 setSyncFlagsCloudKitRecordMetadata:v9];

  return v3;
}

- (NSOrderedSet)lastOrdering
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(WFCloudKitSyncToken *)self lastOrderingData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [(WFCloudKitSyncToken *)self lastOrderingData];
    v17 = 0;
    v10 = [v5 unarchivedObjectOfClasses:v8 fromData:v9 error:&v17];
    v11 = v17;

    if (v10)
    {
      v12 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v10];
    }

    else
    {
      v14 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[WFCloudKitSyncToken lastOrdering]";
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Error unarchving lastOrderingData: %{public}@", buf, 0x16u);
      }

      v12 = objc_opt_new();
    }

    v13 = v12;
  }

  else
  {
    v11 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[WFCloudKitSyncToken lastOrdering]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEFAULT, "%s lastOrderingData is empty", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setLastOrdering:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696ACC8];
    v7 = [a3 array];
    v5 = [v4 archivedDataWithRootObject:? requiringSecureCoding:? error:?];
    if (v5)
    {
      [(WFCloudKitSyncToken *)self setLastOrderingData:v5];
    }

    else
    {
      v6 = objc_opt_new();
      [(WFCloudKitSyncToken *)self setLastOrderingData:v6];
    }
  }

  else
  {
    v7 = objc_opt_new();
    [(WFCloudKitSyncToken *)self setLastOrderingData:v7];
  }
}

- (CKServerChangeToken)serverChangeToken
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(WFCloudKitSyncToken *)self serverChangeTokenData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACD0];
    v6 = objc_opt_class();
    v7 = [(WFCloudKitSyncToken *)self serverChangeTokenData];
    v14 = 0;
    v8 = [v5 unarchivedObjectOfClass:v6 fromData:v7 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "[WFCloudKitSyncToken serverChangeToken]";
        v17 = 2114;
        v18 = v9;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Error unarchving serverChangeTokenData: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[WFCloudKitSyncToken serverChangeToken]";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s serverChangeTokenData is empty", buf, 0xCu);
    }

    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)setServerChangeToken:(id)a3
{
  if (!a3)
  {
    v7 = objc_opt_new();
    v10 = v7;
    v6 = self;
    goto LABEL_5;
  }

  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  if (v4)
  {
    v5 = v4;
    v6 = self;
    v10 = v5;
    v7 = v5;
LABEL_5:
    [(WFCloudKitSyncToken *)v6 setServerChangeTokenData:v7];
    v8 = v10;
    goto LABEL_7;
  }

  v9 = objc_opt_new();
  [(WFCloudKitSyncToken *)self setServerChangeTokenData:v9];

  v8 = 0;
LABEL_7:
}

+ (id)accountForContainerEnvironmentString:(id)a3 userRecordID:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v6 zoneID];
  v9 = [v8 zoneName];
  v10 = [v6 recordName];

  v11 = [v5 stringWithFormat:@"%@:%@:%@", v7, v9, v10];

  return v11;
}

+ (id)defaultIdentifier
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

@end