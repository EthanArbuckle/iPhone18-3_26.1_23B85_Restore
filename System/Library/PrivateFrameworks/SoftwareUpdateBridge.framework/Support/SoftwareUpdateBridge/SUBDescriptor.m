@interface SUBDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)stringsMatch:(id)a3 second:(id)a4;
- (NSString)humanReadableUpdateName;
- (SUBDescriptor)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUBDescriptor

- (SUBDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SUBDescriptor;
  v5 = [(SUBDescriptor *)&v33 init];
  if (v5)
  {
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v34[2] = objc_opt_class();
    v34[3] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v34 count:4];
    v7 = [NSSet setWithArray:v6];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
    documentation = v5->_documentation;
    v5->_documentation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentationID"];
    documentationID = v5->_documentationID;
    v5->_documentationID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MarketingVersion"];
    marketingVersion = v5->_marketingVersion;
    v5->_marketingVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publisher"];
    publisher = v5->_publisher;
    v5->_publisher = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productSystemName"];
    productSystemName = v5->_productSystemName;
    v5->_productSystemName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"denialReasons"];
    denialReasons = v5->_denialReasons;
    v5->_denialReasons = v22;

    v5->_downloadSize = [v4 decodeInt64ForKey:@"downloadSize"];
    v5->_unarchivedSize = [v4 decodeInt64ForKey:@"unarchivedSize"];
    v5->_msuPrepareSize = [v4 decodeInt64ForKey:@"msuPrepareSize"];
    v5->_installationSize = [v4 decodeInt64ForKey:@"installationSize"];
    v5->_totalRequiredFreeSpace = [v4 decodeInt64ForKey:@"TotalRequiredFreeSpace"];
    v5->_userDidAcceptTermsAndConditions = [v4 decodeBoolForKey:@"userDidAcceptTermsAndConditions"];
    v5->_willProceedWithInstallation = [v4 decodeBoolForKey:@"willProceedWithInstallation"];
    v5->_isAwaitingAdmissionControlForInstallation = [v4 decodeBoolForKey:@"isAwaitingAdmissionControlForInstallation"];
    v5->_userInstallRequestType = [v4 decodeIntegerForKey:@"userInstallRequestType"];
    v5->_installTonightScheduled = [v4 decodeBoolForKey:@"installTonightScheduled"];
    v5->_displayTermsRequested = [v4 decodeBoolForKey:@"displayTermsRequested"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OSName"];
    osName = v5->_osName;
    v5->_osName = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v26;

    v28 = [v4 decodeObjectOfClasses:v7 forKey:@"updatePowerPolicy"];
    updatePowerPolicy = v5->_updatePowerPolicy;
    v5->_updatePowerPolicy = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUCoreDescriptor"];
    coreDescriptor = v5->_coreDescriptor;
    v5->_coreDescriptor = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  documentation = self->_documentation;
  v5 = a3;
  [v5 encodeObject:documentation forKey:@"documentation"];
  [v5 encodeObject:self->_productVersion forKey:@"productVersion"];
  [v5 encodeObject:self->_productBuildVersion forKey:@"productBuildVersion"];
  [v5 encodeObject:self->_documentationID forKey:@"documentationID"];
  [v5 encodeObject:self->_marketingVersion forKey:@"MarketingVersion"];
  [v5 encodeObject:self->_publisher forKey:@"publisher"];
  [v5 encodeObject:self->_productSystemName forKey:@"productSystemName"];
  [v5 encodeObject:self->_denialReasons forKey:@"denialReasons"];
  [v5 encodeInt64:self->_downloadSize forKey:@"downloadSize"];
  [v5 encodeInt64:self->_unarchivedSize forKey:@"unarchivedSize"];
  [v5 encodeInt64:self->_msuPrepareSize forKey:@"msuPrepareSize"];
  [v5 encodeInt64:self->_installationSize forKey:@"installationSize"];
  [v5 encodeInt64:self->_totalRequiredFreeSpace forKey:@"TotalRequiredFreeSpace"];
  [v5 encodeBool:self->_userDidAcceptTermsAndConditions forKey:@"userDidAcceptTermsAndConditions"];
  [v5 encodeBool:self->_willProceedWithInstallation forKey:@"willProceedWithInstallation"];
  [v5 encodeBool:self->_isAwaitingAdmissionControlForInstallation forKey:@"isAwaitingAdmissionControlForInstallation"];
  [v5 encodeInteger:self->_userInstallRequestType forKey:@"userInstallRequestType"];
  [v5 encodeBool:self->_installTonightScheduled forKey:@"installTonightScheduled"];
  [v5 encodeBool:self->_displayTermsRequested forKey:@"displayTermsRequested"];
  [v5 encodeObject:self->_osName forKey:@"OSName"];
  [v5 encodeObject:self->_manifest forKey:@"manifest"];
  [v5 encodeObject:self->_updatePowerPolicy forKey:@"updatePowerPolicy"];
  [v5 encodeObject:self->_coreDescriptor forKey:@"SUCoreDescriptor"];
}

- (id)copy
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)stringsMatch:(id)a3 second:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUBDescriptor *)v5 productVersion];
      v7 = [(SUBDescriptor *)self stringsMatch:v6 second:self->_productVersion];

      v8 = [(SUBDescriptor *)v5 productBuildVersion];
      v9 = [(SUBDescriptor *)self stringsMatch:v8 second:self->_productBuildVersion];

      v10 = [(SUBDescriptor *)v5 marketingVersion];
      v32 = [(SUBDescriptor *)self stringsMatch:v10 second:self->_marketingVersion];

      v11 = [(SUBDescriptor *)v5 documentationID];
      v12 = [(SUBDescriptor *)self stringsMatch:v11 second:self->_documentationID];

      v13 = [(SUBDescriptor *)v5 publisher];
      v14 = [(SUBDescriptor *)self stringsMatch:v13 second:self->_publisher];

      v15 = [(SUBDescriptor *)v5 productSystemName];
      v16 = [(SUBDescriptor *)self stringsMatch:v15 second:self->_productSystemName];

      v17 = 0;
      if (v7 && v9 && v32 && v12 && v14 && v16)
      {
        v17 = [(SUBDescriptor *)v5 downloadSize]== self->_downloadSize;
      }

      v18 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        if (v17)
        {
          v19 = "YES";
        }

        else
        {
          v19 = "NO";
        }

        if (v7)
        {
          v20 = "YES";
        }

        else
        {
          v20 = "NO";
        }

        if (v9)
        {
          v21 = "YES";
        }

        else
        {
          v21 = "NO";
        }

        v29 = v19;
        v30 = v21;
        if (v32)
        {
          v22 = "YES";
        }

        else
        {
          v22 = "NO";
        }

        v31 = v20;
        v33 = v22;
        if (v12)
        {
          v23 = "YES";
        }

        else
        {
          v23 = "NO";
        }

        if (v14)
        {
          v24 = "YES";
        }

        else
        {
          v24 = "NO";
        }

        if (v16)
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        v26 = v18;
        if ([(SUBDescriptor *)v5 downloadSize]== self->_downloadSize)
        {
          v27 = "YES";
        }

        else
        {
          v27 = "NO";
        }

        *buf = 136316930;
        v35 = v29;
        v36 = 2080;
        v37 = v31;
        v38 = 2080;
        v39 = v30;
        v40 = 2080;
        v41 = v33;
        v42 = 2080;
        v43 = v23;
        v44 = 2080;
        v45 = v24;
        v46 = 2080;
        v47 = v25;
        v48 = 2080;
        v49 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Comparison result: isEqual: %s productVersionsMatch: %s productBuildVersionsMatch: %s productMarketingVersionsMatch: %s documentationIDsMatch: %s publishersMatch: %s productSystemNamesMatch: %s DownloadSize: %s", buf, 0x52u);
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v2 = [NSString stringWithFormat:@"%@/%@", self->_productVersion, self->_productBuildVersion];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [(SUBDocumentation *)self->_documentation preferencesIcon];
  v4 = @"YES";
  if (!v3)
  {
    v4 = @"NO";
  }

  v35 = v4;

  userDidAcceptTermsAndConditions = self->_userDidAcceptTermsAndConditions;
  v34 = SUBStringForUserInstallRequestType(self->_userInstallRequestType);
  displayTermsRequested = self->_displayTermsRequested;
  installTonightScheduled = self->_installTonightScheduled;
  productBuildVersion = self->_productBuildVersion;
  productVersion = self->_productVersion;
  publisher = self->_publisher;
  productSystemName = self->_productSystemName;
  downloadSize = self->_downloadSize;
  v28 = [(SUBDescriptor *)self preparationSize];
  totalRequiredFreeSpace = self->_totalRequiredFreeSpace;
  installationSize = self->_installationSize;
  documentationID = self->_documentationID;
  marketingVersion = self->_marketingVersion;
  v5 = [(NSError *)self->_denialReasons description];
  osName = self->_osName;
  v7 = [(NSData *)self->_manifest length];
  v8 = [(SUBDocumentation *)self->_documentation licenseAgreement];
  v9 = [v8 length];
  v10 = [(SUBDocumentation *)self->_documentation releaseNotes];
  v11 = [v10 length];
  v12 = [(SUBDocumentation *)self->_documentation releaseNotesSummary];
  v13 = [v12 length];
  if (objc_opt_respondsToSelector())
  {
    updatePowerPolicy = self->_updatePowerPolicy;
  }

  else
  {
    updatePowerPolicy = @"Legacy Policy";
  }

  v15 = "NO";
  if (displayTermsRequested)
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  if (installTonightScheduled)
  {
    v17 = "YES";
  }

  else
  {
    v17 = "NO";
  }

  if (userDidAcceptTermsAndConditions)
  {
    v15 = "YES";
  }

  if (self->_coreDescriptor)
  {
    v18 = @"Present";
  }

  else
  {
    v18 = @"Not present";
  }

  v19 = [NSString stringWithFormat:@"\n            terms: %s userInstallRequestType: %s installTonightScheduled: %s displayTermsRequested: %s\n            ProductVersion: %@\n            ProductBuildVersion: %@\n            ProductSystemName: %@\n            Publisher: %@\n            DownloadSize: %lld\n            PreparationSize: %lld\n            InstallationSize: %lld\n            TotalRequiredFreeSpace: %lld\n            DocumentationID: %@\n            MarketingVersion: %@\n            CurrentDenialReasons: %@\n            OSName: %@\n            Manifest Length: %lu\n             Terms Length: %lu\n            Release Note Length: %lu\n            Release Note Summary Length: %lu \n            SUIconPresent: %@\n             Power Policy: %@\n             CoreDescriptor: %@", v15, v34, v17, v16, productVersion, productBuildVersion, productSystemName, publisher, downloadSize, v28, installationSize, totalRequiredFreeSpace, documentationID, marketingVersion, v5, osName, v7, v9, v11, v13, v35, updatePowerPolicy, v18];

  return v19;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 0;
  }

  else if (v4)
  {
    productVersion = self->_productVersion;
    v7 = [(SUBDescriptor *)v4 productVersion];
    v8 = [(NSString *)productVersion compare:v7 options:64];

    if (v8 != -1 && v8 != 1)
    {
      productBuildVersion = self->_productBuildVersion;
      v11 = [(SUBDescriptor *)v5 productBuildVersion];
      v8 = [(NSString *)productBuildVersion compare:v11 options:64];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (NSString)humanReadableUpdateName
{
  v3 = [(SUBDocumentation *)self->_documentation humanReadableUpdateName];

  if (v3)
  {
    v4 = [(SUBDocumentation *)self->_documentation humanReadableUpdateName];
  }

  else
  {
    osName = self->_osName;
    if (osName && self->_productVersion)
    {
      v6 = [(NSString *)osName stringByReplacingOccurrencesOfString:@" " withString:&stru_10002D9A0];
      v4 = [NSString stringWithFormat:@"%@ %@", v6, self->_productVersion];
    }

    else
    {
      v4 = @"Software Update";
    }
  }

  return v4;
}

@end