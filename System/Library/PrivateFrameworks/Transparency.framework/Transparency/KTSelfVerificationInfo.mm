@interface KTSelfVerificationInfo
- (BOOL)isEqual:(id)equal;
- (KTSelfVerificationInfo)initWithCoder:(id)coder;
- (KTSelfVerificationInfo)initWithSyncedLoggableDatas:(id)datas uriToServerLoggableDatas:(id)loggableDatas;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateUri:(id)uri serverLoggableDatas:(id)datas;
@end

@implementation KTSelfVerificationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uriToServerLoggableDatas = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
  [coderCopy encodeObject:uriToServerLoggableDatas forKey:@"uriToServerLoggableDatas"];

  syncedLoggableDatas = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
  [coderCopy encodeObject:syncedLoggableDatas forKey:@"syncedLoggableDatas"];

  selfDeviceID = [(KTSelfVerificationInfo *)self selfDeviceID];

  if (selfDeviceID)
  {
    selfDeviceID2 = [(KTSelfVerificationInfo *)self selfDeviceID];
    [coderCopy encodeObject:selfDeviceID2 forKey:@"selfDeviceID"];
  }

  failure = [(KTSelfVerificationInfo *)self failure];

  if (failure)
  {
    v9 = MEMORY[0x1E697AAC0];
    failure2 = [(KTSelfVerificationInfo *)self failure];
    v11 = [v9 cleanseErrorForXPC:failure2];
    [coderCopy encodeObject:v11 forKey:@"failure"];
  }
}

- (KTSelfVerificationInfo)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"uriToServerLoggableDatas"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"syncedLoggableDatas"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v16 = [v14 setByAddingObjectsFromSet:safeErrorClasses];

  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"failure"];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"selfDeviceID"];

  v20 = [[KTSelfVerificationInfo alloc] initWithSyncedLoggableDatas:v13 uriToServerLoggableDatas:v9];
  v21 = v20;
  if (v20)
  {
    [(KTSelfVerificationInfo *)v20 setFailure:v17];
    [(KTSelfVerificationInfo *)v21 setSelfDeviceID:v19];
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    uriToServerLoggableDatas = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
    if (uriToServerLoggableDatas || ([v6 uriToServerLoggableDatas], (syncedLoggableDatas2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      uriToServerLoggableDatas2 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
      uriToServerLoggableDatas3 = [v6 uriToServerLoggableDatas];
      v10 = [uriToServerLoggableDatas2 isEqual:uriToServerLoggableDatas3];

      if (uriToServerLoggableDatas)
      {

        if (!v10)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if ((v10 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    selfDeviceID = [(KTSelfVerificationInfo *)self selfDeviceID];
    if (selfDeviceID || ([v6 selfDeviceID], (syncedLoggableDatas2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      selfDeviceID2 = [(KTSelfVerificationInfo *)self selfDeviceID];
      selfDeviceID3 = [v6 selfDeviceID];
      v15 = [selfDeviceID2 isEqual:selfDeviceID3];

      if (selfDeviceID)
      {

        if (!v15)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if ((v15 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    syncedLoggableDatas = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    if (!syncedLoggableDatas)
    {
      syncedLoggableDatas2 = [v6 syncedLoggableDatas];
      if (!syncedLoggableDatas2)
      {
LABEL_19:
        failure = [(KTSelfVerificationInfo *)self failure];
        if (failure || ([v6 failure], (syncedLoggableDatas2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = MEMORY[0x1E697AAC0];
          failure2 = [(KTSelfVerificationInfo *)self failure];
          v23 = [v21 cleanseErrorForXPC:failure2];
          v24 = MEMORY[0x1E697AAC0];
          failure3 = [v6 failure];
          v26 = [v24 cleanseErrorForXPC:failure3];
          v11 = [v23 isEqual:v26];

          if (failure)
          {
LABEL_29:

            goto LABEL_25;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_29;
      }
    }

    syncedLoggableDatas3 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    syncedLoggableDatas4 = [v6 syncedLoggableDatas];
    v19 = [syncedLoggableDatas3 isEqual:syncedLoggableDatas4];

    if (syncedLoggableDatas)
    {

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    v11 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v11 = 0;
LABEL_26:

  return v11;
}

- (id)description
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"KTSelfVerificationInfo: "];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  uriToServerLoggableDatas = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
  v5 = [uriToServerLoggableDatas countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(uriToServerLoggableDatas);
        }

        [v3 appendFormat:@"%@, ", *(*(&v24 + 1) + 8 * i)];
      }

      v6 = [uriToServerLoggableDatas countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"\n"];
  syncedLoggableDatas = [(KTSelfVerificationInfo *)self syncedLoggableDatas];

  if (syncedLoggableDatas)
  {
    [v3 appendFormat:@"syncedDatas: [\n"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    syncedLoggableDatas2 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v11 = [syncedLoggableDatas2 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(syncedLoggableDatas2);
          }

          shortDescription = [*(*(&v20 + 1) + 8 * j) shortDescription];
          [v3 appendFormat:@"%@, \n", shortDescription];
        }

        v12 = [syncedLoggableDatas2 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }

    [v3 appendFormat:@"]\n"];
  }

  failure = [(KTSelfVerificationInfo *)self failure];

  if (failure)
  {
    failure2 = [(KTSelfVerificationInfo *)self failure];
    [v3 appendFormat:@"error=%@\n", failure2];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    uriToServerLoggableDatas = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
    allKeys = [uriToServerLoggableDatas allKeys];
    [dictionary setObject:allKeys forKeyedSubscript:@"uris"];
  }

  syncedLoggableDatas = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
  v7 = [syncedLoggableDatas count];

  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    syncedLoggableDatas2 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(syncedLoggableDatas2, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    syncedLoggableDatas3 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v12 = [syncedLoggableDatas3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(syncedLoggableDatas3);
          }

          diagnosticsJsonDictionary = [*(*(&v23 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v10 addObject:diagnosticsJsonDictionary];
        }

        v13 = [syncedLoggableDatas3 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKeyedSubscript:@"syncedLoggableDatas"];
  }

  selfDeviceID = [(KTSelfVerificationInfo *)self selfDeviceID];
  kt_hexString = [selfDeviceID kt_hexString];
  [dictionary setObject:kt_hexString forKeyedSubscript:@"selfDeviceID"];

  failure = [(KTSelfVerificationInfo *)self failure];
  v20 = [TransparencyError diagnosticError:failure];
  [dictionary setObject:v20 forKeyedSubscript:@"error"];

  v21 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (KTSelfVerificationInfo)initWithSyncedLoggableDatas:(id)datas uriToServerLoggableDatas:(id)loggableDatas
{
  datasCopy = datas;
  loggableDatasCopy = loggableDatas;
  v11.receiver = self;
  v11.super_class = KTSelfVerificationInfo;
  v8 = [(KTSelfVerificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(KTSelfVerificationInfo *)v8 setSyncedLoggableDatas:datasCopy];
    [(KTSelfVerificationInfo *)v9 setUriToServerLoggableDatas:loggableDatasCopy];
  }

  return v9;
}

- (void)updateUri:(id)uri serverLoggableDatas:(id)datas
{
  datasCopy = datas;
  uriCopy = uri;
  uriToServerLoggableDatas = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
  ktURI = [uriCopy ktURI];

  v10 = [uriToServerLoggableDatas objectForKeyedSubscript:ktURI];

  [v10 updateServerLoggableDatas:datasCopy];
}

@end