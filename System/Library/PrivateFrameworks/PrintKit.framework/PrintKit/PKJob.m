@interface PKJob
+ (id)currentJob;
+ (id)jobForJobID:(int64_t)a3;
+ (id)jobs;
+ (void)currentJobCompletionHandler:(id)a3;
+ (void)jobsCompletionHandler:(id)a3;
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
- (PKJob)initWithCoder:(id)a3;
- (PKJob)initWithJobID:(int)a3 updateState:(id)a4;
- (PKJob)initWithUserCodableDictionary:(id)a3;
- (PKPrintSettings)settings;
- (PKPrinter)printer;
- (id)copyWithZone:(_NSZone *)a3;
- (id)userCodableDictionary;
- (int64_t)localJobID;
- (int64_t)mediaProgress;
- (int64_t)mediaSheets;
- (int64_t)mediaSheetsCompleted;
- (int64_t)printerKind;
- (int64_t)remoteJobId;
- (int64_t)state;
- (int64_t)update;
- (void)_updateJobState:(id)a3;
- (void)_withPrinterAsync:(id)a3;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
- (void)updateCompletionHandler:(id)a3;
@end

@implementation PKJob

- (PKJob)initWithJobID:(int)a3 updateState:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKJob;
  v8 = [(PKJob *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_localJobID = a3;
    objc_storeStrong(&v8->_updatableState, a4);
  }

  return v9;
}

- (PKJob)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKJob;
  v5 = [(PKJob *)&v9 init];
  if (v5)
  {
    v5->_localJobID = [v4 decodeIntForKey:@"_localJobID"];
    v6 = [v4 decodeObjectForKey:@"_updatableState"];
    updatableState = v5->_updatableState;
    v5->_updatableState = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_localJobID forKey:@"_localJobID"];
  [v4 encodeObject:self->_updatableState forKey:@"_updatableState"];
}

- (id)userCodableDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"localJobID";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self->_localJobID];
  v7[1] = @"updatableState";
  v8[0] = v3;
  v4 = [(PKMutableJobState *)self->_updatableState userCodableDictionary];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (PKJob)initWithUserCodableDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKJob;
  v5 = [(PKJob *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"localJobID"];
    v5->_localJobID = [v6 intValue];

    v7 = [PKMutableJobState alloc];
    v8 = [v4 objectForKeyedSubscript:@"updatableState"];
    v9 = [(PKMutableJobState *)v7 initWithUserCodableDictionary:v8];
    updatableState = v5->_updatableState;
    v5->_updatableState = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  localJobID = self->_localJobID;
  v6 = [(PKMutableJobState *)self->_updatableState copy];
  v7 = [v4 initWithJobID:localJobID updateState:v6];

  return v7;
}

- (void)_withPrinterAsync:(id)a3
{
  v7 = a3;
  v4 = [(PKJob *)self updatableState];
  v5 = [v4 printerEndpointData];

  if (v5)
  {
    v6 = [PKPrinterBonjourEndpoint endpointWithData:v5];
    [PKPrinter printerWithBonjourEndpoint:v6 discoveryTimeout:v7 completionHandler:1.0];
  }

  else
  {
    v7[2](v7, 0);
  }
}

- (PKPrinter)printer
{
  cachedPrinter = self->_cachedPrinter;
  if (!cachedPrinter)
  {
    v4 = self;
    if (object_isClass(v4))
    {
      [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKJob printer]"];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "-[PKJob printer]"];
    }
    v5 = ;

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __16__PKJob_printer__block_invoke;
    v9[3] = &unk_279A92228;
    v9[4] = v4;
    v6 = withDebuggableSemaphore<PKPrinter * {__strong}>(v5, v9, 3.0);
    v7 = self->_cachedPrinter;
    self->_cachedPrinter = v6;

    cachedPrinter = self->_cachedPrinter;
  }

  return cachedPrinter;
}

+ (id)jobForJobID:(int64_t)a3
{
  v4 = a1;
  if (object_isClass(v4))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKJob jobForJobID:]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "+[PKJob jobForJobID:]"];
  }
  v5 = ;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __21__PKJob_jobForJobID___block_invoke;
  v8[3] = &__block_descriptor_48_e22_v16__0___v____PKJob__8l;
  v8[4] = v4;
  v8[5] = a3;
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

+ (void)jobsCompletionHandler:(id)a3
{
  v3 = a3;
  if (_initPrintKitNotificiations(void)::sOnce != -1)
  {
    +[PKJob jobsCompletionHandler:];
  }

  if (printd_running_token < 0 || (state64 = 0, notify_get_state(printd_running_token, &state64)) || !state64)
  {
    v3[2](v3, 0);
  }

  else
  {
    v4 = +[PKPrinterTool_Client sharedClient];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __31__PKJob_jobsCompletionHandler___block_invoke;
    v5[3] = &unk_279A922B8;
    v6 = v3;
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

+ (void)currentJobCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PKJob_currentJobCompletionHandler___block_invoke;
  v6[3] = &unk_279A92308;
  v7 = v4;
  v5 = v4;
  [a1 jobsCompletionHandler:v6];
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
  v2 = a1;
  if (object_isClass(v2))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKJob jobs]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v2, "+[PKJob jobs]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __13__PKJob_jobs__block_invoke;
  v6[3] = &__block_descriptor_40_e24_v16__0___v____NSArray__8l;
  v6[4] = v2;
  v4 = withDebuggableSemaphore<NSArray * {__strong}>(v3, v6, 3.0);

  return v4;
}

+ (id)currentJob
{
  v2 = a1;
  if (object_isClass(v2))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PKJob currentJob]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v2, "+[PKJob currentJob]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __19__PKJob_currentJob__block_invoke;
  v6[3] = &__block_descriptor_40_e22_v16__0___v____PKJob__8l;
  v6[4] = v2;
  v4 = withDebuggableSemaphore<PKJob * {__strong}>(v3, v6, 3.0);

  return v4;
}

- (void)cancel
{
  v3 = +[PKPrinterTool_Client sharedClient];
  [v3 cancelJob:{-[PKJob localJobID](self, "localJobID")}];
}

- (void)_updateJobState:(id)a3
{
  v9 = a3;
  updatableState = self->_updatableState;
  p_updatableState = &self->_updatableState;
  v7 = [(PKMutableJobState *)updatableState thumbnailImage];
  objc_storeStrong(p_updatableState, a3);
  v8 = [(PKMutableJobState *)*p_updatableState thumbnailImage];

  if (!v8)
  {
    [(PKMutableJobState *)*p_updatableState setThumbnailImage:v7];
  }
}

- (void)updateCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[PKPrinterTool_Client sharedClient];
  v6 = [(PKJob *)self localJobID];
  v7 = [(PKMutableJobState *)self->_updatableState thumbnailImage];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__PKJob_updateCompletionHandler___block_invoke;
  v9[3] = &unk_279A92350;
  v8 = v4;
  v9[4] = self;
  v10 = v8;
  [v5 getJobUpdateStatus:v6 includeThumbnail:v7 == 0 completionHandler:v9];
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
  v2 = self;
  if (object_isClass(v2))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKJob update]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v2, "-[PKJob update]"];
  }
  v3 = ;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __15__PKJob_update__block_invoke;
  v6[3] = &unk_279A92378;
  v6[4] = v2;
  v4 = withDebuggableSemaphore<PKStatus>(v3, v6, 3.0);

  return v4;
}

- (int64_t)localJobID
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 localJobID];

  return v3;
}

- (NSString)printerDisplayName
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 printerDisplayName];

  return v3;
}

- (NSString)printerLocation
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 printerLocation];

  return v3;
}

- (int64_t)printerKind
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 printerKind];

  return v3;
}

- (PKPrintSettings)settings
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 settings];

  return v3;
}

- (NSDate)timeAtCreation
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 timeAtCreation];

  return v3;
}

- (int64_t)state
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 state];

  return v3;
}

- (int64_t)mediaSheetsCompleted
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 mediaSheetsCompleted];

  return v3;
}

- (NSDate)timeAtProcessing
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 timeAtProcessing];

  return v3;
}

- (NSDate)timeAtCompleted
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 timeAtCompleted];

  return v3;
}

- (int64_t)mediaSheets
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 mediaSheets];

  return v3;
}

- (int64_t)mediaProgress
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 mediaProgress];

  return v3;
}

- (int64_t)remoteJobId
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 remoteJobId];

  return v3;
}

- (NSString)PIN
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 PIN];

  return v3;
}

- (NSString)jobPrinterStateMessage
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 jobPrinterStateMessage];

  return v3;
}

- (NSArray)jobPrinterStateReasons
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 jobPrinterStateReasons];

  return v3;
}

- (NSString)jobStateMessage
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 jobStateMessage];

  return v3;
}

- (NSArray)jobStateReasons
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 jobStateReasons];

  return v3;
}

- (NSData)thumbnailImage
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 thumbnailImage];

  return v3;
}

- (NSData)printerEndpointData
{
  v2 = [(PKJob *)self updatableState];
  v3 = [v2 printerEndpointData];

  return v3;
}

- (NSString)localizedStatusString
{
  v3 = [(PKJob *)self state];
  v4 = v3;
  if (v3 == 10 || v3 == 5)
  {
    v5 = self;
    v6 = [(PKJob *)v5 mediaSheetsCompleted];
    v7 = (v6 & ~(v6 >> 63)) + 1;
    if ([(PKJob *)v5 mediaSheets]>= 1 && v7 >= [(PKJob *)v5 mediaSheets])
    {
      v7 = [(PKJob *)v5 mediaSheets];
    }

    v8 = MEMORY[0x277CCABB8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
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
      v14 = self;
      if ([(PKJob *)v14 mediaSheets]< 1)
      {
        v18 = 0;
      }

      else
      {
        v15 = [(PKJob *)v14 mediaSheets];
        v16 = MEMORY[0x277CCABB8];
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
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
  v3 = [(PKJob *)self settings];
  v4 = [v3 duplex];
  if (v4)
  {
    v5 = [(PKJob *)self settings];
    v6 = [v5 duplex];
    v7 = [v6 isEqualToString:@"one-sided"];

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
  v8 = [(PKJob *)self settings];
  v9 = [v8 outputMode];

  if (v9)
  {
    v10 = [(PKJob *)self settings];
    v11 = [v10 outputMode];

    v45[0] = @"monochrome";
    v45[1] = @"auto-monochrome";
    v45[2] = @"process-monochrome";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    if ([v12 containsObject:v11])
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

  v14 = [(PKJob *)self settings];
  v15 = [v14 finishings];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [(PKJob *)self settings];
    v18 = [v17 finishings];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v20)
    {
      v37 = self;
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

      self = v37;
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

  v28 = [(PKJob *)self settings];
  v29 = [v28 paper];
  v30 = v29 == 0;

  if (!v30)
  {
    v31 = [(PKJob *)self settings];
    v32 = [v31 paper];

    v33 = [v32 localizedName];
    if (v33)
    {
      [v38 addObject:v33];
    }
  }

  v34 = PKLocalizedString(&stru_2871A5028.isa, "localized comma for joining strings");
  v35 = [v38 componentsJoinedByString:v34];

  return v35;
}

@end