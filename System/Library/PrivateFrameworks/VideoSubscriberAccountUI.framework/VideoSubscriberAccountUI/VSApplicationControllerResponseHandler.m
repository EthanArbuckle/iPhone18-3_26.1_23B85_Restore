@interface VSApplicationControllerResponseHandler
- (id)_accountAuthenticationWithJavascriptResponse:(id)a3 error:(id *)a4;
- (id)_parseSAMLResponseString:(id)a3 error:(id *)a4;
- (void)_handleJavascriptResponseInternal:(id)a3 requestType:(int64_t)a4 accountAuthentication:(id)a5 completionHandler:(id)a6;
- (void)_setSubscriptionDataWithResponse:(id)a3 forJavascriptResponse:(id)a4;
- (void)handleJavascriptResponse:(id)a3 requestType:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation VSApplicationControllerResponseHandler

- (void)handleJavascriptResponse:(id)a3 requestType:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 authN];
  if ([v10 length])
  {
    v15 = 0;
    v11 = [(VSApplicationControllerResponseHandler *)self _accountAuthenticationWithJavascriptResponse:v8 error:&v15];
    v12 = v15;
    v13 = v12;
    if (v11)
    {
      [(VSApplicationControllerResponseHandler *)self _handleJavascriptResponseInternal:v8 requestType:a4 accountAuthentication:v11 completionHandler:v9];
    }

    else
    {
      if (!v12)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }

      v14 = [MEMORY[0x277CE2250] failableWithError:v13];
      v9[2](v9, v14);
    }
  }

  else
  {
    [(VSApplicationControllerResponseHandler *)self _handleJavascriptResponseInternal:v8 requestType:a4 accountAuthentication:0 completionHandler:v9];
  }
}

- (id)_accountAuthenticationWithJavascriptResponse:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 authenticationScheme];
  v7 = [v6 isEqual:*MEMORY[0x277CE2438]];

  if (v7)
  {
    v8 = [v5 authN];
    v9 = VSSharedSAMLParserController();
    v35 = 0;
    v10 = [v9 parseResponse:v8 error:&v35];
    v11 = v35;

    if (v10)
    {
      v12 = objc_alloc_init(VSAccountAuthentication);
      v13 = [v10 userName];
      [(VSAccountAuthentication *)v12 setUsername:v13];

      if ([v10 expectedAction] == 1 && objc_msgSend(v10, "hasValidAuthentication"))
      {
        v14 = objc_alloc_init(MEMORY[0x277CE22C8]);
        [v14 setBody:v8];
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
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = [v5 expectedAction];
  v16 = [v15 integerValue];

  if (v16 == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x277CE2290]);
    v17 = [v5 expirationDate];
    [v8 setExpirationDate:v17];

    v18 = [v5 authN];
    [v8 setBody:v18];

    if ([v8 isValid])
    {
      v12 = objc_alloc_init(VSAccountAuthentication);
      v19 = [v5 username];
      [(VSAccountAuthentication *)v12 setUsername:v19];

      v20 = [MEMORY[0x277CE2298] optionalWithObject:v8];
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
  if (a4)
  {
LABEL_20:
    v32 = v21;
    *a4 = v21;
  }

LABEL_21:
  v33 = [v5 appBundleIdentifier];
  [(VSAccountAuthentication *)v12 setAppBundleIdentifier:v33];

  -[VSAccountAuthentication setSynchronizable:](v12, "setSynchronizable:", [v5 isSynchronizable]);

  return v12;
}

- (void)_handleJavascriptResponseInternal:(id)a3 requestType:(int64_t)a4 accountAuthentication:(id)a5 completionHandler:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 <= 3)
  {
    if ((a4 - 1) < 2)
    {
      v13 = [v10 authN];
      if (!v13)
      {
        goto LABEL_38;
      }

      goto LABEL_13;
    }

    if (a4 == 3)
    {
      v13 = [v10 userMetadata];
      if (!v13)
      {
        goto LABEL_38;
      }

      goto LABEL_13;
    }

    goto LABEL_26;
  }

  if (a4 != 4)
  {
    if (a4 == 5)
    {
      v14 = [v10 expectedAction];
      v15 = [v14 integerValue];

      if (v15 == 1)
      {
        v16 = objc_alloc_init(VSApplicationControllerResponse);
        v17 = [v10 expectedAction];
        [(VSApplicationControllerResponse *)v16 setExpectedAction:v17];

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

  v13 = [v10 logout];
  if (!v13)
  {
    goto LABEL_38;
  }

LABEL_13:
  v19 = v13;
  v20 = [v10 authenticationScheme];
  v21 = MEMORY[0x277CE2438];
  if (!v20)
  {
    v20 = *MEMORY[0x277CE2438];
  }

  v22 = [v10 userChannelList];
  v63 = self;
  v64 = v20;
  v65 = v22;
  if ([v22 count])
  {
    v61 = v11;
    v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v24 = v22;
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

    v11 = v61;
    self = v63;
    v21 = MEMORY[0x277CE2438];
  }

  else
  {
    v23 = 0;
  }

  v38 = *v21;
  if ([v20 isEqual:v38])
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
      v44 = [v42 primaryStatusCode];
      [(VSApplicationControllerResponse *)v43 setResponseStatusCode:v44];

      [(VSApplicationControllerResponse *)v43 setResponseString:v19];
      v45 = MEMORY[0x277CCABB0];
      v46 = [v42 expectedAction];

      v20 = v64;
      v47 = [v45 numberWithInteger:v46];
      [(VSApplicationControllerResponse *)v43 setExpectedAction:v47];

      [(VSApplicationControllerResponse *)v43 setAccountChannelIDs:v23];
      [(VSApplicationControllerResponse *)v43 setAccountAuthentication:v11];
      v48 = [v10 userAccounts];
      [(VSApplicationControllerResponse *)v43 setApplicationUserAccounts:v48];

      [(VSApplicationControllerResponseHandler *)v63 _setSubscriptionDataWithResponse:v43 forJavascriptResponse:v10];
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
    [(VSApplicationControllerResponse *)v41 setAuthenticationScheme:v20];
    [(VSApplicationControllerResponse *)v41 setResponseString:v19];
    v50 = [v10 statusCode];
    [(VSApplicationControllerResponse *)v41 setResponseStatusCode:v50];

    v51 = [v10 expectedAction];
    [(VSApplicationControllerResponse *)v41 setExpectedAction:v51];

    [(VSApplicationControllerResponse *)v41 setAccountChannelIDs:v23];
    [(VSApplicationControllerResponse *)v41 setAccountAuthentication:v11];
    v52 = [v10 userAccounts];
    [(VSApplicationControllerResponse *)v41 setApplicationUserAccounts:v52];

    [(VSApplicationControllerResponseHandler *)self _setSubscriptionDataWithResponse:v41 forJavascriptResponse:v10];
    v49 = [MEMORY[0x277CE2250] failableWithObject:v41];
  }

  if (!v49)
  {
    goto LABEL_44;
  }

LABEL_45:
  v12[2](v12, v49);

  v60 = *MEMORY[0x277D85DE8];
}

- (id)_parseSAMLResponseString:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = VSSharedSAMLParserController();
  v12 = 0;
  v7 = [v6 parseResponse:v5 error:&v12];

  v8 = v12;
  v9 = 0;
  if (!v7)
  {
    v9 = VSPublicError();
  }

  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v7;
}

- (void)_setSubscriptionDataWithResponse:(id)a3 forJavascriptResponse:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v5 subscriptions];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 subscriptions];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [javascriptResponse subscriptions] parameter must not be nil."];
    }

    v9 = [v5 subscriptions];
    v10 = [VSJSSubscription toVSSubscriptions:v9];
    [v12 setSubscriptionsToAdd:v10];
  }

  v11 = [v5 clearSubscriptions];
  [v12 setSubscriptionsToRemoveByBundleID:v11];
}

@end