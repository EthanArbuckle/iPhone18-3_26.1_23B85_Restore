@interface ClaimStoreKitClientOperation
- (ClaimStoreKitClientOperation)initWithClientIdentity:(id)a3;
- (NSData)clientAuditTokenData;
- (StoreKitClientIdentity)clientIdentity;
- (void)run;
- (void)setClientAuditTokenData:(id)a3;
@end

@implementation ClaimStoreKitClientOperation

- (ClaimStoreKitClientOperation)initWithClientIdentity:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ClaimStoreKitClientOperation;
  v5 = [(ClaimStoreKitClientOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)setClientAuditTokenData:(id)a3
{
  v5 = a3;
  [(ClaimStoreKitClientOperation *)self lock];
  if (self->_clientAuditTokenData != v5)
  {
    objc_storeStrong(&self->_clientAuditTokenData, a3);
  }

  [(ClaimStoreKitClientOperation *)self unlock];
}

- (void)run
{
  v3 = [(StoreKitClientIdentity *)self->_clientIdentity storeIdentifier];
  if (!v3)
  {
    if ([(StoreKitClientIdentity *)self->_clientIdentity isSandboxed])
    {
      goto LABEL_4;
    }

    v6 = [(StoreKitClientIdentity *)self->_clientIdentity bundleIdentifier];
    v5 = v6 != 0;
    if (!v6)
    {
      v4 = [NSError errorWithDomain:SSErrorDomain code:116 userInfo:0];
LABEL_37:

      goto LABEL_5;
    }

    v7 = [LSApplicationProxy applicationProxyForIdentifier:v6];
    v8 = [v7 applicationType];
    v9 = [v8 isEqualToString:LSSystemApplicationType];

    if (!v9)
    {
LABEL_36:

      v4 = 0;
      goto LABEL_37;
    }

    v10 = [NSNumber alloc];
    v11 = [v7 applicationDSID];
    v38 = [v10 initWithLongLong:{objc_msgSend(v11, "longLongValue")}];

    v12 = [v7 itemID];
    v39 = [v7 externalVersionIdentifier];
    v37 = v7;
    if (!v12 || !v39)
    {
      goto LABEL_19;
    }

    v13 = [(StoreKitClientIdentity *)self->_clientIdentity accountIdentifier];
    v14 = v13;
    if (v13 == v38)
    {
    }

    else
    {
      v15 = [(StoreKitClientIdentity *)self->_clientIdentity accountIdentifier];
      v16 = v15;
      if (!v15 || !v38)
      {

LABEL_19:
        +[SSLogConfig sharedDaemonConfig];
        v19 = v7 = v37;
        if (!v19)
        {
          v19 = +[SSLogConfig sharedConfig];
        }

        v20 = [v19 shouldLog];
        if ([v19 shouldLogToDisk])
        {
          v20 |= 2u;
        }

        v21 = [v19 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = v20;
        }

        else
        {
          v22 = v20 & 2;
        }

        if (v22)
        {
          *v43 = 138412546;
          *&v43[4] = objc_opt_class();
          *&v43[12] = 2112;
          *&v43[14] = v6;
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
        v27 = [(ClaimStoreKitClientOperation *)self clientAuditTokenData];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1001FA9AC;
        v40[3] = &unk_10032C2E8;
        v42 = v43;
        v28 = v26;
        v41 = v28;
        [AppStoreUtility checkFirstPartyClaimsWithAuditTokenData:v27 completionBlock:v40];

        dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
        if ([*(*&v43[8] + 40) count])
        {
          v29 = [*(*&v43[8] + 40) firstObject];
          v30 = [LSApplicationProxy applicationProxyForIdentifier:v29];
          if (v30)
          {
            [(ClaimStoreKitClientOperation *)self lock];
            clientIdentity = self->_clientIdentity;
            v32 = [v30 itemID];
            [(StoreKitClientIdentity *)clientIdentity setStoreIdentifier:v32];

            v33 = self->_clientIdentity;
            v34 = [v30 externalVersionIdentifier];
            [(StoreKitClientIdentity *)v33 setStoreVersion:v34];

            [(ClaimStoreKitClientOperation *)self unlock];
          }

          v7 = v37;
        }

        _Block_object_dispose(v43, 8);
        goto LABEL_35;
      }

      v17 = [(StoreKitClientIdentity *)self->_clientIdentity accountIdentifier];
      v18 = [v17 isEqualToNumber:v38];

      if (!v18)
      {
        goto LABEL_19;
      }
    }

    [(ClaimStoreKitClientOperation *)self lock];
    [(StoreKitClientIdentity *)self->_clientIdentity setStoreIdentifier:v12];
    [(StoreKitClientIdentity *)self->_clientIdentity setStoreVersion:v39];
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