@interface ClaimStoreKitClientOperation
- (ClaimStoreKitClientOperation)initWithClientIdentity:(id)identity;
- (NSData)clientAuditTokenData;
- (StoreKitClientIdentity)clientIdentity;
- (void)run;
- (void)setClientAuditTokenData:(id)data;
@end

@implementation ClaimStoreKitClientOperation

- (ClaimStoreKitClientOperation)initWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = ClaimStoreKitClientOperation;
  v5 = [(ClaimStoreKitClientOperation *)&v9 init];
  if (v5)
  {
    v6 = [identityCopy copy];
    clientIdentity = v5->_clientIdentity;
    v5->_clientIdentity = v6;
  }

  return v5;
}

- (NSData)clientAuditTokenData
{
  [(ClaimStoreKitClientOperation *)self lock];
  v3 = self->_clientAuditTokenData;
  [(ClaimStoreKitClientOperation *)self unlock];

  return v3;
}

- (StoreKitClientIdentity)clientIdentity
{
  [(ClaimStoreKitClientOperation *)self lock];
  v3 = [(StoreKitClientIdentity *)self->_clientIdentity copy];
  [(ClaimStoreKitClientOperation *)self unlock];

  return v3;
}

- (void)setClientAuditTokenData:(id)data
{
  dataCopy = data;
  [(ClaimStoreKitClientOperation *)self lock];
  if (self->_clientAuditTokenData != dataCopy)
  {
    objc_storeStrong(&self->_clientAuditTokenData, data);
  }

  [(ClaimStoreKitClientOperation *)self unlock];
}

- (void)run
{
  storeIdentifier = [(StoreKitClientIdentity *)self->_clientIdentity storeIdentifier];
  if (!storeIdentifier)
  {
    if ([(StoreKitClientIdentity *)self->_clientIdentity isSandboxed])
    {
      goto LABEL_4;
    }

    bundleIdentifier = [(StoreKitClientIdentity *)self->_clientIdentity bundleIdentifier];
    v5 = bundleIdentifier != 0;
    if (!bundleIdentifier)
    {
      v4 = [NSError errorWithDomain:SSErrorDomain code:116 userInfo:0];
LABEL_37:

      goto LABEL_5;
    }

    v7 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
    applicationType = [v7 applicationType];
    v9 = [applicationType isEqualToString:LSSystemApplicationType];

    if (!v9)
    {
LABEL_36:

      v4 = 0;
      goto LABEL_37;
    }

    v10 = [NSNumber alloc];
    applicationDSID = [v7 applicationDSID];
    v38 = [v10 initWithLongLong:{objc_msgSend(applicationDSID, "longLongValue")}];

    itemID = [v7 itemID];
    externalVersionIdentifier = [v7 externalVersionIdentifier];
    v37 = v7;
    if (!itemID || !externalVersionIdentifier)
    {
      goto LABEL_19;
    }

    accountIdentifier = [(StoreKitClientIdentity *)self->_clientIdentity accountIdentifier];
    v14 = accountIdentifier;
    if (accountIdentifier == v38)
    {
    }

    else
    {
      accountIdentifier2 = [(StoreKitClientIdentity *)self->_clientIdentity accountIdentifier];
      v16 = accountIdentifier2;
      if (!accountIdentifier2 || !v38)
      {

LABEL_19:
        +[SSLogConfig sharedDaemonConfig];
        v19 = v7 = v37;
        if (!v19)
        {
          v19 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v19 shouldLog];
        if ([v19 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject = [v19 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v22 = shouldLog;
        }

        else
        {
          v22 = shouldLog & 2;
        }

        if (v22)
        {
          *v43 = 138412546;
          *&v43[4] = objc_opt_class();
          *&v43[12] = 2112;
          *&v43[14] = bundleIdentifier;
          v23 = *&v43[4];
          LODWORD(v36) = 22;
          v35 = v43;
          v24 = _os_log_send_and_compose_impl();

          if (v24)
          {
            v25 = [NSString stringWithCString:v24 encoding:4, v43, v36];
            free(v24);
            v35 = v25;
            SSFileLog();
          }
        }

        else
        {
        }

        *v43 = 0;
        *&v43[8] = v43;
        *&v43[16] = 0x3032000000;
        v44 = sub_1001FA994;
        v45 = sub_1001FA9A4;
        v46 = 0;
        v26 = dispatch_semaphore_create(0);
        clientAuditTokenData = [(ClaimStoreKitClientOperation *)self clientAuditTokenData];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1001FA9AC;
        v40[3] = &unk_10032C2E8;
        v42 = v43;
        v28 = v26;
        v41 = v28;
        [AppStoreUtility checkFirstPartyClaimsWithAuditTokenData:clientAuditTokenData completionBlock:v40];

        dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
        if ([*(*&v43[8] + 40) count])
        {
          firstObject = [*(*&v43[8] + 40) firstObject];
          v30 = [LSApplicationProxy applicationProxyForIdentifier:firstObject];
          if (v30)
          {
            [(ClaimStoreKitClientOperation *)self lock];
            clientIdentity = self->_clientIdentity;
            itemID2 = [v30 itemID];
            [(StoreKitClientIdentity *)clientIdentity setStoreIdentifier:itemID2];

            v33 = self->_clientIdentity;
            externalVersionIdentifier2 = [v30 externalVersionIdentifier];
            [(StoreKitClientIdentity *)v33 setStoreVersion:externalVersionIdentifier2];

            [(ClaimStoreKitClientOperation *)self unlock];
          }

          v7 = v37;
        }

        _Block_object_dispose(v43, 8);
        goto LABEL_35;
      }

      accountIdentifier3 = [(StoreKitClientIdentity *)self->_clientIdentity accountIdentifier];
      v18 = [accountIdentifier3 isEqualToNumber:v38];

      if (!v18)
      {
        goto LABEL_19;
      }
    }

    [(ClaimStoreKitClientOperation *)self lock];
    [(StoreKitClientIdentity *)self->_clientIdentity setStoreIdentifier:itemID];
    [(StoreKitClientIdentity *)self->_clientIdentity setStoreVersion:externalVersionIdentifier];
    [(ClaimStoreKitClientOperation *)self unlock];
    v7 = v37;
LABEL_35:

    goto LABEL_36;
  }

LABEL_4:
  v4 = 0;
  v5 = 1;
LABEL_5:
  [(ClaimStoreKitClientOperation *)self setError:v4, v35];
  [(ClaimStoreKitClientOperation *)self setSuccess:v5];
}

@end