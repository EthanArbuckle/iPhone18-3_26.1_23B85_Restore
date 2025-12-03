@interface SLDCloudKitSyncReader
+ (id)sharedInstance;
- (BOOL)_validateRecordIDString:(id)string;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (id)_fetchAttributionInternal:(id)internal;
- (id)_syncDirectory;
- (id)_syncDirectoryForWriter:(id)writer;
- (id)apps;
- (id)fetchAttribution:(id)attribution;
- (id)getHighlightsForApplicationIdentifier:(id)identifier;
- (id)getHighlightsInternalForApplicationIdentifier:(id)identifier;
- (id)getSyncableHighlightsForApplicationIdentifier:(id)identifier;
- (id)recordForDevice:(id)device fileName:(id)name;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (void)accountStatusChanged;
- (void)addApplicationIdentifier:(id)identifier;
- (void)addApplicationIdentifierInternal:(id)internal;
- (void)deleteFromDevice:(id)device fileName:(id)name overrideRetained:(BOOL)retained;
- (void)garbageCollect;
- (void)garbageCollectNow;
- (void)initializeState;
- (void)invalidateApps;
- (void)invalidateAppsInternal;
- (void)notifyChangeCallback;
- (void)reset;
- (void)setChangeCallback:(id)callback;
- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone;
- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)updateServerAppsIfNecessary;
@end

@implementation SLDCloudKitSyncReader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_605 != -1)
  {
    +[SLDCloudKitSyncReader sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_606;

  return v3;
}

void __39__SLDCloudKitSyncReader_sharedInstance__block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x277CBC218] containerWithIdentifier:@"com.apple.SocialLayer"];
  [v3 setContainer:v0];

  [v3 setName:@"ckreader"];
  v1 = [(SLDCloudKitSyncBase *)[SLDCloudKitSyncReader alloc] initWithConfiguration:v3];
  v2 = sharedInstance_sharedInstance_606;
  sharedInstance_sharedInstance_606 = v1;
}

- (void)initializeState
{
  v3.receiver = self;
  v3.super_class = SLDCloudKitSyncReader;
  [(SLDCloudKitSyncBase *)&v3 initializeState];
  *(&self->super._saltLocked + 1) = 0;
  [(SLDCloudKitSyncReader *)self updateServerAppsIfNecessary];
}

- (void)reset
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _syncDirectory = [(SLDCloudKitSyncReader *)self _syncDirectory];
  [defaultManager removeItemAtURL:_syncDirectory error:0];

  v5.receiver = self;
  v5.super_class = SLDCloudKitSyncReader;
  [(SLDCloudKitSyncBase *)&v5 reset];
}

- (void)accountStatusChanged
{
  v4.receiver = self;
  v4.super_class = SLDCloudKitSyncReader;
  [(SLDCloudKitSyncBase *)&v4 accountStatusChanged];
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  [persistence setObject:0 forKeyedSubscript:@"appListLastUploaded"];

  [(SLDCloudKitSyncReader *)self updateServerAppsIfNecessary];
}

- (void)invalidateAppsInternal
{
  v9 = *MEMORY[0x277D85DE8];
  persistence = [self persistence];
  v2 = [persistence objectForKeyedSubscript:@"myAppsRecordID"];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)apps
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [persistence objectForKeyedSubscript:@"appListOnServer"];

  return v5;
}

- (BOOL)_validateRecordIDString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = 0;
    while (1)
    {
      v5 = [stringCopy characterAtIndex:v4];
      if (((v5 - 33) > 0x3E || ((1 << (v5 - 33)) & 0x43FFFFFF11FF9401) == 0) && (v5 - 97) >= 0x1A)
      {
        break;
      }

      if (++v4 >= [stringCopy length])
      {
        goto LABEL_7;
      }
    }

    v8 = SLDaemonLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SLDCloudKitSyncReader *)stringCopy _validateRecordIDString:v4];
    }

    v6 = 0;
  }

  else
  {
LABEL_7:
    v6 = 1;
  }

  return v6;
}

- (id)_syncDirectory
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (SLDStorageDirectory_onceToken != -1)
  {
    [SLDCloudKitSyncReader _syncDirectory];
  }

  v4 = SLDStorageDirectory_dirURL;
  configuration = [(SLDCloudKitSyncBase *)self configuration];
  name = [configuration name];
  v7 = [v4 URLByAppendingPathComponent:name isDirectory:1];

  return v7;
}

- (id)_syncDirectoryForWriter:(id)writer
{
  writerCopy = writer;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([writerCopy hasPrefix:@"writer!"] && -[SLDCloudKitSyncReader _validateRecordIDString:](self, "_validateRecordIDString:", writerCopy))
  {
    _syncDirectory = [(SLDCloudKitSyncReader *)self _syncDirectory];
    v7 = [_syncDirectory URLByAppendingPathComponent:writerCopy isDirectory:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addApplicationIdentifierInternal:(id)internal
{
  internalCopy = internal;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = SLDaemonLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader addApplicationIdentifierInternal:];
  }

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v8 = [persistence objectForKeyedSubscript:@"appIDToTimestamp"];
  v9 = v8;
  if (!v8)
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v10 = [v8 mutableCopy];

  v11 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v13 = [v11 numberWithDouble:?];
  [v10 setObject:v13 forKeyedSubscript:internalCopy];

  persistence2 = [(SLDCloudKitSyncBase *)self persistence];
  [persistence2 setObject:v10 forKeyedSubscript:@"appIDToTimestamp"];

  [(SLDCloudKitSyncReader *)self updateServerAppsIfNecessary];
}

- (void)updateServerAppsIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)garbageCollect
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!*(&self->super._saltLocked + 1))
  {
    *(&self->super._saltLocked + 1) = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 2000000000);
    queue2 = [(SLDCloudKitSyncBase *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__SLDCloudKitSyncReader_garbageCollect__block_invoke;
    v6[3] = &unk_278925C50;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, queue2, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __39__SLDCloudKitSyncReader_garbageCollect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[58] = 0;
    v2 = WeakRetained;
    [WeakRetained garbageCollectNow];
    WeakRetained = v2;
  }
}

- (void)garbageCollectNow
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)recordForDevice:(id)device fileName:(id)name
{
  deviceCopy = device;
  nameCopy = name;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(SLDCloudKitSyncReader *)self _validateRecordIDString:deviceCopy]&& [(SLDCloudKitSyncReader *)self _validateRecordIDString:nameCopy])
  {
    v9 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:deviceCopy];
    v10 = [v9 URLByAppendingPathComponent:nameCopy];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v10 options:1 error:0];
      if (v11)
      {
        v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)deleteFromDevice:(id)device fileName:(id)name overrideRetained:(BOOL)retained
{
  retainedCopy = retained;
  deviceCopy = device;
  nameCopy = name;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(SLDCloudKitSyncReader *)self _validateRecordIDString:deviceCopy]&& [(SLDCloudKitSyncReader *)self _validateRecordIDString:nameCopy])
  {
    persistence = [(SLDCloudKitSyncBase *)self persistence];
    v11 = [persistence objectForKeyedSubscript:@"files"];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
LABEL_24:

      goto LABEL_25;
    }

    v13 = [v12 objectForKeyedSubscript:deviceCopy];
    v14 = [v13 mutableCopy];

    if (!v14 || ([v14 objectForKeyedSubscript:nameCopy], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
LABEL_23:

      goto LABEL_24;
    }

    persistence2 = [(SLDCloudKitSyncBase *)self persistence];
    v17 = [persistence2 objectForKeyedSubscript:@"retainUntilExpirationFiles"];
    v18 = [v17 mutableCopy];

    if (v18)
    {
      v19 = [v18 objectForKeyedSubscript:deviceCopy];
      v20 = [v19 containsObject:nameCopy];

      if (v20)
      {
        if (!retainedCopy)
        {
LABEL_22:

          goto LABEL_23;
        }

        v21 = [v18 objectForKeyedSubscript:deviceCopy];
        v22 = [v21 mutableCopy];

        [v22 removeObject:nameCopy];
        if ([v22 count])
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        [v18 setObject:v23 forKeyedSubscript:deviceCopy];
        persistence3 = [(SLDCloudKitSyncBase *)self persistence];
        [persistence3 setObject:v18 forKeyedSubscript:@"retainUntilExpirationFiles"];
      }
    }

    [v14 setObject:0 forKeyedSubscript:nameCopy];
    if ([v14 count])
    {
      v25 = v14;
    }

    else
    {
      v25 = 0;
    }

    [v12 setObject:v25 forKeyedSubscript:deviceCopy];
    persistence4 = [(SLDCloudKitSyncBase *)self persistence];
    [persistence4 setObject:v12 forKeyedSubscript:@"files"];

    persistence5 = [(SLDCloudKitSyncBase *)self persistence];
    v28 = [persistence5 objectForKeyedSubscript:@"rankings"];
    v29 = [v28 mutableCopy];

    v30 = [v29 objectForKeyedSubscript:deviceCopy];
    v31 = [v30 mutableCopy];

    v32 = [v31 objectForKeyedSubscript:nameCopy];

    if (v32)
    {
      [v31 setObject:0 forKeyedSubscript:nameCopy];
      if ([v31 count])
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      [v29 setObject:v33 forKeyedSubscript:deviceCopy];
      persistence6 = [(SLDCloudKitSyncBase *)self persistence];
      [persistence6 setObject:v29 forKeyedSubscript:@"rankings"];
    }

    v35 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:deviceCopy];
    v36 = [v35 URLByAppendingPathComponent:nameCopy];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v36 error:0];

    [(SLDCloudKitSyncReader *)self notifyChangeCallback];
    goto LABEL_22;
  }

LABEL_25:
}

- (id)_fetchAttributionInternal:(id)internal
{
  internalCopy = internal;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  v7 = [internalCopy componentsSeparatedByString:@"/"];
  if ([v7 count] != 2)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = 0;
  if ([v8 hasPrefix:@"writer!"])
  {
    v10 = [v7 objectAtIndexedSubscript:1];
    if (![v10 hasPrefix:@"attribution!"])
    {
      v9 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v11 = [(SLDCloudKitSyncReader *)self recordForDevice:v8 fileName:v10];
    if (!v11)
    {
      v9 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v65 = v10;
    v66 = v8;
    v12 = objc_alloc(MEMORY[0x277D3A4D0]);
    encryptedValues = [v11 encryptedValues];
    v14 = [encryptedValues objectForKeyedSubscript:@"handle"];
    encryptedValues2 = [v11 encryptedValues];
    v16 = [encryptedValues2 objectForKeyedSubscript:@"displayName"];
    v68 = [v12 initWithHandle:v14 displayName:v16];

    encryptedValues3 = [v11 encryptedValues];
    v18 = [encryptedValues3 objectForKeyedSubscript:@"groupPhoto"];

    v60 = v6;
    if (v18 && ([v11 encryptedValues], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"groupPhoto"), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[SLDCloudKitSyncReader _validateRecordIDString:](self, "_validateRecordIDString:", v20), v20, v19, v21))
    {
      v22 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:v66];
      encryptedValues4 = [v11 encryptedValues];
      v24 = [encryptedValues4 objectForKeyedSubscript:@"groupPhoto"];
      v69 = [v22 URLByAppendingPathComponent:v24];
    }

    else
    {
      v69 = 0;
    }

    v25 = objc_alloc(MEMORY[0x277D3A4B0]);
    encryptedValues5 = [v11 encryptedValues];
    v26 = [encryptedValues5 objectForKeyedSubscript:@"identifier"];
    encryptedValues6 = [v11 encryptedValues];
    v56 = [encryptedValues6 objectForKeyedSubscript:@"sourceAppDisplayName"];
    encryptedValues7 = [v11 encryptedValues];
    v55 = [encryptedValues7 objectForKeyedSubscript:@"groupDisplayName"];
    v27 = MEMORY[0x277CBEAA8];
    encryptedValues8 = [v11 encryptedValues];
    v57 = [encryptedValues8 objectForKeyedSubscript:@"timestamp"];
    [v57 doubleValue];
    v53 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
    encryptedValues9 = [v11 encryptedValues];
    v28 = [encryptedValues9 objectForKeyedSubscript:@"starred"];
    bOOLValue = [v28 BOOLValue];
    v67 = v11;
    encryptedValues10 = [v11 encryptedValues];
    v31 = [encryptedValues10 objectForKeyedSubscript:@"fromMe"];
    BYTE1(v51) = [v31 BOOLValue];
    LOBYTE(v51) = bOOLValue;
    v32 = [v25 initWithIdentifier:v26 sourceAppDisplayName:v56 conversationIdentifier:@"c" groupPhotoPath:v69 groupDisplayName:v55 relatedPeople:MEMORY[0x277CBEBF8] sender:v68 timestamp:v53 collaborationMetadata:0 starred:v51 fromMe:?];

    v33 = v69;
    if (!v32)
    {
      v9 = 0;
      v10 = v65;
      v8 = v66;
      v11 = v67;
      v6 = v60;
LABEL_28:

      goto LABEL_29;
    }

    v70[0] = 0;
    v9 = [[SLAttribution alloc] initWithPortraitAttribution:v32 error:v70];
    v64 = v70[0];
    v10 = v65;
    v6 = v60;
    v52 = v32;
    if (v9)
    {
      v34 = v67;
      encryptedValues11 = [v67 encryptedValues];
      v36 = [encryptedValues11 objectForKeyedSubscript:@"shortDisplayName"];

      v8 = v66;
      if (v36)
      {
        encryptedValues12 = [v67 encryptedValues];
        v37 = [encryptedValues12 objectForKeyedSubscript:@"shortDisplayName"];
        sender = [(SLAttribution *)v9 sender];
        [sender setShortDisplayName:v37];

        v34 = v67;
      }

      encryptedValues13 = [v34 encryptedValues];
      v40 = [encryptedValues13 objectForKeyedSubscript:@"contactPhoto"];

      v11 = v34;
      if (!v40)
      {
        goto LABEL_27;
      }

      encryptedValues14 = [v34 encryptedValues];
      v42 = [encryptedValues14 objectForKeyedSubscript:@"contactPhoto"];
      v43 = [(SLDCloudKitSyncReader *)self _validateRecordIDString:v42];

      v11 = v67;
      if (!v43)
      {
        goto LABEL_27;
      }

      v44 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:v66];
      encryptedValues15 = [v67 encryptedValues];
      v46 = [encryptedValues15 objectForKeyedSubscript:@"contactPhoto"];
      v47 = [v44 URLByAppendingPathComponent:v46];

      if (v47)
      {
        v48 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v47 options:8 error:0];
        if (v48)
        {
          sender2 = [(SLAttribution *)v9 sender];
          [sender2 setThumbnailImageData:v48];
        }
      }

      v11 = v67;
    }

    else
    {
      v47 = SLDaemonLogHandle();
      v8 = v66;
      v11 = v67;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
      {
        [SLDCloudKitSyncReader _fetchAttributionInternal:];
      }
    }

LABEL_27:
    v33 = v69;
    v32 = v52;
    goto LABEL_28;
  }

LABEL_31:

LABEL_32:
  objc_autoreleasePoolPop(v6);

  return v9;
}

- (id)getHighlightsInternalForApplicationIdentifier:(id)identifier
{
  v195 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v7 = [persistence objectForKeyedSubscript:@"rankings"];

  persistence2 = [(SLDCloudKitSyncBase *)self persistence];
  v9 = [persistence2 objectForKeyedSubscript:@"files"];

  v128 = 0;
  v124 = v7;
  if (v7 && v9)
  {
    v154 = objc_opt_new();
    v128 = objc_opt_new();
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v10 = v7;
    v133 = [v10 countByEnumeratingWithState:&v178 objects:v194 count:16];
    if (v133)
    {
      v132 = *v179;
      v138 = identifierCopy;
      selfCopy = self;
      v130 = v10;
      v131 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v179 != v132)
          {
            v12 = v11;
            objc_enumerationMutation(v10);
            v11 = v12;
          }

          v136 = v11;
          v13 = *(*(&v178 + 1) + 8 * v11);
          v14 = [v10 objectForKeyedSubscript:v13];
          v156 = [v9 objectForKeyedSubscript:v13];
          if (v156)
          {
            v176 = 0u;
            v177 = 0u;
            v174 = 0u;
            v175 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v174 objects:v193 count:16];
            if (!v16)
            {
              v18 = v15;
              identifierCopy = v138;
LABEL_101:

              goto LABEL_102;
            }

            v17 = v16;
            v18 = 0;
            v19 = *v175;
            v148 = v14;
            v149 = *v175;
            v155 = v13;
            do
            {
              v20 = 0;
              v152 = v17;
              do
              {
                if (*v175 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v174 + 1) + 8 * v20);
                v22 = [v156 objectForKeyedSubscript:v21];
                v23 = [v156 objectForKeyedSubscript:v18];
                v24 = [v23 compare:v22];

                if (v24 == 1)
                {
                  v25 = v155;
                }

                else
                {
                  v26 = v18;
                  v172 = 0u;
                  v173 = 0u;
                  v170 = 0u;
                  v171 = 0u;
                  v27 = v15;
                  v28 = [v15 objectForKeyedSubscript:v21];
                  v29 = [v28 countByEnumeratingWithState:&v170 objects:v192 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v171;
                    while (2)
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v171 != v31)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v33 = [v156 objectForKeyedSubscript:*(*(&v170 + 1) + 8 * i)];

                        if (!v33)
                        {
                          v18 = v26;
                          goto LABEL_26;
                        }
                      }

                      v30 = [v28 countByEnumeratingWithState:&v170 objects:v192 count:16];
                      if (v30)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v18 = v21;
                  v28 = v26;
LABEL_26:

                  v14 = v148;
                  v19 = v149;
                  v25 = v155;
                  v15 = v27;
                  v17 = v152;
                }

                ++v20;
              }

              while (v20 != v17);
              v17 = [v15 countByEnumeratingWithState:&v174 objects:v193 count:16];
            }

            while (v17);

            identifierCopy = v138;
            v10 = v130;
            v9 = v131;
            if (v18)
            {
              v34 = objc_alloc(MEMORY[0x277CBEAA8]);
              v35 = [v156 objectForKeyedSubscript:v18];
              [v35 doubleValue];
              v36 = [v34 initWithTimeIntervalSinceReferenceDate:?];

              [v36 timeIntervalSinceNow];
              if (v37 >= -2592000.0)
              {
                [v36 timeIntervalSinceNow];
                if (v38 <= 86400.0)
                {
                  v39 = [(SLDCloudKitSyncReader *)selfCopy recordForDevice:v25 fileName:v18];
                  if (v39)
                  {
                    v129 = v36;
                    v40 = v39;
                    persistence3 = [(SLDCloudKitSyncBase *)selfCopy persistence];
                    v42 = [persistence3 objectForKeyedSubscript:@"retainUntilExpirationFiles"];
                    v43 = v42;
                    if (!v42)
                    {
                      v42 = MEMORY[0x277CBEC10];
                    }

                    v44 = [v42 mutableCopy];

                    v45 = objc_opt_new();
                    v126 = v44;
                    v46 = [v44 objectForKeyedSubscript:v25];
                    v47 = v46;
                    if (v46)
                    {
                      v48 = v46;
                    }

                    else
                    {
                      v48 = MEMORY[0x277CBEBF8];
                    }

                    [v45 addObjectsFromArray:v48];

                    v168 = 0u;
                    v169 = 0u;
                    v166 = 0u;
                    v167 = 0u;
                    v127 = v40;
                    encryptedValues = [v40 encryptedValues];
                    v50 = [encryptedValues objectForKeyedSubscript:@"recordIDs"];

                    v51 = [v50 countByEnumeratingWithState:&v166 objects:v191 count:16];
                    if (v51)
                    {
                      v52 = v51;
                      v53 = *v167;
                      do
                      {
                        for (j = 0; j != v52; ++j)
                        {
                          if (*v167 != v53)
                          {
                            objc_enumerationMutation(v50);
                          }

                          [v45 addObject:*(*(&v166 + 1) + 8 * j)];
                        }

                        v52 = [v50 countByEnumeratingWithState:&v166 objects:v191 count:16];
                      }

                      while (v52);
                    }

                    v125 = v45;
                    if ([v45 count])
                    {
                      allObjects = [v45 allObjects];
                      v56 = v126;
                      [v126 setObject:allObjects forKeyedSubscript:v25];
                    }

                    else
                    {
                      v56 = v126;
                      [v126 setObject:0 forKeyedSubscript:v25];
                    }

                    v57 = selfCopy;
                    persistence4 = [(SLDCloudKitSyncBase *)selfCopy persistence];
                    [persistence4 setObject:v56 forKeyedSubscript:@"retainUntilExpirationFiles"];

                    v164 = 0u;
                    v165 = 0u;
                    v162 = 0u;
                    v163 = 0u;
                    encryptedValues2 = [v127 encryptedValues];
                    v60 = [encryptedValues2 objectForKeyedSubscript:@"highlights"];

                    obj = v60;
                    v61 = [v60 countByEnumeratingWithState:&v162 objects:v190 count:16];
                    v14 = v148;
                    v147 = v61;
                    if (v61)
                    {
                      v144 = *v163;
                      v137 = v18;
                      do
                      {
                        v62 = 0;
                        do
                        {
                          if (*v163 != v144)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v63 = *(*(&v162 + 1) + 8 * v62);
                          v64 = objc_autoreleasePoolPush();
                          v145 = v63;
                          v65 = [(SLDCloudKitSyncReader *)v57 recordForDevice:v25 fileName:v63];
                          v66 = v65;
                          if (v65)
                          {
                            if (!identifierCopy)
                            {
                              goto LABEL_57;
                            }

                            encryptedValues3 = [v65 encryptedValues];
                            [encryptedValues3 objectForKeyedSubscript:@"applicationIdentifier"];
                            v68 = v66;
                            v69 = v64;
                            v71 = v70 = v62;

                            LODWORD(encryptedValues3) = [v71 isEqual:identifierCopy];
                            v62 = v70;
                            v64 = v69;
                            v66 = v68;
                            if (encryptedValues3)
                            {
LABEL_57:
                              v143 = v62;
                              encryptedValues4 = [v66 encryptedValues];
                              v73 = [encryptedValues4 objectForKeyedSubscript:@"entity"];
                              v74 = [(SLDCloudKitSyncReader *)v57 recordForDevice:v25 fileName:v73];

                              if (!v74)
                              {
                                goto LABEL_95;
                              }

                              encryptedValues5 = [v74 encryptedValues];
                              v76 = [encryptedValues5 objectForKeyedSubscript:@"identifier"];

                              v153 = v76;
                              if (!v76)
                              {
                                v150 = SLDaemonLogHandle();
                                if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
                                {
                                  [SLDCloudKitSyncReader getHighlightsInternalForApplicationIdentifier:];
                                }

                                goto LABEL_94;
                              }

                              v140 = v74;
                              v141 = v64;
                              v77 = objc_alloc(MEMORY[0x277CBEB18]);
                              encryptedValues6 = [v66 encryptedValues];
                              v79 = [encryptedValues6 objectForKeyedSubscript:@"attributions"];
                              v150 = [v77 initWithCapacity:{objc_msgSend(v79, "count")}];

                              v160 = 0u;
                              v161 = 0u;
                              v158 = 0u;
                              v159 = 0u;
                              v139 = v66;
                              encryptedValues7 = [v66 encryptedValues];
                              v81 = [encryptedValues7 objectForKeyedSubscript:@"attributions"];

                              v82 = [v81 countByEnumeratingWithState:&v158 objects:v189 count:16];
                              if (v82)
                              {
                                v83 = v82;
                                v84 = *v159;
                                do
                                {
                                  for (k = 0; k != v83; ++k)
                                  {
                                    if (*v159 != v84)
                                    {
                                      objc_enumerationMutation(v81);
                                    }

                                    v86 = *(*(&v158 + 1) + 8 * k);
                                    v87 = objc_autoreleasePoolPush();
                                    v188[0] = v25;
                                    v188[1] = v86;
                                    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];
                                    v89 = [v88 componentsJoinedByString:@"/"];

                                    v90 = [(SLDCloudKitSyncReader *)v57 _fetchAttributionInternal:v89];
                                    v91 = v90;
                                    if (v90)
                                    {
                                      sender = [v90 sender];
                                      handle = [sender handle];

                                      if (handle)
                                      {
                                        v187[0] = v153;
                                        v187[1] = handle;
                                        v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:2];
                                        v95 = [v94 componentsJoinedByString:@"\n"];

                                        if (([v154 containsObject:v95] & 1) == 0)
                                        {
                                          [v154 addObject:v95];
                                          [v150 addObject:v89];
                                        }

                                        v57 = selfCopy;
                                      }

                                      v25 = v155;
                                    }

                                    objc_autoreleasePoolPop(v87);
                                  }

                                  v83 = [v81 countByEnumeratingWithState:&v158 objects:v189 count:16];
                                }

                                while (v83);
                              }

                              v96 = SLDaemonLogHandle();
                              if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                              {
                                v182[0] = v25;
                                v182[1] = v145;
                                v121 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
                                *buf = 138412546;
                                v184 = v121;
                                v185 = 2112;
                                v186 = v150;
                                _os_log_debug_impl(&dword_231772000, v96, OS_LOG_TYPE_DEBUG, "#SLDCK %@ device scoped attributions: %@", buf, 0x16u);
                              }

                              v18 = v137;
                              identifierCopy = v138;
                              v14 = v148;
                              v74 = v140;
                              v64 = v141;
                              v66 = v139;
                              if (![v150 count])
                              {
                                v57 = selfCopy;
                                goto LABEL_94;
                              }

                              v97 = [v140 objectForKeyedSubscript:@"version"];
                              unsignedIntegerValue = [v97 unsignedIntegerValue];

                              if (unsignedIntegerValue <= 1)
                              {
                                encryptedValues8 = [v140 encryptedValues];
                                v111 = [encryptedValues8 objectForKeyedSubscript:@"supplementaryData"];
                                v112 = MEMORY[0x277CBEC10];
                                if (!v111)
                                {
                                  v112 = 0;
                                }

                                v106 = v112;

                                v57 = selfCopy;
                                if (!v106)
                                {
                                  goto LABEL_89;
                                }
                              }

                              else
                              {
                                v99 = MEMORY[0x277CCAAC8];
                                v100 = MEMORY[0x277CBEB98];
                                v101 = objc_opt_class();
                                v102 = objc_opt_class();
                                v103 = [v100 setWithObjects:{v101, v102, objc_opt_class(), 0}];
                                encryptedValues9 = [v140 encryptedValues];
                                v105 = [encryptedValues9 objectForKeyedSubscript:@"supplementaryData"];
                                v157 = 0;
                                v106 = [v99 unarchivedObjectOfClasses:v103 fromData:v105 error:&v157];
                                v107 = v157;

                                if (v107)
                                {
                                  v108 = SLDaemonLogHandle();
                                  v57 = selfCopy;
                                  v74 = v140;
                                  if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
                                  {
                                    v109 = [v140 objectForKeyedSubscript:@"version"];
                                    *buf = 138412546;
                                    v184 = v109;
                                    v185 = 2112;
                                    v186 = v107;
                                    _os_log_fault_impl(&dword_231772000, v108, OS_LOG_TYPE_FAULT, "#SLDCK unable to decode supplementary data from record with version %@: %@", buf, 0x16u);

                                    v57 = selfCopy;
                                  }

LABEL_87:

LABEL_92:
LABEL_93:

                                  identifierCopy = v138;
                                  v64 = v141;
LABEL_94:

LABEL_95:
                                  v62 = v143;
                                  goto LABEL_96;
                                }

                                v57 = selfCopy;
                                v74 = v140;
                                if (!v106)
                                {
LABEL_89:
                                  v107 = SLDaemonLogHandle();
                                  if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
                                  {
                                    [SLDCloudKitSyncReader getHighlightsInternalForApplicationIdentifier:];
                                  }

                                  v106 = 0;
                                  goto LABEL_92;
                                }
                              }

                              if (SLDValidateSupplementaryData(v106))
                              {
                                v134 = objc_alloc(MEMORY[0x277D3A4C0]);
                                v113 = MEMORY[0x277CBEBC0];
                                encryptedValues10 = [v74 encryptedValues];
                                v135 = [encryptedValues10 objectForKeyedSubscript:@"resourceURL"];
                                v114 = [v113 URLWithString:v135];
                                v115 = MEMORY[0x277CBEAA8];
                                encryptedValues11 = [v139 encryptedValues];
                                v117 = [encryptedValues11 objectForKeyedSubscript:@"timestamp"];
                                [v117 doubleValue];
                                v118 = [v115 dateWithTimeIntervalSinceReferenceDate:?];
                                encryptedValues12 = [v139 encryptedValues];
                                v120 = [encryptedValues12 objectForKeyedSubscript:@"score"];
                                v107 = [v134 initWithIdentifier:v153 resourceURL:v114 timestamp:v118 attributionIdentifiers:v150 supplementaryData:v106 score:v120];

                                v74 = v140;
                                v57 = selfCopy;

                                v25 = v155;
                                v66 = v139;

                                v108 = [objc_alloc(MEMORY[0x277D3A508]) initWithHighlight:v107 rankingDate:v129 originatingDeviceId:v155];
                                [v128 addObject:v108];
                                goto LABEL_87;
                              }

                              goto LABEL_93;
                            }
                          }

LABEL_96:

                          objc_autoreleasePoolPop(v64);
                          ++v62;
                        }

                        while (v62 != v147);
                        v147 = [obj countByEnumeratingWithState:&v162 objects:v190 count:16];
                      }

                      while (v147);
                    }

                    v36 = v129;
                    v39 = v127;
                  }
                }
              }

              v10 = v130;
              v9 = v131;
              goto LABEL_101;
            }
          }

LABEL_102:

          v11 = v136 + 1;
        }

        while (v136 + 1 != v133);
        v133 = [v10 countByEnumeratingWithState:&v178 objects:v194 count:16];
      }

      while (v133);
    }
  }

  v122 = *MEMORY[0x277D85DE8];

  return v128;
}

- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone
{
  zoneCopy = zone;
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader syncEngine:zoneCopy didSaveRecordZone:?];
  }
}

- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  v8 = SLDaemonLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SLDCloudKitSyncReader syncEngine:failedToSaveRecordZone:error:];
  }
}

- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke;
  v13[3] = &unk_278927498;
  v14 = engineCopy;
  selfCopy = self;
  v16 = dCopy;
  v17 = &v18;
  v9 = dCopy;
  v10 = engineCopy;
  dispatch_sync(queue, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = (a1 + 48);
    v5 = [*(a1 + 48) zoneID];
    v6 = [v5 zoneName];
    v7 = [@"readers" isEqual:v6];

    if (v7)
    {
      v8 = [*(a1 + 40) persistence];
      v9 = [v8 objectForKeyedSubscript:@"myAppsRecordID"];
      v10 = [*(a1 + 48) recordName];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"reader" recordID:*(a1 + 48)];
        v14 = *(a1 + 56);
        v13 = a1 + 56;
        v15 = *(v14 + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v12;

        [*(v13 - 16) addMetadataToRecord:*(*(*v13 + 8) + 40)];
        v17 = [*(v13 - 16) apps];
        v18 = [*(*(*v13 + 8) + 40) encryptedValues];
        [v18 setObject:v17 forKeyedSubscript:@"applicationIdentifiers"];

        v19 = SLDaemonLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_2(v4);
        }
      }

      else
      {
        v19 = SLDaemonLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_1((a1 + 48));
        }
      }
    }
  }
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  recordCopy = record;
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader syncEngine:recordCopy didSaveRecord:?];
  }
}

- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error
{
  engineCopy = engine;
  recordCopy = record;
  errorCopy = error;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = recordCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = recordCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) recordID];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    v7 = [@"readers" isEqual:v6];

    v8 = SLDaemonLogHandle();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_2();
      }

      v10 = [*(a1 + 40) persistence];
      v11 = [v10 objectForKeyedSubscript:@"myAppsRecordID"];
      v12 = [*(a1 + 48) recordID];
      v13 = [v12 recordName];
      v14 = [v11 isEqual:v13];

      if (v14)
      {
        v15 = [*(a1 + 40) persistence];
        [v15 setObject:0 forKeyedSubscript:@"appListLastUploaded"];

        v16 = [*(a1 + 40) persistence];
        [v16 setObject:0 forKeyedSubscript:@"appListOnServer"];

        [*(a1 + 40) checkForAccountChanges];
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_1((a1 + 48));
      }
    }
  }
}

- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d
{
  dCopy = d;
  v5 = SLDaemonLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader syncEngine:didDeleteRecordWithID:];
  }
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  deletedCopy = deleted;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SLDCloudKitSyncReader_syncEngine_recordWithIDWasDeleted_recordType___block_invoke;
  v9[3] = &unk_278925CF0;
  v10 = deletedCopy;
  selfCopy = self;
  v8 = deletedCopy;
  dispatch_sync(queue, v9);
}

void __70__SLDCloudKitSyncReader_syncEngine_recordWithIDWasDeleted_recordType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneID];
  v4 = [v2 zoneName];

  v3 = [*(a1 + 32) recordName];
  [*(a1 + 40) deleteFromDevice:v4 fileName:v3 overrideRetained:0];
  [*(a1 + 40) garbageCollect];
}

- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SLDCloudKitSyncReader_syncEngine_shouldFetchChangesForZoneID___block_invoke;
  v12[3] = &unk_2789274C0;
  v13 = engineCopy;
  selfCopy = self;
  v15 = dCopy;
  v16 = &v17;
  v9 = dCopy;
  v10 = engineCopy;
  dispatch_sync(queue, v12);

  LOBYTE(dCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return dCopy;
}

void __64__SLDCloudKitSyncReader_syncEngine_shouldFetchChangesForZoneID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = [*(a1 + 48) zoneName];
    v6 = [v5 hasPrefix:@"writer!"];

    v4 = *(*(a1 + 56) + 8);
    if (v6)
    {
      *(v4 + 24) = 1;
      return;
    }
  }

  else
  {
    v4 = *(*(a1 + 56) + 8);
  }

  *(v4 + 24) = 0;
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke;
  block[3] = &unk_278927298;
  v12 = engineCopy;
  selfCopy = self;
  v14 = recordCopy;
  v9 = recordCopy;
  v10 = engineCopy;
  dispatch_sync(queue, block);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = (a1 + 48);
    if (([*(a1 + 40) recordSupportsOurVersion:*(a1 + 48)] & 1) == 0)
    {
      v9 = SLDaemonLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_1(a1 + 48);
      }

      goto LABEL_55;
    }

    v5 = [*v4 recordID];
    v6 = [v5 zoneID];
    v7 = [v6 zoneName];
    v8 = [v7 hasPrefix:@"writer!"];

    v9 = SLDaemonLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if ((v8 & 1) == 0)
    {
      if (v10)
      {
        __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_2((a1 + 48));
      }

      goto LABEL_55;
    }

    if (v10)
    {
      __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_3(a1 + 48);
    }

    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) recordID];
    v13 = [v12 zoneID];
    v14 = [v13 zoneName];
    LODWORD(v11) = [v11 _validateRecordIDString:v14];

    if (v11)
    {
      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) recordID];
      v17 = [v16 recordName];
      LODWORD(v15) = [v15 _validateRecordIDString:v17];

      if (v15)
      {
        v18 = *(a1 + 40);
        v19 = [*(a1 + 48) recordID];
        v20 = [v19 zoneID];
        v21 = [v20 zoneName];
        v9 = [v18 _syncDirectoryForWriter:v21];

        if (!v9)
        {
          v26 = SLDaemonLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_13();
          }

          goto LABEL_54;
        }

        v22 = [*(a1 + 40) persistence];
        v23 = [v22 objectForKeyedSubscript:@"files"];
        v24 = v23;
        v25 = MEMORY[0x277CBEC10];
        if (!v23)
        {
          v23 = MEMORY[0x277CBEC10];
        }

        v26 = [v23 mutableCopy];

        v27 = [*(a1 + 48) recordID];
        v28 = [v27 zoneID];
        v29 = [v28 zoneName];
        v30 = [v26 objectForKeyedSubscript:v29];
        v31 = v30;
        if (!v30)
        {
          v30 = v25;
        }

        v32 = [v30 mutableCopy];

        v33 = [*(a1 + 48) recordID];
        v34 = [v33 recordName];
        v35 = [v32 objectForKeyedSubscript:v34];

        if (v35)
        {
          v36 = SLDaemonLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_4();
          }

          goto LABEL_53;
        }

        v37 = [MEMORY[0x277CCAA00] defaultManager];
        v86 = 0;
        v38 = [v37 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v86];
        v36 = v86;

        if ((v38 & 1) == 0)
        {
          v68 = SLDaemonLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_5();
          }

          goto LABEL_52;
        }

        v39 = [*v4 objectForKeyedSubscript:@"recordTimestamp"];
        v40 = [*v4 recordID];
        v41 = [v40 recordName];
        [v32 setObject:v39 forKeyedSubscript:v41];

        v42 = [*v4 recordType];
        LODWORD(v40) = [@"index" isEqual:v42];

        if (v40)
        {
          v82 = v36;
          v43 = v25;
          v44 = SLDaemonLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_6();
          }

          v45 = [*(a1 + 40) persistence];
          v46 = [v45 objectForKeyedSubscript:@"rankings"];
          v47 = v46;
          if (!v46)
          {
            v46 = v43;
          }

          v80 = [v46 mutableCopy];

          v48 = [*(a1 + 48) recordID];
          v49 = [v48 zoneID];
          v50 = [v49 zoneName];
          v51 = [v80 objectForKeyedSubscript:v50];
          v52 = v51;
          if (!v51)
          {
            v51 = MEMORY[0x277CBEC10];
          }

          v53 = [v51 mutableCopy];

          v54 = [*(a1 + 48) encryptedValues];
          v55 = [v54 objectForKeyedSubscript:@"recordIDs"];
          v56 = [*(a1 + 48) recordID];
          v57 = [v56 recordName];
          [v53 setObject:v55 forKeyedSubscript:v57];

          v58 = [*(a1 + 48) recordID];
          v59 = [v58 zoneID];
          v60 = [v59 zoneName];
          [v81 setObject:v53 forKeyedSubscript:v60];

          v61 = [*(a1 + 40) persistence];
          [v61 setObject:v81 forKeyedSubscript:@"rankings"];

          v36 = v82;
        }

        v62 = [*(a1 + 48) recordID];
        v63 = [v62 zoneID];
        v64 = [v63 zoneName];
        [v26 setObject:v32 forKeyedSubscript:v64];

        v65 = [*(a1 + 40) persistence];
        [v65 setObject:v26 forKeyedSubscript:@"files"];

        v66 = [*(a1 + 48) recordID];
        v67 = [v66 recordName];
        v68 = [v9 URLByAppendingPathComponent:v67];

        v69 = SLDaemonLogHandle();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_7();
        }

        v70 = [*v4 recordType];
        v71 = [@"image" isEqual:v70];

        v72 = SLDaemonLogHandle();
        v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG);
        if (v71)
        {
          if (v73)
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_11();
          }

          v74 = [*v4 encryptedValues];
          v75 = [v74 objectForKeyedSubscript:@"compressed"];

          v85 = 0;
          [v75 writeToURL:v68 options:0 error:&v85];
          v76 = v85;
          if (!v76)
          {
            goto LABEL_51;
          }

          v77 = SLDaemonLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_12();
          }
        }

        else
        {
          if (v73)
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_8();
          }

          v78 = *v4;
          v84 = 0;
          v76 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v78 requiringSecureCoding:1 error:&v84];
          v75 = v84;
          if (v76)
          {
            v83 = 0;
            [v76 writeToURL:v68 options:0 error:&v83];
            v77 = v83;
            if (v77)
            {
              v79 = SLDaemonLogHandle();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_9();
              }
            }
          }

          else
          {
            v77 = SLDaemonLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_10();
            }
          }
        }

LABEL_51:
        [*(a1 + 40) garbageCollect];
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
      }
    }
  }
}

- (void)notifyChangeCallback
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__SLDCloudKitSyncReader_notifyChangeCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 72) = 0;
    v3 = _Block_copy(WeakRetained[8]);
    v4 = SLDaemonLogHandle();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "#SLDCK invoking change callback", buf, 2u);
      }

      v4 = dispatch_get_global_queue(-2, 0);
      dispatch_async(v4, v3);
    }

    else if (v5)
    {
      v6[0] = 0;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "#SLDCK not invoking change callback because it's nil", v6, 2u);
    }
  }
}

- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error
{
  engineCopy = engine;
  dCopy = d;
  errorCopy = error;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = dCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "#SLDCK Failed to fetch changes for zone %@: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) domain];
    if ([v8 isEqual:*MEMORY[0x277CBBF50]])
    {
    }

    else
    {
      v9 = [*(a1 + 56) domain];
      v10 = [v9 isEqual:*MEMORY[0x277CBBF98]];

      if (!v10)
      {
        goto LABEL_2;
      }
    }

    if ([*(a1 + 56) code] == 112)
    {
      v11 = [*(a1 + 48) zoneName];
      v12 = [@"readers" isEqual:v11];

      if ((v12 & 1) == 0)
      {
        v13 = SLDaemonLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1((a1 + 48));
        }

        v14 = [*(a1 + 40) syncEngine];
        v16 = *(a1 + 48);
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
        [v14 addRecordZonesToSave:0 recordZoneIDsToDelete:v15];
      }
    }
  }

LABEL_2:
  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidateApps
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SLDCloudKitSyncReader_invalidateApps__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SLDCloudKitSyncReader_addApplicationIdentifier___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (id)getHighlightsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SLDCloudKitSyncReader_getHighlightsForApplicationIdentifier___block_invoke;
  block[3] = &unk_278926700;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__SLDCloudKitSyncReader_getHighlightsForApplicationIdentifier___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getHighlightsInternalForApplicationIdentifier:*(a1 + 40)];
  v2 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 originatingDeviceId];
        v10 = [v2 objectForKeyedSubscript:v9];

        if (!v10)
        {
          v10 = objc_opt_new();
          v11 = [v8 originatingDeviceId];
          [v2 setObject:v10 forKeyedSubscript:v11];
        }

        v12 = [SLHighlight alloc];
        v13 = [v8 highlight];
        v21 = 0;
        v14 = [(SLHighlight *)v12 initWithPortraitHighlight:v13 error:&v21];
        v15 = v21;

        if (v14)
        {
          [v10 addObject:v14];
        }

        else
        {
          v16 = SLDaemonLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v27 = v15;
            _os_log_fault_impl(&dword_231772000, v16, OS_LOG_TYPE_FAULT, "couldn't convert portrait highlight to sl highlight: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v2;

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getSyncableHighlightsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SLDCloudKitSyncReader_getSyncableHighlightsForApplicationIdentifier___block_invoke;
  block[3] = &unk_2789274E8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __71__SLDCloudKitSyncReader_getSyncableHighlightsForApplicationIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getHighlightsInternalForApplicationIdentifier:*(a1 + 40)];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
}

- (id)fetchAttribution:(id)attribution
{
  attributionCopy = attribution;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SLDCloudKitSyncReader_fetchAttribution___block_invoke;
  block[3] = &unk_2789274E8;
  v10 = attributionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = attributionCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __42__SLDCloudKitSyncReader_fetchAttribution___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchAttributionInternal:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setChangeCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SLDCloudKitSyncReader_setChangeCallback___block_invoke;
  v7[3] = &unk_2789266B0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(queue, v7);
}

uint64_t __43__SLDCloudKitSyncReader_setChangeCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_validateRecordIDString:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 substringWithRange:{a2, 1}];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addApplicationIdentifierInternal:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAttributionInternal:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  v4 = v0;
  _os_log_fault_impl(&dword_231772000, v1, OS_LOG_TYPE_FAULT, "#SLDCK cannot make SLAttribution for %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getHighlightsInternalForApplicationIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 objectForKeyedSubscript:@"version"];
  OUTLINED_FUNCTION_15(v1, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK nil supplementary data in record written by version %@");
}

- (void)getHighlightsInternalForApplicationIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 objectForKeyedSubscript:@"version"];
  OUTLINED_FUNCTION_15(v1, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK nil identifier in record written by version %@");
}

- (void)syncEngine:(void *)a1 didSaveRecordZone:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 zoneID];
  v2 = [v1 zoneName];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:failedToSaveRecordZone:error:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x277D85DE8];
  v1 = [v0 zoneID];
  v2 = [v1 zoneName];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(*v1 + 8) + 40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_4(&dword_231772000, v3, v4, "#SLDCK giving sync engine contents for record id %@: %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:(void *)a1 didSaveRecord:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_8(v2) recordID];
  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncEngine:didDeleteRecordWithID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(a1) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_2(id *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_8(a1) recordID];
  v4 = [*a1 recordID];
  v5 = [v4 zoneID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(a1) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "#SLDCK couldn't make writer dir for %@ due to error %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_9()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "#SLDCK failed to write ckrecord archive to %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_14();
  v0 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_8(v1) recordID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_12()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "#SLDCK error writing image to %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_12(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end