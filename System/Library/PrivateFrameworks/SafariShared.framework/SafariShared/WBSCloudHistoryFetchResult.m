@interface WBSCloudHistoryFetchResult
- (NSDictionary)clientVersions;
- (NSSet)profiles;
- (WBSCloudHistoryFetchResult)init;
- (id)_dictionaryForRecordData:(id)a3;
- (id)description;
- (id)tombstonesForProfileWithServerIdentifier:(id)a3;
- (id)visitsForProfileWithServerIdentifier:(id)a3;
- (unint64_t)tombstoneCount;
- (unint64_t)visitCount;
- (void)_addCloudHistoryVisit:(id)a3 profileServerIdentifier:(id)a4;
- (void)_addTombstone:(id)a3 profileServerIdentifier:(id)a4;
- (void)_setServerChangeTokenData:(id)a3;
- (void)_updateClientVersion:(unint64_t)a3 seenAt:(id)a4;
- (void)appendRecord:(id)a3 usingConfiguration:(id)a4;
- (void)clearRecordsForProfileWithServerIdentifier:(id)a3;
@end

@implementation WBSCloudHistoryFetchResult

- (WBSCloudHistoryFetchResult)init
{
  v11.receiver = self;
  v11.super_class = WBSCloudHistoryFetchResult;
  v2 = [(WBSCloudHistoryFetchResult *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableVisitsPerProfile = v2->_mutableVisitsPerProfile;
    v2->_mutableVisitsPerProfile = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableTombstonesPerProfile = v2->_mutableTombstonesPerProfile;
    v2->_mutableTombstonesPerProfile = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    mutableClientVersions = v2->_mutableClientVersions;
    v2->_mutableClientVersions = v7;

    v9 = v2;
  }

  return v2;
}

- (NSSet)profiles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(NSMutableDictionary *)self->_mutableVisitsPerProfile allKeys];
  [v3 addObjectsFromArray:v4];

  v5 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile allKeys];
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (void)clearRecordsForProfileWithServerIdentifier:(id)a3
{
  mutableVisitsPerProfile = self->_mutableVisitsPerProfile;
  v5 = a3;
  [(NSMutableDictionary *)mutableVisitsPerProfile removeObjectForKey:v5];
  [(NSMutableDictionary *)self->_mutableTombstonesPerProfile removeObjectForKey:v5];
}

- (id)visitsForProfileWithServerIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_mutableVisitsPerProfile objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)_addCloudHistoryVisit:(id)a3 profileServerIdentifier:(id)a4
{
  v6 = a3;
  v11 = v6;
  v7 = a4;
  if (!v7)
  {
    v7 = *MEMORY[0x1E69C8B58];
  }

  v8 = [(NSMutableDictionary *)self->_mutableVisitsPerProfile objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:v6];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v11 count:1];
    [(NSMutableDictionary *)self->_mutableVisitsPerProfile setObject:v10 forKeyedSubscript:v7];
  }
}

- (unint64_t)visitCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_mutableVisitsPerProfile allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)clientVersions
{
  v2 = [(NSMutableDictionary *)self->_mutableClientVersions copy];

  return v2;
}

- (void)_updateClientVersion:(unint64_t)a3 seenAt:(id)a4
{
  v11 = a4;
  mutableClientVersions = self->_mutableClientVersions;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [(NSMutableDictionary *)mutableClientVersions objectForKeyedSubscript:v7];

  if (!v8 || [v8 compare:v11] == -1)
  {
    v9 = self->_mutableClientVersions;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v9 setObject:v11 forKeyedSubscript:v10];
  }
}

- (id)tombstonesForProfileWithServerIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)_addTombstone:(id)a3 profileServerIdentifier:(id)a4
{
  v6 = a3;
  v11 = v6;
  v7 = a4;
  if (!v7)
  {
    v7 = *MEMORY[0x1E69C8B58];
  }

  v8 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:v6];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v11 count:1];
    [(NSMutableDictionary *)self->_mutableTombstonesPerProfile setObject:v10 forKeyedSubscript:v7];
  }
}

- (unint64_t)tombstoneCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setServerChangeTokenData:(id)a3
{
  v4 = [a3 copy];
  serverChangeTokenData = self->_serverChangeTokenData;
  self->_serverChangeTokenData = v4;
}

- (id)_dictionaryForRecordData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if ([v3 safari_dataAppearsToBeCompressed])
    {
      v5 = [v4 safari_dataByDecompressingData];
      v6 = v5;
      if (v5)
      {
        v7 = v5;

        v4 = v7;
      }
    }

    v13 = 0;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WBSCloudHistoryFetchResult *)v11 _dictionaryForRecordData:v9];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)appendRecord:(id)a3 usingConfiguration:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 modificationDate];
  v9 = MEMORY[0x1E695DF00];
  [v7 syncWindow];
  v11 = [v9 dateWithTimeIntervalSinceNow:-v10];
  v12 = [v11 earlierDate:v8];

  if (v12 != v8)
  {
    v13 = [v6 recordType];
    v14 = [v6 safari_numberForKey:@"Version"];
    v15 = [v14 integerValue];

    v16 = [v6 safari_encryptedDataForKey:@"EncryptedData"];
    if (!v16)
    {
      v16 = [v6 safari_dataForKey:@"Data"];
    }

    v17 = [(WBSCloudHistoryFetchResult *)self _dictionaryForRecordData:v16];
    v18 = v17;
    if (!v17)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WBSCloudHistoryFetchResult appendRecord:v24 usingConfiguration:?];
      }

      goto LABEL_45;
    }

    v44 = v16;
    v45 = v17;
    v19 = [v6 safari_stringForKey:@"ProfileUUID"];
    if ([v13 isEqualToString:@"Visits"] && v15 >= 1 && v15 <= 2)
    {
      v43 = v13;
      v20 = @"ClientVersion";
      v21 = [v45 safari_numberForKey:@"ClientVersion"];
      v22 = [v21 unsignedIntegerValue];
      v42 = v11;
      if (v22)
      {
        v20 = [v45 safari_numberForKey:@"ClientVersion"];
        v23 = [(__CFString *)v20 unsignedIntegerValue];
      }

      else
      {
        v23 = 1;
      }

      v32 = [v6 modificationDate];
      [(WBSCloudHistoryFetchResult *)self _updateClientVersion:v23 seenAt:v32];

      if (v22)
      {
      }

      v25 = [v45 safari_arrayForKey:@"Visits"];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v33 = [v25 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (!v33)
      {
        goto LABEL_42;
      }

      v34 = v33;
      v39 = v8;
      v40 = v7;
      v41 = v6;
      v35 = *v53;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(v25);
          }

          v37 = [[WBSCloudHistoryVisit alloc] initWithDictionary:*(*(&v52 + 1) + 8 * i)];
          if (v37)
          {
            [(WBSCloudHistoryFetchResult *)self _addCloudHistoryVisit:v37 profileServerIdentifier:v19];
          }

          else
          {
            v38 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [(WBSCloudHistoryFetchResult *)&buf appendRecord:v51 usingConfiguration:v38];
            }
          }
        }

        v34 = [v25 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v34);
    }

    else
    {
      if (![v13 isEqualToString:@"Tombstones"] || v15 < 1 || v15 > 3)
      {
        goto LABEL_44;
      }

      v43 = v13;
      v25 = [v45 safari_arrayForKey:@"Tombstones"];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (!v26)
      {
LABEL_43:

        v13 = v43;
LABEL_44:

        v16 = v44;
        v18 = v45;
LABEL_45:

        goto LABEL_46;
      }

      v27 = v26;
      v41 = v6;
      v42 = v11;
      v39 = v8;
      v40 = v7;
      v28 = *v47;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [[WBSHistoryTombstone alloc] initWithDictionary:*(*(&v46 + 1) + 8 * j)];
          if (v30)
          {
            [(WBSCloudHistoryFetchResult *)self _addTombstone:v30 profileServerIdentifier:v19];
          }

          else
          {
            v31 = WBS_LOG_CHANNEL_PREFIXCloudHistory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(WBSCloudHistoryFetchResult *)&buf appendRecord:v51 usingConfiguration:v31];
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v27);
    }

    v7 = v40;
    v6 = v41;
    v8 = v39;
LABEL_42:
    v11 = v42;
    goto LABEL_43;
  }

LABEL_46:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p cloudHistoryVisits = %@; historyTombstones = %@", v5, self, self->_mutableVisitsPerProfile, self->_mutableTombstonesPerProfile];;

  return v6;
}

- (void)_dictionaryForRecordData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to deserialize dictionary: %{public}@", &v5, 0xCu);
}

- (void)appendRecord:(os_log_t)log usingConfiguration:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to deserialize WBSCloudHistoryVisit.", buf, 2u);
}

- (void)appendRecord:(os_log_t)log usingConfiguration:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to deserialize WBSHistoryTombstone.", buf, 2u);
}

@end