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
- (id)_initWithPrinter:(id)a3;
- (id)_initWithURL:(id)a3;
- (id)_printerID;
- (int64_t)jobAccountIDSupport;
- (void)contactPrinter:(void *)completionHandler;
- (void)loadPrinterInfoDict;
@end

@implementation UIPrinter

+ (UIPrinter)printerWithURL:(NSURL *)url
{
  v4 = url;
  v5 = [[a1 alloc] _initWithURL:v4];

  v6 = v5;

  return v6;
}

- (id)_initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIPrinter;
  v5 = [(UIPrinter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIPrinter *)v5 setPrinterURL:v4];
  }

  return v6;
}

- (id)_initWithPrinter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIPrinter;
  v5 = [(UIPrinter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIPrinter *)v5 setPkPrinter:v4];
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
  v3 = [(UIPrinter *)self printerURL];

  if (!v3)
  {
    v4 = [(UIPrinter *)self pkPrinter];
    v5 = [v4 printerURL];
    [(UIPrinter *)self setPrinterURL:v5];
  }

  return [(UIPrinter *)self printerURL];
}

- (NSString)displayName
{
  v2 = [(UIPrinter *)self pkPrinter];
  v3 = [v2 displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v3 = [(UIPrinter *)self pkPrinter];

  if (v3)
  {
    v4 = [(UIPrinter *)self pkPrinter];
    v5 = [v4 location];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIPrinterJobTypes)supportedJobTypes
{
  v3 = [(UIPrinter *)self pkPrinter];

  if (!v3)
  {
    return 0;
  }

  v4 = [(UIPrinter *)self pkPrinter];
  v5 = [v4 jobTypesSupported];

  return v5;
}

- (NSString)makeAndModel
{
  v3 = [(UIPrinter *)self pkPrinter];

  if (v3)
  {
    v4 = [(UIPrinter *)self pkPrinter];
    v5 = [v4 makeAndModel];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsColor
{
  v3 = [(UIPrinter *)self pkPrinter];

  if (!v3)
  {
    return 0;
  }

  v4 = [(UIPrinter *)self pkPrinter];
  if ([v4 type] == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(UIPrinter *)self pkPrinter];
    v5 = [v6 type] == 3;
  }

  return v5;
}

- (BOOL)supportsDuplex
{
  v3 = [(UIPrinter *)self pkPrinter];

  if (!v3)
  {
    return 0;
  }

  v4 = [(UIPrinter *)self pkPrinter];
  if ([v4 type] == 3)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(UIPrinter *)self pkPrinter];
    v5 = [v6 type] == 2;
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

  v6 = [(UIPrinter *)self pkPrinter];
  if (v6)
  {
  }

  else
  {
    v7 = [(UIPrinter *)self printerURL];

    if (!v7)
    {
      v5[2](v5, 0);
      goto LABEL_11;
    }
  }

  v8 = [(UIPrinter *)self pkPrinter];

  if (v8)
  {
    v9 = [(UIPrinter *)self pkPrinter];
    [v9 _checkAvailable:MEMORY[0x277D85CD0] queue:v5 completionHandler:30.0];
  }

  else
  {
    v10 = MEMORY[0x277D410A8];
    v11 = [(UIPrinter *)self printerURL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __28__UIPrinter_contactPrinter___block_invoke_2;
    v12[3] = &unk_279A9C990;
    v12[4] = self;
    v13 = v5;
    [v10 printerWithURL:v11 discoveryTimeout:v12 completionHandler:30.0];
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
  v2 = [(UIPrinter *)self pkPrinter];
  v3 = [v2 name];

  return v3;
}

- (void)loadPrinterInfoDict
{
  v4 = [(UIPrinter *)self pkPrinter];
  v3 = [v4 printInfoSupported];
  [(UIPrinter *)self setPrinterInfoDict:v3];
}

- (NSArray)printerFinishingOptions
{
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIPrinter *)self printerInfoDict];

    if (v5)
    {
      v6 = [(UIPrinter *)self printerInfoDict];
      v7 = [v6 objectForKey:*MEMORY[0x277D41128]];

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
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIPrinter *)self printerInfoDict];

    if (v5)
    {
      v6 = [(UIPrinter *)self printerInfoDict];
      v7 = [v6 objectForKey:*MEMORY[0x277D41118]];

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
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIPrinter *)self printerInfoDict];

    if (v5)
    {
      v6 = [(UIPrinter *)self printerInfoDict];
      v7 = [v6 objectForKey:*MEMORY[0x277D411C0]];

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
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3 && (v4 = v3, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(UIPrinter *)self printerInfoDict];
    v7 = [v6 objectForKey:*MEMORY[0x277D41168]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)supportedTrays
{
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3 && (v4 = v3, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(UIPrinter *)self printerInfoDict];
    v7 = [v6 objectForKey:*MEMORY[0x277D41138]];
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
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3 && (v4 = v3, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(UIPrinter *)self printerInfoDict];
    v7 = [v6 objectForKey:*MEMORY[0x277D41190]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)supportedQualities
{
  v3 = [(UIPrinter *)self pkPrinter];
  if (v3 && (v4 = v3, [(UIPrinter *)self printerInfoDict], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(UIPrinter *)self printerInfoDict];
    v7 = [v6 objectForKey:*MEMORY[0x277D41220]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsJobAccountID
{
  v2 = [(UIPrinter *)self pkPrinter];
  v3 = [v2 supportsJobAccountID];

  return v3;
}

- (int64_t)jobAccountIDSupport
{
  v2 = [(UIPrinter *)self pkPrinter];
  v3 = [v2 jobAccountIDSupport];

  return v3;
}

@end