@interface PLFileSystemBookmark
+ (id)fileSystemBookmarkFromURL:(id)a3 context:(id)a4;
- (id)fileSystemURL;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
@end

@implementation PLFileSystemBookmark

- (id)fileSystemURL
{
  v23 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0 && !MEMORY[0x19EAEE520]())
  {
    v7 = [(PLManagedObject *)self photoLibrary];
    v8 = [v7 assetsdClient];
    v5 = [v8 resourceClient];

    v9 = [(PLFileSystemBookmark *)self objectID];
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v10 = [v5 sandboxExtensionForFileSystemBookmark:v9 bookmarkURL:&v16 sandboxExtensionToken:&v15 error:&v14];
    v6 = v16;
    v11 = v15;
    v12 = v14;

    v4 = 0;
    if (v10)
    {
      v4 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:v6 sandboxExtensionToken:v11 consume:1];
    }

    goto LABEL_10;
  }

  v18 = 0;
  v3 = [(PLFileSystemBookmark *)self bookmarkData];
  v17 = 0;
  v4 = [PLURL URLByResolvingBookmarkData:v3 options:256 relativeToURL:0 bookmarkDataIsStale:&v18 error:&v17];
  v5 = v17;

  if (v4)
  {
    [v4 startAccessingSecurityScopedResource];
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [(PLManagedObject *)self shortObjectIDURI];
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v5;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error resolving bookmark data for %@. Error: %@", buf, 0x16u);
LABEL_10:
  }

LABEL_11:

  return v4;
}

+ (id)fileSystemBookmarkFromURL:(id)a3 context:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 startAccessingSecurityScopedResource];
  v42 = 0;
  v9 = [v6 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v42];
  v10 = v42;
  v41 = 0;
  v11 = *MEMORY[0x1E695DEB0];
  v40 = 0;
  v12 = [v6 getResourceValue:&v41 forKey:v11 error:&v40];
  v13 = v41;
  v14 = v40;
  v15 = v14;
  v16 = 0;
  if (!v12)
  {
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_16:
    [v6 stopAccessingSecurityScopedResource];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  v35 = a1;
  v36 = v8;
  v37 = v14;
  v18 = [v13 path];
  v19 = MEMORY[0x1E69BF238];
  v20 = [v6 path];
  v39 = 0;
  v21 = [v19 realPathForPath:v20 error:&v39];
  v22 = v39;

  if ([v21 hasPrefix:v18])
  {
    v33 = v10;
    v34 = v7;
    v23 = [v21 pathComponents];
    v24 = [v18 pathComponents];
    v25 = [v23 count];
    v26 = v25 - [v24 count];
    if (v26 <= 0)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:a2 object:v35 file:@"PLFileSystemBookmark.m" lineNumber:117 description:@"URL must be relative to the volume"];
    }

    v27 = [v23 subarrayWithRange:{objc_msgSend(v24, "count"), v26}];
    v16 = [v27 componentsJoinedByString:@"/"];

    v10 = v33;
    v7 = v34;
  }

  else
  {
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v28)
      {
        *buf = 138412546;
        v44 = v21;
        v45 = 2112;
        v46 = v18;
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "bookmarkPath %@ does not have volume path prefix %@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      [v6 path];
      v31 = v30 = v10;
      *buf = 138412546;
      v44 = v31;
      v45 = 2112;
      v46 = v22;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "bookmarkPath is nil for URL %@, error: %@", buf, 0x16u);

      v10 = v30;
    }

    v16 = 0;
  }

  v15 = v37;
  if (v36)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v9)
  {
LABEL_4:
    v17 = [(PLManagedObject *)PLFileSystemBookmark insertInManagedObjectContext:v7];
    [v17 setBookmarkData:v9];
    [v17 setPathRelativeToVolume:v16];
    goto LABEL_20;
  }

LABEL_17:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v44 = v6;
    v45 = 2112;
    v46 = v10;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating bookmark data for %@: %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLFileSystemBookmark *)self resource];
  v6 = [v5 asset];
  if ([v6 isValidForJournalPersistence])
  {
    v7 = [PLAssetJournalEntryPayload alloc];
    v8 = [(PLFileSystemBookmark *)self resource];
    v9 = [(PLAssetJournalEntryPayload *)v7 initWithInternalResource:v8 filesystemBookmark:self changedKeys:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)payloadID
{
  v2 = [(PLFileSystemBookmark *)self resource];
  v3 = [v2 asset];
  v4 = [v3 uuid];
  v5 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v4];

  return v5;
}

@end