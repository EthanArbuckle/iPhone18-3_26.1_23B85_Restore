@interface PKiCloudPrinter
+ (id)PKiCloudPrinterWithInfo:(id)info;
+ (id)PKiCloudPrinterWithPKPrinter:(id)printer displayName:(id)name location:(id)location;
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

+ (id)PKiCloudPrinterWithInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(PKiCloudPrinter);
  [(PKiCloudPrinter *)v4 setICloudInfo:infoCopy];

  return v4;
}

+ (id)PKiCloudPrinterWithPKPrinter:(id)printer displayName:(id)name location:(id)location
{
  printerCopy = printer;
  nameCopy = name;
  locationCopy = location;
  v10 = objc_opt_new();
  uuid = [printerCopy uuid];

  if (uuid)
  {
    uuid2 = [printerCopy uuid];
    [v10 setObject:uuid2 forKeyedSubscript:@"printer-uuid"];
  }

  name = [printerCopy name];
  if (name)
  {
    [v10 setObject:name forKeyedSubscript:@"printer-dns-sd-name"];
  }

  browseInfo = [printerCopy browseInfo];
  bonjourName = [browseInfo bonjourName];
  dataRepresentation = [bonjourName dataRepresentation];

  if (dataRepresentation)
  {
    [v10 setObject:dataRepresentation forKeyedSubscript:@"com.apple.printer-endpoint-data"];
  }

  if (!nameCopy)
  {
    nameCopy = [printerCopy displayName];
  }

  [v10 setObject:nameCopy forKeyedSubscript:@"com.apple.printkit.printer-display-name"];
  if (locationCopy || ([printerCopy location], (locationCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    [v10 setObject:locationCopy forKeyedSubscript:@"com.apple.printkit.printer-location"];
  }

  printerURL = [printerCopy printerURL];
  v18 = printerURL;
  if (printerURL)
  {
    absoluteString = [printerURL absoluteString];
    [v10 setObject:absoluteString forKeyedSubscript:@"com.apple.printer-url"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(printerCopy, "type")}];
  [v10 setObject:v20 forKeyedSubscript:@"com.apple.printer-type"];

  if ([printerCopy isFromMCProfile])
  {
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.mcprofile-added"];
  }

  printerImageData = [printerCopy printerImageData];

  if (printerImageData)
  {
    printerImageData2 = [printerCopy printerImageData];
    [v10 setObject:printerImageData2 forKeyedSubscript:@"com.apple.printkit.printer-image-data"];
  }

  v23 = [PKiCloudPrinter PKiCloudPrinterWithInfo:v10];

  return v23;
}

- (NSString)uuid
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"printer-uuid"];

  return v3;
}

- (NSString)dnssdName
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"printer-dns-sd-name"];

  return v3;
}

- (NSString)displayName
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-display-name"];

  return v3;
}

- (NSString)customName
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-custom-name"];

  return v3;
}

- (NSString)location
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-location"];

  return v3;
}

- (NSString)customLocation
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-custom-location"];

  return v3;
}

- (NSArray)printerURLs
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-urls"];

  return v3;
}

- (NSArray)endPoints
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-endpoints"];

  return v3;
}

- (NSDate)lastUsedDate
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.last-used-date"];

  return v3;
}

- (int64_t)printerType
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printer-type"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isFromMCProfile
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.mcprofile-added"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSData)printerImageData
{
  iCloudInfo = [(PKiCloudPrinter *)self iCloudInfo];
  v3 = [iCloudInfo objectForKeyedSubscript:@"com.apple.printkit.printer-image-data"];

  return v3;
}

- (id)userCodableDictionary
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  uuid = [(PKiCloudPrinter *)self uuid];
  v5 = uuid;
  v6 = @"UUID-MISSING";
  if (uuid)
  {
    v6 = uuid;
  }

  v7 = [v3 stringWithFormat:@"PKiCloudPrinter{%@}", v6];

  v52 = v7;
  v50[0] = @"displayName";
  v38 = v7;
  displayName = [(PKiCloudPrinter *)self displayName];
  v9 = @"none";
  v39 = displayName;
  if (displayName)
  {
    v10 = displayName;
  }

  else
  {
    v10 = @"none";
  }

  v51[0] = v10;
  v50[1] = @"dnssdName";
  dnssdName = [(PKiCloudPrinter *)self dnssdName];
  v40 = dnssdName;
  if (dnssdName)
  {
    v12 = dnssdName;
  }

  else
  {
    v12 = @"none";
  }

  v51[1] = v12;
  v50[2] = @"lastUsedDate";
  lastUsedDate = [(PKiCloudPrinter *)self lastUsedDate];
  if (lastUsedDate)
  {
    lastUsedDate2 = [(PKiCloudPrinter *)self lastUsedDate];
    v13 = [lastUsedDate2 description];
  }

  else
  {
    v13 = @"none";
  }

  v37 = v13;
  v51[2] = v13;
  v50[3] = @"location";
  location = [(PKiCloudPrinter *)self location];
  v41 = location;
  if (location)
  {
    v15 = location;
  }

  else
  {
    v15 = @"none";
  }

  v51[3] = v15;
  v50[4] = @"printerType";
  printerType = [(PKiCloudPrinter *)self printerType];
  if ((printerType + 1) >= 5)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown(%ld)", printerType];
  }

  else
  {
    v17 = off_279A92410[printerType + 1];
  }

  v42 = v17;
  v51[4] = v17;
  v50[5] = @"isFromMDM";
  isFromMCProfile = [(PKiCloudPrinter *)self isFromMCProfile];
  v19 = @"NO";
  if (isFromMCProfile)
  {
    v19 = @"YES";
  }

  v51[5] = v19;
  v50[6] = @"imageData";
  printerImageData = [(PKiCloudPrinter *)self printerImageData];
  if (printerImageData)
  {
    v20 = MEMORY[0x277CCACA8];
    printerImageData2 = [(PKiCloudPrinter *)self printerImageData];
    v9 = [v20 stringWithFormat:@"%d bytes", objc_msgSend(printerImageData2, "length")];
  }

  v51[6] = v9;
  v50[7] = @"printerURLs";
  printerURLs = [(PKiCloudPrinter *)self printerURLs];
  v51[7] = printerURLs;
  v50[8] = @"endPoints";
  endPoints = [(PKiCloudPrinter *)self endPoints];
  v21 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = endPoints;
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
          userCodableDictionary = [v27 userCodableDictionary];
          [v21 addObject:userCodableDictionary];
        }

        else
        {
          v54 = @"ERROR: ";
          userCodableDictionary = [v26 description];
          v55 = userCodableDictionary;
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

  if (printerImageData)
  {
  }

  if (lastUsedDate)
  {
  }

  return v32;
}

@end