@interface SYContentItem
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)representsSameContentAsItem:(id)item;
- (NSData)linkPreviewMetadata;
- (NSString)description;
- (NSString)webpageDisplayDomain;
- (SYContentItem)initWithData:(id)data error:(id *)error;
- (SYContentItem)initWithDisplayTitle:(id)title sourceIdentifier:(id)identifier sourceName:(id)name itemURL:(id)l identifier:(id)a7;
- (SYContentItem)initWithItemIdentifier:(id)identifier displayTitle:(id)title sourceIdentifier:(id)sourceIdentifier sourceName:(id)name itemURL:(id)l activityType:(id)type activityCanonicalURL:(id)rL activityTargetContentIdentifier:(id)self0 activityPersistentIdentifier:(id)self1 userActivity:(id)self2;
- (SYContentItem)initWithUserActivity:(id)activity sourceAppID:(id)d sourceAppName:(id)name identifier:(id)identifier;
- (id)dataRepresentationWithError:(id *)error;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (unint64_t)hash;
- (void)loadFullPreviewIfNeededWithCompletion:(id)completion;
- (void)setLinkPreviewMetadata:(id)metadata loadLevel:(int64_t)level;
@end

@implementation SYContentItem

- (SYContentItem)initWithItemIdentifier:(id)identifier displayTitle:(id)title sourceIdentifier:(id)sourceIdentifier sourceName:(id)name itemURL:(id)l activityType:(id)type activityCanonicalURL:(id)rL activityTargetContentIdentifier:(id)self0 activityPersistentIdentifier:(id)self1 userActivity:(id)self2
{
  identifierCopy = identifier;
  titleCopy = title;
  sourceIdentifierCopy = sourceIdentifier;
  nameCopy = name;
  lCopy = l;
  typeCopy = type;
  v22 = identifierCopy;
  rLCopy = rL;
  contentIdentifierCopy = contentIdentifier;
  persistentIdentifierCopy = persistentIdentifier;
  activityCopy = activity;
  v49 = v22;
  if (!v22)
  {
    [SYContentItem initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:];
  }

  if (!(lCopy | activityCopy))
  {
    [SYContentItem initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:];
  }

  v27 = rLCopy;
  if (!sourceIdentifierCopy)
  {
    [SYContentItem initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:];
  }

  v52.receiver = self;
  v52.super_class = SYContentItem;
  v28 = [(SYContentItem *)&v52 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_itemIdentifier, identifier);
    v30 = [titleCopy copy];
    displayTitle = v29->_displayTitle;
    v29->_displayTitle = v30;

    v32 = [sourceIdentifierCopy copy];
    sourceIdentifier = v29->_sourceIdentifier;
    v29->_sourceIdentifier = v32;

    v34 = [nameCopy copy];
    sourceLastKnownName = v29->_sourceLastKnownName;
    v29->_sourceLastKnownName = v34;

    v36 = [lCopy copy];
    itemURL = v29->_itemURL;
    v29->_itemURL = v36;

    v38 = [v27 copy];
    activityCanonicalURL = v29->_activityCanonicalURL;
    v29->_activityCanonicalURL = v38;

    v40 = [typeCopy copy];
    activityType = v29->_activityType;
    v29->_activityType = v40;

    v42 = [contentIdentifierCopy copy];
    activityTargetContentIdentifier = v29->_activityTargetContentIdentifier;
    v29->_activityTargetContentIdentifier = v42;

    v44 = [persistentIdentifierCopy copy];
    activityPersistentIdentifier = v29->_activityPersistentIdentifier;
    v29->_activityPersistentIdentifier = v44;

    objc_storeStrong(&v29->_userActivity, activity);
  }

  return v29;
}

- (SYContentItem)initWithUserActivity:(id)activity sourceAppID:(id)d sourceAppName:(id)name identifier:(id)identifier
{
  activityCopy = activity;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  selfCopy = self;
  v14 = identifierCopy;
  if (activityCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SYContentItem initWithUserActivity:sourceAppID:sourceAppName:identifier:];
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  [SYContentItem initWithUserActivity:sourceAppID:sourceAppName:identifier:];
LABEL_3:
  v26 = v14;
  if (v14)
  {
    uUID = v14;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v16 = uUID;
  activityType = [activityCopy activityType];
  targetContentIdentifier = [activityCopy targetContentIdentifier];
  persistentIdentifier = [activityCopy persistentIdentifier];
  webpageURL = [activityCopy webpageURL];
  canonicalURL = [activityCopy canonicalURL];
  title = [activityCopy title];
  v25 = dCopy;
  v23 = [(SYContentItem *)selfCopy initWithItemIdentifier:v16 displayTitle:title sourceIdentifier:dCopy sourceName:nameCopy itemURL:webpageURL activityType:activityType activityCanonicalURL:canonicalURL activityTargetContentIdentifier:targetContentIdentifier activityPersistentIdentifier:persistentIdentifier userActivity:activityCopy];

  return v23;
}

- (SYContentItem)initWithDisplayTitle:(id)title sourceIdentifier:(id)identifier sourceName:(id)name itemURL:(id)l identifier:(id)a7
{
  titleCopy = title;
  identifierCopy = identifier;
  nameCopy = name;
  lCopy = l;
  v16 = a7;
  if (identifierCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    [SYContentItem initWithDisplayTitle:sourceIdentifier:sourceName:itemURL:identifier:];
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_7:
    uUID = [MEMORY[0x277CCAD78] UUID];
    goto LABEL_8;
  }

  [SYContentItem initWithDisplayTitle:sourceIdentifier:sourceName:itemURL:identifier:];
  if (!lCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_4:
  uUID = v16;
LABEL_8:
  v18 = uUID;
  v19 = [(SYContentItem *)self initWithItemIdentifier:uUID displayTitle:titleCopy sourceIdentifier:identifierCopy sourceName:nameCopy itemURL:lCopy activityType:0 activityCanonicalURL:0 activityTargetContentIdentifier:0 activityPersistentIdentifier:0 userActivity:0];

  return v19;
}

- (NSString)description
{
  displayTitle = [(SYContentItem *)self displayTitle];
  if (displayTitle)
  {
    v4 = MEMORY[0x277CCACA8];
    displayTitle2 = [(SYContentItem *)self displayTitle];
    v21 = [v4 stringWithFormat:@"'%@'", displayTitle2];
  }

  else
  {
    v21 = @"(null)";
  }

  itemIdentifier = [(SYContentItem *)self itemIdentifier];
  uUIDString = [itemIdentifier UUIDString];
  v20 = [uUIDString substringWithRange:{0, 8}];

  v24.receiver = self;
  v24.super_class = SYContentItem;
  v19 = [(SYContentItem *)&v24 description];
  sourceLastKnownName = [(SYContentItem *)self sourceLastKnownName];
  sourceIdentifier = [(SYContentItem *)self sourceIdentifier];
  itemURL = [(SYContentItem *)self itemURL];
  activityCanonicalURL = [(SYContentItem *)self activityCanonicalURL];
  activityType = [(SYContentItem *)self activityType];
  activityTargetContentIdentifier = [(SYContentItem *)self activityTargetContentIdentifier];
  activityPersistentIdentifier = [(SYContentItem *)self activityPersistentIdentifier];
  userActivity = [(SYContentItem *)self userActivity];
  if (userActivity)
  {
    v14 = @"Yes";
  }

  else
  {
    v14 = @"No";
  }

  linkPreviewMetadata = [(SYContentItem *)self linkPreviewMetadata];
  if (linkPreviewMetadata)
  {
    v16 = @"Yes";
  }

  else
  {
    v16 = @"No";
  }

  v18 = [v19 stringByAppendingFormat:@" itemID: %@…, title: %@, source: %@ (%@), itemURL: %@, canonicalURL: %@, activityType: %@, targetContentID: %@, persistentID: %@, hasUserActivity: %@, hasLinkPreview: %@", v20, v21, sourceLastKnownName, sourceIdentifier, itemURL, activityCanonicalURL, activityType, activityTargetContentIdentifier, activityPersistentIdentifier, v14, v16];

  return v18;
}

- (NSString)webpageDisplayDomain
{
  itemURL = [(SYContentItem *)self itemURL];
  if (itemURL)
  {
    userActivity = [(SYContentItem *)self userActivity];
    activityType = [userActivity activityType];

    if (activityType)
    {
      v6 = [activityType isEqualToString:*MEMORY[0x277CCA850]];

      if (v6)
      {
LABEL_4:
        _lp_highLevelDomain = [itemURL _lp_highLevelDomain];
        goto LABEL_7;
      }
    }

    else if ([itemURL _lp_isHTTPFamilyURL])
    {
      goto LABEL_4;
    }
  }

  _lp_highLevelDomain = 0;
LABEL_7:

  return _lp_highLevelDomain;
}

- (NSData)linkPreviewMetadata
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_linkPreviewMetadata;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLinkPreviewMetadata:(id)metadata loadLevel:(int64_t)level
{
  metadataCopy = metadata;
  obj = self;
  objc_sync_enter(obj);
  linkPreviewMetadata = obj->_linkPreviewMetadata;
  obj->_linkPreviewMetadata = metadataCopy;

  obj->_previewLoadLevel = level;
  objc_sync_exit(obj);
}

- (void)loadFullPreviewIfNeededWithCompletion:(id)completion
{
  v9[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(SYContentItem *)self previewLoadLevel]> 1)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v9[0] = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SYContentItem_loadFullPreviewIfNeededWithCompletion___block_invoke;
    v7[3] = &unk_27856C318;
    v8 = completionCopy;
    [SYContentItemPreviewManager loadPreviewDataForItems:v5 fullDetail:1 didFinishLoadingPreviewHandler:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __55__SYContentItem_loadFullPreviewIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)representsSameContentAsItem:(id)item
{
  itemCopy = item;
  userActivity = [(SYContentItem *)self userActivity];
  if (userActivity)
  {
    v6 = userActivity;
    userActivity2 = [itemCopy userActivity];

    if (userActivity2)
    {
      userActivity3 = [(SYContentItem *)self userActivity];
      userActivity4 = [itemCopy userActivity];
      v10 = SYEquivalentUserActivities(userActivity3, userActivity4);
LABEL_7:
      LOBYTE(itemURL) = v10;

      goto LABEL_8;
    }
  }

  itemURL = [(SYContentItem *)self itemURL];
  if (itemURL)
  {
    itemURL2 = [itemCopy itemURL];

    if (!itemURL2)
    {
      LOBYTE(itemURL) = 0;
      goto LABEL_8;
    }

    userActivity3 = [(SYContentItem *)self itemURL];
    userActivity4 = [itemCopy itemURL];
    v10 = SYEquivalentURLs(userActivity3, userActivity4);
    goto LABEL_7;
  }

LABEL_8:

  return itemURL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      itemIdentifier = [(SYContentItem *)equalCopy itemIdentifier];
      itemIdentifier2 = [(SYContentItem *)self itemIdentifier];
      v7 = [itemIdentifier isEqual:itemIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  itemIdentifier = [(SYContentItem *)self itemIdentifier];
  v3 = [itemIdentifier hash];

  return v3;
}

- (SYContentItem)initWithData:(id)data error:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    [SYContentItem initWithData:error:];
  }

  v56 = 0;
  v54 = 0;
  v55 = 0;
  v7 = [SYSerializationSupport itemDataFromArchiveData:dataCopy majorVersion:&v56 minorVersion:&v55 error:&v54];
  v8 = v54;
  if (v7)
  {
    v9 = [[SYPBContentItem alloc] initWithData:v7];
    if (v9)
    {
      v10 = v9;
      v46 = v7;
      displayTitle = [(SYPBContentItem *)v9 displayTitle];
      sourceIdentifier = [(SYPBContentItem *)v10 sourceIdentifier];
      sourceLastKnownName = [(SYPBContentItem *)v10 sourceLastKnownName];
      itemIdentifierData = [(SYPBContentItem *)v10 itemIdentifierData];
      v13 = [itemIdentifierData length];

      if (v13)
      {
        v14 = MEMORY[0x277CCAAC8];
        v15 = objc_opt_class();
        itemIdentifierData2 = [(SYPBContentItem *)v10 itemIdentifierData];
        v53 = 0;
        v52 = [v14 unarchivedObjectOfClass:v15 fromData:itemIdentifierData2 error:&v53];
        v50 = v53;
      }

      else
      {
        v52 = 0;
        v50 = 0;
      }

      itemURL = [(SYPBContentItem *)v10 itemURL];
      v21 = [itemURL length];

      if (v21)
      {
        v22 = MEMORY[0x277CBEBC0];
        itemURL2 = [(SYPBContentItem *)v10 itemURL];
        v24 = [v22 URLWithString:itemURL2];
      }

      else
      {
        v24 = 0;
      }

      userActivityData = [(SYPBContentItem *)v10 userActivityData];
      v26 = userActivityData;
      if (userActivityData)
      {
        v27 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:userActivityData];
        activityType = [v27 activityType];
        canonicalURL = [v27 canonicalURL];
        targetContentIdentifier = [v27 targetContentIdentifier];
        userActivityData = [v27 persistentIdentifier];
      }

      else
      {
        v27 = 0;
        activityType = 0;
        targetContentIdentifier = 0;
        canonicalURL = 0;
      }

      v44 = userActivityData;
      v45 = displayTitle;
      if (v52 && sourceIdentifier && v24 | v27)
      {
        self = [(SYContentItem *)self initWithItemIdentifier:v52 displayTitle:displayTitle sourceIdentifier:sourceIdentifier sourceName:sourceLastKnownName itemURL:v24 activityType:activityType activityCanonicalURL:canonicalURL activityTargetContentIdentifier:targetContentIdentifier activityPersistentIdentifier:userActivityData userActivity:v27];
        linkPreviewMetadata = [(SYPBContentItem *)v10 linkPreviewMetadata];
        linkPreviewMetadata = self->_linkPreviewMetadata;
        self->_linkPreviewMetadata = linkPreviewMetadata;

        self->_previewLoadLevel = [(SYPBContentItem *)v10 previewLoadLevel];
        v31 = 1;
      }

      else
      {
        v43 = dataCopy;
        v32 = v26;
        v33 = activityType;
        v34 = v24;
        errorCopy = error;
        v36 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"Data for serialized item is incomplete or corrupted." forKey:*MEMORY[0x277CCA450]];
        v37 = v36;
        if (v50)
        {
          [v36 setObject:v50 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
        }

        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-121 userInfo:v37];

        v31 = 0;
        v8 = v38;
        error = errorCopy;
        v24 = v34;
        activityType = v33;
        v26 = v32;
        dataCopy = v43;
      }

      if (v31)
      {
        v39 = 0;
        v7 = v46;
        if (!error)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v7 = v46;
    }

    else
    {
      v17 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA450];
      v58[0] = @"Failed to deserialize data for content item.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v19 = [v17 errorWithDomain:@"com.apple.synapse" code:-120 userInfo:v18];

      v8 = v19;
    }
  }

  v40 = os_log_create("com.apple.synapse", "ContentItemManager");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [SYContentItem initWithData:v8 error:v40];
  }

  self = 0;
  v39 = v8;
  if (error)
  {
LABEL_29:
    *error = v39;
  }

LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)dataRepresentationWithError:(id *)error
{
  userActivity = [(SYContentItem *)self userActivity];

  if (!userActivity)
  {
    v7 = 0;
    goto LABEL_7;
  }

  userActivity2 = [(SYContentItem *)self userActivity];
  v22 = 0;
  v7 = [userActivity2 _createUserActivityDataWithSaving:0 options:0 error:&v22];
  userActivity = v22;

  if (v7)
  {
LABEL_7:
    v11 = MEMORY[0x277CCAAB0];
    itemIdentifier = [(SYContentItem *)self itemIdentifier];
    v10 = [v11 archivedDataWithRootObject:itemIdentifier requiringSecureCoding:1 error:0];

    v8 = objc_alloc_init(SYPBContentItem);
    [(SYPBContentItem *)v8 setItemIdentifierData:v10];
    displayTitle = [(SYContentItem *)self displayTitle];
    [(SYPBContentItem *)v8 setDisplayTitle:displayTitle];

    sourceIdentifier = [(SYContentItem *)self sourceIdentifier];
    [(SYPBContentItem *)v8 setSourceIdentifier:sourceIdentifier];

    sourceLastKnownName = [(SYContentItem *)self sourceLastKnownName];
    [(SYPBContentItem *)v8 setSourceLastKnownName:sourceLastKnownName];

    itemURL = [(SYContentItem *)self itemURL];
    absoluteString = [itemURL absoluteString];
    [(SYPBContentItem *)v8 setItemURL:absoluteString];

    [(SYPBContentItem *)v8 setUserActivityData:v7];
    linkPreviewMetadata = [(SYContentItem *)self linkPreviewMetadata];
    [(SYPBContentItem *)v8 setLinkPreviewMetadata:linkPreviewMetadata];

    [(SYPBContentItem *)v8 setPreviewLoadLevel:[(SYContentItem *)self previewLoadLevel]];
    data = [(SYPBContentItem *)v8 data];
    v9 = [SYSerializationSupport archiveDataFromItemData:data];

    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.synapse", "ContentItemManager");
  if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
  {
    [(SYContentItem *)self dataRepresentationWithError:userActivity, &v8->super.super];
  }

  v7 = 0;
  v9 = 0;
  v10 = v8;
LABEL_8:

  if (error)
  {
    v20 = userActivity;
    *error = userActivity;
  }

  return v9;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.synapse.item";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  if ([identifier isEqualToString:@"com.apple.synapse.item"])
  {
    v8 = [[SYContentItem alloc] initWithData:dataCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.synapse.item";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([identifier isEqualToString:@"com.apple.synapse.item"])
  {
    v10 = 0;
    v7 = [(SYContentItem *)self dataRepresentationWithError:&v10];
    v8 = v10;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  handlerCopy[2](handlerCopy, v7, v8);

  return 0;
}

- (void)initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"itemID" object:? file:? lineNumber:? description:?];
}

- (void)initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"userActivity || itemURL" object:? file:? lineNumber:? description:?];
}

- (void)initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"sourceIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithUserActivity:sourceAppID:sourceAppName:identifier:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"userActivity" object:? file:? lineNumber:? description:?];
}

- (void)initWithUserActivity:sourceAppID:sourceAppName:identifier:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"appBundleID" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayTitle:sourceIdentifier:sourceName:itemURL:identifier:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"sourceIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayTitle:sourceIdentifier:sourceName:itemURL:identifier:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"itemURL" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_2();
  [v0 handleFailureInMethod:@"serializedData" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Error initializing content item: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dataRepresentationWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 userActivity];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Failed to serialize data for user activity %@. Error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end