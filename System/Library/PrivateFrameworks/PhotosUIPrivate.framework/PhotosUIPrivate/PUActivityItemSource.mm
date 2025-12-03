@interface PUActivityItemSource
+ (BOOL)supportsAssetLocalIdentifierForActivityType:(id)type;
+ (OS_os_log)activityItemSourceLog;
+ (id)_basicTypeIdentifierForAsset:(id)asset;
+ (id)_exportResultHandlingQueue;
+ (id)_sharingErrorWithCode:(int64_t)code underlyingError:(id)error localizedDescription:(id)description additionalInfo:(id)info;
+ (void)_deleteOutputDirectoryURL:(id)l forSharingUUID:(id)d;
- ($9D9B13A340AA60ED2DD68408BD7D962F)sharingPreferences;
- (BOOL)_copyResourceAtURL:(id)l toURL:(id)rL shouldMove:(BOOL)move;
- (PUActivityItemSource)initWithAsset:(id)asset sharingPreferences:(id)preferences;
- (id)_activityOperationQueueForExplicitRunning;
- (id)_createManagedURLForResourceAtURL:(id)l shouldMove:(BOOL)move forType:(int64_t)type;
- (id)_generateURLForType:(int64_t)type withPathExtension:(id)extension preferredFilename:(id)filename;
- (id)_itemForActivityType:(id)type;
- (id)_newOperationForActivityType:(id)type;
- (id)_newPasteboardItemProviderForURL:(id)l;
- (id)_outboundResourcesDirectoryURL;
- (id)_resourceURLForType:(int64_t)type;
- (id)_runOnDemandExportForAsset:(id)asset withOptions:(id)options completionHandler:(id)handler;
- (id)_runOnDemandSingleFileExportForAsset:(id)asset withOptions:(id)options completionHandler:(id)handler;
- (id)_sharingVariants;
- (id)_uniformTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageDataForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerApplicationExtensionItem:(id)item;
- (id)activityViewControllerOperation:(id)operation;
- (void)_beginObservingExportRequest:(id)request withProgressHandler:(id)handler;
- (void)_fetchAlternateWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_fetchImageWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_fetchLivePhotoWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_fetchSharingVariants;
- (void)_fetchVideoWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_resetState;
- (void)_runExportRequestWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_setExportProgress:(id)progress;
- (void)_setResourceURL:(id)l forType:(int64_t)type;
- (void)_stopObservingExportRequest;
- (void)activityItemSourceOperation:(id)operation prepareItemForActivityType:(id)type;
- (void)assetExportRequest:(id)request didChangeToState:(unint64_t)state fromState:(unint64_t)fromState;
- (void)cancel;
- (void)cleanUpExportedFilesImmediately:(BOOL)immediately;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)runWithActivityType:(id)type;
- (void)setSharingPreferences:(id)preferences;
- (void)setState:(unint64_t)state;
- (void)signalAnchorCompletion;
@end

@implementation PUActivityItemSource

- ($9D9B13A340AA60ED2DD68408BD7D962F)sharingPreferences
{
  p_sharingPreferences = &self->_sharingPreferences;
  v3 = *&self->_sharingPreferences.excludeLiveness;
  preferredExportFormat = p_sharingPreferences->preferredExportFormat;
  result.var6 = preferredExportFormat;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = BYTE3(v3);
  result.var4 = BYTE4(v3);
  result.var5 = BYTE5(v3);
  return result;
}

- (void)cleanUpExportedFilesImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v23 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_sharingURLs removeAllObjects];
  _outboundResourcesDirectoryURL = [(PUActivityItemSource *)self _outboundResourcesDirectoryURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [_outboundResourcesDirectoryURL path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sharingUUID = self->_sharingUUID;
      *buf = 138543362;
      v22 = sharingUUID;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Scheduling removal of exported files", buf, 0xCu);
    }

    v11 = self->_sharingUUID;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PUActivityItemSource_cleanUpExportedFilesImmediately___block_invoke;
    aBlock[3] = &unk_1E7B80C38;
    v19 = _outboundResourcesDirectoryURL;
    v12 = v11;
    v20 = v12;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (immediatelyCopy)
    {
      (*(v13 + 2))(v13);
    }

    else
    {
      v15 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56__PUActivityItemSource_cleanUpExportedFilesImmediately___block_invoke_2;
      block[3] = &unk_1E7B80C88;
      v17 = v14;
      dispatch_async(v15, block);
    }
  }
}

- (void)_setResourceURL:(id)l forType:(int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  sharingURLs = self->_sharingURLs;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v9 = [(NSMutableDictionary *)sharingURLs objectForKeyedSubscript:v8];

  if (lCopy && v9)
  {
    v10 = PLShareSheetGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sharingUUID = self->_sharingUUID;
      v14 = 138544130;
      v15 = sharingUUID;
      v16 = 2048;
      typeCopy = type;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = lCopy;
      _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Overwriting sharing URL of type: %lu from %@ to %@", &v14, 0x2Au);
    }
  }

  v12 = self->_sharingURLs;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)v12 setObject:lCopy forKeyedSubscript:v13];
}

- (id)_resourceURLForType:(int64_t)type
{
  sharingURLs = self->_sharingURLs;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)sharingURLs objectForKeyedSubscript:v4];

  return v5;
}

- (id)_createManagedURLForResourceAtURL:(id)l shouldMove:(BOOL)move forType:(int64_t)type
{
  moveCopy = move;
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v12 = [(PUActivityItemSource *)self _generateURLForType:type withPathExtension:pathExtension preferredFilename:stringByDeletingPathExtension];
  v13 = lCopy;
  if ([(PUActivityItemSource *)self _copyResourceAtURL:v13 toURL:v12 shouldMove:moveCopy])
  {
    v14 = v12;
  }

  else
  {
    v15 = PLShareSheetGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sharingUUID = self->_sharingUUID;
      v18 = 138544130;
      v19 = sharingUUID;
      v20 = 2112;
      v21 = v13;
      v22 = 2048;
      typeCopy = type;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Failed to clone the URL (%@) for type %lu to outgoing temp (%@). Falling back to original URL which may cause failures in clients", &v18, 0x2Au);
    }

    v14 = v13;
  }

  return v14;
}

- (BOOL)_copyResourceAtURL:(id)l toURL:(id)rL shouldMove:(BOOL)move
{
  moveCopy = move;
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  path = [rLCopy path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v13 = [defaultManager createDirectoryIfNeededAtPath:stringByDeletingLastPathComponent error:&v33];
  v14 = v33;

  if ((v13 & 1) == 0)
  {
    v23 = PLShareSheetGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sharingUUID = self->_sharingUUID;
      *buf = 138543874;
      v35 = sharingUUID;
      v36 = 2112;
      v37 = stringByDeletingLastPathComponent;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Failed to create temporary outbound directory for sharing asset at %@: %@", buf, 0x20u);
    }

    goto LABEL_18;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [defaultManager2 removeItemAtURL:rLCopy error:0];

  if (v16)
  {
    v17 = PLShareSheetGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_sharingUUID;
      *buf = 138543618;
      v35 = v18;
      v36 = 2112;
      v37 = rLCopy;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Removed existing file at %@. This may indicate an error", buf, 0x16u);
    }
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = defaultManager3;
  if (moveCopy)
  {
    v32 = v14;
    v21 = [defaultManager3 moveItemAtURL:lCopy toURL:rLCopy error:&v32];
    v22 = v32;

    if ((v21 & 1) == 0)
    {
      v23 = PLShareSheetGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = self->_sharingUUID;
        *buf = 138544130;
        v35 = v24;
        v36 = 2112;
        v37 = lCopy;
        v38 = 2112;
        v39 = rLCopy;
        v40 = 2112;
        v41 = v22;
        v25 = "[Item: %{public}@] Failed to move resource at %@ to %@: %@";
LABEL_16:
        _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0x2Au);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v31 = v14;
    v27 = [defaultManager3 copyItemAtURL:lCopy toURL:rLCopy error:&v31];
    v22 = v31;

    if ((v27 & 1) == 0)
    {
      v23 = PLShareSheetGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = self->_sharingUUID;
        *buf = 138544130;
        v35 = v29;
        v36 = 2112;
        v37 = lCopy;
        v38 = 2112;
        v39 = rLCopy;
        v40 = 2112;
        v41 = v22;
        v25 = "[Item: %{public}@] Failed to copy resource at %@ to %@: %@";
        goto LABEL_16;
      }

LABEL_17:
      v14 = v22;
LABEL_18:

      v28 = 0;
      v22 = v14;
      goto LABEL_19;
    }
  }

  v28 = 1;
LABEL_19:

  return v28;
}

- (id)_generateURLForType:(int64_t)type withPathExtension:(id)extension preferredFilename:(id)filename
{
  v45 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  filenameCopy = filename;
  if (self->_assetOriginalFilenameBase)
  {
    goto LABEL_10;
  }

  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  originalMetadataProperties = [(PHAsset *)self->_asset originalMetadataProperties];
  originalFilename = [originalMetadataProperties originalFilename];

  if ([originalFilename length])
  {
    stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];
  }

  else
  {
    if ([filenameCopy length])
    {
      v14 = PLShareSheetGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sharingUUID = self->_sharingUUID;
        v35 = 138543618;
        v36 = sharingUUID;
        v37 = 2114;
        typeCopy = filenameCopy;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Asset does not have valid originalFilename, going with preferredFilename: %{public}@", &v35, 0x16u);
      }

      objc_storeStrong(&self->_assetOriginalFilenameBase, filename);
      goto LABEL_9;
    }

    filename = [(PHAsset *)self->_asset filename];
    v28 = [filename length];

    v29 = PLShareSheetGetLog();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v30)
      {
        v31 = self->_sharingUUID;
        filename2 = [(PHAsset *)self->_asset filename];
        v35 = 138543618;
        v36 = v31;
        v37 = 2114;
        typeCopy = filename2;
        _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Asset does not have valid originalFilename, going with library filename: %{public}@", &v35, 0x16u);
      }

      stringByDeletingPathExtension = [(PHAsset *)self->_asset filename];
    }

    else
    {
      if (v30)
      {
        v33 = self->_sharingUUID;
        uuid = [(PHAsset *)self->_asset uuid];
        v35 = 138543618;
        v36 = v33;
        v37 = 2114;
        typeCopy = uuid;
        _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Asset does not have valid originalFilename, going with UUID: %{public}@", &v35, 0x16u);
      }

      stringByDeletingPathExtension = [(PHAsset *)self->_asset uuid];
    }
  }

  assetOriginalFilenameBase = self->_assetOriginalFilenameBase;
  self->_assetOriginalFilenameBase = stringByDeletingPathExtension;

LABEL_9:
LABEL_10:
  if (type <= 5 && (((1 << type) & 0x2D) == 0 ? ((v17 = 0, type != 1) ? (v16 = @"Alternate") : (v16 = @"Compatible")) : (v16 = 0, v17 = 1), [(NSString *)self->_assetOriginalFilenameBase stringByAppendingPathExtension:extensionCopy], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    _outboundResourcesDirectoryURL = [(PUActivityItemSource *)self _outboundResourcesDirectoryURL];
    v21 = _outboundResourcesDirectoryURL;
    if ((v17 & 1) == 0)
    {
      v22 = [_outboundResourcesDirectoryURL URLByAppendingPathComponent:v16];

      v21 = v22;
    }

    v23 = [v21 URLByAppendingPathComponent:v19];
  }

  else
  {
    v19 = PLShareSheetGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_sharingUUID;
      asset = self->_asset;
      v35 = 138544386;
      v36 = v24;
      v37 = 2048;
      typeCopy = type;
      v39 = 2114;
      v40 = extensionCopy;
      v41 = 2114;
      v42 = filenameCopy;
      v43 = 2114;
      v44 = asset;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Could not generate a valid URL for a PUActivityItemSource resource type %ld, with path extension: %{public}@, preferred filename: %{public}@ for asset: %{public}@", &v35, 0x34u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)_outboundResourcesDirectoryURL
{
  systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [systemLibraryPathManager privateDirectoryWithSubType:2 createIfNeeded:1 error:0];

  v5 = [v4 stringByAppendingPathComponent:self->_sharingUUID];
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];

  return v6;
}

- (id)activityViewControllerOperation:(id)operation
{
  operationCopy = operation;
  if ([(PUActivityItemSource *)self shouldSkipPreparation])
  {
    if ([(PUActivityItemSource *)self shouldAnchorPreparation])
    {
      v5 = objc_alloc_init(PUActivityItemSourceAnchorOperation);
      anchorOperation = self->_anchorOperation;
      self->_anchorOperation = v5;

      v7 = self->_anchorOperation;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    activity = [operationCopy activity];
    activityType = [activity activityType];
    v7 = [(PUActivityItemSource *)self _newOperationForActivityType:activityType];
  }

  return v7;
}

- (id)activityViewControllerApplicationExtensionItem:(id)item
{
  v104 = *MEMORY[0x1E69E9840];
  val = item;
  v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithItem:0 typeIdentifier:0];
  asset = [(PUActivityItemSource *)self asset];
  sharingPreferences = [(PUActivityItemSource *)self sharingPreferences];
  v46 = v7;
  localIdentifier = [asset localIdentifier];
  activity = [val activity];
  activityType = [activity activityType];

  v52 = self->_sharingUUID;
  v9 = objc_opt_class();
  v10 = [v9 supportsAssetLocalIdentifierForActivityType:activityType];
  objc_initWeak(&location, self);
  objc_initWeak(&from, val);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke;
  aBlock[3] = &unk_1E7B742C8;
  aBlock[4] = self;
  aBlock[5] = v9;
  v50 = _Block_copy(aBlock);
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  onlyRegisterSingleItemProviderRepresentation = [mEMORY[0x1E69C3A18] onlyRegisterSingleItemProviderRepresentation];

  v49 = [(PUActivityItemSource *)self activityViewController:val dataTypeIdentifierForActivityType:activityType];
  if (v49)
  {
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_353;
    v88[3] = &unk_1E7B742F0;
    objc_copyWeak(&v92, &location);
    objc_copyWeak(&v93, &from);
    v94 = v10;
    v89 = localIdentifier;
    v13 = activityType;
    v90 = v13;
    v48 = v50;
    v91 = v48;
    [v4 registerItemForTypeIdentifier:v49 loadHandler:v88];

    objc_destroyWeak(&v93);
    objc_destroyWeak(&v92);
    playbackStyle = [asset playbackStyle];
    v15 = [asset isMediaSubtype:8];
    if (playbackStyle == 3)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (!(sharingPreferences & 1 | ((v16 & 1 | (v15 ^ v16) & (sharingPreferences >> 40) & 1) == 0) | onlyRegisterSingleItemProviderRepresentation & 1))
    {
      identifier = [*MEMORY[0x1E6982E80] identifier];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_358;
      v85[3] = &unk_1E7B74340;
      v86 = asset;
      v87 = v52;
      [v4 registerItemForTypeIdentifier:identifier loadHandler:v85];
    }

    if ((-[PUActivityItemSource sharingPreferences](self, "sharingPreferences") & 1) == 0 && v13 && !(onlyRegisterSingleItemProviderRepresentation & 1 | (([v13 isEqualToString:*MEMORY[0x1E69C3DF0]] & 1) == 0)))
    {
      v18 = PLShareSheetGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        sharingUUID = self->_sharingUUID;
        *buf = 138543618;
        v99 = sharingUUID;
        v100 = 2114;
        v101 = v13;
        _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Registering with item provider as asset bundle for activity: %{public}@.", buf, 0x16u);
      }

      contentType = [MEMORY[0x1E69C0668] contentType];
      identifier2 = [contentType identifier];
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_366;
      v80[3] = &unk_1E7B74390;
      objc_copyWeak(&v84, &location);
      v81 = v52;
      v82 = asset;
      v83 = v48;
      [v4 registerItemForTypeIdentifier:identifier2 loadHandler:v80];

      objc_destroyWeak(&v84);
    }

    _sharingVariants = [(PUActivityItemSource *)self _sharingVariants];
    v47 = [_sharingVariants objectForKeyedSubscript:&unk_1F2B7DA30];
    if (v47)
    {
      registeredTypeIdentifiers = [v4 registeredTypeIdentifiers];
      v24 = [registeredTypeIdentifiers containsObject:v47];

      if (((v24 | onlyRegisterSingleItemProviderRepresentation) & 1) == 0)
      {
        v25 = objc_alloc_init(MEMORY[0x1E69786B0]);
        [v25 setVariant:1];
        [v25 setShouldStripLocation:(sharingPreferences >> 8) & 1];
        [v25 setShouldStripCaption:(sharingPreferences >> 16) & 1];
        [v25 setShouldStripAccessibilityDescription:(sharingPreferences >> 24) & 1];
        if ((PHAssetExportRequestPassthroughConversionIsSupportedByType() & 1) != 0 || ([MEMORY[0x1E69786A8] exportRequestForAsset:asset variants:_sharingVariants error:0], v26 = objc_claimAutoreleasedReturnValue(), buf[0] = 0, objc_msgSend(v26, "preflightExportWithOptions:assetAvailability:isProcessingRequired:fileURLs:info:", v25, 0, buf, 0, 0), v27 = buf[0], v26, (v27 & 1) == 0))
        {
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_375;
          v74[3] = &unk_1E7B743B8;
          objc_copyWeak(&v79, &location);
          v75 = asset;
          v76 = v25;
          v77 = v52;
          v78 = v48;
          [v4 registerItemForTypeIdentifier:v47 loadHandler:v74];

          objc_destroyWeak(&v79);
        }

        else
        {
          v28 = PLShareSheetGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v99 = v52;
            v100 = 2114;
            v101 = v47;
            _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_ERROR, "[Item: %{public}@] NSItemProvider: Not registering current format as the format %{public}@ could not be maintained after additional metadata processing", buf, 0x16u);
          }
        }
      }
    }

    v31 = [_sharingVariants objectForKeyedSubscript:&unk_1F2B7DA18];
    if (v31)
    {
      registeredTypeIdentifiers2 = [v4 registeredTypeIdentifiers];
      v33 = [registeredTypeIdentifiers2 containsObject:v31];

      if (((v33 | onlyRegisterSingleItemProviderRepresentation) & 1) == 0)
      {
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_378;
        v69[3] = &unk_1E7B743E0;
        objc_copyWeak(v73, &location);
        v73[1] = sharingPreferences;
        v73[2] = v46;
        v70 = asset;
        v71 = v52;
        v72 = v48;
        [v4 registerItemForTypeIdentifier:v31 loadHandler:v69];

        objc_destroyWeak(v73);
      }
    }

    v34 = [_sharingVariants objectForKeyedSubscript:&unk_1F2B7DA00];
    v35 = v34;
    if (v13)
    {
      v36 = [PUActivityItemSourceConfiguration shouldExcludeAlternateVariantForActivityType:v13];
      if (!v35)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v36 = 1;
      if (!v34)
      {
LABEL_34:
        if (!(onlyRegisterSingleItemProviderRepresentation & 1 | (([asset isVideo] & 1) == 0)))
        {
          v39 = PLShareSheetGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = self->_sharingUUID;
            *buf = 138543362;
            v99 = v40;
            _os_log_impl(&dword_1B36F3000, v39, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Registering video resource as AVURLAsset", buf, 0xCu);
          }

          v41 = objc_opt_class();
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_386;
          v59[3] = &unk_1E7B74430;
          v60 = v52;
          objc_copyWeak(&v63, &location);
          v61 = asset;
          v62 = v48;
          [v4 registerObjectOfClass:v41 visibility:0 loadHandler:v59];

          objc_destroyWeak(&v63);
        }

        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_389;
        v55[3] = &unk_1E7B74458;
        objc_copyWeak(&v57, &location);
        objc_copyWeak(&v58, &from);
        v56 = v48;
        [v4 setPreviewImageHandler:v55];
        v42 = PLShareSheetGetLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = self->_sharingUUID;
          registeredTypeIdentifiers3 = [v4 registeredTypeIdentifiers];
          *buf = 138543618;
          v99 = v43;
          v100 = 2114;
          v101 = registeredTypeIdentifiers3;
          _os_log_impl(&dword_1B36F3000, v42, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Registered type identifiers (in order): %{public}@", buf, 0x16u);
        }

        v30 = v4;
        objc_destroyWeak(&v58);
        objc_destroyWeak(&v57);

        goto LABEL_41;
      }
    }

    registeredTypeIdentifiers4 = [v4 registeredTypeIdentifiers];
    v38 = [registeredTypeIdentifiers4 containsObject:v35];

    if (((v38 | v36 | onlyRegisterSingleItemProviderRepresentation) & 1) == 0)
    {
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_380;
      v64[3] = &unk_1E7B74390;
      objc_copyWeak(&v68, &location);
      v65 = asset;
      v66 = v52;
      v67 = v48;
      [v4 registerItemForTypeIdentifier:v35 loadHandler:v64];

      objc_destroyWeak(&v68);
    }

    goto LABEL_34;
  }

  _sharingVariants = PLShareSheetGetLog();
  if (os_log_type_enabled(_sharingVariants, OS_LOG_TYPE_FAULT))
  {
    v29 = self->_sharingUUID;
    *buf = 138543874;
    v99 = v29;
    v100 = 2114;
    v101 = localIdentifier;
    v102 = 2112;
    v103 = activityType;
    _os_log_impl(&dword_1B36F3000, _sharingVariants, OS_LOG_TYPE_FAULT, "[Item: %{public}@] No type identifier for asset: %{public}@ activity type: %@", buf, 0x20u);
  }

  v30 = 0;
LABEL_41:

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v30;
}

id __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 40) _sharingErrorWithCode:-103 underlyingError:0 localizedDescription:@"An instance of UIActivityViewController was not available." additionalInfo:0];
  v5 = PLShareSheetGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 136);
    v8 = 138543874;
    v9 = v6;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Error %@: %@", &v8, 0x20u);
  }

  return v4;
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_353(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = v4;
  if (WeakRetained && v4)
  {
    if (*(a1 + 72) == 1)
    {
      (*(v8 + 2))(v8, *(a1 + 32), 0);
      goto LABEL_8;
    }

    v6 = [WeakRetained activityViewController:v4 itemForActivityType:*(a1 + 40)];
    v7 = *(v8 + 2);
  }

  else
  {
    v6 = (*(*(a1 + 48) + 16))();
    v7 = *(v8 + 2);
  }

  v7();

LABEL_8:
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_358(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = a2;
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69788D8]);
    [v6 setDeliveryMode:1];
    v7 = [MEMORY[0x1E6978860] defaultManager];
    v8 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2;
    v12[3] = &unk_1E7B74318;
    v14 = v5;
    v13 = *(a1 + 40);
    [v7 requestLivePhotoForAsset:v8 targetSize:0 contentMode:v6 options:v12 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = NSStringFromClass(a3);
    v11 = [v9 ph_genericErrorWithLocalizedDescription:{@"Unexpected value class (%@)", v10}];

    (*(v5 + 2))(v5, 0, v11);
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_366(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _resourceURLForType:5];
      v7 = PLShareSheetGetLog();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = *(a1 + 32);
          v10 = [MEMORY[0x1E69C0668] contentType];
          *buf = 138543874;
          v21 = v9;
          v22 = 2114;
          v23 = v6;
          v24 = 2114;
          v25 = v10;
          _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Already have asset bundle at %{public}@ for item provider providing %{public}@", buf, 0x20u);
        }

        v3[2](v3, v6, 0);
      }

      else
      {
        if (v8)
        {
          v11 = *(a1 + 32);
          v12 = [MEMORY[0x1E69C0668] contentType];
          *buf = 138543618;
          v21 = v11;
          v22 = 2114;
          v23 = v12;
          _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: On-demand export required to generate asset bundle for item provider providing %{public}@", buf, 0x16u);
        }

        v13 = objc_alloc_init(MEMORY[0x1E69786B0]);
        [v13 setVariant:1];
        [v13 setIncludeAllAssetResources:1];
        [v13 setShouldBundleComplexAssetResources:1];
        v14 = *(a1 + 40);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_368;
        v16[3] = &unk_1E7B74368;
        v17 = v5;
        v18 = *(a1 + 32);
        v19 = v3;
        v15 = [v17 _runOnDemandExportForAsset:v14 withOptions:v13 completionHandler:v16];
      }
    }

    else
    {
      v6 = (*(*(a1 + 48) + 16))();
      (v3)[2](v3, 0, v6);
    }
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_375(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _resourceURLForType:0];
      if (v6)
      {
        v3[2](v3, v6, 0);
      }

      else
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2_376;
        v10[3] = &unk_1E7B74408;
        v11 = v5;
        v13 = v3;
        v12 = *(a1 + 48);
        v9 = [v11 _runOnDemandSingleFileExportForAsset:v7 withOptions:v8 completionHandler:v10];
      }
    }

    else
    {
      v6 = (*(*(a1 + 56) + 16))();
      (v3)[2](v3, 0, v6);
    }
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_378(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _resourceURLForType:1];
      if (v6)
      {
        v3[2](v3, v6, 0);
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x1E69786B0]);
        [v7 setVariant:2];
        [v7 setShouldStripLocation:*(a1 + 65)];
        [v7 setShouldStripCaption:*(a1 + 66)];
        [v7 setShouldStripAccessibilityDescription:*(a1 + 67)];
        v8 = *(a1 + 32);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2_379;
        v10[3] = &unk_1E7B74408;
        v11 = v5;
        v13 = v3;
        v12 = *(a1 + 40);
        v9 = [v11 _runOnDemandSingleFileExportForAsset:v8 withOptions:v7 completionHandler:v10];
      }
    }

    else
    {
      v6 = (*(*(a1 + 48) + 16))();
      (v3)[2](v3, 0, v6);
    }
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_380(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained _resourceURLForType:4];
      if (v6)
      {
        v3[2](v3, v6, 0);
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x1E69786B0]);
        [v7 setVariant:3];
        v8 = *(a1 + 32);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2_381;
        v10[3] = &unk_1E7B74408;
        v11 = v5;
        v13 = v3;
        v12 = *(a1 + 40);
        v9 = [v11 _runOnDemandSingleFileExportForAsset:v8 withOptions:v7 completionHandler:v10];
      }
    }

    else
    {
      v6 = (*(*(a1 + 48) + 16))();
      (v3)[2](v3, 0, v6);
    }
  }
}

id __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_386(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLShareSheetGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v22 = v5;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Providing original video resource as AVURLAsset", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _resourceURLForType:0];
      v9 = PLShareSheetGetLog();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = *(a1 + 32);
          *buf = 138543362;
          v22 = v11;
          _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Original video resource already exists for AVURLAsset", buf, 0xCu);
        }

        v12 = [MEMORY[0x1E6988168] assetWithURL:v8];
        v3[2](v3, v12, 0);
        v13 = 0;
      }

      else
      {
        if (v10)
        {
          v14 = *(a1 + 32);
          *buf = 138543362;
          v22 = v14;
          _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Original video resource doesn't exist for AVURLAsset, exporting...", buf, 0xCu);
        }

        v12 = objc_alloc_init(MEMORY[0x1E69786B0]);
        [v12 setShouldStripLocation:{(objc_msgSend(v7, "sharingPreferences") >> 8) & 1}];
        [v12 setShouldStripCaption:{(objc_msgSend(v7, "sharingPreferences") >> 16) & 1}];
        [v12 setVariant:1];
        v15 = *(a1 + 40);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_387;
        v17[3] = &unk_1E7B74408;
        v18 = v7;
        v19 = *(a1 + 32);
        v20 = v3;
        v13 = [v18 _runOnDemandSingleFileExportForAsset:v15 withOptions:v12 completionHandler:v17];
      }
    }

    else
    {
      v8 = (*(*(a1 + 48) + 16))();
      (v3)[2](v3, 0, v8);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_389(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v4)
  {
    v5 = [v4 activity];
    v6 = [v4 activity];
    [v6 _thumbnailSize];
    v8 = v7;
    v10 = v9;

    v11 = [v5 activityType];
    v12 = [WeakRetained activityViewController:v4 thumbnailImageDataForActivityType:v11 suggestedSize:{v8, v10}];

    v13 = [MEMORY[0x1E69DCAB8] imageWithData:v12];
    v3[2](v3, v13, 0);

    v3 = v12;
  }

  else
  {
    v5 = (*(*(a1 + 32) + 16))();
    (v3)[2](v3, 0, v5);
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_387(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) _createManagedURLForResourceAtURL:v5 shouldMove:0 forType:0];
    v8 = PLShareSheetGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Original video resource exported for AVURLAsset as %{public}@ from URL: %{public}@", &v12, 0x20u);
    }

    v10 = [MEMORY[0x1E6988168] assetWithURL:v7];
  }

  else
  {
    v7 = PLShareSheetGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "[Item: %{public}@] NSItemProvider: Error providing original video resource as AVURLAsset: %{public}@", &v12, 0x16u);
    }

    v10 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2_381(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) _createManagedURLForResourceAtURL:a2 shouldMove:0 forType:4];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    if (!v5)
    {
      goto LABEL_4;
    }

    v6 = PLShareSheetGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "[Item: %{public}@] NSItemProvider: Error from alternate-variant export request %@", &v8, 0x16u);
    }
  }

LABEL_4:
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2_379(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7)
  {
    v8 = [*(a1 + 32) _createManagedURLForResourceAtURL:v7 shouldMove:0 forType:1];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
  if (v6)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "[Item: %{public}@] NSItemProvider: Error from compatible-variant export request %@", &v11, 0x16u);
    }
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2_376(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7)
  {
    v8 = [*(a1 + 32) _createManagedURLForResourceAtURL:v7 shouldMove:0 forType:0];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
  if (v6)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "[Item: %{public}@] NSItemProvider: Error from current-variant export request %@", &v11, 0x16u);
    }
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_368(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978B68]];
  if (v7)
  {
    v8 = [*(a1 + 32) _createManagedURLForResourceAtURL:v7 shouldMove:0 forType:5];
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [MEMORY[0x1E69C0668] contentType];
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v8;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] NSItemProvider: Created asset bundle at %{public}@ for item provider providing %{public}@", &v17, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
  if (v6)
  {
    v12 = PLShareSheetGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = [v5 count];
      v15 = [v5 allKeys];
      v16 = [v15 componentsJoinedByString:{@", "}];
      v17 = 138544130;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      v21 = 2048;
      v22 = v14;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "[Item: %{public}@] NSItemProvider: Error from export request %@. %lu file urls returned: [%{public}@]", &v17, 0x2Au);
    }
  }
}

void __71__PUActivityItemSource_activityViewControllerApplicationExtensionItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6978DF0];
  v6 = a2;
  v7 = [a3 objectForKeyedSubscript:v5];
  (*(*(a1 + 40) + 16))();

  if (v7)
  {
    v8 = PLShareSheetGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Error fetching live photo %@", &v10, 0x16u);
    }
  }
}

- (id)_runOnDemandSingleFileExportForAsset:(id)asset withOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PUActivityItemSource__runOnDemandSingleFileExportForAsset_withOptions_completionHandler___block_invoke;
  v12[3] = &unk_1E7B742A0;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(PUActivityItemSource *)self _runOnDemandExportForAsset:asset withOptions:options completionHandler:v12];

  return v10;
}

void __91__PUActivityItemSource__runOnDemandSingleFileExportForAsset_withOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x1E6978B98];
  v6 = a3;
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:v5];
  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978BA0]];

  v9 = v8;
  if (!v8)
  {
    v9 = v13;
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v12 = v8;
  v11(v10, v9, v6);
}

- (id)_runOnDemandExportForAsset:(id)asset withOptions:(id)options completionHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v19 = 0;
    v11 = [MEMORY[0x1E69786A8] exportRequestForAsset:assetCopy error:&v19];
    v12 = v19;
    if (v11)
    {
      [(NSMutableSet *)self->_onDemandExports addObject:v11];
      objc_initWeak(&location, v11);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __81__PUActivityItemSource__runOnDemandExportForAsset_withOptions_completionHandler___block_invoke;
      v15[3] = &unk_1E7B74278;
      v15[4] = self;
      objc_copyWeak(&v17, &location);
      v16 = handlerCopy;
      [v11 exportWithOptions:optionsCopy completionHandler:v15];
      progress = [v11 progress];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v12);
      progress = 0;
    }
  }

  else
  {
    progress = 0;
  }

  return progress;
}

void __81__PUActivityItemSource__runOnDemandExportForAsset_withOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 120);
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v6 removeObject:WeakRetained];

  (*(*(a1 + 40) + 16))();
  if (v5)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1 + 32) + 136);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Error on-demand export %@", &v11, 0x16u);
    }
  }
}

- (id)activityViewController:(id)controller thumbnailImageDataForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v29 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  typeCopy = type;
  PLPhysicalScreenScale();
  v12 = v11;
  v13 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v13 setVersion:self->_sharingPreferences.shareAsUnmodifiedOriginal];
  [v13 setSynchronous:1];
  [v13 setDeliveryMode:1];
  [v13 setResizeMode:2];
  v14 = PLShareSheetGetLog();
  v15 = width * v12;
  v16 = height * v12;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sharingUUID = self->_sharingUUID;
    v31.width = width;
    v31.height = height;
    v18 = NSStringFromCGSize(v31);
    v32.width = v15;
    v32.height = v16;
    v19 = NSStringFromCGSize(v32);
    asset = self->_asset;
    *buf = 138544130;
    *&buf[4] = sharingUUID;
    *&buf[12] = 2114;
    *&buf[14] = v18;
    *&buf[22] = 2114;
    v27 = v19;
    LOWORD(v28) = 2114;
    *(&v28 + 2) = asset;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Fetching thumbnail image data of suggested size %{public}@ (scaled for screen: %{public}@) for asset: %{public}@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__2314;
  *&v28 = __Block_byref_object_dispose__2315;
  *(&v28 + 1) = 0;
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v22 = self->_asset;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __95__PUActivityItemSource_activityViewController_thumbnailImageDataForActivityType_suggestedSize___block_invoke;
  v25[3] = &unk_1E7B74250;
  v25[4] = self;
  v25[5] = buf;
  [defaultManager requestImageForAsset:v22 targetSize:1 contentMode:v13 options:v25 resultHandler:{v15, v16}];
  v23 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v23;
}

void __95__PUActivityItemSource_activityViewController_thumbnailImageDataForActivityType_suggestedSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!v5)
  {
    v9 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    v11 = PLShareSheetGetLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    v17 = *(*(a1 + 32) + 136);
    v18 = 138543618;
    v19 = v17;
    v20 = 2112;
    v21 = v9;
    v13 = "[Item: %{public}@] Error fetching thumbnail image data: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
LABEL_6:
    _os_log_impl(&dword_1B36F3000, v14, v15, v13, &v18, v16);
    goto LABEL_7;
  }

  v6 = _UIImageJPEGRepresentation();
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = PLShareSheetGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 32) + 136);
    [v5 size];
    v11 = NSStringFromCGSize(v25);
    v12 = [*(*(*(a1 + 40) + 8) + 40) length];
    v18 = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v22 = 2050;
    v23 = v12;
    v13 = "[Item: %{public}@] Fetched thumbnail image of size %{public}@. (JPEG file size: %{public}lu bytes)";
    v14 = v9;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 32;
    goto LABEL_6;
  }

LABEL_8:
}

- (id)activityViewController:(id)controller dataTypeIdentifierForActivityType:(id)type
{
  typeCopy = type;
  v7 = typeCopy;
  if (typeCopy)
  {
    activityType = typeCopy;
  }

  else
  {
    activity = [controller activity];
    activityType = [activity activityType];
  }

  v10 = [(PUActivityItemSource *)self _uniformTypeIdentifierForActivityType:activityType];

  return v10;
}

- (void)assetExportRequest:(id)request didChangeToState:(unint64_t)state fromState:(unint64_t)fromState
{
  if (state)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PUActivityItemSource_assetExportRequest_didChangeToState_fromState___block_invoke;
    v5[3] = &__block_descriptor_40_e39_v16__0___PUMutableActivityItemSource__8l;
    v5[4] = state;
    [(PUActivityItemSource *)self performChanges:v5, state, fromState];
  }
}

uint64_t __70__PUActivityItemSource_assetExportRequest_didChangeToState_fromState___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [a2 setState:v2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PUActivityItemSourceProgressContext)
  {
    px_dispatch_on_main_queue();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUActivityItemSource;
    [(PUActivityItemSource *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

void __71__PUActivityItemSource_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _exportProgress];
  v3 = v2;
  if (v2)
  {
    [v2 fractionCompleted];
    if (v4 < 1.0)
    {
      v7 = 0;
      v5 = [*(a1 + 32) _exportProgressHandler];

      if (v5)
      {
        v6 = [*(a1 + 32) _exportProgressHandler];
        [v3 fractionCompleted];
        (v6)[2](v6, &v7);

        if (v7)
        {
          [v3 cancel];
        }
      }
    }
  }
}

- (void)_stopObservingExportRequest
{
  _assetExportRequest = [(PUActivityItemSource *)self _assetExportRequest];
  [_assetExportRequest setDelegate:0];
  [(PUActivityItemSource *)self _setAssetExportRequest:0];
  [(PUActivityItemSource *)self _setExportProgress:0];
  [(PUActivityItemSource *)self _setExportProgressHandler:0];
}

- (void)_beginObservingExportRequest:(id)request withProgressHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  progress = [requestCopy progress];
  [(PUActivityItemSource *)self _setAssetExportRequest:requestCopy];
  [(PUActivityItemSource *)self _setExportProgressHandler:handlerCopy];

  [(PUActivityItemSource *)self _setExportProgress:progress];
  [requestCopy setDelegate:self];
}

- (id)_itemForActivityType:(id)type
{
  v21[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  exportConfiguration = [(PUActivityItemSource *)self exportConfiguration];
  outputType = [exportConfiguration outputType];
  switch(outputType)
  {
    case 3:
      asset = [(PUActivityItemSource *)self asset];
      goto LABEL_7;
    case 2:
      asset = [(PUActivityItemSource *)self _assetsLibraryURL];
      goto LABEL_7;
    case 1:
      asset = [(PUActivityItemSource *)self _pasteboardItemProvider];
LABEL_7:
      v8 = asset;
      goto LABEL_30;
  }

  assetExportKind = [exportConfiguration assetExportKind];
  v10 = assetExportKind;
  if (assetExportKind != 3)
  {
    if (assetExportKind != 4)
    {
      v8 = 0;
      goto LABEL_13;
    }

    v10 = 5;
  }

  v8 = [(PUActivityItemSource *)self _resourceURLForType:v10];
LABEL_13:
  assetExportRequestOptions = [exportConfiguration assetExportRequestOptions];
  if ([assetExportRequestOptions shouldExportUnmodifiedOriginalResources])
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E69C3DA0]])
    {
      asset2 = [(PUActivityItemSource *)self asset];
      canPlayPhotoIris = [asset2 canPlayPhotoIris];

      if (canPlayPhotoIris)
      {
        v14 = [(PUActivityItemSource *)self _resourceURLForType:0];
        v15 = [(PUActivityItemSource *)self _resourceURLForType:2];
        v16 = v15;
        if (v14 && v15)
        {
          v21[0] = v14;
          v21[1] = v15;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

          v8 = v17;
        }
      }
    }
  }

  variant = [assetExportRequestOptions variant];
  if (v8 || variant != 3)
  {
    if (v8 || variant != 2)
    {
      goto LABEL_27;
    }

    v19 = 1;
  }

  else
  {
    v19 = 4;
  }

  v8 = [(PUActivityItemSource *)self _resourceURLForType:v19];
LABEL_27:
  if (!v8)
  {
    v8 = [(PUActivityItemSource *)self _resourceURLForType:0];
  }

LABEL_30:

  return v8;
}

- (void)_fetchAlternateWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  typeCopy = type;
  optionsCopy = options;
  activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
  signpostId = [(PUActivityItemSource *)self signpostId];
  v16 = activityItemSourceLog;
  v17 = v16;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "FetchItemAlternate", " enableTelemetry=YES ", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PUActivityItemSource__fetchAlternateWithOptions_forActivityType_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B74208;
  v23 = completionHandlerCopy;
  v24 = signpostId;
  v22 = v17;
  v18 = completionHandlerCopy;
  v19 = v17;
  v20 = _Block_copy(aBlock);
  [(PUActivityItemSource *)self _runExportRequestWithOptions:optionsCopy forActivityType:typeCopy progressHandler:handlerCopy completionHandler:v20];
}

void __101__PUActivityItemSource__fetchAlternateWithOptions_forActivityType_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchItemAlternate", " enableTelemetry=YES ", v13, 2u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, a4);
  }
}

- (void)_fetchLivePhotoWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  typeCopy = type;
  optionsCopy = options;
  activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
  signpostId = [(PUActivityItemSource *)self signpostId];
  v16 = activityItemSourceLog;
  v17 = v16;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "FetchItemLivePhoto", " enableTelemetry=YES ", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__PUActivityItemSource__fetchLivePhotoWithOptions_forActivityType_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B74208;
  v23 = completionHandlerCopy;
  v24 = signpostId;
  v22 = v17;
  v18 = completionHandlerCopy;
  v19 = v17;
  v20 = _Block_copy(aBlock);
  [(PUActivityItemSource *)self _runExportRequestWithOptions:optionsCopy forActivityType:typeCopy progressHandler:handlerCopy completionHandler:v20];
}

void __101__PUActivityItemSource__fetchLivePhotoWithOptions_forActivityType_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchItemLivePhoto", " enableTelemetry=YES ", v13, 2u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, a4);
  }
}

- (void)_fetchVideoWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  typeCopy = type;
  optionsCopy = options;
  activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
  signpostId = [(PUActivityItemSource *)self signpostId];
  v16 = activityItemSourceLog;
  v17 = v16;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "FetchItemVideo", " enableTelemetry=YES ", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PUActivityItemSource__fetchVideoWithOptions_forActivityType_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B74208;
  v23 = completionHandlerCopy;
  v24 = signpostId;
  v22 = v17;
  v18 = completionHandlerCopy;
  v19 = v17;
  v20 = _Block_copy(aBlock);
  [(PUActivityItemSource *)self _runExportRequestWithOptions:optionsCopy forActivityType:typeCopy progressHandler:handlerCopy completionHandler:v20];
}

void __97__PUActivityItemSource__fetchVideoWithOptions_forActivityType_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchItemVideo", " enableTelemetry=YES ", v13, 2u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, a4);
  }
}

- (void)_fetchImageWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  typeCopy = type;
  optionsCopy = options;
  activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
  signpostId = [(PUActivityItemSource *)self signpostId];
  v16 = activityItemSourceLog;
  v17 = v16;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v17, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "FetchItemImage", " enableTelemetry=YES ", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PUActivityItemSource__fetchImageWithOptions_forActivityType_progressHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B74208;
  v23 = completionHandlerCopy;
  v24 = signpostId;
  v22 = v17;
  v18 = completionHandlerCopy;
  v19 = v17;
  v20 = _Block_copy(aBlock);
  [(PUActivityItemSource *)self _runExportRequestWithOptions:optionsCopy forActivityType:typeCopy progressHandler:handlerCopy completionHandler:v20];
}

void __97__PUActivityItemSource__fetchImageWithOptions_forActivityType_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_END, v11, "FetchItemImage", " enableTelemetry=YES ", v13, 2u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, a4);
  }
}

- (void)_runExportRequestWithOptions:(id)options forActivityType:(id)type progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v35 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  typeCopy = type;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  asset = self->_asset;
  cachedSharingVariants = self->_cachedSharingVariants;
  v30 = 0;
  v16 = [MEMORY[0x1E69786A8] exportRequestForAsset:asset variants:cachedSharingVariants error:&v30];
  v17 = v30;
  if (v16)
  {
    [v16 setShouldSendTimingIntervalsToAnalytics:{-[PUActivityItemSource shouldSendAnalyticsInterval](self, "shouldSendAnalyticsInterval")}];
    [v16 setAnalyticsActivityType:typeCopy];
    variants = [v16 variants];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "variant")}];
    v20 = [variants objectForKeyedSubscript:v19];
    v21 = v20 == 0;

    if (v21)
    {
      v22 = PLShareSheetGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sharingUUID = self->_sharingUUID;
        *buf = 138543362;
        v32 = sharingUUID;
        _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Requested variant unavailable for sharing, using current", buf, 0xCu);
      }

      [optionsCopy setVariant:1];
    }

    variant = [optionsCopy variant];
    [(PUActivityItemSource *)self _beginObservingExportRequest:v16 withProgressHandler:handlerCopy];
    objc_initWeak(buf, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__PUActivityItemSource__runExportRequestWithOptions_forActivityType_progressHandler_completionHandler___block_invoke;
    v27[3] = &unk_1E7B741E0;
    objc_copyWeak(v29, buf);
    v27[4] = self;
    v28 = completionHandlerCopy;
    v29[1] = variant;
    [v16 exportWithOptions:optionsCopy completionHandler:v27];

    objc_destroyWeak(v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v25 = PLShareSheetGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = self->_sharingUUID;
      *buf = 138543618;
      v32 = v26;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Failed to create PHAssetExportRequest: %@", buf, 0x16u);
    }

    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v17, 0);
  }
}

void __103__PUActivityItemSource__runExportRequestWithOptions_forActivityType_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stopObservingExportRequest];

  if (v6)
  {
    v8 = [v6 domain];
    if (![v8 isEqualToString:*MEMORY[0x1E6978B70]])
    {
LABEL_6:

      goto LABEL_7;
    }

    v9 = [v6 code];

    if (v9 == 1)
    {
      v8 = PLShareSheetGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 136);
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] User cancelled during asset export.", &v11, 0xCu);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
}

- (void)activityItemSourceOperation:(id)operation prepareItemForActivityType:(id)type
{
  v235 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  typeCopy = type;
  [(PUActivityItemSource *)self setLastPreparationError:0];
  activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
  signpostId = [(PUActivityItemSource *)self signpostId];
  v8 = activityItemSourceLog;
  v9 = v8;
  spid = signpostId;
  v141 = signpostId - 1;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "PrepareItem", " enableTelemetry=YES ", buf, 2u);
  }

  v166 = v9;

  uuid = [(PHAsset *)self->_asset uuid];
  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  originalMetadataProperties = [(PHAsset *)self->_asset originalMetadataProperties];
  originalFilename = [originalMetadataProperties originalFilename];

  v155 = [MEMORY[0x1E6978630] descriptionForMediaType:{-[PHAsset mediaType](self->_asset, "mediaType")}];
  v154 = [MEMORY[0x1E6978630] descriptionForMediaSubtypes:{-[PHAsset mediaSubtypes](self->_asset, "mediaSubtypes")}];
  v153 = [MEMORY[0x1E6978630] descriptionForPlaybackStyle:{-[PHAsset playbackStyle](self->_asset, "playbackStyle")}];
  v11 = PLShareSheetGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sharingUUID = self->_sharingUUID;
    v13 = [(__CFString *)originalFilename length];
    v14 = @"<Missing>";
    *buf = 138544898;
    if (v13)
    {
      v14 = originalFilename;
    }

    v210 = sharingUUID;
    v211 = 2114;
    v212 = uuid;
    v213 = 2114;
    v214 = v155;
    v215 = 2114;
    v216 = v154;
    v217 = 2114;
    v218 = v153;
    v219 = 2114;
    v220 = v14;
    v221 = 2114;
    v222 = typeCopy;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Preparing asset %{public}@ (Type: %{public}@, Subtypes: %{public}@, Playback style: %{public}@, Primary Filename: %{public}@) for sharing to activity type: %{public}@", buf, 0x48u);
  }

  sharingPreferences = [(PUActivityItemSource *)self sharingPreferences];
  v146 = v16;
  v147 = sharingPreferences;
  _sharingVariants = [(PUActivityItemSource *)self _sharingVariants];
  v146 = [[PUActivityItemSourceConfiguration alloc] initWithAsset:self->_asset availableSharingVariants:_sharingVariants activityType:typeCopy preferences:v147, v146];
  assetExportRequestOptions = [(PUActivityItemSourceConfiguration *)v146 assetExportRequestOptions];
  [assetExportRequestOptions setShouldBundleComplexAssetResources:1];
  _exportResultHandlingQueue = [objc_opt_class() _exportResultHandlingQueue];
  [assetExportRequestOptions setResultHandlerQueue:_exportResultHandlingQueue];

  exportConfiguration = [(PUActivityItemSource *)self exportConfiguration];
  activityType = [exportConfiguration activityType];

  if (activityType && ([activityType isEqualToString:typeCopy] & 1) == 0)
  {
    v19 = PLShareSheetGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_sharingUUID;
      *buf = 138543874;
      v210 = v20;
      v211 = 2114;
      v212 = typeCopy;
      v213 = 2114;
      v214 = activityType;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Re-using activity item source for activity type: %{public}@ (Previously: %{public}@)", buf, 0x20u);
    }
  }

  exportConfiguration2 = [(PUActivityItemSource *)self exportConfiguration];
  if (exportConfiguration2)
  {
    exportConfiguration3 = [(PUActivityItemSource *)self exportConfiguration];
    v23 = [exportConfiguration3 isEqual:v146];

    if ((v23 & 1) == 0)
    {
      v24 = PLShareSheetGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->_sharingUUID;
        *buf = 138543874;
        v210 = v25;
        v211 = 2114;
        v212 = typeCopy;
        v213 = 2114;
        v214 = activityType;
        _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Export configuration (for activity %{public}@) does not match previous export configuration (for activity %{public}@). Deleting already-exported files.", buf, 0x20u);
      }

      [(PUActivityItemSource *)self cleanUpExportedFilesImmediately:1];
    }
  }

  [(PUActivityItemSource *)self setExportConfiguration:v146];
  requiresAssetExport = [(PUActivityItemSourceConfiguration *)v146 requiresAssetExport];
  variant = [assetExportRequestOptions variant];
  variant2 = [assetExportRequestOptions variant];
  v29 = variant2;
  v203 = 0;
  v204 = &v203;
  if (variant == 3)
  {
    v30 = 4;
  }

  else
  {
    v30 = variant2 == 2;
  }

  v205 = 0x2020000000;
  v206 = v30;
  v134 = v30;
  if (requiresAssetExport)
  {
    v31 = [(PUActivityItemSource *)self _resourceURLForType:?];
    if (v31)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v31 path];
      v140 = [defaultManager fileExistsAtPath:path];
    }

    else
    {
      v140 = 0;
    }
  }

  else
  {
    v140 = 1;
  }

  assetExportKind = [(PUActivityItemSourceConfiguration *)v146 assetExportKind];
  v199 = 0;
  v200 = &v199;
  v201 = 0x2020000000;
  v137 = assetExportKind == 3;
  if (assetExportKind == 3)
  {
    v35 = [(PUActivityItemSource *)self _resourceURLForType:3];
    v36 = v35 == 0;

    assetExportKind = 3;
  }

  else
  {
    v36 = 0;
  }

  v202 = v36;
  v195 = 0;
  v196 = &v195;
  v197 = 0x2020000000;
  v145 = assetExportKind;
  v136 = assetExportKind == 4;
  if (assetExportKind == 4)
  {
    v37 = [(PUActivityItemSource *)self _resourceURLForType:5];
    v38 = v37 == 0;
  }

  else
  {
    v38 = 0;
  }

  v198 = v38;
  outputType = [(PUActivityItemSourceConfiguration *)v146 outputType];
  if (outputType == 2)
  {
    _assetsLibraryURL = [(PUActivityItemSource *)self _assetsLibraryURL];
    v139 = _assetsLibraryURL != 0;

    if (v139)
    {
      v41 = @"YES";
    }

    else
    {
      v41 = @"NO";
    }
  }

  else
  {
    v139 = 1;
    v41 = @"NO";
  }

  shouldExportUnmodifiedOriginalResources = [assetExportRequestOptions shouldExportUnmodifiedOriginalResources];
  v189 = 0;
  v190 = &v189;
  v191 = 0x3032000000;
  v192 = __Block_byref_object_copy__2314;
  v193 = __Block_byref_object_dispose__2315;
  v194 = 0;
  v152 = [PUActivityItemSourceConfiguration descriptionForOutputType:[(PUActivityItemSourceConfiguration *)v146 outputType]];
  v151 = [PUActivityItemSourceConfiguration descriptionForAssetExportKind:[(PUActivityItemSourceConfiguration *)v146 assetExportKind]];
  if (v29 == 2)
  {
    v42 = @"Compatible (HEIC/HEVC to JPG/MOV)";
  }

  else
  {
    v42 = @"Primary (original format)";
  }

  if (requiresAssetExport)
  {
    v43 = @"YES";
    if (!v140)
    {
      v43 = @"NO";
    }

    v44 = v43;

    v150 = v44;
  }

  else
  {
    v150 = @"n/a";
  }

  v45 = PLShareSheetGetLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v148 = self->_sharingUUID;
    v46 = @"NO";
    if (requiresAssetExport)
    {
      v46 = @"YES";
    }

    v47 = v46;

    v161 = v47;
    v48 = @"Alternate (for auto-loops to GIF)";
    if (variant != 3)
    {
      v48 = v42;
    }

    v143 = v48;
    v49 = @"NO";
    if (v145 == 3)
    {
      v49 = @"YES";
    }

    v50 = v49;

    v163 = v50;
    v51 = @"NO";
    if (v145 == 3)
    {
      if (*(v200 + 24))
      {
        v51 = @"NO";
      }

      else
      {
        v51 = @"YES";
      }
    }

    v52 = v51;

    v53 = v52;
    if (v145 == 4)
    {
      v54 = @"YES";
    }

    else
    {
      v54 = @"NO";
    }

    v55 = v54;

    v56 = v55;
    v57 = @"NO";
    if (v145 == 4)
    {
      if (*(v196 + 24))
      {
        v57 = @"NO";
      }

      else
      {
        v57 = @"YES";
      }
    }

    v58 = outputType == 2;
    v59 = v57;

    v60 = v59;
    if (v58)
    {
      v61 = @"YES";
    }

    else
    {
      v61 = @"NO";
    }

    v62 = v61;

    v63 = v62;
    v64 = v41;

    v65 = v64;
    if ([assetExportRequestOptions flattenSlomoVideos])
    {
      v66 = @"YES";
    }

    else
    {
      v66 = @"NO";
    }

    v67 = v66;

    v68 = v67;
    *buf = 138546434;
    v210 = v148;
    v211 = 2112;
    v212 = v152;
    v213 = 2112;
    v214 = v161;
    v215 = 2112;
    v216 = v151;
    v217 = 2112;
    v218 = v143;
    v219 = 2112;
    v220 = v150;
    v221 = 2112;
    v222 = v163;
    v223 = 2112;
    v224 = v53;
    v225 = 2112;
    v226 = v56;
    v227 = 2112;
    v228 = v60;
    v229 = 2112;
    v230 = v63;
    v231 = 2112;
    v232 = v65;
    v233 = 2112;
    v234 = v68;
    _os_log_impl(&dword_1B36F3000, v45, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Preparation pre-flight - Output type: %@ (requires asset export: %@), as kind: %@, in format: %@ (file already exported: %@) - should create Live Photo bundle: %@ (already created: %@) - should create asset bundle: %@ (already created: %@) should set AssetsLibrary URL: %@ (already set: %@) - will flatten slo-mo video: %@", buf, 0x84u);
  }

  semaphore = [operationCopy semaphore];
  progressHandler = [(PUActivityItemSource *)self progressHandler];
  completionHandler = [(PUActivityItemSource *)self completionHandler];
  postCompletionHandler = [(PUActivityItemSource *)self postCompletionHandler];
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  allowFallbacksWhilePreparing = [mEMORY[0x1E69C3A18] allowFallbacksWhilePreparing];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PUActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke;
  aBlock[3] = &unk_1E7B74170;
  aBlock[4] = self;
  v187 = &v189;
  v188 = a2;
  v71 = operationCopy;
  v185 = v71;
  v159 = progressHandler;
  v186 = v159;
  v72 = _Block_copy(aBlock);
  maxFileSizeLimit = [(PUActivityItemSourceConfiguration *)v146 maxFileSizeLimit];
  if (!v190[5])
  {
    v74 = maxFileSizeLimit;
    if (([v71 pu_isCancelled] & 1) == 0)
    {
      isCancelled = [v71 isCancelled];
      v76 = v74 ? isCancelled : 1;
      if ((v76 & 1) == 0)
      {
        [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
        originalMetadataProperties2 = [(PHAsset *)self->_asset originalMetadataProperties];
        originalFilesize = [originalMetadataProperties2 originalFilesize];

        if ((originalFilesize > v74) | [mEMORY[0x1E69C3A18] simulateMaxFilesizeLimitForGIFsInSharedAlbumsError] & 1)
        {
          v79 = PLShareSheetGetLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            v80 = self->_sharingUUID;
            *buf = 138543874;
            v210 = v80;
            v211 = 2048;
            v212 = originalFilesize;
            v213 = 2048;
            v214 = v74;
            _os_log_impl(&dword_1B36F3000, v79, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Attempted to share an asset that exceeds the filesize limit, %lu > %lu", buf, 0x20u);
          }

          v81 = objc_opt_class();
          v207 = *MEMORY[0x1E69C3CB8];
          v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v74];
          v208 = v82;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
          v84 = [v81 _sharingErrorWithCode:-102 underlyingError:0 localizedDescription:@"Asset exceeds file size limit for sharing" additionalInfo:v83];

          objc_storeStrong(v190 + 5, v84);
        }
      }
    }
  }

  if (v190[5] || ([v71 pu_isCancelled] & 1) != 0 || ((objc_msgSend(v71, "isCancelled") | v140) & 1) != 0)
  {
    if (!v190[5] && ([v71 pu_isCancelled] & 1) == 0 && (objc_msgSend(v71, "isCancelled") & 1) == 0)
    {
      [(PUActivityItemSource *)self performChanges:&__block_literal_global_328];
    }
  }

  else
  {
    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = __79__PUActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_299;
    v170[3] = &unk_1E7B74198;
    v175 = &v189;
    v171 = v71;
    v172 = mEMORY[0x1E69C3A18];
    selfCopy = self;
    v176 = &v203;
    v177 = &v195;
    v181 = v137;
    v182 = v136;
    v183 = shouldExportUnmodifiedOriginalResources;
    v178 = &v199;
    v179 = v147;
    v180 = v146;
    v85 = semaphore;
    v174 = v85;
    v86 = _Block_copy(v170);
    switch(v145)
    {
      case 2:
        v89 = PLShareSheetGetLog();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v90 = self->_sharingUUID;
          *buf = 138543618;
          v210 = v90;
          v211 = 2112;
          v212 = typeCopy;
          _os_log_impl(&dword_1B36F3000, v89, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Fetching video for activity type: %@", buf, 0x16u);
        }

        [(PUActivityItemSource *)self _fetchVideoWithOptions:assetExportRequestOptions forActivityType:typeCopy progressHandler:v72 completionHandler:v86];
        break;
      case 5:
        v87 = PLShareSheetGetLog();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v88 = self->_sharingUUID;
          *buf = 138543618;
          v210 = v88;
          v211 = 2112;
          v212 = typeCopy;
          _os_log_impl(&dword_1B36F3000, v87, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Fetching auto-looping image as GIF for activity type: %@", buf, 0x16u);
        }

        [(PUActivityItemSource *)self _fetchAlternateWithOptions:assetExportRequestOptions forActivityType:typeCopy progressHandler:v72 completionHandler:v86];
        break;
      case 3:
        v91 = PLShareSheetGetLog();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v92 = self->_sharingUUID;
          *buf = 138543618;
          v210 = v92;
          v211 = 2112;
          v212 = typeCopy;
          _os_log_impl(&dword_1B36F3000, v91, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Fetching live photo bundle for activity type: %@", buf, 0x16u);
        }

        [(PUActivityItemSource *)self _fetchLivePhotoWithOptions:assetExportRequestOptions forActivityType:typeCopy progressHandler:v72 completionHandler:v86];
        break;
      default:
        v93 = PLShareSheetGetLog();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v94 = self->_sharingUUID;
          *buf = 138543618;
          v210 = v94;
          v211 = 2112;
          v212 = typeCopy;
          _os_log_impl(&dword_1B36F3000, v93, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Fetching image for activity type: %@", buf, 0x16u);
        }

        [(PUActivityItemSource *)self _fetchImageWithOptions:assetExportRequestOptions forActivityType:typeCopy progressHandler:v72 completionHandler:v86];
        break;
    }

    dispatch_semaphore_wait(v85, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!v190[5] && ([v71 pu_isCancelled] & 1) == 0 && ((objc_msgSend(v71, "isCancelled") | v139) & 1) == 0)
  {
    aLAssetURL = [(PHAsset *)self->_asset ALAssetURL];
    if (aLAssetURL)
    {
      v96 = PLShareSheetGetLog();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = self->_sharingUUID;
        *buf = 138543362;
        v210 = v97;
        _os_log_impl(&dword_1B36F3000, v96, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Setting assets library URL for sharing.", buf, 0xCu);
      }

      [(PUActivityItemSource *)self _setAssetsLibraryURL:aLAssetURL];
    }

    else
    {
      if (allowFallbacksWhilePreparing)
      {
        v98 = PLShareSheetGetLog();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v99 = self->_sharingUUID;
          *buf = 138543362;
          v210 = v99;
          _os_log_impl(&dword_1B36F3000, v98, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Failed to get assets library URL for sharing. Falling back to unmodified.", buf, 0xCu);
        }
      }

      else
      {
        v100 = PLShareSheetGetLog();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
        {
          v101 = self->_sharingUUID;
          *buf = 138543362;
          v210 = v101;
          _os_log_impl(&dword_1B36F3000, v100, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Failed to get assets library URL for sharing.", buf, 0xCu);
        }

        v102 = [objc_opt_class() _sharingErrorWithCode:-106 underlyingError:0 localizedDescription:@"Failed to get assets library URL for sharing." additionalInfo:0];
        v98 = v190[5];
        v190[5] = v102;
      }
    }
  }

  if (!v190[5] && ([v71 pu_isCancelled] & 1) == 0 && (objc_msgSend(v71, "isCancelled") & 1) == 0 && -[PUActivityItemSourceConfiguration outputType](v146, "outputType") == 1)
  {
    v103 = PLShareSheetGetLog();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      v104 = self->_sharingUUID;
      *buf = 138543362;
      v210 = v104;
      _os_log_impl(&dword_1B36F3000, v103, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Setting Pasteboard representation.", buf, 0xCu);
    }

    v105 = v134;
    if (v204[3] != v134)
    {
      v106 = PLShareSheetGetLog();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        v107 = self->_sharingUUID;
        v108 = v204[3];
        *buf = 138543874;
        v210 = v107;
        v211 = 2050;
        v212 = v134;
        v213 = 2050;
        v214 = v108;
        _os_log_impl(&dword_1B36F3000, v106, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Requested source type %{public}zd is different from actual source type %{public}zd", buf, 0x20u);
      }

      v105 = v204[3];
    }

    v109 = [(PUActivityItemSource *)self _resourceURLForType:v105];
    v110 = [(PUActivityItemSource *)self _newPasteboardItemProviderForURL:v109];
    [(PUActivityItemSource *)self set_pasteboardItemProvider:v110];
  }

  if (v72)
  {
    v72[2](v72, 0, 1.0);
  }

  [(PUActivityItemSource *)self performChanges:&__block_literal_global_334];
  if ([v71 pu_isCancelled])
  {
    isCancelled2 = 1;
  }

  else
  {
    isCancelled2 = [v71 isCancelled];
  }

  if (completionHandler)
  {
    v112 = [(PUActivityItemSource *)self _itemForActivityType:typeCopy];
    if (!v112 && !v190[5] && ([v71 pu_isCancelled] & 1) == 0 && (objc_msgSend(v71, "isCancelled") & 1) == 0)
    {
      v113 = MEMORY[0x1E696AEC0];
      uuid2 = [(PHAsset *)self->_asset uuid];
      v114 = [v113 stringWithFormat:@"Preparation failed (nil item) for activityType: %@, asset: %@", typeCopy, uuid2];

      v116 = [objc_opt_class() _sharingErrorWithCode:-100 underlyingError:0 localizedDescription:v114 additionalInfo:0];
      v117 = v190[5];
      v190[5] = v116;

      v118 = PLShareSheetGetLog();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        v119 = self->_sharingUUID;
        *buf = 138543618;
        v210 = v119;
        v211 = 2114;
        v212 = uuid;
        _os_log_impl(&dword_1B36F3000, v118, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Finished sharing preparation for asset %{public}@ with no errors or cancellation, but the item is nil. Will fail with generic error.", buf, 0x16u);
      }
    }

    v120 = objc_opt_class();
    v121 = NSStringFromClass(v120);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      path2 = [v112 path];
    }

    else
    {
      path2 = 0;
    }

    v123 = PLShareSheetGetLog();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v124 = self->_sharingUUID;
      v125 = @"YES";
      if (!isCancelled2)
      {
        v125 = @"NO";
      }

      v126 = v125;

      v127 = v126;
      v128 = v190[5];
      *buf = 138544642;
      v210 = v124;
      v211 = 2114;
      v212 = uuid;
      v213 = 2112;
      v214 = v127;
      v215 = 2114;
      v216 = v121;
      v217 = 2114;
      v218 = path2;
      v219 = 2112;
      v220 = v128;
      _os_log_impl(&dword_1B36F3000, v123, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Preparation completed for asset %{public}@ (Cancelled: %@), final item is of type %{public}@ (path: %{public}@), with error: %@", buf, 0x3Eu);
    }

    [(PUActivityItemSource *)self setLastPreparationError:v190[5]];
    (completionHandler)[2](completionHandler, v112, isCancelled2, v190[5]);
  }

  if (isCancelled2)
  {
    v129 = v166;
    if (v141 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v130 = v129;
      if (os_signpost_enabled(v129))
      {
        *buf = 0;
        v131 = " enableTelemetry=YES Cancel";
LABEL_162:
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v130, OS_SIGNPOST_INTERVAL_END, spid, "PrepareItem", v131, buf, 2u);
      }
    }
  }

  else
  {
    lastPreparationError = [(PUActivityItemSource *)self lastPreparationError];

    v133 = v166;
    v130 = v133;
    if (lastPreparationError)
    {
      if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
      {
        *buf = 0;
        v131 = " enableTelemetry=YES Error";
        goto LABEL_162;
      }
    }

    else if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v133))
    {
      *buf = 0;
      v131 = " enableTelemetry=YES Success";
      goto LABEL_162;
    }
  }

  if (postCompletionHandler)
  {
    postCompletionHandler[2]();
  }

  [(PUActivityItemSource *)self setPostCompletionHandler:0];
  [(PUActivityItemSource *)self setCompletionHandler:0];
  [(PUActivityItemSource *)self setProgressHandler:0];

  _Block_object_dispose(&v189, 8);
  _Block_object_dispose(&v195, 8);
  _Block_object_dispose(&v199, 8);
  _Block_object_dispose(&v203, 8);
}

void __79__PUActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PUActivityItemSource.m" lineNumber:627 description:@"expect progress range"];
  }

  if (!*(*(*(a1 + 56) + 8) + 40) && ([*(a1 + 40) pu_isCancelled] & 1) == 0 && (objc_msgSend(*(a1 + 40), "isCancelled") & 1) == 0)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(a3);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 40) || ([*(a1 + 40) pu_isCancelled] & 1) != 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_14;
  }

  v8 = [*(a1 + 40) isCancelled];
  if (a2 && (v8 & 1) != 0)
  {
LABEL_14:
    *a2 = 1;
  }
}

void __79__PUActivityItemSource_activityItemSourceOperation_prepareItemForActivityType___block_invoke_299(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!*(*(*(a1 + 64) + 8) + 40) && ([*(a1 + 32) pu_isCancelled] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isCancelled") & 1) == 0)
  {
    v9 = [*(a1 + 40) simulateDownloadFailure];
    v10 = [*(a1 + 40) simulateCPLNotReadyError];
    v11 = [*(a1 + 40) simulateLowDiskSpaceError];
    v12 = [*(a1 + 40) simulateUserCloudNotAuthenticated];
    v13 = [*(a1 + 40) simulateSyndicatedResourceUnavailable];
    if (v9)
    {

      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E6978B70];
      v16 = @"Simulated download failure, for debugging.";
      v17 = 2;
    }

    else if (v10)
    {

      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E69BE900];
      v16 = @"Simulated CPL Not ready error, for debugging.";
      v17 = 15;
    }

    else if (v11)
    {

      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E6978B70];
      v16 = @"Simulated low disk space error, for debugging.";
      v17 = 3;
    }

    else if (v12)
    {

      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E6978B70];
      v16 = @"Simulated user needs to review iCloud settings error, for debugging.";
      v17 = 4;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E6978B70];
      v16 = @"Simulated syndicated resource unavailable error, for debugging.";
      v17 = 5;
    }

    v18 = [v14 px_errorWithDomain:v15 code:v17 debugDescription:v16];

    v7 = MEMORY[0x1E695E0F8];
    v8 = v18;
LABEL_15:
    v19 = PLShareSheetGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 48) + 136);
      v56 = 138543874;
      v57 = v20;
      v58 = 2048;
      v59 = [v7 count];
      v60 = 2112;
      v61 = v8;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Export Request completed with number of resource URLs: %ld, error: %@", &v56, 0x20u);
    }

    v21 = PLShareSheetGetLog();
    v22 = v21;
    if (v8)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*(a1 + 48) + 136);
        v56 = 138543618;
        v57 = v23;
        v58 = 2112;
        v59 = v8;
        _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Preparation export error %@", &v56, 0x16u);
      }

      v24 = [v8 domain];
      v25 = *MEMORY[0x1E6978B70];
      if ([v24 isEqualToString:*MEMORY[0x1E6978B70]])
      {
        v26 = [v8 code];

        if (v26 == 2)
        {
          v27 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E69C3CB0];
          v29 = @"Couldn't retrieve resource(s) for asset due to a network-related error.";
          v30 = -101;
LABEL_29:
          v34 = [v27 px_errorWithDomain:v28 code:v30 underlyingError:v8 debugDescription:v29];
          v35 = *(*(a1 + 64) + 8);
          v22 = *(v35 + 40);
          *(v35 + 40) = v34;
          goto LABEL_32;
        }
      }

      else
      {
      }

      v32 = [v8 domain];
      if ([v32 isEqualToString:v25])
      {
        v33 = [v8 code];

        if (v33 == 3)
        {
          v27 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E69C3CB0];
          v29 = @"Couldn't retrieve resource(s) for asset due to low disk space.";
          v30 = -110;
          goto LABEL_29;
        }
      }

      else
      {
      }

      v36 = *(*(a1 + 64) + 8);
      v37 = v8;
      v22 = *(v36 + 40);
      *(v36 + 40) = v37;
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(*(a1 + 48) + 136);
      v56 = 138543618;
      v57 = v31;
      v58 = 2114;
      v59 = v7;
      _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Retrieved resource urls: %{public}@", &v56, 0x16u);
    }

LABEL_32:

    v38 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978B98]];
    v39 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978BA0]];
    v40 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978B68]];
    v41 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6978B88]];
    *(*(*(a1 + 72) + 8) + 24) = 0;
    if (a4 == 2)
    {
      v42 = 1;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_37;
      }

      v42 = 4;
    }

    *(*(*(a1 + 72) + 8) + 24) = v42;
LABEL_37:
    if (v40)
    {
      v43 = [*(a1 + 48) _createManagedURLForResourceAtURL:v40 shouldMove:0 forType:5];
      [*(a1 + 48) _setResourceURL:v43 forType:5];
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }

    if (v41)
    {
      v44 = [*(a1 + 48) _createManagedURLForResourceAtURL:v41 shouldMove:0 forType:3];
      [*(a1 + 48) _setResourceURL:v44 forType:3];
      *(*(*(a1 + 88) + 8) + 24) = 0;
    }

    if (!v38)
    {
      if (v39)
      {
        v45 = [*(a1 + 48) _createManagedURLForResourceAtURL:v39 shouldMove:0 forType:*(*(*(a1 + 72) + 8) + 24)];
        [*(a1 + 48) _setResourceURL:v45 forType:*(*(*(a1 + 72) + 8) + 24)];
      }

      else
      {
        v48 = PLShareSheetGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = *(*(a1 + 48) + 136);
          v50 = *(*(*(a1 + 64) + 8) + 40);
          v56 = 138543618;
          v57 = v49;
          v58 = 2112;
          v59 = v50;
          _os_log_impl(&dword_1B36F3000, v48, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Unable to fetch any primary resource with error %@", &v56, 0x16u);
        }

        v51 = *(*(a1 + 64) + 8);
        v52 = *(v51 + 40);
        if (v52)
        {
          v53 = v52;
          v45 = *(v51 + 40);
          *(v51 + 40) = v53;
        }

        else
        {
          v54 = [objc_opt_class() _sharingErrorWithCode:-100 underlyingError:0 localizedDescription:@"No primary resources found with no error" additionalInfo:0];
          v55 = *(*(a1 + 64) + 8);
          v45 = *(v55 + 40);
          *(v55 + 40) = v54;
        }
      }

      goto LABEL_57;
    }

    v45 = [*(a1 + 48) _createManagedURLForResourceAtURL:v38 shouldMove:0 forType:*(*(*(a1 + 72) + 8) + 24)];
    [*(a1 + 48) _setResourceURL:v45 forType:*(*(*(a1 + 72) + 8) + 24)];
    if (*(a1 + 112) & 1) != 0 || (*(a1 + 113))
    {
      v46 = 0;
      if (v39)
      {
        goto LABEL_45;
      }
    }

    else if (*(a1 + 114) == 1)
    {
      v46 = *(a1 + 96);
      if (v39)
      {
LABEL_45:
        if ((v46 & 1) == 0)
        {
          v47 = [*(a1 + 48) _createManagedURLForResourceAtURL:v39 shouldMove:0 forType:2];
          [*(a1 + 48) _setResourceURL:v47 forType:2];
        }
      }
    }

LABEL_57:
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

- (id)_newPasteboardItemProviderForURL:(id)l
{
  v4 = *MEMORY[0x1E69CDA90];
  lCopy = l;
  v6 = [(PUActivityItemSource *)self _uniformTypeIdentifierForActivityType:v4];
  v7 = [MEMORY[0x1E69DCD50] px_newPasteboardItemProviderForAsset:self->_asset fileURL:lCopy utiType:v6];

  return v7;
}

- (id)_newOperationForActivityType:(id)type
{
  typeCopy = type;
  v6 = [[PUActivityItemSourceOperation alloc] initWithDelegate:self activityType:typeCopy];

  currentOperation = self->_currentOperation;
  if (currentOperation && [(PUActivityItemSourceOperation *)currentOperation isExecuting])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:490 description:@"expect only one running operation"];
  }

  objc_storeStrong(&self->_currentOperation, v6);
  return v6;
}

- (id)_uniformTypeIdentifierForActivityType:(id)type
{
  typeCopy = type;
  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  provideGenericTypeIdentifiersForNilActivityTypes = [mEMORY[0x1E69C3A18] provideGenericTypeIdentifiersForNilActivityTypes];

  if (!typeCopy && provideGenericTypeIdentifiersForNilActivityTypes)
  {
    v7 = [objc_opt_class() _basicTypeIdentifierForAsset:self->_asset];
    goto LABEL_24;
  }

  _sharingVariants = [(PUActivityItemSource *)self _sharingVariants];
  v9 = self->_asset;
  v10 = v9;
  if (_sharingVariants)
  {
    [(PUActivityItemSource *)self sharingPreferences];
    v12 = v11;
    sharingPreferences = [(PUActivityItemSource *)self sharingPreferences];
    if (typeCopy)
    {
      [(PUActivityItemSource *)self sharingPreferences];
      v15 = [PUActivityItemSourceConfiguration shouldProvideCompatibleFormatForActivityType:typeCopy forAsset:v10 inPreferredExportFormat:v14 withAvailableSharingVariants:_sharingVariants];
      [(PUActivityItemSource *)self sharingPreferences];
      v17 = [PUActivityItemSourceConfiguration shouldProvideAlternateVariantForActivityType:typeCopy forAsset:v10 inPreferredExportFormat:v16 withAvailableSharingVariants:_sharingVariants];
      v7 = 0;
      if (v12)
      {
        v18 = v12 == 2;
      }

      else
      {
        v18 = v15;
      }

      v19 = (sharingPreferences & 0x10000000000) == 0 && v18;
      if ((sharingPreferences & 0x10000000000) == 0 && v17)
      {
        v7 = [_sharingVariants objectForKeyedSubscript:&unk_1F2B7DA00];
      }
    }

    else
    {
      v7 = 0;
      v19 = (sharingPreferences & 0x10000000000 | v12 & 0xFFFFFFFFFFFFFFFDLL) == 0;
    }

    if (v19)
    {
      v21 = v7 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v7 = [_sharingVariants objectForKeyedSubscript:&unk_1F2B7DA18];
    }

    if (v7)
    {
      goto LABEL_23;
    }

    uniformTypeIdentifier = [_sharingVariants objectForKeyedSubscript:&unk_1F2B7DA30];
  }

  else
  {
    uniformTypeIdentifier = [(PHAsset *)v9 uniformTypeIdentifier];
  }

  v7 = uniformTypeIdentifier;
LABEL_23:

LABEL_24:

  return v7;
}

- (void)signalAnchorCompletion
{
  if ([(PUActivityItemSource *)self shouldAnchorPreparation])
  {
    anchorOperation = self->_anchorOperation;
    if (anchorOperation)
    {
      [(PUActivityItemSourceAnchorOperation *)anchorOperation signalAnchor];
      v4 = self->_anchorOperation;
      self->_anchorOperation = 0;
    }
  }
}

- (void)cancel
{
  v26 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:360 description:@"expect main thread"];
  }

  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sharingUUID = self->_sharingUUID;
    uuid = [(PHAsset *)self->_asset uuid];
    v22 = 138543618;
    v23 = sharingUUID;
    v24 = 2114;
    v25 = uuid;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Cancelling item for asset: %{public}@", &v22, 0x16u);
  }

  _exportProgress = [(PUActivityItemSource *)self _exportProgress];
  [_exportProgress cancel];

  currentOperation = self->_currentOperation;
  if (currentOperation)
  {
    [(PUActivityItemSourceOperation *)currentOperation pu_cancel];
    [(PUActivityItemSourceOperation *)self->_currentOperation cancel];
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_sharingUUID;
      v11 = self->_currentOperation;
      v22 = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Cancelling current operation: %@", &v22, 0x16u);
    }

    if ([(PUActivityItemSourceOperation *)self->_currentOperation isExecuting])
    {
      semaphore = [(PUActivityItemSourceOperation *)self->_currentOperation semaphore];
      dispatch_semaphore_signal(semaphore);
    }

    else
    {
      semaphore = [(PUActivityItemSource *)self completionHandler];
      if (semaphore)
      {
        [(PUActivityItemSource *)self setCompletionHandler:0];
        (*(semaphore + 16))(semaphore, 0, 1, 0);
      }
    }
  }

  anchorOperation = self->_anchorOperation;
  if (anchorOperation)
  {
    [(PXAsyncOperation *)anchorOperation cancel];
    v14 = PLShareSheetGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_sharingUUID;
      v16 = self->_anchorOperation;
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Cancelling anchor operation: %@", &v22, 0x16u);
    }
  }

  activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
  signpostId = [(PUActivityItemSource *)self signpostId];
  v19 = activityItemSourceLog;
  v20 = v19;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v20, OS_SIGNPOST_EVENT, signpostId, "PrepareItemCancelled", " enableTelemetry=YES ", &v22, 2u);
  }
}

- (void)_resetState
{
  if ([(NSMutableSet *)self->_onDemandExports count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:345 description:{@"On-demand exports was not empty when state was reset on activity item source: %@", self->_sharingUUID}];
  }

  if (self->__exportProgress)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:346 description:{@"Export progress was not nil when state was reset on activity item source: %@", self->_sharingUUID}];
  }

  if (self->__exportProgressHandler)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:347 description:{@"Export progress handler was not nil when state was reset on activity item source: %@", self->_sharingUUID}];
  }

  [(PUActivityItemSource *)self cleanUpExportedFiles];
  currentOperation = self->_currentOperation;
  self->_currentOperation = 0;

  [(PUActivityItemSource *)self setExportConfiguration:0];
  [(PUActivityItemSource *)self set_pasteboardItemProvider:0];

  [(PUActivityItemSource *)self _setAssetsLibraryURL:0];
}

- (void)setSharingPreferences:(id)preferences
{
  externalIsolation = self->_externalIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PUActivityItemSource_setSharingPreferences___block_invoke;
  block[3] = &unk_1E7B7C518;
  block[4] = self;
  preferencesCopy = preferences;
  dispatch_sync(externalIsolation, block);
}

uint64_t __46__PUActivityItemSource_setSharingPreferences___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) state];
  if (result)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [*(a1 + 32) state];
    if (v10 > 2)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_1E7B74478[v10];
    }

    v12 = v11;
    v13 = [v9 stringWithFormat:@"Attempted to set sharing preferences while activity item source's state was %@", v12];

    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  v3 = *(a1 + 40) ^ *(*(a1 + 32) + 288);
  if ((v3 & 0x101010101) != 0 || (v3 & 0x10000000000) != 0 || *(*(a1 + 32) + 296) != *(a1 + 48))
  {
    v4 = PLShareSheetGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 136);
      v7 = PUActivityItemSharingPreferencesDescription(*(v5 + 288));
      v8 = PUActivityItemSharingPreferencesDescription(*(a1 + 40));
      *buf = 138543874;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Changing sharing preferences from\n%{public}@ to\n%{public}@", buf, 0x20u);
    }

    *(*(a1 + 32) + 288) = *(a1 + 40);
    [*(a1 + 32) _resetState];
    return [*(a1 + 32) signalChange:2];
  }

  return result;
}

- (void)setState:(unint64_t)state
{
  externalIsolation = self->_externalIsolation;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PUActivityItemSource_setState___block_invoke;
  v4[3] = &unk_1E7B7FF70;
  v4[4] = self;
  v4[5] = state;
  dispatch_sync(externalIsolation, v4);
}

uint64_t __33__PUActivityItemSource_setState___block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 176) != *(result + 40))
  {
    v1 = result;
    v2 = PLShareSheetGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 32);
      v4 = *(v3 + 176);
      if (v4 > 2)
      {
        v5 = @"unknown";
      }

      else
      {
        v5 = off_1E7B74478[v4];
      }

      v6 = *(v3 + 136);
      v7 = *(v1 + 40);
      if (v7 > 2)
      {
        v8 = @"unknown";
      }

      else
      {
        v8 = off_1E7B74478[v7];
      }

      v9 = 138543874;
      v10 = v6;
      v11 = 2114;
      v12 = v5;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Changing state from %{public}@ to %{public}@", &v9, 0x20u);
    }

    *(*(v1 + 32) + 176) = *(v1 + 40);
    return [*(v1 + 32) signalChange:1];
  }

  return result;
}

- (void)_setExportProgress:(id)progress
{
  progressCopy = progress;
  exportProgress = self->__exportProgress;
  if (exportProgress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)exportProgress removeObserver:self forKeyPath:@"fractionCompleted" context:&PUActivityItemSourceProgressContext];
    objc_storeStrong(&self->__exportProgress, progress);
    exportProgress = [(NSProgress *)self->__exportProgress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:&PUActivityItemSourceProgressContext];
    progressCopy = v7;
  }

  MEMORY[0x1EEE66BB8](exportProgress, progressCopy);
}

- (void)_fetchSharingVariants
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_fetchSharingVariantsSemaphore)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"_fetchSharingVariantsSemaphore"}];
  }

  if (self->_cachedSharingVariants)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUActivityItemSource.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"!_cachedSharingVariants"}];
  }

  asset = self->_asset;
  shareAsUnmodifiedOriginal = self->_sharingPreferences.shareAsUnmodifiedOriginal;
  v16 = 0;
  v6 = [MEMORY[0x1E69786A8] variantsForAsset:asset asUnmodifiedOriginal:shareAsUnmodifiedOriginal error:&v16];
  v7 = v16;
  cachedSharingVariants = self->_cachedSharingVariants;
  self->_cachedSharingVariants = v6;

  if (!self->_cachedSharingVariants)
  {
    v9 = PLShareSheetGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sharingUUID = self->_sharingUUID;
      uuid = [(PHAsset *)self->_asset uuid];
      *buf = 138543874;
      v18 = sharingUUID;
      v19 = 2114;
      v20 = uuid;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Failed to fetch sharing variants for asset: %{public}@, error: %@", buf, 0x20u);
    }
  }

  dispatch_semaphore_signal(self->_fetchSharingVariantsSemaphore);
  ppt_didFetchSharingVariantsHandler = [(PUActivityItemSource *)self ppt_didFetchSharingVariantsHandler];
  v13 = ppt_didFetchSharingVariantsHandler;
  if (ppt_didFetchSharingVariantsHandler)
  {
    (*(ppt_didFetchSharingVariantsHandler + 16))(ppt_didFetchSharingVariantsHandler);
  }
}

- (id)_sharingVariants
{
  v16 = *MEMORY[0x1E69E9840];
  fetchSharingVariantsSemaphore = self->_fetchSharingVariantsSemaphore;
  if (fetchSharingVariantsSemaphore)
  {
    v4 = dispatch_time(0, 5000000000);
    v5 = dispatch_semaphore_wait(fetchSharingVariantsSemaphore, v4);
    v6 = self->_fetchSharingVariantsSemaphore;
    self->_fetchSharingVariantsSemaphore = 0;

    if (v5)
    {
      v7 = PLShareSheetGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sharingUUID = self->_sharingUUID;
        uuid = [(PHAsset *)self->_asset uuid];
        v12 = 138543618;
        v13 = sharingUUID;
        v14 = 2114;
        v15 = uuid;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Timed out fetching sharing variants for asset: %{public}@", &v12, 0x16u);
      }
    }
  }

  cachedSharingVariants = self->_cachedSharingVariants;

  return cachedSharingVariants;
}

- (void)runWithActivityType:(id)type
{
  v5 = [(PUActivityItemSource *)self _newOperationForActivityType:type];
  _activityOperationQueueForExplicitRunning = [(PUActivityItemSource *)self _activityOperationQueueForExplicitRunning];
  [_activityOperationQueueForExplicitRunning addOperation:v5];
}

- (id)_activityOperationQueueForExplicitRunning
{
  if (_activityOperationQueueForExplicitRunning_onceToken != -1)
  {
    dispatch_once(&_activityOperationQueueForExplicitRunning_onceToken, &__block_literal_global_221);
  }

  v3 = _activityOperationQueueForExplicitRunning_activityOperationQueue;

  return v3;
}

uint64_t __65__PUActivityItemSource__activityOperationQueueForExplicitRunning__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _activityOperationQueueForExplicitRunning_activityOperationQueue;
  _activityOperationQueueForExplicitRunning_activityOperationQueue = v0;

  v2 = _activityOperationQueueForExplicitRunning_activityOperationQueue;

  return [v2 setMaxConcurrentOperationCount:3];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  [(PUActivityItemSource *)self _setExportProgress:0];
  if ([(NSMutableDictionary *)self->_sharingURLs count])
  {
    v3 = PLShareSheetGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sharingUUID = self->_sharingUUID;
      *buf = 138543362;
      v7 = sharingUUID;
      _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_ERROR, "[Item: %{public}@] Deallocing PUActivityItemSource, but sharing URLs still remain non-empty", buf, 0xCu);
    }
  }

  [(PUActivityItemSource *)self cleanUpExportedFiles];
  v5.receiver = self;
  v5.super_class = PUActivityItemSource;
  [(PUActivityItemSource *)&v5 dealloc];
}

- (PUActivityItemSource)initWithAsset:(id)asset sharingPreferences:(id)preferences
{
  var6 = preferences.var6;
  v5 = *&preferences.var0;
  assetCopy = asset;
  v34.receiver = self;
  v34.super_class = PUActivityItemSource;
  v9 = [(PUActivityItemSource *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    *&v10->_sharingPreferences.excludeLiveness = v5;
    v10->_sharingPreferences.preferredExportFormat = var6;
    v10->_state = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sharingURLs = v10->_sharingURLs;
    v10->_sharingURLs = v11;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [uUIDString copy];
    sharingUUID = v10->_sharingUUID;
    v10->_sharingUUID = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    onDemandExports = v10->_onDemandExports;
    v10->_onDemandExports = v17;

    activityItemSourceLog = [objc_opt_class() activityItemSourceLog];
    v10->_signpostId = os_signpost_id_make_with_pointer(activityItemSourceLog, v10->_sharingUUID);

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v21 = dispatch_queue_create("com.apple.PUActivityItemSource.isolationQueue", v20);
    externalIsolation = v10->_externalIsolation;
    v10->_externalIsolation = v21;

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __57__PUActivityItemSource_initWithAsset_sharingPreferences___block_invoke;
    v32[3] = &unk_1E7B80DD0;
    v33 = v20;
    v23 = initWithAsset_sharingPreferences__predicate;
    v24 = v20;
    if (v23 != -1)
    {
      dispatch_once(&initWithAsset_sharingPreferences__predicate, v32);
    }

    v25 = dispatch_semaphore_create(0);
    fetchSharingVariantsSemaphore = v10->_fetchSharingVariantsSemaphore;
    v10->_fetchSharingVariantsSemaphore = v25;

    objc_initWeak(&location, v10);
    v27 = initWithAsset_sharingPreferences___fetchSharingVariantsSerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PUActivityItemSource_initWithAsset_sharingPreferences___block_invoke_2;
    block[3] = &unk_1E7B80638;
    objc_copyWeak(&v30, &location);
    dispatch_async(v27, block);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v10;
}

uint64_t __57__PUActivityItemSource_initWithAsset_sharingPreferences___block_invoke(uint64_t a1)
{
  v1 = dispatch_queue_create("com.apple.PUActivityItemSource.fetchSharingVariants", *(a1 + 32));
  v2 = initWithAsset_sharingPreferences___fetchSharingVariantsSerialQueue;
  initWithAsset_sharingPreferences___fetchSharingVariantsSerialQueue = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __57__PUActivityItemSource_initWithAsset_sharingPreferences___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchSharingVariants];
}

+ (OS_os_log)activityItemSourceLog
{
  if (activityItemSourceLog_onceToken != -1)
  {
    dispatch_once(&activityItemSourceLog_onceToken, &__block_literal_global_404);
  }

  v3 = activityItemSourceLog_activityItemSourceLog;

  return v3;
}

uint64_t __45__PUActivityItemSource_activityItemSourceLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "ActivityItemSource");
  v1 = activityItemSourceLog_activityItemSourceLog;
  activityItemSourceLog_activityItemSourceLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)_deleteOutputDirectoryURL:(id)l forSharingUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0;
  v8 = [defaultManager removeItemAtURL:lCopy error:&v19];
  v9 = v19;

  if (!v8)
  {
    userInfo = [v9 userInfo];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    domain = [v10 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      code = [v10 code];

      if (code == 2)
      {
        v14 = PLShareSheetGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = dCopy;
          v15 = "[Item: %{public}@] Outbound resources directory was not created or was already deleted, so no exported files to clean up";
          v16 = v14;
          v17 = OS_LOG_TYPE_DEFAULT;
          v18 = 12;
LABEL_11:
          _os_log_impl(&dword_1B36F3000, v16, v17, v15, buf, v18);
          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v14 = PLShareSheetGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = dCopy;
      v22 = 2114;
      v23 = v9;
      v15 = "[Item: %{public}@] Failed to clean up outbound resources directory: %{public}@";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 22;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = PLShareSheetGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = dCopy;
    v22 = 2114;
    v23 = lCopy;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "[Item: %{public}@] Cleaned up outbound resources directory: %{public}@", buf, 0x16u);
  }

LABEL_13:
}

+ (id)_basicTypeIdentifierForAsset:(id)asset
{
  assetCopy = asset;
  mediaType = [assetCopy mediaType];
  identifier = 0;
  v6 = MEMORY[0x1E6982EE8];
  if (mediaType > 1)
  {
    if (mediaType != 2)
    {
      if (mediaType != 3)
      {
        goto LABEL_12;
      }

      v6 = MEMORY[0x1E6982CD0];
    }
  }

  else if (mediaType)
  {
    if (mediaType != 1)
    {
      goto LABEL_12;
    }

    if (![assetCopy canPlayLoopingVideo])
    {
      v6 = MEMORY[0x1E6982E30];
    }
  }

  else
  {
    v6 = MEMORY[0x1E6982D60];
  }

  identifier = [*v6 identifier];
LABEL_12:

  return identifier;
}

+ (id)_exportResultHandlingQueue
{
  if (_exportResultHandlingQueue_onceToken != -1)
  {
    dispatch_once(&_exportResultHandlingQueue_onceToken, &__block_literal_global_2424);
  }

  v3 = _exportResultHandlingQueue_resultHandlingQueue;

  return v3;
}

void __50__PUActivityItemSource__exportResultHandlingQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("PUActivityItemSource.resultHandlingQueue", attr);
  v2 = _exportResultHandlingQueue_resultHandlingQueue;
  _exportResultHandlingQueue_resultHandlingQueue = v1;
}

+ (id)_sharingErrorWithCode:(int64_t)code underlyingError:(id)error localizedDescription:(id)description additionalInfo:(id)info
{
  errorCopy = error;
  descriptionCopy = description;
  infoCopy = info;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  if (errorCopy)
  {
    [dictionary setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
  }

  if (descriptionCopy)
  {
    [v13 setObject:descriptionCopy forKey:*MEMORY[0x1E696A578]];
  }

  if (infoCopy)
  {
    [v13 addEntriesFromDictionary:infoCopy];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69C3CB0] code:code userInfo:v13];

  return v14;
}

+ (BOOL)supportsAssetLocalIdentifierForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E69C3E58]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:*MEMORY[0x1E69C3D48]];
  }

  return v4;
}

@end