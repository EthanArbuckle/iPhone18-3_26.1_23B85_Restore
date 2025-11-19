@interface PLPhotoLibraryIdentifier
+ (BOOL)_isValidLibraryURL:(id)a3 identifierMap:(id)a4;
+ (id)_addWellKnownIdentifierFromIdentifierMap:(id)a3 updateLibraryURL:(id)a4;
+ (id)_buildIdentifierMapForLibraryURL:(id)a3 containerIdentifier:(id)a4 uuid:(id)a5 name:(id)a6 userDescription:(id)a7 error:(id *)a8;
+ (id)_createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)a3 containerIdentifier:(id)a4 uuid:(id)a5 name:(id)a6 userDescription:(id)a7 error:(id *)a8;
+ (id)_existingPhotoLibraryIdentifierRecordForLibraryURL:(id)a3 error:(id *)a4;
+ (id)_stripWellKnownIdentifierFromIdentifierMap:(id)a3;
+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)a3 containerIdentifier:(id)a4 name:(id)a5 userDescription:(id)a6 error:(id *)a7;
+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)a3 containerIdentifier:(id)a4 uuid:(id)a5 name:(id)a6 userDescription:(id)a7 error:(id *)a8;
+ (id)photoLibraryIdentifierWithPhotoLibraryURL:(id)a3 createIfMissing:(BOOL)a4 error:(id *)a5;
- (BOOL)isImagePlaygroundDefaultLibraryIdentifier;
- (BOOL)setValuesForName:(id)a3 userDescription:(id)a4 error:(id *)a5;
- (NSString)containerIdentifier;
- (NSURL)libraryURL;
- (PLPhotoLibraryIdentifier)initWithCoder:(id)a3;
- (PLPhotoLibraryIdentifier)initWithIdentifierPayload:(id)a3;
- (id)debugDescription;
- (int64_t)domain;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLPhotoLibraryIdentifier

- (BOOL)isImagePlaygroundDefaultLibraryIdentifier
{
  v3 = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  if ([v3 isEqualToString:@"com.apple.GenerativePlayground"])
  {
    v4 = [(PLPhotoLibraryIdentifier *)self uuid];
    v5 = [v4 isEqualToString:@"00000000-0000-0000-0000-000000000001"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setValuesForName:(id)a3 userDescription:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 | v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [objc_opt_class() _stripWellKnownIdentifierFromIdentifierMap:v10->_payload];
    v12 = v11;
    if (v8)
    {
      [v11 setObject:v8 forKeyedSubscript:@"Name"];
    }

    if (v9)
    {
      [v12 setObject:v9 forKeyedSubscript:@"UserDescription"];
    }

    v13 = MEMORY[0x1E69BF188];
    v14 = [(PLPhotoLibraryIdentifier *)v10 libraryURL];
    v15 = [v13 appPrivateDataForLibraryURL:v14];

    v16 = [v15 setValue:v12 forKeyPath:@"Library.Identifier" error:a5];
    if (v16)
    {
      objc_storeStrong(&v10->_payload, v12);
    }

    objc_sync_exit(v10);
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (int64_t)domain
{
  v2 = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.photos"];

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
  v3 = [(PLPhotoLibraryIdentifier *)self path];
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (PLPhotoLibraryIdentifier)initWithCoder:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserDescription"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibraryIdentifier *)self name];
  [v4 encodeObject:v5 forKey:@"Name"];

  v6 = [(PLPhotoLibraryIdentifier *)self userDescription];
  [v4 encodeObject:v6 forKey:@"UserDescription"];

  v7 = [(PLPhotoLibraryIdentifier *)self uuid];
  [v4 encodeObject:v7 forKey:@"UUID"];

  v8 = [(PLPhotoLibraryIdentifier *)self path];
  [v4 encodeObject:v8 forKey:@"Path"];

  v9 = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  [v4 encodeObject:v9 forKey:@"ContainerIdentifier"];
}

- (id)debugDescription
{
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryIdentifier;
  v3 = [(PLPhotoLibraryIdentifier *)&v9 description];
  v4 = [(PLPhotoLibraryIdentifier *)self uuid];
  v5 = [(PLPhotoLibraryIdentifier *)self name];
  v6 = [(PLPhotoLibraryIdentifier *)self userDescription];
  v7 = [v3 stringByAppendingFormat:@": UUID:[%@], name:[%@], userDescription:[%@]", v4, v5, v6];

  return v7;
}

- (PLPhotoLibraryIdentifier)initWithIdentifierPayload:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryIdentifier.m" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"identifierPayload"}];
  }

  v7 = [(PLPhotoLibraryIdentifier *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_payload, a3);
  }

  return v8;
}

+ (BOOL)_isValidLibraryURL:(id)a3 identifierMap:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69BF238];
  v8 = [v5 path];
  v16 = 0;
  v9 = [v7 realPathForPath:v8 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = [v6 objectForKeyedSubscript:@"Path"];
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
      v18 = v5;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to access realpath for library identifier url: %@. Error: %@", buf, 0x16u);
    }
  }

  return v9 != 0;
}

+ (id)_addWellKnownIdentifierFromIdentifierMap:(id)a3 updateLibraryURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryIdentifier.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"identifierPayload"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryIdentifier.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];

LABEL_3:
  v10 = [v7 mutableCopy];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69BF2A0], "wellKnownPhotoLibraryIdentifierForURL:", v9)}];
  [v10 setObject:v11 forKeyedSubscript:@"WellKnownIdentifier"];

  v12 = [v9 path];
  [v10 setObject:v12 forKeyedSubscript:@"Path"];

  return v10;
}

+ (id)_stripWellKnownIdentifierFromIdentifierMap:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryIdentifier.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"identifierPayload"}];
  }

  v6 = [v5 mutableCopy];
  [v6 removeObjectForKey:@"WellKnownIdentifier"];

  return v6;
}

+ (id)_buildIdentifierMapForLibraryURL:(id)a3 containerIdentifier:(id)a4 uuid:(id)a5 name:(id)a6 userDescription:(id)a7 error:(id *)a8
{
  v47[6] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v42 = a4;
  v15 = a5;
  v16 = a6;
  v41 = a7;
  if (!v14)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryIdentifier.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  v17 = MEMORY[0x1E69BF238];
  v18 = [v14 path];
  v43 = 0;
  v19 = [v17 realPathForPath:v18 error:&v43];
  v20 = v43;

  if (!v19)
  {
    v21 = [v14 path];
    v19 = [v21 stringByStandardizingPath];

    if (!v19)
    {
      v33 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E69BFF48];
      v44 = *MEMORY[0x1E696A278];
      v45 = @"Failed to access realpath for library url";
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v36 = [v33 errorWithDomain:v34 code:46102 userInfo:v35];

      v32 = v36;
      v19 = 0;
LABEL_18:
      if (a8)
      {
        v37 = v32;
        v31 = 0;
        *a8 = v32;
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_21;
    }
  }

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19 isDirectory:1];
  if ([v15 length])
  {
    v23 = v15;
  }

  else
  {
    v24 = [MEMORY[0x1E696AFB0] UUID];
    v23 = [v24 UUIDString];
  }

  v25 = v15;
  if ([v16 length])
  {
    v26 = v16;
  }

  else
  {
    v27 = [v22 lastPathComponent];
    v26 = [v27 stringByDeletingPathExtension];
  }

  v46[0] = @"Name";
  v46[1] = @"UserDescription";
  v28 = &stru_1F0F06D80;
  if (v41)
  {
    v28 = v41;
  }

  v47[0] = v26;
  v47[1] = v28;
  v46[2] = @"Path";
  v46[3] = @"UUID";
  v29 = @"com.apple.photos";
  v47[2] = v19;
  v47[3] = v23;
  if (v42)
  {
    v29 = v42;
  }

  v47[4] = v29;
  v46[4] = @"ContainerIdentifier";
  v46[5] = @"WellKnownIdentifier";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E69BF2A0], "wellKnownPhotoLibraryIdentifierForURL:", v22)}];
  v47[5] = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:6];

  v32 = v20;
  v15 = v25;
  if (!v31)
  {
    goto LABEL_18;
  }

LABEL_21:

  return v31;
}

+ (id)_createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)a3 containerIdentifier:(id)a4 uuid:(id)a5 name:(id)a6 userDescription:(id)a7 error:(id *)a8
{
  v64[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v55 = a6;
  v17 = a7;
  if (!v14)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryIdentifier.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"libraryURL"}];
  }

  if ((PLIsReallyAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryIdentifier.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd() || PLIsXcTest()"}];
  }

  os_unfair_lock_assert_owner(&s_identifierGenerationLock);
  v18 = [a1 _existingPhotoLibraryIdentifierRecordForLibraryURL:v14 error:0];
  v19 = v18;
  if (v18)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v18 uuid];
    v22 = [v20 stringWithFormat:@"Library identifier is already persisted for this URL, existing '%@' vs. requested '%@'", v21, v16];

    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E69BFF48];
    v25 = *MEMORY[0x1E696A998];
    v63[0] = *MEMORY[0x1E696A278];
    v63[1] = v25;
    v64[0] = v22;
    v64[1] = v14;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v27 = [v23 errorWithDomain:v24 code:46110 userInfo:v26];
    v28 = 0;
    goto LABEL_18;
  }

  v53 = v16;
  v29 = MEMORY[0x1E69BF238];
  v30 = [v14 path];
  v58 = 0;
  v22 = [v29 realPathForPath:v30 error:&v58];
  v26 = v58;

  if (!v22)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v59 = *MEMORY[0x1E696A278];
    v60 = @"Failed to access realpath for library url";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v27 = [v41 errorWithDomain:v42 code:46102 userInfo:v22];
    v28 = 0;
LABEL_16:
    v16 = v53;
    goto LABEL_18;
  }

  v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:v22 isDirectory:1];
  v28 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:v31];
  v52 = v17;
  if ([v28 isUBF])
  {
    v32 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
    [v14 pathExtension];
    v51 = v31;
    v34 = v33 = v15;
    v35 = [v32 isEqualToString:v34];

    v15 = v33;
    v31 = v51;

    v17 = v52;
    if ((v35 & 1) == 0)
    {
      v43 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E69BFF48];
      v61 = *MEMORY[0x1E696A278];
      v62 = @"Invalid library file extension";
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v27 = [v43 errorWithDomain:v44 code:46102 userInfo:v45];

      v17 = v52;
      v26 = v51;
      goto LABEL_16;
    }
  }

  v57 = v26;
  v16 = v53;
  v22 = [a1 _buildIdentifierMapForLibraryURL:v14 containerIdentifier:v15 uuid:v53 name:v55 userDescription:v17 error:&v57];
  v36 = v57;

  if (!v22)
  {
    goto LABEL_19;
  }

  v26 = [MEMORY[0x1E69BF188] appPrivateDataForLibraryURL:v14];
  v37 = [a1 _stripWellKnownIdentifierFromIdentifierMap:v22];
  v56 = v36;
  v38 = [v26 setValue:v37 forKeyPath:@"Library.Identifier" error:&v56];
  v27 = v56;

  if (v38)
  {
    v39 = [[PLPhotoLibraryIdentifier alloc] initWithIdentifierPayload:v22];

    v40 = v27;
    v17 = v52;
    v16 = v53;
    goto LABEL_22;
  }

  v17 = v52;
  v16 = v53;
LABEL_18:

  v36 = v27;
LABEL_19:
  v46 = v36;
  v40 = v46;
  if (a8)
  {
    v47 = v46;
    v39 = 0;
    *a8 = v40;
  }

  else
  {
    v39 = 0;
  }

LABEL_22:

  return v39;
}

+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)a3 containerIdentifier:(id)a4 uuid:(id)a5 name:(id)a6 userDescription:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  os_unfair_lock_lock(&s_identifierGenerationLock);
  v19 = [a1 _createPhotoLibraryIdentifierWithPhotoLibraryURL:v18 containerIdentifier:v17 uuid:v16 name:v15 userDescription:v14 error:a8];

  os_unfair_lock_unlock(&s_identifierGenerationLock);

  return v19;
}

+ (id)createPhotoLibraryIdentifierWithPhotoLibraryURL:(id)a3 containerIdentifier:(id)a4 name:(id)a5 userDescription:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  os_unfair_lock_lock(&s_identifierGenerationLock);
  v16 = [a1 _createPhotoLibraryIdentifierWithPhotoLibraryURL:v15 containerIdentifier:v14 uuid:0 name:v13 userDescription:v12 error:a7];

  os_unfair_lock_unlock(&s_identifierGenerationLock);

  return v16;
}

+ (id)photoLibraryIdentifierWithPhotoLibraryURL:(id)a3 createIfMissing:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  os_unfair_lock_lock(&s_identifierGenerationLock);
  v25 = 0;
  v9 = [a1 _existingPhotoLibraryIdentifierRecordForLibraryURL:v8 error:&v25];
  v10 = v25;
  v11 = v10;
  if (!v9 && !v10 && v6)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Creating missing identifier for library bundle %@", buf, 0xCu);
    }

    v24 = 0;
    v9 = [a1 _createPhotoLibraryIdentifierWithPhotoLibraryURL:v8 containerIdentifier:@"com.apple.photos" uuid:0 name:0 userDescription:0 error:&v24];
    v11 = v24;
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
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
    v27[1] = v8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v11 = [v17 errorWithDomain:v18 code:46111 userInfo:v15];
LABEL_12:
  }

  os_unfair_lock_unlock(&s_identifierGenerationLock);
  v20 = v11;
  v21 = v20;
  if (!v9 && a5)
  {
    v22 = v20;
    *a5 = v21;
  }

  return v9;
}

+ (id)_existingPhotoLibraryIdentifierRecordForLibraryURL:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_assert_owner(&s_identifierGenerationLock);
  v7 = [MEMORY[0x1E69BF188] appPrivateDataForLibraryURL:v6];
  v8 = [v7 valueForKeyPath:@"Library.Identifier"];
  if (!v8)
  {
    goto LABEL_8;
  }

  if ([a1 _isValidLibraryURL:v6 identifierMap:v8])
  {
    v9 = [a1 _addWellKnownIdentifierFromIdentifierMap:v8 updateLibraryURL:v6];

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
    if (a4)
    {
      v17 = v16;
      *a4 = v11;
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