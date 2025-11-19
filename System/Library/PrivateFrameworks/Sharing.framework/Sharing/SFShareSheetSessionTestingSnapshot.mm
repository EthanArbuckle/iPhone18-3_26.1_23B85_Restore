@interface SFShareSheetSessionTestingSnapshot
+ (id)_jsonifyItems:(id)a3;
+ (id)dateFormatter;
+ (id)descriptionForItem:(id)a3;
+ (id)loadSnapshotFromURL:(id)a3 error:(id *)a4;
+ (id)snapshotsDirectory;
- (BOOL)currentProcessHasAppRecordEntitlement;
- (BOOL)currentProcessHasExtensionDiscoveryEntitlements;
- (BOOL)hasSamePreconditions:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SFShareSheetSessionTestingSnapshot)initWithCoder:(id)a3;
- (SFShareSheetSessionTestingSnapshot)initWithItems:(id)a3 applicationBundleID:(id)a4 pid:(int)a5;
- (SFShareSheetSessionTestingSnapshot)initWithJSONInfo:(id)a3;
- (id)checkSystemAppsAvailability;
- (id)defaultURL;
- (id)discoverInstalledExtensions;
- (id)filename;
- (id)jsonInfo;
- (id)modeKeyForCollaboration:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateFromSnapshot:(id)a3;
- (void)updatePreconditionsIfNeededWithReferenceSnapshot:(id)a3;
- (void)updateWithPlaceholderItems:(id)a3 collaborationItem:(id)a4 supportsCollaboration:(BOOL)a5 supportsSendCopy:(BOOL)a6;
- (void)writeSnapshotWithCompletionHandler:(id)a3;
@end

@implementation SFShareSheetSessionTestingSnapshot

- (SFShareSheetSessionTestingSnapshot)initWithItems:(id)a3 applicationBundleID:(id)a4 pid:(int)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SFShareSheetSessionTestingSnapshot;
  v10 = [(SFShareSheetSessionTestingSnapshot *)&v17 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF00] now];
    timestamp = v10->_timestamp;
    v10->_timestamp = v11;

    objc_storeStrong(&v10->_applicationBundleID, a4);
    v10->_pid = a5;
    v13 = [objc_opt_class() _jsonifyItems:v8];
    itemDescriptions = v10->_itemDescriptions;
    v10->_itemDescriptions = v13;

    v15 = v10;
  }

  return v10;
}

- (void)updateWithPlaceholderItems:(id)a3 collaborationItem:(id)a4 supportsCollaboration:(BOOL)a5 supportsSendCopy:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v23[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = objc_opt_new();
  if (v11 && v7)
  {
    v13 = [v11 placeholderActivityItem];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v11 activityItem];
    }

    v16 = v15;

    v17 = [SFShareSheetSessionModeTestingSnapshot alloc];
    v23[0] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v19 = [(SFShareSheetSessionModeTestingSnapshot *)v17 initWithPlaceholderItems:v18];

    [v12 setObject:v19 forKey:@"collaborate"];
  }

  if (v6)
  {
    v20 = [[SFShareSheetSessionModeTestingSnapshot alloc] initWithPlaceholderItems:v10];
    [v12 setObject:v20 forKey:@"sendCopy"];
  }

  v21 = [v12 copy];
  [(SFShareSheetSessionTestingSnapshot *)self setModeSnapshots:v21];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)updatePreconditionsIfNeededWithReferenceSnapshot:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 installedExtensions];
    [(SFShareSheetSessionTestingSnapshot *)self setInstalledExtensions:v5];

    v6 = [v9 systemAppsAvailable];
LABEL_3:
    v7 = v6;
    [(SFShareSheetSessionTestingSnapshot *)self setSystemAppsAvailable:v6];
LABEL_9:

    goto LABEL_10;
  }

  v8 = [(SFShareSheetSessionTestingSnapshot *)self installedExtensions];
  if (!v8)
  {
    if (![(SFShareSheetSessionTestingSnapshot *)self currentProcessHasExtensionDiscoveryEntitlements])
    {
      goto LABEL_8;
    }

    v8 = [(SFShareSheetSessionTestingSnapshot *)self discoverInstalledExtensions];
    [(SFShareSheetSessionTestingSnapshot *)self setInstalledExtensions:v8];
  }

LABEL_8:
  v7 = [(SFShareSheetSessionTestingSnapshot *)self systemAppsAvailable];
  if (v7)
  {
    goto LABEL_9;
  }

  if ([(SFShareSheetSessionTestingSnapshot *)self currentProcessHasAppRecordEntitlement])
  {
    v6 = [(SFShareSheetSessionTestingSnapshot *)self checkSystemAppsAvailability];
    goto LABEL_3;
  }

LABEL_10:
}

- (void)updateFromSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(SFShareSheetSessionTestingSnapshot *)self timestamp];
  v6 = [v4 timestamp];
  if ([v5 isEqualToDate:v6])
  {
    v7 = [(SFShareSheetSessionTestingSnapshot *)self applicationBundleID];
    v8 = [v4 applicationBundleID];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(SFShareSheetSessionTestingSnapshot *)self pid];
      if (v9 == [v4 pid])
      {
        v10 = [(SFShareSheetSessionTestingSnapshot *)self itemDescriptions];
        v11 = [v4 itemDescriptions];
        v12 = v10;
        v13 = v11;
        v14 = v13;
        if (v12 == v13)
        {

          goto LABEL_9;
        }

        if ((v12 != 0) != (v13 == 0))
        {
          v15 = [v12 isEqual:v13];

          if ((v15 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_9:
          v16 = [(SFShareSheetSessionTestingSnapshot *)self installedExtensions];

          if (!v16)
          {
            v17 = [v4 installedExtensions];
            [(SFShareSheetSessionTestingSnapshot *)self setInstalledExtensions:v17];
          }

          v18 = [(SFShareSheetSessionTestingSnapshot *)self systemAppsAvailable];

          if (!v18)
          {
            v19 = [v4 systemAppsAvailable];
            [(SFShareSheetSessionTestingSnapshot *)self setSystemAppsAvailable:v19];
          }

          v20 = [(SFShareSheetSessionTestingSnapshot *)self modeSnapshots];
          v21 = [v4 modeSnapshots];
          v22 = v20;
          v23 = v21;
          v24 = v23;
          if (v22 == v23)
          {

            goto LABEL_23;
          }

          if ((v22 != 0) == (v23 == 0))
          {
          }

          else
          {
            v25 = [v22 isEqual:v23];

            if (v25)
            {
              goto LABEL_23;
            }
          }

          v27 = [(SFShareSheetSessionTestingSnapshot *)self modeSnapshots];
          v28 = [v27 mutableCopy];

          v29 = [(SFShareSheetSessionTestingSnapshot *)self modeSnapshots];
          v31 = MEMORY[0x1E69E9820];
          v32 = 3221225472;
          v33 = __57__SFShareSheetSessionTestingSnapshot_updateFromSnapshot___block_invoke;
          v34 = &unk_1E788C850;
          v35 = v4;
          v36 = v28;
          v30 = v28;
          [v29 enumerateKeysAndObjectsUsingBlock:&v31];

          [(SFShareSheetSessionTestingSnapshot *)self setModeSnapshots:v30, v31, v32, v33, v34];
          goto LABEL_23;
        }
      }
    }
  }

LABEL_20:
  v26 = share_sheet_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v26, OS_LOG_TYPE_DEFAULT, "Attempted to update snapshot from snapshot for a different Share Sheet instance. Ignoring", buf, 2u);
  }

LABEL_23:
}

void __57__SFShareSheetSessionTestingSnapshot_updateFromSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  v7 = [v5 modeSnapshots];
  v8 = [v7 objectForKeyedSubscript:v9];
  [v6 updateFromSnapshot:v8];

  [*(a1 + 40) setObject:v6 forKey:v9];
}

- (void)writeSnapshotWithCompletionHandler:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFShareSheetSessionTestingSnapshot *)self jsonInfo];
  v6 = [(SFShareSheetSessionTestingSnapshot *)self defaultURL];
  v30 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v30];
  v8 = v30;
  v9 = v8;
  if (v7)
  {
    v29 = v8;
    v10 = [v7 writeToURL:v6 options:1 error:&v29];
    v11 = v29;

    v12 = share_sheet_log();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v6;
        _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Write Share Sheet snapshot SUCCESS {url: %@}", buf, 0xCu);
      }

      v14 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v6 readonly:1];
      v4[2](v4, v14, 0);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SFShareSheetSessionTestingSnapshot *)v11 writeSnapshotWithCompletionHandler:v13, v22, v23, v24, v25, v26, v27];
      }

      (v4)[2](v4, 0, v11);
    }

    v9 = v11;
  }

  else
  {
    v15 = share_sheet_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SFShareSheetSessionTestingSnapshot *)v9 writeSnapshotWithCompletionHandler:v15, v16, v17, v18, v19, v20, v21];
    }

    (v4)[2](v4, 0, v9);
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (id)loadSnapshotFromURL:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DEF0]);
  v7 = [v5 url];
  v8 = [v6 initWithContentsOfURL:v7];

  if (v8)
  {
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a4];
    if (v9)
    {
      v10 = [[SFShareSheetSessionTestingSnapshot alloc] initWithJSONInfo:v9];
      v11 = share_sheet_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v5;
        _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Read Share Sheet snapshot SUCCESS {url: %@}", &v26, 0xCu);
      }
    }

    else
    {
      if (a4 && !*a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:79 userInfo:0];
      }

      v11 = share_sheet_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SFShareSheetSessionTestingSnapshot *)a4 loadSnapshotFromURL:v11 error:v18, v19, v20, v21, v22, v23];
      }

      v10 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    }

    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SFShareSheetSessionTestingSnapshot *)a4 loadSnapshotFromURL:v9 error:v12, v13, v14, v15, v16, v17];
    }

    v10 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v10;
}

- (SFShareSheetSessionTestingSnapshot)initWithJSONInfo:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SFShareSheetSessionTestingSnapshot;
  v5 = [(SFShareSheetSessionTestingSnapshot *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"testName"];
    testName = v5->_testName;
    v5->_testName = v6;

    v8 = [v4 objectForKeyedSubscript:@"testSuiteName"];
    testSuiteName = v5->_testSuiteName;
    v5->_testSuiteName = v8;

    v10 = [v4 objectForKeyedSubscript:@"timestamp"];
    if (v10)
    {
      v11 = +[SFShareSheetSessionTestingSnapshot dateFormatter];
      v12 = [v11 dateFromString:v10];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x1E695DF00] now];
      }

      timestamp = v5->_timestamp;
      v5->_timestamp = v14;
    }

    else
    {
      v15 = [MEMORY[0x1E695DF00] now];
      v11 = v5->_timestamp;
      v5->_timestamp = v15;
    }

    v17 = [v4 objectForKeyedSubscript:@"applicationBundleID"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1F1D30528;
    }

    objc_storeStrong(&v5->_applicationBundleID, v19);

    v20 = [v4 objectForKeyedSubscript:@"pid"];
    v21 = [v20 longValue];
    if (v21)
    {
      v5->_pid = v21;
    }

    else
    {
      v22 = [MEMORY[0x1E696AE30] processInfo];
      v5->_pid = [v22 processIdentifier];
    }

    v23 = [v4 objectForKeyedSubscript:@"itemDescriptions"];
    itemDescriptions = v5->_itemDescriptions;
    v5->_itemDescriptions = v23;

    v25 = [v4 objectForKeyedSubscript:@"installedExtensions"];
    installedExtensions = v5->_installedExtensions;
    v5->_installedExtensions = v25;

    v27 = [v4 objectForKeyedSubscript:@"systemAppsAvailable"];
    systemAppsAvailable = v5->_systemAppsAvailable;
    v5->_systemAppsAvailable = v27;

    v29 = objc_opt_new();
    v30 = [v4 objectForKeyedSubscript:@"modeSnapshots"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__SFShareSheetSessionTestingSnapshot_initWithJSONInfo___block_invoke;
    v36[3] = &unk_1E788C878;
    v37 = v29;
    v31 = v29;
    [v30 enumerateKeysAndObjectsUsingBlock:v36];

    v32 = [v31 copy];
    modeSnapshots = v5->_modeSnapshots;
    v5->_modeSnapshots = v32;

    v34 = v5;
  }

  return v5;
}

void __55__SFShareSheetSessionTestingSnapshot_initWithJSONInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[SFShareSheetSessionModeTestingSnapshot alloc] initWithJSONInfo:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

- (id)jsonInfo
{
  v3 = objc_opt_new();
  v4 = [(SFShareSheetSessionTestingSnapshot *)self testName];

  if (v4)
  {
    v5 = [(SFShareSheetSessionTestingSnapshot *)self testName];
    [v3 setObject:v5 forKeyedSubscript:@"testName"];
  }

  v6 = [(SFShareSheetSessionTestingSnapshot *)self testSuiteName];

  if (v6)
  {
    v7 = [(SFShareSheetSessionTestingSnapshot *)self testSuiteName];
    [v3 setObject:v7 forKeyedSubscript:@"testSuiteName"];
  }

  v8 = +[SFShareSheetSessionTestingSnapshot dateFormatter];
  v9 = [(SFShareSheetSessionTestingSnapshot *)self timestamp];
  v10 = [v8 stringFromDate:v9];
  [v3 setObject:v10 forKeyedSubscript:@"timestamp"];

  v11 = [(SFShareSheetSessionTestingSnapshot *)self applicationBundleID];
  [v3 setObject:v11 forKeyedSubscript:@"applicationBundleID"];

  v12 = [MEMORY[0x1E696AD98] numberWithLong:{-[SFShareSheetSessionTestingSnapshot pid](self, "pid")}];
  [v3 setObject:v12 forKeyedSubscript:@"pid"];

  v13 = [(SFShareSheetSessionTestingSnapshot *)self itemDescriptions];
  [v3 setObject:v13 forKeyedSubscript:@"itemDescriptions"];

  v14 = [(SFShareSheetSessionTestingSnapshot *)self installedExtensions];
  [v3 setObject:v14 forKeyedSubscript:@"installedExtensions"];

  v15 = [(SFShareSheetSessionTestingSnapshot *)self systemAppsAvailable];
  [v3 setObject:v15 forKeyedSubscript:@"systemAppsAvailable"];

  v16 = objc_opt_new();
  v17 = [(SFShareSheetSessionTestingSnapshot *)self modeSnapshots];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__SFShareSheetSessionTestingSnapshot_jsonInfo__block_invoke;
  v21[3] = &unk_1E788C8A0;
  v22 = v16;
  v18 = v16;
  [v17 enumerateKeysAndObjectsUsingBlock:v21];

  v19 = [v18 copy];
  [v3 setObject:v19 forKeyedSubscript:@"modeSnapshots"];

  return v3;
}

void __46__SFShareSheetSessionTestingSnapshot_jsonInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonInfo];
  [*(a1 + 32) setObject:v6 forKey:v5];
}

- (SFShareSheetSessionTestingSnapshot)initWithCoder:(id)a3
{
  v44[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = SFShareSheetSessionTestingSnapshot;
  v5 = [(SFShareSheetSessionTestingSnapshot *)&v40 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testName"];
    testName = v5->_testName;
    v5->_testName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testSuiteName"];
    testSuiteName = v5->_testSuiteName;
    v5->_testSuiteName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleID"];
    applicationBundleID = v5->_applicationBundleID;
    v5->_applicationBundleID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    v15 = [v14 longValue];
    if (v15)
    {
      v5->_pid = v15;
    }

    else
    {
      v16 = [MEMORY[0x1E696AE30] processInfo];
      v5->_pid = [v16 processIdentifier];
    }

    v17 = MEMORY[0x1E695DFD8];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v44[2] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
    v19 = [v17 setWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"itemDescriptions"];
    itemDescriptions = v5->_itemDescriptions;
    v5->_itemDescriptions = v20;

    v22 = MEMORY[0x1E695DFD8];
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v43[2] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
    v24 = [v22 setWithArray:v23];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"installedExtensions"];
    installedExtensions = v5->_installedExtensions;
    v5->_installedExtensions = v25;

    v27 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v42[2] = objc_opt_class();
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
    v29 = [v27 setWithArray:v28];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"systemAppsAvailable"];
    systemAppsAvailable = v5->_systemAppsAvailable;
    v5->_systemAppsAvailable = v30;

    v32 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v41[2] = objc_opt_class();
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];
    v34 = [v32 setWithArray:v33];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"modeSnapshots"];
    modeSnapshots = v5->_modeSnapshots;
    v5->_modeSnapshots = v35;

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(SFShareSheetSessionTestingSnapshot *)self testName];

  if (v4)
  {
    [v7 encodeObject:self->_testName forKey:@"testName"];
  }

  v5 = [(SFShareSheetSessionTestingSnapshot *)self testSuiteName];

  if (v5)
  {
    [v7 encodeObject:self->_testSuiteName forKey:@"testSuiteName"];
  }

  [v7 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v7 encodeObject:self->_applicationBundleID forKey:@"applicationBundleID"];
  v6 = [MEMORY[0x1E696AD98] numberWithLong:{-[SFShareSheetSessionTestingSnapshot pid](self, "pid")}];
  [v7 encodeObject:v6 forKey:@"pid"];

  [v7 encodeObject:self->_itemDescriptions forKey:@"itemDescriptions"];
  [v7 encodeObject:self->_installedExtensions forKey:@"installedExtensions"];
  [v7 encodeObject:self->_systemAppsAvailable forKey:@"systemAppsAvailable"];
  [v7 encodeObject:self->_modeSnapshots forKey:@"modeSnapshots"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFShareSheetSessionTestingSnapshot *)v5 timestamp];
      v7 = [(SFShareSheetSessionTestingSnapshot *)self timestamp];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
          v17 = v9;
          v15 = v8;
LABEL_27:

          goto LABEL_28;
        }

        v11 = [v8 isEqual:v9];

        if (!v11)
        {
          v12 = 0;
LABEL_28:

          goto LABEL_29;
        }
      }

      v13 = [(SFShareSheetSessionTestingSnapshot *)v5 applicationBundleID];
      v14 = [(SFShareSheetSessionTestingSnapshot *)self applicationBundleID];
      v15 = v13;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {
          v12 = 0;
          v24 = v16;
          v22 = v15;
          goto LABEL_26;
        }

        v18 = [v15 isEqual:v16];

        if (!v18)
        {
LABEL_21:
          v12 = 0;
          goto LABEL_27;
        }
      }

      v19 = [(SFShareSheetSessionTestingSnapshot *)v5 pid];
      if (v19 != [(SFShareSheetSessionTestingSnapshot *)self pid]|| ![(SFShareSheetSessionTestingSnapshot *)self hasSamePreconditions:v5])
      {
        goto LABEL_21;
      }

      v20 = [(SFShareSheetSessionTestingSnapshot *)v5 modeSnapshots];
      v21 = [(SFShareSheetSessionTestingSnapshot *)self modeSnapshots];
      v22 = v20;
      v23 = v21;
      v24 = v23;
      if (v22 == v23)
      {
        v12 = 1;
      }

      else if ((v22 != 0) == (v23 == 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = [v22 isEqual:v23];
      }

LABEL_26:
      goto LABEL_27;
    }

    v12 = 0;
  }

LABEL_29:

  return v12;
}

- (BOOL)hasSamePreconditions:(id)a3
{
  v4 = a3;
  v5 = [v4 itemDescriptions];
  v6 = [(SFShareSheetSessionTestingSnapshot *)self itemDescriptions];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_6;
  }

  if ((v7 != 0) == (v8 == 0))
  {
    v11 = 0;
    v14 = v8;
    v13 = v7;
LABEL_16:

    goto LABEL_17;
  }

  v10 = [v7 isEqual:v8];

  if (v10)
  {
LABEL_6:
    v12 = MEMORY[0x1E695DFD8];
    v13 = [v4 installedExtensions];
    v14 = [v12 setWithArray:v13];
    v15 = MEMORY[0x1E695DFD8];
    v16 = [(SFShareSheetSessionTestingSnapshot *)self installedExtensions];
    v17 = [v15 setWithArray:v16];
    if ([v14 isEqualToSet:v17])
    {
      v18 = [v4 systemAppsAvailable];
      v19 = [(SFShareSheetSessionTestingSnapshot *)self systemAppsAvailable];
      v20 = v18;
      v21 = v19;
      v22 = v21;
      if (v20 == v21)
      {
        v11 = 1;
      }

      else if ((v20 != 0) == (v21 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = [v20 isEqual:v21];
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

+ (id)snapshotsDirectory
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 temporaryDirectory];
  v4 = [v3 URLByAppendingPathComponent:@"ShareSheetTestingSnapshots" isDirectory:1];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:0];

  return v4;
}

- (id)filename
{
  v3 = [(SFShareSheetSessionTestingSnapshot *)self testName];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(SFShareSheetSessionTestingSnapshot *)self testName];
    v6 = [v4 stringWithFormat:@"ShareSheetSnapshot-%@", v5];
  }

  else
  {
    v7 = +[SFShareSheetSessionTestingSnapshot dateFormatter];
    v8 = [(SFShareSheetSessionTestingSnapshot *)self timestamp];
    v5 = [v7 stringFromDate:v8];

    v9 = MEMORY[0x1E696AEC0];
    v10 = [(SFShareSheetSessionTestingSnapshot *)self applicationBundleID];
    v6 = [v9 stringWithFormat:@"ShareSheetSnapshot-%@-%@", v10, v5];
  }

  return v6;
}

- (id)defaultURL
{
  v3 = [objc_opt_class() snapshotsDirectory];
  v4 = [(SFShareSheetSessionTestingSnapshot *)self filename];
  v5 = [v3 URLByAppendingPathComponent:v4];
  v6 = [v5 URLByAppendingPathExtension:@"json"];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = 1;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", v4, v10];
      v12 = [v3 URLByAppendingPathComponent:v11];
      v13 = [v12 URLByAppendingPathExtension:@"json"];

      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = [v13 path];
      v16 = [v14 fileExistsAtPath:v15];

      v10 = (v10 + 1);
      v6 = v13;
    }

    while ((v16 & 1) != 0);
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[SFShareSheetSessionTestingSnapshot dateFormatter];
  }

  v3 = dateFormatter_formatter;

  return v3;
}

void __51__SFShareSheetSessionTestingSnapshot_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatter_formatter;
  dateFormatter_formatter = v0;

  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [dateFormatter_formatter setLocale:v2];

  [dateFormatter_formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [dateFormatter_formatter setTimeZone:v3];
}

+ (id)descriptionForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([(__CFString *)v4 isFileURL])
    {
      [(__CFString *)v4 lastPathComponent];
    }

    else
    {
      [(__CFString *)v4 absoluteString];
    }
    v5 = ;
    v10 = v5;
    v11 = &stru_1F1D30528;
    if (v5)
    {
      v11 = v5;
    }

    v9 = v11;

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(__CFString *)v3 string];
LABEL_6:
    v4 = v6;
    v7 = &stru_1F1D30528;
    if (v6)
    {
      v7 = v6;
    }

    v8 = v7;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = &stru_1F1D30528;
    if (v3)
    {
      v13 = v3;
    }

    v9 = v13;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(__CFString *)v3 registeredTypeIdentifiers];
      if (![(__CFString *)v4 count])
      {
        v9 = &stru_1F1D30528;
        goto LABEL_14;
      }

      v8 = [(__CFString *)v4 componentsJoinedByString:@", "];
LABEL_9:
      v9 = v8;
LABEL_14:

      goto LABEL_15;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = @"UIActivityItemsSource";
      goto LABEL_15;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v9 = @"UIActivityItemSource";
      goto LABEL_15;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v9 = @"NSSharingServiceItemSource";
        goto LABEL_15;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v14 = objc_opt_class();
        v6 = NSStringFromClass(v14);
        goto LABEL_6;
      }
    }

    v9 = @"NSPreviewRepresentableActivityItem";
  }

LABEL_15:

  return v9;
}

+ (id)_jsonifyItems:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if (v11)
        {
          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = v14;
          v16 = &stru_1F1D30528;
          if (v14)
          {
            v16 = v14;
          }

          v17 = v16;

          v18 = [a1 descriptionForItem:{v11, v23}];
          v27[0] = @"type";
          v27[1] = @"description";
          v28[0] = v17;
          v28[1] = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

          [v5 addObject:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v20 = [v5 copy];
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)modeKeyForCollaboration:(BOOL)a3
{
  if (a3)
  {
    return @"collaborate";
  }

  else
  {
    return @"sendCopy";
  }
}

- (id)discoverInstalledExtensions
{
  v35[3] = *MEMORY[0x1E69E9840];
  v19 = [objc_alloc(get_EXQueryClass()) initWithExtensionPointIdentifier:@"com.apple.share-services"];
  v20 = [objc_alloc(get_EXQueryClass()) initWithExtensionPointIdentifier:@"com.apple.ui-services"];
  v35[0] = v19;
  v35[1] = v20;
  v21 = [objc_alloc(get_EXQueryClass()) initWithExtensionPointIdentifier:@"com.apple.services"];
  v35[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v2 = get_EXQueryControllerClass_softClass;
  v31 = get_EXQueryControllerClass_softClass;
  if (!get_EXQueryControllerClass_softClass)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __get_EXQueryControllerClass_block_invoke;
    v27[3] = &unk_1E788A938;
    v27[4] = &v28;
    __get_EXQueryControllerClass_block_invoke(v27);
    v2 = v29[3];
  }

  v3 = v2;
  _Block_object_dispose(&v28, 8);
  v4 = [v2 executeQueries:v22];
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 nsExtensionAttributes];
        v12 = [v11 objectForKeyedSubscript:@"NSExtensionActivationRule"];

        if (v12)
        {
          v32[0] = @"bundleIdentifier";
          v13 = [v10 bundleIdentifier];
          v32[1] = @"extensionPointIdentifier";
          v33[0] = v13;
          v14 = [v10 extensionPointIdentifier];
          v33[1] = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

          [v5 addObject:v15];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v7);
  }

  v16 = [v5 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)checkSystemAppsAvailability
{
  v32[2] = *MEMORY[0x1E69E9840];
  v32[0] = @"com.apple.MobileSMS";
  v32[1] = @"com.apple.mobilemail";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    v7 = 0x1E6963000uLL;
    v8 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = objc_alloc(*(v7 + 1528));
        v26 = 0;
        v12 = [v11 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v26];
        v25 = v26;
        v13 = [v12 applicationState];
        if ([v13 isInstalled])
        {
          [v12 applicationState];
          v14 = v5;
          v15 = v6;
          v16 = v3;
          v18 = v17 = v7;
          v19 = [v18 isRestricted] ^ 1;

          v7 = v17;
          v3 = v16;
          v6 = v15;
          v5 = v14;
          v8 = 0x1E696A000;
        }

        else
        {
          v19 = 0;
        }

        v20 = [*(v8 + 3480) numberWithBool:v19];
        [v3 setObject:v20 forKey:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  v21 = [v3 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)currentProcessHasExtensionDiscoveryEntitlements
{
  if (currentProcessHasExtensionDiscoveryEntitlements_onceToken != -1)
  {
    [SFShareSheetSessionTestingSnapshot currentProcessHasExtensionDiscoveryEntitlements];
  }

  return currentProcessHasExtensionDiscoveryEntitlements_hasEntitlements;
}

void __85__SFShareSheetSessionTestingSnapshot_currentProcessHasExtensionDiscoveryEntitlements__block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v4 = SecTaskCopyValueForEntitlement(v1, @"com.apple.extensionkit.host.extension-point-identifiers", 0);
    CFRelease(v2);
    if ([v4 count] < 3)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = [v4 containsObject:@"com.apple.share-services"];
      if (v3)
      {
        v3 = [v4 containsObject:@"com.apple.ui-services"];
        if (v3)
        {
          LOBYTE(v3) = [v4 containsObject:@"com.apple.services"];
        }
      }
    }

    currentProcessHasExtensionDiscoveryEntitlements_hasEntitlements = v3;
  }
}

- (BOOL)currentProcessHasAppRecordEntitlement
{
  if (currentProcessHasAppRecordEntitlement_onceToken != -1)
  {
    [SFShareSheetSessionTestingSnapshot currentProcessHasAppRecordEntitlement];
  }

  return currentProcessHasAppRecordEntitlement_hasEntitlement;
}

void __75__SFShareSheetSessionTestingSnapshot_currentProcessHasAppRecordEntitlement__block_invoke()
{
  Default = CFAllocatorGetDefault();
  v1 = SecTaskCreateFromSelf(Default);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.private.coreservices.canmaplsdatabase", 0);
    CFRelease(v2);
    currentProcessHasAppRecordEntitlement_hasEntitlement = [v3 BOOLValue];
  }
}

- (void)writeSnapshotWithCompletionHandler:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8(&dword_1A9662000, a2, a3, "Write Share Sheet snapshot FAIL {error: %@}", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)loadSnapshotFromURL:(uint64_t)a3 error:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_8(&dword_1A9662000, a2, a3, "Read Share Sheet snapshot FAIL {error: %@}", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end