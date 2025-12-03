@interface SSPurchaseReceipt
+ (id)receiptPathForProxy:(id)proxy;
+ (int)vppStateFlagsWithProxy:(id)proxy;
+ (void)getReceiptPathWithCompletionBlock:(id)block;
- (BOOL)receiptExpired;
- (SSPurchaseReceipt)initWithContainerPath:(id)path;
- (SSPurchaseReceipt)initWithContentsOfFile:(id)file;
@end

@implementation SSPurchaseReceipt

- (SSPurchaseReceipt)initWithContentsOfFile:(id)file
{
  fileCopy = file;
  v10.receiver = self;
  v10.super_class = SSPurchaseReceipt;
  v5 = [(SSPurchaseReceipt *)&v10 init];
  if (v5 && (v6 = [[ISPurchaseReceipt alloc] initWithContentsOfFile:fileCopy], purchaseReceipt = v5->_purchaseReceipt, v5->_purchaseReceipt = v6, purchaseReceipt, !v5->_purchaseReceipt))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (SSPurchaseReceipt)initWithContainerPath:(id)path
{
  v4 = [path stringByAppendingPathComponent:@"StoreKit"];
  v5 = [v4 stringByAppendingPathComponent:@"receipt"];

  v6 = [(SSPurchaseReceipt *)self initWithContentsOfFile:v5];
  return v6;
}

+ (void)getReceiptPathWithCompletionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v22 = 136446210;
      v23 = "+[SSPurchaseReceipt getReceiptPathWithCompletionBlock:]";
      LODWORD(v19) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v22, v19}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v16 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v17 = SSXPCCreateMessageDictionary(700);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__SSPurchaseReceipt_getReceiptPathWithCompletionBlock___block_invoke;
  v20[3] = &unk_1E84AE2D8;
  v21 = blockCopy;
  v18 = blockCopy;
  [(SSXPCConnection *)v16 sendMessage:v17 withReply:v20];
}

void __55__SSPurchaseReceipt_getReceiptPathWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_BOOL(xdict, "0");
    objc_opt_class();
    v3 = SSXPCDictionaryCopyCFObjectWithClass(xdict, "1");
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)receiptExpired
{
  expirationDate = [(SSPurchaseReceipt *)self expirationDate];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

+ (id)receiptPathForProxy:(id)proxy
{
  proxyCopy = proxy;
  dataContainerURL = [proxyCopy dataContainerURL];
  path = [dataContainerURL path];
  v6 = [path stringByAppendingPathComponent:@"StoreKit"];

  LODWORD(dataContainerURL) = [proxyCopy profileValidated];
  if (dataContainerURL)
  {
    v7 = @"sandboxReceipt";
  }

  else
  {
    v7 = @"receipt";
  }

  v8 = [v6 stringByAppendingPathComponent:v7];
  v9 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if ([v9 fileExistsAtPath:v8])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (int)vppStateFlagsWithProxy:(id)proxy
{
  v3 = [SSPurchaseReceipt receiptPathForProxy:proxy];
  if (v3)
  {
    v4 = [[SSPurchaseReceipt alloc] initWithContentsOfFile:v3];
    v5 = v4;
    if (v4)
    {
      if ([(SSPurchaseReceipt *)v4 isVPPLicensed])
      {
        if ([(SSPurchaseReceipt *)v5 isRevoked])
        {
          v6 = 11;
        }

        else if ([(SSPurchaseReceipt *)v5 receiptExpired])
        {
          v6 = 7;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0x80000000;
    }
  }

  else
  {
    v6 = 0x40000000;
  }

  return v6;
}

@end