@interface KTSelfValidationDiagnostics
+ (id)jsonClasses;
- (BOOL)isEqual:(id)equal;
- (KTSelfValidationDiagnostics)initWithCoder:(id)coder;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rawAccountKey = [(KTSelfValidationDiagnostics *)self rawAccountKey];

  if (rawAccountKey)
  {
    rawAccountKey2 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
    [coderCopy encodeObject:rawAccountKey2 forKey:@"rawAccountKey"];
  }

  accountKey = [(KTSelfValidationDiagnostics *)self accountKey];

  if (accountKey)
  {
    accountKey2 = [(KTSelfValidationDiagnostics *)self accountKey];
    [coderCopy encodeObject:accountKey2 forKey:@"accountKey"];
  }

  ktSelfVerificationInfoDiagnosticsJson = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];
  [coderCopy encodeObject:ktSelfVerificationInfoDiagnosticsJson forKey:@"KTSelfVerificationInfo"];

  uriToDiagnostics = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
  [coderCopy encodeObject:uriToDiagnostics forKey:@"uriData"];

  pushToken = [(KTSelfValidationDiagnostics *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"pushToken"];
}

- (KTSelfValidationDiagnostics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawAccountKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v7 = +[KTSelfValidationDiagnostics jsonClasses];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"KTSelfVerificationInfo"];

  v9 = MEMORY[0x1E695DFA8];
  v10 = +[KTSelfValidationDiagnostics jsonClasses];
  v11 = [v9 setWithSet:v10];

  [v11 addObject:objc_opt_class()];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"uriData"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];

  selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      rawAccountKey = [(KTSelfValidationDiagnostics *)self rawAccountKey];
      if (rawAccountKey)
      {
        rawAccountKey2 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
        rawAccountKey3 = [(KTSelfValidationDiagnostics *)v7 rawAccountKey];
        if (![rawAccountKey2 isEqual:rawAccountKey3])
        {
          goto LABEL_13;
        }
      }

      rawAccountKey4 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
      if (rawAccountKey4)
      {

        if (rawAccountKey)
        {
        }
      }

      else
      {
        rawAccountKey5 = [(KTSelfValidationDiagnostics *)v7 rawAccountKey];

        if (rawAccountKey)
        {

          if (rawAccountKey5)
          {
            goto LABEL_32;
          }
        }

        else if (rawAccountKey5)
        {
          goto LABEL_32;
        }
      }

      rawAccountKey = [(KTSelfValidationDiagnostics *)self accountKey];
      if (rawAccountKey)
      {
        rawAccountKey2 = [(KTSelfValidationDiagnostics *)self accountKey];
        rawAccountKey3 = [(KTSelfValidationDiagnostics *)v7 accountKey];
        if (![rawAccountKey2 isEqual:rawAccountKey3])
        {
LABEL_13:

          v9 = 0;
          goto LABEL_14;
        }
      }

      accountKey = [(KTSelfValidationDiagnostics *)self accountKey];
      if (accountKey)
      {

        if (rawAccountKey)
        {
        }
      }

      else
      {
        accountKey2 = [(KTSelfValidationDiagnostics *)v7 accountKey];

        if (rawAccountKey)
        {
        }

        if (accountKey2)
        {
          goto LABEL_32;
        }
      }

      ktSelfVerificationInfoDiagnosticsJson = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];
      ktSelfVerificationInfoDiagnosticsJson2 = [(KTSelfValidationDiagnostics *)v7 ktSelfVerificationInfoDiagnosticsJson];
      v16 = [ktSelfVerificationInfoDiagnosticsJson isEqual:ktSelfVerificationInfoDiagnosticsJson2];

      if (v16)
      {
        uriToDiagnostics = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
        rawAccountKey2 = [(KTSelfValidationDiagnostics *)v7 uriToDiagnostics];
        v18 = [uriToDiagnostics isEqual:rawAccountKey2];

        if (v18)
        {
          rawAccountKey = [(KTSelfValidationDiagnostics *)self pushToken];
          if (rawAccountKey || ([(KTSelfValidationDiagnostics *)v7 pushToken], (rawAccountKey2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            pushToken = [(KTSelfValidationDiagnostics *)self pushToken];
            pushToken2 = [(KTSelfValidationDiagnostics *)v7 pushToken];
            v9 = [pushToken isEqual:pushToken2];

            if (rawAccountKey)
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
  uriToDiagnostics = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
  v26 = [v3 dictionaryWithCapacity:{objc_msgSend(uriToDiagnostics, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  uriToDiagnostics2 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
  v6 = [uriToDiagnostics2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(uriToDiagnostics2);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [TransparencyAnalytics privacyURI:v10];
        uriToDiagnostics3 = [(KTSelfValidationDiagnostics *)self uriToDiagnostics];
        v13 = [uriToDiagnostics3 objectForKeyedSubscript:v10];
        diagnosticsJsonDictionary = [v13 diagnosticsJsonDictionary];
        [v26 setObject:diagnosticsJsonDictionary forKeyedSubscript:v11];
      }

      v7 = [uriToDiagnostics2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accountKey = [(KTSelfValidationDiagnostics *)self accountKey];

  if (accountKey)
  {
    accountKey2 = [(KTSelfValidationDiagnostics *)self accountKey];
    [dictionary setObject:accountKey2 forKeyedSubscript:@"accountKey"];
  }

  rawAccountKey = [(KTSelfValidationDiagnostics *)self rawAccountKey];

  if (rawAccountKey)
  {
    rawAccountKey2 = [(KTSelfValidationDiagnostics *)self rawAccountKey];
    [dictionary setObject:rawAccountKey2 forKeyedSubscript:@"rawAccountKey"];
  }

  ktSelfVerificationInfoDiagnosticsJson = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];

  if (ktSelfVerificationInfoDiagnosticsJson)
  {
    ktSelfVerificationInfoDiagnosticsJson2 = [(KTSelfValidationDiagnostics *)self ktSelfVerificationInfoDiagnosticsJson];
    [dictionary setObject:ktSelfVerificationInfoDiagnosticsJson2 forKeyedSubscript:@"KTSelfVerificationInfo"];
  }

  pushToken = [(KTSelfValidationDiagnostics *)self pushToken];
  [dictionary setObject:pushToken forKeyedSubscript:@"pushToken"];

  [dictionary setObject:v26 forKeyedSubscript:@"uriData"];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionary])
  {
    v23 = dictionary;
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
  diagnosticsJsonDictionary = [(KTSelfValidationDiagnostics *)self diagnosticsJsonDictionary];
  v3 = [diagnosticsJsonDictionary description];

  return v3;
}

@end