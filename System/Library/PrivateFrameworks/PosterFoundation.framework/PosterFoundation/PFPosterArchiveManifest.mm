@interface PFPosterArchiveManifest
+ (BOOL)isManifestDictionaryValid:(id)valid;
- (NSString)role;
- (NSUUID)configurationUUID;
- (PFPosterArchiveManifest)initWithDataRepresentation:(id)representation;
- (PFPosterArchiveManifest)initWithDictionaryRepresentation:(id)representation;
- (PFPosterArchiveManifest)initWithExtensionIdentifier:(id)identifier configurationUUID:(id)d role:(id)role;
- (PFPosterArchiveManifest)initWithServerPath:(id)path;
- (int64_t)archiveVersion;
- (int64_t)dataStoreVersion;
- (unint64_t)latestConfigurationSupplement;
- (unint64_t)latestConfigurationVersion;
@end

@implementation PFPosterArchiveManifest

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

- (PFPosterArchiveManifest)initWithServerPath:(id)path
{
  pathCopy = path;
  serverIdentity = [pathCopy serverIdentity];
  provider = [serverIdentity provider];

  serverIdentity2 = [pathCopy serverIdentity];
  posterUUID = [serverIdentity2 posterUUID];

  role = [pathCopy role];

  v10 = [(PFPosterArchiveManifest *)self initWithExtensionIdentifier:provider configurationUUID:posterUUID role:role];
  return v10;
}

- (PFPosterArchiveManifest)initWithExtensionIdentifier:(id)identifier configurationUUID:(id)d role:(id)role
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18[0] = @"archiveVersion";
  v8 = MEMORY[0x1E696AD98];
  roleCopy = role;
  dCopy = d;
  identifierCopy = identifier;
  v12 = [v8 numberWithInteger:{objc_msgSend(objc_opt_class(), "manifestVersion")}];
  v19[0] = v12;
  v19[1] = identifierCopy;
  v18[1] = @"extensionIdentifier";
  v18[2] = @"configurationUUID";
  uUIDString = [dCopy UUIDString];

  v19[2] = uUIDString;
  v19[3] = &unk_1F42668D0;
  v18[3] = @"latestConfigurationVersion";
  v18[4] = @"latestConfigurationSupplement";
  v18[5] = @"role";
  v19[4] = &unk_1F42668D0;
  v19[5] = roleCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

  v15 = [(PFPosterArchiveManifest *)self initWithDictionaryRepresentation:v14];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (PFPosterArchiveManifest)initWithDataRepresentation:(id)representation
{
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:representation options:0 format:0 error:0];
  v5 = [(PFPosterArchiveManifest *)self initWithDictionaryRepresentation:v4];

  return v5;
}

- (PFPosterArchiveManifest)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if ([objc_opt_class() isManifestDictionaryValid:representationCopy])
  {
    v10.receiver = self;
    v10.super_class = PFPosterArchiveManifest;
    v5 = [(PFPosterArchiveManifest *)&v10 init];
    if (v5)
    {
      v6 = [representationCopy copy];
      dictionaryRepresentation = v5->_dictionaryRepresentation;
      v5->_dictionaryRepresentation = v6;
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
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"archiveVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)dataStoreVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"dataStoreVersion"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSUUID)configurationUUID
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"configurationUUID"];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (unint64_t)latestConfigurationVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"latestConfigurationVersion"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)latestConfigurationSupplement
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"latestConfigurationSupplement"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (NSString)role
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"role"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"PRPosterRoleLockScreen";
  }

  v5 = v4;

  return &v4->isa;
}

@end