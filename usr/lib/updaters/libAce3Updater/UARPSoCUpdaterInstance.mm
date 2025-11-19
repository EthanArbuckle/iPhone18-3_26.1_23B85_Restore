@interface UARPSoCUpdaterInstance
- (BOOL)applyStagedFirmware;
- (BOOL)initUARP;
- (BOOL)initUARPWithFirmware:(id)a3;
- (BOOL)offerFirmwareData:(id)a3;
- (BOOL)offerPersonalizationResponse:(id)a3;
- (BOOL)receievePersonalizationRequestByOfferFirmwareData:(id)a3;
- (NSString)firmwareTagName;
- (NSString)ticketName;
- (UARPSoCUpdaterInstance)initWithHelper:(id)a3 options:(id)a4;
- (UARPSoCUpdaterInstance)initWithLogicUnitNumber:(unsigned int)a3 helper:(id)a4 options:(id)a5;
- (UARPSoCUpdaterInstance)initWithRouterID:(unsigned __int8)a3 helper:(id)a4 options:(id)a5;
- (const)uarpRestoreQueueName;
- (id)name;
- (uarpRestoreLayer4Callbacks)uarpRestoreLayer4Callbacks;
- (void)printUpdaterMode;
- (void)tssRequestWithOptions:(id)a3 serverURL:(id)a4 assetCtx:(void *)a5 siliconCtx:(_UARPSiliconContext *)a6;
- (void)uarpRestoreInitOptions;
- (void)updateAppleProperty:(unsigned int)a3 siliconCtx:(_UARPSiliconContext *)a4;
- (void)updateStagingProgressWithBytesSent:(unsigned int)a3 bytesTotal:(unsigned int)a4;
@end

@implementation UARPSoCUpdaterInstance

- (UARPSoCUpdaterInstance)initWithHelper:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = UARPSoCUpdaterInstance;
  v9 = [(UARPSoCUpdaterInstance *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_log, a3);
    v11 = dispatch_semaphore_create(0);
    initUARPSemaphore = v10->_initUARPSemaphore;
    v10->_initUARPSemaphore = v11;

    v13 = dispatch_semaphore_create(0);
    assetTransferUARPSemaphore = v10->_assetTransferUARPSemaphore;
    v10->_assetTransferUARPSemaphore = v13;

    v15 = dispatch_semaphore_create(0);
    applyAssetUARPSemaphore = v10->_applyAssetUARPSemaphore;
    v10->_applyAssetUARPSemaphore = v15;

    v10->_updaterMode = SoCUpdaterGetMode(v8);
    v10->_uarpContext = 0;
    v10->_isDone = 0;
    tssRequest = v10->_tssRequest;
    v10->_tssRequest = 0;

    tssRequestServerURL = v10->_tssRequestServerURL;
    v10->_tssRequestServerURL = 0;

    v10->_pAssetContext = 0;
    v10->_endpoint = 0;
    manifestPrefixName = v10->_manifestPrefixName;
    v10->_manifestPrefixName = 0;

    ticketLongName = v10->_ticketLongName;
    v10->_ticketLongName = 0;

    v10->_requiresPersonalization = 0;
    v10->_logicUnitNumberFromDevice = -1;
    *&v10->_prefixNeedsLogicalUnitNumber = 0;
    v10->_skipSameVersion = SoCUpdaterShouldSkipSameVersion(v8);
    if (![(UARPSoCUpdaterInstance *)v10 uarpRestoreInitOptions]|| ![(UARPSoCUpdaterInstance *)v10 uarpRestoreLayer4Callbacks]|| ![(UARPSoCUpdaterInstance *)v10 uarpRestoreQueueName])
    {
      v24 = 0;
      goto LABEL_8;
    }

    v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s.queue", -[UARPSoCUpdaterInstance uarpRestoreQueueName](v10, "uarpRestoreQueueName")];
    v22 = dispatch_queue_create([v21 UTF8String], 0);
    queue = v10->_queue;
    v10->_queue = v22;
  }

  v24 = v10;
LABEL_8:

  return v24;
}

- (UARPSoCUpdaterInstance)initWithLogicUnitNumber:(unsigned int)a3 helper:(id)a4 options:(id)a5
{
  v6 = [(UARPSoCUpdaterInstance *)self initWithHelper:a4 options:a5];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_logicUnitNumber = a3;
    v6->_routerID = -1;
    if (![(UARPSoCUpdaterInstance *)v6 initUARPRestoreQueryInfo])
    {
      [p_isa[20] log:{@"%s: Failed to init Restore UARP Query Info.", "-[UARPSoCUpdaterInstance initWithLogicUnitNumber:helper:options:]"}];
      v8 = 0;
      goto LABEL_6;
    }

    [p_isa printUpdaterMode];
  }

  v8 = p_isa;
LABEL_6:

  return v8;
}

- (UARPSoCUpdaterInstance)initWithRouterID:(unsigned __int8)a3 helper:(id)a4 options:(id)a5
{
  v6 = [(UARPSoCUpdaterInstance *)self initWithHelper:a4 options:a5];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_routerID = a3;
    v6->_logicUnitNumber = -1;
    if (![(UARPSoCUpdaterInstance *)v6 initUARPRestoreQueryInfo])
    {
      [p_isa[20] log:{@"%s: Failed to init Restore UARP Query Info.", "-[UARPSoCUpdaterInstance initWithRouterID:helper:options:]"}];
      v8 = 0;
      goto LABEL_6;
    }

    [p_isa printUpdaterMode];
  }

  v8 = p_isa;
LABEL_6:

  return v8;
}

- (BOOL)receievePersonalizationRequestByOfferFirmwareData:(id)a3
{
  log = self->_log;
  v5 = a3;
  [(SoCUpdaterHelper *)log log:@"%s: data = %@", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]", v5];
  tssRequest = self->_tssRequest;
  self->_tssRequest = 0;

  tssRequestServerURL = self->_tssRequestServerURL;
  self->_tssRequestServerURL = 0;

  self->_pAssetContext = 0;
  self->_endpoint = 0;
  v8 = self->_log;
  v9 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)v8 log:@"%s: %@ Offering Firmware", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]", v9];

  LOBYTE(v8) = [(UARPSoCUpdaterInstance *)self initUARPWithFirmware:v5];
  if ((v8 & 1) == 0)
  {
    [(SoCUpdaterHelper *)self->_log log:@"%s: Failed to init Restore UARP.", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]"];
    return 0;
  }

  self->_stagingResult = 0;
  v10 = self->_log;
  v11 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)v10 log:@"%@: Waiting for staging to complete...", v11];

  dispatch_semaphore_wait(self->_assetTransferUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v12 = self->_log;
  v13 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)v12 log:@"%@: Continuing after staging.", v13];

  v14 = self->_tssRequest;
  if (!v14)
  {
    if ([(UARPSoCUpdaterInstance *)self useLocalSigning])
    {
      v14 = self->_tssRequest;
      goto LABEL_5;
    }

    [(SoCUpdaterHelper *)self->_log log:@"%s: Failed to receive tssOptions.", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]"];
    return 0;
  }

LABEL_5:
  [(SoCUpdaterHelper *)self->_log log:@"%s: Success. tssOptions:%@, tssServer:%@ ", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]", v14, self->_tssRequestServerURL];
  return self->_stagingResult;
}

- (BOOL)offerFirmwareData:(id)a3
{
  v4 = a3;
  log = self->_log;
  v6 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)log log:@"%@: Maybe Offer / Stage Firmware", v6];

  tssRequest = self->_tssRequest;
  v8 = self->_log;
  v9 = [(UARPSoCUpdaterInstance *)self name];
  v10 = v9;
  if (tssRequest)
  {
    [(SoCUpdaterHelper *)v8 log:@"%@: Don't Offer / Stage Firmware", v9];

    v11 = 1;
  }

  else
  {
    [(SoCUpdaterHelper *)v8 log:@"%@: Really Offer / Stage Firmware", v9];

    v11 = [(UARPSoCUpdaterInstance *)self receievePersonalizationRequestByOfferFirmwareData:v4];
  }

  return v11;
}

- (BOOL)offerPersonalizationResponse:(id)a3
{
  v4 = a3;
  [(SoCUpdaterHelper *)self->_log log:@"%s: Tss Response: %@", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]", v4];
  if ([(UARPSoCUpdaterInstance *)self useLocalSigning])
  {
    [(SoCUpdaterHelper *)self->_log log:@"%s: Local Signing is enabled, no personalization data expected.", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]"];
  }

  else
  {
    if (!v4 && ![(UARPSoCUpdaterInstance *)self useLocalSigning])
    {
      [(SoCUpdaterHelper *)self->_log log:@"%s: Personalization data is expected but empty.", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]"];
      v15 = 0;
      goto LABEL_7;
    }

    tssRequest = self->_tssRequest;
    [(SoCUpdaterHelper *)self->_log log:@"%s: Offering Tss Response", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]"];
    CoreUARPRestorePersonalizationTssResponse(self->_endpoint, self->_pAssetContext, tssRequest, v4, v6, v7, v8, v9);
    v10 = self->_tssRequest;
    self->_tssRequest = 0;

    log = self->_log;
    v12 = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)log log:@"%@: Waiting for TSS offer to complete...", v12];

    dispatch_semaphore_wait(self->_assetTransferUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v13 = self->_log;
    v14 = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)v13 log:@"%@: Continuing after TSS offer.", v14];
  }

  v15 = 1;
LABEL_7:

  return v15;
}

- (BOOL)applyStagedFirmware
{
  v3 = [(UARPSoCUpdaterInstance *)self log];
  [v3 log:{@"%s", "-[UARPSoCUpdaterInstance applyStagedFirmware]"}];

  self->_isDone = 1;
  if (self->_tssRequest)
  {
    v4 = [(UARPSoCUpdaterInstance *)self log];
    [v4 log:{@"%s: More TSS Request for Updater(LUN:%d, RouterID:%d)", "-[UARPSoCUpdaterInstance applyStagedFirmware]", -[UARPSoCUpdaterInstance logicUnitNumber](self, "logicUnitNumber"), -[UARPSoCUpdaterInstance routerID](self, "routerID")}];

    self->_isDone = 0;
  }

  if ([(UARPSoCUpdaterInstance *)self skipApplyStage])
  {
    v5 = [(UARPSoCUpdaterInstance *)self log];
    [v5 log:{@"%s: Skipping Apply for Updater(LUN:%d, RouterID:%d)", "-[UARPSoCUpdaterInstance applyStagedFirmware]", -[UARPSoCUpdaterInstance logicUnitNumber](self, "logicUnitNumber"), -[UARPSoCUpdaterInstance routerID](self, "routerID")}];

    return 1;
  }

  log = self->_log;
  if (self->_uarpContext)
  {
    [(SoCUpdaterHelper *)log log:@"%s: Applying Staged Assets", "[UARPSoCUpdaterInstance applyStagedFirmware]"];
    UarpRestoreApplyStagedAssets(self->_uarpContext);
    dispatch_semaphore_wait(self->_applyAssetUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    [(SoCUpdaterHelper *)self->_log log:@"%s: Success.", "[UARPSoCUpdaterInstance applyStagedFirmware]"];
    return 1;
  }

  [(SoCUpdaterHelper *)log log:@"%s: There is no asset to apply.", "[UARPSoCUpdaterInstance applyStagedFirmware]"];
  return 0;
}

- (void)tssRequestWithOptions:(id)a3 serverURL:(id)a4 assetCtx:(void *)a5 siliconCtx:(_UARPSiliconContext *)a6
{
  v19 = a3;
  v10 = a4;
  v11 = v19;
  if (v19)
  {
    v12 = [(UARPSoCUpdaterInstance *)self log];
    [v12 log:{@"%s: Received Invalid tssOptions", "-[UARPSoCUpdaterInstance tssRequestWithOptions:serverURL:assetCtx:siliconCtx:]"}];

    v11 = v19;
  }

  if (self->_tssRequest)
  {
    v13 = [(UARPSoCUpdaterInstance *)self log];
    [v13 log:{@"%s: Error: Multiple payload needs personalization", "-[UARPSoCUpdaterInstance tssRequestWithOptions:serverURL:assetCtx:siliconCtx:]"}];
  }

  else
  {
    var4 = a6->var4;
    self->_pAssetContext = a5;
    self->_endpoint = var4;
    v15 = [v11 copy];
    tssRequest = self->_tssRequest;
    self->_tssRequest = v15;

    objc_storeStrong(&self->_tssRequestServerURL, a4);
    log = self->_log;
    v18 = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)log log:@"%@: TSS request signal waiting callbacks", v18];

    self->_stagingResult = 1;
    [(UARPSoCUpdaterInstance *)self assetTransferUARPComplete];
  }
}

- (void)updateAppleProperty:(unsigned int)a3 siliconCtx:(_UARPSiliconContext *)a4
{
  if (a3 > 15)
  {
    if (a3 == 16)
    {
      self->_logicUnitNumberFromDevice = UarpRestoreInfoPropertyLogicalUnitNumber(a4);
      return;
    }

    if (a3 == 18)
    {
      self->_requiresPersonalization = UarpRestoreInfoPropertyRequiresPersonalization(a4) != 0;
      return;
    }

    if (a3 != 17)
    {
      return;
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:UarpRestoreInfoPropertyTicketLongName(a4)];
    ticketLongName = self->_ticketLongName;
    self->_ticketLongName = v5;
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 14)
      {
        self->_prefixNeedsLogicalUnitNumber = UarpRestoreInfoPropertyPrefixNeedsLUN(a4) != 0;
      }

      else if (a3 == 15)
      {
        self->_suffixNeedsLogicalUnitNumber = UarpRestoreInfoPropertySuffixNeedsLUN(a4) != 0;
      }

      return;
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:UarpRestoreInfoPropertyManifestPrefix(a4)];
    manifestPrefixName = self->_manifestPrefixName;
    self->_manifestPrefixName = v7;
  }

  MEMORY[0x2A1C71028]();
}

- (NSString)firmwareTagName
{
  logicUnitNumberFromDevice = self->_logicUnitNumberFromDevice;
  if (self->_prefixNeedsLogicalUnitNumber)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", self->_manifestPrefixName, logicUnitNumberFromDevice];
  }

  else
  {
    v4 = self->_manifestPrefixName;
  }

  v5 = v4;
  if (self->_suffixNeedsLogicalUnitNumber)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", self->_ticketLongName, logicUnitNumberFromDevice];
  }

  else
  {
    v6 = self->_ticketLongName;
  }

  v7 = v6;
  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v5, v6];

  return v8;
}

- (NSString)ticketName
{
  logicUnitNumberFromDevice = self->_logicUnitNumberFromDevice;
  if (self->_prefixNeedsLogicalUnitNumber)
  {
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", self->_manifestPrefixName, logicUnitNumberFromDevice];
  }

  else
  {
    v4 = self->_manifestPrefixName;
  }

  v5 = v4;
  suffixNeedsLogicalUnitNumber = self->_suffixNeedsLogicalUnitNumber;
  v7 = @"Ticket";
  if (suffixNeedsLogicalUnitNumber)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", @"Ticket", logicUnitNumberFromDevice];
  }

  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v5, v7];

  return v8;
}

- (void)uarpRestoreInitOptions
{
  v2 = [(UARPSoCUpdaterInstance *)self log];
  [v2 log:{@"%s: error subclass needs to override this property", "-[UARPSoCUpdaterInstance uarpRestoreInitOptions]"}];

  return 0;
}

- (uarpRestoreLayer4Callbacks)uarpRestoreLayer4Callbacks
{
  v2 = [(UARPSoCUpdaterInstance *)self log];
  [v2 log:{@"%s: error subclass needs to override this property", "-[UARPSoCUpdaterInstance uarpRestoreLayer4Callbacks]"}];

  return 0;
}

- (const)uarpRestoreQueueName
{
  v2 = [(UARPSoCUpdaterInstance *)self log];
  [v2 log:{@"%s: error subclass needs to override this property", "-[UARPSoCUpdaterInstance uarpRestoreQueueName]"}];

  return 0;
}

- (BOOL)initUARP
{
  if (self->_uarpContext)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    block[9] = v2;
    block[10] = v3;
    v4 = [(UARPSoCUpdaterInstance *)self uarpRestoreInitOptions];
    if (v4)
    {
      v6 = v4;
      v4 = [(UARPSoCUpdaterInstance *)self uarpRestoreLayer4Callbacks];
      if (v4)
      {
        v7 = v4;
        if (!v4->var11)
        {
          v4->var11 = UARPSoCUpdaterLayer4UARPPropertyUpdate;
        }

        if (!v4->var12)
        {
          v4->var12 = UARPSoCUpdaterLayer4ApplePropertyUpdate;
        }

        if (!v4->var13)
        {
          v4->var13 = UARPSoCUpdaterLayer4PropertiesComplete;
        }

        if (!v4->var5)
        {
          v4->var5 = UARPSoCUpdaterStagingProgress;
        }

        if (!v4->var6)
        {
          v4->var6 = UARPSoCUpdaterStagingComplete;
        }

        if (!v4->var7)
        {
          v4->var7 = UARPSoCUpdaterApplyComplete;
        }

        if (!v4->var10)
        {
          v4->var10 = UARPSoCUpdaterFirmwareTssRequest;
        }

        if (!v4->var15)
        {
          v4->var15 = UARPSoCUpdaterFirmwareLogCommon;
        }

        if (!v4->var16)
        {
          v4->var16 = UARPSoCUpdaterFirmwareLogCommon;
        }

        if (!v4->var17)
        {
          v4->var17 = UARPSoCUpdaterFirmwareLogCommon;
        }

        if (!v4->var18)
        {
          v4->var18 = UARPSoCUpdaterFirmwareLogCommon;
        }

        v8 = self;
        v9 = UarpRestoreInitializeEndpoint(v8, v6, v7, [(UARPSoCUpdaterInstance *)v8 uarpRestoreQueueName]);
        self->_uarpContext = v9;
        if (v9)
        {
          queue = v8->_queue;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = __34__UARPSoCUpdaterInstance_initUARP__block_invoke;
          block[3] = &unk_29F28FB00;
          block[4] = v8;
          dispatch_async(queue, block);
          dispatch_semaphore_wait(v8->_initUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
          LOBYTE(v4) = 1;
        }

        else
        {
          v11 = [(UARPSoCUpdaterInstance *)v8 log];
          [v11 log:{@"%s: UarpRestoreInitializeEndpoint() returns NULL.", "-[UARPSoCUpdaterInstance initUARP]"}];

          LOBYTE(v4) = 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)initUARPWithFirmware:(id)a3
{
  v4 = a3;
  if ([(UARPSoCUpdaterInstance *)self initUARP])
  {
    uarpContext = self->_uarpContext;
    v6 = [v4 bytes];
    v7 = [v4 length];
    v13 = UarpRestoreStageFirmwareDataBuffer(uarpContext, v6, v7, v8, v9, v10, v11, v12);
    if (!v13)
    {
      v16 = 1;
      goto LABEL_5;
    }

    v14 = v13;
    v15 = [(UARPSoCUpdaterInstance *)self log];
    [v15 log:{@"%s: UarpRestoreStageFirmwareDataBuffer() returns %u.", "-[UARPSoCUpdaterInstance initUARPWithFirmware:]", v14}];
  }

  v16 = 0;
LABEL_5:

  return v16;
}

- (void)printUpdaterMode
{
  log = self->_log;
  v4 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)log log:@"%@: Detected updater mode %s", v4, StringForSoCRestoreUpdateMode(self->_updaterMode)];
}

- (id)name
{
  if (!self->_name)
  {
    if (self->_routerID == 255)
    {
      logicUnitNumber = self->_logicUnitNumber;
      v4 = MEMORY[0x29EDBA0F8];
      v5 = [(UARPSoCUpdaterInstance *)self namePrefix];
      if (logicUnitNumber == -1)
      {
        v6 = [v4 stringWithUTF8String:v5];
        goto LABEL_7;
      }

      [v4 stringWithFormat:@"%s[%u]", v5, self->_logicUnitNumber];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s[%u]", -[UARPSoCUpdaterInstance namePrefix](self, "namePrefix"), self->_routerID];
    }
    v6 = ;
LABEL_7:
    name = self->_name;
    self->_name = v6;
  }

  v8 = self->_name;

  return v8;
}

- (void)updateStagingProgressWithBytesSent:(unsigned int)a3 bytesTotal:(unsigned int)a4
{
  v4 = ((a3 / a4) * 100.0);
  self->_lastPercentComplete = v4;
  if (self->_nextUpdateProgressReportPercentThreshold <= v4)
  {
    log = self->_log;
    v7 = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)log log:@"%@ Update: %u%%", v7, self->_lastPercentComplete];

    self->_nextUpdateProgressReportPercentThreshold = self->_lastPercentComplete + 10;
  }
}

@end