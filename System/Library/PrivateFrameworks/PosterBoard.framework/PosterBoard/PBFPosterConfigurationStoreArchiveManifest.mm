@interface PBFPosterConfigurationStoreArchiveManifest
+ (BOOL)isManifestDictionaryValid:(id)a3;
- (NSString)role;
- (NSUUID)configurationUUID;
- (PBFPosterConfigurationStoreArchiveManifest)initWithConfigurationStoreCoordinator:(id)a3;
- (PBFPosterConfigurationStoreArchiveManifest)initWithDataRepresentation:(id)a3;
- (PBFPosterConfigurationStoreArchiveManifest)initWithDictionaryRepresentation:(id)a3;
- (int64_t)archiveVersion;
- (int64_t)dataStoreVersion;
- (unint64_t)latestConfigurationSupplement;
- (unint64_t)latestConfigurationVersion;
@end

@implementation PBFPosterConfigurationStoreArchiveManifest

+ (BOOL)isManifestDictionaryValid:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"archiveVersion"];
  if (v4)
  {
    v5 = [a1 unsupportedVersions];
    v6 = [v5 containsObject:v4] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (PBFPosterConfigurationStoreArchiveManifest)initWithConfigurationStoreCoordinator:(id)a3
{
  v23[8] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = MGCopyAnswer();
  v5 = [v4 identityOfLatestVersion];
  v19 = [v5 provider];

  v6 = [v4 identityOfLatestVersion];
  v22[0] = @"archiveVersion";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(objc_opt_class(), "manifestVersion")}];
  v23[0] = v7;
  v22[1] = @"dataStoreVersion";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PBFPosterExtensionDataStore dataStoreVersion](PBFPosterExtensionDataStore, "dataStoreVersion")}];
  v23[1] = v8;
  v23[2] = v21;
  v22[2] = @"buildVersion";
  v22[3] = @"extensionIdentifier";
  v23[3] = v19;
  v22[4] = @"configurationUUID";
  v9 = [v4 posterUUID];

  v10 = [v9 UUIDString];
  v23[4] = v10;
  v22[5] = @"latestConfigurationVersion";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "version")}];
  v23[5] = v11;
  v22[6] = @"latestConfigurationSupplement";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "supplement")}];
  v23[6] = v12;
  v22[7] = @"role";
  v13 = [v6 role];
  v14 = v13;
  v15 = *MEMORY[0x277D3EA38];
  if (v13)
  {
    v15 = v13;
  }

  v23[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:{8, v19}];

  v17 = [(PBFPosterConfigurationStoreArchiveManifest *)self initWithDictionaryRepresentation:v16];
  return v17;
}

- (PBFPosterConfigurationStoreArchiveManifest)initWithDataRepresentation:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(PBFPosterConfigurationStoreArchiveManifest *)self initWithDictionaryRepresentation:v4];

  return v5;
}

- (PBFPosterConfigurationStoreArchiveManifest)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isManifestDictionaryValid:v4])
  {
    v10.receiver = self;
    v10.super_class = PBFPosterConfigurationStoreArchiveManifest;
    v5 = [(PBFPosterConfigurationStoreArchiveManifest *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      dictionaryRepsentation = v5->_dictionaryRepsentation;
      v5->_dictionaryRepsentation = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)archiveVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"archiveVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)dataStoreVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"dataStoreVersion"];
  v3 = [v2 integerValue];

  return v3;
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
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)latestConfigurationSupplement
{
  v2 = [(NSDictionary *)self->_dictionaryRepsentation objectForKeyedSubscript:@"latestConfigurationSupplement"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
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