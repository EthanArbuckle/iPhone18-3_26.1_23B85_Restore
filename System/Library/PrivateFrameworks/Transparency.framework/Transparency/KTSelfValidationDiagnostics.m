@interface KTSelfValidationDiagnostics
+ (id)jsonClasses;
- (BOOL)isEqual:(id)a3;
- (KTSelfValidationDiagnostics)initWithCoder:(id)a3;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTSelfValidationDiagnostics

+ (id)jsonClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(KTSelfValidationDiagnostics *)self rawAccountKey];

  if (v4)
  {
    v5 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
    [v11 encodeObject:v5 forKey:@"rawAccountKey"];
  }

  v6 = [(KTSelfValidationDiagnostics *)self accountKey];

  if (v6)
  {
    v7 = [(KTSelfValidationDiagnostics *)self accountKey];
    [v11 encodeObject:v7 forKey:@"accountKey"];
  }

  v8 = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];
  [v11 encodeObject:v8 forKey:@"KTSelfVerificationInfo"];

  v9 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
  [v11 encodeObject:v9 forKey:@"uriData"];

  v10 = [(KTSelfValidationDiagnostics *)self pushToken];
  [v11 encodeObject:v10 forKey:@"pushToken"];
}

- (KTSelfValidationDiagnostics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawAccountKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v7 = +[KTSelfValidationDiagnostics jsonClasses];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"KTSelfVerificationInfo"];

  v9 = MEMORY[0x1E695DFA8];
  v10 = +[KTSelfValidationDiagnostics jsonClasses];
  v11 = [v9 setWithSet:v10];

  [v11 addObject:objc_opt_class()];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"uriData"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];

  v14 = 0;
  if (v12 && v8)
  {
    if (v5)
    {
      [(KTSelfValidationDiagnostics *)self setRawAccountKey:v5];
    }

    if (v6)
    {
      [(KTSelfValidationDiagnostics *)self setAccountKey:v6];
    }

    [(KTSelfValidationDiagnostics *)self setUriToDiagnostics:v12];
    [(KTSelfValidationDiagnostics *)self setKtSelfVerificationInfoDiagnosticsJson:v8];
    [(KTSelfValidationDiagnostics *)self setPushToken:v13];
    v14 = self;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
      if (v8)
      {
        v3 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
        v4 = [(KTSelfValidationDiagnostics *)v7 rawAccountKey];
        if (![v3 isEqual:v4])
        {
          goto LABEL_13;
        }
      }

      v10 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
      if (v10)
      {

        if (v8)
        {
        }
      }

      else
      {
        v11 = [(KTSelfValidationDiagnostics *)v7 rawAccountKey];

        if (v8)
        {

          if (v11)
          {
            goto LABEL_32;
          }
        }

        else if (v11)
        {
          goto LABEL_32;
        }
      }

      v8 = [(KTSelfValidationDiagnostics *)self accountKey];
      if (v8)
      {
        v3 = [(KTSelfValidationDiagnostics *)self accountKey];
        v4 = [(KTSelfValidationDiagnostics *)v7 accountKey];
        if (![v3 isEqual:v4])
        {
LABEL_13:

          v9 = 0;
          goto LABEL_14;
        }
      }

      v12 = [(KTSelfValidationDiagnostics *)self accountKey];
      if (v12)
      {

        if (v8)
        {
        }
      }

      else
      {
        v13 = [(KTSelfValidationDiagnostics *)v7 accountKey];

        if (v8)
        {
        }

        if (v13)
        {
          goto LABEL_32;
        }
      }

      v14 = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];
      v15 = [(KTSelfValidationDiagnostics *)v7 ktSelfVerificationInfoDiagnosticsJson];
      v16 = [v14 isEqual:v15];

      if (v16)
      {
        v17 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
        v3 = [(KTSelfValidationDiagnostics *)v7 uriToDiagnostics];
        v18 = [v17 isEqual:v3];

        if (v18)
        {
          v8 = [(KTSelfValidationDiagnostics *)self pushToken];
          if (v8 || ([(KTSelfValidationDiagnostics *)v7 pushToken], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v19 = [(KTSelfValidationDiagnostics *)self pushToken];
            v20 = [(KTSelfValidationDiagnostics *)v7 pushToken];
            v9 = [v19 isEqual:v20];

            if (v8)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v9 = 1;
          }

LABEL_14:

LABEL_15:
LABEL_33:

          goto LABEL_34;
        }
      }

LABEL_32:
      v9 = 0;
      goto LABEL_33;
    }

    v9 = 0;
  }

LABEL_34:

  return v9;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
  v26 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [TransparencyAnalytics privacyURI:v10];
        v12 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
        v13 = [v12 objectForKeyedSubscript:v10];
        v14 = [v13 diagnosticsJsonDictionary];
        [v26 setObject:v14 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [(KTSelfValidationDiagnostics *)self accountKey];

  if (v16)
  {
    v17 = [(KTSelfValidationDiagnostics *)self accountKey];
    [v15 setObject:v17 forKeyedSubscript:@"accountKey"];
  }

  v18 = [(KTSelfValidationDiagnostics *)self rawAccountKey];

  if (v18)
  {
    v19 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
    [v15 setObject:v19 forKeyedSubscript:@"rawAccountKey"];
  }

  v20 = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];

  if (v20)
  {
    v21 = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];
    [v15 setObject:v21 forKeyedSubscript:@"KTSelfVerificationInfo"];
  }

  v22 = [(KTSelfValidationDiagnostics *)self pushToken];
  [v15 setObject:v22 forKeyedSubscript:@"pushToken"];

  [v15 setObject:v26 forKeyedSubscript:@"uriData"];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v15])
  {
    v23 = v15;
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)description
{
  v2 = [(KTSelfValidationDiagnostics *)self diagnosticsJsonDictionary];
  v3 = [v2 description];

  return v3;
}

@end