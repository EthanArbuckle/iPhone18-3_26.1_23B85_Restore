@interface KTSelfVerificationInfo
- (BOOL)isEqual:(id)a3;
- (KTSelfVerificationInfo)initWithCoder:(id)a3;
- (KTSelfVerificationInfo)initWithSyncedLoggableDatas:(id)a3 uriToServerLoggableDatas:(id)a4;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateUri:(id)a3 serverLoggableDatas:(id)a4;
@end

@implementation KTSelfVerificationInfo

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
  [v12 encodeObject:v4 forKey:@"uriToServerLoggableDatas"];

  v5 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
  [v12 encodeObject:v5 forKey:@"syncedLoggableDatas"];

  v6 = [(KTSelfVerificationInfo *)self selfDeviceID];

  if (v6)
  {
    v7 = [(KTSelfVerificationInfo *)self selfDeviceID];
    [v12 encodeObject:v7 forKey:@"selfDeviceID"];
  }

  v8 = [(KTSelfVerificationInfo *)self failure];

  if (v8)
  {
    v9 = MEMORY[0x1E697AAC0];
    v10 = [(KTSelfVerificationInfo *)self failure];
    v11 = [v9 cleanseErrorForXPC:v10];
    [v12 encodeObject:v11 forKey:@"failure"];
  }
}

- (KTSelfVerificationInfo)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"uriToServerLoggableDatas"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"syncedLoggableDatas"];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v15 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v16 = [v14 setByAddingObjectsFromSet:v15];

  v17 = [v5 decodeObjectOfClasses:v16 forKey:@"failure"];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v19 = [v5 decodeObjectOfClasses:v18 forKey:@"selfDeviceID"];

  v20 = [[KTSelfVerificationInfo alloc] initWithSyncedLoggableDatas:v13 uriToServerLoggableDatas:v9];
  v21 = v20;
  if (v20)
  {
    [(KTSelfVerificationInfo *)v20 setFailure:v17];
    [(KTSelfVerificationInfo *)v21 setSelfDeviceID:v19];
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
    if (v7 || ([v6 uriToServerLoggableDatas], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
      v9 = [v6 uriToServerLoggableDatas];
      v10 = [v8 isEqual:v9];

      if (v7)
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

    v12 = [(KTSelfVerificationInfo *)self selfDeviceID];
    if (v12 || ([v6 selfDeviceID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(KTSelfVerificationInfo *)self selfDeviceID];
      v14 = [v6 selfDeviceID];
      v15 = [v13 isEqual:v14];

      if (v12)
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

    v16 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    if (!v16)
    {
      v3 = [v6 syncedLoggableDatas];
      if (!v3)
      {
LABEL_19:
        v20 = [(KTSelfVerificationInfo *)self failure];
        if (v20 || ([v6 failure], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = MEMORY[0x1E697AAC0];
          v22 = [(KTSelfVerificationInfo *)self failure];
          v23 = [v21 cleanseErrorForXPC:v22];
          v24 = MEMORY[0x1E697AAC0];
          v25 = [v6 failure];
          v26 = [v24 cleanseErrorForXPC:v25];
          v11 = [v23 isEqual:v26];

          if (v20)
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

    v17 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v18 = [v6 syncedLoggableDatas];
    v19 = [v17 isEqual:v18];

    if (v16)
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
  v4 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@, ", *(*(&v24 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  [v3 appendFormat:@"\n"];
  v9 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];

  if (v9)
  {
    [v3 appendFormat:@"syncedDatas: [\n"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v20 + 1) + 8 * j) shortDescription];
          [v3 appendFormat:@"%@, \n", v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v12);
    }

    [v3 appendFormat:@"]\n"];
  }

  v16 = [(KTSelfVerificationInfo *)self failure];

  if (v16)
  {
    v17 = [(KTSelfVerificationInfo *)self failure];
    [v3 appendFormat:@"error=%@\n", v17];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v4 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
    v5 = [v4 allKeys];
    [v3 setObject:v5 forKeyedSubscript:@"uris"];
  }

  v6 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [(KTSelfVerificationInfo *)self syncedLoggableDatas];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v23 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"syncedLoggableDatas"];
  }

  v17 = [(KTSelfVerificationInfo *)self selfDeviceID];
  v18 = [v17 kt_hexString];
  [v3 setObject:v18 forKeyedSubscript:@"selfDeviceID"];

  v19 = [(KTSelfVerificationInfo *)self failure];
  v20 = [TransparencyError diagnosticError:v19];
  [v3 setObject:v20 forKeyedSubscript:@"error"];

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (KTSelfVerificationInfo)initWithSyncedLoggableDatas:(id)a3 uriToServerLoggableDatas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = KTSelfVerificationInfo;
  v8 = [(KTSelfVerificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(KTSelfVerificationInfo *)v8 setSyncedLoggableDatas:v6];
    [(KTSelfVerificationInfo *)v9 setUriToServerLoggableDatas:v7];
  }

  return v9;
}

- (void)updateUri:(id)a3 serverLoggableDatas:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTSelfVerificationInfo *)self uriToServerLoggableDatas];
  v9 = [v7 ktURI];

  v10 = [v8 objectForKeyedSubscript:v9];

  [v10 updateServerLoggableDatas:v6];
}

@end