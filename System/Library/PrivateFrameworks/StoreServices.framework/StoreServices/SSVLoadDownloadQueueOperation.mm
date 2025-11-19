@interface SSVLoadDownloadQueueOperation
+ (id)newLoadAutomaticDownloadQueueOperation;
- (BOOL)_loadDownloadsFromStart:(id)a3 toEnd:(id)a4 url:(id)a5;
- (BOOL)featureEnabledForBagKey:(id)a3 bagContext:(id)a4 error:(id *)a5;
- (BOOL)needsAuthentication;
- (NSMutableOrderedSet)downloads;
- (NSNumber)accountIdentifier;
- (NSString)requestIdentifier;
- (SSVLoadDownloadQueueOperation)init;
- (SSVLoadDownloadQueueOperation)initWithRequestProperties:(id)a3;
- (id)_account;
- (id)_newURLOperationWithStartIdentifier:(id)a3 endIdentifier:(id)a4 url:(id)a5;
- (id)gzipData:(id)a3;
- (id)resolveBagURLForKey:(id)a3 bagContext:(id)a4 error:(id *)a5;
- (int64_t)reason;
- (void)_handleResponse:(id)a3;
- (void)addGUIDToBody:(id)a3;
- (void)addKeybagSyncToBody:(id)a3;
- (void)importKeybagSync:(id)a3;
- (void)main;
- (void)setAccountIdentifier:(id)a3;
- (void)setDownloadsMetadata:(id)a3;
- (void)setNeedsAuthentication:(BOOL)a3;
- (void)setReason:(int64_t)a3;
- (void)setRequestIdentifier:(id)a3;
- (void)setStoreCorrelationID:(id)a3;
@end

@implementation SSVLoadDownloadQueueOperation

- (SSVLoadDownloadQueueOperation)init
{
  v6.receiver = self;
  v6.super_class = SSVLoadDownloadQueueOperation;
  v2 = [(SSVOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (SSVLoadDownloadQueueOperation)initWithRequestProperties:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSVLoadDownloadQueueOperation;
  v5 = [(SSVOperation *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = objc_alloc_init(SSURLRequestProperties);
    }

    v7 = v6;
    objc_storeStrong(&v5->_requestProperties, v6);

    [(SSVLoadDownloadQueueOperation *)v5 setPowerAssertionIdentifier:@"com.apple.storeservices.download-queue"];
    v8 = [(SSURLRequestProperties *)v5->_requestProperties URLBagKey];
    [(SSVLoadDownloadQueueOperation *)v5 setRequestIdentifier:v8];
  }

  return v5;
}

+ (id)newLoadAutomaticDownloadQueueOperation
{
  v2 = objc_alloc_init(SSMutableURLRequestProperties);
  [(SSMutableURLRequestProperties *)v2 setHTTPMethod:@"POST"];
  [(SSMutableURLRequestProperties *)v2 setURLBagURLBlock:&__block_literal_global_45];
  v3 = [objc_alloc(objc_opt_class()) initWithRequestProperties:v2];
  [v3 setNeedsAuthentication:0];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"automatic-downloads2", @"downloads-url"];
  [v3 setRequestIdentifier:v4];

  return v3;
}

id __71__SSVLoadDownloadQueueOperation_newLoadAutomaticDownloadQueueOperation__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [SSURLBag URLBagForContext:a2];
  v3 = [v2 valueForKey:@"automatic-downloads2"];
  if (!v3)
  {
    v3 = [v2 valueForKey:@"automatic-downloads"];
  }

  v4 = [v3 objectForKey:@"downloads-url"];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)accountIdentifier
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  v3 = self->_accountIdentifier;
  [(SSVLoadDownloadQueueOperation *)self unlock];

  return v3;
}

- (void)addKeybagSyncToBody:(id)a3
{
  v4 = a3;
  v13 = 0;
  v12 = 0;
  v5 = [(SSVLoadDownloadQueueOperation *)self accountIdentifier];
  v6 = [v5 longLongValue];

  v7 = SSVFairPlayContextIdentifier();
  Mt76Vq80ux(v7, v6, 0, 1, &v13, &v12);
  if (!v8 && v13)
  {
    v9 = objc_alloc(MEMORY[0x1E695DEF0]);
    v10 = [v9 initWithBytesNoCopy:v13 length:v12 freeWhenDone:0];
    v11 = [v10 base64EncodedStringWithOptions:0];
    if (v11)
    {
      [v4 setObject:v11 forKey:@"kbsync"];
    }

    jEHf8Xzsv8K(v13);
  }
}

- (void)addGUIDToBody:(id)a3
{
  v3 = a3;
  v5 = +[SSDevice currentDevice];
  v4 = [v5 uniqueDeviceIdentifier];
  [v3 setValue:v4 forKey:@"guid"];
}

- (NSMutableOrderedSet)downloads
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  v3 = self->_downloads;
  [(SSVLoadDownloadQueueOperation *)self unlock];

  return v3;
}

- (BOOL)featureEnabledForBagKey:(id)a3 bagContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v8 = [SSURLBagContext contextWithBagType:0];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = [SSURLBag URLBagForContext:v8];
  v15 = 0;
  v10 = [v9 valueForKey:v7 error:&v15];
  v11 = v15;
  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v10 BOOLValue];
      if (!a5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v12 = 0;
  if (a5)
  {
LABEL_8:
    v13 = v11;
    *a5 = v11;
  }

LABEL_9:

LABEL_12:
  return v12;
}

- (id)gzipData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v5];
    memset(&v11.avail_in, 0, 104);
    v11.avail_in = v5;
    v11.avail_out = v5;
    v11.next_out = [v7 mutableBytes];
    if (v7 && !deflateInit2_(&v11, -1, 8, 31, 8, 0, "1.2.12", 112) && (v8 = deflate(&v11, 4), v9 = deflateEnd(&v11), v8 == 1))
    {
      v6 = 0;
      if (!v9 && v5 == v11.total_in)
      {
        [v7 setLength:v11.total_out];
        v6 = v7;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)importKeybagSync:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  LODWORD(v17) = 138412290;
  *(&v17 + 4) = objc_opt_class();
  v8 = *(&v17 + 4);
  LODWORD(v16) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v17, v16, v17}];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, v7);
LABEL_11:
  }

  SSVFairPlayContextIdentifier();
  [v3 bytes];
  [v3 length];

  lCUad();
}

- (BOOL)needsAuthentication
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  needsAuthentication = self->_needsAuthentication;
  [(SSVLoadDownloadQueueOperation *)self unlock];
  return needsAuthentication;
}

- (int64_t)reason
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  reason = self->_reason;
  [(SSVLoadDownloadQueueOperation *)self unlock];
  return reason;
}

- (id)resolveBagURLForKey:(id)a3 bagContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v8 = [SSURLBagContext contextWithBagType:0];
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = [SSURLBag URLBagForContext:v8];
  v16 = 0;
  v10 = [v9 valueForKey:v7 error:&v16];
  v11 = v16;
  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v10];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v10 valueForKey:@"downloads-url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [MEMORY[0x1E695DFF8] URLWithString:v13];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_9:
  v13 = v10;
LABEL_10:

LABEL_11:
  if (!(v12 | v11))
  {
    v11 = SSError(@"SSErrorDomain", 124, 0, 0);
  }

  if (a5)
  {
    v14 = v11;
    *a5 = v11;
  }

  return v12;
}

- (NSString)requestIdentifier
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  v3 = self->_requestIdentifier;
  [(SSVLoadDownloadQueueOperation *)self unlock];

  return v3;
}

- (void)setAccountIdentifier:(id)a3
{
  v5 = a3;
  [(SSVLoadDownloadQueueOperation *)self lock];
  if (self->_accountIdentifier != v5)
  {
    objc_storeStrong(&self->_accountIdentifier, a3);
  }

  [(SSVLoadDownloadQueueOperation *)self unlock];
}

- (void)setNeedsAuthentication:(BOOL)a3
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  self->_needsAuthentication = a3;

  [(SSVLoadDownloadQueueOperation *)self unlock];
}

- (void)setDownloadsMetadata:(id)a3
{
  v4 = a3;
  [(SSVLoadDownloadQueueOperation *)self lock];
  v5 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v4];

  downloads = self->_downloads;
  self->_downloads = v5;

  [(SSVLoadDownloadQueueOperation *)self unlock];
}

- (void)setReason:(int64_t)a3
{
  [(SSVLoadDownloadQueueOperation *)self lock];
  self->_reason = a3;

  [(SSVLoadDownloadQueueOperation *)self unlock];
}

- (void)setRequestIdentifier:(id)a3
{
  v6 = a3;
  [(SSVLoadDownloadQueueOperation *)self lock];
  if (self->_requestIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = v4;
  }

  [(SSVLoadDownloadQueueOperation *)self unlock];
}

- (void)setStoreCorrelationID:(id)a3
{
  v4 = a3;
  [(SSVLoadDownloadQueueOperation *)self lock];
  v5 = [v4 copy];

  storeCorrelationID = self->_storeCorrelationID;
  self->_storeCorrelationID = v5;

  [(SSVLoadDownloadQueueOperation *)self unlock];
}

- (void)main
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = [(SSURLRequestProperties *)self->_requestProperties URLBagKey];
  v4 = [SSURLBagContext contextWithBagType:0];
  v5 = [(SSVLoadDownloadQueueOperation *)self requestURL];
  if (!v5)
  {
    v46 = 0;
    v5 = [(SSVLoadDownloadQueueOperation *)self resolveBagURLForKey:v3 bagContext:v4 error:&v46];
    v28 = v46;
    if (v28)
    {
      v27 = v28;
      v29 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v29)
      {
        v29 = +[SSLogConfig sharedConfig];
      }

      v30 = [v29 shouldLog];
      if ([v29 shouldLogToDisk])
      {
        v30 |= 2u;
      }

      v31 = [v29 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 2;
      }

      if (v32)
      {
        v33 = objc_opt_class();
        v47 = 138412546;
        v48 = v33;
        v49 = 2112;
        v50 = v27;
        v34 = v33;
        LODWORD(v43) = 22;
        v35 = _os_log_send_and_compose_impl();

        if (!v35)
        {
LABEL_31:

          [(SSVOperation *)self setError:v27];
          goto LABEL_32;
        }

        v31 = [MEMORY[0x1E696AEC0] stringWithCString:v35 encoding:{4, &v47, v43}];
        free(v35);
        SSFileLog(v29, @"%@", v36, v37, v38, v39, v40, v41, v31);
      }

      goto LABEL_31;
    }
  }

  v45 = v3;
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
  v9 = [v6 initWithObjects:{v7, v8, 0}];
  rangesToLoad = self->_rangesToLoad;
  self->_rangesToLoad = v9;

  if ([(NSMutableArray *)self->_rangesToLoad count]>= 2)
  {
    while (1)
    {
      if (([(SSVLoadDownloadQueueOperation *)self isCancelled]& 1) != 0)
      {
        goto LABEL_18;
      }

      v11 = [(NSMutableArray *)self->_rangesToLoad objectAtIndex:0];
      v12 = [(NSMutableArray *)self->_rangesToLoad objectAtIndex:1];
      if (![(SSVLoadDownloadQueueOperation *)self _loadDownloadsFromStart:v11 toEnd:v12 url:v5])
      {
        [(NSMutableArray *)self->_rangesToLoad removeAllObjects];
        goto LABEL_17;
      }

      v13 = v5;
      v14 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      v15 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        v15 |= 2u;
      }

      v16 = [v14 OSLogObject];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v15 &= 2u;
      }

      if (!v15)
      {
        goto LABEL_14;
      }

      v17 = objc_opt_class();
      accountIdentifier = self->_accountIdentifier;
      v47 = 138413058;
      v48 = v17;
      v49 = 2112;
      v50 = accountIdentifier;
      v51 = 2112;
      v52 = v11;
      v53 = 2112;
      v54 = v12;
      v19 = v17;
      LODWORD(v44) = 42;
      v42 = &v47;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        break;
      }

LABEL_15:

      [(NSMutableArray *)self->_rangesToLoad removeObjectsInRange:0, 2];
      [(SSVOperation *)self setSuccess:[(NSMutableArray *)self->_rangesToLoad count]== 0];
      v5 = v13;
LABEL_17:

      if ([(NSMutableArray *)self->_rangesToLoad count]<= 1)
      {
        goto LABEL_18;
      }
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v47, v44}];
    free(v20);
    SSFileLog(v14, @"%@", v21, v22, v23, v24, v25, v26, v16);
LABEL_14:

    goto LABEL_15;
  }

LABEL_18:
  v27 = self->_rangesToLoad;
  self->_rangesToLoad = 0;
  v3 = v45;
LABEL_32:
}

- (id)_account
{
  v2 = [(SSVLoadDownloadQueueOperation *)self accountIdentifier];
  if (!v2 || (+[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accountWithUniqueIdentifier:v2], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = +[SSAccountStore defaultStore];
    v4 = [v5 activeAccount];
  }

  return v4;
}

- (void)_handleResponse:(id)a3
{
  v9 = a3;
  v4 = [v9 rangesToLoad];
  if ([v4 count])
  {
    [(NSMutableArray *)self->_rangesToLoad addObjectsFromArray:v4];
  }

  v5 = [v9 downloads];

  if (v5)
  {
    [(SSVLoadDownloadQueueOperation *)self lock];
    downloads = self->_downloads;
    if (!downloads)
    {
      v7 = objc_opt_new();
      v8 = self->_downloads;
      self->_downloads = v7;

      downloads = self->_downloads;
    }

    [(NSMutableOrderedSet *)downloads unionOrderedSet:v5];
    [(SSVLoadDownloadQueueOperation *)self unlock];
  }
}

- (BOOL)_loadDownloadsFromStart:(id)a3 toEnd:(id)a4 url:(id)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v55 = a5;
  v10 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v11 |= 2u;
  }

  v12 = [v10 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = [(SSVLoadDownloadQueueOperation *)self requestIdentifier];
    *v78 = 138413314;
    *&v78[4] = v14;
    *&v78[12] = 2112;
    *&v78[14] = v16;
    *&v78[22] = 2112;
    v79 = v8;
    *v80 = 2112;
    *&v80[2] = v9;
    *&v80[10] = 2048;
    *&v80[12] = [(SSVLoadDownloadQueueOperation *)self reason];
    LODWORD(v53) = 52;
    v52 = v78;
    v17 = _os_log_send_and_compose_impl();

    if (v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, v78, v53}];
      free(v17);
      SSFileLog(v10, @"%@", v19, v20, v21, v22, v23, v24, v18);
    }
  }

  else
  {
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  *v78 = 0;
  *&v78[8] = v78;
  *&v78[16] = 0x3032000000;
  v79 = __Block_byref_object_copy__85;
  *v80 = __Block_byref_object_dispose__85;
  *&v80[8] = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__85;
  v68 = __Block_byref_object_dispose__85;
  v69 = 0;
  objc_initWeak(&location, self);
  v25 = [(SSVLoadDownloadQueueOperation *)self _newURLOperationWithStartIdentifier:v8 endIdentifier:v9 url:v55];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __67__SSVLoadDownloadQueueOperation__loadDownloadsFromStart_toEnd_url___block_invoke;
  v56[3] = &unk_1E84B3AF0;
  v56[4] = self;
  v54 = v8;
  v57 = v54;
  v26 = v9;
  v58 = v26;
  v59 = &v70;
  objc_copyWeak(&v62, &location);
  v60 = &v64;
  v61 = v78;
  [v25 setOutputBlock:v56];
  [(SSVOperation *)self runChildOperation:v25];
  v27 = [v25 URLResponse];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 allHeaderFields];
    v30 = [v29 objectForKey:@"x-apple-jingle-correlation-key"];

    if (![v30 length])
    {
LABEL_27:

      goto LABEL_28;
    }

    v31 = [v30 copy];
    storeCorrelationID = self->_storeCorrelationID;
    self->_storeCorrelationID = v31;

    v33 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    v34 = [v33 shouldLog];
    v35 = [v33 shouldLogToDisk];
    v36 = [v33 OSLogObject];
    v37 = v36;
    if (v35)
    {
      v38 = v34 | 2;
    }

    else
    {
      v38 = v34;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 & 2;
    }

    if (v39)
    {
      v40 = objc_opt_class();
      v41 = self->_storeCorrelationID;
      v74 = 138412546;
      v75 = v40;
      v76 = 2114;
      v77 = v41;
      v42 = v40;
      LODWORD(v53) = 22;
      v43 = _os_log_send_and_compose_impl();

      if (!v43)
      {
LABEL_26:

        goto LABEL_27;
      }

      v37 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v74, v53, v54}];
      free(v43);
      SSFileLog(v33, @"%@", v44, v45, v46, v47, v48, v49, v37);
    }

    goto LABEL_26;
  }

LABEL_28:
  if (v71[3])
  {
    [(SSVLoadDownloadQueueOperation *)self _handleResponse:v65[5]];
  }

  else
  {
    [(SSVOperation *)self setError:*(*&v78[8] + 40)];
  }

  v50 = *(v71 + 24);

  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(&v70, 8);

  return v50 & 1;
}

void __67__SSVLoadDownloadQueueOperation__loadDownloadsFromStart_toEnd_url___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    goto LABEL_26;
  }

  v7 = +[SSLogConfig sharedWriteToDiskConfig];
  v8 = [v7 shouldLog];

  if (v8)
  {
    v9 = [*(a1 + 32) requestIdentifier];
    v10 = v9;
    v11 = @"unknown";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = +[SSLogConfig sharedWriteToDiskConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      *v40 = 138413058;
      *&v40[4] = v17;
      *&v40[12] = 2112;
      *&v40[14] = v12;
      *&v40[22] = 2112;
      v41 = v18;
      LOWORD(v42) = 2112;
      *(&v42 + 2) = v19;
      v20 = v17;
      LODWORD(v39) = 42;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_17:

        goto LABEL_18;
      }

      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, v40, v39, *v40, *&v40[16], v41, v42}];
      free(v21);
      SSFileLog(v13, @"%@", v22, v23, v24, v25, v26, v27, v16);
    }

    goto LABEL_17;
  }

LABEL_18:
  *(*(*(a1 + 56) + 8) + 24) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v29 = [v5 objectForKey:@"keybag"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 length])
    {
      [WeakRetained importKeybagSync:v29];
    }
  }

  v30 = [SSVStoreDownloadQueueResponse alloc];
  v31 = [*(a1 + 32) _account];
  v32 = [v31 uniqueIdentifier];
  v33 = [(SSVStoreDownloadQueueResponse *)v30 initWithDictionary:v5 userIdentifier:v32];
  v34 = *(*(a1 + 64) + 8);
  v35 = *(v34 + 40);
  *(v34 + 40) = v33;

  v36 = [*(*(*(a1 + 64) + 8) + 40) storeCorrelationID];

  if (v36)
  {
    v37 = *(a1 + 32);
    v38 = [*(*(*(a1 + 64) + 8) + 40) storeCorrelationID];
    [v37 setStoreCorrelationID:v38];
  }

LABEL_26:
}

- (id)_newURLOperationWithStartIdentifier:(id)a3 endIdentifier:(id)a4 url:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SSVLoadDownloadQueueOperation *)self _account];
  v12 = [(SSURLRequestProperties *)self->_requestProperties mutableCopy];
  [v12 setAllowedRetryCount:0];
  [v12 setURL:v8];

  [v12 setCachePolicy:1];
  [v12 setURLBagType:{SSURLBagTypeForAccountScope(objc_msgSend(v11, "accountScope"))}];
  v13 = [v12 requestParameters];
  v14 = [v13 mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
  }

  v17 = v16;

  if ([(SSVLoadDownloadQueueOperation *)self reason]!= 1)
  {
    [v12 setHTTPMethod:@"POST"];
    [(SSVLoadDownloadQueueOperation *)self addGUIDToBody:v17];
  }

  v18 = +[SSDevice currentDevice];
  v19 = [v18 thinnedApplicationVariantIdentifier];

  if (v19)
  {
    [v12 setValue:v19 forHTTPHeaderField:@"X-Apple-TA-Device"];
  }

  [(SSVLoadDownloadQueueOperation *)self lock];
  mdSyncState = self->_mdSyncState;
  if (mdSyncState)
  {
    [v12 setValue:mdSyncState forHTTPHeaderField:@"X-Apple-MD-S"];
  }

  [(SSVLoadDownloadQueueOperation *)self unlock];
  v21 = [v10 itemIdentifierValue];

  v22 = [v9 itemIdentifierValue];
  if (v21 - 1 < v22)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v21];
    [v17 setObject:v23 forKey:@"startId"];

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v22];
    [v17 setObject:v24 forKey:@"endId"];
  }

  [(SSVLoadDownloadQueueOperation *)self addKeybagSyncToBody:v17];
  if ([v17 count])
  {
    v29 = 0;
    v25 = [MEMORY[0x1E696AE40] dataWithPropertyList:v17 format:100 options:0 error:&v29];
    [v12 setHTTPBody:v25];
  }

  v26 = [[SSVLoadURLOperation alloc] initWithURLRequestProperties:v12];
  v27 = +[(SSVURLDataConsumer *)SSVURLProtocolConsumer];
  [(SSVLoadURLOperation *)v26 setDataConsumer:v27];

  [(SSVLoadURLOperation *)v26 setITunesStoreRequest:1];
  [(SSVLoadURLOperation *)v26 setMachineDataStyle:0];

  return v26;
}

@end