@interface TRDeviceSetupAuthenticateAction
+ (id)actionForCancelledRequestWithOriginalAction:(id)action;
+ (id)actionForFailedAttemptWithOriginalAction:(id)action requestMessage:(id)message failureMessage:(id)failureMessage;
+ (id)actionForFinishedRequestWithOriginalAction:(id)action accountID:(id)d accountPassword:(id)password accountTypesWithSharedCredentials:(id)credentials;
+ (id)actionForInitialAttemptWithAccountType:(unint64_t)type requestMessage:(id)message;
- (NSArray)accountTypesWithSharedCredentials;
- (NSString)accountID;
- (NSString)accountPassword;
- (NSString)failureMessage;
- (NSString)requestMessage;
- (TRDeviceSetupAuthenticateAction)init;
- (id)_initWithAccountType:(unint64_t)type accountID:(id)d accountPassword:(id)password accountTypesWithSharedCredentials:(id)credentials attemptCount:(unint64_t)count requestMessage:(id)message failureMessage:(id)failureMessage;
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

- (id)_initWithAccountType:(unint64_t)type accountID:(id)d accountPassword:(id)password accountTypesWithSharedCredentials:(id)credentials attemptCount:(unint64_t)count requestMessage:(id)message failureMessage:(id)failureMessage
{
  v50 = *MEMORY[0x277D85DE8];
  dCopy = d;
  passwordCopy = password;
  credentialsCopy = credentials;
  messageCopy = message;
  failureMessageCopy = failureMessage;
  v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v21 = v20;
  if (type - 1 > 3)
  {
    v22 = &stru_287F58968;
  }

  else
  {
    v22 = off_279DCF478[type - 1];
  }

  [v20 setObject:v22 forKeyedSubscript:@"at"];
  if (dCopy)
  {
    v23 = [dCopy copy];
    [v21 setObject:v23 forKeyedSubscript:@"ai"];
  }

  if (passwordCopy)
  {
    v24 = [passwordCopy copy];
    [v21 setObject:v24 forKeyedSubscript:@"ap"];
  }

  if ([credentialsCopy count])
  {
    countCopy = count;
    selfCopy = self;
    v43 = dCopy;
    v25 = credentialsCopy;
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

        unsignedIntegerValue = [*(*(&v45 + 1) + 8 * i) unsignedIntegerValue];
        v33 = 0;
        if (unsignedIntegerValue <= 1)
        {
          if (!unsignedIntegerValue)
          {
            continue;
          }

          if (unsignedIntegerValue == 1)
          {
            v33 = @"it";
          }
        }

        else
        {
          switch(unsignedIntegerValue)
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

        dCopy = v43;
        self = selfCopy;
        count = countCopy;
        break;
      }
    }
  }

  if (count)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
    [v21 setObject:v35 forKeyedSubscript:@"a"];
  }

  if (messageCopy)
  {
    v36 = [messageCopy copy];
    [v21 setObject:v36 forKeyedSubscript:@"rm"];
  }

  if (failureMessageCopy)
  {
    v37 = [failureMessageCopy copy];
    [v21 setObject:v37 forKeyedSubscript:@"fm"];
  }

  v44.receiver = self;
  v44.super_class = TRDeviceSetupAuthenticateAction;
  v38 = [(TRDeviceSetupAction *)&v44 _initWithActionType:@"auth" parameters:v21];

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)actionForInitialAttemptWithAccountType:(unint64_t)type requestMessage:(id)message
{
  messageCopy = message;
  v7 = [[self alloc] _initWithAccountType:type accountID:0 accountPassword:0 accountTypesWithSharedCredentials:0 attemptCount:0 requestMessage:messageCopy failureMessage:0];

  return v7;
}

+ (id)actionForFailedAttemptWithOriginalAction:(id)action requestMessage:(id)message failureMessage:(id)failureMessage
{
  failureMessageCopy = failureMessage;
  messageCopy = message;
  actionCopy = action;
  v11 = [self alloc];
  accountType = [actionCopy accountType];
  accountID = [actionCopy accountID];
  accountPassword = [actionCopy accountPassword];
  attemptCount = [actionCopy attemptCount];

  v16 = [v11 _initWithAccountType:accountType accountID:accountID accountPassword:accountPassword accountTypesWithSharedCredentials:0 attemptCount:attemptCount + 1 requestMessage:messageCopy failureMessage:failureMessageCopy];

  return v16;
}

+ (id)actionForFinishedRequestWithOriginalAction:(id)action accountID:(id)d accountPassword:(id)password accountTypesWithSharedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  passwordCopy = password;
  dCopy = d;
  actionCopy = action;
  v14 = [self alloc];
  accountType = [actionCopy accountType];
  attemptCount = [actionCopy attemptCount];

  v17 = [v14 _initWithAccountType:accountType accountID:dCopy accountPassword:passwordCopy accountTypesWithSharedCredentials:credentialsCopy attemptCount:attemptCount requestMessage:0 failureMessage:0];

  return v17;
}

+ (id)actionForCancelledRequestWithOriginalAction:(id)action
{
  actionCopy = action;
  v5 = [self alloc];
  accountType = [actionCopy accountType];
  attemptCount = [actionCopy attemptCount];

  v8 = [v5 _initWithAccountType:accountType accountID:0 accountPassword:0 accountTypesWithSharedCredentials:0 attemptCount:attemptCount requestMessage:0 failureMessage:0];

  return v8;
}

- (unint64_t)accountType
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"at"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ai"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ap"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"sa"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"a"];

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

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (NSString)requestMessage
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"rm"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"fm"];

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