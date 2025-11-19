@interface CloudServiceCapabilitiesOperation
- (BOOL)allowsBypassOfPrivacyAcknowledgement;
- (BOOL)allowsPromptingForPrivacyAcknowledgement;
- (id)_newResponseWithSubscriptionStatus:(id)a3;
- (id)responseBlock;
- (void)run;
- (void)setAllowsBypassOfPrivacyAcknowledgement:(BOOL)a3;
- (void)setAllowsPromptingForPrivacyAcknowledgement:(BOOL)a3;
- (void)setResponseBlock:(id)a3;
@end

@implementation CloudServiceCapabilitiesOperation

- (BOOL)allowsPromptingForPrivacyAcknowledgement
{
  [(CloudServiceCapabilitiesOperation *)self lock];
  allowsPromptingForPrivacyAcknowledgement = self->_allowsPromptingForPrivacyAcknowledgement;
  [(CloudServiceCapabilitiesOperation *)self unlock];
  return allowsPromptingForPrivacyAcknowledgement;
}

- (BOOL)allowsBypassOfPrivacyAcknowledgement
{
  [(CloudServiceCapabilitiesOperation *)self lock];
  allowsBypassOfPrivacyAcknowledgement = self->_allowsBypassOfPrivacyAcknowledgement;
  [(CloudServiceCapabilitiesOperation *)self unlock];
  return allowsBypassOfPrivacyAcknowledgement;
}

- (id)responseBlock
{
  [(CloudServiceCapabilitiesOperation *)self lock];
  v3 = [self->_responseBlock copy];
  [(CloudServiceCapabilitiesOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setAllowsPromptingForPrivacyAcknowledgement:(BOOL)a3
{
  [(CloudServiceCapabilitiesOperation *)self lock];
  self->_allowsPromptingForPrivacyAcknowledgement = a3;

  [(CloudServiceCapabilitiesOperation *)self unlock];
}

- (void)setAllowsBypassOfPrivacyAcknowledgement:(BOOL)a3
{
  [(CloudServiceCapabilitiesOperation *)self lock];
  self->_allowsBypassOfPrivacyAcknowledgement = a3;

  [(CloudServiceCapabilitiesOperation *)self unlock];
}

- (void)setResponseBlock:(id)a3
{
  v6 = a3;
  [(CloudServiceCapabilitiesOperation *)self lock];
  if (self->_responseBlock != v6)
  {
    v4 = [v6 copy];
    responseBlock = self->_responseBlock;
    self->_responseBlock = v4;
  }

  [(CloudServiceCapabilitiesOperation *)self unlock];
}

- (void)run
{
  [(CloudServiceCapabilitiesOperation *)self lock];
  allowsPromptingForPrivacyAcknowledgement = self->_allowsPromptingForPrivacyAcknowledgement;
  allowsBypassOfPrivacyAcknowledgement = self->_allowsBypassOfPrivacyAcknowledgement;
  v5 = objc_retainBlock(self->_responseBlock);
  responseBlock = self->_responseBlock;
  self->_responseBlock = 0;

  [(CloudServiceCapabilitiesOperation *)self unlock];
  if (!allowsPromptingForPrivacyAcknowledgement || allowsBypassOfPrivacyAcknowledgement)
  {
    v10 = 0;
    if (([SSPrivacyController shouldDisplayPrivacyLinkWithIdentifier:SSPrivacyIdentifierMusicStore]^ 1))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [PrivacyPromptOperation alloc];
    v8 = [(PrivacyPromptOperation *)v7 initWithPrivacyIdentifier:SSPrivacyIdentifierMusicStore];
    v51 = 0;
    v9 = [(CloudServiceCapabilitiesOperation *)self runSubOperation:v8 returningError:&v51];
    v10 = v51;

    if (v9)
    {
LABEL_8:
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = sub_1002334C8;
      v49 = sub_1002334D8;
      v50 = 0;
      v14 = objc_alloc_init(SubscriptionStatusOperation);
      [(SubscriptionStatusOperation *)v14 setAllowsBypassOfPrivacyAcknowledgement:allowsBypassOfPrivacyAcknowledgement];
      [(SubscriptionStatusOperation *)v14 setCarrierBundleProvisioningStyle:0];
      [(SubscriptionStatusOperation *)v14 setAuthenticatesIfNecessary:0];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1002334E0;
      v44[3] = &unk_10032CEC0;
      v44[4] = &v45;
      [(SubscriptionStatusOperation *)v14 setStatusBlock:v44];
      v43 = v10;
      v15 = [(CloudServiceCapabilitiesOperation *)self runSubOperation:v14 returningError:&v43];
      v11 = v43;

      if (v15)
      {
        v12 = objc_alloc_init(SSVCloudServiceCapabilitiesResponse);
        [v12 setSubscriptionStatus:v46[5]];
        v16 = [v46[5] accountStatus];
        v17 = [v46[5] carrierBundlingStatus];
        v18 = v17;
        if (v16 == 3 || v17 == 4 || v17 == 1)
        {
          [v12 setSupportsMusicCatalogPlayback:1];
        }

        if (v16 == 3 || v18 == 1)
        {
          v19 = +[SSAccountStore defaultStore];
          v20 = [v19 activeLockerAccount];

          if (v20)
          {
            [v12 setSupportsAddToCloudMusicLibrary:1];
          }
        }

        if (([v12 supportsMusicCatalogPlayback] & 1) == 0)
        {
          v21 = +[SSAccountStore defaultStore];
          v22 = [v21 activeAccount];
          v23 = [v22 isManagedAppleID];

          if (v23)
          {
            v24 = 0;
          }

          else
          {
            v31 = objc_alloc_init(SSURLBagContext);
            [v31 setBagType:0];
            v32 = +[SSDevice currentDevice];
            v33 = [v32 userAgentWithClientName:@"Music" version:@"3.1"];
            [v31 setValue:v33 forHTTPHeaderField:SSHTTPHeaderUserAgent];

            v34 = [[ISLoadURLBagOperation alloc] initWithBagContext:v31];
            v42 = 0;
            v35 = [(CloudServiceCapabilitiesOperation *)self runSubOperation:v34 returningError:&v42];
            v36 = v42;
            if (v36)
            {
              v37 = 0;
            }

            else
            {
              v37 = v35;
            }

            if (v37 == 1 && ([v34 URLBag], v38 = objc_claimAutoreleasedReturnValue(), (v39 = v38) != 0))
            {
              v40 = [v38 valueForKey:SSVURLBagKeyMusicSubscription];
              v24 = v40 != 0;
            }

            else
            {
              if (!v11)
              {
                if (v36)
                {
                  v41 = v36;
                }

                else
                {
                  v41 = [NSError errorWithDomain:SSErrorDomain code:100 userInfo:0];
                }

                v11 = v41;
              }

              v24 = 1;
            }
          }

          [v12 setCanSubscribeToMusicCatalog:v24];
        }

        v13 = v11 == 0;
        goto LABEL_43;
      }

      v25 = [v11 domain];
      v26 = SSErrorDomain;
      if (![v25 isEqualToString:SSErrorDomain])
      {
        goto LABEL_26;
      }

      v27 = [v11 code];

      if (v27 != 107)
      {
LABEL_27:
        v12 = 0;
        v13 = 0;
LABEL_43:

        _Block_object_dispose(&v45, 8);
        goto LABEL_44;
      }

      v28 = [v11 userInfo];
      v25 = [v28 valueForKey:NSUnderlyingErrorKey];

      v29 = [v25 domain];
      if ([v29 isEqualToString:v26])
      {
        v30 = [v25 code];

        if (v30 != 154)
        {
LABEL_26:

          goto LABEL_27;
        }

        v29 = v11;
        v11 = v25;
      }

      goto LABEL_26;
    }
  }

  if (allowsBypassOfPrivacyAcknowledgement)
  {
    goto LABEL_8;
  }

  v11 = [NSError errorWithDomain:SSErrorDomain code:154 userInfo:0];

  v12 = 0;
  v13 = 0;
LABEL_44:
  v5[2](v5, v12, v11);
  [(CloudServiceCapabilitiesOperation *)self setError:v11];
  [(CloudServiceCapabilitiesOperation *)self setSuccess:v13];
}

- (id)_newResponseWithSubscriptionStatus:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SSVCloudServiceCapabilitiesResponse);
  [v4 setSubscriptionStatus:v3];
  v5 = [v3 accountStatus];
  v6 = [v3 carrierBundlingStatus];

  if (v5 == 3 || v6 == 4 || v6 == 1)
  {
    [v4 setSupportsMusicCatalogPlayback:1];
  }

  if (v5 == 3 || v6 == 1)
  {
    v7 = +[SSAccountStore defaultStore];
    v8 = [v7 activeLockerAccount];

    if (v8)
    {
      [v4 setSupportsAddToCloudMusicLibrary:1];
    }
  }

  return v4;
}

@end