@interface PBFPosterConfigurationStoreArchiveManifest
+ (BOOL)isManifestDictionaryValid:(id)valid;
- (NSString)role;
- (NSUUID)configurationUUID;
- (PBFPosterConfigurationStoreArchiveManifest)initWithConfigurationStoreCoordinator:(id)coordinator;
- (PBFPosterConfigurationStoreArchiveManifest)initWithDataRepresentation:(id)representation;
- (PBFPosterConfigurationStoreArchiveManifest)initWithDictionaryRepresentation:(id)representation;
- (int64_t)archiveVersion;
- (int64_t)dataStoreVersion;
- (unint64_t)latestConfigurationSupplement;
- (unint64_t)latestConfigurationVersion;
@end

@implementation PBFPosterConfigurationStoreArchiveManifest

+ (BOOL)isManifestDictionaryValid:(id)valid
{
  v4 = [valid objectForKeyedSubscript:@"archiveVersion"];
  if (v4)
  {
    unsupportedVersions = [self unsupportedVersions];
    v6 = [unsupportedVersions containsObject:v4] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (PBFPosterConfigurationStoreArchiveManifest)initWithConfigurationStoreCoordinator:(id)coordinator
{
  v23[8] = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  v21 = MGCopyAnswer();
  identityOfLatestVersion = [coordinatorCopy identityOfLatestVersion];
  provider = [identityOfLatestVersion provider];

  identityOfLatestVersion2 = [coordinatorCopy identityOfLatestVersion];
  v22[0] = @"archiveVersion";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "manifestVersion")}];
  v23[0] = v7;
  v22[1] = @"dataStoreVersion";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PBFPosterExtensionDataStore dataStoreVersion](PBFPosterExtensionDataStore, "dataStoreVersion")}];
  v23[1] = v8;
  v23[2] = v21;
  v22[2] = @"buildVersion";
  v22[3] = @"extensionIdentifier";
  v23[3] = provider;
  v22[4] = @"configurationUUID";
  posterUUID = [coordinatorCopy posterUUID];

  uUIDString = [posterUUID UUIDString];
  v23[4] = uUIDString;
  v22[5] = @"latestConfigurationVersion";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(identityOfLatestVersion2, "version")}];
  v23[5] = v11;
  v22[6] = @"latestConfigurationSupplement";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(identityOfLatestVersion2, "supplement")}];
  v23[6] = v12;
  v22[7] = @"role";
  role = [identityOfLatestVersion2 role];
  v14 = role;
  v15 = *MEMORY[0x277D3EA38];
  if (role)
  {
    v15 = role;
  }

  v23[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:{8, provider}];

  v17 = [(PBFPosterConfigurationStoreArchiveManifest *)self initWithDictionaryRepresentation:v16];
  return v17;
}

- (PBFPosterConfigurationStoreArchiveManifest)initWithDataRepresentation:(id)representation
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:representation options:0 format:0 error:0];
  v5 = [(PBFPosterConfigurationStoreArchiveManifest *)self initWithDictionaryRepresentation:v4];

  return v5;
}

- (PBFPosterConfigurationStoreArchiveManifest)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if ([objc_opt_class() isManifestDictionaryValid:representationCopy])
  {
    v10.receiver = self;
    v10.super_class = PBFPosterConfigurationStoreArchiveManifest;
    v5 = [(PBFPosterConfigurationStoreArchiveManifest *)&v10 init];
    if (v5)
    {
      v6 = [representationCopy copy];
      dictionaryRepsentation = v5->_dictionaryRepsentation;
      v5->_dictionaryRepsentation = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (int64_t)archiveVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"archiveVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)dataStoreVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"dataStoreVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSUUID)configurationUUID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"configurationUUID"];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (unint64_t)latestConfigurationVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"latestConfigurationVersion"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)latestConfigurationSupplement
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"latestConfigurationSupplement"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (NSString)role
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"role"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = *MEMORY[0x277D3EA38];
  }

  v5 = v4;

  return v4;
}

@end