@interface PKPrinter
+ (BOOL)printerLookupWithName:(id)a3 andTimeout:(double)a4;
+ (PKPrinter)printerWithBonjourEndpoint:(id)a3 discoveryTimeout:(double)a4 completionHandler:(id)a5;
+ (PKPrinter)printerWithEndpointData:(id)a3 discoveryTime:(double)a4 completionHandler:(id)a5;
+ (PKPrinter)printerWithName:(id)a3;
+ (PKPrinter)printerWithName:(id)a3 discoveryTimeout:(double)a4;
+ (PKPrinter)printerWithName:(id)a3 discoveryTimeout:(double)a4 completionHandler:(id)a5;
+ (PKPrinter)printerWithURL:(id)a3 discoveryTimeout:(double)a4 completionHandler:(id)a5;
+ (PKPrinter)printerWithiCloudPrinter:(id)a3 discoveryTime:(double)a4 completionHandler:(id)a5;
- (BOOL)_allowedToPrintToThisPrinter;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMCProfile;
- (BOOL)isPaperReady:(id)a3;
- (BOOL)knowsReadyPaperList;
- (NSDictionary)printInfoSupported;
- (NSString)bonjourDisplayName;
- (NSString)displayName;
- (NSString)location;
- (NSString)name;
- (NSString)uuid;
- (NSURL)nearbyURL;
- (NSURL)printerURL;
- (id)availableRollPapersPreferBorderless:(BOOL)a3;
- (id)debugDescription;
- (id)initPKPrinterWithBrowseInfo:(id)a3;
- (id)matchedPaper:(id)a3 preferBorderless:(BOOL)a4 withDuplexMode:(id)a5 didMatch:(BOOL *)a6;
- (id)paperListForDuplexMode:(id)a3;
- (id)papersForDocumentWithSize:(CGSize)a3 scaleUpOnRoll:(BOOL)a4 andDuplex:(BOOL)a5;
- (id)papersForPhotoWithSize:(CGSize)a3;
- (int64_t)jobAccountIDSupport;
- (int64_t)kind;
- (int64_t)sendData:(const char *)a3 ofLength:(int64_t)a4;
- (int64_t)startJob:(id)a3 ofType:(id)a4;
- (unint64_t)jobTypesSupported;
- (void)_checkAvailable:(double)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)_identifySelf:(id)a3;
- (void)_setInitialAccessStateFromBrowseInfo;
- (void)_updateAccessState:(int64_t)a3;
- (void)_updateDescription:(id)a3 browseInfo:(id)a4;
- (void)abortJobCompletionHandler:(id)a3;
- (void)cancelUnlock;
- (void)finalizeJob:(BOOL)a3 completionHandler:(id)a4;
- (void)finishJobCompletionHandler:(id)a3;
- (void)getSupplyLevels:(id)a3;
- (void)identifySelf;
- (void)pollForPrinterAttributes:(id)a3 completionHandler:(id)a4;
- (void)pollForPrinterStatusQueue:(id)a3 completionHandler:(id)a4;
- (void)printURL:(id)a3 ofType:(id)a4 printSettings:(id)a5 completionHandler:(id)a6;
- (void)printURL:(id)a3 ofType:(id)a4 printSettings:(id)a5 completionHandlerWithLocalJobNumber:(id)a6;
- (void)removeCredentialsFromKeychain;
- (void)unlockWithCompletionHandler:(id)a3;
- (void)updateiCloudPrinterInfo;
- (void)withDescriptionAsync:(id)a3;
@end

@implementation PKPrinter

- (id)initPKPrinterWithBrowseInfo:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PKPrinter;
  v6 = [(PKPrinter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_browseInfo, a3);
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

    v5 = [(PKPrinter *)self printerURL];
    v6 = [v5 absoluteString];
    v7 = [PKDefaults uriMatchesMCProfileAdded:v6];

    if (v7)
    {
      return 1;
    }

    v3 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = self;
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
      v10 = self;
      v11 = 2080;
      v12 = "";
      v4 = "%@: ipps is required for this printer%s";
LABEL_10:
      _os_log_impl(&dword_25F5FC000, v3, OS_LOG_TYPE_DEFAULT, v4, &v9, 0x16u);
    }
  }

  return 0;
}

+ (PKPrinter)printerWithURL:(id)a3 discoveryTimeout:(double)a4 completionHandler:(id)a5
{
  v10 = a5;
  v8 = [PKPrinterBonjourEndpoint endpointWithURL:a3];
  [a1 printerWithBonjourEndpoint:v8 discoveryTimeout:v10 completionHandler:a4];

  return result;
}

+ (PKPrinter)printerWithName:(id)a3 discoveryTimeout:(double)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([v8 hasPrefix:@"ipp:"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"ipps:"))
  {
    v10 = PKURLWithString(v8);
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
    v11 = [PKPrinterBonjourEndpoint endpointWithBonjourString:v8];
    if (v11)
    {
LABEL_7:
      [a1 printerWithBonjourEndpoint:v11 discoveryTimeout:v9 completionHandler:a4];
      goto LABEL_12;
    }
  }

  v12 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = a1;
    v16 = 2112;
    v17 = v8;
    v18 = 2080;
    v19 = "";
    _os_log_impl(&dword_25F5FC000, v12, OS_LOG_TYPE_DEFAULT, "%@: Couldn't create a bonjour endpoint from '%@'%s", &v14, 0x20u);
  }

  v9[2](v9, 0);
LABEL_12:

  return result;
}

+ (PKPrinter)printerWithBonjourEndpoint:(id)a3 discoveryTimeout:(double)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = dispatch_get_global_queue(0, 0);
  v9 = a3;
  dispatch_async(v8, &__block_literal_global_10);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__PKPrinter_printerWithBonjourEndpoint_discoveryTimeout_completionHandler___block_invoke_2;
  v12[3] = &unk_279A92A98;
  v13 = v7;
  v10 = v7;
  [PKPrinterBrowseInfo findPrinterWithBonjourEndpoint:v9 withTimeout:v12 completionHandler:a4];

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

+ (PKPrinter)printerWithEndpointData:(id)a3 discoveryTime:(double)a4 completionHandler:(id)a5
{
  v10 = a5;
  v8 = [PKPrinterBonjourEndpoint endpointWithData:a3];
  if (v8)
  {
    [a1 printerWithBonjourEndpoint:v8 discoveryTimeout:v10 completionHandler:a4];
  }

  else
  {
    v10[2](v10, 0);
  }

  return result;
}

+ (PKPrinter)printerWithiCloudPrinter:(id)a3 discoveryTime:(double)a4 completionHandler:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [[PKCloudResolveContext alloc] initWithPKCloudPrinter:v7 timeout:v8 completionHandler:a4];
  v10 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 displayName];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_25F5FC000, v10, OS_LOG_TYPE_DEFAULT, "Created icloud resolution context %@ for %@", &v13, 0x16u);
  }

  [(PKCloudResolveContext *)v9 start];
  return result;
}

+ (PKPrinter)printerWithName:(id)a3
{
  v3 = [a1 printerWithName:a3 discoveryTimeout:2.0];

  return v3;
}

+ (PKPrinter)printerWithName:(id)a3 discoveryTimeout:(double)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__PKPrinter_printerWithName_discoveryTimeout___block_invoke;
  v12[3] = &unk_279A923A0;
  v13 = v7;
  v14 = &v15;
  v8 = v7;
  [a1 printerWithName:v6 discoveryTimeout:v12 completionHandler:a4];

  v9 = dispatch_time(0, (a4 * 1000000000.0));
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

+ (BOOL)printerLookupWithName:(id)a3 andTimeout:(double)a4
{
  v4 = [a1 printerWithName:a3 discoveryTimeout:a4];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    v6 = [(PKPrinter *)self uuid];
    v7 = [v5 uuid];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_updateDescription:(id)a3 browseInfo:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    objc_storeStrong(&self->_printerDescription, a3);
  }

  if (v7)
  {
    objc_storeStrong(&self->_browseInfo, a4);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  printerDescriptionTime = self->_printerDescriptionTime;
  self->_printerDescriptionTime = v8;
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

- (void)withDescriptionAsync:(id)a3
{
  v4 = a3;
  v5 = self->_printerDescription;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:self->_printerDescriptionTime];
    if (v7 > 5.0)
    {
      v8 = _PKLogCategory(PKLogCategoryFramework);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_DEFAULT, "refreshing printer description after timeout", buf, 2u);
      }

      v9 = [v6 addTimeInterval:60.0];
      printerDescriptionTime = self->_printerDescriptionTime;
      self->_printerDescriptionTime = v9;

      v11 = [(PKPrinter *)self bonjourName];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__PKPrinter_withDescriptionAsync___block_invoke;
      v15[3] = &unk_279A92AE8;
      v15[4] = self;
      PrintdRPC::GetPrinterDescription(v11, 0, v15);
    }

    v4[2](v4, v5);
  }

  else
  {
    v12 = [(PKPrinter *)self bonjourName];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__PKPrinter_withDescriptionAsync___block_invoke_2;
    v13[3] = &unk_279A92B10;
    v13[4] = self;
    v14 = v4;
    PrintdRPC::GetPrinterDescription(v12, 0, v13);
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
  v3 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  v4 = self;
  if (object_isClass(v4))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKPrinter printerURL]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "-[PKPrinter printerURL]"];
  }
  v5 = ;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __23__PKPrinter_printerURL__block_invoke;
  v9[3] = &unk_279A91E38;
  v6 = v3;
  v10 = v6;
  v7 = withDebuggableSemaphore<NSURL * {__strong}>(v5, v9, 5.0);

  return v7;
}

- (NSURL)nearbyURL
{
  v5 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  v6 = [v5 provenance];

  if (v6 == 4)
  {
    v7 = [(PKPrinter *)self bonjourDisplayName];
    v8 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

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

    v13 = [(PKPrinter *)self uuid];
    if (v13)
    {
      v14 = MEMORY[0x277CCACA8];
      v2 = [(PKPrinter *)self uuid];
      v3 = [v2 lowercaseString];
      v15 = [v14 stringWithFormat:@"uuid=%@", v3];
    }

    else
    {
      v15 = 0;
    }

    [v10 setQuery:v15];
    if (v13)
    {
    }

    v16 = [v10 URL];
    if (v16)
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

  v16 = [(PKPrinter *)self printerURL];
LABEL_16:

  return v16;
}

- (NSString)name
{
  v2 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  v3 = [v2 persistentNameRepresentationForPrintKitUI];

  return v3;
}

- (NSString)bonjourDisplayName
{
  v2 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  v3 = [v2 displayNameForPrintKitUI];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_28719ACE8;
  }

  return v4;
}

- (NSString)displayName
{
  v3 = [(PKiCloudPrinter *)self->_iCloudPrinter customName];
  if (!v3)
  {
    v5 = [(PKPrinter *)self bonjourDisplayName];
    if (v5)
    {
      v3 = v5;
      v7 = [(__CFString *)v5 rangeOfString:@" @ "];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL && v6)
      {
        v8 = [(__CFString *)v3 substringToIndex:v7];

        v3 = v8;
      }
    }

    else
    {
      v9 = [(PKiCloudPrinter *)self->_iCloudPrinter displayName];
      if (v9)
      {
        v3 = v9;
      }

      else
      {
        v3 = &stru_28719ACE8;
      }
    }
  }

  return v3;
}

- (NSString)location
{
  v3 = [(PKiCloudPrinter *)self->_iCloudPrinter customLocation];
  if (v3 || ([(PKPrinterBrowseInfo *)self->_browseInfo location], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    v6 = [(PKPrinter *)self bonjourDisplayName];
    v7 = [v6 rangeOfString:@" @ "];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v8 || ([v6 substringFromIndex:v7 + v8], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = [(PKiCloudPrinter *)self->_iCloudPrinter location];
    }
  }

  return v4;
}

- (NSString)uuid
{
  v2 = [(PKPrinterBrowseInfo *)self->_browseInfo uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)isFromMCProfile
{
  v3 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  if ([v3 provenance] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKPrinter *)self printerURL];
    v6 = [v5 absoluteString];
    v4 = [PKDefaults uriMatchesMCProfileAdded:v6];
  }

  return v4;
}

- (int64_t)kind
{
  v2 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  if ([v2 provenance] == 8)
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
  v2 = [(PKPrinterBrowseInfo *)self->_browseInfo txtRecord];
  v3 = [v2 objectForKey:@"kind"];

  if (v3)
  {
    v4 = [v3 lowercaseString];
    v5 = [v4 componentsSeparatedByString:{@", "}];

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
  v2 = self;
  if (object_isClass(v2))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKPrinter printInfoSupported]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v2, "-[PKPrinter printInfoSupported]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__PKPrinter_printInfoSupported__block_invoke;
  v6[3] = &unk_279A92B60;
  v6[4] = v2;
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

- (void)_identifySelf:(id)a3
{
  v9 = a3;
  v4 = objc_opt_new();
  if (([v9 identifyActions] & 1) != 0 && (PKLocalizedString(&cfstr_AirprintReady.isa, "AirPrint ready message to be shown on printer"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v4 addObject:@"display"];
  }

  else
  {
    v6 = 0;
  }

  if (([v9 identifyActions] & 2) != 0)
  {
    [v4 addObject:@"flash"];
  }

  if (([v9 identifyActions] & 4) != 0)
  {
    [v4 addObject:@"sound"];
  }

  v7 = [(PKPrinter *)self browseInfo];
  v8 = [v7 bonjourName];
  PrintdRPC::IdentifyPrinter(v8, v6, v4);
}

- (void)_updateAccessState:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessState = self->_accessState;
    v7 = 138413058;
    v8 = self;
    v9 = 1024;
    v10 = accessState;
    v11 = 1024;
    v12 = a3;
    v13 = 2080;
    v14 = "";
    _os_log_impl(&dword_25F5FC000, v5, OS_LOG_TYPE_DEFAULT, "%@: _accessState %d to %d%s", &v7, 0x22u);
  }

  self->_accessState = a3;
}

- (void)unlockWithCompletionHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    accessState = self->_accessState;
    *buf = 138412802;
    v17 = self;
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
  v7 = v4;
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
    v10 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PKPrinter_unlockWithCompletionHandler___block_invoke_3;
    v11[3] = &unk_279A92BD8;
    objc_copyWeak(&v13, buf);
    v12 = v9;
    PrintdRPC::CheckAccessStateAsync(v10, v11);

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
    v5 = self;
    v6 = 2080;
    v7 = "";
    _os_log_impl(&dword_25F5FC000, v3, OS_LOG_TYPE_DEFAULT, "%@: cancelUnlock%s", &v4, 0x16u);
  }

  PKCancelAlert(&cfstr_Cancelunlock.isa);
}

- (void)removeCredentialsFromKeychain
{
  v3 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  PrintdRPC::RemoveKeychainItem(v3, v4);

  [(PKPrinter *)self _setInitialAccessStateFromBrowseInfo];
}

- (void)_setInitialAccessStateFromBrowseInfo
{
  v3 = [(PKPrinterBrowseInfo *)self->_browseInfo txtRecord];
  v6 = [v3 objectForKeyedSubscript:@"air"];

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

- (void)_checkAvailable:(double)a3 queue:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
  v11 = [v10 provenance];

  if (v11 == 2)
  {
    v12 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
      v14 = [v13 provenanceIdentifier];
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2080;
      v26 = "";
      _os_log_impl(&dword_25F5FC000, v12, OS_LOG_TYPE_DEFAULT, "%@: extension printer (%{public}@) always available%s", buf, 0x20u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke;
    block[3] = &unk_279A92C00;
    v24 = v9;
    dispatch_async(v8, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__127;
    v27 = __Block_byref_object_dispose__128;
    v28 = MEMORY[0x25F8E4580](v9);
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
    v16 = dispatch_time(0, (a3 * 1000000000.0));
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
    v17 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__PKPrinter__checkAvailable_queue_completionHandler___block_invoke_3;
    v19[3] = &unk_279A92C50;
    v19[4] = self;
    v18 = v15;
    v20 = v18;
    PrintdRPC::GetPrinterDescription(v17, 1, v19);

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

- (void)pollForPrinterAttributes:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(PKPrinter *)self bonjourName];
  PrintdRPC::QueryPrinterWithAttributess(v7, v8, v6);
}

- (void)pollForPrinterStatusQueue:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = self;
    _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_DEFAULT, "PKPrinter<%p>: pollForPrinterStatusQueue: start", buf, 0xCu);
  }

  v11 = PrinterStatusQueuePoll::requestedAttributess(v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PKPrinter_pollForPrinterStatusQueue_completionHandler___block_invoke;
  v14[3] = &unk_279A92C78;
  v14[4] = self;
  v17 = Current;
  v12 = v6;
  v15 = v12;
  v13 = v7;
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

- (void)getSupplyLevels:(id)a3
{
  v4 = a3;
  v5 = SuppliesPoll::requestedAttributess(v4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__PKPrinter_getSupplyLevels___block_invoke;
  v7[3] = &unk_279A92CA0;
  v6 = v4;
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
  v2 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v3 = [v2 hasMediaReady];

  return v3;
}

- (BOOL)isPaperReady:(id)a3
{
  v4 = a3;
  v5 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v6 = [v5 isPaperReady:v4];

  return v6;
}

- (id)availableRollPapersPreferBorderless:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v5 = [v4 availableRollPapersPreferBorderless:v3];

  return v5;
}

- (id)papersForPhotoWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v6 = [v5 papersForPhotoWithSize:{width, height}];

  return v6;
}

- (id)paperListForDuplexMode:(id)a3
{
  v4 = a3;
  v5 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v6 = [v5 paperListForDuplexMode:v4];

  return v6;
}

- (id)papersForDocumentWithSize:(CGSize)a3 scaleUpOnRoll:(BOOL)a4 andDuplex:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.height;
  width = a3.width;
  v9 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v10 = [v9 papersForDocumentWithSize:v6 scaleUpOnRoll:v5 andDuplex:{width, height}];

  return v10;
}

- (id)matchedPaper:(id)a3 preferBorderless:(BOOL)a4 withDuplexMode:(id)a5 didMatch:(BOOL *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = [(PKPrinterDescription *)self->_printerDescription paperList];
  v13 = [v12 matchedPaper:v10 preferBorderless:v8 withDuplexMode:v11 didMatch:a6];

  return v13;
}

- (void)printURL:(id)a3 ofType:(id)a4 printSettings:(id)a5 completionHandlerWithLocalJobNumber:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v33 = self;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 2080;
    v41 = "";
    _os_log_impl(&dword_25F5FC000, v14, OS_LOG_TYPE_DEFAULT, "%@: printURL:%@ ofType:%@ printSettings:%@%s", buf, 0x34u);
  }

  v15 = [(PKPrinter *)self _allowedToPrintToThisPrinter];
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    if ([(__CFString *)v11 isEqual:@"image/heic"])
    {
      v17 = @"image/jpeg";
    }

    else
    {
      v18 = [(__CFString *)v11 isEqual:@"image/png"];
      v17 = @"image/jpeg";
      if (!v18)
      {
        v17 = v11;
      }
    }

    v19 = v17;
    v20 = [(PKPrinterDescription *)self->_printerDescription jpegFeatures];
    v21 = [v20 containsObject:@"icc"];

    v22 = [PKPrintJobRequest alloc];
    v23 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v24 = [(PKPrintJobRequest *)v22 initWithPrinterName:v23];

    [(PKPrintJobRequest *)v24 setPrintSettings:v12];
    [(PKPrintJobRequest *)v24 setFileType:v19];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__PKPrinter_Printing__printURL_ofType_printSettings_completionHandlerWithLocalJobNumber___block_invoke;
    v26[3] = &unk_279A92CC8;
    v30 = v13;
    v27 = v10;
    v25 = v24;
    v28 = v25;
    v29 = v11;
    v31 = v21;
    [(PKPrintJobRequest *)v25 startRequestCompletionHandler:v26];
  }

  else
  {
    (*(v13 + 2))(v13, 0);
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

- (void)printURL:(id)a3 ofType:(id)a4 printSettings:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PKPrinter_Printing__printURL_ofType_printSettings_completionHandler___block_invoke;
  v12[3] = &unk_279A92CF0;
  v13 = v10;
  v11 = v10;
  [(PKPrinter *)self printURL:a3 ofType:a4 printSettings:a5 completionHandlerWithLocalJobNumber:v12];
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

- (int64_t)startJob:(id)a3 ofType:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v6;
    v27 = 2080;
    v28 = "";
    _os_log_impl(&dword_25F5FC000, v8, OS_LOG_TYPE_DEFAULT, "%@: startJob ofType:%@ printSettings:%@%s", buf, 0x2Au);
  }

  if ([(PKPrinter *)self _allowedToPrintToThisPrinter])
  {
    v9 = [PKPrintJobRequest alloc];
    v10 = [(PKPrinterBrowseInfo *)self->_browseInfo bonjourName];
    v11 = [(PKPrintJobRequest *)v9 initWithPrinterName:v10];

    [(PKPrintJobRequest *)v11 setPrintSettings:v6];
    [(PKPrintJobRequest *)v11 setFileType:v7];
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
        v22 = self;
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

- (int64_t)sendData:(const char *)a3 ofLength:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_job_request)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
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
      v15 = self;
      v16 = 2080;
      v17 = "";
      _os_log_impl(&dword_25F5FC000, v7, OS_LOG_TYPE_DEFAULT, "%@: sendData called outside startJob/finishJob%s", buf, 0x16u);
    }

    v9 = 1282;
  }

  return v9;
}

- (void)abortJobCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PKPrinter_Printing__abortJobCompletionHandler___block_invoke;
  v6[3] = &unk_279A92CF0;
  v7 = v4;
  v5 = v4;
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

- (void)finishJobCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__PKPrinter_Printing__finishJobCompletionHandler___block_invoke;
  v6[3] = &unk_279A92CF0;
  v7 = v4;
  v5 = v4;
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

- (void)finalizeJob:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  job_request = self->_job_request;
  if (job_request)
  {
    self->_job_request = 0;
    v8 = job_request;

    [(PKPrintJobRequest *)v8 finishRequest:v4 completionHandler:v6];
  }

  else
  {
    v9 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2080;
      v13 = "";
      _os_log_impl(&dword_25F5FC000, v9, OS_LOG_TYPE_DEFAULT, "%@: -finishJob called without -startJob%s", &v10, 0x16u);
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

@end