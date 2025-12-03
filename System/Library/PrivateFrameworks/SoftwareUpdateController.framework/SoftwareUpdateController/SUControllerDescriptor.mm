@interface SUControllerDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)humanReadableUpdateName;
- (SUControllerDescriptor)init;
- (SUControllerDescriptor)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)summary;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUControllerDescriptor

- (SUControllerDescriptor)init
{
  v22.receiver = self;
  v22.super_class = SUControllerDescriptor;
  v2 = [(SUControllerDescriptor *)&v22 init];
  v3 = v2;
  if (v2)
  {
    documentation = v2->_documentation;
    v2->_documentation = 0;

    productVersion = v3->_productVersion;
    v3->_productVersion = 0;

    productBuildVersion = v3->_productBuildVersion;
    v3->_productBuildVersion = 0;

    documentationID = v3->_documentationID;
    v3->_documentationID = 0;

    marketingVersion = v3->_marketingVersion;
    v3->_marketingVersion = 0;

    publisher = v3->_publisher;
    v3->_publisher = 0;

    productSystemName = v3->_productSystemName;
    v3->_productSystemName = 0;

    fullProductVersion = v3->_fullProductVersion;
    v3->_fullProductVersion = 0;

    denialReasons = v3->_denialReasons;
    v3->_denialReasons = 0;

    *&v3->_userDidAcceptTermsAndConditions = 0;
    v3->_rampEnabled = 0;
    *&v3->_willProceedWithInstallation = 0;
    v3->_installationSize = 0;
    v3->_totalRequiredFreeSpace = 0;
    v3->_downloadSize = 0;
    v3->_unarchivedSize = 0;
    v3->_msuPrepareSize = 0;
    softwareUpdateAsset = v3->_softwareUpdateAsset;
    v3->_softwareUpdateAsset = 0;

    documentationAsset = v3->_documentationAsset;
    v3->_documentationAsset = 0;

    coreDescriptor = v3->_coreDescriptor;
    v3->_coreDescriptor = 0;

    v3->_hasBeenAbandoned = 0;
    v3->_isSupervisedPolicy = 0;
    requestedPMV = v3->_requestedPMV;
    v3->_requestedPMV = 0;

    v3->_delayPeriod = 0;
    releaseType = v3->_releaseType;
    v3->_releaseType = 0;

    releaseDate = v3->_releaseDate;
    v3->_releaseDate = 0;

    v3->_mandatoryUpdateEligible = 0;
    mandatoryUpdateVersionMin = v3->_mandatoryUpdateVersionMin;
    v3->_mandatoryUpdateVersionMin = 0;

    mandatoryUpdateVersionMax = v3->_mandatoryUpdateVersionMax;
    v3->_mandatoryUpdateVersionMax = 0;

    *&v3->_mandatoryUpdateOptional = 0;
  }

  return v3;
}

- (SUControllerDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = SUControllerDescriptor;
  v5 = [(SUControllerDescriptor *)&v38 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
    documentation = v5->_documentation;
    v5->_documentation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentationID"];
    documentationID = v5->_documentationID;
    v5->_documentationID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MarketingVersion"];
    marketingVersion = v5->_marketingVersion;
    v5->_marketingVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publisher"];
    publisher = v5->_publisher;
    v5->_publisher = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productSystemName"];
    productSystemName = v5->_productSystemName;
    v5->_productSystemName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"denialReasons"];
    denialReasons = v5->_denialReasons;
    v5->_denialReasons = v20;

    v5->_downloadSize = [coderCopy decodeInt64ForKey:@"downloadSize"];
    v5->_unarchivedSize = [coderCopy decodeInt64ForKey:@"unarchivedSize"];
    v5->_msuPrepareSize = [coderCopy decodeInt64ForKey:@"msuPrepareSize"];
    v5->_installationSize = [coderCopy decodeInt64ForKey:@"installationSize"];
    v5->_totalRequiredFreeSpace = [coderCopy decodeInt64ForKey:@"TotalRequiredFreeSpace"];
    v5->_userDidAcceptTermsAndConditions = [coderCopy decodeBoolForKey:@"userDidAcceptTermsAndConditions"];
    v5->_fullReplacement = [coderCopy decodeBoolForKey:@"fullReplacement"];
    v5->_rampEnabled = [coderCopy decodeBoolForKey:@"rampEnabled"];
    v5->_willProceedWithInstallation = [coderCopy decodeBoolForKey:@"willProceedWithInstallation"];
    v5->_isAwaitingAdmissionControlForInstallation = [coderCopy decodeBoolForKey:@"isAwaitingAdmissionControlForInstallation"];
    fullProductVersion = v5->_fullProductVersion;
    v5->_fullProductVersion = 0;

    softwareUpdateAsset = v5->_softwareUpdateAsset;
    v5->_softwareUpdateAsset = 0;

    documentationAsset = v5->_documentationAsset;
    v5->_documentationAsset = 0;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coreDescriptor"];
    coreDescriptor = v5->_coreDescriptor;
    v5->_coreDescriptor = v25;

    v5->_hasBeenAbandoned = 0;
    v5->_isSupervisedPolicy = [coderCopy decodeBoolForKey:@"isSupervisedPolicy"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedPMV"];
    requestedPMV = v5->_requestedPMV;
    v5->_requestedPMV = v27;

    v5->_delayPeriod = [coderCopy decodeIntegerForKey:@"delayPeriod"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v31;

    v5->_mandatoryUpdateEligible = [coderCopy decodeBoolForKey:@"mandatoryUpdateEligible"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mandatoryUpdateVersionMin"];
    mandatoryUpdateVersionMin = v5->_mandatoryUpdateVersionMin;
    v5->_mandatoryUpdateVersionMin = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mandatoryUpdateVersionMax"];
    mandatoryUpdateVersionMax = v5->_mandatoryUpdateVersionMax;
    v5->_mandatoryUpdateVersionMax = v35;

    v5->_mandatoryUpdateOptional = [coderCopy decodeBoolForKey:@"mandatoryUpdateOptional"];
    v5->_mandatoryUpdateRestrictedToOutOfTheBox = [coderCopy decodeBoolForKey:@"mandatoryUpdateRestrictedToOutOfTheBox"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  documentation = [(SUControllerDescriptor *)self documentation];
  [coderCopy encodeObject:documentation forKey:@"documentation"];

  productVersion = [(SUControllerDescriptor *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  productBuildVersion = [(SUControllerDescriptor *)self productBuildVersion];
  [coderCopy encodeObject:productBuildVersion forKey:@"productBuildVersion"];

  documentationID = [(SUControllerDescriptor *)self documentationID];
  [coderCopy encodeObject:documentationID forKey:@"documentationID"];

  marketingVersion = [(SUControllerDescriptor *)self marketingVersion];
  [coderCopy encodeObject:marketingVersion forKey:@"MarketingVersion"];

  publisher = [(SUControllerDescriptor *)self publisher];
  [coderCopy encodeObject:publisher forKey:@"publisher"];

  productSystemName = [(SUControllerDescriptor *)self productSystemName];
  [coderCopy encodeObject:productSystemName forKey:@"productSystemName"];

  denialReasons = [(SUControllerDescriptor *)self denialReasons];
  [coderCopy encodeObject:denialReasons forKey:@"denialReasons"];

  [coderCopy encodeInt64:-[SUControllerDescriptor downloadSize](self forKey:{"downloadSize"), @"downloadSize"}];
  [coderCopy encodeInt64:-[SUControllerDescriptor unarchivedSize](self forKey:{"unarchivedSize"), @"unarchivedSize"}];
  [coderCopy encodeInt64:-[SUControllerDescriptor msuPrepareSize](self forKey:{"msuPrepareSize"), @"msuPrepareSize"}];
  [coderCopy encodeInt64:-[SUControllerDescriptor installationSize](self forKey:{"installationSize"), @"installationSize"}];
  [coderCopy encodeInt64:-[SUControllerDescriptor totalRequiredFreeSpace](self forKey:{"totalRequiredFreeSpace"), @"TotalRequiredFreeSpace"}];
  [coderCopy encodeBool:-[SUControllerDescriptor userDidAcceptTermsAndConditions](self forKey:{"userDidAcceptTermsAndConditions"), @"userDidAcceptTermsAndConditions"}];
  [coderCopy encodeBool:-[SUControllerDescriptor fullReplacement](self forKey:{"fullReplacement"), @"fullReplacement"}];
  [coderCopy encodeBool:-[SUControllerDescriptor rampEnabled](self forKey:{"rampEnabled"), @"rampEnabled"}];
  [coderCopy encodeBool:-[SUControllerDescriptor willProceedWithInstallation](self forKey:{"willProceedWithInstallation"), @"willProceedWithInstallation"}];
  [coderCopy encodeBool:-[SUControllerDescriptor isAwaitingAdmissionControlForInstallation](self forKey:{"isAwaitingAdmissionControlForInstallation"), @"isAwaitingAdmissionControlForInstallation"}];
  coreDescriptor = [(SUControllerDescriptor *)self coreDescriptor];
  [coderCopy encodeObject:coreDescriptor forKey:@"coreDescriptor"];

  [coderCopy encodeBool:-[SUControllerDescriptor isSupervisedPolicy](self forKey:{"isSupervisedPolicy"), @"isSupervisedPolicy"}];
  requestedPMV = [(SUControllerDescriptor *)self requestedPMV];
  [coderCopy encodeObject:requestedPMV forKey:@"requestedPMV"];

  [coderCopy encodeInteger:-[SUControllerDescriptor delayPeriod](self forKey:{"delayPeriod"), @"delayPeriod"}];
  releaseType = [(SUControllerDescriptor *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"releaseType"];

  releaseDate = [(SUControllerDescriptor *)self releaseDate];
  [coderCopy encodeObject:releaseDate forKey:@"releaseDate"];

  [coderCopy encodeBool:-[SUControllerDescriptor mandatoryUpdateEligible](self forKey:{"mandatoryUpdateEligible"), @"mandatoryUpdateEligible"}];
  mandatoryUpdateVersionMin = [(SUControllerDescriptor *)self mandatoryUpdateVersionMin];
  [coderCopy encodeObject:mandatoryUpdateVersionMin forKey:@"mandatoryUpdateVersionMin"];

  mandatoryUpdateVersionMax = [(SUControllerDescriptor *)self mandatoryUpdateVersionMax];
  [coderCopy encodeObject:mandatoryUpdateVersionMax forKey:@"mandatoryUpdateVersionMax"];

  [coderCopy encodeBool:-[SUControllerDescriptor mandatoryUpdateOptional](self forKey:{"mandatoryUpdateOptional"), @"mandatoryUpdateOptional"}];
  [coderCopy encodeBool:-[SUControllerDescriptor mandatoryUpdateRestrictedToOutOfTheBox](self forKey:{"mandatoryUpdateRestrictedToOutOfTheBox"), @"mandatoryUpdateRestrictedToOutOfTheBox"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      productVersion = [(SUControllerDescriptor *)v5 productVersion];
      productVersion2 = [(SUControllerDescriptor *)self productVersion];
      if ([productVersion isEqualToString:productVersion2])
      {
        productBuildVersion = [(SUControllerDescriptor *)v5 productBuildVersion];
        productBuildVersion2 = [(SUControllerDescriptor *)self productBuildVersion];
        if ([productBuildVersion isEqualToString:productBuildVersion2])
        {
          isSupervisedPolicy = [(SUControllerDescriptor *)v5 isSupervisedPolicy];
          v11 = isSupervisedPolicy ^ [(SUControllerDescriptor *)self isSupervisedPolicy]^ 1;
        }

        else
        {
          LOBYTE(v11) = 0;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCACA8];
  productVersion = [(SUControllerDescriptor *)self productVersion];
  productBuildVersion = [(SUControllerDescriptor *)self productBuildVersion];
  v6 = [v3 stringWithFormat:@"%@/%@", productVersion, productBuildVersion];
  v7 = [v6 hash];

  return v7;
}

- (id)description
{
  v31 = MEMORY[0x277CCACA8];
  humanReadableUpdateName = [(SUControllerDescriptor *)self humanReadableUpdateName];
  productVersion = [(SUControllerDescriptor *)self productVersion];
  productBuildVersion = [(SUControllerDescriptor *)self productBuildVersion];
  productSystemName = [(SUControllerDescriptor *)self productSystemName];
  publisher = [(SUControllerDescriptor *)self publisher];
  downloadSize = [(SUControllerDescriptor *)self downloadSize];
  preparationSize = [(SUControllerDescriptor *)self preparationSize];
  installationSize = [(SUControllerDescriptor *)self installationSize];
  totalRequiredFreeSpace = [(SUControllerDescriptor *)self totalRequiredFreeSpace];
  documentationID = [(SUControllerDescriptor *)self documentationID];
  marketingVersion = [(SUControllerDescriptor *)self marketingVersion];
  if ([(SUControllerDescriptor *)self fullReplacement])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v19 = v3;
  if ([(SUControllerDescriptor *)self rampEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v18 = v4;
  denialReasons = [(SUControllerDescriptor *)self denialReasons];
  releaseType = [(SUControllerDescriptor *)self releaseType];
  releaseDate = [(SUControllerDescriptor *)self releaseDate];
  if ([(SUControllerDescriptor *)self isSupervisedPolicy])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v15 = v6;
  requestedPMV = [(SUControllerDescriptor *)self requestedPMV];
  delayPeriod = [(SUControllerDescriptor *)self delayPeriod];
  if ([(SUControllerDescriptor *)self mandatoryUpdateEligible])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  mandatoryUpdateVersionMin = [(SUControllerDescriptor *)self mandatoryUpdateVersionMin];
  mandatoryUpdateVersionMax = [(SUControllerDescriptor *)self mandatoryUpdateVersionMax];
  if ([(SUControllerDescriptor *)self mandatoryUpdateOptional])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(SUControllerDescriptor *)self mandatoryUpdateRestrictedToOutOfTheBox])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v32 = [v31 stringWithFormat:@"\n            HumanReadableUpdateName: %@\n            ProductVersion: %@\n            ProductBuildVersion: %@\n            ProductSystemName: %@\n            Publisher: %@\n            DownloadSize: %lld\n            PreparationSize: %lld\n            InstallationSize: %lld\n            TotalRequiredFreeSpace: %lld\n            DocumentationID: %@\n            MarketingVersion: %@\n            FullReplacement: %@\n            RampEnabled: %@\n            CurrentDenialReasons: %@\n            ReleaseType: %@\n            ReleaseDate: %@\n            IsSupervisedPolicy: %@\n            RequestedPMV: %@\n            DelayPeriod: %d days\n            MandatoryUpdateEligible: %@\n            MandatoryUpdateVersionMin: %@\n            MandatoryUpdateVersionMax: %@\n            MandatoryUpdateOptional: %@\n            mandatoryUpdateRestrictedToOutOfTheBox: %@", humanReadableUpdateName, productVersion, productBuildVersion, productSystemName, publisher, downloadSize, preparationSize, installationSize, totalRequiredFreeSpace, documentationID, marketingVersion, v19, v18, denialReasons, releaseType, releaseDate, v15, requestedPMV, delayPeriod, v9, mandatoryUpdateVersionMin, mandatoryUpdateVersionMax, v12, v13];

  return v32;
}

- (id)summary
{
  v3 = MEMORY[0x277CCACA8];
  humanReadableUpdateName = [(SUControllerDescriptor *)self humanReadableUpdateName];
  productBuildVersion = [(SUControllerDescriptor *)self productBuildVersion];
  isSupervisedPolicy = [(SUControllerDescriptor *)self isSupervisedPolicy];
  v7 = @"Not Supervised";
  if (isSupervisedPolicy)
  {
    v7 = @"Supervised";
  }

  v8 = [v3 stringWithFormat:@"%@ %@ (%@)", humanReadableUpdateName, productBuildVersion, v7];

  return v8;
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
    productVersion = [(SUControllerDescriptor *)self productVersion];
    productVersion2 = [(SUControllerDescriptor *)v5 productVersion];
    v8 = [productVersion compare:productVersion2 options:64];

    if (v8 != -1 && v8 != 1)
    {
      productBuildVersion = [(SUControllerDescriptor *)self productBuildVersion];
      productBuildVersion2 = [(SUControllerDescriptor *)v5 productBuildVersion];
      v8 = [productBuildVersion compare:productBuildVersion2 options:64];
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
  documentation = [(SUControllerDescriptor *)self documentation];
  humanReadableUpdateName = [documentation humanReadableUpdateName];

  if (humanReadableUpdateName)
  {
    documentation2 = [(SUControllerDescriptor *)self documentation];
    humanReadableUpdateName2 = [documentation2 humanReadableUpdateName];
LABEL_3:

    goto LABEL_8;
  }

  productSystemName = [(SUControllerDescriptor *)self productSystemName];
  if (productSystemName)
  {
    v8 = productSystemName;
    productVersion = [(SUControllerDescriptor *)self productVersion];

    if (productVersion)
    {
      v10 = MEMORY[0x277CCACA8];
      documentation2 = [(SUControllerDescriptor *)self productSystemName];
      productVersion2 = [(SUControllerDescriptor *)self productVersion];
      humanReadableUpdateName2 = [v10 stringWithFormat:@"%@ %@", documentation2, productVersion2];

      goto LABEL_3;
    }
  }

  humanReadableUpdateName2 = @"Software Update";
LABEL_8:

  return humanReadableUpdateName2;
}

@end