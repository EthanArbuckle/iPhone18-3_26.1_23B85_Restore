@interface Browse_Extension
+ (void)withExtension:(id)extension accessPrintServiceProtocol:(id)protocol;
+ (void)withExtensionIdentifier:(id)identifier request:(id)request handleChallenge:(id)challenge completionHandler:(id)handler;
- (Browse_Extension)initWithQueue:(id)queue printInfo:(id)info;
- (void)_addPrinterFromDictionary_anyq0:(id)dictionary_anyq0 extensionidentIfier:(id)ifier;
- (void)_addPrinterFromDictionary_anyq:(id)dictionary_anyq extensionIdentifier:(id)identifier;
- (void)_invokeExtension_anyq:(id)extension_anyq;
- (void)cancel;
- (void)start;
@end

@implementation Browse_Extension

- (Browse_Extension)initWithQueue:(id)queue printInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = Browse_Extension;
  v9 = [(Browse_Extension *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_printInfoDictionary, info);
  }

  return v10;
}

- (void)_invokeExtension_anyq:(id)extension_anyq
{
  objc_initWeak(&location, extension_anyq);
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
    selfCopy = self;
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
    selfCopy = self;
    v7 = 2112;
    v8 = browseHandle;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): stopBrowsing '%@'", &v5, 0x16u);
  }
}

- (void)_addPrinterFromDictionary_anyq0:(id)dictionary_anyq0 extensionidentIfier:(id)ifier
{
  dictionary_anyq0Copy = dictionary_anyq0;
  ifierCopy = ifier;
  v8 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = ifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PrintKitExtension(%@): printer from the extension: %{public}@", buf, 0x16u);
  }

  v9 = [dictionary_anyq0Copy objectForKeyedSubscript:@"uri"];
  v10 = [dictionary_anyq0Copy objectForKeyedSubscript:@"display-name"];
  v11 = [dictionary_anyq0Copy objectForKeyedSubscript:@"txt"];
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
    v16 = [[ExtensionBrowse_Entity alloc] initWithURL:v15 displayName:v10 txtRecord:v14 extensionIdentifier:ifierCopy];
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

- (void)_addPrinterFromDictionary_anyq:(id)dictionary_anyq extensionIdentifier:(id)identifier
{
  dictionary_anyqCopy = dictionary_anyq;
  identifierCopy = identifier;
  [(Browse_Extension *)self _addPrinterFromDictionary_anyq0:dictionary_anyqCopy extensionidentIfier:identifierCopy];
}

+ (void)withExtensionIdentifier:(id)identifier request:(id)request handleChallenge:(id)challenge completionHandler:(id)handler
{
  identifierCopy = identifier;
  requestCopy = request;
  challengeCopy = challenge;
  handlerCopy = handler;
  v21 = 0;
  v14 = [NSExtension extensionWithIdentifier:identifierCopy error:&v21];
  v15 = v21;
  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002F394;
    v17[3] = &unk_1000A26F0;
    v20 = handlerCopy;
    v18 = challengeCopy;
    v19 = requestCopy;
    [self withExtension:v14 accessPrintServiceProtocol:v17];
  }

  else
  {
    v16 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = identifierCopy;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "can't get extension for identifier %{public}@ - %{public}@", buf, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

+ (void)withExtension:(id)extension accessPrintServiceProtocol:(id)protocol
{
  extensionCopy = extension;
  protocolCopy = protocol;
  v7 = protocolCopy;
  if (extensionCopy)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002F76C;
    v8[3] = &unk_1000A2738;
    v9 = extensionCopy;
    v10 = v7;
    [v9 beginExtensionRequestWithOptions:0 inputItems:&__NSArray0__struct completion:v8];
  }

  else
  {
    (*(protocolCopy + 2))(protocolCopy, 0);
  }
}

@end