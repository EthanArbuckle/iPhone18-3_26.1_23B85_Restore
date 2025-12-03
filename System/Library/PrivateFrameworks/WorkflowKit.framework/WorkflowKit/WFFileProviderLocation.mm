@interface WFFileProviderLocation
+ (BOOL)canRepresentURL:(id)l;
+ (Class)supportedClassForURL:(id)l;
+ (id)locationWithSerializedRepresentation:(id)representation;
+ (id)subpathFromURL:(id)l;
+ (id)subpathFromURL:(id)l item:(id)item;
- (WFFileProviderLocation)initWithCoder:(id)coder;
- (WFFileProviderLocation)initWithFileProviderDomainID:(id)d crossDeviceItemID:(id)iD appContainerBundleIdentifier:(id)identifier relativeSubpath:(id)subpath;
- (WFFileProviderLocation)initWithURL:(id)l;
- (id)resolveCrossDeviceItemIDWithError:(id *)error;
- (id)resolveLocationFromProviderDomainID;
- (id)resolveLocationWithError:(id *)error;
- (id)serializedRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileProviderLocation

- (id)serializedRepresentation
{
  v10.receiver = self;
  v10.super_class = WFFileProviderLocation;
  serializedRepresentation = [(WFFileLocation *)&v10 serializedRepresentation];
  if (serializedRepresentation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = serializedRepresentation;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  fileProviderDomainID = [(WFFileProviderLocation *)self fileProviderDomainID];
  [v5 setValue:fileProviderDomainID forKey:@"fileProviderDomainID"];

  crossDeviceItemID = [(WFFileProviderLocation *)self crossDeviceItemID];
  [v5 setValue:crossDeviceItemID forKey:@"crossDeviceItemID"];

  appContainerBundleIdentifier = [(WFFileProviderLocation *)self appContainerBundleIdentifier];
  [v5 setValue:appContainerBundleIdentifier forKey:@"appContainerBundleIdentifier"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFFileProviderLocation;
  coderCopy = coder;
  [(WFFileLocation *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFFileProviderLocation *)self fileProviderDomainID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"fileProviderDomainID"];

  crossDeviceItemID = [(WFFileProviderLocation *)self crossDeviceItemID];
  [coderCopy encodeObject:crossDeviceItemID forKey:@"crossDeviceItemID"];
}

- (WFFileProviderLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFFileProviderLocation;
  v5 = [(WFFileLocation *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileProviderDomainID"];
    fileProviderDomainID = v5->_fileProviderDomainID;
    v5->_fileProviderDomainID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crossDeviceItemID"];
    crossDeviceItemID = v5->_crossDeviceItemID;
    v5->_crossDeviceItemID = v8;

    v10 = v5;
  }

  return v5;
}

- (id)resolveLocationFromProviderDomainID
{
  fileProviderDomainID = [(WFFileProviderLocation *)self fileProviderDomainID];
  v4 = [WFFileLocationUtilities fetchRootItemURLForDomainWithID:fileProviderDomainID];

  if (v4)
  {
    relativeSubpath = [(WFFileLocation *)self relativeSubpath];
    v6 = [v4 URLByAppendingPathComponent:relativeSubpath];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)resolveLocationWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__42343;
  v21 = __Block_byref_object_dispose__42344;
  v22 = [(WFFileProviderLocation *)self resolveCrossDeviceItemIDWithError:error];
  v4 = v18[5];
  if (v4)
  {
    goto LABEL_4;
  }

  v5 = dispatch_semaphore_create(0);
  v6 = [WFFPItemResolver alloc];
  fileProviderDomainID = [(WFFileProviderLocation *)self fileProviderDomainID];
  relativeSubpath = [(WFFileLocation *)self relativeSubpath];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__WFFileProviderLocation_resolveLocationWithError___block_invoke;
  v14[3] = &unk_1E8379CE8;
  v16 = &v17;
  v9 = v5;
  v15 = v9;
  v10 = [(WFFPItemResolver *)v6 initWithDomainID:fileProviderDomainID relativeSubpath:relativeSubpath completionHandler:v14];

  if (v10)
  {
    v11 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v9, v11);

    v4 = v18[5];
LABEL_4:
    v12 = v4;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_5:
  _Block_object_dispose(&v17, 8);

  return v12;
}

void __51__WFFileProviderLocation_resolveLocationWithError___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69E0938] standardClient];
    v11 = 0;
    v5 = [v4 fetchURLForFPItem:v3 error:&v11];
    v6 = v11;

    if (!v5)
    {
      v7 = getWFFilesLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[WFFileProviderLocation resolveLocationWithError:]_block_invoke";
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not fetch URL for FPItem with error: %@", buf, 0x16u);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v8 = getWFFilesLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v13 = "[WFFileProviderLocation resolveLocationWithError:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Found item: %@ with fetched URL: %@", buf, 0x20u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v9 = getWFFilesLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[WFFileProviderLocation resolveLocationWithError:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s WFFPItemResolver found no item", buf, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)resolveCrossDeviceItemIDWithError:(id *)error
{
  crossDeviceItemID = [(WFFileProviderLocation *)self crossDeviceItemID];

  if (crossDeviceItemID)
  {
    standardClient = [MEMORY[0x1E69E0938] standardClient];
    crossDeviceItemID2 = [(WFFileProviderLocation *)self crossDeviceItemID];
    v8 = [standardClient resolveCrossDeviceItemID:crossDeviceItemID2 error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFFileProviderLocation)initWithURL:(id)l
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileProviderLocation.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  v23.receiver = self;
  v23.super_class = WFFileProviderLocation;
  v6 = [(WFFileLocation *)&v23 initWithURL:lCopy];
  if (v6)
  {
    startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
    v8 = FPCreateCrossDeviceItemIDForItemAtURL();
    v9 = 0;
    if (!v8)
    {
      v10 = getWFFilesLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[WFFileProviderLocation initWithURL:]";
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Could not create cross device item id with error: %@", buf, 0x16u);
      }
    }

    defaultManager = [MEMORY[0x1E69673B0] defaultManager];
    v12 = [defaultManager itemForURL:lCopy error:0];

    if (startAccessingSecurityScopedResource)
    {
      [lCopy stopAccessingSecurityScopedResource];
    }

    crossDeviceItemID = v6->_crossDeviceItemID;
    v6->_crossDeviceItemID = v8;
    v14 = v8;

    providerDomainID = [v12 providerDomainID];
    fileProviderDomainID = v6->_fileProviderDomainID;
    v6->_fileProviderDomainID = providerDomainID;

    v17 = [WFFileLocationUtilities bundleIdentifierForItem:v12];
    appContainerBundleIdentifier = v6->_appContainerBundleIdentifier;
    v6->_appContainerBundleIdentifier = v17;

    v19 = v6;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

- (WFFileProviderLocation)initWithFileProviderDomainID:(id)d crossDeviceItemID:(id)iD appContainerBundleIdentifier:(id)identifier relativeSubpath:(id)subpath
{
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = WFFileProviderLocation;
  v14 = [(WFFileLocation *)&v18 initWithRelativeSubpath:subpath];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fileProviderDomainID, d);
    objc_storeStrong(&v15->_crossDeviceItemID, iD);
    objc_storeStrong(&v15->_appContainerBundleIdentifier, identifier);
    v16 = v15;
  }

  return v15;
}

+ (id)subpathFromURL:(id)l item:(id)item
{
  if (item)
  {
    itemCopy = item;
    v5 = [WFFileLocationUtilities parentItemsForItem:itemCopy];
    reverseObjectEnumerator = [v5 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v8 = [allObjects mutableCopy];

    v9 = [v8 arrayByAddingObject:itemCopy];

    v10 = [v9 if_compactMap:&__block_literal_global_42378];
    v11 = [v10 componentsJoinedByString:@"/"];
    stringByStandardizingPath = [v11 stringByStandardizingPath];
  }

  else
  {
    stringByStandardizingPath = 0;
  }

  return stringByStandardizingPath;
}

+ (id)subpathFromURL:(id)l
{
  v4 = MEMORY[0x1E69673B0];
  lCopy = l;
  defaultManager = [v4 defaultManager];
  v7 = [defaultManager itemForURL:lCopy error:0];

  v8 = [self subpathFromURL:lCopy item:v7];

  return v8;
}

+ (BOOL)canRepresentURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  defaultManager = [MEMORY[0x1E69673B0] defaultManager];
  v14 = 0;
  v7 = [defaultManager itemForURL:lCopy error:&v14];
  v8 = v14;

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
  }

  if (!v7)
  {
    v9 = getWFFilesLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "+[WFFileProviderLocation canRepresentURL:]";
      v17 = 2112;
      v18 = lCopy;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEBUG, "%s Could not create item from URL: %@ with error: %@", buf, 0x20u);
    }
  }

  v10 = [WFFileLocationUtilities parentItemsForItem:v7];
  v11 = [self canRepresentURL:lCopy item:v7 parentItems:v10];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (Class)supportedClassForURL:(id)l
{
  v26[7] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v26[2] = objc_opt_class();
  v26[3] = objc_opt_class();
  v26[4] = objc_opt_class();
  v26[5] = objc_opt_class();
  v26[6] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];
  v19 = 0;
  v5 = [WFFileLocationUtilities itemForURL:lCopy error:&v19];
  v6 = v19;
  if (!v5)
  {
    v7 = getWFFilesLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "+[WFFileProviderLocation supportedClassForURL:]";
      v22 = 2112;
      v23 = lCopy;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Could not create item from URL: %@ with error: %@", buf, 0x20u);
    }
  }

  v8 = [WFFileLocationUtilities parentItemsForItem:v5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__WFFileProviderLocation_supportedClassForURL___block_invoke;
  v15[3] = &unk_1E8379CC0;
  v16 = lCopy;
  v17 = v5;
  v18 = v8;
  v9 = v8;
  v10 = v5;
  v11 = lCopy;
  v12 = [v4 if_firstObjectPassingTest:v15];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)locationWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [representationCopy objectForKey:@"fileProviderDomainID"];
    v6 = [representationCopy objectForKey:@"crossDeviceItemID"];
    v7 = [representationCopy objectForKey:@"relativeSubpath"];
    v8 = [representationCopy objectForKey:@"appContainerBundleIdentifier"];
    v9 = [[self alloc] initWithFileProviderDomainID:v5 crossDeviceItemID:v6 appContainerBundleIdentifier:v8 relativeSubpath:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end