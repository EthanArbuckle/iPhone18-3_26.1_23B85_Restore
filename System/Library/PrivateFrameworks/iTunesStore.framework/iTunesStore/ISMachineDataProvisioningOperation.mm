@interface ISMachineDataProvisioningOperation
- (BOOL)_finishProvisioningWithResponse:(id)a3 sessionID:(unsigned int)a4 error:(id *)a5;
- (BOOL)allowsBootstrapCellularData;
- (BOOL)hidesServerDrivenDialogs;
- (ISMachineDataProvisioningOperation)initWithAccountIdentifier:(unint64_t)a3 provisioningData:(id)a4;
- (NSString)userAgent;
- (id)_newFinishProvisioningOperationWithData:(id)a3;
- (int64_t)protocolVersion;
- (void)run;
- (void)setAllowsBootstrapCellularData:(BOOL)a3;
- (void)setHidesServerDrivenDialogs:(BOOL)a3;
- (void)setProtocolVersion:(int64_t)a3;
- (void)setUserAgent:(id)a3;
@end

@implementation ISMachineDataProvisioningOperation

- (ISMachineDataProvisioningOperation)initWithAccountIdentifier:(unint64_t)a3 provisioningData:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ISMachineDataProvisioningOperation;
  v7 = [(ISOperation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_accountID = a3;
    v9 = [v6 copy];
    inputData = v8->_inputData;
    v8->_inputData = v9;
  }

  return v8;
}

- (BOOL)allowsBootstrapCellularData
{
  [(ISOperation *)self lock];
  allowsBootstrapCellularData = self->_allowsBootstrapCellularData;
  [(ISOperation *)self unlock];
  return allowsBootstrapCellularData;
}

- (BOOL)hidesServerDrivenDialogs
{
  [(ISOperation *)self lock];
  hidesServerDrivenDialogs = self->_hidesServerDrivenDialogs;
  [(ISOperation *)self unlock];
  return hidesServerDrivenDialogs;
}

- (int64_t)protocolVersion
{
  [(ISOperation *)self lock];
  protocolVersion = self->_protocolVersion;
  [(ISOperation *)self unlock];
  return protocolVersion;
}

- (void)setAllowsBootstrapCellularData:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_allowsBootstrapCellularData = a3;

  [(ISOperation *)self unlock];
}

- (void)setHidesServerDrivenDialogs:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_hidesServerDrivenDialogs = a3;

  [(ISOperation *)self unlock];
}

- (void)setProtocolVersion:(int64_t)a3
{
  [(ISOperation *)self lock];
  self->_protocolVersion = a3;

  [(ISOperation *)self unlock];
}

- (void)setUserAgent:(id)a3
{
  v6 = a3;
  [(ISOperation *)self lock];
  if (self->_userAgent != v6)
  {
    v4 = [(NSString *)v6 copy];
    userAgent = self->_userAgent;
    self->_userAgent = v4;
  }

  [(ISOperation *)self unlock];
}

- (NSString)userAgent
{
  [(ISOperation *)self lock];
  v3 = self->_userAgent;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v73 = *MEMORY[0x277D85DE8];
  v63 = 0;
  v64 = 0;
  accountID = self->_accountID;
  if ([(ISMachineDataProvisioningOperation *)self protocolVersion]== 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = accountID;
  }

  inputData = self->_inputData;
  v6 = SSVAnisetteProvisioningStart();
  v7 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v8 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v20 = MEMORY[0x277CCACA8];
      v21 = v19;
      v22 = [v20 stringWithFormat:@"%llu", v4];
      v23 = SSHashIfNeeded();
      v65 = 138543874;
      v66 = v19;
      v67 = 2114;
      v68 = v23;
      v69 = 2048;
      v70 = v63;
      LODWORD(v58) = 32;
      v57 = &v65;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
        goto LABEL_27;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:{4, &v65, v58}];
      free(v24);
      v57 = v17;
      SSFileLog();
    }

LABEL_27:
    v25 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v64 length:HIDWORD(v63) freeWhenDone:0];
    v26 = [(ISMachineDataProvisioningOperation *)self _newFinishProvisioningOperationWithData:v25];
    v62 = 0;
    v27 = [(ISOperation *)self runSubOperation:v26 returningError:&v62];
    v28 = v62;
    v29 = v28;
    if (v27)
    {
      v59 = v25;
      v30 = [v26 dataProvider];
      v31 = [v30 output];
      v61 = v29;
      v32 = [(ISMachineDataProvisioningOperation *)self _finishProvisioningWithResponse:v31 sessionID:v63 error:&v61];
      v33 = v61;

      if (v32)
      {
        v34 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
        if (!v34)
        {
          v34 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v35 = [v34 shouldLog];
        if ([v34 shouldLogToDisk])
        {
          v36 = v35 | 2;
        }

        else
        {
          v36 = v35;
        }

        v37 = [v34 OSLogObject];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v36;
        }

        else
        {
          v38 = v36 & 2;
        }

        if (!v38)
        {
          v45 = 1;
          v25 = v59;
          goto LABEL_59;
        }

        v39 = objc_opt_class();
        v40 = MEMORY[0x277CCACA8];
        v41 = v39;
        v42 = [v40 stringWithFormat:@"%llu", v4];
        v43 = SSHashIfNeeded();
        v65 = 138543874;
        v66 = v39;
        v67 = 2114;
        v68 = v43;
        v69 = 2048;
        v70 = v63;
        LODWORD(v58) = 32;
        v57 = &v65;
        v44 = _os_log_send_and_compose_impl();

        v45 = 1;
        if (!v44)
        {
          v25 = v59;
          goto LABEL_60;
        }

        v25 = v59;
        goto LABEL_55;
      }

      v25 = v59;
    }

    else
    {
      v33 = v28;
    }

    v34 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!v34)
    {
      v34 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v47 = [v34 shouldLog];
    if ([v34 shouldLogToDisk])
    {
      v48 = v47 | 2;
    }

    else
    {
      v48 = v47;
    }

    v37 = [v34 OSLogObject];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v49 = v48;
    }

    else
    {
      v49 = v48 & 2;
    }

    if (!v49)
    {
      v45 = 0;
      goto LABEL_59;
    }

    v60 = v26;
    v50 = v25;
    v51 = objc_opt_class();
    v52 = MEMORY[0x277CCACA8];
    v53 = v51;
    v54 = [v52 stringWithFormat:@"%llu", v4];
    v55 = SSHashIfNeeded();
    v65 = 138544130;
    v66 = v51;
    v67 = 2114;
    v68 = v55;
    v69 = 2048;
    v70 = v63;
    v71 = 2114;
    v72 = v33;
    LODWORD(v58) = 42;
    v57 = &v65;
    v44 = _os_log_send_and_compose_impl();

    v45 = 0;
    v25 = v50;
    if (!v44)
    {
      v26 = v60;
LABEL_60:

      goto LABEL_61;
    }

    v26 = v60;
LABEL_55:
    v37 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v65, v58}];
    free(v44);
    v57 = v37;
    SSFileLog();
LABEL_59:

    goto LABEL_60;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v65 = 138543618;
    v66 = objc_opt_class();
    v67 = 2048;
    v68 = v6;
    v12 = v66;
    LODWORD(v58) = 22;
    v57 = &v65;
    v13 = _os_log_send_and_compose_impl();

    if (v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v65, v58}];
      free(v13);
      v57 = v14;
      SSFileLog();
    }
  }

  else
  {
  }

  v46 = *MEMORY[0x277D6A5F8];
  v33 = SSError();
  v45 = 0;
LABEL_61:
  if (v64)
  {
    MEMORY[0x277C8BA80]();
  }

  if (v63)
  {
    MEMORY[0x277C8BA60]();
  }

  [(ISOperation *)self setError:v33, v57];
  [(ISOperation *)self setSuccess:v45];

  v56 = *MEMORY[0x277D85DE8];
}

- (BOOL)_finishProvisioningWithResponse:(id)a3 sessionID:(unsigned int)a4 error:(id *)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 objectForKey:@"transportKey"];
  v9 = [v7 objectForKey:@"keybag"];
  v10 = [v7 objectForKey:@"settingInfo"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!v21)
    {
      v21 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (!v23)
    {
      goto LABEL_36;
    }

    v49 = 138543618;
    v50 = objc_opt_class();
    v51 = 2114;
    v52 = v10;
    v25 = v50;
    LODWORD(v46) = 22;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!v21)
    {
      v21 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v26 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 &= 2u;
    }

    if (!v27)
    {
      goto LABEL_36;
    }

    v49 = 138543618;
    v50 = objc_opt_class();
    v51 = 2114;
    v52 = v8;
    v25 = v50;
    LODWORD(v46) = 22;
LABEL_34:
    v28 = _os_log_send_and_compose_impl();

    if (!v28)
    {
LABEL_37:

      v29 = 0;
      goto LABEL_38;
    }

    v24 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v49, v46}];
    free(v28);
    SSFileLog();
LABEL_36:

    goto LABEL_37;
  }

  if ([v9 length] && (SSVFairPlayImportKeybagData() & 1) == 0)
  {
    v33 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
    if (!v33)
    {
      v33 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v34 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v35 = v34 | 2;
    }

    else
    {
      v35 = v34;
    }

    v36 = [v33 OSLogObject];
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v49 = 138543362;
      v50 = objc_opt_class();
      v37 = v50;
      LODWORD(v46) = 12;
      v38 = _os_log_send_and_compose_impl();

      if (!v38)
      {
LABEL_53:

        v39 = *MEMORY[0x277D6A110];
        v29 = SSError();
LABEL_38:
        v13 = 0;
        if (!a5)
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      v36 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:{4, &v49, v46}];
      free(v38);
      SSFileLog();
    }

    goto LABEL_53;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];
  v47 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0];
  v48 = v11;
  v12 = SSVAnisetteProvisioningEnd();
  v13 = v12 == 0;
  v14 = [MEMORY[0x277D69B38] sharedFairPlayAnisetteConfig];
  v15 = v14;
  if (!v12)
  {
    if (!v14)
    {
      v15 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v40 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v41 = v40 | 2;
    }

    else
    {
      v41 = v40;
    }

    v42 = [v15 OSLogObject];
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v41 &= 2u;
    }

    if (v41)
    {
      v49 = 138543618;
      v50 = objc_opt_class();
      v51 = 2048;
      v52 = a4;
      v43 = v50;
      LODWORD(v46) = 22;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
LABEL_65:

        v29 = 0;
        goto LABEL_68;
      }

      v42 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v49, v46}];
      free(v44);
      SSFileLog();
    }

    goto LABEL_65;
  }

  if (!v14)
  {
    v15 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v16 |= 2u;
  }

  v17 = [v15 OSLogObject];
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v16 &= 2u;
  }

  if (v16)
  {
    v49 = 138543618;
    v50 = objc_opt_class();
    v51 = 2048;
    v52 = v12;
    v18 = v50;
    LODWORD(v46) = 22;
    v19 = _os_log_send_and_compose_impl();

    if (v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:{4, &v49, v46}];
      free(v19);
      SSFileLog();
    }
  }

  else
  {
  }

  v45 = *MEMORY[0x277D6A5F8];
  v29 = SSError();
LABEL_68:

  if (!a5)
  {
    goto LABEL_41;
  }

LABEL_39:
  if (!v13)
  {
    v30 = v29;
    *a5 = v29;
  }

LABEL_41:

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_newFinishProvisioningOperationWithData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISStoreURLOperation);
  [(ISStoreURLOperation *)v5 setShouldSendXTokenHeader:1];
  [(ISStoreURLOperation *)v5 setUseUserSpecificURLBag:1];
  v6 = [(ISMachineDataProvisioningOperation *)self hidesServerDrivenDialogs];
  v7 = [(ISMachineDataProvisioningOperation *)self userAgent];
  v8 = +[(ISDataProvider *)ISProtocolDataProvider];
  v9 = !v6;
  [v8 setShouldProcessAuthenticationDialogs:!v6];
  [v8 setShouldProcessDialogs:!v6];
  [(ISURLOperation *)v5 setDataProvider:v8];
  v10 = objc_alloc(MEMORY[0x277D69BC8]);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_accountID];
  v12 = [v10 initWithAccountIdentifier:v11];

  if (!v9)
  {
    [v12 setPromptStyle:1000];
    [v12 setShouldSuppressDialogs:1];
  }

  [v12 setAllowsBootstrapCellularData:{-[ISMachineDataProvisioningOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  v13 = *MEMORY[0x277D6A130];
  [v12 setValue:v7 forHTTPHeaderField:*MEMORY[0x277D6A130]];
  [(ISURLOperation *)v5 setAuthenticationContext:v12];
  v14 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v14 setAllowedRetryCount:0];
  [v14 setAllowsBootstrapCellularData:{-[ISMachineDataProvisioningOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  [v14 setHTTPMethod:@"POST"];
  [v14 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  [v14 setValue:v7 forHTTPHeaderField:v13];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [v4 base64EncodedStringWithOptions:0];

  [v15 setObject:v16 forKey:@"clientData"];
  v17 = +[ISDevice sharedInstance];
  v18 = [v17 guid];

  if (v18)
  {
    [v15 setObject:v18 forKey:@"guid"];
  }

  v19 = [(ISMachineDataProvisioningOperation *)self protocolVersion];
  if (v19 == 1)
  {
    [v14 setURLBagKey:@"amd-finish-provisioning"];
  }

  else if (!v19)
  {
    accountID = self->_accountID;
    v21 = SSVFairPlayCopyKeyBagSyncData();
    if (v21)
    {
      [v15 setObject:v21 forKey:@"kbsync"];
    }

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_accountID];
    [v15 setObject:v22 forKey:@"dsId"];

    [v14 setURLBagKey:@"md-finish-provisioning"];
  }

  v23 = [MEMORY[0x277CCAC58] dataWithPropertyList:v15 format:100 options:0 error:0];
  [v14 setHTTPBody:v23];

  [(ISURLOperation *)v5 setRequestProperties:v14];
  return v5;
}

@end