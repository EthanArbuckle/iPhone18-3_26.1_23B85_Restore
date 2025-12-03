@interface PLLibraryOpenerCreationOptions
+ (BOOL)validateContinerIdentifier:(id)identifier connectionAuthorization:(id)authorization;
+ (int64_t)resolvePhotoLibraryDomainWithOptionsDictionary:(id)dictionary;
- (PLLibraryOpenerCreationOptions)initWithOptionsDictionary:(id)dictionary connectionAuthorization:(id)authorization;
- (PLLibraryOpenerCreationOptions)initWithWellKnownLibraryIdentifier:(int64_t)identifier;
- (id)debugDescription;
@end

@implementation PLLibraryOpenerCreationOptions

- (id)debugDescription
{
  internalTestOptions = [(PLLibraryOpenerCreationOptions *)self internalTestOptions];
  if (internalTestOptions)
  {
    v4 = MEMORY[0x1E696AEC0];
    internalTestOptions2 = [(PLLibraryOpenerCreationOptions *)self internalTestOptions];
    v6 = [internalTestOptions2 description];
    v7 = [v4 stringWithFormat:@"\n(testOptions):%@", v6];
  }

  else
  {
    v7 = &stru_1F0F06D80;
  }

  createDatabaseOptionsDictionary = [(PLLibraryOpenerCreationOptions *)self createDatabaseOptionsDictionary];
  if (createDatabaseOptionsDictionary)
  {
    v9 = MEMORY[0x1E696AEC0];
    createDatabaseOptionsDictionary2 = [(PLLibraryOpenerCreationOptions *)self createDatabaseOptionsDictionary];
    v11 = [createDatabaseOptionsDictionary2 description];
    v12 = [v9 stringWithFormat:@"\n(createDBOptions):%@", v11];
  }

  else
  {
    v12 = &stru_1F0F06D80;
  }

  v22.receiver = self;
  v22.super_class = PLLibraryOpenerCreationOptions;
  v13 = [(PLLibraryOpenerCreationOptions *)&v22 description];
  uuid = [(PLLibraryOpenerCreationOptions *)self uuid];
  containerIdentifier = [(PLLibraryOpenerCreationOptions *)self containerIdentifier];
  domain = [(PLLibraryOpenerCreationOptions *)self domain];
  libraryName = [(PLLibraryOpenerCreationOptions *)self libraryName];
  userDescription = [(PLLibraryOpenerCreationOptions *)self userDescription];
  libraryBundleURL = [(PLLibraryOpenerCreationOptions *)self libraryBundleURL];
  v20 = [v13 stringByAppendingFormat:@": UUID:[%@], cId:[%@], d:[%d], name:[%@], uDesc:[%@], libraryURL:[%@]%@%@", uuid, containerIdentifier, domain, libraryName, userDescription, libraryBundleURL, v7, v12];

  return v20;
}

- (PLLibraryOpenerCreationOptions)initWithWellKnownLibraryIdentifier:(int64_t)identifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PLLibraryOpenerCreationOptions;
  v4 = [(PLLibraryOpenerCreationOptions *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69BF2A0] libraryCreateOptionsForWellKnownLibraryIdentifier:identifier];
    if (v5)
    {
      v11 = @"PLPhotoLibraryCreateOptions";
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      v12[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      createDatabaseOptionsDictionary = v4->_createDatabaseOptionsDictionary;
      v4->_createDatabaseOptionsDictionary = v7;
    }

    objc_storeStrong(&v4->_containerIdentifier, @"com.apple.photos");
  }

  return v4;
}

- (PLLibraryOpenerCreationOptions)initWithOptionsDictionary:(id)dictionary connectionAuthorization:(id)authorization
{
  v38[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  authorizationCopy = authorization;
  v34.receiver = self;
  v34.super_class = PLLibraryOpenerCreationOptions;
  v8 = [(PLLibraryOpenerCreationOptions *)&v34 init];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsBundleURLKey"];
  libraryBundleURL = v8->_libraryBundleURL;
  v8->_libraryBundleURL = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsNameKey"];
  libraryName = v8->_libraryName;
  v8->_libraryName = v11;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsDescriptionKey"];
  userDescription = v8->_userDescription;
  v8->_userDescription = v13;

  v15 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsTestOptionsKey"];
  internalTestOptions = v8->_internalTestOptions;
  v8->_internalTestOptions = v15;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryCreateOptions"];
  v18 = v17;
  if (v17)
  {
    v37 = @"PLPhotoLibraryCreateOptions";
    v38[0] = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    createDatabaseOptionsDictionary = v8->_createDatabaseOptionsDictionary;
    v8->_createDatabaseOptionsDictionary = v19;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsIdentifierUUIDKey"];
  v22 = v21;
  if (v21)
  {
    v8->_hasCustomUUID = 1;
    v23 = v21;
    uuid = v8->_uuid;
    v8->_uuid = v23;
  }

  else
  {
    uuid = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uuid UUIDString];
    v26 = v8->_uuid;
    v8->_uuid = uUIDString;
  }

  domain = [objc_opt_class() resolvePhotoLibraryDomainWithOptionsDictionary:dictionaryCopy];
  v8->_domain = domain;
  if (domain == 3)
  {
    v29 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsContainerIdentifierKey"];
    if (v29)
    {
      if (![objc_opt_class() validateContinerIdentifier:v29 connectionAuthorization:authorizationCopy])
      {
        goto LABEL_15;
      }

      trustedCallerBundleID = v29;
    }

    else
    {
      trustedCallerBundleID = [authorizationCopy trustedCallerBundleID];
    }

    containerIdentifier = v8->_containerIdentifier;
    v8->_containerIdentifier = trustedCallerBundleID;

    goto LABEL_15;
  }

  if (domain != 2)
  {
    goto LABEL_16;
  }

  v28 = @"com.apple.photos";
  v29 = v8->_containerIdentifier;
  v8->_containerIdentifier = @"com.apple.photos";
LABEL_15:

  domain = v8->_domain;
LABEL_16:
  if (!domain || !v8->_containerIdentifier)
  {
    v32 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = dictionaryCopy;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Unsupported library domain/container in options %@", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_22:
  return v8;
}

+ (BOOL)validateContinerIdentifier:(id)identifier connectionAuthorization:(id)authorization
{
  identifierCopy = identifier;
  authorizationCopy = authorization;
  v7 = identifierCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [identifierCopy length] != 0;

  return v7;
}

+ (int64_t)resolvePhotoLibraryDomainWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsDomainKey"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsContainerIdentifierKey"];

  if (v4 && [v4 integerValue] != 2)
  {
    if ([v4 integerValue] == 3 && (!v5 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.photos") & 1) == 0))
    {
      v6 = 3;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v5 && ![v5 isEqualToString:@"com.apple.photos"])
  {
LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = 2;
LABEL_11:

  return v6;
}

@end