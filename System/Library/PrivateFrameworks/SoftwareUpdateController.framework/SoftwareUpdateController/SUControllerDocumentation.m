@interface SUControllerDocumentation
- (BOOL)isEqual:(id)a3;
- (NSData)licenseAgreement;
- (NSData)releaseNotes;
- (NSData)releaseNotesSummary;
- (NSString)humanReadableUpdateName;
- (SUControllerDocumentation)initWithCoder:(id)a3;
- (SUControllerDocumentation)initWithDocumentationBundleURL:(id)a3 serverAssetURL:(id)a4 serverAssetMeasurement:(id)a5 serverAssetAlgorithm:(id)a6 serverAssetChunkSize:(int64_t)a7;
- (id)_resourceFromBundle:(__CFBundle *)a3 forKey:(id)a4;
- (id)description;
- (void)_loadBundleResources;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUControllerDocumentation

- (SUControllerDocumentation)initWithDocumentationBundleURL:(id)a3 serverAssetURL:(id)a4 serverAssetMeasurement:(id)a5 serverAssetAlgorithm:(id)a6 serverAssetChunkSize:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = SUControllerDocumentation;
  v17 = [(SUControllerDocumentation *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_localBundleURL, a3);
    objc_storeStrong(&v18->_serverAssetURL, a4);
    objc_storeStrong(&v18->_serverAssetMeasurement, a5);
    objc_storeStrong(&v18->_serverAssetAlgorithm, a6);
    v18->_serverAssetChunkSize = a7;
  }

  return v18;
}

- (SUControllerDocumentation)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SUControllerDocumentation;
  v5 = [(SUControllerDocumentation *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localBundleURL"];
    localBundleURL = v5->_localBundleURL;
    v5->_localBundleURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverAssetURL"];
    serverAssetURL = v5->_serverAssetURL;
    v5->_serverAssetURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverAssetMeasurement"];
    serverAssetMeasurement = v5->_serverAssetMeasurement;
    v5->_serverAssetMeasurement = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverAssetAlgorithm"];
    serverAssetAlgorithm = v5->_serverAssetAlgorithm;
    v5->_serverAssetAlgorithm = v12;

    v5->_serverAssetChunkSize = [v4 decodeInt64ForKey:@"serverAssetChunkSize"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesSummary"];
    releaseNotesSummary = v5->_releaseNotesSummary;
    v5->_releaseNotesSummary = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotes"];
    releaseNotes = v5->_releaseNotes;
    v5->_releaseNotes = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"licenseAgreement"];
    licenseAgreement = v5->_licenseAgreement;
    v5->_licenseAgreement = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUControllerDocumentation *)self localBundleURL];
  [v4 encodeObject:v5 forKey:@"localBundleURL"];

  v6 = [(SUControllerDocumentation *)self serverAssetURL];
  [v4 encodeObject:v6 forKey:@"serverAssetURL"];

  v7 = [(SUControllerDocumentation *)self serverAssetMeasurement];
  [v4 encodeObject:v7 forKey:@"serverAssetMeasurement"];

  v8 = [(SUControllerDocumentation *)self serverAssetAlgorithm];
  [v4 encodeObject:v8 forKey:@"serverAssetAlgorithm"];

  [v4 encodeInt64:-[SUControllerDocumentation serverAssetChunkSize](self forKey:{"serverAssetChunkSize"), @"serverAssetChunkSize"}];
  v9 = [(SUControllerDocumentation *)self releaseNotesSummary];
  [v4 encodeObject:v9 forKey:@"releaseNotesSummary"];

  v10 = [(SUControllerDocumentation *)self releaseNotes];
  [v4 encodeObject:v10 forKey:@"releaseNotes"];

  v11 = [(SUControllerDocumentation *)self licenseAgreement];
  [v4 encodeObject:v11 forKey:@"licenseAgreement"];
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

- (id)_resourceFromBundle:(__CFBundle *)a3 forKey:(id)a4
{
  v4 = CFBundleCopyResourceURL(a3, a4, @"html", 0);
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
  v3 = [(SUControllerDocumentation *)self localBundleURL];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v5 = v4;
    if (v4 && [v4 count])
    {
      v6 = [v5 objectAtIndex:0];
    }

    else
    {
      v6 = @"en";
    }

    v16 = v6;
    v7 = [(SUControllerDocumentation *)self currentLanguage];
    v8 = [(__CFString *)v16 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(SUControllerDocumentation *)self setCurrentLanguage:v16];
      [(SUControllerDocumentation *)self setHumanReadableUpdateName:0];
      [(SUControllerDocumentation *)self setReleaseNotesSummary:0];
      [(SUControllerDocumentation *)self setReleaseNotes:0];
      [(SUControllerDocumentation *)self setLicenseAgreement:0];
      v9 = *MEMORY[0x277CBECE8];
      v10 = [(SUControllerDocumentation *)self localBundleURL];
      v11 = CFBundleCreate(v9, v10);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SUControllerDocumentation *)v4 localBundleURL];
      v6 = [(SUControllerDocumentation *)self localBundleURL];
      v7 = [v5 isEqual:v6];
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
  v18 = [(SUControllerDocumentation *)self localBundleURL];
  v17 = [(SUControllerDocumentation *)self serverAssetURL];
  v20 = [(SUControllerDocumentation *)self serverAssetMeasurement];
  v3 = @"absent";
  if (v20)
  {
    v4 = @"present";
  }

  else
  {
    v4 = @"absent";
  }

  v16 = v4;
  v5 = [(SUControllerDocumentation *)self serverAssetAlgorithm];
  v6 = [(SUControllerDocumentation *)self serverAssetChunkSize];
  v7 = [(SUControllerDocumentation *)self releaseNotesSummary];
  if (v7)
  {
    v8 = @"present";
  }

  else
  {
    v8 = @"absent";
  }

  v9 = [(SUControllerDocumentation *)self releaseNotes];
  if (v9)
  {
    v10 = @"present";
  }

  else
  {
    v10 = @"absent";
  }

  v11 = [(SUControllerDocumentation *)self licenseAgreement];
  if (v11)
  {
    v3 = @"present";
  }

  v12 = [(SUControllerDocumentation *)self humanReadableUpdateName];
  v13 = [(SUControllerDocumentation *)self currentLanguage];
  v14 = [v19 stringWithFormat:@"\nLocalBundleURL: %@\nServerAssetURL: %@\nServerAssetMeasurement: %@\nServerAssetAlgorithm: %@\nServerAssetChunkSize: %lld\nReleaseNotesSummary: %@\nReleaseNotes: %@\nLicenseAgreement: %@\nHumanReadableUpdateName: %@\ncurrentLanguage: %@\n", v18, v17, v16, v5, v6, v8, v10, v3, v12, v13];

  return v14;
}

@end