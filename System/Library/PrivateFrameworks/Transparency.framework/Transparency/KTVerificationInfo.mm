@interface KTVerificationInfo
- (BOOL)isEqual:(id)equal;
- (KTVerificationInfo)initWithAccountKey:(id)key serverLoggableDatas:(id)datas;
- (KTVerificationInfo)initWithCoder:(id)coder;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTVerificationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountKey = [(KTVerificationInfo *)self accountKey];
  [coderCopy encodeObject:accountKey forKey:@"accountKey"];

  serverLoggableDatas = [(KTVerificationInfo *)self serverLoggableDatas];
  [coderCopy encodeObject:serverLoggableDatas forKey:@"serverLoggableDatas"];

  failure = [(KTVerificationInfo *)self failure];

  if (failure)
  {
    v7 = MEMORY[0x1E697AAC0];
    failure2 = [(KTVerificationInfo *)self failure];
    v9 = [v7 cleanseErrorForXPC:failure2];
    [coderCopy encodeObject:v9 forKey:@"failure"];
  }

  idsResponseTime = [(KTVerificationInfo *)self idsResponseTime];

  if (idsResponseTime)
  {
    idsResponseTime2 = [(KTVerificationInfo *)self idsResponseTime];
    [coderCopy encodeObject:idsResponseTime2 forKey:@"idsResponseTime"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerificationInfo optedIn](self, "optedIn")}];
  [coderCopy encodeObject:v12 forKey:@"optedIn"];
}

- (KTVerificationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"serverLoggableDatas"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v12 = [v10 setByAddingObjectsFromSet:safeErrorClasses];

  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"failure"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsResponseTime"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optedIn"];

  v16 = [[KTVerificationInfo alloc] initWithAccountKey:v5 serverLoggableDatas:v9];
  v17 = v16;
  if (v16)
  {
    [(KTVerificationInfo *)v16 setFailure:v13];
    [(KTVerificationInfo *)v17 setIdsResponseTime:v14];
    -[KTVerificationInfo setOptedIn:](v17, "setOptedIn:", [v15 unsignedIntegerValue]);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      accountKey = [(KTVerificationInfo *)self accountKey];
      accountKey2 = [(KTVerificationInfo *)v5 accountKey];
      v8 = accountKey2;
      if (accountKey == accountKey2)
      {
      }

      else
      {
        accountKey3 = [(KTVerificationInfo *)self accountKey];
        accountKey4 = [(KTVerificationInfo *)v5 accountKey];
        v11 = [accountKey3 isEqual:accountKey4];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      serverLoggableDatas = [(KTVerificationInfo *)self serverLoggableDatas];
      serverLoggableDatas2 = [(KTVerificationInfo *)v5 serverLoggableDatas];
      v15 = serverLoggableDatas2;
      if (serverLoggableDatas == serverLoggableDatas2)
      {
      }

      else
      {
        serverLoggableDatas3 = [(KTVerificationInfo *)self serverLoggableDatas];
        serverLoggableDatas4 = [(KTVerificationInfo *)v5 serverLoggableDatas];
        v18 = [serverLoggableDatas3 isEqual:serverLoggableDatas4];

        if (!v18)
        {
          goto LABEL_23;
        }
      }

      failure = [(KTVerificationInfo *)self failure];
      failure2 = [(KTVerificationInfo *)v5 failure];
      v21 = failure2;
      if (failure == failure2)
      {
      }

      else
      {
        v22 = MEMORY[0x1E697AAC0];
        failure3 = [(KTVerificationInfo *)self failure];
        v24 = [v22 cleanseErrorForXPC:failure3];
        v25 = MEMORY[0x1E697AAC0];
        failure4 = [(KTVerificationInfo *)v5 failure];
        v27 = [v25 cleanseErrorForXPC:failure4];
        v28 = [v24 isEqual:v27];

        if (!v28)
        {
          goto LABEL_23;
        }
      }

      idsResponseTime = [(KTVerificationInfo *)self idsResponseTime];
      idsResponseTime2 = [(KTVerificationInfo *)v5 idsResponseTime];
      v31 = idsResponseTime2;
      if (idsResponseTime == idsResponseTime2)
      {
      }

      else
      {
        idsResponseTime3 = [(KTVerificationInfo *)self idsResponseTime];
        idsResponseTime4 = [(KTVerificationInfo *)v5 idsResponseTime];
        v34 = [idsResponseTime3 isEqual:idsResponseTime4];

        if (!v34)
        {
          goto LABEL_23;
        }
      }

      optedIn = [(KTVerificationInfo *)self optedIn];
      if (optedIn == [(KTVerificationInfo *)v5 optedIn])
      {
        v12 = 1;
LABEL_24:

        goto LABEL_25;
      }

LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

    v12 = 0;
  }

LABEL_25:

  return v12;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"KTVerificationInfo: "];
  accountKey = [(KTVerificationInfo *)self accountKey];

  if (accountKey)
  {
    accountKey2 = [(KTVerificationInfo *)self accountKey];
    kt_hexString = [accountKey2 kt_hexString];
    [v3 appendFormat:@"account key=%@\n", kt_hexString];
  }

  idsResponseTime = [(KTVerificationInfo *)self idsResponseTime];

  if (idsResponseTime)
  {
    idsResponseTime2 = [(KTVerificationInfo *)self idsResponseTime];
    idsResponseTime3 = [(KTVerificationInfo *)self idsResponseTime];
    kt_toISO_8601_UTCString = [idsResponseTime3 kt_toISO_8601_UTCString];
    [v3 appendFormat:@"ids response time=%@ (%@)\n", idsResponseTime2, kt_toISO_8601_UTCString];
  }

  serverLoggableDatas = [(KTVerificationInfo *)self serverLoggableDatas];

  if (serverLoggableDatas)
  {
    [v3 appendFormat:@"[\n"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    serverLoggableDatas2 = [(KTVerificationInfo *)self serverLoggableDatas];
    v13 = [serverLoggableDatas2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(serverLoggableDatas2);
          }

          shortDescription = [*(*(&v22 + 1) + 8 * i) shortDescription];
          [v3 appendFormat:@"%@, \n", shortDescription];
        }

        v14 = [serverLoggableDatas2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v3 appendFormat:@"]\n"];
  }

  failure = [(KTVerificationInfo *)self failure];

  if (failure)
  {
    failure2 = [(KTVerificationInfo *)self failure];
    [v3 appendFormat:@"error=%@\n", failure2];
  }

  [v3 appendFormat:@"opted in=%lu\n", -[KTVerificationInfo optedIn](self, "optedIn")];
  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accountKey = [(KTVerificationInfo *)self accountKey];
  kt_hexString = [accountKey kt_hexString];
  [dictionary setObject:kt_hexString forKeyedSubscript:@"accountKey"];

  serverLoggableDatas = [(KTVerificationInfo *)self serverLoggableDatas];
  v7 = [serverLoggableDatas count];

  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    serverLoggableDatas2 = [(KTVerificationInfo *)self serverLoggableDatas];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(serverLoggableDatas2, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    serverLoggableDatas3 = [(KTVerificationInfo *)self serverLoggableDatas];
    v12 = [serverLoggableDatas3 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(serverLoggableDatas3);
          }

          diagnosticsJsonDictionary = [*(*(&v27 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v10 addObject:diagnosticsJsonDictionary];
        }

        v13 = [serverLoggableDatas3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKeyedSubscript:@"serverLoggableDatas"];
  }

  failure = [(KTVerificationInfo *)self failure];
  v18 = [TransparencyError diagnosticError:failure];
  [dictionary setObject:v18 forKeyedSubscript:@"error"];

  idsResponseTime = [(KTVerificationInfo *)self idsResponseTime];

  if (idsResponseTime)
  {
    idsResponseTime2 = [(KTVerificationInfo *)self idsResponseTime];
    kt_dateToString = [idsResponseTime2 kt_dateToString];
    [dictionary setObject:kt_dateToString forKeyedSubscript:@"idsResponseTime"];

    idsResponseTime3 = [(KTVerificationInfo *)self idsResponseTime];
    kt_toISO_8601_UTCString = [idsResponseTime3 kt_toISO_8601_UTCString];
    [dictionary setObject:kt_toISO_8601_UTCString forKeyedSubscript:@"idsResponseTimeReadable"];
  }

  v24 = KTOptInGetString([(KTVerificationInfo *)self optedIn]);
  [dictionary setObject:v24 forKeyedSubscript:@"optedIn"];

  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (KTVerificationInfo)initWithAccountKey:(id)key serverLoggableDatas:(id)datas
{
  keyCopy = key;
  datasCopy = datas;
  v11.receiver = self;
  v11.super_class = KTVerificationInfo;
  v8 = [(KTVerificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(KTVerificationInfo *)v8 setAccountKey:keyCopy];
    [(KTVerificationInfo *)v9 setServerLoggableDatas:datasCopy];
    [(KTVerificationInfo *)v9 setOptedIn:2];
  }

  return v9;
}

@end