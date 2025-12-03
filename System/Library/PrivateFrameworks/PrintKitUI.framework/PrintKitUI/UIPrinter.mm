@interface UIPrinter
+ (UIPrinter)printerWithURL:(NSURL *)url;
- (BOOL)supportsColor;
- (BOOL)supportsDuplex;
- (BOOL)supportsJobAccountID;
- (NSArray)finishingTemplates;
- (NSArray)loadedPapers;
- (NSArray)outputBins;
- (NSArray)printerFinishingOptions;
- (NSArray)supportedMediaTypes;
- (NSArray)supportedPapers;
- (NSArray)supportedPresets;
- (NSArray)supportedQualities;
- (NSArray)supportedTrays;
- (NSString)displayLocation;
- (NSString)displayName;
- (NSString)makeAndModel;
- (NSURL)URL;
- (UIPrinter)init;
- (UIPrinterJobTypes)supportedJobTypes;
- (id)_initWithPrinter:(id)printer;
- (id)_initWithURL:(id)l;
- (id)_printerID;
- (int64_t)jobAccountIDSupport;
- (void)contactPrinter:(void *)completionHandler;
- (void)loadPrinterInfoDict;
@end

@implementation UIPrinter

+ (UIPrinter)printerWithURL:(NSURL *)url
{
  v4 = url;
  v5 = [[self alloc] _initWithURL:v4];

  v6 = v5;

  return v6;
}

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = UIPrinter;
  v5 = [(UIPrinter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIPrinter *)v5 setPrinterURL:lCopy];
  }

  return v6;
}

- (id)_initWithPrinter:(id)printer
{
  printerCopy = printer;
  v8.receiver = self;
  v8.super_class = UIPrinter;
  v5 = [(UIPrinter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIPrinter *)v5 setPkPrinter:printerCopy];
    [(UIPrinter *)v6 setPrinterURL:0];
  }

  return v6;
}

- (UIPrinter)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-[UIPrinter init] not allowed"];

  return 0;
}

- (NSURL)URL
{
  printerURL = [(UIPrinter *)self printerURL];

  if (!printerURL)
  {
    pkPrinter = [(UIPrinter *)self pkPrinter];
    printerURL2 = [pkPrinter printerURL];
    [(UIPrinter *)self setPrinterURL:printerURL2];
  }

  return [(UIPrinter *)self printerURL];
}

- (NSString)displayName
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  displayName = [pkPrinter displayName];
  v4 = displayName;
  if (displayName)
  {
    v5 = displayName;
  }

  else
  {
    v5 = &stru_2871AE610;
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)displayLocation
{
  pkPrinter = [(UIPrinter *)self pkPrinter];

  if (pkPrinter)
  {
    pkPrinter2 = [(UIPrinter *)self pkPrinter];
    location = [pkPrinter2 location];
    v6 = [location copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIPrinterJobTypes)supportedJobTypes
{
  pkPrinter = [(UIPrinter *)self pkPrinter];

  if (!pkPrinter)
  {
    return 0;
  }

  pkPrinter2 = [(UIPrinter *)self pkPrinter];
  jobTypesSupported = [pkPrinter2 jobTypesSupported];

  return jobTypesSupported;
}

- (NSString)makeAndModel
{
  pkPrinter = [(UIPrinter *)self pkPrinter];

  if (pkPrinter)
  {
    pkPrinter2 = [(UIPrinter *)self pkPrinter];
    makeAndModel = [pkPrinter2 makeAndModel];
    v6 = [makeAndModel copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsColor
{
  pkPrinter = [(UIPrinter *)self pkPrinter];

  if (!pkPrinter)
  {
    return 0;
  }

  pkPrinter2 = [(UIPrinter *)self pkPrinter];
  if ([pkPrinter2 type] == 1)
  {
    v5 = 1;
  }

  else
  {
    pkPrinter3 = [(UIPrinter *)self pkPrinter];
    v5 = [pkPrinter3 type] == 3;
  }

  return v5;
}

- (BOOL)supportsDuplex
{
  pkPrinter = [(UIPrinter *)self pkPrinter];

  if (!pkPrinter)
  {
    return 0;
  }

  pkPrinter2 = [(UIPrinter *)self pkPrinter];
  if ([pkPrinter2 type] == 3)
  {
    v5 = 1;
  }

  else
  {
    pkPrinter3 = [(UIPrinter *)self pkPrinter];
    v5 = [pkPrinter3 type] == 2;
  }

  return v5;
}

- (void)contactPrinter:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__block_literal_global_5;
  }

  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter)
  {
  }

  else
  {
    printerURL = [(UIPrinter *)self printerURL];

    if (!printerURL)
    {
      v5[2](v5, 0);
      goto LABEL_11;
    }
  }

  pkPrinter2 = [(UIPrinter *)self pkPrinter];

  if (pkPrinter2)
  {
    pkPrinter3 = [(UIPrinter *)self pkPrinter];
    [pkPrinter3 _checkAvailable:MEMORY[0x277D85CD0] queue:v5 completionHandler:30.0];
  }

  else
  {
    v10 = MEMORY[0x277D410A8];
    printerURL2 = [(UIPrinter *)self printerURL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __28__UIPrinter_contactPrinter___block_invoke_2;
    v12[3] = &unk_279A9C990;
    v12[4] = self;
    v13 = v5;
    [v10 printerWithURL:printerURL2 discoveryTimeout:v12 completionHandler:30.0];
  }

LABEL_11:
}

void __28__UIPrinter_contactPrinter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setPkPrinter:v4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__UIPrinter_contactPrinter___block_invoke_3;
  v5[3] = &unk_279A9C968;
  v6 = *(a1 + 40);
  v7 = v4 != 0;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (id)_printerID
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  name = [pkPrinter name];

  return name;
}

- (void)loadPrinterInfoDict
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  printInfoSupported = [pkPrinter printInfoSupported];
  [(UIPrinter *)self setPrinterInfoDict:printInfoSupported];
}

- (NSArray)printerFinishingOptions
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter)
  {
    v4 = pkPrinter;
    printerInfoDict = [(UIPrinter *)self printerInfoDict];

    if (printerInfoDict)
    {
      printerInfoDict2 = [(UIPrinter *)self printerInfoDict];
      v7 = [printerInfoDict2 objectForKey:*MEMORY[0x277D41128]];

      if ([v7 count])
      {
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (NSArray)finishingTemplates
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter)
  {
    v4 = pkPrinter;
    printerInfoDict = [(UIPrinter *)self printerInfoDict];

    if (printerInfoDict)
    {
      printerInfoDict2 = [(UIPrinter *)self printerInfoDict];
      v7 = [printerInfoDict2 objectForKey:*MEMORY[0x277D41118]];

      if ([v7 count])
      {
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (NSArray)outputBins
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter)
  {
    v4 = pkPrinter;
    printerInfoDict = [(UIPrinter *)self printerInfoDict];

    if (printerInfoDict)
    {
      printerInfoDict2 = [(UIPrinter *)self printerInfoDict];
      v7 = [printerInfoDict2 objectForKey:*MEMORY[0x277D411C0]];

      if ([v7 count])
      {
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (NSArray)supportedPresets
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter && (v4 = pkPrinter, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    printerInfoDict = [(UIPrinter *)self printerInfoDict];
    v7 = [printerInfoDict objectForKey:*MEMORY[0x277D41168]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)supportedTrays
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter && (v4 = pkPrinter, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    printerInfoDict = [(UIPrinter *)self printerInfoDict];
    v7 = [printerInfoDict objectForKey:*MEMORY[0x277D41138]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)loadedPapers
{
  [(UIPrinter *)self pkPrinter];

  return 0;
}

- (NSArray)supportedPapers
{
  [(UIPrinter *)self pkPrinter];

  return 0;
}

- (NSArray)supportedMediaTypes
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter && (v4 = pkPrinter, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    printerInfoDict = [(UIPrinter *)self printerInfoDict];
    v7 = [printerInfoDict objectForKey:*MEMORY[0x277D41190]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)supportedQualities
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  if (pkPrinter && (v4 = pkPrinter, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    printerInfoDict = [(UIPrinter *)self printerInfoDict];
    v7 = [printerInfoDict objectForKey:*MEMORY[0x277D41220]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsJobAccountID
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  supportsJobAccountID = [pkPrinter supportsJobAccountID];

  return supportsJobAccountID;
}

- (int64_t)jobAccountIDSupport
{
  pkPrinter = [(UIPrinter *)self pkPrinter];
  jobAccountIDSupport = [pkPrinter jobAccountIDSupport];

  return jobAccountIDSupport;
}

@end