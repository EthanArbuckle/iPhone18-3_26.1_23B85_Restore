@interface VSApplicationControllerResponseHandler
- (id)_accountAuthenticationWithJavascriptResponse:(id)response error:(id *)error;
- (id)_parseSAMLResponseString:(id)string error:(id *)error;
- (void)_handleJavascriptResponseInternal:(id)internal requestType:(int64_t)type accountAuthentication:(id)authentication completionHandler:(id)handler;
- (void)_setSubscriptionDataWithResponse:(id)response forJavascriptResponse:(id)javascriptResponse;
- (void)handleJavascriptResponse:(id)response requestType:(int64_t)type completionHandler:(id)handler;
@end

@implementation VSApplicationControllerResponseHandler

- (void)handleJavascriptResponse:(id)response requestType:(int64_t)type completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  authN = [responseCopy authN];
  if ([authN length])
  {
    v15 = 0;
    v11 = [(VSApplicationControllerResponseHandler *)self _accountAuthenticationWithJavascriptResponse:responseCopy error:&v15];
    v12 = v15;
    v13 = v12;
    if (v11)
    {
      [(VSApplicationControllerResponseHandler *)self _handleJavascriptResponseInternal:responseCopy requestType:type accountAuthentication:v11 completionHandler:handlerCopy];
    }

    else
    {
      if (!v12)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }

      v14 = [MEMORY[0x277CE2250] failableWithError:v13];
      handlerCopy[2](handlerCopy, v14);
    }
  }

  else
  {
    [(VSApplicationControllerResponseHandler *)self _handleJavascriptResponseInternal:responseCopy requestType:type accountAuthentication:0 completionHandler:handlerCopy];
  }
}

- (id)_accountAuthenticationWithJavascriptResponse:(id)response error:(id *)error
{
  responseCopy = response;
  authenticationScheme = [responseCopy authenticationScheme];
  v7 = [authenticationScheme isEqual:*MEMORY[0x277CE2438]];

  if (v7)
  {
    authN = [responseCopy authN];
    v9 = VSSharedSAMLParserController();
    v35 = 0;
    v10 = [v9 parseResponse:authN error:&v35];
    v11 = v35;

    if (v10)
    {
      v12 = objc_alloc_init(VSAccountAuthentication);
      userName = [v10 userName];
      [(VSAccountAuthentication *)v12 setUsername:userName];

      if ([v10 expectedAction] == 1 && objc_msgSend(v10, "hasValidAuthentication"))
      {
        v14 = objc_alloc_init(MEMORY[0x277CE22C8]);
        [v14 setBody:authN];
      }

      else
      {
        v14 = 0;
      }

      v31 = [MEMORY[0x277CE2298] optionalWithObject:v14];
      [(VSAccountAuthentication *)v12 setAuthenticationToken:v31];

      v21 = 0;
    }

    else
    {
      v21 = VSPublicError();
      v12 = 0;
    }

LABEL_19:
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  expectedAction = [responseCopy expectedAction];
  integerValue = [expectedAction integerValue];

  if (integerValue == 1)
  {
    authN = objc_alloc_init(MEMORY[0x277CE2290]);
    expirationDate = [responseCopy expirationDate];
    [authN setExpirationDate:expirationDate];

    authN2 = [responseCopy authN];
    [authN setBody:authN2];

    if ([authN isValid])
    {
      v12 = objc_alloc_init(VSAccountAuthentication);
      username = [responseCopy username];
      [(VSAccountAuthentication *)v12 setUsername:username];

      v20 = [MEMORY[0x277CE2298] optionalWithObject:authN];
      [(VSAccountAuthentication *)v12 setAuthenticationToken:v20];
      v21 = 0;
    }

    else
    {
      v20 = VSPrivateError();
      v21 = VSPublicError();
      v12 = 0;
    }

    goto LABEL_19;
  }

  v22 = VSErrorLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [(VSApplicationControllerResponseHandler *)v22 _accountAuthenticationWithJavascriptResponse:v23 error:v24, v25, v26, v27, v28, v29];
  }

  v30 = VSPrivateError();
  v21 = VSPublicError();

  v12 = 0;
  if (error)
  {
LABEL_20:
    v32 = v21;
    *error = v21;
  }

LABEL_21:
  appBundleIdentifier = [responseCopy appBundleIdentifier];
  [(VSAccountAuthentication *)v12 setAppBundleIdentifier:appBundleIdentifier];

  -[VSAccountAuthentication setSynchronizable:](v12, "setSynchronizable:", [responseCopy isSynchronizable]);

  return v12;
}

- (void)_handleJavascriptResponseInternal:(id)internal requestType:(int64_t)type accountAuthentication:(id)authentication completionHandler:(id)handler
{
  v72 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  authenticationCopy = authentication;
  handlerCopy = handler;
  if (type <= 3)
  {
    if ((type - 1) < 2)
    {
      authN = [internalCopy authN];
      if (!authN)
      {
        goto LABEL_38;
      }

      goto LABEL_13;
    }

    if (type == 3)
    {
      authN = [internalCopy userMetadata];
      if (!authN)
      {
        goto LABEL_38;
      }

      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (type != 4)
  {
    if (type == 5)
    {
      expectedAction = [internalCopy expectedAction];
      integerValue = [expectedAction integerValue];

      if (integerValue == 1)
      {
        v16 = objc_alloc_init(VSApplicationControllerResponse);
        expectedAction2 = [internalCopy expectedAction];
        [(VSApplicationControllerResponse *)v16 setExpectedAction:expectedAction2];

        v18 = [MEMORY[0x277CE2250] failableWithObject:v16];
        goto LABEL_36;
      }

      v30 = VSErrorLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(VSApplicationControllerResponseHandler *)v30 _handleJavascriptResponseInternal:v53 requestType:v54 accountAuthentication:v55 completionHandler:v56, v57, v58, v59];
      }

LABEL_35:

      v16 = VSPublicError();
      v18 = [MEMORY[0x277CE2250] failableWithError:v16];
LABEL_36:
      v49 = v18;

      if (v49)
      {
        v19 = 0;
        goto LABEL_45;
      }

LABEL_38:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"No result nor error to return for request."];
      v19 = 0;
LABEL_44:
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The resultOrNil parameter must not be nil."];
      v49 = 0;
      goto LABEL_45;
    }

LABEL_26:
    v30 = VSErrorLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(VSApplicationControllerResponseHandler *)v30 _handleJavascriptResponseInternal:v31 requestType:v32 accountAuthentication:v33 completionHandler:v34, v35, v36, v37];
    }

    goto LABEL_35;
  }

  authN = [internalCopy logout];
  if (!authN)
  {
    goto LABEL_38;
  }

LABEL_13:
  v19 = authN;
  authenticationScheme = [internalCopy authenticationScheme];
  v21 = MEMORY[0x277CE2438];
  if (!authenticationScheme)
  {
    authenticationScheme = *MEMORY[0x277CE2438];
  }

  userChannelList = [internalCopy userChannelList];
  selfCopy = self;
  v64 = authenticationScheme;
  v65 = userChannelList;
  if ([userChannelList count])
  {
    v61 = authenticationCopy;
    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v24 = userChannelList;
    v25 = [v24 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v68;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v68 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v67 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v26);
    }

    authenticationCopy = v61;
    self = selfCopy;
    v21 = MEMORY[0x277CE2438];
  }

  else
  {
    v23 = 0;
  }

  v38 = *v21;
  if ([authenticationScheme isEqual:v38])
  {
    v66 = 0;
    v39 = [(VSApplicationControllerResponseHandler *)self _parseSAMLResponseString:v19 error:&v66];
    v40 = v66;
    v41 = v40;
    if (v39)
    {
      v62 = v39;
      v42 = v39;
      v43 = objc_alloc_init(VSApplicationControllerResponse);
      [(VSApplicationControllerResponse *)v43 setAuthenticationScheme:v38];
      primaryStatusCode = [v42 primaryStatusCode];
      [(VSApplicationControllerResponse *)v43 setResponseStatusCode:primaryStatusCode];

      [(VSApplicationControllerResponse *)v43 setResponseString:v19];
      v45 = MEMORY[0x277CCABB0];
      expectedAction3 = [v42 expectedAction];

      authenticationScheme = v64;
      v47 = [v45 numberWithInteger:expectedAction3];
      [(VSApplicationControllerResponse *)v43 setExpectedAction:v47];

      [(VSApplicationControllerResponse *)v43 setAccountChannelIDs:v23];
      [(VSApplicationControllerResponse *)v43 setAccountAuthentication:authenticationCopy];
      userAccounts = [internalCopy userAccounts];
      [(VSApplicationControllerResponse *)v43 setApplicationUserAccounts:userAccounts];

      [(VSApplicationControllerResponseHandler *)selfCopy _setSubscriptionDataWithResponse:v43 forJavascriptResponse:internalCopy];
      v49 = [MEMORY[0x277CE2250] failableWithObject:v43];

      v39 = v62;
    }

    else
    {
      if (!v40)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The parseErrorOrNil parameter must not be nil."];
      }

      v49 = [MEMORY[0x277CE2250] failableWithError:v41];
    }
  }

  else
  {
    v41 = objc_alloc_init(VSApplicationControllerResponse);
    [(VSApplicationControllerResponse *)v41 setAuthenticationScheme:authenticationScheme];
    [(VSApplicationControllerResponse *)v41 setResponseString:v19];
    statusCode = [internalCopy statusCode];
    [(VSApplicationControllerResponse *)v41 setResponseStatusCode:statusCode];

    expectedAction4 = [internalCopy expectedAction];
    [(VSApplicationControllerResponse *)v41 setExpectedAction:expectedAction4];

    [(VSApplicationControllerResponse *)v41 setAccountChannelIDs:v23];
    [(VSApplicationControllerResponse *)v41 setAccountAuthentication:authenticationCopy];
    userAccounts2 = [internalCopy userAccounts];
    [(VSApplicationControllerResponse *)v41 setApplicationUserAccounts:userAccounts2];

    [(VSApplicationControllerResponseHandler *)self _setSubscriptionDataWithResponse:v41 forJavascriptResponse:internalCopy];
    v49 = [MEMORY[0x277CE2250] failableWithObject:v41];
  }

  if (!v49)
  {
    goto LABEL_44;
  }

LABEL_45:
  handlerCopy[2](handlerCopy, v49);

  v60 = *MEMORY[0x277D85DE8];
}

- (id)_parseSAMLResponseString:(id)string error:(id *)error
{
  stringCopy = string;
  v6 = VSSharedSAMLParserController();
  v12 = 0;
  v7 = [v6 parseResponse:stringCopy error:&v12];

  v8 = v12;
  v9 = 0;
  if (!v7)
  {
    v9 = VSPublicError();
  }

  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v7;
}

- (void)_setSubscriptionDataWithResponse:(id)response forJavascriptResponse:(id)javascriptResponse
{
  responseCopy = response;
  javascriptResponseCopy = javascriptResponse;
  subscriptions = [javascriptResponseCopy subscriptions];
  v7 = [subscriptions count];

  if (v7)
  {
    subscriptions2 = [javascriptResponseCopy subscriptions];

    if (!subscriptions2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [javascriptResponse subscriptions] parameter must not be nil."];
    }

    subscriptions3 = [javascriptResponseCopy subscriptions];
    v10 = [VSJSSubscription toVSSubscriptions:subscriptions3];
    [responseCopy setSubscriptionsToAdd:v10];
  }

  clearSubscriptions = [javascriptResponseCopy clearSubscriptions];
  [responseCopy setSubscriptionsToRemoveByBundleID:clearSubscriptions];
}

@end