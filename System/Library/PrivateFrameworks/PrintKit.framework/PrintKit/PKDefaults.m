@interface PKDefaults
+ (BOOL)airPrintBeaconDiscoveryAllowed;
+ (BOOL)ippsIsRequired;
+ (BOOL)mcProfilePrintersOnlyAllowed;
+ (BOOL)urfIsOptional;
+ (BOOL)uriMatchesMCProfileAdded:(id)a3;
+ (NSArray)iCloudPrinters;
+ (NSArray)iCloudPrintersSync;
+ (id)absoluteSpoolDirectory;
+ (id)lastUsedPrinters;
+ (id)lastUsedPrintersForPhoto:(BOOL)a3;
+ (id)requiredPDL;
+ (void)addLastUsedPrinter:(id)a3 duplexMode:(id)a4 lastUsedSize:(CGSize)a5 forPhoto:(BOOL)a6;
+ (void)addPrinterToiCloud:(id)a3 displayName:(id)a4 location:(id)a5;
+ (void)getUpdatediCloudPrintersFromPrinterTool;
+ (void)lastUsedPrintersCompletionHandler:(id)a3;
+ (void)lastUsedPrintersForPhoto:(BOOL)a3 completionHandler:(id)a4;
+ (void)removePrinterFromiCloud:(id)a3;
+ (void)resetPKCloudData;
+ (void)seenPrintersCompletionHandler:(id)a3;
+ (void)setICloudPrinters:(id)a3;
+ (void)startiCloudListening;
+ (void)updateiCloudPrinterCustomLocation:(id)a3 customLocation:(id)a4;
+ (void)updateiCloudPrinterCustomName:(id)a3 customName:(id)a4;
@end

@implementation PKDefaults

+ (void)lastUsedPrintersCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[PKPrinterTool_Client sharedClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PKDefaults_lastUsedPrintersCompletionHandler___block_invoke;
  v6[3] = &unk_279A91D68;
  v5 = v3;
  v7 = v5;
  [v4 getLastUsedPrintersForCurrentNetworkCompletionHandler:v6];
}

void __48__PKDefaults_lastUsedPrintersCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a1;
  v27 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v20 = objc_opt_new();
  v19 = +[PKDefaults mcProfilePrintersOnlyAllowed];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v18;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v4)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v22 + 1) + 8 * i);
      v7 = [v6 objectForKeyedSubscript:{@"com.apple.mcprofile-added", v17}];
      v8 = [v7 BOOLValue];

      if (!v8)
      {
        if (v19)
        {
          continue;
        }

LABEL_10:
        v11 = v6;
        v12 = [(NSDictionary *)v11 mutableCopy];
        unxferSize(v12, v11, &cfstr_ComAppleLastUs_1.isa);
        unxferSize(v12, v11, &cfstr_ComAppleLastUs_0.isa);
        unxferSize(v12, v11, &cfstr_ComAppleLastUs.isa);

        [v20 addObject:v12];
        continue;
      }

      v9 = [v6 objectForKeyedSubscript:@"printer-dns-sd-name"];
      v10 = [PKDefaults uriMatchesMCProfileAdded:v9];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);
LABEL_13:

  v13 = *(v17 + 32);
  v14 = v20;
  if ([v14 count] > 3)
  {
    v15 = [v14 subarrayWithRange:{0, 3}];
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;

  (*(v13 + 16))(v13, v16);
}

+ (id)lastUsedPrinters
{
  v2 = a1;
  if (object_isClass(v2))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKDefaults lastUsedPrinters]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v2, "+[PKDefaults lastUsedPrinters]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__PKDefaults_lastUsedPrinters__block_invoke;
  v6[3] = &__block_descriptor_40_e24_v16__0___v____NSArray__8l;
  v6[4] = v2;
  v4 = withDebuggableSemaphore<NSArray * {__strong}>(v3, v6, 3.0);

  return v4;
}

+ (void)lastUsedPrintersForPhoto:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v48 = *MEMORY[0x277D85DE8];
  v30 = a4;
  v32 = objc_opt_new();
  +[PKDefaults lastUsedPrinters];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v5)
  {
    v6 = *v42;
    v7 = PKPrinterWasLastUsedPrinterForDocumentKey;
    if (v4)
    {
      v7 = PKPrinterWasLastUsedPrinterForPhotoKey;
    }

    v8 = *v7;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v10 objectForKey:v8];
        v12 = v11;
        if (v11 && [v11 BOOLValue])
        {
          [v32 addObject:v10];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = obj;
          v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v14)
          {
            v15 = *v38;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                if (*(*(&v37 + 1) + 8 * j) != v10)
                {
                  [v32 addObject:?];
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v14);
          }

          goto LABEL_23;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  if (![v32 count])
  {
    [v32 addObjectsFromArray:obj];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v32;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v18)
  {
    v19 = *v34;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v33 + 1) + 8 * k);
        if (v4)
        {
          v22 = [*(*(&v33 + 1) + 8 * k) objectForKeyedSubscript:@"com.apple.last-used-photo-size"];
          v23 = v22 == 0;

          if (v23)
          {
            continue;
          }

          v24 = [v21 objectForKeyedSubscript:@"com.apple.last-used-photo-size"];
          [v21 setObject:v24 forKeyedSubscript:@"com.apple.last-used-size"];
        }

        else
        {
          v25 = [*(*(&v33 + 1) + 8 * k) objectForKeyedSubscript:@"com.apple.last-used-document-size"];
          v26 = v25 == 0;

          if (v26)
          {
            continue;
          }

          v24 = [v21 objectForKeyedSubscript:@"com.apple.last-used-document-size"];
          [v21 setObject:v24 forKeyedSubscript:@"com.apple.last-used-size"];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v18);
  }

  v27 = v17;
  if ([v27 count] > 3)
  {
    v28 = [v27 subarrayWithRange:{0, 3}];
  }

  else
  {
    v28 = v27;
  }

  v29 = v28;

  v30[2](v30, v29);
}

+ (id)lastUsedPrintersForPhoto:(BOOL)a3
{
  v4 = a1;
  if (object_isClass(v4))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKDefaults lastUsedPrintersForPhoto:]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "+[PKDefaults lastUsedPrintersForPhoto:]"];
  }
  v5 = ;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__PKDefaults_lastUsedPrintersForPhoto___block_invoke;
  v8[3] = &__block_descriptor_41_e24_v16__0___v____NSArray__8l;
  v8[4] = v4;
  v9 = a3;
  v6 = withDebuggableSemaphore<NSArray * {__strong}>(v5, v8, 3.0);

  return v6;
}

+ (void)addLastUsedPrinter:(id)a3 duplexMode:(id)a4 lastUsedSize:(CGSize)a5 forPhoto:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 browseInfo];
  v13 = [v12 isEphemeral];

  if (v13)
  {
    v14 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v14, OS_LOG_TYPE_INFO, "Not adding ephemeral printer to last used", buf, 2u);
    }
  }

  else
  {
    v14 = objc_opt_new();
    v15 = [v10 uuid];

    if (v15)
    {
      v16 = [v10 uuid];
      [v14 setObject:v16 forKeyedSubscript:@"printer-uuid"];
    }

    v17 = [v10 name];
    v39 = v17;
    if (v17)
    {
      [v14 setObject:v17 forKeyedSubscript:@"printer-dns-sd-name"];
    }

    v18 = [v10 browseInfo];
    v19 = [v18 bonjourName];
    v20 = [v19 dataRepresentation];

    v37 = v20;
    if (v20)
    {
      [v14 setObject:v20 forKeyedSubscript:@"com.apple.printer-endpoint-data"];
    }

    v21 = [v10 displayName];
    v38 = v21;
    if (v21)
    {
      [v14 setObject:v21 forKeyedSubscript:@"com.apple.printkit.printer-display-name"];
    }

    v22 = [v10 location];
    if (v22)
    {
      [v14 setObject:v22 forKeyedSubscript:@"com.apple.printkit.printer-location"];
    }

    v23 = [v10 printerURL];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 absoluteString];
      [v14 setObject:v25 forKeyedSubscript:@"com.apple.printer-url"];
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "type")}];
    [v14 setObject:v26 forKeyedSubscript:@"com.apple.printer-type"];

    if (v11 && (@"one-sided" == v11 || @"two-sided-long-edge" == v11 || @"two-sided-short-edge" == v11))
    {
      [v14 setObject:v11 forKeyedSubscript:@"sides"];
    }

    if ([v10 isFromMCProfile])
    {
      [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.mcprofile-added"];
    }

    if (v6)
    {
      [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.was-last-used-printer-for-photo"];
      v27 = PKPrinterLastUsedPhotoSizeKey;
    }

    else
    {
      [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.was-last-used-printer-for-document"];
      v27 = PKPrinterLastUsedDocumentSizeKey;
    }

    v28 = *v27;
    if (width > 0.0 && height > 0.0)
    {
      v29 = pwgMediaForSize((width * 2540.0 / 72.0 + 0.5), (height * 2540.0 / 72.0 + 0.5), buf);
      if (v29)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-pwg_reference", v28];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v29];
        [v14 setObject:v31 forKeyedSubscript:v30];

        LODWORD(v31) = *(v29 + 7);
        v32 = *(v29 + 6) * 72.0 / 2540.0;
        v40[0] = @"width";
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
        v40[1] = @"height";
        v41[0] = v33;
        v34 = [MEMORY[0x277CCABB0] numberWithDouble:v31 * 72.0 / 2540.0];
        v41[1] = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
        [v14 setObject:v35 forKeyedSubscript:v28];
      }

      else
      {
        v42[0] = @"width";
        v30 = [MEMORY[0x277CCABB0] numberWithDouble:width];
        v42[1] = @"height";
        v43[0] = v30;
        v33 = [MEMORY[0x277CCABB0] numberWithDouble:height];
        v43[1] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
        [v14 setObject:v34 forKeyedSubscript:v28];
      }
    }

    v36 = +[PKPrinterTool_Client sharedClient];
    [v36 setLastUsedPrintersForCurrentNetwork:v14];
  }
}

+ (NSArray)iCloudPrintersSync
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[PKPrinterTool_Client sharedClient];
  v4 = a1;
  if (object_isClass(v4))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKDefaults iCloudPrintersSync]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "+[PKDefaults iCloudPrintersSync]"];
  }
  v5 = ;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __32__PKDefaults_iCloudPrintersSync__block_invoke;
  v19[3] = &unk_279A91DD0;
  v6 = v3;
  v20 = v6;
  v7 = withDebuggableSemaphore<NSArray<NSDictionary *> * {__strong}>(v5, v19, 10.0);

  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [PKiCloudPrinter PKiCloudPrinterWithInfo:*(*(&v15 + 1) + 8 * i)];
        [v8 addObject:v13];
      }

      v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v10);
  }

  return v8;
}

+ (void)getUpdatediCloudPrintersFromPrinterTool
{
  v2 = +[PKPrinterTool_Client sharedClient];
  [v2 getiCloudPrintersWithCompletionHandler:&__block_literal_global_5];
}

void __53__PKDefaults_getUpdatediCloudPrintersFromPrinterTool__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a2;
  obj = objc_opt_new();
  v2 = +[PKDefaults mcProfilePrintersOnlyAllowed];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v12;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [PKiCloudPrinter PKiCloudPrinterWithInfo:v7, v12];
        if (![v8 isFromMCProfile])
        {
          if (v2)
          {
            goto LABEL_11;
          }

LABEL_10:
          [obj addObject:v8];
          goto LABEL_11;
        }

        v9 = [v7 objectForKeyedSubscript:@"printer-dns-sd-name"];
        v10 = [PKDefaults uriMatchesMCProfileAdded:v9];

        if (v10)
        {
          goto LABEL_10;
        }

LABEL_11:
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  objc_storeStrong(&_iCloudPrinters, obj);
  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"com.apple.printkit.iCloudPrintersChanged.notification" object:0];
}

+ (NSArray)iCloudPrinters
{
  +[PKDefaults startiCloudListening];
  v2 = _iCloudPrinters;
  if (!_iCloudPrinters)
  {
    +[PKDefaults getUpdatediCloudPrintersFromPrinterTool];
    v2 = _iCloudPrinters;
  }

  return v2;
}

+ (void)startiCloudListening
{
  if (+[PKDefaults startiCloudListening]::onceToken != -1)
  {
    +[PKDefaults startiCloudListening];
  }
}

void __34__PKDefaults_startiCloudListening__block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, pk_iCloudPrintersChanged, @"com.apple.printerTool.iCloud-printers-changed", 0, 0);
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v1 = [v2 addObserverForName:@"com.apple.printerTool.iCloud-printers-changed" object:0 queue:0 usingBlock:&__block_literal_global_24];
}

+ (void)setICloudPrinters:(id)a3
{
  v5 = a3;
  +[PKDefaults startiCloudListening];
  objc_storeStrong(&_iCloudPrinters, a3);
  v4 = +[PKPrinterTool_Client sharedClient];
  [v4 setiCloudPrinters:v5];
}

+ (void)addPrinterToiCloud:(id)a3 displayName:(id)a4 location:(id)a5
{
  v7 = [PKiCloudPrinter PKiCloudPrinterWithPKPrinter:a3 displayName:a4 location:a5];
  v5 = +[PKPrinterTool_Client sharedClient];
  [v5 addPrinterToiCloud:v7];
  v6 = _iCloudPrinters;
  _iCloudPrinters = 0;
}

+ (void)removePrinterFromiCloud:(id)a3
{
  v5 = a3;
  +[PKDefaults startiCloudListening];
  v3 = +[PKPrinterTool_Client sharedClient];
  [v3 removePrinterFromiCloud:v5];
  v4 = _iCloudPrinters;
  _iCloudPrinters = 0;
}

+ (void)updateiCloudPrinterCustomName:(id)a3 customName:(id)a4
{
  v8 = a3;
  v5 = a4;
  +[PKDefaults startiCloudListening];
  if (v8)
  {
    v6 = +[PKPrinterTool_Client sharedClient];
    [v6 updateiCloudPrinter:v8 withInfo:v5 forInfoKey:@"com.apple.printkit.printer-custom-name"];
    v7 = _iCloudPrinters;
    _iCloudPrinters = 0;
  }
}

+ (void)updateiCloudPrinterCustomLocation:(id)a3 customLocation:(id)a4
{
  v8 = a3;
  v5 = a4;
  +[PKDefaults startiCloudListening];
  if (v8)
  {
    v6 = +[PKPrinterTool_Client sharedClient];
    [v6 updateiCloudPrinter:v8 withInfo:v5 forInfoKey:@"com.apple.printkit.printer-custom-location"];
    v7 = _iCloudPrinters;
    _iCloudPrinters = 0;
  }
}

+ (void)resetPKCloudData
{
  +[PKDefaults startiCloudListening];
  v4 = +[PKPrinterTool_Client sharedClient];
  [v4 resetPKCloudData];
  v2 = _iCloudPrinters;
  _iCloudPrinters = 0;

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"com.apple.printkit.iCloudPrintersChanged.notification" object:0];
}

+ (void)seenPrintersCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = +[PKPrinterTool_Client sharedClient];
  [v3 getLastUsedPrintersForCurrentNetworkCompletionHandler:v4];
}

+ (BOOL)urfIsOptional
{
  if (+[PKDefaults(PrintKitPrivate) urfIsOptional]::sOncePredicate != -1)
  {
    +[PKDefaults(PrintKitPrivate) urfIsOptional];
  }

  return +[PKDefaults(PrintKitPrivate) urfIsOptional]::optionalURF;
}

uint64_t __44__PKDefaults_PrintKitPrivate__urfIsOptional__block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"PrintKitOptionalURF", @".GlobalPreferences", 0);
  +[PKDefaults(PrintKitPrivate) urfIsOptional]::optionalURF = result != 0;
  return result;
}

+ (id)requiredPDL
{
  if (+[PKDefaults urfIsOptional])
  {
    v2 = 0;
  }

  else
  {
    v2 = @"image/urf";
  }

  return v2;
}

+ (BOOL)ippsIsRequired
{
  if (+[PKDefaults(PrintKitPrivate) ippsIsRequired]::sOncePredicateIPPSRequired != -1)
  {
    +[PKDefaults(PrintKitPrivate) ippsIsRequired];
  }

  return +[PKDefaults(PrintKitPrivate) ippsIsRequired]::ippsRequired;
}

void __45__PKDefaults_PrintKitPrivate__ippsIsRequired__block_invoke()
{
  v0 = [getMCProfileConnectionClass() sharedConnection];
  +[PKDefaults(PrintKitPrivate) ippsIsRequired]::ippsRequired = [v0 isAirPrintTrustedTLSRequirementEnforced];
}

+ (BOOL)mcProfilePrintersOnlyAllowed
{
  if (+[PKDefaults(PrintKitPrivate) mcProfilePrintersOnlyAllowed]::sOncePredicateProfileOnly != -1)
  {
    +[PKDefaults(PrintKitPrivate) mcProfilePrintersOnlyAllowed];
  }

  return +[PKDefaults(PrintKitPrivate) mcProfilePrintersOnlyAllowed]::onlyProfilePrintersAllowed;
}

void __59__PKDefaults_PrintKitPrivate__mcProfilePrintersOnlyAllowed__block_invoke()
{
  v0 = [getMCProfileConnectionClass() sharedConnection];
  v1 = [v0 isAirPrintAllowed];

  +[PKDefaults(PrintKitPrivate) mcProfilePrintersOnlyAllowed]::onlyProfilePrintersAllowed = v1 ^ 1;
}

+ (BOOL)airPrintBeaconDiscoveryAllowed
{
  if (+[PKDefaults(PrintKitPrivate) airPrintBeaconDiscoveryAllowed]::sOncePredicateProfileOnly != -1)
  {
    +[PKDefaults(PrintKitPrivate) airPrintBeaconDiscoveryAllowed];
  }

  return +[PKDefaults(PrintKitPrivate) airPrintBeaconDiscoveryAllowed]::allowed;
}

void __61__PKDefaults_PrintKitPrivate__airPrintBeaconDiscoveryAllowed__block_invoke()
{
  v0 = [getMCProfileConnectionClass() sharedConnection];
  +[PKDefaults(PrintKitPrivate) airPrintBeaconDiscoveryAllowed]::allowed = [v0 isAirPrintiBeaconDiscoveryAllowed];
}

+ (BOOL)uriMatchesMCProfileAdded:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [getMCProfileConnectionClass() sharedConnection];
  v5 = [v4 knownAirPrintIPPURLStrings];

  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (v6 || (v10 = *(*(&v13 + 1) + 8 * i), ![v10 caseInsensitiveCompare:v3]))
        {
          v6 = 1;
        }

        else
        {
          v11 = [v10 stringByReplacingOccurrencesOfString:@"ipp://" withString:@"ipps://"];
          v6 = [v11 caseInsensitiveCompare:v3] == 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v6;
}

+ (id)absoluteSpoolDirectory
{
  v3 = +[PKPrinterTool_Client sharedClient];
  v4 = a1;
  if (object_isClass(v4))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKDefaults(PrintKitPrivate) absoluteSpoolDirectory]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "+[PKDefaults(PrintKitPrivate) absoluteSpoolDirectory]"];
  }
  v5 = ;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__PKDefaults_PrintKitPrivate__absoluteSpoolDirectory__block_invoke;
  v9[3] = &unk_279A91E38;
  v6 = v3;
  v10 = v6;
  v7 = withDebuggableSemaphore<NSURL * {__strong}>(v5, v9, 5.0);

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/tmp/" isDirectory:1];
  }

  return v7;
}

@end