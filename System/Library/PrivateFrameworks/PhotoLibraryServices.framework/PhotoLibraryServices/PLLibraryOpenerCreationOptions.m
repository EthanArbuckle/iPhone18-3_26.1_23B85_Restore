@interface PLLibraryOpenerCreationOptions
+ (BOOL)validateContinerIdentifier:(id)a3 connectionAuthorization:(id)a4;
+ (int64_t)resolvePhotoLibraryDomainWithOptionsDictionary:(id)a3;
- (PLLibraryOpenerCreationOptions)initWithOptionsDictionary:(id)a3 connectionAuthorization:(id)a4;
- (PLLibraryOpenerCreationOptions)initWithWellKnownLibraryIdentifier:(int64_t)a3;
- (id)debugDescription;
@end

@implementation PLLibraryOpenerCreationOptions

- (id)debugDescription
{
  v3 = [(PLLibraryOpenerCreationOptions *)self internalTestOptions];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(PLLibraryOpenerCreationOptions *)self internalTestOptions];
    v6 = [v5 description];
    v7 = [v4 stringWithFormat:@"\n(testOptions):%@", v6];
  }

  else
  {
    v7 = &stru_1F0F06D80;
  }

  v8 = [(PLLibraryOpenerCreationOptions *)self createDatabaseOptionsDictionary];
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(PLLibraryOpenerCreationOptions *)self createDatabaseOptionsDictionary];
    v11 = [v10 description];
    v12 = [v9 stringWithFormat:@"\n(createDBOptions):%@", v11];
  }

  else
  {
    v12 = &stru_1F0F06D80;
  }

  v22.receiver = self;
  v22.super_class = PLLibraryOpenerCreationOptions;
  v13 = [(PLLibraryOpenerCreationOptions *)&v22 description];
  v14 = [(PLLibraryOpenerCreationOptions *)self uuid];
  v15 = [(PLLibraryOpenerCreationOptions *)self containerIdentifier];
  v16 = [(PLLibraryOpenerCreationOptions *)self domain];
  v17 = [(PLLibraryOpenerCreationOptions *)self libraryName];
  v18 = [(PLLibraryOpenerCreationOptions *)self userDescription];
  v19 = [(PLLibraryOpenerCreationOptions *)self libraryBundleURL];
  v20 = [v13 stringByAppendingFormat:@": UUID:[%@], cId:[%@], d:[%d], name:[%@], uDesc:[%@], libraryURL:[%@]%@%@", v14, v15, v16, v17, v18, v19, v7, v12];

  return v20;
}

- (PLLibraryOpenerCreationOptions)initWithWellKnownLibraryIdentifier:(int64_t)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PLLibraryOpenerCreationOptions;
  v4 = [(PLLibraryOpenerCreationOptions *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69BF2A0] libraryCreateOptionsForWellKnownLibraryIdentifier:a3];
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

- (PLLibraryOpenerCreationOptions)initWithOptionsDictionary:(id)a3 connectionAuthorization:(id)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = PLLibraryOpenerCreationOptions;
  v8 = [(PLLibraryOpenerCreationOptions *)&v34 init];
  if (!v8)
  {
    goto LABEL_22;
  }

  v9 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsBundleURLKey"];
  libraryBundleURL = v8->_libraryBundleURL;
  v8->_libraryBundleURL = v9;

  v11 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsNameKey"];
  libraryName = v8->_libraryName;
  v8->_libraryName = v11;

  v13 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsDescriptionKey"];
  userDescription = v8->_userDescription;
  v8->_userDescription = v13;

  v15 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsTestOptionsKey"];
  internalTestOptions = v8->_internalTestOptions;
  v8->_internalTestOptions = v15;

  v17 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryCreateOptions"];
  v18 = v17;
  if (v17)
  {
    v37 = @"PLPhotoLibraryCreateOptions";
    v38[0] = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    createDatabaseOptionsDictionary = v8->_createDatabaseOptionsDictionary;
    v8->_createDatabaseOptionsDictionary = v19;
  }

  v21 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsIdentifierUUIDKey"];
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
    v25 = [uuid UUIDString];
    v26 = v8->_uuid;
    v8->_uuid = v25;
  }

  domain = [objc_opt_class() resolvePhotoLibraryDomainWithOptionsDictionary:v6];
  v8->_domain = domain;
  if (domain == 3)
  {
    v29 = [v6 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsContainerIdentifierKey"];
    if (v29)
    {
      if (![objc_opt_class() validateContinerIdentifier:v29 connectionAuthorization:v7])
      {
        goto LABEL_15;
      }

      v30 = v29;
    }

    else
    {
      v30 = [v7 trustedCallerBundleID];
    }

    containerIdentifier = v8->_containerIdentifier;
    v8->_containerIdentifier = v30;

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
      v36 = v6;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Unsupported library domain/container in options %@", buf, 0xCu);
    }

    v8 = 0;
  }

LABEL_22:
  return v8;
}

+ (BOOL)validateContinerIdentifier:(id)a3 connectionAuthorization:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 length] != 0;

  return v7;
}

+ (int64_t)resolvePhotoLibraryDomainWithOptionsDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsDomainKey"];
  v5 = [v3 objectForKeyedSubscript:@"PLPhotoLibraryOpenerOptionsContainerIdentifierKey"];

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