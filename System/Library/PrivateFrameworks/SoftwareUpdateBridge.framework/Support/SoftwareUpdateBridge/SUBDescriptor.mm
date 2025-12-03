@interface SUBDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)stringsMatch:(id)match second:(id)second;
- (NSString)humanReadableUpdateName;
- (SUBDescriptor)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUBDescriptor

- (SUBDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
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

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
    documentation = v5->_documentation;
    v5->_documentation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentationID"];
    documentationID = v5->_documentationID;
    v5->_documentationID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MarketingVersion"];
    marketingVersion = v5->_marketingVersion;
    v5->_marketingVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publisher"];
    publisher = v5->_publisher;
    v5->_publisher = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productSystemName"];
    productSystemName = v5->_productSystemName;
    v5->_productSystemName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"denialReasons"];
    denialReasons = v5->_denialReasons;
    v5->_denialReasons = v22;

    v5->_downloadSize = [coderCopy decodeInt64ForKey:@"downloadSize"];
    v5->_unarchivedSize = [coderCopy decodeInt64ForKey:@"unarchivedSize"];
    v5->_msuPrepareSize = [coderCopy decodeInt64ForKey:@"msuPrepareSize"];
    v5->_installationSize = [coderCopy decodeInt64ForKey:@"installationSize"];
    v5->_totalRequiredFreeSpace = [coderCopy decodeInt64ForKey:@"TotalRequiredFreeSpace"];
    v5->_userDidAcceptTermsAndConditions = [coderCopy decodeBoolForKey:@"userDidAcceptTermsAndConditions"];
    v5->_willProceedWithInstallation = [coderCopy decodeBoolForKey:@"willProceedWithInstallation"];
    v5->_isAwaitingAdmissionControlForInstallation = [coderCopy decodeBoolForKey:@"isAwaitingAdmissionControlForInstallation"];
    v5->_userInstallRequestType = [coderCopy decodeIntegerForKey:@"userInstallRequestType"];
    v5->_installTonightScheduled = [coderCopy decodeBoolForKey:@"installTonightScheduled"];
    v5->_displayTermsRequested = [coderCopy decodeBoolForKey:@"displayTermsRequested"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OSName"];
    osName = v5->_osName;
    v5->_osName = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manifest"];
    manifest = v5->_manifest;
    v5->_manifest = v26;

    v28 = [coderCopy decodeObjectOfClasses:v7 forKey:@"updatePowerPolicy"];
    updatePowerPolicy = v5->_updatePowerPolicy;
    v5->_updatePowerPolicy = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUCoreDescriptor"];
    coreDescriptor = v5->_coreDescriptor;
    v5->_coreDescriptor = v30;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  documentation = self->_documentation;
  coderCopy = coder;
  [coderCopy encodeObject:documentation forKey:@"documentation"];
  [coderCopy encodeObject:self->_productVersion forKey:@"productVersion"];
  [coderCopy encodeObject:self->_productBuildVersion forKey:@"productBuildVersion"];
  [coderCopy encodeObject:self->_documentationID forKey:@"documentationID"];
  [coderCopy encodeObject:self->_marketingVersion forKey:@"MarketingVersion"];
  [coderCopy encodeObject:self->_publisher forKey:@"publisher"];
  [coderCopy encodeObject:self->_productSystemName forKey:@"productSystemName"];
  [coderCopy encodeObject:self->_denialReasons forKey:@"denialReasons"];
  [coderCopy encodeInt64:self->_downloadSize forKey:@"downloadSize"];
  [coderCopy encodeInt64:self->_unarchivedSize forKey:@"unarchivedSize"];
  [coderCopy encodeInt64:self->_msuPrepareSize forKey:@"msuPrepareSize"];
  [coderCopy encodeInt64:self->_installationSize forKey:@"installationSize"];
  [coderCopy encodeInt64:self->_totalRequiredFreeSpace forKey:@"TotalRequiredFreeSpace"];
  [coderCopy encodeBool:self->_userDidAcceptTermsAndConditions forKey:@"userDidAcceptTermsAndConditions"];
  [coderCopy encodeBool:self->_willProceedWithInstallation forKey:@"willProceedWithInstallation"];
  [coderCopy encodeBool:self->_isAwaitingAdmissionControlForInstallation forKey:@"isAwaitingAdmissionControlForInstallation"];
  [coderCopy encodeInteger:self->_userInstallRequestType forKey:@"userInstallRequestType"];
  [coderCopy encodeBool:self->_installTonightScheduled forKey:@"installTonightScheduled"];
  [coderCopy encodeBool:self->_displayTermsRequested forKey:@"displayTermsRequested"];
  [coderCopy encodeObject:self->_osName forKey:@"OSName"];
  [coderCopy encodeObject:self->_manifest forKey:@"manifest"];
  [coderCopy encodeObject:self->_updatePowerPolicy forKey:@"updatePowerPolicy"];
  [coderCopy encodeObject:self->_coreDescriptor forKey:@"SUCoreDescriptor"];
}

- (id)copy
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)stringsMatch:(id)match second:(id)second
{
  matchCopy = match;
  secondCopy = second;
  v7 = secondCopy;
  if (matchCopy | secondCopy)
  {
    v8 = 0;
    if (matchCopy && secondCopy)
    {
      v8 = [matchCopy isEqualToString:secondCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      productVersion = [(SUBDescriptor *)v5 productVersion];
      v7 = [(SUBDescriptor *)self stringsMatch:productVersion second:self->_productVersion];

      productBuildVersion = [(SUBDescriptor *)v5 productBuildVersion];
      v9 = [(SUBDescriptor *)self stringsMatch:productBuildVersion second:self->_productBuildVersion];

      marketingVersion = [(SUBDescriptor *)v5 marketingVersion];
      v32 = [(SUBDescriptor *)self stringsMatch:marketingVersion second:self->_marketingVersion];

      documentationID = [(SUBDescriptor *)v5 documentationID];
      v12 = [(SUBDescriptor *)self stringsMatch:documentationID second:self->_documentationID];

      publisher = [(SUBDescriptor *)v5 publisher];
      v14 = [(SUBDescriptor *)self stringsMatch:publisher second:self->_publisher];

      productSystemName = [(SUBDescriptor *)v5 productSystemName];
      v16 = [(SUBDescriptor *)self stringsMatch:productSystemName second:self->_productSystemName];

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
  preferencesIcon = [(SUBDocumentation *)self->_documentation preferencesIcon];
  v4 = @"YES";
  if (!preferencesIcon)
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
  preparationSize = [(SUBDescriptor *)self preparationSize];
  totalRequiredFreeSpace = self->_totalRequiredFreeSpace;
  installationSize = self->_installationSize;
  documentationID = self->_documentationID;
  marketingVersion = self->_marketingVersion;
  v5 = [(NSError *)self->_denialReasons description];
  osName = self->_osName;
  v7 = [(NSData *)self->_manifest length];
  licenseAgreement = [(SUBDocumentation *)self->_documentation licenseAgreement];
  v9 = [licenseAgreement length];
  releaseNotes = [(SUBDocumentation *)self->_documentation releaseNotes];
  v11 = [releaseNotes length];
  releaseNotesSummary = [(SUBDocumentation *)self->_documentation releaseNotesSummary];
  v13 = [releaseNotesSummary length];
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

  v19 = [NSString stringWithFormat:@"\n            terms: %s userInstallRequestType: %s installTonightScheduled: %s displayTermsRequested: %s\n            ProductVersion: %@\n            ProductBuildVersion: %@\n            ProductSystemName: %@\n            Publisher: %@\n            DownloadSize: %lld\n            PreparationSize: %lld\n            InstallationSize: %lld\n            TotalRequiredFreeSpace: %lld\n            DocumentationID: %@\n            MarketingVersion: %@\n            CurrentDenialReasons: %@\n            OSName: %@\n            Manifest Length: %lu\n             Terms Length: %lu\n            Release Note Length: %lu\n            Release Note Summary Length: %lu \n            SUIconPresent: %@\n             Power Policy: %@\n             CoreDescriptor: %@", v15, v34, v17, v16, productVersion, productBuildVersion, productSystemName, publisher, downloadSize, preparationSize, installationSize, totalRequiredFreeSpace, documentationID, marketingVersion, v5, osName, v7, v9, v11, v13, v35, updatePowerPolicy, v18];

  return v19;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = compareCopy;
  if (self == compareCopy)
  {
    v8 = 0;
  }

  else if (compareCopy)
  {
    productVersion = self->_productVersion;
    productVersion = [(SUBDescriptor *)compareCopy productVersion];
    v8 = [(NSString *)productVersion compare:productVersion options:64];

    if (v8 != -1 && v8 != 1)
    {
      productBuildVersion = self->_productBuildVersion;
      productBuildVersion = [(SUBDescriptor *)v5 productBuildVersion];
      v8 = [(NSString *)productBuildVersion compare:productBuildVersion options:64];
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
  humanReadableUpdateName = [(SUBDocumentation *)self->_documentation humanReadableUpdateName];

  if (humanReadableUpdateName)
  {
    humanReadableUpdateName2 = [(SUBDocumentation *)self->_documentation humanReadableUpdateName];
  }

  else
  {
    osName = self->_osName;
    if (osName && self->_productVersion)
    {
      v6 = [(NSString *)osName stringByReplacingOccurrencesOfString:@" " withString:&stru_10002D9A0];
      humanReadableUpdateName2 = [NSString stringWithFormat:@"%@ %@", v6, self->_productVersion];
    }

    else
    {
      humanReadableUpdateName2 = @"Software Update";
    }
  }

  return humanReadableUpdateName2;
}

@end