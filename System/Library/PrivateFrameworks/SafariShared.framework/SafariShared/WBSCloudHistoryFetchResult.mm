@interface WBSCloudHistoryFetchResult
- (NSDictionary)clientVersions;
- (NSSet)profiles;
- (WBSCloudHistoryFetchResult)init;
- (id)_dictionaryForRecordData:(id)data;
- (id)description;
- (id)tombstonesForProfileWithServerIdentifier:(id)identifier;
- (id)visitsForProfileWithServerIdentifier:(id)identifier;
- (unint64_t)tombstoneCount;
- (unint64_t)visitCount;
- (void)_addCloudHistoryVisit:(id)visit profileServerIdentifier:(id)identifier;
- (void)_addTombstone:(id)tombstone profileServerIdentifier:(id)identifier;
- (void)_setServerChangeTokenData:(id)data;
- (void)_updateClientVersion:(unint64_t)version seenAt:(id)at;
- (void)appendRecord:(id)record usingConfiguration:(id)configuration;
- (void)clearRecordsForProfileWithServerIdentifier:(id)identifier;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mutableClientVersions = v2->_mutableClientVersions;
    v2->_mutableClientVersions = dictionary;

    v9 = v2;
  }

  return v2;
}

- (NSSet)profiles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  allKeys = [(NSMutableDictionary *)self->_mutableVisitsPerProfile allKeys];
  [v3 addObjectsFromArray:allKeys];

  allKeys2 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile allKeys];
  [v3 addObjectsFromArray:allKeys2];

  return v3;
}

- (void)clearRecordsForProfileWithServerIdentifier:(id)identifier
{
  mutableVisitsPerProfile = self->_mutableVisitsPerProfile;
  identifierCopy = identifier;
  [(NSMutableDictionary *)mutableVisitsPerProfile removeObjectForKey:identifierCopy];
  [(NSMutableDictionary *)self->_mutableTombstonesPerProfile removeObjectForKey:identifierCopy];
}

- (id)visitsForProfileWithServerIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_mutableVisitsPerProfile objectForKeyedSubscript:identifier];
  v4 = [v3 copy];

  return v4;
}

- (void)_addCloudHistoryVisit:(id)visit profileServerIdentifier:(id)identifier
{
  visitCopy = visit;
  v11 = visitCopy;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    identifierCopy = *MEMORY[0x1E69C8B58];
  }

  v8 = [(NSMutableDictionary *)self->_mutableVisitsPerProfile objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:visitCopy];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v11 count:1];
    [(NSMutableDictionary *)self->_mutableVisitsPerProfile setObject:v10 forKeyedSubscript:identifierCopy];
  }
}

- (unint64_t)visitCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_mutableVisitsPerProfile allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)_updateClientVersion:(unint64_t)version seenAt:(id)at
{
  atCopy = at;
  mutableClientVersions = self->_mutableClientVersions;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
  v8 = [(NSMutableDictionary *)mutableClientVersions objectForKeyedSubscript:v7];

  if (!v8 || [v8 compare:atCopy] == -1)
  {
    v9 = self->_mutableClientVersions;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
    [(NSMutableDictionary *)v9 setObject:atCopy forKeyedSubscript:v10];
  }
}

- (id)tombstonesForProfileWithServerIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile objectForKeyedSubscript:identifier];
  v4 = [v3 copy];

  return v4;
}

- (void)_addTombstone:(id)tombstone profileServerIdentifier:(id)identifier
{
  tombstoneCopy = tombstone;
  v11 = tombstoneCopy;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    identifierCopy = *MEMORY[0x1E69C8B58];
  }

  v8 = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile objectForKeyedSubscript:identifierCopy];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:tombstoneCopy];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&v11 count:1];
    [(NSMutableDictionary *)self->_mutableTombstonesPerProfile setObject:v10 forKeyedSubscript:identifierCopy];
  }
}

- (unint64_t)tombstoneCount
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_mutableTombstonesPerProfile allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) count];
      }

      v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setServerChangeTokenData:(id)data
{
  v4 = [data copy];
  serverChangeTokenData = self->_serverChangeTokenData;
  self->_serverChangeTokenData = v4;
}

- (id)_dictionaryForRecordData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = dataCopy;
    if ([dataCopy safari_dataAppearsToBeCompressed])
    {
      safari_dataByDecompressingData = [v4 safari_dataByDecompressingData];
      v6 = safari_dataByDecompressingData;
      if (safari_dataByDecompressingData)
      {
        v7 = safari_dataByDecompressingData;

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

- (void)appendRecord:(id)record usingConfiguration:(id)configuration
{
  v58 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  configurationCopy = configuration;
  modificationDate = [recordCopy modificationDate];
  v9 = MEMORY[0x1E695DF00];
  [configurationCopy syncWindow];
  v11 = [v9 dateWithTimeIntervalSinceNow:-v10];
  v12 = [v11 earlierDate:modificationDate];

  if (v12 != modificationDate)
  {
    recordType = [recordCopy recordType];
    v14 = [recordCopy safari_numberForKey:@"Version"];
    integerValue = [v14 integerValue];

    v16 = [recordCopy safari_encryptedDataForKey:@"EncryptedData"];
    if (!v16)
    {
      v16 = [recordCopy safari_dataForKey:@"Data"];
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
    v19 = [recordCopy safari_stringForKey:@"ProfileUUID"];
    if ([recordType isEqualToString:@"Visits"] && integerValue >= 1 && integerValue <= 2)
    {
      v43 = recordType;
      v20 = @"ClientVersion";
      v21 = [v45 safari_numberForKey:@"ClientVersion"];
      unsignedIntegerValue = [v21 unsignedIntegerValue];
      v42 = v11;
      if (unsignedIntegerValue)
      {
        v20 = [v45 safari_numberForKey:@"ClientVersion"];
        unsignedIntegerValue2 = [(__CFString *)v20 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue2 = 1;
      }

      modificationDate2 = [recordCopy modificationDate];
      [(WBSCloudHistoryFetchResult *)self _updateClientVersion:unsignedIntegerValue2 seenAt:modificationDate2];

      if (unsignedIntegerValue)
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
      v39 = modificationDate;
      v40 = configurationCopy;
      v41 = recordCopy;
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
      if (![recordType isEqualToString:@"Tombstones"] || integerValue < 1 || integerValue > 3)
      {
        goto LABEL_44;
      }

      v43 = recordType;
      v25 = [v45 safari_arrayForKey:@"Tombstones"];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (!v26)
      {
LABEL_43:

        recordType = v43;
LABEL_44:

        v16 = v44;
        v18 = v45;
LABEL_45:

        goto LABEL_46;
      }

      v27 = v26;
      v41 = recordCopy;
      v42 = v11;
      v39 = modificationDate;
      v40 = configurationCopy;
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

    configurationCopy = v40;
    recordCopy = v41;
    modificationDate = v39;
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