@interface PKiCloudPrinter
+ (id)PKiCloudPrinterWithInfo:(id)a3;
+ (id)PKiCloudPrinterWithPKPrinter:(id)a3 displayName:(id)a4 location:(id)a5;
- (BOOL)isFromMCProfile;
- (NSArray)endPoints;
- (NSArray)printerURLs;
- (NSData)printerImageData;
- (NSDate)lastUsedDate;
- (NSString)customLocation;
- (NSString)customName;
- (NSString)displayName;
- (NSString)dnssdName;
- (NSString)location;
- (NSString)uuid;
- (id)userCodableDictionary;
- (int64_t)printerType;
@end

@implementation PKiCloudPrinter

+ (id)PKiCloudPrinterWithInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKiCloudPrinter);
  [(PKiCloudPrinter *)v4 setICloudInfo:v3];

  return v4;
}

+ (id)PKiCloudPrinterWithPKPrinter:(id)a3 displayName:(id)a4 location:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [v7 uuid];

  if (v11)
  {
    v12 = [v7 uuid];
    [v10 setObject:v12 forKeyedSubscript:@"printer-uuid"];
  }

  v13 = [v7 name];
  if (v13)
  {
    [v10 setObject:v13 forKeyedSubscript:@"printer-dns-sd-name"];
  }

  v14 = [v7 browseInfo];
  v15 = [v14 bonjourName];
  v16 = [v15 dataRepresentation];

  if (v16)
  {
    [v10 setObject:v16 forKeyedSubscript:@"com.apple.printer-endpoint-data"];
  }

  if (!v8)
  {
    v8 = [v7 displayName];
  }

  [v10 setObject:v8 forKeyedSubscript:@"com.apple.printkit.printer-display-name"];
  if (v9 || ([v7 location], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v10 setObject:v9 forKeyedSubscript:@"com.apple.printkit.printer-location"];
  }

  v17 = [v7 printerURL];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 absoluteString];
    [v10 setObject:v19 forKeyedSubscript:@"com.apple.printer-url"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "type")}];
  [v10 setObject:v20 forKeyedSubscript:@"com.apple.printer-type"];

  if ([v7 isFromMCProfile])
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.mcprofile-added"];
  }

  v21 = [v7 printerImageData];

  if (v21)
  {
    v22 = [v7 printerImageData];
    [v10 setObject:v22 forKeyedSubscript:@"com.apple.printkit.printer-image-data"];
  }

  v23 = [PKiCloudPrinter PKiCloudPrinterWithInfo:v10];

  return v23;
}

- (NSString)uuid
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"printer-uuid"];

  return v3;
}

- (NSString)dnssdName
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"printer-dns-sd-name"];

  return v3;
}

- (NSString)displayName
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-display-name"];

  return v3;
}

- (NSString)customName
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-custom-name"];

  return v3;
}

- (NSString)location
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-location"];

  return v3;
}

- (NSString)customLocation
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-custom-location"];

  return v3;
}

- (NSArray)printerURLs
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-urls"];

  return v3;
}

- (NSArray)endPoints
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-endpoints"];

  return v3;
}

- (NSDate)lastUsedDate
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.last-used-date"];

  return v3;
}

- (int64_t)printerType
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printer-type"];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)isFromMCProfile
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.mcprofile-added"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSData)printerImageData
{
  v2 = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.printkit.printer-image-data"];

  return v3;
}

- (id)userCodableDictionary
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PKiCloudPrinter *)self uuid];
  v5 = v4;
  v6 = @"UUID-MISSING";
  if (v4)
  {
    v6 = v4;
  }

  v7 = [v3 stringWithFormat:@"PKiCloudPrinter{%@}", v6];

  v52 = v7;
  v50[0] = @"displayName";
  v38 = v7;
  v8 = [(PKiCloudPrinter *)self displayName];
  v9 = @"none";
  v39 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"none";
  }

  v51[0] = v10;
  v50[1] = @"dnssdName";
  v11 = [(PKiCloudPrinter *)self dnssdName];
  v40 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"none";
  }

  v51[1] = v12;
  v50[2] = @"lastUsedDate";
  v44 = [(PKiCloudPrinter *)self lastUsedDate];
  if (v44)
  {
    v35 = [(PKiCloudPrinter *)self lastUsedDate];
    v13 = [v35 description];
  }

  else
  {
    v13 = @"none";
  }

  v37 = v13;
  v51[2] = v13;
  v50[3] = @"location";
  v14 = [(PKiCloudPrinter *)self location];
  v41 = v14;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = @"none";
  }

  v51[3] = v15;
  v50[4] = @"printerType";
  v16 = [(PKiCloudPrinter *)self printerType];
  if ((v16 + 1) >= 5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", v16];
  }

  else
  {
    v17 = off_279A92410[v16 + 1];
  }

  v42 = v17;
  v51[4] = v17;
  v50[5] = @"isFromMDM";
  v18 = [(PKiCloudPrinter *)self isFromMCProfile];
  v19 = @"NO";
  if (v18)
  {
    v19 = @"YES";
  }

  v51[5] = v19;
  v50[6] = @"imageData";
  v45 = [(PKiCloudPrinter *)self printerImageData];
  if (v45)
  {
    v20 = MEMORY[0x277CCACA8];
    v36 = [(PKiCloudPrinter *)self printerImageData];
    v9 = [v20 stringWithFormat:@"%d bytes", objc_msgSend(v36, "length")];
  }

  v51[6] = v9;
  v50[7] = @"printerURLs";
  v43 = [(PKiCloudPrinter *)self printerURLs];
  v51[7] = v43;
  v50[8] = @"endPoints";
  v34 = [(PKiCloudPrinter *)self endPoints];
  v21 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = v34;
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v23)
  {
    v24 = *v47;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v46 + 1) + 8 * i);
        v27 = [PKPrinterBonjourEndpoint endpointWithData:v26];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 userCodableDictionary];
          [v21 addObject:v29];
        }

        else
        {
          v54 = @"ERROR: ";
          v29 = [v26 description];
          v55 = v29;
          v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          [v21 addObject:v30];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v23);
  }

  v51[8] = v21;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:9];
  v53 = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

  if (v45)
  {
  }

  if (v44)
  {
  }

  return v32;
}

@end