@interface TRDeviceSetupAuthenticateAction
+ (id)actionForCancelledRequestWithOriginalAction:(id)a3;
+ (id)actionForFailedAttemptWithOriginalAction:(id)a3 requestMessage:(id)a4 failureMessage:(id)a5;
+ (id)actionForFinishedRequestWithOriginalAction:(id)a3 accountID:(id)a4 accountPassword:(id)a5 accountTypesWithSharedCredentials:(id)a6;
+ (id)actionForInitialAttemptWithAccountType:(unint64_t)a3 requestMessage:(id)a4;
- (NSArray)accountTypesWithSharedCredentials;
- (NSString)accountID;
- (NSString)accountPassword;
- (NSString)failureMessage;
- (NSString)requestMessage;
- (TRDeviceSetupAuthenticateAction)init;
- (id)_initWithAccountType:(unint64_t)a3 accountID:(id)a4 accountPassword:(id)a5 accountTypesWithSharedCredentials:(id)a6 attemptCount:(unint64_t)a7 requestMessage:(id)a8 failureMessage:(id)a9;
- (unint64_t)accountType;
- (unint64_t)attemptCount;
@end

@implementation TRDeviceSetupAuthenticateAction

- (TRDeviceSetupAuthenticateAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupAuthenticateAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"auth" parameters:0];
}

- (id)_initWithAccountType:(unint64_t)a3 accountID:(id)a4 accountPassword:(id)a5 accountTypesWithSharedCredentials:(id)a6 attemptCount:(unint64_t)a7 requestMessage:(id)a8 failureMessage:(id)a9
{
  v50 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v21 = v20;
  if (a3 - 1 > 3)
  {
    v22 = &stru_287F58968;
  }

  else
  {
    v22 = off_279DCF478[a3 - 1];
  }

  [v20 setObject:v22 forKeyedSubscript:@"at"];
  if (v15)
  {
    v23 = [v15 copy];
    [v21 setObject:v23 forKeyedSubscript:@"ai"];
  }

  if (v16)
  {
    v24 = [v16 copy];
    [v21 setObject:v24 forKeyedSubscript:@"ap"];
  }

  if ([v17 count])
  {
    v41 = a7;
    v42 = self;
    v43 = v15;
    v25 = v17;
    v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v25, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v28)
    {
      goto LABEL_27;
    }

    v29 = v28;
    v30 = *v46;
    while (1)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v46 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v45 + 1) + 8 * i) unsignedIntegerValue];
        v33 = 0;
        if (v32 <= 1)
        {
          if (!v32)
          {
            continue;
          }

          if (v32 == 1)
          {
            v33 = @"it";
          }
        }

        else
        {
          switch(v32)
          {
            case 2:
              v33 = @"ic";
              break;
            case 3:
              v33 = @"hs";
              break;
            case 4:
              v33 = @"gc";
              break;
          }
        }

        [v26 addObject:v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (!v29)
      {
LABEL_27:

        v34 = [v26 copy];
        [v21 setObject:v34 forKeyedSubscript:@"sa"];

        v15 = v43;
        self = v42;
        a7 = v41;
        break;
      }
    }
  }

  if (a7)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
    [v21 setObject:v35 forKeyedSubscript:@"a"];
  }

  if (v18)
  {
    v36 = [v18 copy];
    [v21 setObject:v36 forKeyedSubscript:@"rm"];
  }

  if (v19)
  {
    v37 = [v19 copy];
    [v21 setObject:v37 forKeyedSubscript:@"fm"];
  }

  v44.receiver = self;
  v44.super_class = TRDeviceSetupAuthenticateAction;
  v38 = [(TRDeviceSetupAction *)&v44 _initWithActionType:@"auth" parameters:v21];

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)actionForInitialAttemptWithAccountType:(unint64_t)a3 requestMessage:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] _initWithAccountType:a3 accountID:0 accountPassword:0 accountTypesWithSharedCredentials:0 attemptCount:0 requestMessage:v6 failureMessage:0];

  return v7;
}

+ (id)actionForFailedAttemptWithOriginalAction:(id)a3 requestMessage:(id)a4 failureMessage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [v10 accountType];
  v13 = [v10 accountID];
  v14 = [v10 accountPassword];
  v15 = [v10 attemptCount];

  v16 = [v11 _initWithAccountType:v12 accountID:v13 accountPassword:v14 accountTypesWithSharedCredentials:0 attemptCount:v15 + 1 requestMessage:v9 failureMessage:v8];

  return v16;
}

+ (id)actionForFinishedRequestWithOriginalAction:(id)a3 accountID:(id)a4 accountPassword:(id)a5 accountTypesWithSharedCredentials:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a1 alloc];
  v15 = [v13 accountType];
  v16 = [v13 attemptCount];

  v17 = [v14 _initWithAccountType:v15 accountID:v12 accountPassword:v11 accountTypesWithSharedCredentials:v10 attemptCount:v16 requestMessage:0 failureMessage:0];

  return v17;
}

+ (id)actionForCancelledRequestWithOriginalAction:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 accountType];
  v7 = [v4 attemptCount];

  v8 = [v5 _initWithAccountType:v6 accountID:0 accountPassword:0 accountTypesWithSharedCredentials:0 attemptCount:v7 requestMessage:0 failureMessage:0];

  return v8;
}

- (unint64_t)accountType
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"at"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = _TRSetupAccountTypeFromProtocolString(v5);
  return v6;
}

- (NSString)accountID
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"ai"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)accountPassword
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"ap"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSArray)accountTypesWithSharedCredentials
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"sa"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = _TRSetupAccountTypeFromProtocolString(*(*(&v17 + 1) + 8 * i));
        if (v13)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v13, v17}];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)attemptCount
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"a"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (NSString)requestMessage
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"rm"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)failureMessage
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"fm"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end