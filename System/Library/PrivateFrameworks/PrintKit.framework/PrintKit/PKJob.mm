@interface PKJob
+ (id)currentJob;
+ (id)jobForJobID:(int64_t)d;
+ (id)jobs;
+ (void)currentJobCompletionHandler:(id)handler;
+ (void)jobsCompletionHandler:(id)handler;
- (NSArray)jobPrinterStateReasons;
- (NSArray)jobStateReasons;
- (NSData)printerEndpointData;
- (NSData)thumbnailImage;
- (NSDate)timeAtCompleted;
- (NSDate)timeAtCreation;
- (NSDate)timeAtProcessing;
- (NSString)PIN;
- (NSString)jobPrinterStateMessage;
- (NSString)jobStateMessage;
- (NSString)localizedJobOptions;
- (NSString)localizedStatusString;
- (NSString)printerDisplayName;
- (NSString)printerLocation;
- (PKJob)initWithCoder:(id)coder;
- (PKJob)initWithJobID:(int)d updateState:(id)state;
- (PKJob)initWithUserCodableDictionary:(id)dictionary;
- (PKPrintSettings)settings;
- (PKPrinter)printer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)userCodableDictionary;
- (int64_t)localJobID;
- (int64_t)mediaProgress;
- (int64_t)mediaSheets;
- (int64_t)mediaSheetsCompleted;
- (int64_t)printerKind;
- (int64_t)remoteJobId;
- (int64_t)state;
- (int64_t)update;
- (void)_updateJobState:(id)state;
- (void)_withPrinterAsync:(id)async;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
- (void)updateCompletionHandler:(id)handler;
@end

@implementation PKJob

- (PKJob)initWithJobID:(int)d updateState:(id)state
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = PKJob;
  v8 = [(PKJob *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_localJobID = d;
    objc_storeStrong(&v8->_updatableState, state);
  }

  return v9;
}

- (PKJob)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKJob;
  v5 = [(PKJob *)&v9 init];
  if (v5)
  {
    v5->_localJobID = [coderCopy decodeIntForKey:@"_localJobID"];
    v6 = [coderCopy decodeObjectForKey:@"_updatableState"];
    updatableState = v5->_updatableState;
    v5->_updatableState = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_localJobID forKey:@"_localJobID"];
  [coderCopy encodeObject:self->_updatableState forKey:@"_updatableState"];
}

- (id)userCodableDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"localJobID";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_localJobID];
  v7[1] = @"updatableState";
  v8[0] = v3;
  userCodableDictionary = [(PKMutableJobState *)self->_updatableState userCodableDictionary];
  v8[1] = userCodableDictionary;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (PKJob)initWithUserCodableDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKJob;
  v5 = [(PKJob *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"localJobID"];
    v5->_localJobID = [v6 intValue];

    v7 = [PKMutableJobState alloc];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"updatableState"];
    v9 = [(PKMutableJobState *)v7 initWithUserCodableDictionary:v8];
    updatableState = v5->_updatableState;
    v5->_updatableState = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  localJobID = self->_localJobID;
  v6 = [(PKMutableJobState *)self->_updatableState copy];
  v7 = [v4 initWithJobID:localJobID updateState:v6];

  return v7;
}

- (void)_withPrinterAsync:(id)async
{
  asyncCopy = async;
  updatableState = [(PKJob *)self updatableState];
  printerEndpointData = [updatableState printerEndpointData];

  if (printerEndpointData)
  {
    v6 = [PKPrinterBonjourEndpoint endpointWithData:printerEndpointData];
    [PKPrinter printerWithBonjourEndpoint:v6 discoveryTimeout:asyncCopy completionHandler:1.0];
  }

  else
  {
    asyncCopy[2](asyncCopy, 0);
  }
}

- (PKPrinter)printer
{
  cachedPrinter = self->_cachedPrinter;
  if (!cachedPrinter)
  {
    selfCopy = self;
    if (object_isClass(selfCopy))
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKJob printer]"];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "-[PKJob printer]"];
    }
    v5 = ;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __16__PKJob_printer__block_invoke;
    v9[3] = &unk_279A92228;
    v9[4] = selfCopy;
    v6 = withDebuggableSemaphore<PKPrinter * {__strong}>(v5, v9, 3.0);
    v7 = self->_cachedPrinter;
    self->_cachedPrinter = v6;

    cachedPrinter = self->_cachedPrinter;
  }

  return cachedPrinter;
}

+ (id)jobForJobID:(int64_t)d
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKJob jobForJobID:]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "+[PKJob jobForJobID:]"];
  }
  v5 = ;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __21__PKJob_jobForJobID___block_invoke;
  v8[3] = &__block_descriptor_48_e22_v16__0___v____PKJob__8l;
  v8[4] = selfCopy;
  v8[5] = d;
  v6 = withDebuggableSemaphore<PKJob * {__strong}>(v5, v8, 3.0);

  return v6;
}

void __21__PKJob_jobForJobID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__PKJob_jobForJobID___block_invoke_2;
  v7[3] = &unk_279A92250;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 jobsCompletionHandler:v7];
}

void __21__PKJob_jobForJobID___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 localJobID] == *(a1 + 40))
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  (*(*(a1 + 32) + 16))();
}

+ (void)jobsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (_initPrintKitNotificiations(void)::sOnce != -1)
  {
    +[PKJob jobsCompletionHandler:];
  }

  if (printd_running_token < 0 || (state64 = 0, notify_get_state(printd_running_token, &state64)) || !state64)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v4 = +[PKPrinterTool_Client sharedClient];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__PKJob_jobsCompletionHandler___block_invoke;
    v5[3] = &unk_279A922B8;
    v6 = handlerCopy;
    [v4 getRecentJobsCompletionHandler:v5];
  }
}

void __31__PKJob_jobsCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v5 count];
  if (v8 == [v6 count])
  {
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [PKJob alloc];
        v11 = [v5 objectAtIndexedSubscript:i];
        v12 = [v11 intValue];
        v13 = [v6 objectAtIndexedSubscript:i];
        v14 = [(PKJob *)v10 initWithJobID:v12 updateState:v13];

        [v7 addObject:v14];
      }
    }
  }

  else
  {
    v15 = _PKLogCategory(PKLogCategoryDefault[0]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v15, OS_LOG_TYPE_ERROR, "number of jobs incorrect for number of states", buf, 2u);
    }
  }

  v16 = [v7 sortedArrayUsingComparator:&__block_literal_global_6];
  (*(*(a1 + 32) + 16))();
}

uint64_t __31__PKJob_jobsCompletionHandler___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 state];
  v9 = [v7 state];
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v8 < v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (!v11)
  {
    v12 = [v6 timeAtCreation];
    v13 = [v7 timeAtCreation];
    v11 = [v12 compare:v13];

    if (!v11)
    {
      v14 = v6;
      v15 = v7;
      v16 = [v14 number];
      v17 = [v15 number];
      if (v16 < v17)
      {
        v11 = -1;
      }

      else
      {
        v11 = v16 > v17;
      }
    }
  }

  return v11;
}

+ (void)currentJobCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PKJob_currentJobCompletionHandler___block_invoke;
  v6[3] = &unk_279A92308;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [self jobsCompletionHandler:v6];
}

void __37__PKJob_currentJobCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 state] <= 5)
        {
          objc_storeStrong(v16 + 5, v7);
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__PKJob_currentJobCompletionHandler___block_invoke_29;
  v8[3] = &unk_279A922E0;
  v9 = *(a1 + 32);
  v10 = &v15;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  _Block_object_dispose(&v15, 8);
}

+ (id)jobs
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKJob jobs]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "+[PKJob jobs]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __13__PKJob_jobs__block_invoke;
  v6[3] = &__block_descriptor_40_e24_v16__0___v____NSArray__8l;
  v6[4] = selfCopy;
  v4 = withDebuggableSemaphore<NSArray * {__strong}>(v3, v6, 3.0);

  return v4;
}

+ (id)currentJob
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKJob currentJob]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "+[PKJob currentJob]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__PKJob_currentJob__block_invoke;
  v6[3] = &__block_descriptor_40_e22_v16__0___v____PKJob__8l;
  v6[4] = selfCopy;
  v4 = withDebuggableSemaphore<PKJob * {__strong}>(v3, v6, 3.0);

  return v4;
}

- (void)cancel
{
  v3 = +[PKPrinterTool_Client sharedClient];
  [v3 cancelJob:{-[PKJob localJobID](self, "localJobID")}];
}

- (void)_updateJobState:(id)state
{
  stateCopy = state;
  updatableState = self->_updatableState;
  p_updatableState = &self->_updatableState;
  thumbnailImage = [(PKMutableJobState *)updatableState thumbnailImage];
  objc_storeStrong(p_updatableState, state);
  thumbnailImage2 = [(PKMutableJobState *)*p_updatableState thumbnailImage];

  if (!thumbnailImage2)
  {
    [(PKMutableJobState *)*p_updatableState setThumbnailImage:thumbnailImage];
  }
}

- (void)updateCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[PKPrinterTool_Client sharedClient];
  localJobID = [(PKJob *)self localJobID];
  thumbnailImage = [(PKMutableJobState *)self->_updatableState thumbnailImage];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__PKJob_updateCompletionHandler___block_invoke;
  v9[3] = &unk_279A92350;
  v8 = handlerCopy;
  v9[4] = self;
  v10 = v8;
  [v5 getJobUpdateStatus:localJobID includeThumbnail:thumbnailImage == 0 completionHandler:v9];
}

void __33__PKJob_updateCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) _updateJobState:v3];
  }

  (*(*(a1 + 40) + 16))();
}

- (int64_t)update
{
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKJob update]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "-[PKJob update]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __15__PKJob_update__block_invoke;
  v6[3] = &unk_279A92378;
  v6[4] = selfCopy;
  v4 = withDebuggableSemaphore<PKStatus>(v3, v6, 3.0);

  return v4;
}

- (int64_t)localJobID
{
  updatableState = [(PKJob *)self updatableState];
  localJobID = [updatableState localJobID];

  return localJobID;
}

- (NSString)printerDisplayName
{
  updatableState = [(PKJob *)self updatableState];
  printerDisplayName = [updatableState printerDisplayName];

  return printerDisplayName;
}

- (NSString)printerLocation
{
  updatableState = [(PKJob *)self updatableState];
  printerLocation = [updatableState printerLocation];

  return printerLocation;
}

- (int64_t)printerKind
{
  updatableState = [(PKJob *)self updatableState];
  printerKind = [updatableState printerKind];

  return printerKind;
}

- (PKPrintSettings)settings
{
  updatableState = [(PKJob *)self updatableState];
  settings = [updatableState settings];

  return settings;
}

- (NSDate)timeAtCreation
{
  updatableState = [(PKJob *)self updatableState];
  timeAtCreation = [updatableState timeAtCreation];

  return timeAtCreation;
}

- (int64_t)state
{
  updatableState = [(PKJob *)self updatableState];
  state = [updatableState state];

  return state;
}

- (int64_t)mediaSheetsCompleted
{
  updatableState = [(PKJob *)self updatableState];
  mediaSheetsCompleted = [updatableState mediaSheetsCompleted];

  return mediaSheetsCompleted;
}

- (NSDate)timeAtProcessing
{
  updatableState = [(PKJob *)self updatableState];
  timeAtProcessing = [updatableState timeAtProcessing];

  return timeAtProcessing;
}

- (NSDate)timeAtCompleted
{
  updatableState = [(PKJob *)self updatableState];
  timeAtCompleted = [updatableState timeAtCompleted];

  return timeAtCompleted;
}

- (int64_t)mediaSheets
{
  updatableState = [(PKJob *)self updatableState];
  mediaSheets = [updatableState mediaSheets];

  return mediaSheets;
}

- (int64_t)mediaProgress
{
  updatableState = [(PKJob *)self updatableState];
  mediaProgress = [updatableState mediaProgress];

  return mediaProgress;
}

- (int64_t)remoteJobId
{
  updatableState = [(PKJob *)self updatableState];
  remoteJobId = [updatableState remoteJobId];

  return remoteJobId;
}

- (NSString)PIN
{
  updatableState = [(PKJob *)self updatableState];
  v3 = [updatableState PIN];

  return v3;
}

- (NSString)jobPrinterStateMessage
{
  updatableState = [(PKJob *)self updatableState];
  jobPrinterStateMessage = [updatableState jobPrinterStateMessage];

  return jobPrinterStateMessage;
}

- (NSArray)jobPrinterStateReasons
{
  updatableState = [(PKJob *)self updatableState];
  jobPrinterStateReasons = [updatableState jobPrinterStateReasons];

  return jobPrinterStateReasons;
}

- (NSString)jobStateMessage
{
  updatableState = [(PKJob *)self updatableState];
  jobStateMessage = [updatableState jobStateMessage];

  return jobStateMessage;
}

- (NSArray)jobStateReasons
{
  updatableState = [(PKJob *)self updatableState];
  jobStateReasons = [updatableState jobStateReasons];

  return jobStateReasons;
}

- (NSData)thumbnailImage
{
  updatableState = [(PKJob *)self updatableState];
  thumbnailImage = [updatableState thumbnailImage];

  return thumbnailImage;
}

- (NSData)printerEndpointData
{
  updatableState = [(PKJob *)self updatableState];
  printerEndpointData = [updatableState printerEndpointData];

  return printerEndpointData;
}

- (NSString)localizedStatusString
{
  state = [(PKJob *)self state];
  v4 = state;
  if (state == 10 || state == 5)
  {
    selfCopy = self;
    mediaSheetsCompleted = [(PKJob *)selfCopy mediaSheetsCompleted];
    mediaSheets = (mediaSheetsCompleted & ~(mediaSheetsCompleted >> 63)) + 1;
    if ([(PKJob *)selfCopy mediaSheets]>= 1 && mediaSheets >= [(PKJob *)selfCopy mediaSheets])
    {
      mediaSheets = [(PKJob *)selfCopy mediaSheets];
    }

    v8 = MEMORY[0x277CCABB8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:mediaSheets];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v4 > 6)
  {
    if (v4 <= 8)
    {
      if (v4 == 7)
      {
        v12 = "Printer status - Canceled";
        v13 = @"Canceled";
      }

      else
      {
        v12 = "Printer status - Failed";
        v13 = @"Failed";
      }

      goto LABEL_28;
    }

    if (v4 == 9)
    {
      v12 = "Printer status - Finished";
      v13 = @"Finished";
      goto LABEL_28;
    }

    if (v4 != 10)
    {
      goto LABEL_27;
    }

LABEL_20:

    if (v4 > 6)
    {
      v19 = PKLocalizedString(&cfstr_CancelingPage.isa, "Printer status - Canceling page <n>");
      v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, v11];

      v21 = 0;
      v18 = 0;
    }

    else
    {
      selfCopy2 = self;
      if ([(PKJob *)selfCopy2 mediaSheets]< 1)
      {
        v18 = 0;
      }

      else
      {
        mediaSheets2 = [(PKJob *)selfCopy2 mediaSheets];
        v16 = MEMORY[0x277CCABB8];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:mediaSheets2];
        v18 = [v16 localizedStringFromNumber:v17 numberStyle:0];
      }

      if (v18)
      {
        PKLocalizedString(&cfstr_PrintingOf.isa, "Value for print status panel printing page <n> of <m>");
      }

      else
      {
        PKLocalizedString(&cfstr_PrintingPage.isa, " Value for print status panel printing page <n>");
      }
      v21 = ;
      if (v21)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@ %@" error:0, v11, v18];
      }

      else
      {
        v20 = 0;
      }
    }

    goto LABEL_29;
  }

  if (v4 > 4)
  {
    if (v4 != 5)
    {
      v12 = "Printer status - Stopped";
      v13 = @"Stopped";
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (v4 == 3)
  {
    v12 = "Printer status - Waiting";
    v13 = @"Waiting";
    goto LABEL_28;
  }

  if (v4 != 4)
  {
LABEL_27:
    v12 = "Printer status - Unknown";
    v13 = @"Unknown";
    goto LABEL_28;
  }

  v12 = "Printer status - Hold";
  v13 = @"Hold";
LABEL_28:
  v21 = 0;
  v20 = PKLocalizedString(&v13->isa, v12);
  v18 = 0;
LABEL_29:

  return v20;
}

- (NSString)localizedJobOptions
{
  v45[3] = *MEMORY[0x277D85DE8];
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  settings = [(PKJob *)self settings];
  duplex = [settings duplex];
  if (duplex)
  {
    settings2 = [(PKJob *)self settings];
    duplex2 = [settings2 duplex];
    v7 = [duplex2 isEqualToString:@"one-sided"];

    if ((v7 & 1) == 0)
    {
      v39 = PKLocalizedString(&cfstr_DoubleSided.isa, "Label for double sided printing");
      [v38 addObject:v39];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v39 = PKLocalizedString(&cfstr_SingleSided.isa, "Label for single sided printing");
  [v38 addObject:v39];
LABEL_6:
  settings3 = [(PKJob *)self settings];
  outputMode = [settings3 outputMode];

  if (outputMode)
  {
    settings4 = [(PKJob *)self settings];
    outputMode2 = [settings4 outputMode];

    v45[0] = @"monochrome";
    v45[1] = @"auto-monochrome";
    v45[2] = @"process-monochrome";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    if ([v12 containsObject:outputMode2])
    {
      PKLocalizedString(&cfstr_BlackWhite.isa, "Label for black & white (grayscale) printing");
    }

    else
    {
      PKLocalizedString(&cfstr_Color.isa, "Label for color printing");
    }
    v13 = ;

    [v38 addObject:v13];
    v39 = v13;
  }

  settings5 = [(PKJob *)self settings];
  finishings = [settings5 finishings];
  v16 = finishings == 0;

  if (!v16)
  {
    settings6 = [(PKJob *)self settings];
    finishings2 = [settings6 finishings];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = finishings2;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v20)
    {
      selfCopy = self;
      v21 = 0;
      v22 = 0;
      v23 = *v41;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          v21 |= [&unk_2871ADA90 containsObject:v25];
          v22 |= [&unk_2871ADAA8 containsObject:v25];
        }

        v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);

      self = selfCopy;
      if (v21)
      {
        v26 = PKLocalizedString(&cfstr_Staple.isa, "The printer will staple the job");

        v39 = v26;
        [v38 addObject:v26];
      }

      if (v22)
      {
        v27 = PKLocalizedString(&cfstr_Punch.isa, "The printer will hole-punch the job");

        v39 = v27;
        [v38 addObject:v27];
      }
    }

    else
    {
    }
  }

  settings7 = [(PKJob *)self settings];
  paper = [settings7 paper];
  v30 = paper == 0;

  if (!v30)
  {
    settings8 = [(PKJob *)self settings];
    paper2 = [settings8 paper];

    localizedName = [paper2 localizedName];
    if (localizedName)
    {
      [v38 addObject:localizedName];
    }
  }

  v34 = PKLocalizedString(&stru_2871A5028.isa, "localized comma for joining strings");
  v35 = [v38 componentsJoinedByString:v34];

  return v35;
}

@end