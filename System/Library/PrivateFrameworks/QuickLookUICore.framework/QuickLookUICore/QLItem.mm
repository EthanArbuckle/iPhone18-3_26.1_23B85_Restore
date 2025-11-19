@interface QLItem
+ (BOOL)contentTypeConformsToRTFD:(id)a3;
+ (id)contentTypesToPreviewTypes;
+ (id)customExtensionCommunicationEncodedClasses;
+ (id)encodedClasses;
+ (id)itemWithPreviewItem:(id)a3;
+ (id)rtfContentTypes;
+ (id)supportedContentTypeIdentifiers;
+ (id)supportedContentTypes;
+ (id)webContentTypes;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPromisedItem;
- (BOOL)shouldCreateTemporaryDirectoryInHost;
- (BOOL)shouldOpenInFullScreen;
- (BOOL)supportsChromelessUI;
- (BOOL)useExtensionThumbnail;
- (CGSize)preferredContentSizeForOrbPlatter;
- (NSDictionary)clientPreviewItemDisplayState;
- (NSDictionary)clientPreviewOptions;
- (NSNumber)internalShouldCreateTemporaryDirectoryInHost;
- (NSNumber)itemSize;
- (NSString)description;
- (NSString)previewItemContentType;
- (NSString)previewItemTitle;
- (NSURL)alternateShareURL;
- (NSURL)previewItemURL;
- (NSUUID)uuid;
- (QLItem)init;
- (QLItem)initWithCoder:(id)a3;
- (QLItem)initWithData:(id)a3 contentType:(id)a4 previewTitle:(id)a5;
- (QLItem)initWithDataProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5;
- (QLItem)initWithFPItem:(id)a3;
- (QLItem)initWithPreviewItemProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 fileSize:(id)a6;
- (QLItem)initWithSearchableItemUniqueIdentifier:(id)a3 applicationBundleIdentifier:(id)a4;
- (QLItem)initWithSearchableItemUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5 previewTitle:(id)a6;
- (QLItem)initWithURL:(id)a3;
- (QLItem)initWithURL:(id)a3 MIMEType:(id)a4;
- (QLItem)initWithURL:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5;
- (QLItem)initWithURLSandboxWrapper:(id)a3;
- (QLItem)initWithURLSandboxWrapper:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5;
- (QLItemFetcher)fetcher;
- (QLItemThumbnailGeneratorProtocolInternal)thumbnailGenerator;
- (QLPreviewItemPrivateProtocol)originalPreviewItem;
- (double)maxLoadingTime;
- (id)createPreviewContext;
- (id)internalCopy;
- (id)saveURL;
- (id)shareableURL;
- (unint64_t)_getGeneratedItemType;
- (unint64_t)_getPreviewItemType;
- (unint64_t)_previewItemTypeForType:(id)a3;
- (unint64_t)_uncachedExtensionPreviewItemType;
- (unint64_t)_uncachedPreviewItemTypeForContentType:(id)a3;
- (unint64_t)generatedPreviewItemType;
- (unint64_t)maximumNumberOfCachedPreviews;
- (unint64_t)previewExtensionTypeToUse;
- (unint64_t)previewItemType;
- (void)_removeEditedCopyIfExists;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)prepareSaveURL:(id)a3;
- (void)setEditedCopy:(id)a3;
- (void)setFetcher:(id)a3;
- (void)setPreviewItemProviderProgress:(id)a3;
@end

@implementation QLItem

- (QLItem)initWithPreviewItemProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5 fileSize:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = QLItem;
  v15 = [(QLItem *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_previewItemProvider, a3);
    objc_storeStrong(&v16->_itemSize, a6);
    objc_storeStrong(&v16->_previewItemContentType, a4);
    objc_storeStrong(&v16->_previewItemTitle, a5);
    v17 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:v12];
    UTIAnalyzer = v16->_UTIAnalyzer;
    v16->_UTIAnalyzer = v17;

    [(QLItem *)v16 _commonInit];
    v19 = v16;
  }

  return v16;
}

- (QLItem)initWithFPItem:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = QLItem;
  v6 = [(QLItem *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fpItem, a3);
    v8 = [v5 typeIdentifier];
    previewItemContentType = v7->_previewItemContentType;
    v7->_previewItemContentType = v8;

    v10 = [v5 displayName];
    previewItemTitle = v7->_previewItemTitle;
    v7->_previewItemTitle = v10;

    v12 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:v7->_previewItemContentType];
    UTIAnalyzer = v7->_UTIAnalyzer;
    v7->_UTIAnalyzer = v12;

    [(QLItem *)v7 _commonInit];
    v14 = v7;
  }

  return v7;
}

- (QLItem)initWithData:(id)a3 contentType:(id)a4 previewTitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = QLItem;
  v12 = [(QLItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewItemData, a3);
    objc_storeStrong(&v13->_previewItemContentType, a4);
    objc_storeStrong(&v13->_previewItemTitle, a5);
    v14 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:v10];
    UTIAnalyzer = v13->_UTIAnalyzer;
    v13->_UTIAnalyzer = v14;

    [(QLItem *)v13 _commonInit];
    v16 = v13;
  }

  return v13;
}

- (QLItem)initWithDataProvider:(id)a3 contentType:(id)a4 previewTitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = QLItem;
  v12 = [(QLItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewItemDataProvider, a3);
    objc_storeStrong(&v13->_previewItemContentType, a4);
    objc_storeStrong(&v13->_previewItemTitle, a5);
    v14 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:v10];
    UTIAnalyzer = v13->_UTIAnalyzer;
    v13->_UTIAnalyzer = v14;

    [(QLItem *)v13 _commonInit];
    v16 = v13;
  }

  return v13;
}

- (QLItem)initWithURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = QLItem;
  v5 = [(QLItem *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(QLItem *)v5 setPreviewItemURL:v4];
    v7 = objc_alloc(MEMORY[0x277CDAB20]);
    v8 = [(QLItem *)v6 previewItemURL];
    v9 = [v7 initWithURL:v8];
    UTIAnalyzer = v6->_UTIAnalyzer;
    v6->_UTIAnalyzer = v9;

    [(QLItem *)v6 _commonInit];
    v11 = v6;
  }

  return v6;
}

- (QLItem)initWithURL:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = QLItem;
  v10 = [(QLItem *)&v18 init];
  v11 = v10;
  if (v10)
  {
    [(QLItem *)v10 setPreviewItemURL:v8];
    objc_storeStrong(&v11->_previewItemTitle, a4);
    v11->_editingMode = a5;
    v12 = objc_alloc(MEMORY[0x277CDAB20]);
    v13 = [(QLItem *)v11 previewItemURL];
    v14 = [v12 initWithURL:v13];
    UTIAnalyzer = v11->_UTIAnalyzer;
    v11->_UTIAnalyzer = v14;

    [(QLItem *)v11 _commonInit];
    v16 = v11;
  }

  return v11;
}

- (QLItem)initWithURLSandboxWrapper:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = QLItem;
  v6 = [(QLItem *)&v14 init];
  if (v6)
  {
    v7 = [v5 url];
    [(QLItem *)v6 setPreviewItemURL:v7];

    objc_storeStrong(&v6->_sandboxingURLWrapper, a3);
    v8 = objc_alloc(MEMORY[0x277CDAB20]);
    v9 = [(QLItem *)v6 previewItemURL];
    v10 = [v8 initWithURL:v9];
    UTIAnalyzer = v6->_UTIAnalyzer;
    v6->_UTIAnalyzer = v10;

    [(QLItem *)v6 _commonInit];
    v12 = v6;
  }

  return v6;
}

- (QLItem)initWithURLSandboxWrapper:(id)a3 previewTitle:(id)a4 editingMode:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = QLItem;
  v11 = [(QLItem *)&v19 init];
  if (v11)
  {
    v12 = [v9 url];
    [(QLItem *)v11 setPreviewItemURL:v12];

    objc_storeStrong(&v11->_sandboxingURLWrapper, a3);
    objc_storeStrong(&v11->_previewItemTitle, a4);
    v11->_editingMode = a5;
    v13 = objc_alloc(MEMORY[0x277CDAB20]);
    v14 = [(QLItem *)v11 previewItemURL];
    v15 = [v13 initWithURL:v14];
    UTIAnalyzer = v11->_UTIAnalyzer;
    v11->_UTIAnalyzer = v15;

    [(QLItem *)v11 _commonInit];
    v17 = v11;
  }

  return v11;
}

- (QLItem)initWithURL:(id)a3 MIMEType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = QLItem;
  v8 = [(QLItem *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(QLItem *)v8 setPreviewItemURL:v6];
    v10 = QLTypeCopyUTIForURLAndMimeType(v6, v7);
    [(QLItem *)v9 setPreviewItemContentType:v10];

    [(QLItem *)v9 _commonInit];
    v11 = v9;
  }

  return v9;
}

- (QLItem)initWithSearchableItemUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5 previewTitle:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = QLItem;
  v15 = [(QLItem *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchableItemIdentifier, a3);
    objc_storeStrong(&v16->_spotlightQueryString, a4);
    objc_storeStrong(&v16->_searchableItemApplicationBundleIdentifier, a5);
    objc_storeStrong(&v16->_previewItemTitle, a6);
    [(QLItem *)v16 _commonInit];
    v17 = v16;
  }

  return v16;
}

- (QLItem)initWithSearchableItemUniqueIdentifier:(id)a3 applicationBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = QLItem;
  v9 = [(QLItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_previewItemType = 14;
    objc_storeStrong(&v9->_searchableItemIdentifier, a3);
    objc_storeStrong(&v10->_searchableItemApplicationBundleIdentifier, a4);
    [(QLItem *)v10 _commonInit];
    v11 = v10;
  }

  return v10;
}

- (QLItem)init
{
  v6.receiver = self;
  v6.super_class = QLItem;
  v2 = [(QLItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(QLItem *)v2 _commonInit];
    v4 = v3;
  }

  return v3;
}

+ (id)itemWithPreviewItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 internalCopy];
      [v5 setOriginalPreviewItem:v3];
    }

    else
    {
      v5 = objc_opt_new();
      [v5 setOriginalPreviewItem:v3];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v3 previewItemTitle];

        if (v6)
        {
          v7 = [v3 previewItemTitle];
          [v5 setPreviewItemTitle:v7];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [v3 backgroundColorOverride];
        [v5 setBackgroundColorOverride:v8];
      }

      if (objc_opt_respondsToSelector())
      {
        v9 = [v3 previewItemContentType];
        [v5 setPreviewItemContentType:v9];
      }

      if (objc_opt_respondsToSelector())
      {
        v10 = [v3 MIMEType];
        v11 = QLTypeCopyUTIForURLAndMimeType(0, v10);
        [v5 setPreviewItemContentType:v11];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setIsPromisedItem:{objc_msgSend(v3, "isPromisedItem")}];
      }

      else
      {
        v12 = [v5 previewItemURL];
        [v5 setIsPromisedItem:v12 == 0];
      }

      v13 = [v5 previewItemContentType];

      v14 = objc_alloc(MEMORY[0x277CDAB20]);
      if (v13)
      {
        v15 = [v5 previewItemContentType];
        v16 = [v14 initWithContentType:v15];
      }

      else
      {
        v15 = [v5 previewItemURL];
        v16 = [v14 initWithURL:v15];
      }

      v17 = v16;
      [v5 setUTIAnalyzer:v16];

      if (objc_opt_respondsToSelector())
      {
        v18 = [v3 previewOptions];
        [v5 setClientPreviewOptions:v18];
      }

      if (objc_opt_respondsToSelector())
      {
        v19 = [v3 previewItemDisplayState];
        [v5 setPreviewItemDisplayState:v19];
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = [(QLItem *)self editedCopy];
  v4 = [v3 temporaryDirectoryWasCreatedInHost];

  if ((v4 & 1) == 0)
  {
    [(QLItem *)self _removeEditedCopyIfExists];
  }

  v5.receiver = self;
  v5.super_class = QLItem;
  [(QLItem *)&v5 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(QLItem *)self previewItemURL];
    v7 = [v5 previewItemURL];
    v8 = __18__QLItem_isEqual___block_invoke(v7, v6, v7);

    if (!v8)
    {
      goto LABEL_28;
    }

    v9 = [(QLItem *)self previewItemData];
    v10 = [v5 previewItemData];
    v11 = __18__QLItem_isEqual___block_invoke(v10, v9, v10);

    if (!v11)
    {
      goto LABEL_28;
    }

    v12 = [(QLItem *)self fpItem];
    v13 = [v5 fpItem];
    v14 = __18__QLItem_isEqual___block_invoke(v13, v12, v13);

    if (!v14)
    {
      goto LABEL_28;
    }

    v15 = [(QLItem *)self relativePath];
    v16 = [v5 relativePath];
    v17 = __18__QLItem_isEqual___block_invoke(v16, v15, v16);

    if (!v17)
    {
      goto LABEL_28;
    }

    v18 = [(QLItem *)self previewItemProvider];
    v19 = [v5 previewItemProvider];
    v20 = __18__QLItem_isEqual___block_invoke(v19, v18, v19);

    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = [(QLItem *)self itemSize];
    v22 = [v5 itemSize];
    v23 = __18__QLItem_isEqual___block_invoke(v22, v21, v22);

    if (!v23)
    {
      goto LABEL_28;
    }

    v24 = [(QLItem *)self previewItemContentType];
    v25 = [v5 previewItemContentType];
    v26 = __18__QLItem_isEqual___block_invoke(v25, v24, v25);

    if (!v26)
    {
      goto LABEL_28;
    }

    v27 = [(QLItem *)self backgroundColorOverride];
    v28 = [v5 backgroundColorOverride];
    v29 = __18__QLItem_isEqual___block_invoke(v28, v27, v28);

    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = [(QLItem *)self previewItemTitle];
    v31 = [v5 previewItemTitle];
    v32 = __18__QLItem_isEqual___block_invoke(v31, v30, v31);

    if (!v32)
    {
      goto LABEL_28;
    }

    v33 = [(QLItem *)self editedFileURL];
    v34 = [v5 editedFileURL];
    v35 = __18__QLItem_isEqual___block_invoke(v34, v33, v34);

    if (!v35)
    {
      goto LABEL_28;
    }

    v36 = [(QLItem *)self password];
    v37 = [v5 password];
    v38 = __18__QLItem_isEqual___block_invoke(v37, v36, v37);

    if (!v38)
    {
      goto LABEL_28;
    }

    v39 = [(QLItem *)self uuid];
    v40 = [v5 uuid];
    v41 = __18__QLItem_isEqual___block_invoke(v40, v39, v40);

    if (!v41)
    {
      goto LABEL_28;
    }

    v42 = [(QLItem *)self previewItemDataProvider];
    v43 = [v5 previewItemDataProvider];

    if (v42 != v43)
    {
      goto LABEL_28;
    }

    v44 = [(QLItem *)self previewItemType];
    if (v44 != [v5 previewItemType])
    {
      goto LABEL_28;
    }

    v45 = [(QLItem *)self processIdentifier];
    if (v45 != [v5 processIdentifier])
    {
      goto LABEL_28;
    }

    v46 = [(QLItem *)self isPromisedItem];
    if (v46 != [v5 isPromisedItem])
    {
      goto LABEL_28;
    }

    v47 = [(QLItem *)self useFullPDFTransition];
    if (v47 != [v5 useFullPDFTransition])
    {
      goto LABEL_28;
    }

    v48 = [(QLItem *)self useLoadingTimeout];
    if (v48 != [v5 useLoadingTimeout])
    {
      goto LABEL_28;
    }

    v49 = [(QLItem *)self wantsPreviewInDebugViewController];
    if (v49 != [v5 wantsPreviewInDebugViewController])
    {
      goto LABEL_28;
    }

    v50 = [(QLItem *)self sandboxingURLWrapper];
    v51 = [v50 url];
    v52 = [v5 sandboxingURLWrapper];
    v53 = [v52 url];
    v54 = __18__QLItem_isEqual___block_invoke(v53, v51, v53);

    if (!v54)
    {
      goto LABEL_28;
    }

    v55 = [(QLItem *)self searchableItemIdentifier];
    v56 = [v5 searchableItemIdentifier];
    v57 = __18__QLItem_isEqual___block_invoke(v56, v55, v56);

    if (!v57)
    {
      goto LABEL_28;
    }

    v58 = [(QLItem *)self spotlightQueryString];
    v59 = [v5 spotlightQueryString];
    v60 = __18__QLItem_isEqual___block_invoke(v59, v58, v59);

    if (!v60)
    {
      goto LABEL_28;
    }

    v61 = [(QLItem *)self searchableItemApplicationBundleIdentifier];
    v62 = [v5 searchableItemApplicationBundleIdentifier];
    v63 = __18__QLItem_isEqual___block_invoke(v62, v61, v62);

    if (!v63)
    {
      goto LABEL_28;
    }

    v64 = [(QLItem *)self previewItemProviderProgress];
    v65 = [v5 previewItemProviderProgress];
    v66 = __18__QLItem_isEqual___block_invoke(v65, v64, v65);

    if (v66)
    {
      v67 = [(QLItem *)self clientPreviewOptions];
      v68 = [v5 clientPreviewOptions];
      v69 = __18__QLItem_isEqual___block_invoke(v68, v67, v68);
    }

    else
    {
LABEL_28:
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  return v69;
}

uint64_t __18__QLItem_isEqual___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 | v5)
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqual:v5];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)internalCopy
{
  v3 = objc_opt_new();
  [v3 setPreviewItemURL:self->_previewItemURL];
  [v3 setPreviewItemData:self->_previewItemData];
  [v3 setFpItem:self->_fpItem];
  [v3 setPreviewItemProvider:self->_previewItemProvider];
  [v3 setRelativePath:self->_relativePath];
  [v3 setItemSize:self->_itemSize];
  v4 = [(QLItem *)self fetcher];
  [v3 setFetcher:v4];

  [v3 setUTIAnalyzer:self->_UTIAnalyzer];
  [v3 setPreviewItemContentType:self->_previewItemContentType];
  [v3 setPreviewItemType:self->_previewItemType];
  [v3 setBackgroundColorOverride:self->_backgroundColorOverride];
  [v3 setPreviewItemTitle:self->_previewItemTitle];
  [v3 setEditedCopy:self->_editedCopy];
  [v3 setPassword:self->_password];
  [v3 setUuid:self->_uuid];
  [v3 setProcessIdentifier:self->_processIdentifier];
  [v3 setIsPromisedItem:self->_isPromisedItem];
  [v3 setUseFullPDFTransition:self->_useFullPDFTransition];
  [v3 setUseLoadingTimeout:self->_useLoadingTimeout];
  [v3 setSearchableItemIdentifier:self->_searchableItemIdentifier];
  [v3 setSpotlightQueryString:self->_spotlightQueryString];
  [v3 setSearchableItemApplicationBundleIdentifier:self->_searchableItemApplicationBundleIdentifier];
  [v3 setCanBeShared:self->_canBeShared];
  [v3 setCanBeEdited:self->_canBeEdited];
  [v3 setCanHandleEditedCopy:self->_canHandleEditedCopy];
  [v3 setOriginalContentWasUpdated:self->_originalContentWasUpdated];
  [v3 setEditingMode:self->_editingMode];
  [v3 setEditedFileBehavior:self->_editedFileBehavior];
  [v3 setShouldPreventMachineReadableCodeDetection:self->_shouldPreventMachineReadableCodeDetection];
  [v3 setWantsPreviewInDebugViewController:self->_wantsPreviewInDebugViewController];
  [v3 setPreviewItemDataProvider:self->_previewItemDataProvider];
  [v3 setSandboxingURLWrapper:self->_sandboxingURLWrapper];
  [v3 setClientPreviewOptions:self->_clientPreviewOptions];
  [v3 setClientPreviewItemDisplayState:self->_clientPreviewItemDisplayState];
  [v3 setInternalShouldCreateTemporaryDirectoryInHost:self->_internalShouldCreateTemporaryDirectoryInHost];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v44 = a3;
  v4 = [(QLItem *)self previewItemURL];

  if (v4)
  {
    v5 = [(QLItem *)self previewItemURL];
    [v44 encodeObject:v5 forKey:@"previewItemURL"];
  }

  v6 = [(QLItem *)self previewItemData];

  if (v6)
  {
    v7 = [(QLItem *)self previewItemData];
    [v44 encodeObject:v7 forKey:@"previewItemData"];
  }

  v8 = [(QLItem *)self fpItem];

  if (v8)
  {
    v9 = [(QLItem *)self fpItem];
    [v44 encodeObject:v9 forKey:@"fpItem"];
  }

  v10 = [(QLItem *)self relativePath];

  if (v10)
  {
    v11 = [(QLItem *)self relativePath];
    [v44 encodeObject:v11 forKey:@"relativePath"];
  }

  v12 = [(QLItem *)self itemSize];

  if (v12)
  {
    v13 = [(QLItem *)self itemSize];
    [v44 encodeObject:v13 forKey:@"itemSize"];
  }

  v14 = [(QLItem *)self fetcher];

  if (v14)
  {
    v15 = [(QLItem *)self fetcher];
    [v44 encodeObject:v15 forKey:@"fetcher"];
  }

  v16 = [(QLItem *)self UTIAnalyzer];

  if (v16)
  {
    v17 = [(QLItem *)self UTIAnalyzer];
    [v44 encodeObject:v17 forKey:@"UTIAnalyzer"];
  }

  v18 = [(QLItem *)self previewItemContentType];

  if (v18)
  {
    v19 = [(QLItem *)self previewItemContentType];
    [v44 encodeObject:v19 forKey:@"previewItemContentType"];
  }

  v20 = [(QLItem *)self backgroundColorOverride];

  if (v20)
  {
    v21 = [(QLItem *)self backgroundColorOverride];
    [v44 encodeObject:v21 forKey:@"backgroundColorOverride"];
  }

  v22 = [(QLItem *)self previewItemTitle];

  if (v22)
  {
    v23 = [(QLItem *)self previewItemTitle];
    [v44 encodeObject:v23 forKey:@"previewItemTitle"];
  }

  v24 = [(QLItem *)self password];

  if (v24)
  {
    v25 = [(QLItem *)self password];
    [v44 encodeObject:v25 forKey:@"password"];
  }

  v26 = [(QLItem *)self uuid];

  if (v26)
  {
    v27 = [(QLItem *)self uuid];
    [v44 encodeObject:v27 forKey:@"uuid"];
  }

  v28 = [(QLItem *)self searchableItemIdentifier];

  if (v28)
  {
    v29 = [(QLItem *)self searchableItemIdentifier];
    [v44 encodeObject:v29 forKey:@"searchableItemIdentifier"];
  }

  v30 = [(QLItem *)self spotlightQueryString];

  if (v30)
  {
    v31 = [(QLItem *)self spotlightQueryString];
    [v44 encodeObject:v31 forKey:@"spotlightQueryString"];
  }

  v32 = [(QLItem *)self searchableItemApplicationBundleIdentifier];

  if (v32)
  {
    v33 = [(QLItem *)self searchableItemApplicationBundleIdentifier];
    [v44 encodeObject:v33 forKey:@"searchableItemApplicationBundleIdentifier"];
  }

  v34 = [(QLItem *)self sandboxingURLWrapper];

  if (v34)
  {
    v35 = [(QLItem *)self sandboxingURLWrapper];
    [v44 encodeObject:v35 forKey:@"sandboxingURLWrapper"];
  }

  v36 = [(QLItem *)self clientPreviewOptions];

  if (v36)
  {
    v37 = [(QLItem *)self clientPreviewOptions];
    [v44 encodeObject:v37 forKey:@"clientPreviewOptions"];
  }

  v38 = [(QLItem *)self clientPreviewItemDisplayState];

  if (v38)
  {
    v39 = [(QLItem *)self clientPreviewItemDisplayState];
    [v44 encodeObject:v39 forKey:@"clientPreviewItemDisplayState"];
  }

  v40 = [(QLItem *)self generatedURLHandler];

  if (v40)
  {
    v41 = [(QLItem *)self generatedURLHandler];
    [v44 encodeObject:v41 forKey:@"generatedURLHandler"];
  }

  v42 = [(QLItem *)self internalShouldCreateTemporaryDirectoryInHost];
  [v44 encodeBool:objc_msgSend(v42 forKey:{"BOOLValue"), @"internalShouldCreateTemporaryDirectoryInHost"}];

  v43 = [MEMORY[0x277CCAC38] processInfo];
  [v44 encodeInteger:objc_msgSend(v43 forKey:{"processIdentifier"), @"processIdentifier"}];

  [v44 encodeBool:-[QLItem isPromisedItem](self forKey:{"isPromisedItem"), @"isPromisedItem"}];
  [v44 encodeBool:-[QLItem useFullPDFTransition](self forKey:{"useFullPDFTransition"), @"useFullPDFTransition"}];
  [v44 encodeBool:-[QLItem useLoadingTimeout](self forKey:{"useLoadingTimeout"), @"useLoadingTimeout"}];
  [v44 encodeBool:-[QLItem canBeShared](self forKey:{"canBeShared"), @"canBeShared"}];
  [v44 encodeBool:-[QLItem canBeEdited](self forKey:{"canBeEdited"), @"canBeEdited"}];
  [v44 encodeBool:-[QLItem canHandleEditedCopy](self forKey:{"canHandleEditedCopy"), @"canHandleEditedCopy"}];
  [v44 encodeInteger:-[QLItem editingMode](self forKey:{"editingMode"), @"editingMode"}];
  [v44 encodeInteger:-[QLItem editedFileBehavior](self forKey:{"editedFileBehavior"), @"editedFileBehavior"}];
  [v44 encodeInteger:-[QLItem shouldPreventMachineReadableCodeDetection](self forKey:{"shouldPreventMachineReadableCodeDetection"), @"shouldPreventMachineReadableCodeDetection"}];
  [v44 encodeBool:-[QLItem wantsPreviewInDebugViewController](self forKey:{"wantsPreviewInDebugViewController"), @"wantsPreviewInDebugViewController"}];
}

- (QLItem)initWithCoder:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = QLItem;
  v5 = [(QLItem *)&v54 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    v8 = +[QLItemFetcherFactory possibleFetcherClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"fetcher"];
    fetcher = v7->_fetcher;
    v7->_fetcher = v9;

    objc_sync_exit(v7);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UTIAnalyzer"];
    UTIAnalyzer = v7->_UTIAnalyzer;
    v7->_UTIAnalyzer = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpItem"];
    fpItem = v7->_fpItem;
    v7->_fpItem = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewItemURL"];
    previewItemURL = v7->_previewItemURL;
    v7->_previewItemURL = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewItemData"];
    previewItemData = v7->_previewItemData;
    v7->_previewItemData = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relativePath"];
    relativePath = v7->_relativePath;
    v7->_relativePath = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemSize"];
    itemSize = v7->_itemSize;
    v7->_itemSize = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewItemContentType"];
    previewItemContentType = v7->_previewItemContentType;
    v7->_previewItemContentType = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorOverride"];
    backgroundColorOverride = v7->_backgroundColorOverride;
    v7->_backgroundColorOverride = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previewItemTitle"];
    previewItemTitle = v7->_previewItemTitle;
    v7->_previewItemTitle = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v7->_password;
    v7->_password = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v7->_uuid;
    v7->_uuid = v31;

    v7->_processIdentifier = [v4 decodeIntegerForKey:@"processIdentifier"];
    v7->_isPromisedItem = [v4 decodeBoolForKey:@"isPromisedItem"];
    v7->_useFullPDFTransition = [v4 decodeBoolForKey:@"useFullPDFTransition"];
    v7->_useLoadingTimeout = [v4 decodeBoolForKey:@"useLoadingTimeout"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemIdentifier"];
    searchableItemIdentifier = v7->_searchableItemIdentifier;
    v7->_searchableItemIdentifier = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightQueryString"];
    spotlightQueryString = v7->_spotlightQueryString;
    v7->_spotlightQueryString = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemApplicationBundleIdentifier"];
    searchableItemApplicationBundleIdentifier = v7->_searchableItemApplicationBundleIdentifier;
    v7->_searchableItemApplicationBundleIdentifier = v37;

    v7->_canBeShared = [v4 decodeBoolForKey:@"canBeShared"];
    v7->_canBeEdited = [v4 decodeBoolForKey:@"canBeEdited"];
    v7->_canHandleEditedCopy = [v4 decodeBoolForKey:@"canHandleEditedCopy"];
    v7->_editedFileBehavior = [v4 decodeIntegerForKey:@"editedFileBehavior"];
    v7->_shouldPreventMachineReadableCodeDetection = [v4 decodeIntegerForKey:@"shouldPreventMachineReadableCodeDetection"] != 0;
    v7->_editingMode = [v4 decodeIntegerForKey:@"editingMode"];
    v7->_wantsPreviewInDebugViewController = [v4 decodeBoolForKey:@"wantsPreviewInDebugViewController"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sandboxingURLWrapper"];
    sandboxingURLWrapper = v7->_sandboxingURLWrapper;
    v7->_sandboxingURLWrapper = v39;

    v41 = [v4 decodeBoolForKey:@"internalShouldCreateTemporaryDirectoryInHost"];
    v42 = [MEMORY[0x277CCABB0] numberWithBool:v41];
    internalShouldCreateTemporaryDirectoryInHost = v7->_internalShouldCreateTemporaryDirectoryInHost;
    v7->_internalShouldCreateTemporaryDirectoryInHost = v42;

    v44 = +[QLItem customExtensionCommunicationEncodedClasses];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"clientPreviewOptions"];
    clientPreviewOptions = v7->_clientPreviewOptions;
    v7->_clientPreviewOptions = v45;

    v47 = +[QLItem customExtensionCommunicationEncodedClasses];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"clientPreviewItemDisplayState"];
    clientPreviewItemDisplayState = v7->_clientPreviewItemDisplayState;
    v7->_clientPreviewItemDisplayState = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"generatedURLHandler"];
    generatedURLHandler = v7->_generatedURLHandler;
    v7->_generatedURLHandler = v50;

    v52 = v7;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = QLItem;
  v4 = [(QLItem *)&v8 description];
  v5 = [(QLItem *)self previewItemTitle];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (NSDictionary)clientPreviewOptions
{
  clientPreviewOptions = self->_clientPreviewOptions;
  if (clientPreviewOptions)
  {
    v3 = clientPreviewOptions;
    goto LABEL_8;
  }

  v5 = [(QLItem *)self originalPreviewItem];
  v6 = v5;
  if (v5 == self)
  {
  }

  else
  {
    v7 = [(QLItem *)self originalPreviewItem];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(QLItem *)self originalPreviewItem];
      v3 = [v9 previewOptions];

      goto LABEL_8;
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (NSDictionary)clientPreviewItemDisplayState
{
  clientPreviewItemDisplayState = self->_clientPreviewItemDisplayState;
  if (clientPreviewItemDisplayState)
  {
    v3 = clientPreviewItemDisplayState;
    goto LABEL_8;
  }

  v5 = [(QLItem *)self originalPreviewItem];
  v6 = v5;
  if (v5 == self)
  {
  }

  else
  {
    v7 = [(QLItem *)self originalPreviewItem];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(QLItem *)self originalPreviewItem];
      v3 = [v9 previewItemDisplayState];

      goto LABEL_8;
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (BOOL)isPromisedItem
{
  v3 = [(QLItem *)self originalPreviewItem];
  v4 = v3;
  if (v3 == self)
  {
  }

  else
  {
    v5 = [(QLItem *)self originalPreviewItem];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(QLItem *)self originalPreviewItem];
      v8 = [v7 isPromisedItem];

      return v8;
    }
  }

  return self->_isPromisedItem;
}

- (NSURL)alternateShareURL
{
  v3 = [(QLItem *)self originalPreviewItem];
  if (v3 == self)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [(QLItem *)self originalPreviewItem];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v3 = [(QLItem *)self originalPreviewItem];
    v6 = [(QLItem *)v3 alternateShareURL];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (QLItemFetcher)fetcher
{
  v2 = self;
  objc_sync_enter(v2);
  fetcher = v2->_fetcher;
  if (!fetcher)
  {
    v4 = [QLItemFetcherFactory fetcherForPreviewItem:v2];
    v5 = v2->_fetcher;
    v2->_fetcher = v4;

    fetcher = v2->_fetcher;
  }

  v6 = fetcher;
  objc_sync_exit(v2);

  return v6;
}

- (void)setFetcher:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  fetcher = obj->_fetcher;
  obj->_fetcher = v4;

  objc_sync_exit(obj);
}

- (id)createPreviewContext
{
  v3 = objc_opt_new();
  v4 = [(QLItem *)self thumbnailGenerator];
  [v3 setThumbnailGenerator:v4];

  v5 = [(QLItem *)self previewItemTitle];
  [v3 setPreviewTitle:v5];

  v6 = [(QLItem *)self previewItemContentType];
  [v3 setOriginalContentType:v6];

  v7 = [(QLItem *)self generatedItemContentType];
  if (v7)
  {
    [v3 setContentType:v7];
  }

  else
  {
    v8 = [(QLItem *)self previewItemContentType];
    [v3 setContentType:v8];
  }

  [v3 setCanBeEdited:{-[QLItem canBeEdited](self, "canBeEdited")}];
  [v3 setCanBeShared:{-[QLItem canBeShared](self, "canBeShared")}];
  [v3 setEditedFileBehavior:{-[QLItem editedFileBehavior](self, "editedFileBehavior")}];
  [v3 setShouldPreventMachineReadableCodeDetection:{-[QLItem shouldPreventMachineReadableCodeDetection](self, "shouldPreventMachineReadableCodeDetection")}];
  v9 = [(QLItem *)self password];
  [v3 setPassword:v9];

  [v3 setPreviewItemType:{-[QLItem previewItemType](self, "previewItemType")}];
  v10 = [(QLItem *)self backgroundColorOverride];
  [v3 setBackgroundColor:v10];

  v11 = [(QLItem *)self itemSize];
  [v3 setItemSize:v11];

  [v3 setProcessIdentifier:{-[QLItem processIdentifier](self, "processIdentifier")}];
  [v3 setItem:self];
  v12 = [(QLItem *)self clientPreviewOptions];
  [v3 setClientPreviewOptions:v12];

  [v3 setStringEncoding:{-[QLItem stringEncoding](self, "stringEncoding")}];
  v13 = [(QLItem *)self attachments];
  [v3 setAttachments:v13];

  v14 = [(QLItem *)self bitmapFormat];
  [v3 setBitmapFormat:v14];

  return v3;
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_opt_new();
    v5 = self->_uuid;
    self->_uuid = v4;

    uuid = self->_uuid;
  }

  v6 = uuid;

  return v6;
}

- (NSNumber)itemSize
{
  itemSize = self->_itemSize;
  if (!itemSize)
  {
    v4 = [(QLItem *)self fetcher];
    v5 = [v4 itemSize];
    v6 = self->_itemSize;
    self->_itemSize = v5;

    itemSize = self->_itemSize;
  }

  v7 = itemSize;

  return v7;
}

- (NSURL)previewItemURL
{
  previewItemURL = self->_previewItemURL;
  if (!previewItemURL)
  {
    generatedURLHandler = self->_generatedURLHandler;
    if (generatedURLHandler)
    {
      [(QLURLHandler *)generatedURLHandler fileURL];
    }

    else
    {
      [(QLPreviewItemPrivateProtocol *)self->_originalPreviewItem previewItemURL];
    }
    v5 = ;
    v6 = self->_previewItemURL;
    self->_previewItemURL = v5;

    previewItemURL = self->_previewItemURL;
  }

  v7 = previewItemURL;

  return v7;
}

- (QLItemThumbnailGeneratorProtocolInternal)thumbnailGenerator
{
  thumbnailGenerator = self->_thumbnailGenerator;
  if (!thumbnailGenerator)
  {
    v4 = [[QLSingleItemThumbnailGenerator alloc] initWithItem:self];
    v5 = self->_thumbnailGenerator;
    self->_thumbnailGenerator = v4;

    thumbnailGenerator = self->_thumbnailGenerator;
  }

  v6 = thumbnailGenerator;

  return v6;
}

- (QLPreviewItemPrivateProtocol)originalPreviewItem
{
  if (self->_originalPreviewItem)
  {
    self = self->_originalPreviewItem;
  }

  return self;
}

- (void)setPreviewItemProviderProgress:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__QLItem_setPreviewItemProviderProgress___block_invoke;
  v6[3] = &unk_279AE0E40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  QLRunInMainThread(v6);
}

void __41__QLItem_setPreviewItemProviderProgress___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = [*(a1 + 32) fetcher];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [*(a1 + 32) fetcher];
    [*(*(a1 + 32) + 56) floatValue];
    [v5 updatedURLWithProgress:v4];
  }
}

- (NSString)previewItemTitle
{
  overridenItemTitle = self->_overridenItemTitle;
  if (!overridenItemTitle)
  {
    overridenItemTitle = self->_previewItemTitle;
    if (!overridenItemTitle)
    {
      v4 = [(QLItem *)self previewItemURL];

      if (v4)
      {
        v5 = [(QLItem *)self previewItemURL];
        v6 = [v5 path];

        v7 = [(QLItem *)self previewItemURL];
        v8 = v7;
        if (v6)
        {
          v9 = [v7 path];
LABEL_10:
          v11 = v9;

          goto LABEL_11;
        }

        v11 = [v7 resourceSpecifier];

        if (v11)
        {
          v8 = [(QLItem *)self previewItemURL];
          v9 = [v8 resourceSpecifier];
          goto LABEL_10;
        }
      }

      else
      {
        v10 = [(QLItem *)self relativePath];

        if (!v10)
        {
LABEL_12:
          overridenItemTitle = self->_previewItemTitle;
          goto LABEL_13;
        }

        v11 = [(QLItem *)self relativePath];
      }

LABEL_11:
      v12 = [v11 lastPathComponent];
      v13 = [v12 stringByDeletingPathExtension];
      previewItemTitle = self->_previewItemTitle;
      self->_previewItemTitle = v13;

      goto LABEL_12;
    }
  }

LABEL_13:
  v15 = overridenItemTitle;

  return v15;
}

- (NSString)previewItemContentType
{
  previewItemContentType = self->_previewItemContentType;
  if (!previewItemContentType)
  {
    v4 = [(QLItem *)self UTIAnalyzer];
    v5 = [v4 contentType];
    v6 = self->_previewItemContentType;
    self->_previewItemContentType = v5;

    previewItemContentType = self->_previewItemContentType;
  }

  v7 = previewItemContentType;

  return v7;
}

- (unint64_t)previewItemType
{
  v12 = *MEMORY[0x277D85DE8];
  result = self->_previewItemType;
  if (!result)
  {
    self->_previewItemType = [(QLItem *)self _getPreviewItemType];
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      previewItemType = self->_previewItemType;
      v8 = 138412546;
      v9 = self;
      v10 = 2048;
      v11 = previewItemType;
      _os_log_impl(&dword_261653000, v5, OS_LOG_TYPE_INFO, "Determined preview item type of item (%@) - Preview type is %lu #PreviewItem", &v8, 0x16u);
    }

    result = self->_previewItemType;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)generatedPreviewItemType
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(QLItem *)self generatedItemContentType];

  if (v3)
  {
    result = self->_generatedPreviewItemType;
    if (!result)
    {
      self->_generatedPreviewItemType = [(QLItem *)self _getGeneratedItemType];
      v5 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v8 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v5 = *v8;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        generatedPreviewItemType = self->_generatedPreviewItemType;
        v9 = 138412546;
        v10 = self;
        v11 = 2048;
        v12 = generatedPreviewItemType;
        _os_log_impl(&dword_261653000, v5, OS_LOG_TYPE_DEBUG, "Determined generated preview item type of item (%@) - Generated preview type is %lu #PreviewItem", &v9, 0x16u);
      }

      result = self->_generatedPreviewItemType;
    }
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)shareableURL
{
  v3 = [(QLItem *)self editedFileURL];
  v4 = [v3 startAccessingSecurityScopedResource];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v8 = v3;
  }

  else
  {
    v9 = [(QLItem *)self alternateShareURL];

    if (v9)
    {
      [(QLItem *)self alternateShareURL];
    }

    else
    {
      [(QLItem *)self saveURL];
    }
    v8 = ;
  }

  v10 = v8;
  if (v4)
  {
    [v3 stopAccessingSecurityScopedResource];
  }

  return v10;
}

- (BOOL)shouldCreateTemporaryDirectoryInHost
{
  v2 = [(QLItem *)self internalShouldCreateTemporaryDirectoryInHost];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)internalShouldCreateTemporaryDirectoryInHost
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_internalShouldCreateTemporaryDirectoryInHost)
  {
    v3 = [(QLItem *)self previewItemURL];

    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (v3)
    {
      if (!v5)
      {
        QLSInitLogging();
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [(QLItem *)self description];
        v15 = 138412290;
        v16 = v7;
        _os_log_impl(&dword_261653000, v6, OS_LOG_TYPE_DEFAULT, "QLPreviewItem has an url, create a tmp dir in the host: %@ #PreviewItem", &v15, 0xCu);
      }

      v8 = MEMORY[0x277CBEC38];
    }

    else
    {
      if (!v5)
      {
        QLSInitLogging();
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v5;
        v10 = [(QLItem *)self description];
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_DEFAULT, "QLPreviewItem has no url yet, don't create a tmp dir in the host: %@ #PreviewItem", &v15, 0xCu);
      }

      v8 = MEMORY[0x277CBEC28];
    }

    internalShouldCreateTemporaryDirectoryInHost = self->_internalShouldCreateTemporaryDirectoryInHost;
    self->_internalShouldCreateTemporaryDirectoryInHost = v8;
  }

  v12 = self->_internalShouldCreateTemporaryDirectoryInHost;
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)prepareSaveURL:(id)a3
{
  v4 = a3;
  v5 = [(QLItem *)self fetcher];
  v6 = v5;
  if (v5)
  {
    [v5 prepareShareableItem:v4];
  }

  else
  {
    v4[2](v4);
  }
}

- (id)saveURL
{
  v3 = [(QLItem *)self overridenItemURL];

  if (v3)
  {
    v4 = [(QLItem *)self overridenItemURL];
LABEL_3:
    v5 = v4;
    goto LABEL_9;
  }

  v6 = [(QLItem *)self fetcher];
  v7 = [v6 shareableItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(QLItem *)self fetcher];
    v5 = [v9 shareableItem];
  }

  else
  {
    v10 = [(QLItem *)self previewItemURL];

    if (v10)
    {
      v4 = [(QLItem *)self previewItemURL];
      goto LABEL_3;
    }

    v5 = 0;
  }

LABEL_9:

  return v5;
}

- (void)setEditedCopy:(id)a3
{
  v5 = a3;
  editedCopy = self->_editedCopy;
  if (editedCopy != v5)
  {
    v10 = v5;
    if (![(QLPreviewItemEditedCopy *)editedCopy isEqual:v5])
    {
      v7 = [(QLPreviewItemEditedCopy *)self->_editedCopy url];
      v8 = [(QLPreviewItemEditedCopy *)v10 url];
      v9 = [v7 isEqual:v8];

      if ((v9 & 1) == 0)
      {
        [(QLItem *)self _removeEditedCopyIfExists];
      }

      objc_storeStrong(&self->_editedCopy, a3);
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_removeEditedCopyIfExists
{
  [(QLPreviewItemEditedCopy *)self->_editedCopy removeFromDisk:1];
  editedCopy = self->_editedCopy;
  self->_editedCopy = 0;
}

- (BOOL)supportsChromelessUI
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = [(QLItem *)self previewItemType];
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 1;
  }

  if (v3 != 1)
  {
    return v3 == 11;
  }

  v6 = [(QLItem *)self UTIAnalyzer];
  v4 = ([v6 isAudioOnly] & 1) == 0 && (_os_feature_enabled_impl() & 1) != 0;

  return v4;
}

- (BOOL)shouldOpenInFullScreen
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_6;
  }

  v3 = [(QLItem *)self previewItemType];
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (v3 == 1)
    {
      v5 = [(QLItem *)self UTIAnalyzer];
      v4 = [v5 isAudioOnly] ^ 1;

      return v4;
    }

LABEL_6:
    LOBYTE(v4) = 0;
    return v4;
  }

  LOBYTE(v4) = 1;
  return v4;
}

+ (id)customExtensionCommunicationEncodedClasses
{
  if (customExtensionCommunicationEncodedClasses_onceToken != -1)
  {
    +[QLItem customExtensionCommunicationEncodedClasses];
  }

  v3 = customExtensionCommunicationEncodedClasses__customExtensionCommunicationEncodedClasses;

  return v3;
}

uint64_t __52__QLItem_customExtensionCommunicationEncodedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  customExtensionCommunicationEncodedClasses__customExtensionCommunicationEncodedClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)encodedClasses
{
  if (encodedClasses_onceToken != -1)
  {
    +[QLItem encodedClasses];
  }

  v3 = encodedClasses__encodedClasses;

  return v3;
}

void __24__QLItem_encodedClasses__block_invoke()
{
  v0 = +[QLItemFetcherFactory possibleFetcherClasses];
  v4 = [v0 mutableCopy];

  [v4 addObject:objc_opt_class()];
  v1 = +[QLItem customExtensionCommunicationEncodedClasses];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = encodedClasses__encodedClasses;
  encodedClasses__encodedClasses = v2;
}

- (CGSize)preferredContentSizeForOrbPlatter
{
  width = self->preferredContentSizeForOrbPlatter.width;
  height = self->preferredContentSizeForOrbPlatter.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)supportedContentTypeIdentifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__QLItem_PreviewInfo__supportedContentTypeIdentifiers__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedContentTypeIdentifiers_once != -1)
  {
    dispatch_once(&supportedContentTypeIdentifiers_once, block);
  }

  v2 = supportedContentTypeIdentifiers_sSupportedTypeIdentifiers;

  return v2;
}

void __54__QLItem_PreviewInfo__supportedContentTypeIdentifiers__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 32) contentTypesToPreviewTypes];
  v2 = [v5 allKeys];
  v3 = [v1 setWithArray:v2];
  v4 = supportedContentTypeIdentifiers_sSupportedTypeIdentifiers;
  supportedContentTypeIdentifiers_sSupportedTypeIdentifiers = v3;
}

+ (id)supportedContentTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__QLItem_PreviewInfo__supportedContentTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (supportedContentTypes_once != -1)
  {
    dispatch_once(&supportedContentTypes_once, block);
  }

  v2 = supportedContentTypes_sSupportedTypes;

  return v2;
}

void __44__QLItem_PreviewInfo__supportedContentTypes__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v5 = [*(a1 + 32) contentTypesToPreviewTypes];
  v2 = [v5 allKeys];
  v3 = [v1 setWithArray:v2];
  v4 = supportedContentTypes_sSupportedTypes;
  supportedContentTypes_sSupportedTypes = v3;
}

+ (id)webContentTypes
{
  if (webContentTypes_once != -1)
  {
    +[QLItem(PreviewInfo) webContentTypes];
  }

  v3 = webContentTypes_sSet;

  return v3;
}

void __38__QLItem_PreviewInfo__webContentTypes__block_invoke()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = webContentTypes_sSet;
  webContentTypes_sSet = v0;

  v2 = webContentTypes_sSet;
  v3 = +[QLPreviewConverter convertibleTypes];
  [v2 unionSet:v3];

  v4 = webContentTypes_sSet;
  v5 = *MEMORY[0x277CE1DA0];
  v8[0] = *MEMORY[0x277CE1E68];
  v8[1] = v5;
  v8[2] = *MEMORY[0x277CE1ED8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v4 addObjectsFromArray:v6];

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)rtfContentTypes
{
  if (rtfContentTypes_once != -1)
  {
    +[QLItem(PreviewInfo) rtfContentTypes];
  }

  v3 = rtfContentTypes_sSet;

  return v3;
}

uint64_t __38__QLItem_PreviewInfo__rtfContentTypes__block_invoke()
{
  rtfContentTypes_sSet = [MEMORY[0x277CBEB58] setWithObjects:{*MEMORY[0x277CE1E50], *MEMORY[0x277CE1E58], *MEMORY[0x277CE1D78], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)contentTypeConformsToRTFD:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:?];
  v4 = +[QLItem rtfContentTypes];
  v5 = _QLContentTypeConformsToContentTypeInSet(v3, v4);

  return v5;
}

+ (id)contentTypesToPreviewTypes
{
  if (contentTypesToPreviewTypes_once != -1)
  {
    +[QLItem(PreviewInfo) contentTypesToPreviewTypes];
  }

  v3 = contentTypesToPreviewTypes_sSupportedTypes;

  return v3;
}

void __49__QLItem_PreviewInfo__contentTypesToPreviewTypes__block_invoke()
{
  v60[15] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE1D20];
  v59[0] = *MEMORY[0x277CE1E08];
  v59[1] = v0;
  v60[0] = &unk_2873F31B0;
  v60[1] = &unk_2873F31C8;
  v1 = *MEMORY[0x277CE1CF8];
  v59[2] = *MEMORY[0x277CE1EB8];
  v59[3] = v1;
  v60[2] = &unk_2873F31E0;
  v60[3] = &unk_2873F31F8;
  v2 = *MEMORY[0x277CE1E50];
  v59[4] = *MEMORY[0x277CE1E20];
  v59[5] = v2;
  v60[4] = &unk_2873F3210;
  v60[5] = &unk_2873F3210;
  v3 = *MEMORY[0x277CE1D78];
  v59[6] = *MEMORY[0x277CE1E58];
  v59[7] = v3;
  v60[6] = &unk_2873F3210;
  v60[7] = &unk_2873F3210;
  v4 = *MEMORY[0x277CE1DD0];
  v59[8] = *MEMORY[0x277CE1DC8];
  v59[9] = v4;
  v60[8] = &unk_2873F3210;
  v60[9] = &unk_2873F3228;
  v5 = *MEMORY[0x277CE1DA0];
  v59[10] = *MEMORY[0x277CE1E68];
  v59[11] = v5;
  v60[10] = &unk_2873F3240;
  v60[11] = &unk_2873F3240;
  v6 = *MEMORY[0x277CE1E38];
  v59[12] = *MEMORY[0x277CE1ED8];
  v59[13] = v6;
  v60[12] = &unk_2873F3240;
  v60[13] = &unk_2873F3210;
  v59[14] = *MEMORY[0x277CE1EF0];
  v60[14] = &unk_2873F3210;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:15];
  v8 = [v7 mutableCopy];
  v9 = contentTypesToPreviewTypes_sSupportedTypes;
  contentTypesToPreviewTypes_sSupportedTypes = v8;

  v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"com.apple.web-internet-location"];
  v11 = MEMORY[0x277D43EF8];
  v41 = v10;
  if (v10)
  {
    [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F3258 forKeyedSubscript:v10];
  }

  else
  {
    v12 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_FAULT, "UTI com.apple.web-internet-location not recognized by the system #UTI", buf, 2u);
    }
  }

  v13 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"public.ndjson"];
  v40 = v13;
  if (v13)
  {
    [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F3210 forKeyedSubscript:{v13, v13, v41}];
  }

  else
  {
    v14 = *v11;
    if (!*v11)
    {
      QLSInitLogging();
      v14 = *v11;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_FAULT, "UTI public.ndjson not recognized by the system #UTI", buf, 2u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F3270 forKeyedSubscript:*MEMORY[0x277CE1CD8]];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = CGImageSourceCopyTypeIdentifiers();
  v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v50 + 1) + 8 * i);
        v21 = [MEMORY[0x277CE1CB8] typeWithIdentifier:{v20, v40}];
        if (v21)
        {
          [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F3288 forKeyedSubscript:v21];
        }

        else
        {
          v22 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v22 = *MEMORY[0x277D43EF8];
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v20;
            _os_log_impl(&dword_261653000, v22, OS_LOG_TYPE_DEBUG, "Invalid UTI %@ returned by CGImageSourceCopyTypeIdentifiers() #UTI", buf, 0xCu);
          }
        }
      }

      v17 = [(__CFArray *)v15 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v17);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = [MEMORY[0x277CE6650] audiovisualTypes];
  v24 = [v23 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v47;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v47 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v46 + 1) + 8 * j);
        v29 = [MEMORY[0x277CE1CB8] typeWithIdentifier:{v28, v40}];
        if (v29)
        {
          [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F32A0 forKeyedSubscript:v29];
        }

        else
        {
          v30 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v30 = *MEMORY[0x277D43EF8];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v28;
            _os_log_impl(&dword_261653000, v30, OS_LOG_TYPE_DEBUG, "Invalid UTI %@ returned by [AVURLAsset audiovisualTypes] #UTI", buf, 0xCu);
          }
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v25);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = +[QLPreviewConverter convertibleUTIs];
  v32 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v43;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v42 + 1) + 8 * k);
        v37 = [MEMORY[0x277CE1CB8] typeWithIdentifier:{v36, v40}];
        if (v37)
        {
          [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F3240 forKeyedSubscript:v37];
        }

        else
        {
          v38 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v38 = *MEMORY[0x277D43EF8];
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v57 = v36;
            _os_log_impl(&dword_261653000, v38, OS_LOG_TYPE_FAULT, "Invalid UTI %@ returned by [QLPreviewConverter convertibleUTIs] #UTI", buf, 0xCu);
          }
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v33);
  }

  [contentTypesToPreviewTypes_sSupportedTypes setObject:&unk_2873F3210 forKeyedSubscript:*MEMORY[0x277CE1EE8]];
  v39 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_uncachedExtensionPreviewItemType
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(QLItem *)self previewItemContentType];
  if (v3 && ([MEMORY[0x277CE1CB8] typeWithIdentifier:v3], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isWildcard"), v4, (v5 & 1) != 0) || (v6 = -[QLItem previewExtensionTypeToUse](self, "previewExtensionTypeToUse"), v6 == 15))
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_DEFAULT, "Could not determine preview item type because type is wildcard or 3rd party extension not allowed: %@ #PreviewItem", &v11, 0xCu);
    }

    v6 = 15;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)_uncachedPreviewItemTypeForContentType:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = +[QLItem contentTypesToPreviewTypes];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 15;
  if ([QLItem contentTypeConformsToRTFD:v4])
  {
    v7 = 4;
  }

  else
  {
    v8 = +[QLItem webContentTypes];
    if (_QLContentTypeConformsToContentTypeInSet(v5, v8))
    {
      if ([QLItem _previewExtensionKindForContentType:v4 firstPartyExtension:1]== 15)
      {
        v7 = 6;
      }

      else
      {
        v7 = 12;
      }
    }

    else if (_os_feature_enabled_impl() && ([v5 conformsToType:*MEMORY[0x277CE1CD8]] & 1) != 0)
    {
      v7 = 5;
    }

    else
    {
      v9 = *MEMORY[0x277CE1DC8];
      if (![v5 conformsToType:*MEMORY[0x277CE1DC8]] || (objc_msgSend(v5, "isEqual:", v9) & 1) != 0 || (v7 = -[QLItem _uncachedExtensionPreviewItemType](self, "_uncachedExtensionPreviewItemType"), v7 == 15))
      {
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __62__QLItem_PreviewInfo___uncachedPreviewItemTypeForContentType___block_invoke;
        v18 = &unk_279AE14A0;
        v10 = v5;
        v19 = v10;
        v20 = &v21;
        [v6 enumerateKeysAndObjectsUsingBlock:&v15];
        v7 = v22[3];
        if (v7 == 15)
        {
          v11 = MEMORY[0x277D43EF8];
          v12 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v12 = *v11;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v10;
          }

          v7 = [(QLItem *)self _uncachedExtensionPreviewItemType:v15];
        }
      }
    }
  }

  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

void __62__QLItem_PreviewInfo___uncachedPreviewItemTypeForContentType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) conformsToType:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
    *a4 = 1;
  }
}

- (unint64_t)_getPreviewItemType
{
  v3 = [(QLItem *)self previewItemContentType];
  if (v3)
  {
    v4 = [(QLItem *)self _previewItemTypeForType:v3];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(QLItem *)self searchableItemIdentifier];

  if (v5)
  {
    v4 = [(QLItem *)self _uncachedExtensionPreviewItemType];
    goto LABEL_5;
  }

  v8 = MEMORY[0x277D43EF8];
  v9 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_DEFAULT, "Could not determine preview item type of preview item because content type is nil #PreviewItem", v10, 2u);
  }

  v6 = 15;
LABEL_6:

  return v6;
}

- (unint64_t)_getGeneratedItemType
{
  v3 = [(QLItem *)self generatedItemContentType];
  v4 = [*MEMORY[0x277CE1DB0] identifier];
  if (![v3 isEqualToString:v4])
  {

    goto LABEL_5;
  }

  v5 = [(QLItem *)self generatedReplyType];

  if (v5)
  {
LABEL_5:
    v6 = [(QLItem *)self _previewItemTypeForType:v3];
    goto LABEL_6;
  }

  v6 = 2;
LABEL_6:

  return v6;
}

- (unint64_t)_previewItemTypeForType:(id)a3
{
  v4 = a3;
  if (_previewItemTypeForType__once != -1)
  {
    [QLItem(PreviewInfo) _previewItemTypeForType:];
  }

  v5 = _previewItemTypeForType__sCache;
  objc_sync_enter(v5);
  v6 = [_previewItemTypeForType__sCache objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = [v6 integerValue];
    if (v7 == 15)
    {
      v7 = [(QLItem *)self _uncachedExtensionPreviewItemType];
    }
  }

  else
  {
    v7 = [(QLItem *)self _uncachedPreviewItemTypeForContentType:v4];
    v8 = _previewItemTypeForType__sCache;
    objc_sync_enter(v8);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [_previewItemTypeForType__sCache setObject:v9 forKeyedSubscript:v4];

    objc_sync_exit(v8);
  }

  return v7;
}

uint64_t __47__QLItem_PreviewInfo___previewItemTypeForType___block_invoke()
{
  _previewItemTypeForType__sCache = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)previewExtensionTypeToUse
{
  if (![(QLItem *)self hasDeterminedThirdPartyPreviewExtensionType])
  {
    v3 = [MEMORY[0x277D43E98] sharedManager];
    v4 = [(QLItem *)self searchableItemIdentifier];

    if (v4)
    {
      v5 = [(QLItem *)self searchableItemApplicationBundleIdentifier];
      v6 = [v3 existsExtensionForContentType:0 allowExtensionsForParentTypes:0 applicationBundleIdentifier:v5 extensionType:0 generationType:2];

      if (v6)
      {
        v7 = 14;
      }

      else
      {
        v7 = 15;
      }
    }

    else
    {
      v8 = [(QLItem *)self previewItemContentType];
      v7 = [QLItem _previewExtensionKindForContentType:v8 firstPartyExtension:0];
    }

    [(QLItem *)self setPreviewExtensionType:v7];
    [(QLItem *)self setHasDeterminedThirdPartyPreviewExtensionType:1];
  }

  return [(QLItem *)self previewExtensionType];
}

- (BOOL)useExtensionThumbnail
{
  if (![(QLItem *)self hasDeterminedShouldUseExtensionThumbnail])
  {
    if ([(QLItem *)self isStandardQuickLookType])
    {
      [(QLItem *)self setShouldUseExtensionThumbnail:0];
    }

    else
    {
      v3 = [MEMORY[0x277D43E98] sharedManager];
      v4 = [(QLItem *)self searchableItemIdentifier];

      if (v4)
      {
        [(QLItem *)self setShouldUseExtensionThumbnail:0];
        v5 = [(QLItem *)self searchableItemApplicationBundleIdentifier];
        v6 = [v3 existsExtensionForContentType:0 allowExtensionsForParentTypes:0 applicationBundleIdentifier:v5 extensionType:1 generationType:2];
      }

      else
      {
        v5 = [(QLItem *)self previewItemContentType];
        -[QLItem setShouldUseExtensionThumbnail:](self, "setShouldUseExtensionThumbnail:", [v3 existsExtensionForContentType:v5 allowExtensionsForParentTypes:0 applicationBundleIdentifier:0 extensionType:1 generationType:1]);

        v6 = 0;
      }

      [(QLItem *)self setShouldUseExtensionThumbnail:v6 | [(QLItem *)self shouldUseExtensionThumbnail]];
      if (v4)
      {
      }
    }

    [(QLItem *)self setHasDeterminedShouldUseExtensionThumbnail:1];
  }

  return [(QLItem *)self shouldUseExtensionThumbnail];
}

- (double)maxLoadingTime
{
  if (([(QLItem *)self previewItemType]& 0xFFFFFFFFFFFFFFFDLL) != 0xC)
  {
    return 0.0;
  }

  v3 = [MEMORY[0x277D43E98] ql_previewExtensionCustomLoadingTimeForItem:self];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  [v3 doubleValue];
  v6 = v5;

  return v6;
}

- (unint64_t)maximumNumberOfCachedPreviews
{
  v2 = [(QLItem *)self previewItemType];
  if (v2 - 2 > 7)
  {
    return 0;
  }

  else
  {
    return qword_261679A88[v2 - 2];
  }
}

@end