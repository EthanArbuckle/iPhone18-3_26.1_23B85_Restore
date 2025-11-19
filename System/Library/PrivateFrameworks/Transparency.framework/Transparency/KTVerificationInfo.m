@interface KTVerificationInfo
- (BOOL)isEqual:(id)a3;
- (KTVerificationInfo)initWithAccountKey:(id)a3 serverLoggableDatas:(id)a4;
- (KTVerificationInfo)initWithCoder:(id)a3;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTVerificationInfo

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(KTVerificationInfo *)self accountKey];
  [v13 encodeObject:v4 forKey:@"accountKey"];

  v5 = [(KTVerificationInfo *)self serverLoggableDatas];
  [v13 encodeObject:v5 forKey:@"serverLoggableDatas"];

  v6 = [(KTVerificationInfo *)self failure];

  if (v6)
  {
    v7 = MEMORY[0x1E697AAC0];
    v8 = [(KTVerificationInfo *)self failure];
    v9 = [v7 cleanseErrorForXPC:v8];
    [v13 encodeObject:v9 forKey:@"failure"];
  }

  v10 = [(KTVerificationInfo *)self idsResponseTime];

  if (v10)
  {
    v11 = [(KTVerificationInfo *)self idsResponseTime];
    [v13 encodeObject:v11 forKey:@"idsResponseTime"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerificationInfo optedIn](self, "optedIn")}];
  [v13 encodeObject:v12 forKey:@"optedIn"];
}

- (KTVerificationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"serverLoggableDatas"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v12 = [v10 setByAddingObjectsFromSet:v11];

  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"failure"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsResponseTime"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optedIn"];

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
      v6 = [(KTVerificationInfo *)self accountKey];
      v7 = [(KTVerificationInfo *)v5 accountKey];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(KTVerificationInfo *)self accountKey];
        v10 = [(KTVerificationInfo *)v5 accountKey];
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v13 = [(KTVerificationInfo *)self serverLoggableDatas];
      v14 = [(KTVerificationInfo *)v5 serverLoggableDatas];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(KTVerificationInfo *)self serverLoggableDatas];
        v17 = [(KTVerificationInfo *)v5 serverLoggableDatas];
        v18 = [v16 isEqual:v17];

        if (!v18)
        {
          goto LABEL_23;
        }
      }

      v19 = [(KTVerificationInfo *)self failure];
      v20 = [(KTVerificationInfo *)v5 failure];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = MEMORY[0x1E697AAC0];
        v23 = [(KTVerificationInfo *)self failure];
        v24 = [v22 cleanseErrorForXPC:v23];
        v25 = MEMORY[0x1E697AAC0];
        v26 = [(KTVerificationInfo *)v5 failure];
        v27 = [v25 cleanseErrorForXPC:v26];
        v28 = [v24 isEqual:v27];

        if (!v28)
        {
          goto LABEL_23;
        }
      }

      v29 = [(KTVerificationInfo *)self idsResponseTime];
      v30 = [(KTVerificationInfo *)v5 idsResponseTime];
      v31 = v30;
      if (v29 == v30)
      {
      }

      else
      {
        v32 = [(KTVerificationInfo *)self idsResponseTime];
        v33 = [(KTVerificationInfo *)v5 idsResponseTime];
        v34 = [v32 isEqual:v33];

        if (!v34)
        {
          goto LABEL_23;
        }
      }

      v35 = [(KTVerificationInfo *)self optedIn];
      if (v35 == [(KTVerificationInfo *)v5 optedIn])
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
  v4 = [(KTVerificationInfo *)self accountKey];

  if (v4)
  {
    v5 = [(KTVerificationInfo *)self accountKey];
    v6 = [v5 kt_hexString];
    [v3 appendFormat:@"account key=%@\n", v6];
  }

  v7 = [(KTVerificationInfo *)self idsResponseTime];

  if (v7)
  {
    v8 = [(KTVerificationInfo *)self idsResponseTime];
    v9 = [(KTVerificationInfo *)self idsResponseTime];
    v10 = [v9 kt_toISO_8601_UTCString];
    [v3 appendFormat:@"ids response time=%@ (%@)\n", v8, v10];
  }

  v11 = [(KTVerificationInfo *)self serverLoggableDatas];

  if (v11)
  {
    [v3 appendFormat:@"[\n"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(KTVerificationInfo *)self serverLoggableDatas];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * i) shortDescription];
          [v3 appendFormat:@"%@, \n", v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v3 appendFormat:@"]\n"];
  }

  v18 = [(KTVerificationInfo *)self failure];

  if (v18)
  {
    v19 = [(KTVerificationInfo *)self failure];
    [v3 appendFormat:@"error=%@\n", v19];
  }

  [v3 appendFormat:@"opted in=%lu\n", -[KTVerificationInfo optedIn](self, "optedIn")];
  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTVerificationInfo *)self accountKey];
  v5 = [v4 kt_hexString];
  [v3 setObject:v5 forKeyedSubscript:@"accountKey"];

  v6 = [(KTVerificationInfo *)self serverLoggableDatas];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = [(KTVerificationInfo *)self serverLoggableDatas];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [(KTVerificationInfo *)self serverLoggableDatas];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v27 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"serverLoggableDatas"];
  }

  v17 = [(KTVerificationInfo *)self failure];
  v18 = [TransparencyError diagnosticError:v17];
  [v3 setObject:v18 forKeyedSubscript:@"error"];

  v19 = [(KTVerificationInfo *)self idsResponseTime];

  if (v19)
  {
    v20 = [(KTVerificationInfo *)self idsResponseTime];
    v21 = [v20 kt_dateToString];
    [v3 setObject:v21 forKeyedSubscript:@"idsResponseTime"];

    v22 = [(KTVerificationInfo *)self idsResponseTime];
    v23 = [v22 kt_toISO_8601_UTCString];
    [v3 setObject:v23 forKeyedSubscript:@"idsResponseTimeReadable"];
  }

  v24 = KTOptInGetString([(KTVerificationInfo *)self optedIn]);
  [v3 setObject:v24 forKeyedSubscript:@"optedIn"];

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (KTVerificationInfo)initWithAccountKey:(id)a3 serverLoggableDatas:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = KTVerificationInfo;
  v8 = [(KTVerificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(KTVerificationInfo *)v8 setAccountKey:v6];
    [(KTVerificationInfo *)v9 setServerLoggableDatas:v7];
    [(KTVerificationInfo *)v9 setOptedIn:2];
  }

  return v9;
}

@end