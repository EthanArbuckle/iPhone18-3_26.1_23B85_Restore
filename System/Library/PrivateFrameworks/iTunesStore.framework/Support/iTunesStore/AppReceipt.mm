@interface AppReceipt
+ (BOOL)_writeReceipt:(id)receipt withContainerDirectory:(id)directory style:(int64_t)style;
+ (BOOL)writeReceipt:(id)receipt forBundleIdentifier:(id)identifier style:(int64_t)style;
+ (BOOL)writeReceipt:(id)receipt forStoreKitClient:(id)client;
@end

@implementation AppReceipt

+ (BOOL)writeReceipt:(id)receipt forBundleIdentifier:(id)identifier style:(int64_t)style
{
  if (![receipt length] || !objc_msgSend(identifier, "length"))
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (!v16)
    {
      return 0;
    }

LABEL_16:
    v44 = 138412546;
    v45 = objc_opt_class();
    v46 = 2112;
    identifierCopy2 = identifier;
    LODWORD(v38) = 22;
    v17 = _os_log_send_and_compose_impl();
    if (v17)
    {
      v18 = v17;
      [NSString stringWithCString:v17 encoding:4, &v44, v38];
      free(v18);
      SSFileLog();
    }

    return 0;
  }

  v9 = [LSApplicationProxy applicationProxyForIdentifier:identifier];
  if (!v9)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog2 | 2;
    }

    else
    {
      v23 = shouldLog2;
    }

    if (!os_log_type_enabled([v21 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (!v23)
    {
      return 0;
    }

    goto LABEL_16;
  }

  containingBundle = v9;
  if (([objc_msgSend(v9 "appState")] & 1) == 0)
  {
    v11 = [LSPlugInKitProxy pluginKitProxyForIdentifier:identifier];
    if (v11 && (v12 = v11, v13 = [objc_msgSend(v11 "containingBundle")], objc_msgSend(v13, "isEqualToString:", LSUserApplicationType)))
    {
      containingBundle = [v12 containingBundle];
    }

    else
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v26 = shouldLog3 | 2;
      }

      else
      {
        v26 = shouldLog3;
      }

      if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v26 &= 2u;
      }

      if (v26)
      {
        v44 = 138412546;
        v45 = objc_opt_class();
        v46 = 2112;
        identifierCopy2 = identifier;
        LODWORD(v38) = 22;
        v37 = &v44;
        v27 = _os_log_send_and_compose_impl();
        if (v27)
        {
          v28 = v27;
          v29 = [NSString stringWithCString:v27 encoding:4, &v44, v38];
          free(v28);
          v37 = v29;
          SSFileLog();
        }
      }
    }
  }

  dataContainerURL = [containingBundle dataContainerURL];
  if (dataContainerURL)
  {
    v19 = [self _writeReceipt:receipt withContainerDirectory:dataContainerURL style:style];
  }

  else
  {
    v19 = 0;
  }

  plugInKitPlugins = [containingBundle plugInKitPlugins];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = [plugInKitPlugins countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(plugInKitPlugins);
        }

        dataContainerURL2 = [*(*(&v39 + 1) + 8 * i) dataContainerURL];
        if (dataContainerURL2)
        {
          [self _writeReceipt:receipt withContainerDirectory:dataContainerURL2 style:style];
        }
      }

      v33 = [plugInKitPlugins countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v33);
  }

  return v19;
}

+ (BOOL)writeReceipt:(id)receipt forStoreKitClient:(id)client
{
  receiptDirectoryPath = [client receiptDirectoryPath];
  isSandboxed = [client isSandboxed];
  if ([receiptDirectoryPath length])
  {
    v9 = [NSURL fileURLWithPath:receiptDirectoryPath isDirectory:1];

    return [self _writeReceipt:receipt withContainerDirectory:v9 style:isSandboxed];
  }

  else
  {
    bundleIdentifier = [client bundleIdentifier];

    return [self writeReceipt:receipt forBundleIdentifier:bundleIdentifier style:isSandboxed];
  }
}

+ (BOOL)_writeReceipt:(id)receipt withContainerDirectory:(id)directory style:(int64_t)style
{
  if ([receipt length])
  {
    v26 = 0;
    v31[0] = NSFileOwnerAccountName;
    v31[1] = NSFileGroupOwnerAccountName;
    v32[0] = @"mobile";
    v32[1] = @"mobile";
    v8 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v9 = [directory URLByAppendingPathComponent:@"StoreKit" isDirectory:1];
    v10 = objc_alloc_init(NSFileManager);
    v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v8 error:&v26];
    if (v11)
    {
      if (style == 1)
      {
        v12 = @"sandboxReceipt";
      }

      else
      {
        v12 = @"receipt";
      }

      v13 = [v9 URLByAppendingPathComponent:v12 isDirectory:0];
      if ([receipt writeToURL:v13 atomically:1])
      {
        v14 = +[SSLogConfig sharedDaemonConfig];
        if (!v14)
        {
          v14 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v16 = shouldLog | 2;
        }

        else
        {
          v16 = shouldLog;
        }

        if (!os_log_type_enabled([v14 OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v16 &= 2u;
        }

        if (!v16 || (v17 = objc_opt_class(), v27 = 138412546, v28 = v17, v29 = 2112, v30 = v13, LODWORD(v25) = 22, (v18 = _os_log_send_and_compose_impl()) == 0))
        {
          v11 = 1;
LABEL_29:

          return v11;
        }

LABEL_27:
        v23 = v18;
        [NSString stringWithCString:v18 encoding:4, &v27, v25];
        free(v23);
        SSFileLog();
        goto LABEL_29;
      }
    }

    else
    {
      v19 = +[SSLogConfig sharedDaemonConfig];
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v21 = shouldLog2 | 2;
      }

      else
      {
        v21 = shouldLog2;
      }

      if (!os_log_type_enabled([v19 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v21 &= 2u;
      }

      if (v21)
      {
        v22 = objc_opt_class();
        v27 = 138412546;
        v28 = v22;
        v29 = 2112;
        v30 = v9;
        LODWORD(v25) = 22;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          goto LABEL_27;
        }
      }
    }

    v11 = 0;
    goto LABEL_29;
  }

  return 0;
}

@end