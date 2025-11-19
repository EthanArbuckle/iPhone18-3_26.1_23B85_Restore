@interface SUControllerDescriptor
- (BOOL)isEqual:(id)a3;
- (NSString)humanReadableUpdateName;
- (SUControllerDescriptor)init;
- (SUControllerDescriptor)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)summary;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (SUControllerDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SUControllerDescriptor;
  v5 = [(SUControllerDescriptor *)&v38 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
    documentation = v5->_documentation;
    v5->_documentation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentationID"];
    documentationID = v5->_documentationID;
    v5->_documentationID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MarketingVersion"];
    marketingVersion = v5->_marketingVersion;
    v5->_marketingVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publisher"];
    publisher = v5->_publisher;
    v5->_publisher = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productSystemName"];
    productSystemName = v5->_productSystemName;
    v5->_productSystemName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"denialReasons"];
    denialReasons = v5->_denialReasons;
    v5->_denialReasons = v20;

    v5->_downloadSize = [v4 decodeInt64ForKey:@"downloadSize"];
    v5->_unarchivedSize = [v4 decodeInt64ForKey:@"unarchivedSize"];
    v5->_msuPrepareSize = [v4 decodeInt64ForKey:@"msuPrepareSize"];
    v5->_installationSize = [v4 decodeInt64ForKey:@"installationSize"];
    v5->_totalRequiredFreeSpace = [v4 decodeInt64ForKey:@"TotalRequiredFreeSpace"];
    v5->_userDidAcceptTermsAndConditions = [v4 decodeBoolForKey:@"userDidAcceptTermsAndConditions"];
    v5->_fullReplacement = [v4 decodeBoolForKey:@"fullReplacement"];
    v5->_rampEnabled = [v4 decodeBoolForKey:@"rampEnabled"];
    v5->_willProceedWithInstallation = [v4 decodeBoolForKey:@"willProceedWithInstallation"];
    v5->_isAwaitingAdmissionControlForInstallation = [v4 decodeBoolForKey:@"isAwaitingAdmissionControlForInstallation"];
    fullProductVersion = v5->_fullProductVersion;
    v5->_fullProductVersion = 0;

    softwareUpdateAsset = v5->_softwareUpdateAsset;
    v5->_softwareUpdateAsset = 0;

    documentationAsset = v5->_documentationAsset;
    v5->_documentationAsset = 0;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coreDescriptor"];
    coreDescriptor = v5->_coreDescriptor;
    v5->_coreDescriptor = v25;

    v5->_hasBeenAbandoned = 0;
    v5->_isSupervisedPolicy = [v4 decodeBoolForKey:@"isSupervisedPolicy"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedPMV"];
    requestedPMV = v5->_requestedPMV;
    v5->_requestedPMV = v27;

    v5->_delayPeriod = [v4 decodeIntegerForKey:@"delayPeriod"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v31;

    v5->_mandatoryUpdateEligible = [v4 decodeBoolForKey:@"mandatoryUpdateEligible"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mandatoryUpdateVersionMin"];
    mandatoryUpdateVersionMin = v5->_mandatoryUpdateVersionMin;
    v5->_mandatoryUpdateVersionMin = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mandatoryUpdateVersionMax"];
    mandatoryUpdateVersionMax = v5->_mandatoryUpdateVersionMax;
    v5->_mandatoryUpdateVersionMax = v35;

    v5->_mandatoryUpdateOptional = [v4 decodeBoolForKey:@"mandatoryUpdateOptional"];
    v5->_mandatoryUpdateRestrictedToOutOfTheBox = [v4 decodeBoolForKey:@"mandatoryUpdateRestrictedToOutOfTheBox"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = [(SUControllerDescriptor *)self documentation];
  [v18 encodeObject:v4 forKey:@"documentation"];

  v5 = [(SUControllerDescriptor *)self productVersion];
  [v18 encodeObject:v5 forKey:@"productVersion"];

  v6 = [(SUControllerDescriptor *)self productBuildVersion];
  [v18 encodeObject:v6 forKey:@"productBuildVersion"];

  v7 = [(SUControllerDescriptor *)self documentationID];
  [v18 encodeObject:v7 forKey:@"documentationID"];

  v8 = [(SUControllerDescriptor *)self marketingVersion];
  [v18 encodeObject:v8 forKey:@"MarketingVersion"];

  v9 = [(SUControllerDescriptor *)self publisher];
  [v18 encodeObject:v9 forKey:@"publisher"];

  v10 = [(SUControllerDescriptor *)self productSystemName];
  [v18 encodeObject:v10 forKey:@"productSystemName"];

  v11 = [(SUControllerDescriptor *)self denialReasons];
  [v18 encodeObject:v11 forKey:@"denialReasons"];

  [v18 encodeInt64:-[SUControllerDescriptor downloadSize](self forKey:{"downloadSize"), @"downloadSize"}];
  [v18 encodeInt64:-[SUControllerDescriptor unarchivedSize](self forKey:{"unarchivedSize"), @"unarchivedSize"}];
  [v18 encodeInt64:-[SUControllerDescriptor msuPrepareSize](self forKey:{"msuPrepareSize"), @"msuPrepareSize"}];
  [v18 encodeInt64:-[SUControllerDescriptor installationSize](self forKey:{"installationSize"), @"installationSize"}];
  [v18 encodeInt64:-[SUControllerDescriptor totalRequiredFreeSpace](self forKey:{"totalRequiredFreeSpace"), @"TotalRequiredFreeSpace"}];
  [v18 encodeBool:-[SUControllerDescriptor userDidAcceptTermsAndConditions](self forKey:{"userDidAcceptTermsAndConditions"), @"userDidAcceptTermsAndConditions"}];
  [v18 encodeBool:-[SUControllerDescriptor fullReplacement](self forKey:{"fullReplacement"), @"fullReplacement"}];
  [v18 encodeBool:-[SUControllerDescriptor rampEnabled](self forKey:{"rampEnabled"), @"rampEnabled"}];
  [v18 encodeBool:-[SUControllerDescriptor willProceedWithInstallation](self forKey:{"willProceedWithInstallation"), @"willProceedWithInstallation"}];
  [v18 encodeBool:-[SUControllerDescriptor isAwaitingAdmissionControlForInstallation](self forKey:{"isAwaitingAdmissionControlForInstallation"), @"isAwaitingAdmissionControlForInstallation"}];
  v12 = [(SUControllerDescriptor *)self coreDescriptor];
  [v18 encodeObject:v12 forKey:@"coreDescriptor"];

  [v18 encodeBool:-[SUControllerDescriptor isSupervisedPolicy](self forKey:{"isSupervisedPolicy"), @"isSupervisedPolicy"}];
  v13 = [(SUControllerDescriptor *)self requestedPMV];
  [v18 encodeObject:v13 forKey:@"requestedPMV"];

  [v18 encodeInteger:-[SUControllerDescriptor delayPeriod](self forKey:{"delayPeriod"), @"delayPeriod"}];
  v14 = [(SUControllerDescriptor *)self releaseType];
  [v18 encodeObject:v14 forKey:@"releaseType"];

  v15 = [(SUControllerDescriptor *)self releaseDate];
  [v18 encodeObject:v15 forKey:@"releaseDate"];

  [v18 encodeBool:-[SUControllerDescriptor mandatoryUpdateEligible](self forKey:{"mandatoryUpdateEligible"), @"mandatoryUpdateEligible"}];
  v16 = [(SUControllerDescriptor *)self mandatoryUpdateVersionMin];
  [v18 encodeObject:v16 forKey:@"mandatoryUpdateVersionMin"];

  v17 = [(SUControllerDescriptor *)self mandatoryUpdateVersionMax];
  [v18 encodeObject:v17 forKey:@"mandatoryUpdateVersionMax"];

  [v18 encodeBool:-[SUControllerDescriptor mandatoryUpdateOptional](self forKey:{"mandatoryUpdateOptional"), @"mandatoryUpdateOptional"}];
  [v18 encodeBool:-[SUControllerDescriptor mandatoryUpdateRestrictedToOutOfTheBox](self forKey:{"mandatoryUpdateRestrictedToOutOfTheBox"), @"mandatoryUpdateRestrictedToOutOfTheBox"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUControllerDescriptor *)v5 productVersion];
      v7 = [(SUControllerDescriptor *)self productVersion];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(SUControllerDescriptor *)v5 productBuildVersion];
        v9 = [(SUControllerDescriptor *)self productBuildVersion];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(SUControllerDescriptor *)v5 isSupervisedPolicy];
          v11 = v10 ^ [(SUControllerDescriptor *)self isSupervisedPolicy]^ 1;
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
  v4 = [(SUControllerDescriptor *)self productVersion];
  v5 = [(SUControllerDescriptor *)self productBuildVersion];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];
  v7 = [v6 hash];

  return v7;
}

- (id)description
{
  v31 = MEMORY[0x277CCACA8];
  v30 = [(SUControllerDescriptor *)self humanReadableUpdateName];
  v29 = [(SUControllerDescriptor *)self productVersion];
  v28 = [(SUControllerDescriptor *)self productBuildVersion];
  v27 = [(SUControllerDescriptor *)self productSystemName];
  v26 = [(SUControllerDescriptor *)self publisher];
  v25 = [(SUControllerDescriptor *)self downloadSize];
  v24 = [(SUControllerDescriptor *)self preparationSize];
  v23 = [(SUControllerDescriptor *)self installationSize];
  v22 = [(SUControllerDescriptor *)self totalRequiredFreeSpace];
  v21 = [(SUControllerDescriptor *)self documentationID];
  v20 = [(SUControllerDescriptor *)self marketingVersion];
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
  v17 = [(SUControllerDescriptor *)self denialReasons];
  v5 = [(SUControllerDescriptor *)self releaseType];
  v16 = [(SUControllerDescriptor *)self releaseDate];
  if ([(SUControllerDescriptor *)self isSupervisedPolicy])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v15 = v6;
  v7 = [(SUControllerDescriptor *)self requestedPMV];
  v8 = [(SUControllerDescriptor *)self delayPeriod];
  if ([(SUControllerDescriptor *)self mandatoryUpdateEligible])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(SUControllerDescriptor *)self mandatoryUpdateVersionMin];
  v11 = [(SUControllerDescriptor *)self mandatoryUpdateVersionMax];
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

  v32 = [v31 stringWithFormat:@"\n            HumanReadableUpdateName: %@\n            ProductVersion: %@\n            ProductBuildVersion: %@\n            ProductSystemName: %@\n            Publisher: %@\n            DownloadSize: %lld\n            PreparationSize: %lld\n            InstallationSize: %lld\n            TotalRequiredFreeSpace: %lld\n            DocumentationID: %@\n            MarketingVersion: %@\n            FullReplacement: %@\n            RampEnabled: %@\n            CurrentDenialReasons: %@\n            ReleaseType: %@\n            ReleaseDate: %@\n            IsSupervisedPolicy: %@\n            RequestedPMV: %@\n            DelayPeriod: %d days\n            MandatoryUpdateEligible: %@\n            MandatoryUpdateVersionMin: %@\n            MandatoryUpdateVersionMax: %@\n            MandatoryUpdateOptional: %@\n            mandatoryUpdateRestrictedToOutOfTheBox: %@", v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v5, v16, v15, v7, v8, v9, v10, v11, v12, v13];

  return v32;
}

- (id)summary
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUControllerDescriptor *)self humanReadableUpdateName];
  v5 = [(SUControllerDescriptor *)self productBuildVersion];
  v6 = [(SUControllerDescriptor *)self isSupervisedPolicy];
  v7 = @"Not Supervised";
  if (v6)
  {
    v7 = @"Supervised";
  }

  v8 = [v3 stringWithFormat:@"%@ %@ (%@)", v4, v5, v7];

  return v8;
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
    v6 = [(SUControllerDescriptor *)self productVersion];
    v7 = [(SUControllerDescriptor *)v5 productVersion];
    v8 = [v6 compare:v7 options:64];

    if (v8 != -1 && v8 != 1)
    {
      v9 = [(SUControllerDescriptor *)self productBuildVersion];
      v10 = [(SUControllerDescriptor *)v5 productBuildVersion];
      v8 = [v9 compare:v10 options:64];
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
  v3 = [(SUControllerDescriptor *)self documentation];
  v4 = [v3 humanReadableUpdateName];

  if (v4)
  {
    v5 = [(SUControllerDescriptor *)self documentation];
    v6 = [v5 humanReadableUpdateName];
LABEL_3:

    goto LABEL_8;
  }

  v7 = [(SUControllerDescriptor *)self productSystemName];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUControllerDescriptor *)self productVersion];

    if (v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v5 = [(SUControllerDescriptor *)self productSystemName];
      v11 = [(SUControllerDescriptor *)self productVersion];
      v6 = [v10 stringWithFormat:@"%@ %@", v5, v11];

      goto LABEL_3;
    }
  }

  v6 = @"Software Update";
LABEL_8:

  return v6;
}

@end