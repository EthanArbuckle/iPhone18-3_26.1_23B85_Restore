@interface QLItem
+ (BOOL)contentTypeConformsToRTFD:(id)d;
+ (id)contentTypesToPreviewTypes;
+ (id)customExtensionCommunicationEncodedClasses;
+ (id)encodedClasses;
+ (id)itemWithPreviewItem:(id)item;
+ (id)rtfContentTypes;
+ (id)supportedContentTypeIdentifiers;
+ (id)supportedContentTypes;
+ (id)webContentTypes;
- (BOOL)isEqual:(id)equal;
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
- (QLItem)initWithCoder:(id)coder;
- (QLItem)initWithData:(id)data contentType:(id)type previewTitle:(id)title;
- (QLItem)initWithDataProvider:(id)provider contentType:(id)type previewTitle:(id)title;
- (QLItem)initWithFPItem:(id)item;
- (QLItem)initWithPreviewItemProvider:(id)provider contentType:(id)type previewTitle:(id)title fileSize:(id)size;
- (QLItem)initWithSearchableItemUniqueIdentifier:(id)identifier applicationBundleIdentifier:(id)bundleIdentifier;
- (QLItem)initWithSearchableItemUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier previewTitle:(id)title;
- (QLItem)initWithURL:(id)l;
- (QLItem)initWithURL:(id)l MIMEType:(id)type;
- (QLItem)initWithURL:(id)l previewTitle:(id)title editingMode:(int64_t)mode;
- (QLItem)initWithURLSandboxWrapper:(id)wrapper;
- (QLItem)initWithURLSandboxWrapper:(id)wrapper previewTitle:(id)title editingMode:(int64_t)mode;
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
- (unint64_t)_previewItemTypeForType:(id)type;
- (unint64_t)_uncachedExtensionPreviewItemType;
- (unint64_t)_uncachedPreviewItemTypeForContentType:(id)type;
- (unint64_t)generatedPreviewItemType;
- (unint64_t)maximumNumberOfCachedPreviews;
- (unint64_t)previewExtensionTypeToUse;
- (unint64_t)previewItemType;
- (void)_removeEditedCopyIfExists;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)prepareSaveURL:(id)l;
- (void)setEditedCopy:(id)copy;
- (void)setFetcher:(id)fetcher;
- (void)setPreviewItemProviderProgress:(id)progress;
@end

@implementation QLItem

- (QLItem)initWithPreviewItemProvider:(id)provider contentType:(id)type previewTitle:(id)title fileSize:(id)size
{
  providerCopy = provider;
  typeCopy = type;
  titleCopy = title;
  sizeCopy = size;
  v21.receiver = self;
  v21.super_class = QLItem;
  v15 = [(QLItem *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_previewItemProvider, provider);
    objc_storeStrong(&v16->_itemSize, size);
    objc_storeStrong(&v16->_previewItemContentType, type);
    objc_storeStrong(&v16->_previewItemTitle, title);
    v17 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:typeCopy];
    UTIAnalyzer = v16->_UTIAnalyzer;
    v16->_UTIAnalyzer = v17;

    [(QLItem *)v16 _commonInit];
    v19 = v16;
  }

  return v16;
}

- (QLItem)initWithFPItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = QLItem;
  v6 = [(QLItem *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fpItem, item);
    typeIdentifier = [itemCopy typeIdentifier];
    previewItemContentType = v7->_previewItemContentType;
    v7->_previewItemContentType = typeIdentifier;

    displayName = [itemCopy displayName];
    previewItemTitle = v7->_previewItemTitle;
    v7->_previewItemTitle = displayName;

    v12 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:v7->_previewItemContentType];
    UTIAnalyzer = v7->_UTIAnalyzer;
    v7->_UTIAnalyzer = v12;

    [(QLItem *)v7 _commonInit];
    v14 = v7;
  }

  return v7;
}

- (QLItem)initWithData:(id)data contentType:(id)type previewTitle:(id)title
{
  dataCopy = data;
  typeCopy = type;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = QLItem;
  v12 = [(QLItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewItemData, data);
    objc_storeStrong(&v13->_previewItemContentType, type);
    objc_storeStrong(&v13->_previewItemTitle, title);
    v14 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:typeCopy];
    UTIAnalyzer = v13->_UTIAnalyzer;
    v13->_UTIAnalyzer = v14;

    [(QLItem *)v13 _commonInit];
    v16 = v13;
  }

  return v13;
}

- (QLItem)initWithDataProvider:(id)provider contentType:(id)type previewTitle:(id)title
{
  providerCopy = provider;
  typeCopy = type;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = QLItem;
  v12 = [(QLItem *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_previewItemDataProvider, provider);
    objc_storeStrong(&v13->_previewItemContentType, type);
    objc_storeStrong(&v13->_previewItemTitle, title);
    v14 = [objc_alloc(MEMORY[0x277CDAB20]) initWithContentType:typeCopy];
    UTIAnalyzer = v13->_UTIAnalyzer;
    v13->_UTIAnalyzer = v14;

    [(QLItem *)v13 _commonInit];
    v16 = v13;
  }

  return v13;
}

- (QLItem)initWithURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = QLItem;
  v5 = [(QLItem *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(QLItem *)v5 setPreviewItemURL:lCopy];
    v7 = objc_alloc(MEMORY[0x277CDAB20]);
    previewItemURL = [(QLItem *)v6 previewItemURL];
    v9 = [v7 initWithURL:previewItemURL];
    UTIAnalyzer = v6->_UTIAnalyzer;
    v6->_UTIAnalyzer = v9;

    [(QLItem *)v6 _commonInit];
    v11 = v6;
  }

  return v6;
}

- (QLItem)initWithURL:(id)l previewTitle:(id)title editingMode:(int64_t)mode
{
  lCopy = l;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = QLItem;
  v10 = [(QLItem *)&v18 init];
  v11 = v10;
  if (v10)
  {
    [(QLItem *)v10 setPreviewItemURL:lCopy];
    objc_storeStrong(&v11->_previewItemTitle, title);
    v11->_editingMode = mode;
    v12 = objc_alloc(MEMORY[0x277CDAB20]);
    previewItemURL = [(QLItem *)v11 previewItemURL];
    v14 = [v12 initWithURL:previewItemURL];
    UTIAnalyzer = v11->_UTIAnalyzer;
    v11->_UTIAnalyzer = v14;

    [(QLItem *)v11 _commonInit];
    v16 = v11;
  }

  return v11;
}

- (QLItem)initWithURLSandboxWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v14.receiver = self;
  v14.super_class = QLItem;
  v6 = [(QLItem *)&v14 init];
  if (v6)
  {
    v7 = [wrapperCopy url];
    [(QLItem *)v6 setPreviewItemURL:v7];

    objc_storeStrong(&v6->_sandboxingURLWrapper, wrapper);
    v8 = objc_alloc(MEMORY[0x277CDAB20]);
    previewItemURL = [(QLItem *)v6 previewItemURL];
    v10 = [v8 initWithURL:previewItemURL];
    UTIAnalyzer = v6->_UTIAnalyzer;
    v6->_UTIAnalyzer = v10;

    [(QLItem *)v6 _commonInit];
    v12 = v6;
  }

  return v6;
}

- (QLItem)initWithURLSandboxWrapper:(id)wrapper previewTitle:(id)title editingMode:(int64_t)mode
{
  wrapperCopy = wrapper;
  titleCopy = title;
  v19.receiver = self;
  v19.super_class = QLItem;
  v11 = [(QLItem *)&v19 init];
  if (v11)
  {
    v12 = [wrapperCopy url];
    [(QLItem *)v11 setPreviewItemURL:v12];

    objc_storeStrong(&v11->_sandboxingURLWrapper, wrapper);
    objc_storeStrong(&v11->_previewItemTitle, title);
    v11->_editingMode = mode;
    v13 = objc_alloc(MEMORY[0x277CDAB20]);
    previewItemURL = [(QLItem *)v11 previewItemURL];
    v15 = [v13 initWithURL:previewItemURL];
    UTIAnalyzer = v11->_UTIAnalyzer;
    v11->_UTIAnalyzer = v15;

    [(QLItem *)v11 _commonInit];
    v17 = v11;
  }

  return v11;
}

- (QLItem)initWithURL:(id)l MIMEType:(id)type
{
  lCopy = l;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = QLItem;
  v8 = [(QLItem *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(QLItem *)v8 setPreviewItemURL:lCopy];
    v10 = QLTypeCopyUTIForURLAndMimeType(lCopy, typeCopy);
    [(QLItem *)v9 setPreviewItemContentType:v10];

    [(QLItem *)v9 _commonInit];
    v11 = v9;
  }

  return v9;
}

- (QLItem)initWithSearchableItemUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier previewTitle:(id)title
{
  identifierCopy = identifier;
  stringCopy = string;
  bundleIdentifierCopy = bundleIdentifier;
  titleCopy = title;
  v19.receiver = self;
  v19.super_class = QLItem;
  v15 = [(QLItem *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_searchableItemIdentifier, identifier);
    objc_storeStrong(&v16->_spotlightQueryString, string);
    objc_storeStrong(&v16->_searchableItemApplicationBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v16->_previewItemTitle, title);
    [(QLItem *)v16 _commonInit];
    v17 = v16;
  }

  return v16;
}

- (QLItem)initWithSearchableItemUniqueIdentifier:(id)identifier applicationBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v13.receiver = self;
  v13.super_class = QLItem;
  v9 = [(QLItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_previewItemType = 14;
    objc_storeStrong(&v9->_searchableItemIdentifier, identifier);
    objc_storeStrong(&v10->_searchableItemApplicationBundleIdentifier, bundleIdentifier);
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

+ (id)itemWithPreviewItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    internalCopy = itemCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      internalCopy = [itemCopy internalCopy];
      [internalCopy setOriginalPreviewItem:itemCopy];
    }

    else
    {
      internalCopy = objc_opt_new();
      [internalCopy setOriginalPreviewItem:itemCopy];
      if (objc_opt_respondsToSelector())
      {
        previewItemTitle = [itemCopy previewItemTitle];

        if (previewItemTitle)
        {
          previewItemTitle2 = [itemCopy previewItemTitle];
          [internalCopy setPreviewItemTitle:previewItemTitle2];
        }
      }

      if (objc_opt_respondsToSelector())
      {
        backgroundColorOverride = [itemCopy backgroundColorOverride];
        [internalCopy setBackgroundColorOverride:backgroundColorOverride];
      }

      if (objc_opt_respondsToSelector())
      {
        previewItemContentType = [itemCopy previewItemContentType];
        [internalCopy setPreviewItemContentType:previewItemContentType];
      }

      if (objc_opt_respondsToSelector())
      {
        mIMEType = [itemCopy MIMEType];
        v11 = QLTypeCopyUTIForURLAndMimeType(0, mIMEType);
        [internalCopy setPreviewItemContentType:v11];
      }

      if (objc_opt_respondsToSelector())
      {
        [internalCopy setIsPromisedItem:{objc_msgSend(itemCopy, "isPromisedItem")}];
      }

      else
      {
        previewItemURL = [internalCopy previewItemURL];
        [internalCopy setIsPromisedItem:previewItemURL == 0];
      }

      previewItemContentType2 = [internalCopy previewItemContentType];

      v14 = objc_alloc(MEMORY[0x277CDAB20]);
      if (previewItemContentType2)
      {
        previewItemContentType3 = [internalCopy previewItemContentType];
        v16 = [v14 initWithContentType:previewItemContentType3];
      }

      else
      {
        previewItemContentType3 = [internalCopy previewItemURL];
        v16 = [v14 initWithURL:previewItemContentType3];
      }

      v17 = v16;
      [internalCopy setUTIAnalyzer:v16];

      if (objc_opt_respondsToSelector())
      {
        previewOptions = [itemCopy previewOptions];
        [internalCopy setClientPreviewOptions:previewOptions];
      }

      if (objc_opt_respondsToSelector())
      {
        previewItemDisplayState = [itemCopy previewItemDisplayState];
        [internalCopy setPreviewItemDisplayState:previewItemDisplayState];
      }
    }
  }

  return internalCopy;
}

- (void)dealloc
{
  editedCopy = [(QLItem *)self editedCopy];
  temporaryDirectoryWasCreatedInHost = [editedCopy temporaryDirectoryWasCreatedInHost];

  if ((temporaryDirectoryWasCreatedInHost & 1) == 0)
  {
    [(QLItem *)self _removeEditedCopyIfExists];
  }

  v5.receiver = self;
  v5.super_class = QLItem;
  [(QLItem *)&v5 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    previewItemURL = [(QLItem *)self previewItemURL];
    previewItemURL2 = [v5 previewItemURL];
    v8 = __18__QLItem_isEqual___block_invoke(previewItemURL2, previewItemURL, previewItemURL2);

    if (!v8)
    {
      goto LABEL_28;
    }

    previewItemData = [(QLItem *)self previewItemData];
    previewItemData2 = [v5 previewItemData];
    v11 = __18__QLItem_isEqual___block_invoke(previewItemData2, previewItemData, previewItemData2);

    if (!v11)
    {
      goto LABEL_28;
    }

    fpItem = [(QLItem *)self fpItem];
    fpItem2 = [v5 fpItem];
    v14 = __18__QLItem_isEqual___block_invoke(fpItem2, fpItem, fpItem2);

    if (!v14)
    {
      goto LABEL_28;
    }

    relativePath = [(QLItem *)self relativePath];
    relativePath2 = [v5 relativePath];
    v17 = __18__QLItem_isEqual___block_invoke(relativePath2, relativePath, relativePath2);

    if (!v17)
    {
      goto LABEL_28;
    }

    previewItemProvider = [(QLItem *)self previewItemProvider];
    previewItemProvider2 = [v5 previewItemProvider];
    v20 = __18__QLItem_isEqual___block_invoke(previewItemProvider2, previewItemProvider, previewItemProvider2);

    if (!v20)
    {
      goto LABEL_28;
    }

    itemSize = [(QLItem *)self itemSize];
    itemSize2 = [v5 itemSize];
    v23 = __18__QLItem_isEqual___block_invoke(itemSize2, itemSize, itemSize2);

    if (!v23)
    {
      goto LABEL_28;
    }

    previewItemContentType = [(QLItem *)self previewItemContentType];
    previewItemContentType2 = [v5 previewItemContentType];
    v26 = __18__QLItem_isEqual___block_invoke(previewItemContentType2, previewItemContentType, previewItemContentType2);

    if (!v26)
    {
      goto LABEL_28;
    }

    backgroundColorOverride = [(QLItem *)self backgroundColorOverride];
    backgroundColorOverride2 = [v5 backgroundColorOverride];
    v29 = __18__QLItem_isEqual___block_invoke(backgroundColorOverride2, backgroundColorOverride, backgroundColorOverride2);

    if (!v29)
    {
      goto LABEL_28;
    }

    previewItemTitle = [(QLItem *)self previewItemTitle];
    previewItemTitle2 = [v5 previewItemTitle];
    v32 = __18__QLItem_isEqual___block_invoke(previewItemTitle2, previewItemTitle, previewItemTitle2);

    if (!v32)
    {
      goto LABEL_28;
    }

    editedFileURL = [(QLItem *)self editedFileURL];
    editedFileURL2 = [v5 editedFileURL];
    v35 = __18__QLItem_isEqual___block_invoke(editedFileURL2, editedFileURL, editedFileURL2);

    if (!v35)
    {
      goto LABEL_28;
    }

    password = [(QLItem *)self password];
    password2 = [v5 password];
    v38 = __18__QLItem_isEqual___block_invoke(password2, password, password2);

    if (!v38)
    {
      goto LABEL_28;
    }

    uuid = [(QLItem *)self uuid];
    uuid2 = [v5 uuid];
    v41 = __18__QLItem_isEqual___block_invoke(uuid2, uuid, uuid2);

    if (!v41)
    {
      goto LABEL_28;
    }

    previewItemDataProvider = [(QLItem *)self previewItemDataProvider];
    previewItemDataProvider2 = [v5 previewItemDataProvider];

    if (previewItemDataProvider != previewItemDataProvider2)
    {
      goto LABEL_28;
    }

    previewItemType = [(QLItem *)self previewItemType];
    if (previewItemType != [v5 previewItemType])
    {
      goto LABEL_28;
    }

    processIdentifier = [(QLItem *)self processIdentifier];
    if (processIdentifier != [v5 processIdentifier])
    {
      goto LABEL_28;
    }

    isPromisedItem = [(QLItem *)self isPromisedItem];
    if (isPromisedItem != [v5 isPromisedItem])
    {
      goto LABEL_28;
    }

    useFullPDFTransition = [(QLItem *)self useFullPDFTransition];
    if (useFullPDFTransition != [v5 useFullPDFTransition])
    {
      goto LABEL_28;
    }

    useLoadingTimeout = [(QLItem *)self useLoadingTimeout];
    if (useLoadingTimeout != [v5 useLoadingTimeout])
    {
      goto LABEL_28;
    }

    wantsPreviewInDebugViewController = [(QLItem *)self wantsPreviewInDebugViewController];
    if (wantsPreviewInDebugViewController != [v5 wantsPreviewInDebugViewController])
    {
      goto LABEL_28;
    }

    sandboxingURLWrapper = [(QLItem *)self sandboxingURLWrapper];
    v51 = [sandboxingURLWrapper url];
    sandboxingURLWrapper2 = [v5 sandboxingURLWrapper];
    v53 = [sandboxingURLWrapper2 url];
    v54 = __18__QLItem_isEqual___block_invoke(v53, v51, v53);

    if (!v54)
    {
      goto LABEL_28;
    }

    searchableItemIdentifier = [(QLItem *)self searchableItemIdentifier];
    searchableItemIdentifier2 = [v5 searchableItemIdentifier];
    v57 = __18__QLItem_isEqual___block_invoke(searchableItemIdentifier2, searchableItemIdentifier, searchableItemIdentifier2);

    if (!v57)
    {
      goto LABEL_28;
    }

    spotlightQueryString = [(QLItem *)self spotlightQueryString];
    spotlightQueryString2 = [v5 spotlightQueryString];
    v60 = __18__QLItem_isEqual___block_invoke(spotlightQueryString2, spotlightQueryString, spotlightQueryString2);

    if (!v60)
    {
      goto LABEL_28;
    }

    searchableItemApplicationBundleIdentifier = [(QLItem *)self searchableItemApplicationBundleIdentifier];
    searchableItemApplicationBundleIdentifier2 = [v5 searchableItemApplicationBundleIdentifier];
    v63 = __18__QLItem_isEqual___block_invoke(searchableItemApplicationBundleIdentifier2, searchableItemApplicationBundleIdentifier, searchableItemApplicationBundleIdentifier2);

    if (!v63)
    {
      goto LABEL_28;
    }

    previewItemProviderProgress = [(QLItem *)self previewItemProviderProgress];
    previewItemProviderProgress2 = [v5 previewItemProviderProgress];
    v66 = __18__QLItem_isEqual___block_invoke(previewItemProviderProgress2, previewItemProviderProgress, previewItemProviderProgress2);

    if (v66)
    {
      clientPreviewOptions = [(QLItem *)self clientPreviewOptions];
      clientPreviewOptions2 = [v5 clientPreviewOptions];
      v69 = __18__QLItem_isEqual___block_invoke(clientPreviewOptions2, clientPreviewOptions, clientPreviewOptions2);
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
  fetcher = [(QLItem *)self fetcher];
  [v3 setFetcher:fetcher];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  previewItemURL = [(QLItem *)self previewItemURL];

  if (previewItemURL)
  {
    previewItemURL2 = [(QLItem *)self previewItemURL];
    [coderCopy encodeObject:previewItemURL2 forKey:@"previewItemURL"];
  }

  previewItemData = [(QLItem *)self previewItemData];

  if (previewItemData)
  {
    previewItemData2 = [(QLItem *)self previewItemData];
    [coderCopy encodeObject:previewItemData2 forKey:@"previewItemData"];
  }

  fpItem = [(QLItem *)self fpItem];

  if (fpItem)
  {
    fpItem2 = [(QLItem *)self fpItem];
    [coderCopy encodeObject:fpItem2 forKey:@"fpItem"];
  }

  relativePath = [(QLItem *)self relativePath];

  if (relativePath)
  {
    relativePath2 = [(QLItem *)self relativePath];
    [coderCopy encodeObject:relativePath2 forKey:@"relativePath"];
  }

  itemSize = [(QLItem *)self itemSize];

  if (itemSize)
  {
    itemSize2 = [(QLItem *)self itemSize];
    [coderCopy encodeObject:itemSize2 forKey:@"itemSize"];
  }

  fetcher = [(QLItem *)self fetcher];

  if (fetcher)
  {
    fetcher2 = [(QLItem *)self fetcher];
    [coderCopy encodeObject:fetcher2 forKey:@"fetcher"];
  }

  uTIAnalyzer = [(QLItem *)self UTIAnalyzer];

  if (uTIAnalyzer)
  {
    uTIAnalyzer2 = [(QLItem *)self UTIAnalyzer];
    [coderCopy encodeObject:uTIAnalyzer2 forKey:@"UTIAnalyzer"];
  }

  previewItemContentType = [(QLItem *)self previewItemContentType];

  if (previewItemContentType)
  {
    previewItemContentType2 = [(QLItem *)self previewItemContentType];
    [coderCopy encodeObject:previewItemContentType2 forKey:@"previewItemContentType"];
  }

  backgroundColorOverride = [(QLItem *)self backgroundColorOverride];

  if (backgroundColorOverride)
  {
    backgroundColorOverride2 = [(QLItem *)self backgroundColorOverride];
    [coderCopy encodeObject:backgroundColorOverride2 forKey:@"backgroundColorOverride"];
  }

  previewItemTitle = [(QLItem *)self previewItemTitle];

  if (previewItemTitle)
  {
    previewItemTitle2 = [(QLItem *)self previewItemTitle];
    [coderCopy encodeObject:previewItemTitle2 forKey:@"previewItemTitle"];
  }

  password = [(QLItem *)self password];

  if (password)
  {
    password2 = [(QLItem *)self password];
    [coderCopy encodeObject:password2 forKey:@"password"];
  }

  uuid = [(QLItem *)self uuid];

  if (uuid)
  {
    uuid2 = [(QLItem *)self uuid];
    [coderCopy encodeObject:uuid2 forKey:@"uuid"];
  }

  searchableItemIdentifier = [(QLItem *)self searchableItemIdentifier];

  if (searchableItemIdentifier)
  {
    searchableItemIdentifier2 = [(QLItem *)self searchableItemIdentifier];
    [coderCopy encodeObject:searchableItemIdentifier2 forKey:@"searchableItemIdentifier"];
  }

  spotlightQueryString = [(QLItem *)self spotlightQueryString];

  if (spotlightQueryString)
  {
    spotlightQueryString2 = [(QLItem *)self spotlightQueryString];
    [coderCopy encodeObject:spotlightQueryString2 forKey:@"spotlightQueryString"];
  }

  searchableItemApplicationBundleIdentifier = [(QLItem *)self searchableItemApplicationBundleIdentifier];

  if (searchableItemApplicationBundleIdentifier)
  {
    searchableItemApplicationBundleIdentifier2 = [(QLItem *)self searchableItemApplicationBundleIdentifier];
    [coderCopy encodeObject:searchableItemApplicationBundleIdentifier2 forKey:@"searchableItemApplicationBundleIdentifier"];
  }

  sandboxingURLWrapper = [(QLItem *)self sandboxingURLWrapper];

  if (sandboxingURLWrapper)
  {
    sandboxingURLWrapper2 = [(QLItem *)self sandboxingURLWrapper];
    [coderCopy encodeObject:sandboxingURLWrapper2 forKey:@"sandboxingURLWrapper"];
  }

  clientPreviewOptions = [(QLItem *)self clientPreviewOptions];

  if (clientPreviewOptions)
  {
    clientPreviewOptions2 = [(QLItem *)self clientPreviewOptions];
    [coderCopy encodeObject:clientPreviewOptions2 forKey:@"clientPreviewOptions"];
  }

  clientPreviewItemDisplayState = [(QLItem *)self clientPreviewItemDisplayState];

  if (clientPreviewItemDisplayState)
  {
    clientPreviewItemDisplayState2 = [(QLItem *)self clientPreviewItemDisplayState];
    [coderCopy encodeObject:clientPreviewItemDisplayState2 forKey:@"clientPreviewItemDisplayState"];
  }

  generatedURLHandler = [(QLItem *)self generatedURLHandler];

  if (generatedURLHandler)
  {
    generatedURLHandler2 = [(QLItem *)self generatedURLHandler];
    [coderCopy encodeObject:generatedURLHandler2 forKey:@"generatedURLHandler"];
  }

  internalShouldCreateTemporaryDirectoryInHost = [(QLItem *)self internalShouldCreateTemporaryDirectoryInHost];
  [coderCopy encodeBool:objc_msgSend(internalShouldCreateTemporaryDirectoryInHost forKey:{"BOOLValue"), @"internalShouldCreateTemporaryDirectoryInHost"}];

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [coderCopy encodeInteger:objc_msgSend(processInfo forKey:{"processIdentifier"), @"processIdentifier"}];

  [coderCopy encodeBool:-[QLItem isPromisedItem](self forKey:{"isPromisedItem"), @"isPromisedItem"}];
  [coderCopy encodeBool:-[QLItem useFullPDFTransition](self forKey:{"useFullPDFTransition"), @"useFullPDFTransition"}];
  [coderCopy encodeBool:-[QLItem useLoadingTimeout](self forKey:{"useLoadingTimeout"), @"useLoadingTimeout"}];
  [coderCopy encodeBool:-[QLItem canBeShared](self forKey:{"canBeShared"), @"canBeShared"}];
  [coderCopy encodeBool:-[QLItem canBeEdited](self forKey:{"canBeEdited"), @"canBeEdited"}];
  [coderCopy encodeBool:-[QLItem canHandleEditedCopy](self forKey:{"canHandleEditedCopy"), @"canHandleEditedCopy"}];
  [coderCopy encodeInteger:-[QLItem editingMode](self forKey:{"editingMode"), @"editingMode"}];
  [coderCopy encodeInteger:-[QLItem editedFileBehavior](self forKey:{"editedFileBehavior"), @"editedFileBehavior"}];
  [coderCopy encodeInteger:-[QLItem shouldPreventMachineReadableCodeDetection](self forKey:{"shouldPreventMachineReadableCodeDetection"), @"shouldPreventMachineReadableCodeDetection"}];
  [coderCopy encodeBool:-[QLItem wantsPreviewInDebugViewController](self forKey:{"wantsPreviewInDebugViewController"), @"wantsPreviewInDebugViewController"}];
}

- (QLItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = QLItem;
  v5 = [(QLItem *)&v54 init];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    objc_sync_enter(v7);
    v8 = +[QLItemFetcherFactory possibleFetcherClasses];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"fetcher"];
    fetcher = v7->_fetcher;
    v7->_fetcher = v9;

    objc_sync_exit(v7);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UTIAnalyzer"];
    UTIAnalyzer = v7->_UTIAnalyzer;
    v7->_UTIAnalyzer = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpItem"];
    fpItem = v7->_fpItem;
    v7->_fpItem = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewItemURL"];
    previewItemURL = v7->_previewItemURL;
    v7->_previewItemURL = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewItemData"];
    previewItemData = v7->_previewItemData;
    v7->_previewItemData = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativePath"];
    relativePath = v7->_relativePath;
    v7->_relativePath = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemSize"];
    itemSize = v7->_itemSize;
    v7->_itemSize = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewItemContentType"];
    previewItemContentType = v7->_previewItemContentType;
    v7->_previewItemContentType = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColorOverride"];
    backgroundColorOverride = v7->_backgroundColorOverride;
    v7->_backgroundColorOverride = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewItemTitle"];
    previewItemTitle = v7->_previewItemTitle;
    v7->_previewItemTitle = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v7->_password;
    v7->_password = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v7->_uuid;
    v7->_uuid = v31;

    v7->_processIdentifier = [coderCopy decodeIntegerForKey:@"processIdentifier"];
    v7->_isPromisedItem = [coderCopy decodeBoolForKey:@"isPromisedItem"];
    v7->_useFullPDFTransition = [coderCopy decodeBoolForKey:@"useFullPDFTransition"];
    v7->_useLoadingTimeout = [coderCopy decodeBoolForKey:@"useLoadingTimeout"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemIdentifier"];
    searchableItemIdentifier = v7->_searchableItemIdentifier;
    v7->_searchableItemIdentifier = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightQueryString"];
    spotlightQueryString = v7->_spotlightQueryString;
    v7->_spotlightQueryString = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemApplicationBundleIdentifier"];
    searchableItemApplicationBundleIdentifier = v7->_searchableItemApplicationBundleIdentifier;
    v7->_searchableItemApplicationBundleIdentifier = v37;

    v7->_canBeShared = [coderCopy decodeBoolForKey:@"canBeShared"];
    v7->_canBeEdited = [coderCopy decodeBoolForKey:@"canBeEdited"];
    v7->_canHandleEditedCopy = [coderCopy decodeBoolForKey:@"canHandleEditedCopy"];
    v7->_editedFileBehavior = [coderCopy decodeIntegerForKey:@"editedFileBehavior"];
    v7->_shouldPreventMachineReadableCodeDetection = [coderCopy decodeIntegerForKey:@"shouldPreventMachineReadableCodeDetection"] != 0;
    v7->_editingMode = [coderCopy decodeIntegerForKey:@"editingMode"];
    v7->_wantsPreviewInDebugViewController = [coderCopy decodeBoolForKey:@"wantsPreviewInDebugViewController"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxingURLWrapper"];
    sandboxingURLWrapper = v7->_sandboxingURLWrapper;
    v7->_sandboxingURLWrapper = v39;

    v41 = [coderCopy decodeBoolForKey:@"internalShouldCreateTemporaryDirectoryInHost"];
    v42 = [MEMORY[0x277CCABB0] numberWithBool:v41];
    internalShouldCreateTemporaryDirectoryInHost = v7->_internalShouldCreateTemporaryDirectoryInHost;
    v7->_internalShouldCreateTemporaryDirectoryInHost = v42;

    v44 = +[QLItem customExtensionCommunicationEncodedClasses];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"clientPreviewOptions"];
    clientPreviewOptions = v7->_clientPreviewOptions;
    v7->_clientPreviewOptions = v45;

    v47 = +[QLItem customExtensionCommunicationEncodedClasses];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"clientPreviewItemDisplayState"];
    clientPreviewItemDisplayState = v7->_clientPreviewItemDisplayState;
    v7->_clientPreviewItemDisplayState = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"generatedURLHandler"];
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
  previewItemTitle = [(QLItem *)self previewItemTitle];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, previewItemTitle];

  return v6;
}

- (NSDictionary)clientPreviewOptions
{
  clientPreviewOptions = self->_clientPreviewOptions;
  if (clientPreviewOptions)
  {
    previewOptions = clientPreviewOptions;
    goto LABEL_8;
  }

  originalPreviewItem = [(QLItem *)self originalPreviewItem];
  v6 = originalPreviewItem;
  if (originalPreviewItem == self)
  {
  }

  else
  {
    originalPreviewItem2 = [(QLItem *)self originalPreviewItem];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      originalPreviewItem3 = [(QLItem *)self originalPreviewItem];
      previewOptions = [originalPreviewItem3 previewOptions];

      goto LABEL_8;
    }
  }

  previewOptions = 0;
LABEL_8:

  return previewOptions;
}

- (NSDictionary)clientPreviewItemDisplayState
{
  clientPreviewItemDisplayState = self->_clientPreviewItemDisplayState;
  if (clientPreviewItemDisplayState)
  {
    previewItemDisplayState = clientPreviewItemDisplayState;
    goto LABEL_8;
  }

  originalPreviewItem = [(QLItem *)self originalPreviewItem];
  v6 = originalPreviewItem;
  if (originalPreviewItem == self)
  {
  }

  else
  {
    originalPreviewItem2 = [(QLItem *)self originalPreviewItem];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      originalPreviewItem3 = [(QLItem *)self originalPreviewItem];
      previewItemDisplayState = [originalPreviewItem3 previewItemDisplayState];

      goto LABEL_8;
    }
  }

  previewItemDisplayState = 0;
LABEL_8:

  return previewItemDisplayState;
}

- (BOOL)isPromisedItem
{
  originalPreviewItem = [(QLItem *)self originalPreviewItem];
  v4 = originalPreviewItem;
  if (originalPreviewItem == self)
  {
  }

  else
  {
    originalPreviewItem2 = [(QLItem *)self originalPreviewItem];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      originalPreviewItem3 = [(QLItem *)self originalPreviewItem];
      isPromisedItem = [originalPreviewItem3 isPromisedItem];

      return isPromisedItem;
    }
  }

  return self->_isPromisedItem;
}

- (NSURL)alternateShareURL
{
  originalPreviewItem = [(QLItem *)self originalPreviewItem];
  if (originalPreviewItem == self)
  {
    alternateShareURL = 0;
    goto LABEL_5;
  }

  originalPreviewItem2 = [(QLItem *)self originalPreviewItem];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    originalPreviewItem = [(QLItem *)self originalPreviewItem];
    alternateShareURL = [(QLItem *)originalPreviewItem alternateShareURL];
LABEL_5:

    goto LABEL_7;
  }

  alternateShareURL = 0;
LABEL_7:

  return alternateShareURL;
}

- (QLItemFetcher)fetcher
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fetcher = selfCopy->_fetcher;
  if (!fetcher)
  {
    v4 = [QLItemFetcherFactory fetcherForPreviewItem:selfCopy];
    v5 = selfCopy->_fetcher;
    selfCopy->_fetcher = v4;

    fetcher = selfCopy->_fetcher;
  }

  v6 = fetcher;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  obj = self;
  objc_sync_enter(obj);
  fetcher = obj->_fetcher;
  obj->_fetcher = fetcherCopy;

  objc_sync_exit(obj);
}

- (id)createPreviewContext
{
  v3 = objc_opt_new();
  thumbnailGenerator = [(QLItem *)self thumbnailGenerator];
  [v3 setThumbnailGenerator:thumbnailGenerator];

  previewItemTitle = [(QLItem *)self previewItemTitle];
  [v3 setPreviewTitle:previewItemTitle];

  previewItemContentType = [(QLItem *)self previewItemContentType];
  [v3 setOriginalContentType:previewItemContentType];

  generatedItemContentType = [(QLItem *)self generatedItemContentType];
  if (generatedItemContentType)
  {
    [v3 setContentType:generatedItemContentType];
  }

  else
  {
    previewItemContentType2 = [(QLItem *)self previewItemContentType];
    [v3 setContentType:previewItemContentType2];
  }

  [v3 setCanBeEdited:{-[QLItem canBeEdited](self, "canBeEdited")}];
  [v3 setCanBeShared:{-[QLItem canBeShared](self, "canBeShared")}];
  [v3 setEditedFileBehavior:{-[QLItem editedFileBehavior](self, "editedFileBehavior")}];
  [v3 setShouldPreventMachineReadableCodeDetection:{-[QLItem shouldPreventMachineReadableCodeDetection](self, "shouldPreventMachineReadableCodeDetection")}];
  password = [(QLItem *)self password];
  [v3 setPassword:password];

  [v3 setPreviewItemType:{-[QLItem previewItemType](self, "previewItemType")}];
  backgroundColorOverride = [(QLItem *)self backgroundColorOverride];
  [v3 setBackgroundColor:backgroundColorOverride];

  itemSize = [(QLItem *)self itemSize];
  [v3 setItemSize:itemSize];

  [v3 setProcessIdentifier:{-[QLItem processIdentifier](self, "processIdentifier")}];
  [v3 setItem:self];
  clientPreviewOptions = [(QLItem *)self clientPreviewOptions];
  [v3 setClientPreviewOptions:clientPreviewOptions];

  [v3 setStringEncoding:{-[QLItem stringEncoding](self, "stringEncoding")}];
  attachments = [(QLItem *)self attachments];
  [v3 setAttachments:attachments];

  bitmapFormat = [(QLItem *)self bitmapFormat];
  [v3 setBitmapFormat:bitmapFormat];

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
    fetcher = [(QLItem *)self fetcher];
    itemSize = [fetcher itemSize];
    v6 = self->_itemSize;
    self->_itemSize = itemSize;

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

- (void)setPreviewItemProviderProgress:(id)progress
{
  progressCopy = progress;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__QLItem_setPreviewItemProviderProgress___block_invoke;
  v6[3] = &unk_279AE0E40;
  v6[4] = self;
  v7 = progressCopy;
  v5 = progressCopy;
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
      previewItemURL = [(QLItem *)self previewItemURL];

      if (previewItemURL)
      {
        previewItemURL2 = [(QLItem *)self previewItemURL];
        path = [previewItemURL2 path];

        previewItemURL3 = [(QLItem *)self previewItemURL];
        previewItemURL4 = previewItemURL3;
        if (path)
        {
          path2 = [previewItemURL3 path];
LABEL_10:
          resourceSpecifier = path2;

          goto LABEL_11;
        }

        resourceSpecifier = [previewItemURL3 resourceSpecifier];

        if (resourceSpecifier)
        {
          previewItemURL4 = [(QLItem *)self previewItemURL];
          path2 = [previewItemURL4 resourceSpecifier];
          goto LABEL_10;
        }
      }

      else
      {
        relativePath = [(QLItem *)self relativePath];

        if (!relativePath)
        {
LABEL_12:
          overridenItemTitle = self->_previewItemTitle;
          goto LABEL_13;
        }

        resourceSpecifier = [(QLItem *)self relativePath];
      }

LABEL_11:
      lastPathComponent = [resourceSpecifier lastPathComponent];
      stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
      previewItemTitle = self->_previewItemTitle;
      self->_previewItemTitle = stringByDeletingPathExtension;

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
    uTIAnalyzer = [(QLItem *)self UTIAnalyzer];
    contentType = [uTIAnalyzer contentType];
    v6 = self->_previewItemContentType;
    self->_previewItemContentType = contentType;

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
      selfCopy = self;
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
  generatedItemContentType = [(QLItem *)self generatedItemContentType];

  if (generatedItemContentType)
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
        selfCopy = self;
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
  editedFileURL = [(QLItem *)self editedFileURL];
  startAccessingSecurityScopedResource = [editedFileURL startAccessingSecurityScopedResource];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [editedFileURL path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v8 = editedFileURL;
  }

  else
  {
    alternateShareURL = [(QLItem *)self alternateShareURL];

    if (alternateShareURL)
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
  if (startAccessingSecurityScopedResource)
  {
    [editedFileURL stopAccessingSecurityScopedResource];
  }

  return v10;
}

- (BOOL)shouldCreateTemporaryDirectoryInHost
{
  internalShouldCreateTemporaryDirectoryInHost = [(QLItem *)self internalShouldCreateTemporaryDirectoryInHost];
  bOOLValue = [internalShouldCreateTemporaryDirectoryInHost BOOLValue];

  return bOOLValue;
}

- (NSNumber)internalShouldCreateTemporaryDirectoryInHost
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_internalShouldCreateTemporaryDirectoryInHost)
  {
    previewItemURL = [(QLItem *)self previewItemURL];

    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (previewItemURL)
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

- (void)prepareSaveURL:(id)l
{
  lCopy = l;
  fetcher = [(QLItem *)self fetcher];
  v6 = fetcher;
  if (fetcher)
  {
    [fetcher prepareShareableItem:lCopy];
  }

  else
  {
    lCopy[2](lCopy);
  }
}

- (id)saveURL
{
  overridenItemURL = [(QLItem *)self overridenItemURL];

  if (overridenItemURL)
  {
    overridenItemURL2 = [(QLItem *)self overridenItemURL];
LABEL_3:
    shareableItem2 = overridenItemURL2;
    goto LABEL_9;
  }

  fetcher = [(QLItem *)self fetcher];
  shareableItem = [fetcher shareableItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    fetcher2 = [(QLItem *)self fetcher];
    shareableItem2 = [fetcher2 shareableItem];
  }

  else
  {
    previewItemURL = [(QLItem *)self previewItemURL];

    if (previewItemURL)
    {
      overridenItemURL2 = [(QLItem *)self previewItemURL];
      goto LABEL_3;
    }

    shareableItem2 = 0;
  }

LABEL_9:

  return shareableItem2;
}

- (void)setEditedCopy:(id)copy
{
  copyCopy = copy;
  editedCopy = self->_editedCopy;
  if (editedCopy != copyCopy)
  {
    v10 = copyCopy;
    if (![(QLPreviewItemEditedCopy *)editedCopy isEqual:copyCopy])
    {
      v7 = [(QLPreviewItemEditedCopy *)self->_editedCopy url];
      v8 = [(QLPreviewItemEditedCopy *)v10 url];
      v9 = [v7 isEqual:v8];

      if ((v9 & 1) == 0)
      {
        [(QLItem *)self _removeEditedCopyIfExists];
      }

      objc_storeStrong(&self->_editedCopy, copy);
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

  previewItemType = [(QLItem *)self previewItemType];
  if ((previewItemType & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 1;
  }

  if (previewItemType != 1)
  {
    return previewItemType == 11;
  }

  uTIAnalyzer = [(QLItem *)self UTIAnalyzer];
  v4 = ([uTIAnalyzer isAudioOnly] & 1) == 0 && (_os_feature_enabled_impl() & 1) != 0;

  return v4;
}

- (BOOL)shouldOpenInFullScreen
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_6;
  }

  previewItemType = [(QLItem *)self previewItemType];
  if ((previewItemType & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (previewItemType == 1)
    {
      uTIAnalyzer = [(QLItem *)self UTIAnalyzer];
      v4 = [uTIAnalyzer isAudioOnly] ^ 1;

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
  block[4] = self;
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
  block[4] = self;
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

+ (BOOL)contentTypeConformsToRTFD:(id)d
{
  if (!d)
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
  previewItemContentType = [(QLItem *)self previewItemContentType];
  if (previewItemContentType && ([MEMORY[0x277CE1CB8] typeWithIdentifier:previewItemContentType], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isWildcard"), v4, (v5 & 1) != 0) || (v6 = -[QLItem previewExtensionTypeToUse](self, "previewExtensionTypeToUse"), v6 == 15))
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
      v12 = previewItemContentType;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_DEFAULT, "Could not determine preview item type because type is wildcard or 3rd party extension not allowed: %@ #PreviewItem", &v11, 0xCu);
    }

    v6 = 15;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)_uncachedPreviewItemTypeForContentType:(id)type
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (typeCopy)
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:typeCopy];
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
  if ([QLItem contentTypeConformsToRTFD:typeCopy])
  {
    v7 = 4;
  }

  else
  {
    v8 = +[QLItem webContentTypes];
    if (_QLContentTypeConformsToContentTypeInSet(v5, v8))
    {
      if ([QLItem _previewExtensionKindForContentType:typeCopy firstPartyExtension:1]== 15)
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
  previewItemContentType = [(QLItem *)self previewItemContentType];
  if (previewItemContentType)
  {
    _uncachedExtensionPreviewItemType = [(QLItem *)self _previewItemTypeForType:previewItemContentType];
LABEL_5:
    v6 = _uncachedExtensionPreviewItemType;
    goto LABEL_6;
  }

  searchableItemIdentifier = [(QLItem *)self searchableItemIdentifier];

  if (searchableItemIdentifier)
  {
    _uncachedExtensionPreviewItemType = [(QLItem *)self _uncachedExtensionPreviewItemType];
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
  generatedItemContentType = [(QLItem *)self generatedItemContentType];
  identifier = [*MEMORY[0x277CE1DB0] identifier];
  if (![generatedItemContentType isEqualToString:identifier])
  {

    goto LABEL_5;
  }

  generatedReplyType = [(QLItem *)self generatedReplyType];

  if (generatedReplyType)
  {
LABEL_5:
    v6 = [(QLItem *)self _previewItemTypeForType:generatedItemContentType];
    goto LABEL_6;
  }

  v6 = 2;
LABEL_6:

  return v6;
}

- (unint64_t)_previewItemTypeForType:(id)type
{
  typeCopy = type;
  if (_previewItemTypeForType__once != -1)
  {
    [QLItem(PreviewInfo) _previewItemTypeForType:];
  }

  v5 = _previewItemTypeForType__sCache;
  objc_sync_enter(v5);
  v6 = [_previewItemTypeForType__sCache objectForKeyedSubscript:typeCopy];
  objc_sync_exit(v5);

  if (v6)
  {
    integerValue = [v6 integerValue];
    if (integerValue == 15)
    {
      integerValue = [(QLItem *)self _uncachedExtensionPreviewItemType];
    }
  }

  else
  {
    integerValue = [(QLItem *)self _uncachedPreviewItemTypeForContentType:typeCopy];
    v8 = _previewItemTypeForType__sCache;
    objc_sync_enter(v8);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
    [_previewItemTypeForType__sCache setObject:v9 forKeyedSubscript:typeCopy];

    objc_sync_exit(v8);
  }

  return integerValue;
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
    mEMORY[0x277D43E98] = [MEMORY[0x277D43E98] sharedManager];
    searchableItemIdentifier = [(QLItem *)self searchableItemIdentifier];

    if (searchableItemIdentifier)
    {
      searchableItemApplicationBundleIdentifier = [(QLItem *)self searchableItemApplicationBundleIdentifier];
      v6 = [mEMORY[0x277D43E98] existsExtensionForContentType:0 allowExtensionsForParentTypes:0 applicationBundleIdentifier:searchableItemApplicationBundleIdentifier extensionType:0 generationType:2];

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
      previewItemContentType = [(QLItem *)self previewItemContentType];
      v7 = [QLItem _previewExtensionKindForContentType:previewItemContentType firstPartyExtension:0];
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
      mEMORY[0x277D43E98] = [MEMORY[0x277D43E98] sharedManager];
      searchableItemIdentifier = [(QLItem *)self searchableItemIdentifier];

      if (searchableItemIdentifier)
      {
        [(QLItem *)self setShouldUseExtensionThumbnail:0];
        searchableItemApplicationBundleIdentifier = [(QLItem *)self searchableItemApplicationBundleIdentifier];
        v6 = [mEMORY[0x277D43E98] existsExtensionForContentType:0 allowExtensionsForParentTypes:0 applicationBundleIdentifier:searchableItemApplicationBundleIdentifier extensionType:1 generationType:2];
      }

      else
      {
        searchableItemApplicationBundleIdentifier = [(QLItem *)self previewItemContentType];
        -[QLItem setShouldUseExtensionThumbnail:](self, "setShouldUseExtensionThumbnail:", [mEMORY[0x277D43E98] existsExtensionForContentType:searchableItemApplicationBundleIdentifier allowExtensionsForParentTypes:0 applicationBundleIdentifier:0 extensionType:1 generationType:1]);

        v6 = 0;
      }

      [(QLItem *)self setShouldUseExtensionThumbnail:v6 | [(QLItem *)self shouldUseExtensionThumbnail]];
      if (searchableItemIdentifier)
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
  previewItemType = [(QLItem *)self previewItemType];
  if (previewItemType - 2 > 7)
  {
    return 0;
  }

  else
  {
    return qword_261679A88[previewItemType - 2];
  }
}

@end