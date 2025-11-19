@interface SSPurchase
- (id)newAMSPurchase;
@end

@implementation SSPurchase

- (id)newAMSPurchase
{
  v3 = [(SSPurchase *)self buyParameters];
  v4 = [AMSBuyParams buyParamsWithString:v3];

  if ([(SSPurchase *)self isBackgroundPurchase])
  {
    [v4 setObject:@"1" forKeyedSubscript:AMSBuyParamPropertyIsBackground];
  }

  v5 = [(SSPurchase *)self affiliateIdentifier];

  if (v5)
  {
    v6 = [(SSPurchase *)self affiliateIdentifier];
    [v4 setObject:v6 forKeyedSubscript:AMSBuyParamPropertyAffiliateId];
  }

  [v4 setObject:0 forKeyedSubscript:@"isUpdateAll"];
  v7 = [v4 objectForKeyedSubscript:@"generateBuyParams"];
  v8 = v7;
  if (v7)
  {
    v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 BOOLValue]);
    [v4 setObject:v9 forKeyedSubscript:@"generateBuyParams"];
  }

  if ([(SSPurchase *)self isPlaybackRequest])
  {
    [v4 setObject:@"1" forKeyedSubscript:@"playback"];
  }

  v10 = [(SSPurchase *)self requestProperties];
  v11 = [v10 requestParameters];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000CABFC;
  v41[3] = &unk_100327658;
  v12 = v4;
  v42 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v41];

  v13 = [(SSPurchase *)self requestProperties];
  v14 = [v13 URLBagKey];

  if (([v14 isEqualToString:@"backgroundUpdateProduct"] & 1) == 0)
  {
    if ([v14 isEqualToString:@"buyProduct"])
    {
      v16 = 0;
      v15 = 0;
      goto LABEL_33;
    }

    if ([v14 isEqualToString:@"downloadProduct"])
    {
      v15 = 0;
      v16 = 2;
      goto LABEL_33;
    }

    if ([v14 isEqualToString:@"p2-in-app-buy"])
    {
      v15 = 0;
      v16 = 3;
      goto LABEL_33;
    }

    if ([v14 isEqualToString:@"updateProduct"])
    {
      v15 = 0;
      v16 = 4;
      goto LABEL_33;
    }

    if ([v14 isEqualToString:@"redownloadAllTones"])
    {
LABEL_32:
      v16 = 0;
      v15 = 1;
      goto LABEL_33;
    }

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v43 = 138543618;
      v44 = v21;
      v45 = 2112;
      v46 = v14;
      v22 = v21;
      LODWORD(v40) = 22;
      v39 = &v43;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_31:

        goto LABEL_32;
      }

      v20 = [NSString stringWithCString:v23 encoding:4, &v43, v40];
      free(v23);
      v39 = v20;
      SSFileLog();
    }

    goto LABEL_31;
  }

  v15 = 0;
  v16 = 1;
LABEL_33:
  v24 = [[SSAMSPurchase alloc] initWithPurchaseType:v16 buyParams:v12];
  if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v24 performSelector:"setURLBagKey:" withObject:v14];
  }

  v25 = objc_alloc_init(NSMutableDictionary);
  v26 = [v10 HTTPHeaders];

  if (v26)
  {
    v27 = [v10 HTTPHeaders];
    [v25 addEntriesFromDictionary:v27];
  }

  v28 = [(SSPurchase *)self tidHeaders];

  if (v28)
  {
    v29 = [(SSPurchase *)self tidHeaders];
    [v25 addEntriesFromDictionary:v29];
  }

  [v25 setObject:0 forKeyedSubscript:SSHTTPHeaderUserAgent];
  v30 = [v25 copy];
  [v24 setAdditionalHeaders:v30];

  [v24 setUserInitiated:{-[SSPurchase isBackgroundPurchase](self, "isBackgroundPurchase") ^ 1}];
  v31 = [(SSPurchase *)self ownerAccountDSID];
  [v24 setOwnerAccountId:v31];

  v32 = [(SSPurchase *)self accountIdentifier];
  [v24 setAccountIdentifier:v32];

  [v24 setIgnoreRequirePasswordRestriction:{-[SSPurchase ignoresForcedPasswordRestriction](self, "ignoresForcedPasswordRestriction")}];
  [v24 setPreauthenticated:{-[SSPurchase isPreauthenticated](self, "isPreauthenticated")}];
  [v24 setRequiresAccount:1];
  v33 = [(SSPurchase *)self presentingSceneBundleIdentifier];
  [v24 setPresentingSceneBundleIdentifier:v33];

  v34 = [(SSPurchase *)self presentingSceneIdentifier];
  [v24 setPresentingSceneIdentifier:v34];

  v35 = [(SSPurchase *)self requestProperties];
  [v35 URLBagType];
  v36 = SSAccountScopeForURLBagType();

  v37 = &AMSAccountMediaTypeProduction;
  if (v36)
  {
    v37 = &AMSAccountMediaTypeAppStoreSandbox;
  }

  [v24 setMediaType:*v37];

  return v24;
}

@end