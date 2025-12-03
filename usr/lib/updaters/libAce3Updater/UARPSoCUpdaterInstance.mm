@interface UARPSoCUpdaterInstance
- (BOOL)applyStagedFirmware;
- (BOOL)initUARP;
- (BOOL)initUARPWithFirmware:(id)firmware;
- (BOOL)offerFirmwareData:(id)data;
- (BOOL)offerPersonalizationResponse:(id)response;
- (BOOL)receievePersonalizationRequestByOfferFirmwareData:(id)data;
- (NSString)firmwareTagName;
- (NSString)ticketName;
- (UARPSoCUpdaterInstance)initWithHelper:(id)helper options:(id)options;
- (UARPSoCUpdaterInstance)initWithLogicUnitNumber:(unsigned int)number helper:(id)helper options:(id)options;
- (UARPSoCUpdaterInstance)initWithRouterID:(unsigned __int8)d helper:(id)helper options:(id)options;
- (const)uarpRestoreQueueName;
- (id)name;
- (uarpRestoreLayer4Callbacks)uarpRestoreLayer4Callbacks;
- (void)printUpdaterMode;
- (void)tssRequestWithOptions:(id)options serverURL:(id)l assetCtx:(void *)ctx siliconCtx:(_UARPSiliconContext *)siliconCtx;
- (void)uarpRestoreInitOptions;
- (void)updateAppleProperty:(unsigned int)property siliconCtx:(_UARPSiliconContext *)ctx;
- (void)updateStagingProgressWithBytesSent:(unsigned int)sent bytesTotal:(unsigned int)total;
@end

@implementation UARPSoCUpdaterInstance

- (UARPSoCUpdaterInstance)initWithHelper:(id)helper options:(id)options
{
  helperCopy = helper;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = UARPSoCUpdaterInstance;
  v9 = [(UARPSoCUpdaterInstance *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_log, helper);
    v11 = dispatch_semaphore_create(0);
    initUARPSemaphore = v10->_initUARPSemaphore;
    v10->_initUARPSemaphore = v11;

    v13 = dispatch_semaphore_create(0);
    assetTransferUARPSemaphore = v10->_assetTransferUARPSemaphore;
    v10->_assetTransferUARPSemaphore = v13;

    v15 = dispatch_semaphore_create(0);
    applyAssetUARPSemaphore = v10->_applyAssetUARPSemaphore;
    v10->_applyAssetUARPSemaphore = v15;

    v10->_updaterMode = SoCUpdaterGetMode(optionsCopy);
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
    v10->_skipSameVersion = SoCUpdaterShouldSkipSameVersion(optionsCopy);
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

- (UARPSoCUpdaterInstance)initWithLogicUnitNumber:(unsigned int)number helper:(id)helper options:(id)options
{
  v6 = [(UARPSoCUpdaterInstance *)self initWithHelper:helper options:options];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_logicUnitNumber = number;
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

- (UARPSoCUpdaterInstance)initWithRouterID:(unsigned __int8)d helper:(id)helper options:(id)options
{
  v6 = [(UARPSoCUpdaterInstance *)self initWithHelper:helper options:options];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_routerID = d;
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

- (BOOL)receievePersonalizationRequestByOfferFirmwareData:(id)data
{
  log = self->_log;
  dataCopy = data;
  [(SoCUpdaterHelper *)log log:@"%s: data = %@", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]", dataCopy];
  tssRequest = self->_tssRequest;
  self->_tssRequest = 0;

  tssRequestServerURL = self->_tssRequestServerURL;
  self->_tssRequestServerURL = 0;

  self->_pAssetContext = 0;
  self->_endpoint = 0;
  v8 = self->_log;
  name = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)v8 log:@"%s: %@ Offering Firmware", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]", name];

  LOBYTE(v8) = [(UARPSoCUpdaterInstance *)self initUARPWithFirmware:dataCopy];
  if ((v8 & 1) == 0)
  {
    [(SoCUpdaterHelper *)self->_log log:@"%s: Failed to init Restore UARP.", "[UARPSoCUpdaterInstance receievePersonalizationRequestByOfferFirmwareData:]"];
    return 0;
  }

  self->_stagingResult = 0;
  v10 = self->_log;
  name2 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)v10 log:@"%@: Waiting for staging to complete...", name2];

  dispatch_semaphore_wait(self->_assetTransferUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v12 = self->_log;
  name3 = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)v12 log:@"%@: Continuing after staging.", name3];

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

- (BOOL)offerFirmwareData:(id)data
{
  dataCopy = data;
  log = self->_log;
  name = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)log log:@"%@: Maybe Offer / Stage Firmware", name];

  tssRequest = self->_tssRequest;
  v8 = self->_log;
  name2 = [(UARPSoCUpdaterInstance *)self name];
  v10 = name2;
  if (tssRequest)
  {
    [(SoCUpdaterHelper *)v8 log:@"%@: Don't Offer / Stage Firmware", name2];

    v11 = 1;
  }

  else
  {
    [(SoCUpdaterHelper *)v8 log:@"%@: Really Offer / Stage Firmware", name2];

    v11 = [(UARPSoCUpdaterInstance *)self receievePersonalizationRequestByOfferFirmwareData:dataCopy];
  }

  return v11;
}

- (BOOL)offerPersonalizationResponse:(id)response
{
  responseCopy = response;
  [(SoCUpdaterHelper *)self->_log log:@"%s: Tss Response: %@", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]", responseCopy];
  if ([(UARPSoCUpdaterInstance *)self useLocalSigning])
  {
    [(SoCUpdaterHelper *)self->_log log:@"%s: Local Signing is enabled, no personalization data expected.", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]"];
  }

  else
  {
    if (!responseCopy && ![(UARPSoCUpdaterInstance *)self useLocalSigning])
    {
      [(SoCUpdaterHelper *)self->_log log:@"%s: Personalization data is expected but empty.", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]"];
      v15 = 0;
      goto LABEL_7;
    }

    tssRequest = self->_tssRequest;
    [(SoCUpdaterHelper *)self->_log log:@"%s: Offering Tss Response", "[UARPSoCUpdaterInstance offerPersonalizationResponse:]"];
    CoreUARPRestorePersonalizationTssResponse(self->_endpoint, self->_pAssetContext, tssRequest, responseCopy, v6, v7, v8, v9);
    v10 = self->_tssRequest;
    self->_tssRequest = 0;

    log = self->_log;
    name = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)log log:@"%@: Waiting for TSS offer to complete...", name];

    dispatch_semaphore_wait(self->_assetTransferUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v13 = self->_log;
    name2 = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)v13 log:@"%@: Continuing after TSS offer.", name2];
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

- (void)tssRequestWithOptions:(id)options serverURL:(id)l assetCtx:(void *)ctx siliconCtx:(_UARPSiliconContext *)siliconCtx
{
  optionsCopy = options;
  lCopy = l;
  v11 = optionsCopy;
  if (optionsCopy)
  {
    v12 = [(UARPSoCUpdaterInstance *)self log];
    [v12 log:{@"%s: Received Invalid tssOptions", "-[UARPSoCUpdaterInstance tssRequestWithOptions:serverURL:assetCtx:siliconCtx:]"}];

    v11 = optionsCopy;
  }

  if (self->_tssRequest)
  {
    v13 = [(UARPSoCUpdaterInstance *)self log];
    [v13 log:{@"%s: Error: Multiple payload needs personalization", "-[UARPSoCUpdaterInstance tssRequestWithOptions:serverURL:assetCtx:siliconCtx:]"}];
  }

  else
  {
    var4 = siliconCtx->var4;
    self->_pAssetContext = ctx;
    self->_endpoint = var4;
    v15 = [v11 copy];
    tssRequest = self->_tssRequest;
    self->_tssRequest = v15;

    objc_storeStrong(&self->_tssRequestServerURL, l);
    log = self->_log;
    name = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)log log:@"%@: TSS request signal waiting callbacks", name];

    self->_stagingResult = 1;
    [(UARPSoCUpdaterInstance *)self assetTransferUARPComplete];
  }
}

- (void)updateAppleProperty:(unsigned int)property siliconCtx:(_UARPSiliconContext *)ctx
{
  if (property > 15)
  {
    if (property == 16)
    {
      self->_logicUnitNumberFromDevice = UarpRestoreInfoPropertyLogicalUnitNumber(ctx);
      return;
    }

    if (property == 18)
    {
      self->_requiresPersonalization = UarpRestoreInfoPropertyRequiresPersonalization(ctx) != 0;
      return;
    }

    if (property != 17)
    {
      return;
    }

    v5 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:UarpRestoreInfoPropertyTicketLongName(ctx)];
    ticketLongName = self->_ticketLongName;
    self->_ticketLongName = v5;
  }

  else
  {
    if (property != 3)
    {
      if (property == 14)
      {
        self->_prefixNeedsLogicalUnitNumber = UarpRestoreInfoPropertyPrefixNeedsLUN(ctx) != 0;
      }

      else if (property == 15)
      {
        self->_suffixNeedsLogicalUnitNumber = UarpRestoreInfoPropertySuffixNeedsLUN(ctx) != 0;
      }

      return;
    }

    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:UarpRestoreInfoPropertyManifestPrefix(ctx)];
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
    logicUnitNumberFromDevice = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", self->_manifestPrefixName, logicUnitNumberFromDevice];
  }

  else
  {
    logicUnitNumberFromDevice = self->_manifestPrefixName;
  }

  v5 = logicUnitNumberFromDevice;
  if (self->_suffixNeedsLogicalUnitNumber)
  {
    logicUnitNumberFromDevice2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", self->_ticketLongName, logicUnitNumberFromDevice];
  }

  else
  {
    logicUnitNumberFromDevice2 = self->_ticketLongName;
  }

  v7 = logicUnitNumberFromDevice2;
  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v5, logicUnitNumberFromDevice2];

  return v8;
}

- (NSString)ticketName
{
  logicUnitNumberFromDevice = self->_logicUnitNumberFromDevice;
  if (self->_prefixNeedsLogicalUnitNumber)
  {
    logicUnitNumberFromDevice = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", self->_manifestPrefixName, logicUnitNumberFromDevice];
  }

  else
  {
    logicUnitNumberFromDevice = self->_manifestPrefixName;
  }

  v5 = logicUnitNumberFromDevice;
  suffixNeedsLogicalUnitNumber = self->_suffixNeedsLogicalUnitNumber;
  logicUnitNumberFromDevice2 = @"Ticket";
  if (suffixNeedsLogicalUnitNumber)
  {
    logicUnitNumberFromDevice2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@%d", @"Ticket", logicUnitNumberFromDevice];
  }

  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@, %@", v5, logicUnitNumberFromDevice2];

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
    LOBYTE(uarpRestoreInitOptions) = 1;
  }

  else
  {
    block[9] = v2;
    block[10] = v3;
    uarpRestoreInitOptions = [(UARPSoCUpdaterInstance *)self uarpRestoreInitOptions];
    if (uarpRestoreInitOptions)
    {
      v6 = uarpRestoreInitOptions;
      uarpRestoreInitOptions = [(UARPSoCUpdaterInstance *)self uarpRestoreLayer4Callbacks];
      if (uarpRestoreInitOptions)
      {
        v7 = uarpRestoreInitOptions;
        if (!uarpRestoreInitOptions->var11)
        {
          uarpRestoreInitOptions->var11 = UARPSoCUpdaterLayer4UARPPropertyUpdate;
        }

        if (!uarpRestoreInitOptions->var12)
        {
          uarpRestoreInitOptions->var12 = UARPSoCUpdaterLayer4ApplePropertyUpdate;
        }

        if (!uarpRestoreInitOptions->var13)
        {
          uarpRestoreInitOptions->var13 = UARPSoCUpdaterLayer4PropertiesComplete;
        }

        if (!uarpRestoreInitOptions->var5)
        {
          uarpRestoreInitOptions->var5 = UARPSoCUpdaterStagingProgress;
        }

        if (!uarpRestoreInitOptions->var6)
        {
          uarpRestoreInitOptions->var6 = UARPSoCUpdaterStagingComplete;
        }

        if (!uarpRestoreInitOptions->var7)
        {
          uarpRestoreInitOptions->var7 = UARPSoCUpdaterApplyComplete;
        }

        if (!uarpRestoreInitOptions->var10)
        {
          uarpRestoreInitOptions->var10 = UARPSoCUpdaterFirmwareTssRequest;
        }

        if (!uarpRestoreInitOptions->var15)
        {
          uarpRestoreInitOptions->var15 = UARPSoCUpdaterFirmwareLogCommon;
        }

        if (!uarpRestoreInitOptions->var16)
        {
          uarpRestoreInitOptions->var16 = UARPSoCUpdaterFirmwareLogCommon;
        }

        if (!uarpRestoreInitOptions->var17)
        {
          uarpRestoreInitOptions->var17 = UARPSoCUpdaterFirmwareLogCommon;
        }

        if (!uarpRestoreInitOptions->var18)
        {
          uarpRestoreInitOptions->var18 = UARPSoCUpdaterFirmwareLogCommon;
        }

        selfCopy = self;
        v9 = UarpRestoreInitializeEndpoint(selfCopy, v6, v7, [(UARPSoCUpdaterInstance *)selfCopy uarpRestoreQueueName]);
        self->_uarpContext = v9;
        if (v9)
        {
          queue = selfCopy->_queue;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = __34__UARPSoCUpdaterInstance_initUARP__block_invoke;
          block[3] = &unk_29F28FB00;
          block[4] = selfCopy;
          dispatch_async(queue, block);
          dispatch_semaphore_wait(selfCopy->_initUARPSemaphore, 0xFFFFFFFFFFFFFFFFLL);
          LOBYTE(uarpRestoreInitOptions) = 1;
        }

        else
        {
          v11 = [(UARPSoCUpdaterInstance *)selfCopy log];
          [v11 log:{@"%s: UarpRestoreInitializeEndpoint() returns NULL.", "-[UARPSoCUpdaterInstance initUARP]"}];

          LOBYTE(uarpRestoreInitOptions) = 0;
        }
      }
    }
  }

  return uarpRestoreInitOptions;
}

- (BOOL)initUARPWithFirmware:(id)firmware
{
  firmwareCopy = firmware;
  if ([(UARPSoCUpdaterInstance *)self initUARP])
  {
    uarpContext = self->_uarpContext;
    bytes = [firmwareCopy bytes];
    v7 = [firmwareCopy length];
    v13 = UarpRestoreStageFirmwareDataBuffer(uarpContext, bytes, v7, v8, v9, v10, v11, v12);
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
  name = [(UARPSoCUpdaterInstance *)self name];
  [(SoCUpdaterHelper *)log log:@"%@: Detected updater mode %s", name, StringForSoCRestoreUpdateMode(self->_updaterMode)];
}

- (id)name
{
  if (!self->_name)
  {
    if (self->_routerID == 255)
    {
      logicUnitNumber = self->_logicUnitNumber;
      v4 = MEMORY[0x29EDBA0F8];
      namePrefix = [(UARPSoCUpdaterInstance *)self namePrefix];
      if (logicUnitNumber == -1)
      {
        v6 = [v4 stringWithUTF8String:namePrefix];
        goto LABEL_7;
      }

      [v4 stringWithFormat:@"%s[%u]", namePrefix, self->_logicUnitNumber];
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

- (void)updateStagingProgressWithBytesSent:(unsigned int)sent bytesTotal:(unsigned int)total
{
  v4 = ((sent / total) * 100.0);
  self->_lastPercentComplete = v4;
  if (self->_nextUpdateProgressReportPercentThreshold <= v4)
  {
    log = self->_log;
    name = [(UARPSoCUpdaterInstance *)self name];
    [(SoCUpdaterHelper *)log log:@"%@ Update: %u%%", name, self->_lastPercentComplete];

    self->_nextUpdateProgressReportPercentThreshold = self->_lastPercentComplete + 10;
  }
}

@end