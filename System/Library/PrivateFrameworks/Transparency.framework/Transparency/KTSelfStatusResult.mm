@interface KTSelfStatusResult
- (BOOL)isEqual:(id)equal;
- (KTSelfStatusResult)init;
- (KTSelfStatusResult)initWithCoder:(id)coder;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (id)simpleStatus;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTSelfStatusResult

- (KTSelfStatusResult)init
{
  v5.receiver = self;
  v5.super_class = KTSelfStatusResult;
  v2 = [(KTSelfStatusResult *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(KTSelfStatusResult *)v2 setOptIn:2];
    [(KTSelfStatusResult *)v3 setEverOptIn:0];
    [(KTSelfStatusResult *)v3 setServerOptIn:2];
    [(KTSelfStatusResult *)v3 setAccountStatus:0];
    [(KTSelfStatusResult *)v3 setSystemStatus:2];
    [(KTSelfStatusResult *)v3 setSelfStatus:2];
    [(KTSelfStatusResult *)v3 setPendingStatusChanges:1];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTSelfStatusResult optIn](self, "optIn")}];
  [coderCopy encodeObject:v4 forKey:@"optInState"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTSelfStatusResult everOptIn](self, "everOptIn")}];
  [coderCopy encodeObject:v5 forKey:@"everOptInState"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTSelfStatusResult serverOptIn](self, "serverOptIn")}];
  [coderCopy encodeObject:v6 forKey:@"serverOptInState"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTSelfStatusResult accountStatus](self, "accountStatus")}];
  [coderCopy encodeObject:v7 forKey:@"accountStatus"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTSelfStatusResult systemStatus](self, "systemStatus")}];
  [coderCopy encodeObject:v8 forKey:@"systemStatus"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTSelfStatusResult selfStatus](self, "selfStatus")}];
  [coderCopy encodeObject:v9 forKey:@"selfStatus"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTSelfStatusResult idsAccountStatus](self, "idsAccountStatus")}];
  [coderCopy encodeObject:v10 forKey:@"idsAccountStatus"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTSelfStatusResult pendingStatusChanges](self, "pendingStatusChanges")}];
  [coderCopy encodeObject:v11 forKey:@"pendingChanges"];

  selfDevices = [(KTSelfStatusResult *)self selfDevices];

  if (selfDevices)
  {
    selfDevices2 = [(KTSelfStatusResult *)self selfDevices];
    [coderCopy encodeObject:selfDevices2 forKey:@"selfDevices"];
  }

  accountKey = [(KTSelfStatusResult *)self accountKey];

  if (accountKey)
  {
    accountKey2 = [(KTSelfStatusResult *)self accountKey];
    [coderCopy encodeObject:accountKey2 forKey:@"accountKey"];
  }
}

- (KTSelfStatusResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optInState"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"everOptInState"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverOptInState"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountStatus"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemStatus"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selfStatus"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsAccountStatus"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingChanges"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"selfDevices"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];

  v14 = objc_alloc_init(KTSelfStatusResult);
  -[KTSelfStatusResult setOptIn:](v14, "setOptIn:", [v16 kt_enumValueWithMax:2 defaultValue:2]);
  -[KTSelfStatusResult setEverOptIn:](v14, "setEverOptIn:", [v4 BOOLValue]);
  -[KTSelfStatusResult setServerOptIn:](v14, "setServerOptIn:", [v5 kt_enumValueWithMax:2 defaultValue:2]);
  -[KTSelfStatusResult setAccountStatus:](v14, "setAccountStatus:", [v6 kt_enumValueWithMax:5 defaultValue:0]);
  -[KTSelfStatusResult setSystemStatus:](v14, "setSystemStatus:", [v7 kt_enumValueWithMax:5 defaultValue:2]);
  -[KTSelfStatusResult setSelfStatus:](v14, "setSelfStatus:", [v8 kt_enumValueWithMax:4 defaultValue:2]);
  -[KTSelfStatusResult setIdsAccountStatus:](v14, "setIdsAccountStatus:", [v17 kt_enumValueWithMax:3 defaultValue:0]);
  [(KTSelfStatusResult *)v14 setSelfDevices:v12];
  [(KTSelfStatusResult *)v14 setAccountKey:v13];
  -[KTSelfStatusResult setPendingStatusChanges:](v14, "setPendingStatusChanges:", [v18 BOOLValue]);

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      optIn = [(KTSelfStatusResult *)self optIn];
      if (optIn != [(KTSelfStatusResult *)v5 optIn])
      {
        goto LABEL_13;
      }

      everOptIn = [(KTSelfStatusResult *)self everOptIn];
      if (everOptIn != [(KTSelfStatusResult *)v5 everOptIn])
      {
        goto LABEL_13;
      }

      accountStatus = [(KTSelfStatusResult *)self accountStatus];
      if (accountStatus != [(KTSelfStatusResult *)v5 accountStatus])
      {
        goto LABEL_13;
      }

      systemStatus = [(KTSelfStatusResult *)self systemStatus];
      if (systemStatus != [(KTSelfStatusResult *)v5 systemStatus])
      {
        goto LABEL_13;
      }

      selfStatus = [(KTSelfStatusResult *)self selfStatus];
      if (selfStatus != [(KTSelfStatusResult *)v5 selfStatus])
      {
        goto LABEL_13;
      }

      idsAccountStatus = [(KTSelfStatusResult *)self idsAccountStatus];
      if (idsAccountStatus != [(KTSelfStatusResult *)v5 idsAccountStatus])
      {
        goto LABEL_13;
      }

      selfDevices = [(KTSelfStatusResult *)self selfDevices];
      selfDevices2 = [(KTSelfStatusResult *)v5 selfDevices];
      v14 = [selfDevices isEqual:selfDevices2];

      if (v14)
      {
        pendingStatusChanges = [(KTSelfStatusResult *)self pendingStatusChanges];
        v16 = pendingStatusChanges ^ [(KTSelfStatusResult *)v5 pendingStatusChanges]^ 1;
      }

      else
      {
LABEL_13:
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = KTOptInGetString([(KTSelfStatusResult *)self optIn]);
  everOptIn = [(KTSelfStatusResult *)self everOptIn];
  v6 = KTOptInGetString([(KTSelfStatusResult *)self serverOptIn]);
  v7 = KTAccountStatusGetString([(KTSelfStatusResult *)self accountStatus]);
  v8 = [(KTSelfStatusResult *)self systemStatus]- 1;
  if (v8 > 4)
  {
    v9 = @"OK";
  }

  else
  {
    v9 = off_1E87017D8[v8];
  }

  v10 = [(KTSelfStatusResult *)self selfStatus]- 1;
  if (v10 > 3)
  {
    v11 = @"OK";
  }

  else
  {
    v11 = off_1E8701800[v10];
  }

  v12 = [(KTSelfStatusResult *)self idsAccountStatus]- 1;
  if (v12 > 2)
  {
    v13 = @"IDSAccountStatusInvalid";
  }

  else
  {
    v13 = off_1E8701820[v12];
  }

  pendingStatusChanges = [(KTSelfStatusResult *)self pendingStatusChanges];
  v15 = @"NO";
  if (pendingStatusChanges)
  {
    v15 = @"YES";
  }

  v16 = [v3 stringWithFormat:@"KTStatus: optIn = %@, everOptIn = %d, serverOptIn = %@, accountStatus = %@, systemStatus = %@, selfStatus = %@, idsAccountStatus = %@, pendingChanges: %@\n", v4, everOptIn, v6, v7, v9, v11, v13, v15];

  selfDevices = [(KTSelfStatusResult *)self selfDevices];
  [v16 appendFormat:@"\tdevices:%@\n", selfDevices];

  return v16;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"2" forKeyedSubscript:@"copy_status_version"];
  v4 = KTOptInGetString([(KTSelfStatusResult *)self optIn]);
  [dictionary setObject:v4 forKeyedSubscript:@"optedIn"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTSelfStatusResult everOptIn](self, "everOptIn")}];
  [dictionary setObject:v5 forKeyedSubscript:@"everOptIn"];

  v6 = KTOptInGetString([(KTSelfStatusResult *)self serverOptIn]);
  [dictionary setObject:v6 forKeyedSubscript:@"serverOptedIn"];

  v7 = KTAccountStatusGetString([(KTSelfStatusResult *)self accountStatus]);
  [dictionary setObject:v7 forKeyedSubscript:@"accountStatus"];

  v8 = [(KTSelfStatusResult *)self systemStatus]- 1;
  if (v8 > 4)
  {
    v9 = @"OK";
  }

  else
  {
    v9 = off_1E87017D8[v8];
  }

  [dictionary setObject:v9 forKeyedSubscript:@"systemStatus"];
  v10 = [(KTSelfStatusResult *)self selfStatus]- 1;
  if (v10 > 3)
  {
    v11 = @"OK";
  }

  else
  {
    v11 = off_1E8701800[v10];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"selfStatus"];
  v12 = [(KTSelfStatusResult *)self idsAccountStatus]- 1;
  if (v12 > 2)
  {
    v13 = @"IDSAccountStatusInvalid";
  }

  else
  {
    v13 = off_1E8701820[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"idsAccountStatus"];
  selfDevices = [(KTSelfStatusResult *)self selfDevices];
  v15 = [selfDevices count];

  if (v15)
  {
    v16 = MEMORY[0x1E695DF70];
    selfDevices2 = [(KTSelfStatusResult *)self selfDevices];
    v18 = [v16 arrayWithCapacity:{objc_msgSend(selfDevices2, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    selfDevices3 = [(KTSelfStatusResult *)self selfDevices];
    v20 = [selfDevices3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(selfDevices3);
          }

          diagnosticsJsonDictionary = [*(*(&v29 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v18 addObject:diagnosticsJsonDictionary];
        }

        v21 = [selfDevices3 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }

    [dictionary setObject:v18 forKeyedSubscript:@"loggableDevices"];
  }

  accountKey = [(KTSelfStatusResult *)self accountKey];
  [dictionary setObject:accountKey forKeyedSubscript:@"accountKey"];

  if ([(KTSelfStatusResult *)self pendingStatusChanges])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [dictionary setObject:v26 forKeyedSubscript:@"pendingChanges"];
  v27 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)simpleStatus
{
  v3 = objc_alloc_init(KTStatusResult);
  [(KTStatusResult *)v3 setOptIn:[(KTSelfStatusResult *)self optIn]];
  [(KTStatusResult *)v3 setServerOptIn:[(KTSelfStatusResult *)self serverOptIn]];
  [(KTStatusResult *)v3 setAccountStatus:[(KTSelfStatusResult *)self accountStatus]];
  [(KTStatusResult *)v3 setSystemStatus:[(KTSelfStatusResult *)self systemStatus]];
  [(KTStatusResult *)v3 setSelfStatus:[(KTSelfStatusResult *)self selfStatus]];
  [(KTStatusResult *)v3 setIdsAccountStatus:[(KTSelfStatusResult *)self idsAccountStatus]];
  [(KTStatusResult *)v3 setOptInState:[(KTStatusResult *)v3 optIn]== 1];
  [(KTStatusResult *)v3 setPendingStatusChanges:[(KTSelfStatusResult *)self pendingStatusChanges]];

  return v3;
}

@end