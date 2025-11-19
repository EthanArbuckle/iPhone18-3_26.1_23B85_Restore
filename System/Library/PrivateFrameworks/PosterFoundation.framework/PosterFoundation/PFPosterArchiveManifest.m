@interface PFPosterArchiveManifest
+ (BOOL)isManifestDictionaryValid:(id)a3;
- (NSString)role;
- (NSUUID)configurationUUID;
- (PFPosterArchiveManifest)initWithDataRepresentation:(id)a3;
- (PFPosterArchiveManifest)initWithDictionaryRepresentation:(id)a3;
- (PFPosterArchiveManifest)initWithExtensionIdentifier:(id)a3 configurationUUID:(id)a4 role:(id)a5;
- (PFPosterArchiveManifest)initWithServerPath:(id)a3;
- (int64_t)archiveVersion;
- (int64_t)dataStoreVersion;
- (unint64_t)latestConfigurationSupplement;
- (unint64_t)latestConfigurationVersion;
@end

@implementation PFPosterArchiveManifest

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

- (PFPosterArchiveManifest)initWithServerPath:(id)a3
{
  v4 = a3;
  v5 = [v4 serverIdentity];
  v6 = [v5 provider];

  v7 = [v4 serverIdentity];
  v8 = [v7 posterUUID];

  v9 = [v4 role];

  v10 = [(PFPosterArchiveManifest *)self initWithExtensionIdentifier:v6 configurationUUID:v8 role:v9];
  return v10;
}

- (PFPosterArchiveManifest)initWithExtensionIdentifier:(id)a3 configurationUUID:(id)a4 role:(id)a5
{
  v19[6] = *MEMORY[0x1E69E9840];
  v18[0] = @"archiveVersion";
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 numberWithInteger:{objc_msgSend(objc_opt_class(), "manifestVersion")}];
  v19[0] = v12;
  v19[1] = v11;
  v18[1] = @"extensionIdentifier";
  v18[2] = @"configurationUUID";
  v13 = [v10 UUIDString];

  v19[2] = v13;
  v19[3] = &unk_1F42668D0;
  v18[3] = @"latestConfigurationVersion";
  v18[4] = @"latestConfigurationSupplement";
  v18[5] = @"role";
  v19[4] = &unk_1F42668D0;
  v19[5] = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

  v15 = [(PFPosterArchiveManifest *)self initWithDictionaryRepresentation:v14];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (PFPosterArchiveManifest)initWithDataRepresentation:(id)a3
{
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(PFPosterArchiveManifest *)self initWithDictionaryRepresentation:v4];

  return v5;
}

- (PFPosterArchiveManifest)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isManifestDictionaryValid:v4])
  {
    v10.receiver = self;
    v10.super_class = PFPosterArchiveManifest;
    v5 = [(PFPosterArchiveManifest *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      dictionaryRepresentation = v5->_dictionaryRepresentation;
      v5->_dictionaryRepresentation = v6;
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
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"archiveVersion"];
  v3 = [v2 integerValue];

  return v3;
}

- (int64_t)dataStoreVersion
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"dataStoreVersion"];
  v3 = [v2 integerValue];

  return v3;
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
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)latestConfigurationSupplement
{
  v2 = [(NSDictionary *)self->_dictionaryRepresentation objectForKeyedSubscript:@"latestConfigurationSupplement"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
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