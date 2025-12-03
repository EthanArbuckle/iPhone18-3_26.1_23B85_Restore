@interface PLFileSystemBookmark
+ (id)fileSystemBookmarkFromURL:(id)l context:(id)context;
- (id)fileSystemURL;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
@end

@implementation PLFileSystemBookmark

- (id)fileSystemURL
{
  v23 = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0 && !MEMORY[0x19EAEE520]())
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    assetsdClient = [photoLibrary assetsdClient];
    resourceClient = [assetsdClient resourceClient];

    objectID = [(PLFileSystemBookmark *)self objectID];
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v10 = [resourceClient sandboxExtensionForFileSystemBookmark:objectID bookmarkURL:&v16 sandboxExtensionToken:&v15 error:&v14];
    shortObjectIDURI = v16;
    v11 = v15;
    v12 = v14;

    v4 = 0;
    if (v10)
    {
      v4 = [objc_alloc(MEMORY[0x1E69BF2E8]) initWithURL:shortObjectIDURI sandboxExtensionToken:v11 consume:1];
    }

    goto LABEL_10;
  }

  v18 = 0;
  bookmarkData = [(PLFileSystemBookmark *)self bookmarkData];
  v17 = 0;
  v4 = [PLURL URLByResolvingBookmarkData:bookmarkData options:256 relativeToURL:0 bookmarkDataIsStale:&v18 error:&v17];
  resourceClient = v17;

  if (v4)
  {
    [v4 startAccessingSecurityScopedResource];
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    shortObjectIDURI = [(PLManagedObject *)self shortObjectIDURI];
    *buf = 138412546;
    v20 = shortObjectIDURI;
    v21 = 2112;
    v22 = resourceClient;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error resolving bookmark data for %@. Error: %@", buf, 0x16u);
LABEL_10:
  }

LABEL_11:

  return v4;
}

+ (id)fileSystemBookmarkFromURL:(id)l context:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v42 = 0;
  v9 = [lCopy bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v42];
  v10 = v42;
  v41 = 0;
  v11 = *MEMORY[0x1E695DEB0];
  v40 = 0;
  v12 = [lCopy getResourceValue:&v41 forKey:v11 error:&v40];
  v13 = v41;
  v14 = v40;
  v15 = v14;
  v16 = 0;
  if (!v12)
  {
    if (!startAccessingSecurityScopedResource)
    {
      goto LABEL_3;
    }

LABEL_16:
    [lCopy stopAccessingSecurityScopedResource];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  selfCopy = self;
  v36 = startAccessingSecurityScopedResource;
  v37 = v14;
  path = [v13 path];
  v19 = MEMORY[0x1E69BF238];
  path2 = [lCopy path];
  v39 = 0;
  v21 = [v19 realPathForPath:path2 error:&v39];
  v22 = v39;

  if ([v21 hasPrefix:path])
  {
    v33 = v10;
    v34 = contextCopy;
    pathComponents = [v21 pathComponents];
    pathComponents2 = [path pathComponents];
    v25 = [pathComponents count];
    v26 = v25 - [pathComponents2 count];
    if (v26 <= 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PLFileSystemBookmark.m" lineNumber:117 description:@"URL must be relative to the volume"];
    }

    v27 = [pathComponents subarrayWithRange:{objc_msgSend(pathComponents2, "count"), v26}];
    v16 = [v27 componentsJoinedByString:@"/"];

    v10 = v33;
    contextCopy = v34;
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
        v46 = path;
        _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "bookmarkPath %@ does not have volume path prefix %@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      [lCopy path];
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
    v17 = [(PLManagedObject *)PLFileSystemBookmark insertInManagedObjectContext:contextCopy];
    [v17 setBookmarkData:v9];
    [v17 setPathRelativeToVolume:v16];
    goto LABEL_20;
  }

LABEL_17:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v44 = lCopy;
    v45 = 2112;
    v46 = v10;
    _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating bookmark data for %@: %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  resource = [(PLFileSystemBookmark *)self resource];
  asset = [resource asset];
  if ([asset isValidForJournalPersistence])
  {
    v7 = [PLAssetJournalEntryPayload alloc];
    resource2 = [(PLFileSystemBookmark *)self resource];
    v9 = [(PLAssetJournalEntryPayload *)v7 initWithInternalResource:resource2 filesystemBookmark:self changedKeys:keysCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)payloadID
{
  resource = [(PLFileSystemBookmark *)self resource];
  asset = [resource asset];
  uuid = [asset uuid];
  v5 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v5;
}

@end