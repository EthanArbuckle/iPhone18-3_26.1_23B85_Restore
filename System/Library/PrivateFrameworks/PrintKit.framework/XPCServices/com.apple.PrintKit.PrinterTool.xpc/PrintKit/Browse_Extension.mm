@interface Browse_Extension
+ (void)withExtension:(id)a3 accessPrintServiceProtocol:(id)a4;
+ (void)withExtensionIdentifier:(id)a3 request:(id)a4 handleChallenge:(id)a5 completionHandler:(id)a6;
- (Browse_Extension)initWithQueue:(id)a3 printInfo:(id)a4;
- (void)_addPrinterFromDictionary_anyq0:(id)a3 extensionidentIfier:(id)a4;
- (void)_addPrinterFromDictionary_anyq:(id)a3 extensionIdentifier:(id)a4;
- (void)_invokeExtension_anyq:(id)a3;
- (void)cancel;
- (void)start;
@end

@implementation Browse_Extension

- (Browse_Extension)initWithQueue:(id)a3 printInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = Browse_Extension;
  v9 = [(Browse_Extension *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_printInfoDictionary, a4);
  }

  return v10;
}

- (void)_invokeExtension_anyq:(id)a3
{
  objc_initWeak(&location, a3);
  v4 = self->_printInfoDictionary;
  objc_initWeak(&from, self);
  v5 = objc_loadWeakRetained(&location);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E1F4;
  v7[3] = &unk_1000A2650;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v10, &from);
  [v5 beginExtensionRequestWithOptions:0 inputItems:&__NSArray0__struct completion:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)start
{
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = @"com.apple.printing.discovery";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): Probing extensions for '%@'", buf, 0x16u);
  }

  v6 = NSExtensionPointName;
  v7 = @"com.apple.printing.discovery";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002E8B4;
  v5[3] = &unk_1000A26A0;
  v5[4] = self;
  [NSExtension extensionsWithMatchingAttributes:v4 completion:v5];
}

- (void)cancel
{
  v3 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    browseHandle = self->_browseHandle;
    v5 = 138412546;
    v6 = self;
    v7 = 2112;
    v8 = browseHandle;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): stopBrowsing '%@'", &v5, 0x16u);
  }
}

- (void)_addPrinterFromDictionary_anyq0:(id)a3 extensionidentIfier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): printer from the extension: %{public}@", buf, 0x16u);
  }

  v9 = [v6 objectForKeyedSubscript:@"uri"];
  v10 = [v6 objectForKeyedSubscript:@"display-name"];
  v11 = [v6 objectForKeyedSubscript:@"txt"];
  if (v11 && ([NSNetService dictionaryFromTXTRecordData:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = objc_opt_new();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10002FAEC;
    v24 = &unk_1000A2598;
    v14 = v13;
    v25 = v14;
    [v12 enumerateKeysAndObjectsUsingBlock:buf];
  }

  else
  {
    v14 = 0;
  }

  v15 = PKURLWithString(v9);
  if (v15)
  {
    v16 = [[ExtensionBrowse_Entity alloc] initWithURL:v15 displayName:v10 txtRecord:v14 extensionIdentifier:v7];
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002EFA0;
    block[3] = &unk_1000A0510;
    objc_copyWeak(&v22, buf);
    v21 = v16;
    v18 = v16;
    dispatch_async(queue, block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): '%@' is a malformed printer URL", buf, 0x16u);
    }
  }
}

- (void)_addPrinterFromDictionary_anyq:(id)a3 extensionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(Browse_Extension *)self _addPrinterFromDictionary_anyq0:v6 extensionidentIfier:v7];
}

+ (void)withExtensionIdentifier:(id)a3 request:(id)a4 handleChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21 = 0;
  v14 = [NSExtension extensionWithIdentifier:v10 error:&v21];
  v15 = v21;
  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002F394;
    v17[3] = &unk_1000A26F0;
    v20 = v13;
    v18 = v12;
    v19 = v11;
    [a1 withExtension:v14 accessPrintServiceProtocol:v17];
  }

  else
  {
    v16 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "can't get extension for identifier %{public}@ - %{public}@", buf, 0x16u);
    }

    (*(v13 + 2))(v13, 1, 0);
  }
}

+ (void)withExtension:(id)a3 accessPrintServiceProtocol:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002F76C;
    v8[3] = &unk_1000A2738;
    v9 = v5;
    v10 = v7;
    [v9 beginExtensionRequestWithOptions:0 inputItems:&__NSArray0__struct completion:v8];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end