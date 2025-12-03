@interface PKPrinter
+ (BOOL)printerLookupWithName:(id)name andTimeout:(double)timeout;
+ (PKPrinter)printerWithBonjourEndpoint:(id)endpoint discoveryTimeout:(double)timeout completionHandler:(id)handler;
+ (PKPrinter)printerWithEndpointData:(id)data discoveryTime:(double)time completionHandler:(id)handler;
+ (PKPrinter)printerWithName:(id)name;
+ (PKPrinter)printerWithName:(id)name discoveryTimeout:(double)timeout;
+ (PKPrinter)printerWithName:(id)name discoveryTimeout:(double)timeout completionHandler:(id)handler;
+ (PKPrinter)printerWithURL:(id)l discoveryTimeout:(double)timeout completionHandler:(id)handler;
+ (PKPrinter)printerWithiCloudPrinter:(id)printer discoveryTime:(double)time completionHandler:(id)handler;
- (BOOL)_allowedToPrintToThisPrinter;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMCProfile;
- (BOOL)isPaperReady:(id)ready;
- (BOOL)knowsReadyPaperList;
- (NSDictionary)printInfoSupported;
- (NSString)bonjourDisplayName;
- (NSString)displayName;
- (NSString)location;
- (NSString)name;
- (NSString)uuid;
- (NSURL)nearbyURL;
- (NSURL)printerURL;
- (id)availableRollPapersPreferBorderless:(BOOL)borderless;
- (id)debugDescription;
- (id)initPKPrinterWithBrowseInfo:(id)info;
- (id)matchedPaper:(id)paper preferBorderless:(BOOL)borderless withDuplexMode:(id)mode didMatch:(BOOL *)match;
- (id)paperListForDuplexMode:(id)mode;
- (id)papersForDocumentWithSize:(CGSize)size scaleUpOnRoll:(BOOL)roll andDuplex:(BOOL)duplex;
- (id)papersForPhotoWithSize:(CGSize)size;
- (int64_t)jobAccountIDSupport;
- (int64_t)kind;
- (int64_t)sendData:(const char *)data ofLength:(int64_t)length;
- (int64_t)startJob:(id)job ofType:(id)type;
- (unint64_t)jobTypesSupported;
- (void)_checkAvailable:(double)available queue:(id)queue completionHandler:(id)handler;
- (void)_identifySelf:(id)self;
- (void)_setInitialAccessStateFromBrowseInfo;
- (void)_updateAccessState:(int64_t)state;
- (void)_updateDescription:(id)description browseInfo:(id)info;
- (void)abortJobCompletionHandler:(id)handler;
- (void)cancelUnlock;
- (void)finalizeJob:(BOOL)job completionHandler:(id)handler;
- (void)finishJobCompletionHandler:(id)handler;
- (void)getSupplyLevels:(id)levels;
- (void)identifySelf;
- (void)pollForPrinterAttributes:(id)attributes completionHandler:(id)handler;
- (void)pollForPrinterStatusQueue:(id)queue completionHandler:(id)handler;
- (void)printURL:(id)l ofType:(id)type printSettings:(id)settings completionHandler:(id)handler;
- (void)printURL:(id)l ofType:(id)type printSettings:(id)settings completionHandlerWithLocalJobNumber:(id)number;
- (void)removeCredentialsFromKeychain;
- (void)unlockWithCompletionHandler:(id)handler;
- (void)updateiCloudPrinterInfo;
- (void)withDescriptionAsync:(id)async;
@end

@implementation PKPrinter

- (id)initPKPrinterWithBrowseInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = PKPrinter;
  v6 = [(PKPrinter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_browseInfo, info);
    printerDescription = v7->_printerDescription;
    v7->_printerDescription = 0;

    [(PKPrinter *)v7 _setInitialAccessStateFromBrowseInfo];
    [(PKPrinter *)v7 updateiCloudPrinterInfo];
  }

  return v7;
}

- (BOOL)_allowedToPrintToThisPrinter
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(PKPrinterBrowseInfo *)self->_browseInfo isIPPS]|| !+[PKDefaults ippsIsRequired])
  {
    if (!+[PKDefaults mcProfilePrintersOnlyAllowed])
    {
      return 1;
    }

    printerURL = [(PKPrinter *)self printerURL];
    absoluteString = [printerURL absoluteString];
    v7 = [PKDefaults uriMatchesMCProfileAdded:absoluteString];

    if (v7)
    {
      return 1;
    }

    v3 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      selfCopy2 = self;
      v11 = 2080;
      v12 = "";
      v4 = "%@: managed configuration requires only known printers%s";
      goto LABEL_10;
    }
  }

  else
  {
    v3 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      selfCopy2 = self;
      v11 = 2080;
      v12 = "";
      v4 = "%@: ipps is required for this printer%s";
LABEL_10:
      _os_log_impl(&dword_25F5FC000, v3, OS_LOG_TYPE_DEFAULT, v4, &v9, 0x16u);
    }
  }

  return 0;
}

+ (PKPrinter)printerWithURL:(id)l discoveryTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [PKPrinterBonjourEndpoint endpointWithURL:l];
  [self printerWithBonjourEndpoint:v8 discoveryTimeout:handlerCopy completionHandler:timeout];

  return result;
}

+ (PKPrinter)printerWithName:(id)name discoveryTimeout:(double)timeout completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  if ([nameCopy hasPrefix:@"ipp:"] & 1) != 0 || (objc_msgSend(nameCopy, "hasPrefix:", @"ipps:"))
  {
    v10 = PKURLWithString(nameCopy);
    if (v10)
    {
      v11 = [PKPrinterBonjourEndpoint endpointWithURL:v10];
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [PKPrinterBonjourEndpoint endpointWithBonjourString:nameCopy];
    if (v11)
    {
LABEL_7:
      [self printerWithBonjourEndpoint:v11 discoveryTimeout:handlerCopy completionHandler:timeout];
      goto LABEL_12;
    }
  }

  v12 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2080;
    v19 = "";
    _os_log_impl(&dword_25F5FC000, v12, OS_LOG_TYPE_DEFAULT, "%@: Couldn't create a bonjour endpoint from '%@'%s", &v14, 0x20u);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_12:

  return result;
}

+ (PKPrinter)printerWithBonjourEndpoint:(id)endpoint discoveryTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  endpointCopy = endpoint;
  dispatch_async(v8, &__block_literal_global_10);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__PKPrinter_printerWithBonjourEndpoint_discoveryTimeout_completionHandler___block_invoke_2;
  v12[3] = &unk_279A92A98;
  v13 = handlerCopy;
  v10 = handlerCopy;
  [PKPrinterBrowseInfo findPrinterWithBonjourEndpoint:endpointCopy withTimeout:v12 completionHandler:timeout];

  return result;
}

void __75__PKPrinter_printerWithBonjourEndpoint_discoveryTimeout_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && ([v3 _allowedToPrintToThisPrinter] & 1) != 0)
  {
    [v3 updateiCloudPrinterInfo];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (PKPrinter)printerWithEndpointData:(id)data discoveryTime:(double)time completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [PKPrinterBonjourEndpoint endpointWithData:data];
  if (v8)
  {
    [self printerWithBonjourEndpoint:v8 discoveryTimeout:handlerCopy completionHandler:time];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }

  return result;
}

+ (PKPrinter)printerWithiCloudPrinter:(id)printer discoveryTime:(double)time completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  printerCopy = printer;
  handlerCopy = handler;
  v9 = [[PKCloudResolveContext alloc] initWithPKCloudPrinter:printerCopy timeout:handlerCopy completionHandler:time];
  v10 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [printerCopy displayName];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = displayName;
    _os_log_impl(&dword_25F5FC000, v10, OS_LOG_TYPE_DEFAULT, "Created icloud resolution context %@ for %@", &v13, 0x16u);
  }

  [(PKCloudResolveContext *)v9 start];
  return result;
}

+ (PKPrinter)printerWithName:(id)name
{
  v3 = [self printerWithName:name discoveryTimeout:2.0];

  return v3;
}

+ (PKPrinter)printerWithName:(id)name discoveryTimeout:(double)timeout
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  nameCopy = name;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__PKPrinter_printerWithName_discoveryTimeout___block_invoke;
  v12[3] = &unk_279A923A0;
  v13 = v7;
  v14 = &v15;
  v8 = v7;
  [self printerWithName:nameCopy discoveryTimeout:v12 completionHandler:timeout];

  v9 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_semaphore_wait(v8, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __46__PKPrinter_printerWithName_discoveryTimeout___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)printerLookupWithName:(id)name andTimeout:(double)timeout
{
  v4 = [self printerWithName:name discoveryTimeout:timeout];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = equalCopy;
    uuid = [(PKPrinter *)self uuid];
    uuid2 = [v5 uuid];
    v8 = [uuid isEqualToString:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateDescription:(id)description browseInfo:(id)info
{
  descriptionCopy = description;
  infoCopy = info;
  if (descriptionCopy)
  {
    objc_storeStrong(&self->_printerDescription, description);
  }

  if (infoCopy)
  {
    objc_storeStrong(&self->_browseInfo, info);
  }

  date = [MEMORY[0x277CBEAA8] date];
  printerDescriptionTime = self->_printerDescriptionTime;
  self->_printerDescriptionTime = date;
}

- (void)updateiCloudPrinterInfo
{
  v3 = +[PKDefaults iCloudPrinters];
  v4 = v3;
  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__PKPrinter_updateiCloudPrinterInfo__block_invoke;
    v8[3] = &unk_279A92AC0;
    v8[4] = self;
    v5 = [v3 indexOfObjectPassingTest:v8];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
    }

    iCloudPrinter = self->_iCloudPrinter;
    self->_iCloudPrinter = v6;
  }
}

- (void)withDescriptionAsync:(id)async
{
  asyncCopy = async;
  v5 = self->_printerDescription;
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_printerDescriptionTime];
    if (v7 > 5.0)
    {
      v8 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_DEFAULT, "refreshing printer description after timeout", buf, 2u);
      }

      v9 = [date addTimeInterval:60.0];
      printerDescriptionTime = self->_printerDescriptionTime;
      self->_printerDescriptionTime = v9;

      bonjourName = [(PKPrinter *)self bonjourName];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__PKPrinter_withDescriptionAsync___block_invoke;
      v15[3] = &unk_279A92AE8;
      v15[4] = self;
      PrintdRPC::GetPrinterDescription(bonjourName, 0, v15);
    }

    asyncCopy[2](asyncCopy, v5);
  }

  else
  {
    bonjourName2 = [(PKPrinter *)self bonjourName];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__PKPrinter_withDescriptionAsync___block_invoke_2;
    v13[3] = &unk_279A92B10;
    v13[4] = self;
    v14 = asyncCopy;
    PrintdRPC::GetPrinterDescription(bonjourName2, 0, v13);
  }
}

void __34__PKPrinter_withDescriptionAsync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) _updateDescription:v6 browseInfo:v5];
  (*(*(a1 + 40) + 16))();
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PKPrinter *)self description];
  v5 = v4;
  if (self->_printerDescription)
  {
    v6 = ", has_desc";
  }

  else
  {
    v6 = "";
  }

  v7 = [v3 stringWithFormat:@"%@ { %@%s }", v4, self->_browseInfo, v6];

  return v7;
}

- (NSURL)printerURL
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKPrinter printerURL]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "-[PKPrinter printerURL]"];
  }
  v5 = ;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __23__PKPrinter_printerURL__block_invoke;
  v9[3] = &unk_279A91E38;
  v6 = bonjourName;
  v10 = v6;
  v7 = withDebuggableSemaphore<NSURL * {__strong}>(v5, v9, 5.0);

  return v7;
}

- (NSURL)nearbyURL
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  provenance = [bonjourName provenance];

  if (provenance == 4)
  {
    bonjourDisplayName = [(PKPrinter *)self bonjourDisplayName];
    uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v9 = [bonjourDisplayName stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];

    v10 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v10 setScheme:@"dnssd"];
    [v10 setPath:@"/"];
    if ([(PKPrinterBrowseInfo *)self->_browseInfo isIPPS])
    {
      v11 = @"._ipps._tcp.local.";
    }

    else
    {
      v11 = @"._ipp._tcp.local.";
    }

    v12 = [v9 stringByAppendingString:v11];
    [v10 setHost:v12];

    uuid = [(PKPrinter *)self uuid];
    if (uuid)
    {
      v14 = MEMORY[0x277CCACA8];
      uuid2 = [(PKPrinter *)self uuid];
      lowercaseString = [uuid2 lowercaseString];
      v15 = [v14 stringWithFormat:@"uuid=%@", lowercaseString];
    }

    else
    {
      v15 = 0;
    }

    [v10 setQuery:v15];
    if (uuid)
    {
    }

    printerURL = [v10 URL];
    if (printerURL)
    {

      goto LABEL_16;
    }

    v17 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v17, OS_LOG_TYPE_ERROR, "Failed to generate a url from bonjour name\n", buf, 2u);
    }
  }

  printerURL = [(PKPrinter *)self printerURL];
LABEL_16:

  return printerURL;
}

- (NSString)name
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  persistentNameRepresentationForPrintKitUI = [bonjourName persistentNameRepresentationForPrintKitUI];

  return persistentNameRepresentationForPrintKitUI;
}

- (NSString)bonjourDisplayName
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  displayNameForPrintKitUI = [bonjourName displayNameForPrintKitUI];

  if (displayNameForPrintKitUI)
  {
    v4 = displayNameForPrintKitUI;
  }

  else
  {
    v4 = &stru_28719ACE8;
  }

  return v4;
}

- (NSString)displayName
{
  customName = [(PKiCloudPrinter *)self->_iCloudPrinter customName];
  if (!customName)
  {
    bonjourDisplayName = [(PKPrinter *)self bonjourDisplayName];
    if (bonjourDisplayName)
    {
      customName = bonjourDisplayName;
      v7 = [(__CFString *)bonjourDisplayName rangeOfString:@" @ "];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v6)
      {
        v8 = [(__CFString *)customName substringToIndex:v7];

        customName = v8;
      }
    }

    else
    {
      displayName = [(PKiCloudPrinter *)self->_iCloudPrinter displayName];
      if (displayName)
      {
        customName = displayName;
      }

      else
      {
        customName = &stru_28719ACE8;
      }
    }
  }

  return customName;
}

- (NSString)location
{
  customLocation = [(PKiCloudPrinter *)self->_iCloudPrinter customLocation];
  if (customLocation || ([(PKPrinterBrowseInfo *)self->_browseInfo location], (customLocation = objc_claimAutoreleasedReturnValue()) != 0))
  {
    location = customLocation;
  }

  else
  {
    bonjourDisplayName = [(PKPrinter *)self bonjourDisplayName];
    v7 = [bonjourDisplayName rangeOfString:@" @ "];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v8 || ([bonjourDisplayName substringFromIndex:v7 + v8], (location = objc_claimAutoreleasedReturnValue()) == 0))
    {
      location = [(PKiCloudPrinter *)self->_iCloudPrinter location];
    }
  }

  return location;
}

- (NSString)uuid
{
  uuid = [(PKPrinterBrowseInfo *)self->_browseInfo uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (BOOL)isFromMCProfile
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  if ([bonjourName provenance] == 1)
  {
    v4 = 1;
  }

  else
  {
    printerURL = [(PKPrinter *)self printerURL];
    absoluteString = [printerURL absoluteString];
    v4 = [PKDefaults uriMatchesMCProfileAdded:absoluteString];
  }

  return v4;
}

- (int64_t)kind
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  if ([bonjourName provenance] == 8)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

- (int64_t)jobAccountIDSupport
{
  result = self->_printerDescription;
  if (result)
  {
    return [result jobAccountIDSupport];
  }

  return result;
}

- (unint64_t)jobTypesSupported
{
  v19 = *MEMORY[0x277D85DE8];
  txtRecord = [(PKPrinterBrowseInfo *)self->_browseInfo txtRecord];
  v3 = [txtRecord objectForKey:@"kind"];

  if (v3)
  {
    lowercaseString = [v3 lowercaseString];
    v5 = [lowercaseString componentsSeparatedByString:{@", "}];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [&unk_2871AC6D8 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v10), v14}];
          v12 = v11;
          if (v11)
          {
            v7 |= [v11 unsignedIntValue];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)printInfoSupported
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKPrinter printInfoSupported]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "-[PKPrinter printInfoSupported]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PKPrinter_printInfoSupported__block_invoke;
  v6[3] = &unk_279A92B60;
  v6[4] = selfCopy;
  v4 = withDebuggableSemaphore<NSDictionary * {__strong}>(v3, v6, 5.0);

  return v4;
}

void __31__PKPrinter_printInfoSupported__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PKPrinter_printInfoSupported__block_invoke_2;
  v6[3] = &unk_279A92B38;
  v7 = v3;
  v5 = v3;
  [v4 withDescriptionAsync:v6];
}

void __31__PKPrinter_printInfoSupported__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 printInfoSupportedDictionary];
  (*(v2 + 16))(v2);
}

- (void)identifySelf
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __25__PKPrinter_identifySelf__block_invoke;
  v3[3] = &unk_279A92B88;
  objc_copyWeak(&v4, &location);
  [(PKPrinter *)self withDescriptionAsync:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __25__PKPrinter_identifySelf__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _identifySelf:v5];

    v3 = v5;
  }
}

- (void)_identifySelf:(id)self
{
  selfCopy = self;
  v4 = objc_opt_new();
  if (([selfCopy identifyActions] & 1) != 0 && (PKLocalizedString(&cfstr_AirprintReady.isa, "AirPrint ready message to be shown on printer"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v4 addObject:@"display"];
  }

  else
  {
    v6 = 0;
  }

  if (([selfCopy identifyActions] & 2) != 0)
  {
    [v4 addObject:@"flash"];
  }

  if (([selfCopy identifyActions] & 4) != 0)
  {
    [v4 addObject:@"sound"];
  }

  browseInfo = [(PKPrinter *)self browseInfo];
  bonjourName = [browseInfo bonjourName];
  PrintdRPC::IdentifyPrinter(bonjourName, v6, v4);
}

- (void)_updateAccessState:(int64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessState = self->_accessState;
    v7 = 138413058;
    selfCopy = self;
    v9 = 1024;
    v10 = accessState;
    v11 = 1024;
    stateCopy = state;
    v13 = 2080;
    v14 = "";
    _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_DEFAULT, "%@: _accessState %d to %d%s", &v7, 0x22u);
  }

  self->_accessState = state;
}

- (void)unlockWithCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessState = self->_accessState;
    *buf = 138412802;
    selfCopy = self;
    v18 = 1024;
    v19 = accessState;
    v20 = 2080;
    v21 = "";
    _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_DEFAULT, "%@: unlockWithCompletionHandler current accessState=%d%s", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__PKPrinter_unlockWithCompletionHandler___block_invoke;
  v14[3] = &unk_279A92BB0;
  v7 = handlerCopy;
  v15 = v7;
  v8 = MEMORY[0x25F8E4580](v14);
  v9 = v8;
  if (self->_accessState <= 0)
  {
    (*(v8 + 16))(v8);
  }

  else
  {
    objc_initWeak(buf, self);
    bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PKPrinter_unlockWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_279A92BD8;
    objc_copyWeak(&v13, buf);
    v12 = v9;
    PrintdRPC::CheckAccessStateAsync(bonjourName, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __41__PKPrinter_unlockWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__PKPrinter_unlockWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_279A91C68;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __41__PKPrinter_unlockWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 _updateAccessState:a2];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

- (void)cancelUnlock
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412546;
    selfCopy = self;
    v6 = 2080;
    v7 = "";
    _os_log_impl(&dword_25F5FC000, v3, OS_LOG_TYPE_DEFAULT, "%@: cancelUnlock%s", &v4, 0x16u);
  }

  PKCancelAlert(&cfstr_Cancelunlock.isa);
}

- (void)removeCredentialsFromKeychain
{
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  PrintdRPC::RemoveKeychainItem(bonjourName, v4);

  [(PKPrinter *)self _setInitialAccessStateFromBrowseInfo];
}

- (void)_setInitialAccessStateFromBrowseInfo
{
  txtRecord = [(PKPrinterBrowseInfo *)self->_browseInfo txtRecord];
  v6 = [txtRecord objectForKeyedSubscript:@"air"];

  v4 = v6;
  if (v6)
  {
    v5 = [v6 isEqualToString:@"none"] ^ 1;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  self->_accessState = v5;
}

- (void)_checkAvailable:(double)available queue:(id)queue completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  provenance = [bonjourName provenance];

  if (provenance == 2)
  {
    v12 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      bonjourName2 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
      provenanceIdentifier = [bonjourName2 provenanceIdentifier];
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = provenanceIdentifier;
      *&buf[22] = 2080;
      v26 = "";
      _os_log_impl(&dword_25F5FC000, v12, OS_LOG_TYPE_DEFAULT, "%@: extension printer (%{public}@) always available%s", buf, 0x20u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke;
    block[3] = &unk_279A92C00;
    v24 = handlerCopy;
    dispatch_async(queueCopy, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__127;
    v27 = __Block_byref_object_dispose__128;
    v28 = MEMORY[0x25F8E4580](handlerCopy);
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    v16 = dispatch_time(0, (available * 1000000000.0));
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_129;
    handler[3] = &unk_279A92C28;
    handler[4] = buf;
    dispatch_source_set_event_handler(v15, handler);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_2;
    v21[3] = &unk_279A92C28;
    v21[4] = buf;
    dispatch_source_set_cancel_handler(v15, v21);
    bonjourName3 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_3;
    v19[3] = &unk_279A92C50;
    v19[4] = self;
    v18 = v15;
    v20 = v18;
    PrintdRPC::GetPrinterDescription(bonjourName3, 1, v19);

    dispatch_resume(v18);
    _Block_object_dispose(buf, 8);
  }
}

void __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_129(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _updateDescription:a2 browseInfo:a3];
  v4 = *(a1 + 40);

  dispatch_source_cancel(v4);
}

- (void)pollForPrinterAttributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  bonjourName = [(PKPrinter *)self bonjourName];
  PrintdRPC::QueryPrinterWithAttributess(bonjourName, attributesCopy, handlerCopy);
}

- (void)pollForPrinterStatusQueue:(id)queue completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_DEFAULT, "PKPrinter<%p>: pollForPrinterStatusQueue: start", buf, 0xCu);
  }

  v11 = PrinterStatusQueuePoll::requestedAttributess(v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PKPrinter_pollForPrinterStatusQueue_completionHandler___block_invoke;
  v14[3] = &unk_279A92C78;
  v14[4] = self;
  v17 = Current;
  v12 = queueCopy;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  [(PKPrinter *)self pollForPrinterAttributes:v11 completionHandler:v14];
}

void __57__PKPrinter_pollForPrinterStatusQueue_completionHandler___block_invoke(uint64_t a1, void **a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 134217984;
    v40 = v6;
    _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_DEFAULT, "PKPrinter<%p>: pollForPrinterStatusQueue: done", buf, 0xCu);
  }

  if (a2)
  {
    v30 = objc_opt_new();
    v29 = Printd_Parameters::_get_PrinterMandatoryJobAttributes(a2);
    if ([v29 count])
    {
      if ([v29 containsObject:@"job-password"])
      {
        v7 = PKLocalizedString(&cfstr_ThisPrinterReq.isa, "PIN required message.");
        [v30 addObject:v7];
      }

      if ([v29 containsObject:@"job-account-id"])
      {
        v8 = PKLocalizedString(&cfstr_ThisPrinterReq_0.isa, "Warning string for printers requiring an ID for job accounting");
        [v30 addObject:v8];
      }
    }

    v28 = Printd_Parameters::_get_PrinterStateReasons(a2);
    if (v28)
    {
      v9 = Printd_Parameters::_get_MediaSourceSupported(a2);
      v10 = Printd_Parameters::_get_PrinterInputTray(a2);
      v27 = [PKTray traysWithMediaSourceSupported:v9 printerInputTrays:v10];

      v26 = [PKTray filter:v27 withBlock:&__block_literal_global_357];
      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v26;
      v13 = [v12 countByEnumeratingWithState:&v34 objects:buf count:16];
      if (v13)
      {
        v14 = *v35;
        do
        {
          v15 = 0;
          do
          {
            if (*v35 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v34 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
              v18 = [v17 localizedName];
              [v11 addObject:v18];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v34 objects:buf count:16];
        }

        while (v13);
      }

      v19 = PKCopyLocalizedPrinterStateReasons(v28, v11);
      if (v19)
      {
        [v30 addObjectsFromArray:v19];
      }
    }

    v20 = [MEMORY[0x277CBEAA8] date];
    [v4 setObject:v20 forKey:@"printer-status-time"];

    [v4 setObject:v30 forKey:@"synth-printer-state-reasons-localized"];
  }

  else
  {
    v21 = PKLocalizedString(&cfstr_ThePrinterIsOf.isa, "The printer is offline.");
    v38 = v21;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];

    [v4 setObject:v30 forKey:@"synth-printer-state-reasons-localized"];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent() - *(a1 + 56)];
  [v4 setObject:v22 forKey:@"synth-printer-state-printer-rtt"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PKPrinter_pollForPrinterStatusQueue_completionHandler___block_invoke_151;
  block[3] = &unk_279A91CD0;
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v32 = v4;
  v33 = v24;
  v25 = v4;
  dispatch_async(v23, block);
}

- (void)getSupplyLevels:(id)levels
{
  levelsCopy = levels;
  v5 = SuppliesPoll::requestedAttributess(levelsCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__PKPrinter_getSupplyLevels___block_invoke;
  v7[3] = &unk_279A92CA0;
  v6 = levelsCopy;
  v8 = v6;
  [(PKPrinter *)self pollForPrinterAttributes:v5 completionHandler:v7];
}

void __29__PKPrinter_getSupplyLevels___block_invoke(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = suppliesForPollResponse(a2);
  }

  else
  {
    v3 = 0;
  }

  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__PKPrinter_getSupplyLevels___block_invoke_2;
  v7[3] = &unk_279A91CD0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (BOOL)knowsReadyPaperList
{
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  hasMediaReady = [paperList hasMediaReady];

  return hasMediaReady;
}

- (BOOL)isPaperReady:(id)ready
{
  readyCopy = ready;
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  v6 = [paperList isPaperReady:readyCopy];

  return v6;
}

- (id)availableRollPapersPreferBorderless:(BOOL)borderless
{
  borderlessCopy = borderless;
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  v5 = [paperList availableRollPapersPreferBorderless:borderlessCopy];

  return v5;
}

- (id)papersForPhotoWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  v6 = [paperList papersForPhotoWithSize:{width, height}];

  return v6;
}

- (id)paperListForDuplexMode:(id)mode
{
  modeCopy = mode;
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  v6 = [paperList paperListForDuplexMode:modeCopy];

  return v6;
}

- (id)papersForDocumentWithSize:(CGSize)size scaleUpOnRoll:(BOOL)roll andDuplex:(BOOL)duplex
{
  duplexCopy = duplex;
  rollCopy = roll;
  height = size.height;
  width = size.width;
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  v10 = [paperList papersForDocumentWithSize:rollCopy scaleUpOnRoll:duplexCopy andDuplex:{width, height}];

  return v10;
}

- (id)matchedPaper:(id)paper preferBorderless:(BOOL)borderless withDuplexMode:(id)mode didMatch:(BOOL *)match
{
  borderlessCopy = borderless;
  paperCopy = paper;
  modeCopy = mode;
  paperList = [(PKPrinterDescription *)self->_printerDescription paperList];
  v13 = [paperList matchedPaper:paperCopy preferBorderless:borderlessCopy withDuplexMode:modeCopy didMatch:match];

  return v13;
}

- (void)printURL:(id)l ofType:(id)type printSettings:(id)settings completionHandlerWithLocalJobNumber:(id)number
{
  v42 = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  settingsCopy = settings;
  numberCopy = number;
  v14 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    selfCopy = self;
    v34 = 2112;
    v35 = lCopy;
    v36 = 2112;
    v37 = typeCopy;
    v38 = 2112;
    v39 = settingsCopy;
    v40 = 2080;
    v41 = "";
    _os_log_impl(&dword_25F5FC000, v14, OS_LOG_TYPE_DEFAULT, "%@: printURL:%@ ofType:%@ printSettings:%@%s", buf, 0x34u);
  }

  _allowedToPrintToThisPrinter = [(PKPrinter *)self _allowedToPrintToThisPrinter];
  if (lCopy)
  {
    v16 = _allowedToPrintToThisPrinter;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if ([(__CFString *)typeCopy isEqual:@"image/heic"])
    {
      v17 = @"image/jpeg";
    }

    else
    {
      v18 = [(__CFString *)typeCopy isEqual:@"image/png"];
      v17 = @"image/jpeg";
      if (!v18)
      {
        v17 = typeCopy;
      }
    }

    v19 = v17;
    jpegFeatures = [(PKPrinterDescription *)self->_printerDescription jpegFeatures];
    v21 = [jpegFeatures containsObject:@"icc"];

    v22 = [PKPrintJobRequest alloc];
    bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v24 = [(PKPrintJobRequest *)v22 initWithPrinterName:bonjourName];

    [(PKPrintJobRequest *)v24 setPrintSettings:settingsCopy];
    [(PKPrintJobRequest *)v24 setFileType:v19];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__PKPrinter_Printing__printURL_ofType_printSettings_completionHandlerWithLocalJobNumber___block_invoke;
    v26[3] = &unk_279A92CC8;
    v30 = numberCopy;
    v27 = lCopy;
    v25 = v24;
    v28 = v25;
    v29 = typeCopy;
    v31 = v21;
    [(PKPrintJobRequest *)v25 startRequestCompletionHandler:v26];
  }

  else
  {
    (*(numberCopy + 2))(numberCopy, 0);
  }
}

void __89__PKPrinter_Printing__printURL_ofType_printSettings_completionHandlerWithLocalJobNumber___block_invoke(uint64_t a1, char a2)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (softLinkPUTIsPersistentURL(*(a1 + 32)))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 56);
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = v4;
      v8 = dispatch_get_global_queue(0, 0);
      block = MEMORY[0x277D85DD0];
      v59 = 3221225472;
      v60 = ___ZL27writePersistentURLToPrinterP17PKPrintJobRequestP5NSURLU13block_pointerFvP8NSNumberE_block_invoke;
      v61 = &unk_279A92E28;
      v63 = v5;
      v64 = v7;
      v62 = v6;
      v9 = v6;
      v10 = v7;
      v11 = v5;
      dispatch_async(v8, &block);
    }

    else
    {
      v13 = [*(a1 + 48) isEqual:@"application/pdf"];
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      if (v13)
      {
        v16 = *(a1 + 56);
        v17 = *(a1 + 32);

        writeURLToPrinter(v14, v17, v16);
      }

      else
      {
        v18 = *(a1 + 64);
        v20 = *(a1 + 48);
        v19 = *(a1 + 56);
        v53 = v14;
        v21 = v15;
        v54 = v20;
        v22 = v19;
        v23 = CGImageSourceCreateWithURL(v21, 0);
        if (v23)
        {
          v24 = [v54 isEqual:@"image/jpeg"];
          if (((v18 | v24 ^ 1) & 1) != 0 || (v25 = CGImageSourceCopyProperties(v23, 0)) == 0)
          {
            v28 = 0;
          }

          else
          {
            cf = v25;
            v46 = [(__CFDictionary *)cf objectForKeyedSubscript:*MEMORY[0x277CD31B0]];
            v47 = [v46 objectForKeyedSubscript:*MEMORY[0x277CD3390]];
            v49 = [v47 objectAtIndexedSubscript:0];
            v26 = [v49 objectForKeyedSubscript:*MEMORY[0x277CD3400]];
            if (v26)
            {
              v27 = 0;
            }

            else
            {
              ImageAtIndex = CGImageSourceCreateImageAtIndex(v23, 0, 0);
              v27 = ImageAtIndex;
              if (ImageAtIndex && (ColorSpace = CGImageGetColorSpace(ImageAtIndex)) != 0)
              {
                v26 = CGColorSpaceGetName(ColorSpace);
              }

              else
              {
                v26 = 0;
              }
            }

            v31 = *MEMORY[0x277CBF448];
            block = *MEMORY[0x277CBF4B8];
            v59 = v31;
            v60 = @"Apple Wide Color Sharing Profile";
            v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&block count:3];
            v33 = v32;
            if (v26)
            {
              v28 = [v32 containsObject:v26] ^ 1;
            }

            else
            {
              v28 = 0;
            }

            if (v27)
            {
              CFRelease(v27);
            }

            CFRelease(cf);
          }

          if ((v24 ^ 1 | v28))
          {
            v34 = v53;
            v35 = v22;
            v36 = jpegWithImageSource(v23, v18 == 0);
            v37 = v36;
            if (v36)
            {
              v55[0] = MEMORY[0x277D85DD0];
              v55[1] = 3221225472;
              v55[2] = ___ZL34convertFromImageSourceAndWriteJPEGP17PKPrintJobRequestP13CGImageSourcebhU13block_pointerFvP8NSNumberE_block_invoke;
              v55[3] = &unk_279A92EA0;
              v38 = v36;
              v56 = v38;
              v57 = v35;
              cfa = MEMORY[0x25F8E4580](v55);
              if ((v18 | v24) == 1)
              {
                v39 = cfa;
                writeURLToPrinter(v34, v38, cfa);
              }

              else
              {
                v50 = v34;
                v40 = v38;
                v41 = cfa;
                v48 = v40;
                v42 = CGImageSourceCreateWithURL(v40, 0);
                v43 = v42;
                if (v42)
                {
                  v44 = jpegWithImageSource(v42, 1);
                  CFRelease(v43);
                  if (v44)
                  {
                    block = MEMORY[0x277D85DD0];
                    v59 = 3221225472;
                    v60 = ___ZL21convertToSharableJPEGP17PKPrintJobRequestP5NSURLU13block_pointerFvP8NSNumberE_block_invoke;
                    v61 = &unk_279A92EA0;
                    v45 = v44;
                    v62 = v45;
                    v63 = v41;
                    writeURLToPrinter(v50, v45, &block);
                  }

                  else
                  {
                    (*(v41 + 2))(v41, 0);
                  }
                }

                else
                {
                  (*(v41 + 2))(v41, 0);
                }

                v39 = cfa;
              }
            }

            else
            {
              (*(v35 + 2))(v35, 0);
            }
          }

          else
          {
            writeURLToPrinter(v53, v21, v22);
          }

          CFRelease(v23);
        }

        else
        {
          (*(v22 + 2))(v22, 0);
        }
      }
    }
  }

  else
  {
    v12 = *(*(a1 + 56) + 16);

    v12();
  }
}

- (void)printURL:(id)l ofType:(id)type printSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PKPrinter_Printing__printURL_ofType_printSettings_completionHandler___block_invoke;
  v12[3] = &unk_279A92CF0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(PKPrinter *)self printURL:l ofType:type printSettings:settings completionHandlerWithLocalJobNumber:v12];
}

uint64_t __71__PKPrinter_Printing__printURL_ofType_printSettings_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1280;
  }

  return (*(v2 + 16))(v2, v3);
}

- (int64_t)startJob:(id)job ofType:(id)type
{
  v29 = *MEMORY[0x277D85DE8];
  jobCopy = job;
  typeCopy = type;
  v8 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy2 = self;
    v23 = 2112;
    v24 = typeCopy;
    v25 = 2112;
    v26 = jobCopy;
    v27 = 2080;
    v28 = "";
    _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_DEFAULT, "%@: startJob ofType:%@ printSettings:%@%s", buf, 0x2Au);
  }

  if ([(PKPrinter *)self _allowedToPrintToThisPrinter])
  {
    v9 = [PKPrintJobRequest alloc];
    bonjourName = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v11 = [(PKPrintJobRequest *)v9 initWithPrinterName:bonjourName];

    [(PKPrintJobRequest *)v11 setPrintSettings:jobCopy];
    [(PKPrintJobRequest *)v11 setFileType:typeCopy];
    if (v11)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __39__PKPrinter_Printing__startJob_ofType___block_invoke;
      v19[3] = &unk_279A92D18;
      v12 = v11;
      p_super = &v12->super;
      if (withDebuggableSemaphore<BOOL>(@"startJob:ofType:", v19, 5.0))
      {
        v13 = _PKLogCategory(PKLogCategoryFramework);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25F5FC000, v13, OS_LOG_TYPE_DEFAULT, "Job submission - Job stream created", buf, 2u);
        }

        v14 = v12;
        v15 = 0;
        v16 = &self->_job_request->super;
        self->_job_request = v14;
      }

      else
      {
        v16 = _PKLogCategory(PKLogCategoryFramework);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25F5FC000, v16, OS_LOG_TYPE_DEFAULT, "Job submission - Could not create job", buf, 2u);
        }

        v15 = 1280;
      }

      v17 = p_super;
    }

    else
    {
      v17 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v23 = 2080;
        v24 = "";
        _os_log_impl(&dword_25F5FC000, v17, OS_LOG_TYPE_DEFAULT, "%@: unable to create ipp request%s", buf, 0x16u);
      }

      v15 = 1280;
    }
  }

  else
  {
    v15 = 1280;
  }

  return v15;
}

- (int64_t)sendData:(const char *)data ofLength:(int64_t)length
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_job_request)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v6 = self->_job_request;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PKPrinter_Printing__sendData_ofLength___block_invoke;
    v11[3] = &unk_279A92D40;
    v12 = v6;
    v13 = v5;
    v7 = v5;
    v8 = v6;
    if (withDebuggableSemaphore<BOOL>(@"sendData:ofLength:", v11, 5.0))
    {
      v9 = 0;
    }

    else
    {
      v9 = 1024;
    }
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_DEFAULT, "%@: sendData called outside startJob/finishJob%s", buf, 0x16u);
    }

    v9 = 1282;
  }

  return v9;
}

- (void)abortJobCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PKPrinter_Printing__abortJobCompletionHandler___block_invoke;
  v6[3] = &unk_279A92CF0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(PKPrinter *)self finalizeJob:1 completionHandler:v6];
}

uint64_t __49__PKPrinter_Printing__abortJobCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)finishJobCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PKPrinter_Printing__finishJobCompletionHandler___block_invoke;
  v6[3] = &unk_279A92CF0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(PKPrinter *)self finalizeJob:0 completionHandler:v6];
}

uint64_t __50__PKPrinter_Printing__finishJobCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2)
    {
      v3 = 0;
    }

    else
    {
      v3 = 1282;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)finalizeJob:(BOOL)job completionHandler:(id)handler
{
  jobCopy = job;
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  job_request = self->_job_request;
  if (job_request)
  {
    self->_job_request = 0;
    v8 = job_request;

    [(PKPrintJobRequest *)v8 finishRequest:jobCopy completionHandler:handlerCopy];
  }

  else
  {
    v9 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      selfCopy = self;
      v12 = 2080;
      v13 = "";
      _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_DEFAULT, "%@: -finishJob called without -startJob%s", &v10, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

@end