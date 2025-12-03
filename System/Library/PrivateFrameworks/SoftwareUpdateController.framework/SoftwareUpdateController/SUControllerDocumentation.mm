@interface SUControllerDocumentation
- (BOOL)isEqual:(id)equal;
- (NSData)licenseAgreement;
- (NSData)releaseNotes;
- (NSData)releaseNotesSummary;
- (NSString)humanReadableUpdateName;
- (SUControllerDocumentation)initWithCoder:(id)coder;
- (SUControllerDocumentation)initWithDocumentationBundleURL:(id)l serverAssetURL:(id)rL serverAssetMeasurement:(id)measurement serverAssetAlgorithm:(id)algorithm serverAssetChunkSize:(int64_t)size;
- (id)_resourceFromBundle:(__CFBundle *)bundle forKey:(id)key;
- (id)description;
- (void)_loadBundleResources;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUControllerDocumentation

- (SUControllerDocumentation)initWithDocumentationBundleURL:(id)l serverAssetURL:(id)rL serverAssetMeasurement:(id)measurement serverAssetAlgorithm:(id)algorithm serverAssetChunkSize:(int64_t)size
{
  lCopy = l;
  rLCopy = rL;
  measurementCopy = measurement;
  algorithmCopy = algorithm;
  v20.receiver = self;
  v20.super_class = SUControllerDocumentation;
  v17 = [(SUControllerDocumentation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localBundleURL, l);
    objc_storeStrong(&v18->_serverAssetURL, rL);
    objc_storeStrong(&v18->_serverAssetMeasurement, measurement);
    objc_storeStrong(&v18->_serverAssetAlgorithm, algorithm);
    v18->_serverAssetChunkSize = size;
  }

  return v18;
}

- (SUControllerDocumentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SUControllerDocumentation;
  v5 = [(SUControllerDocumentation *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localBundleURL"];
    localBundleURL = v5->_localBundleURL;
    v5->_localBundleURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverAssetURL"];
    serverAssetURL = v5->_serverAssetURL;
    v5->_serverAssetURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverAssetMeasurement"];
    serverAssetMeasurement = v5->_serverAssetMeasurement;
    v5->_serverAssetMeasurement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverAssetAlgorithm"];
    serverAssetAlgorithm = v5->_serverAssetAlgorithm;
    v5->_serverAssetAlgorithm = v12;

    v5->_serverAssetChunkSize = [coderCopy decodeInt64ForKey:@"serverAssetChunkSize"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesSummary"];
    releaseNotesSummary = v5->_releaseNotesSummary;
    v5->_releaseNotesSummary = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotes"];
    releaseNotes = v5->_releaseNotes;
    v5->_releaseNotes = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"licenseAgreement"];
    licenseAgreement = v5->_licenseAgreement;
    v5->_licenseAgreement = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localBundleURL = [(SUControllerDocumentation *)self localBundleURL];
  [coderCopy encodeObject:localBundleURL forKey:@"localBundleURL"];

  serverAssetURL = [(SUControllerDocumentation *)self serverAssetURL];
  [coderCopy encodeObject:serverAssetURL forKey:@"serverAssetURL"];

  serverAssetMeasurement = [(SUControllerDocumentation *)self serverAssetMeasurement];
  [coderCopy encodeObject:serverAssetMeasurement forKey:@"serverAssetMeasurement"];

  serverAssetAlgorithm = [(SUControllerDocumentation *)self serverAssetAlgorithm];
  [coderCopy encodeObject:serverAssetAlgorithm forKey:@"serverAssetAlgorithm"];

  [coderCopy encodeInt64:-[SUControllerDocumentation serverAssetChunkSize](self forKey:{"serverAssetChunkSize"), @"serverAssetChunkSize"}];
  releaseNotesSummary = [(SUControllerDocumentation *)self releaseNotesSummary];
  [coderCopy encodeObject:releaseNotesSummary forKey:@"releaseNotesSummary"];

  releaseNotes = [(SUControllerDocumentation *)self releaseNotes];
  [coderCopy encodeObject:releaseNotes forKey:@"releaseNotes"];

  licenseAgreement = [(SUControllerDocumentation *)self licenseAgreement];
  [coderCopy encodeObject:licenseAgreement forKey:@"licenseAgreement"];
}

- (NSString)humanReadableUpdateName
{
  [(SUControllerDocumentation *)self _loadBundleResources];
  humanReadableUpdateName = self->_humanReadableUpdateName;

  return humanReadableUpdateName;
}

- (NSData)releaseNotesSummary
{
  [(SUControllerDocumentation *)self _loadBundleResources];
  releaseNotesSummary = self->_releaseNotesSummary;

  return releaseNotesSummary;
}

- (NSData)releaseNotes
{
  [(SUControllerDocumentation *)self _loadBundleResources];
  releaseNotes = self->_releaseNotes;

  return releaseNotes;
}

- (NSData)licenseAgreement
{
  [(SUControllerDocumentation *)self _loadBundleResources];
  licenseAgreement = self->_licenseAgreement;

  return licenseAgreement;
}

- (id)_resourceFromBundle:(__CFBundle *)bundle forKey:(id)key
{
  v4 = CFBundleCopyResourceURL(bundle, key, @"html", 0);
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_loadBundleResources
{
  localBundleURL = [(SUControllerDocumentation *)self localBundleURL];

  if (localBundleURL)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v5 = preferredLanguages;
    if (preferredLanguages && [preferredLanguages count])
    {
      v6 = [v5 objectAtIndex:0];
    }

    else
    {
      v6 = @"en";
    }

    v16 = v6;
    currentLanguage = [(SUControllerDocumentation *)self currentLanguage];
    v8 = [(__CFString *)v16 isEqualToString:currentLanguage];

    if ((v8 & 1) == 0)
    {
      [(SUControllerDocumentation *)self setCurrentLanguage:v16];
      [(SUControllerDocumentation *)self setHumanReadableUpdateName:0];
      [(SUControllerDocumentation *)self setReleaseNotesSummary:0];
      [(SUControllerDocumentation *)self setReleaseNotes:0];
      [(SUControllerDocumentation *)self setLicenseAgreement:0];
      v9 = *MEMORY[0x277CBECE8];
      localBundleURL2 = [(SUControllerDocumentation *)self localBundleURL];
      v11 = CFBundleCreate(v9, localBundleURL2);

      if (v11)
      {
        v12 = CFBundleCopyLocalizedString(v11, @"HumanReadableUpdateName", 0, @"documentation");
        if (([(__CFString *)v12 isEqualToString:@"HumanReadableUpdateName"]& 1) == 0)
        {
          [(SUControllerDocumentation *)self setHumanReadableUpdateName:v12];
        }

        v13 = [(SUControllerDocumentation *)self _resourceFromBundle:v11 forKey:@"ReadMeSummary"];
        [(SUControllerDocumentation *)self setReleaseNotesSummary:v13];

        v14 = [(SUControllerDocumentation *)self _resourceFromBundle:v11 forKey:@"ReadMe"];
        [(SUControllerDocumentation *)self setReleaseNotes:v14];

        v15 = [(SUControllerDocumentation *)self _resourceFromBundle:v11 forKey:@"License"];
        [(SUControllerDocumentation *)self setLicenseAgreement:v15];

        CFRelease(v11);
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      localBundleURL = [(SUControllerDocumentation *)equalCopy localBundleURL];
      localBundleURL2 = [(SUControllerDocumentation *)self localBundleURL];
      v7 = [localBundleURL isEqual:localBundleURL2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v19 = MEMORY[0x277CCACA8];
  localBundleURL = [(SUControllerDocumentation *)self localBundleURL];
  serverAssetURL = [(SUControllerDocumentation *)self serverAssetURL];
  serverAssetMeasurement = [(SUControllerDocumentation *)self serverAssetMeasurement];
  v3 = @"absent";
  if (serverAssetMeasurement)
  {
    v4 = @"present";
  }

  else
  {
    v4 = @"absent";
  }

  v16 = v4;
  serverAssetAlgorithm = [(SUControllerDocumentation *)self serverAssetAlgorithm];
  serverAssetChunkSize = [(SUControllerDocumentation *)self serverAssetChunkSize];
  releaseNotesSummary = [(SUControllerDocumentation *)self releaseNotesSummary];
  if (releaseNotesSummary)
  {
    v8 = @"present";
  }

  else
  {
    v8 = @"absent";
  }

  releaseNotes = [(SUControllerDocumentation *)self releaseNotes];
  if (releaseNotes)
  {
    v10 = @"present";
  }

  else
  {
    v10 = @"absent";
  }

  licenseAgreement = [(SUControllerDocumentation *)self licenseAgreement];
  if (licenseAgreement)
  {
    v3 = @"present";
  }

  humanReadableUpdateName = [(SUControllerDocumentation *)self humanReadableUpdateName];
  currentLanguage = [(SUControllerDocumentation *)self currentLanguage];
  v14 = [v19 stringWithFormat:@"\nLocalBundleURL: %@\nServerAssetURL: %@\nServerAssetMeasurement: %@\nServerAssetAlgorithm: %@\nServerAssetChunkSize: %lld\nReleaseNotesSummary: %@\nReleaseNotes: %@\nLicenseAgreement: %@\nHumanReadableUpdateName: %@\ncurrentLanguage: %@\n", localBundleURL, serverAssetURL, v16, serverAssetAlgorithm, serverAssetChunkSize, v8, v10, v3, humanReadableUpdateName, currentLanguage];

  return v14;
}

@end