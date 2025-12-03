@interface PLPhotoLibraryIdentifier
+ (BOOL)_isValidLibraryURL:(id)l identifierMap:(id)map;
+ (id)_addWellKnownIdentifierFromIdentifierMap:(id)map updateLibraryURL:(id)l;
+ (id)_buildIdentifierMapForLibraryURL:(id)l containerIdentifier:(id)identifier uuid:(id)uuid name:(id)name userDescription:(id)description error:(id *)error;
+ (id)_createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)l containerIdentifier:(id)identifier uuid:(id)uuid name:(id)name userDescription:(id)description error:(id *)error;
+ (id)_existingPhotoLibraryIdentifierRecordForLibraryURL:(id)l error:(id *)error;
+ (id)_stripWellKnownIdentifierFromIdentifierMap:(id)map;
+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)l containerIdentifier:(id)identifier name:(id)name userDescription:(id)description error:(id *)error;
+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)l containerIdentifier:(id)identifier uuid:(id)uuid name:(id)name userDescription:(id)description error:(id *)error;
+ (id)photoLibraryIdentifierWithPhotoLibraryURL:(id)l createIfMissing:(BOOL)missing error:(id *)error;
- (BOOL)isImagePlaygroundDefaultLibraryIdentifier;
- (BOOL)setValuesForName:(id)name userDescription:(id)description error:(id *)error;
- (NSString)containerIdentifier;
- (NSURL)libraryURL;
- (PLPhotoLibraryIdentifier)initWithCoder:(id)coder;
- (PLPhotoLibraryIdentifier)initWithIdentifierPayload:(id)payload;
- (id)debugDescription;
- (int64_t)domain;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLPhotoLibraryIdentifier

- (BOOL)isImagePlaygroundDefaultLibraryIdentifier
{
  containerIdentifier = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  if ([containerIdentifier isEqualToString:@"com.apple.GenerativePlayground"])
  {
    uuid = [(PLPhotoLibraryIdentifier *)self uuid];
    v5 = [uuid isEqualToString:@"00000000-0000-0000-0000-000000000001"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setValuesForName:(id)name userDescription:(id)description error:(id *)error
{
  nameCopy = name;
  descriptionCopy = description;
  if (nameCopy | descriptionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [objc_opt_class() _stripWellKnownIdentifierFromIdentifierMap:selfCopy->_payload];
    v12 = v11;
    if (nameCopy)
    {
      [v11 setObject:nameCopy forKeyedSubscript:@"Name"];
    }

    if (descriptionCopy)
    {
      [v12 setObject:descriptionCopy forKeyedSubscript:@"UserDescription"];
    }

    v13 = MEMORY[0x1E69BF188];
    libraryURL = [(PLPhotoLibraryIdentifier *)selfCopy libraryURL];
    v15 = [v13 appPrivateDataForLibraryURL:libraryURL];

    v16 = [v15 setValue:v12 forKeyPath:@"Library.Identifier" error:error];
    if (v16)
    {
      objc_storeStrong(&selfCopy->_payload, v12);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (int64_t)domain
{
  containerIdentifier = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  v3 = [containerIdentifier isEqualToString:@"com.apple.photos"];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (NSString)containerIdentifier
{
  v2 = [(NSDictionary *)self->_payload objectForKeyedSubscript:@"ContainerIdentifier"];
  if (!v2)
  {
    v2 = @"com.apple.photos";
  }

  return v2;
}

- (NSURL)libraryURL
{
  v2 = MEMORY[0x1E695DFF8];
  path = [(PLPhotoLibraryIdentifier *)self path];
  v4 = [v2 fileURLWithPath:path];

  return v4;
}

- (PLPhotoLibraryIdentifier)initWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserDescription"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
  v16 = 0;
  v11 = [PLPhotoLibraryIdentifier _buildIdentifierMapForLibraryURL:v10 containerIdentifier:v9 uuid:v7 name:v5 userDescription:v6 error:&v16];
  v12 = v16;

  if (v11)
  {
    v13 = [(PLPhotoLibraryIdentifier *)self initWithIdentifierPayload:v11];
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Invalid photo library identifier from coder init for library path %@. Error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PLPhotoLibraryIdentifier *)self name];
  [coderCopy encodeObject:name forKey:@"Name"];

  userDescription = [(PLPhotoLibraryIdentifier *)self userDescription];
  [coderCopy encodeObject:userDescription forKey:@"UserDescription"];

  uuid = [(PLPhotoLibraryIdentifier *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"UUID"];

  path = [(PLPhotoLibraryIdentifier *)self path];
  [coderCopy encodeObject:path forKey:@"Path"];

  containerIdentifier = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  [coderCopy encodeObject:containerIdentifier forKey:@"ContainerIdentifier"];
}

- (id)debugDescription
{
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryIdentifier;
  v3 = [(PLPhotoLibraryIdentifier *)&v9 description];
  uuid = [(PLPhotoLibraryIdentifier *)self uuid];
  name = [(PLPhotoLibraryIdentifier *)self name];
  userDescription = [(PLPhotoLibraryIdentifier *)self userDescription];
  v7 = [v3 stringByAppendingFormat:@": UUID:[%@], name:[%@], userDescription:[%@]", uuid, name, userDescription];

  return v7;
}

- (PLPhotoLibraryIdentifier)initWithIdentifierPayload:(id)payload
{
  payloadCopy = payload;
  if (!payloadCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"identifierPayload"}];
  }

  v7 = [(PLPhotoLibraryIdentifier *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_payload, payload);
  }

  return v8;
}

+ (BOOL)_isValidLibraryURL:(id)l identifierMap:(id)map
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  mapCopy = map;
  v7 = MEMORY[0x1E69BF238];
  path = [lCopy path];
  v16 = 0;
  v9 = [v7 realPathForPath:path error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = [mapCopy objectForKeyedSubscript:@"Path"];
    if (([v9 isEqualToString:v11] & 1) == 0)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [MEMORY[0x1E69BF220] descriptionWithPath:v11];
        v14 = [MEMORY[0x1E69BF220] descriptionWithPath:v9];
        *buf = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Updating library identifier path %@ to match real path %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = lCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to access realpath for library identifier url: %@. Error: %@", buf, 0x16u);
    }
  }

  return v9 != 0;
}

+ (id)_addWellKnownIdentifierFromIdentifierMap:(id)map updateLibraryURL:(id)l
{
  mapCopy = map;
  lCopy = l;
  v9 = lCopy;
  if (mapCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"identifierPayload"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];

LABEL_3:
  v10 = [mapCopy mutableCopy];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69BF2A0], "wellKnownPhotoLibraryIdentifierForURL:", v9)}];
  [v10 setObject:v11 forKeyedSubscript:@"WellKnownIdentifier"];

  path = [v9 path];
  [v10 setObject:path forKeyedSubscript:@"Path"];

  return v10;
}

+ (id)_stripWellKnownIdentifierFromIdentifierMap:(id)map
{
  mapCopy = map;
  if (!mapCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"identifierPayload"}];
  }

  v6 = [mapCopy mutableCopy];
  [v6 removeObjectForKey:@"WellKnownIdentifier"];

  return v6;
}

+ (id)_buildIdentifierMapForLibraryURL:(id)l containerIdentifier:(id)identifier uuid:(id)uuid name:(id)name userDescription:(id)description error:(id *)error
{
  v47[6] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  uuidCopy = uuid;
  nameCopy = name;
  descriptionCopy = description;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  v17 = MEMORY[0x1E69BF238];
  path = [lCopy path];
  v43 = 0;
  stringByStandardizingPath = [v17 realPathForPath:path error:&v43];
  v20 = v43;

  if (!stringByStandardizingPath)
  {
    path2 = [lCopy path];
    stringByStandardizingPath = [path2 stringByStandardizingPath];

    if (!stringByStandardizingPath)
    {
      v33 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E69BFF48];
      v44 = *MEMORY[0x1E696A278];
      v45 = @"Failed to access realpath for library url";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v36 = [v33 errorWithDomain:v34 code:46102 userInfo:v35];

      v32 = v36;
      stringByStandardizingPath = 0;
LABEL_18:
      if (error)
      {
        v37 = v32;
        v31 = 0;
        *error = v32;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_21;
    }
  }

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:stringByStandardizingPath isDirectory:1];
  if ([uuidCopy length])
  {
    uUIDString = uuidCopy;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v25 = uuidCopy;
  if ([nameCopy length])
  {
    stringByDeletingPathExtension = nameCopy;
  }

  else
  {
    lastPathComponent = [v22 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  }

  v46[0] = @"Name";
  v46[1] = @"UserDescription";
  v28 = &stru_1F0F06D80;
  if (descriptionCopy)
  {
    v28 = descriptionCopy;
  }

  v47[0] = stringByDeletingPathExtension;
  v47[1] = v28;
  v46[2] = @"Path";
  v46[3] = @"UUID";
  v29 = @"com.apple.photos";
  v47[2] = stringByStandardizingPath;
  v47[3] = uUIDString;
  if (identifierCopy)
  {
    v29 = identifierCopy;
  }

  v47[4] = v29;
  v46[4] = @"ContainerIdentifier";
  v46[5] = @"WellKnownIdentifier";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69BF2A0], "wellKnownPhotoLibraryIdentifierForURL:", v22)}];
  v47[5] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:6];

  v32 = v20;
  uuidCopy = v25;
  if (!v31)
  {
    goto LABEL_18;
  }

LABEL_21:

  return v31;
}

+ (id)_createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)l containerIdentifier:(id)identifier uuid:(id)uuid name:(id)name userDescription:(id)description error:(id *)error
{
  v64[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  uuidCopy = uuid;
  nameCopy = name;
  descriptionCopy = description;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  if ((PLIsReallyAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd() || PLIsXcTest()"}];
  }

  os_unfair_lock_assert_owner(&s_identifierGenerationLock);
  v18 = [self _existingPhotoLibraryIdentifierRecordForLibraryURL:lCopy error:0];
  v19 = v18;
  if (v18)
  {
    v20 = MEMORY[0x1E696AEC0];
    uuid = [v18 uuid];
    uuidCopy = [v20 stringWithFormat:@"Library identifier is already persisted for this URL, existing '%@' vs. requested '%@'", uuid, uuidCopy];

    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A998];
    v63[0] = *MEMORY[0x1E696A278];
    v63[1] = v25;
    v64[0] = uuidCopy;
    v64[1] = lCopy;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v27 = [v23 errorWithDomain:v24 code:46110 userInfo:v26];
    v28 = 0;
    goto LABEL_18;
  }

  v53 = uuidCopy;
  v29 = MEMORY[0x1E69BF238];
  path = [lCopy path];
  v58 = 0;
  uuidCopy = [v29 realPathForPath:path error:&v58];
  v26 = v58;

  if (!uuidCopy)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v59 = *MEMORY[0x1E696A278];
    v60 = @"Failed to access realpath for library url";
    uuidCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v27 = [v41 errorWithDomain:v42 code:46102 userInfo:uuidCopy];
    v28 = 0;
LABEL_16:
    uuidCopy = v53;
    goto LABEL_18;
  }

  v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:uuidCopy isDirectory:1];
  v28 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:v31];
  v52 = descriptionCopy;
  if ([v28 isUBF])
  {
    photosLibraryExtension = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
    [lCopy pathExtension];
    v51 = v31;
    v34 = v33 = identifierCopy;
    v35 = [photosLibraryExtension isEqualToString:v34];

    identifierCopy = v33;
    v31 = v51;

    descriptionCopy = v52;
    if ((v35 & 1) == 0)
    {
      v43 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E69BFF48];
      v61 = *MEMORY[0x1E696A278];
      v62 = @"Invalid library file extension";
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v27 = [v43 errorWithDomain:v44 code:46102 userInfo:v45];

      descriptionCopy = v52;
      v26 = v51;
      goto LABEL_16;
    }
  }

  v57 = v26;
  uuidCopy = v53;
  uuidCopy = [self _buildIdentifierMapForLibraryURL:lCopy containerIdentifier:identifierCopy uuid:v53 name:nameCopy userDescription:descriptionCopy error:&v57];
  v36 = v57;

  if (!uuidCopy)
  {
    goto LABEL_19;
  }

  v26 = [MEMORY[0x1E69BF188] appPrivateDataForLibraryURL:lCopy];
  v37 = [self _stripWellKnownIdentifierFromIdentifierMap:uuidCopy];
  v56 = v36;
  v38 = [v26 setValue:v37 forKeyPath:@"Library.Identifier" error:&v56];
  v27 = v56;

  if (v38)
  {
    v39 = [[PLPhotoLibraryIdentifier alloc] initWithIdentifierPayload:uuidCopy];

    v40 = v27;
    descriptionCopy = v52;
    uuidCopy = v53;
    goto LABEL_22;
  }

  descriptionCopy = v52;
  uuidCopy = v53;
LABEL_18:

  v36 = v27;
LABEL_19:
  v46 = v36;
  v40 = v46;
  if (error)
  {
    v47 = v46;
    v39 = 0;
    *error = v40;
  }

  else
  {
    v39 = 0;
  }

LABEL_22:

  return v39;
}

+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)l containerIdentifier:(id)identifier uuid:(id)uuid name:(id)name userDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
  nameCopy = name;
  uuidCopy = uuid;
  identifierCopy = identifier;
  lCopy = l;
  os_unfair_lock_lock(&s_identifierGenerationLock);
  v19 = [self _createPhotoLibraryIdentifierWithPhotoLibraryURL:lCopy containerIdentifier:identifierCopy uuid:uuidCopy name:nameCopy userDescription:descriptionCopy error:error];

  os_unfair_lock_unlock(&s_identifierGenerationLock);

  return v19;
}

+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)l containerIdentifier:(id)identifier name:(id)name userDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
  nameCopy = name;
  identifierCopy = identifier;
  lCopy = l;
  os_unfair_lock_lock(&s_identifierGenerationLock);
  v16 = [self _createPhotoLibraryIdentifierWithPhotoLibraryURL:lCopy containerIdentifier:identifierCopy uuid:0 name:nameCopy userDescription:descriptionCopy error:error];

  os_unfair_lock_unlock(&s_identifierGenerationLock);

  return v16;
}

+ (id)photoLibraryIdentifierWithPhotoLibraryURL:(id)l createIfMissing:(BOOL)missing error:(id *)error
{
  missingCopy = missing;
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  os_unfair_lock_lock(&s_identifierGenerationLock);
  v25 = 0;
  v9 = [self _existingPhotoLibraryIdentifierRecordForLibraryURL:lCopy error:&v25];
  v10 = v25;
  v11 = v10;
  if (!v9 && !v10 && missingCopy)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E69BF220] descriptionWithFileURL:lCopy];
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Creating missing identifier for library bundle %@", buf, 0xCu);
    }

    v24 = 0;
    v9 = [self _createPhotoLibraryIdentifierWithPhotoLibraryURL:lCopy containerIdentifier:@"com.apple.photos" uuid:0 name:0 userDescription:0 error:&v24];
    v11 = v24;
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E69BF220] descriptionWithFileURL:lCopy];
      *buf = 138412546;
      v29 = v16;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Created missing identifier for library bundle %@: %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (!v10)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E69BFF48];
    v19 = *MEMORY[0x1E696A998];
    v26[0] = *MEMORY[0x1E696A278];
    v26[1] = v19;
    v27[0] = @"Library identifier does not exist for this url";
    v27[1] = lCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v11 = [v17 errorWithDomain:v18 code:46111 userInfo:v15];
LABEL_12:
  }

  os_unfair_lock_unlock(&s_identifierGenerationLock);
  v20 = v11;
  v21 = v20;
  if (!v9 && error)
  {
    v22 = v20;
    *error = v21;
  }

  return v9;
}

+ (id)_existingPhotoLibraryIdentifierRecordForLibraryURL:(id)l error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  os_unfair_lock_assert_owner(&s_identifierGenerationLock);
  v7 = [MEMORY[0x1E69BF188] appPrivateDataForLibraryURL:lCopy];
  v8 = [v7 valueForKeyPath:@"Library.Identifier"];
  if (!v8)
  {
    goto LABEL_8;
  }

  if ([self _isValidLibraryURL:lCopy identifierMap:v8])
  {
    v9 = [self _addWellKnownIdentifierFromIdentifierMap:v8 updateLibraryURL:lCopy];

    v10 = [[PLPhotoLibraryIdentifier alloc] initWithIdentifierPayload:v9];
    v11 = 0;
    v8 = v9;
    goto LABEL_9;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E69BFF48];
  v19 = *MEMORY[0x1E696A278];
  v20[0] = @"Mismatched library url";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v15 = [v12 errorWithDomain:v13 code:46109 userInfo:v14];

  v16 = v15;
  if (v15)
  {
    v11 = v16;
    if (error)
    {
      v17 = v16;
      *error = v11;
    }

    v10 = 0;
  }

  else
  {
LABEL_8:
    v10 = 0;
    v11 = 0;
  }

LABEL_9:

  return v10;
}

@end