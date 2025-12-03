@interface SSVPlaybackSubscriptionLeaseRequest
- (id)_actionParameterValue;
- (id)_copyBodyDictionaryWithFairPlaySession:(void *)session;
- (unsigned)_transactionType;
@end

@implementation SSVPlaybackSubscriptionLeaseRequest

- (id)_actionParameterValue
{
  _actionType = [(SSVPlaybackLeaseRequest *)self _actionType];
  if (_actionType == 2)
  {
    return @"lease-renew";
  }

  v4 = @"lease-start";
  if (_actionType == 1 && ![(SSVPlaybackLeaseRequest *)self startsLeaseSession])
  {
    return @"lease-renew";
  }

  return v4;
}

- (id)_copyBodyDictionaryWithFairPlaySession:(void *)session
{
  v41 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = SSVPlaybackSubscriptionLeaseRequest;
  v4 = [(SSVPlaybackLeaseRequest *)&v38 _copyBodyDictionaryWithFairPlaySession:session];
  v5 = +[SSAccountStore defaultStore];
  activeAccount = [v5 activeAccount];

  _certificateData = [(SSVPlaybackLeaseRequest *)self _certificateData];
  v8 = _certificateData;
  if (activeAccount)
  {
    v9 = _certificateData == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    uniqueIdentifier = [activeAccount uniqueIdentifier];
    unsignedLongLongValue = [uniqueIdentifier unsignedLongLongValue];

    v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"lease" length:5 freeWhenDone:0];
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v13 = SSVFairPlayContextIdentifier();
    PhUojZmspd(v13, unsignedLongLongValue, -[SSVPlaybackSubscriptionLeaseRequest _transactionType](self, "_transactionType"), [v8 bytes], objc_msgSend(v8, "length"), objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), &v37, &v36, &v35, &v34);
    if (v14)
    {
      v15 = v14;
      v16 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v16)
      {
        v16 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v16 shouldLog];
      if ([v16 shouldLogToDisk])
      {
        v18 = shouldLog | 2;
      }

      else
      {
        v18 = shouldLog;
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v18;
      }

      else
      {
        v20 = v18 & 2;
      }

      if (v20)
      {
        v39 = 134217984;
        v40 = v15;
        LODWORD(v33) = 12;
        v21 = _os_log_send_and_compose_impl();

        if (!v21)
        {
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v39, v33}];
        free(v21);
        SSFileLog(v16, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject);
      }
    }

    else
    {
      if (v34)
      {
        v28 = objc_alloc(MEMORY[0x1E695DEF0]);
        v29 = [v28 initWithBytesNoCopy:v35 length:v34 deallocator:&__block_literal_global_44];
        v30 = [v29 base64EncodedStringWithOptions:0];
        [v4 setObject:v30 forKey:@"sbsync"];
      }

      if (!v36)
      {
        goto LABEL_23;
      }

      v31 = objc_alloc(MEMORY[0x1E695DEF0]);
      v16 = [v31 initWithBytesNoCopy:v37 length:v36 deallocator:&__block_literal_global_16];
      oSLogObject = [v16 base64EncodedStringWithOptions:0];
      [v4 setObject:oSLogObject forKey:@"spc"];
    }

    goto LABEL_22;
  }

LABEL_24:

  return v4;
}

- (unsigned)_transactionType
{
  _actionType = [(SSVPlaybackLeaseRequest *)self _actionType];
  if (_actionType == 2)
  {
    return 310;
  }

  if (_actionType == 1)
  {
    if ([(SSVPlaybackLeaseRequest *)self startsLeaseSession])
    {
      return 308;
    }

    else
    {
      return 310;
    }
  }

  else if (_actionType)
  {
    return 0;
  }

  else
  {
    return 308;
  }
}

@end