@interface SYContentItem
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)representsSameContentAsItem:(id)a3;
- (NSData)linkPreviewMetadata;
- (NSString)description;
- (NSString)webpageDisplayDomain;
- (SYContentItem)initWithData:(id)a3 error:(id *)a4;
- (SYContentItem)initWithDisplayTitle:(id)a3 sourceIdentifier:(id)a4 sourceName:(id)a5 itemURL:(id)a6 identifier:(id)a7;
- (SYContentItem)initWithItemIdentifier:(id)a3 displayTitle:(id)a4 sourceIdentifier:(id)a5 sourceName:(id)a6 itemURL:(id)a7 activityType:(id)a8 activityCanonicalURL:(id)a9 activityTargetContentIdentifier:(id)a10 activityPersistentIdentifier:(id)a11 userActivity:(id)a12;
- (SYContentItem)initWithUserActivity:(id)a3 sourceAppID:(id)a4 sourceAppName:(id)a5 identifier:(id)a6;
- (id)dataRepresentationWithError:(id *)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (unint64_t)hash;
- (void)loadFullPreviewIfNeededWithCompletion:(id)a3;
- (void)setLinkPreviewMetadata:(id)a3 loadLevel:(int64_t)a4;
@end

@implementation SYContentItem

- (SYContentItem)initWithItemIdentifier:(id)a3 displayTitle:(id)a4 sourceIdentifier:(id)a5 sourceName:(id)a6 itemURL:(id)a7 activityType:(id)a8 activityCanonicalURL:(id)a9 activityTargetContentIdentifier:(id)a10 activityPersistentIdentifier:(id)a11 userActivity:(id)a12
{
  v17 = a3;
  v50 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v17;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v49 = v22;
  if (!v22)
  {
    [SYContentItem initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:];
  }

  if (!(v20 | v26))
  {
    [SYContentItem initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:];
  }

  v27 = v23;
  if (!v18)
  {
    [SYContentItem initWithItemIdentifier:displayTitle:sourceIdentifier:sourceName:itemURL:activityType:activityCanonicalURL:activityTargetContentIdentifier:activityPersistentIdentifier:userActivity:];
  }

  v52.receiver = self;
  v52.super_class = SYContentItem;
  v28 = [(SYContentItem *)&v52 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_itemIdentifier, a3);
    v30 = [v50 copy];
    displayTitle = v29->_displayTitle;
    v29->_displayTitle = v30;

    v32 = [v18 copy];
    sourceIdentifier = v29->_sourceIdentifier;
    v29->_sourceIdentifier = v32;

    v34 = [v19 copy];
    sourceLastKnownName = v29->_sourceLastKnownName;
    v29->_sourceLastKnownName = v34;

    v36 = [v20 copy];
    itemURL = v29->_itemURL;
    v29->_itemURL = v36;

    v38 = [v27 copy];
    activityCanonicalURL = v29->_activityCanonicalURL;
    v29->_activityCanonicalURL = v38;

    v40 = [v21 copy];
    activityType = v29->_activityType;
    v29->_activityType = v40;

    v42 = [v24 copy];
    activityTargetContentIdentifier = v29->_activityTargetContentIdentifier;
    v29->_activityTargetContentIdentifier = v42;

    v44 = [v25 copy];
    activityPersistentIdentifier = v29->_activityPersistentIdentifier;
    v29->_activityPersistentIdentifier = v44;

    objc_storeStrong(&v29->_userActivity, a12);
  }

  return v29;
}

- (SYContentItem)initWithUserActivity:(id)a3 sourceAppID:(id)a4 sourceAppName:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v27 = a5;
  v12 = a6;
  v13 = self;
  v14 = v12;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SYContentItem initWithUserActivity:sourceAppID:sourceAppName:identifier:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [SYContentItem initWithUserActivity:sourceAppID:sourceAppName:identifier:];
LABEL_3:
  v26 = v14;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
  }

  v16 = v15;
  v17 = [v10 activityType];
  v18 = [v10 targetContentIdentifier];
  v19 = [v10 persistentIdentifier];
  v20 = [v10 webpageURL];
  v21 = [v10 canonicalURL];
  v22 = [v10 title];
  v25 = v11;
  v23 = [(SYContentItem *)v13 initWithItemIdentifier:v16 displayTitle:v22 sourceIdentifier:v11 sourceName:v27 itemURL:v20 activityType:v17 activityCanonicalURL:v21 activityTargetContentIdentifier:v18 activityPersistentIdentifier:v19 userActivity:v10];

  return v23;
}

- (SYContentItem)initWithDisplayTitle:(id)a3 sourceIdentifier:(id)a4 sourceName:(id)a5 itemURL:(id)a6 identifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v15)
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
    v17 = [MEMORY[0x277CCAD78] UUID];
    goto LABEL_8;
  }

  [SYContentItem initWithDisplayTitle:sourceIdentifier:sourceName:itemURL:identifier:];
  if (!v15)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_4:
  v17 = v16;
LABEL_8:
  v18 = v17;
  v19 = [(SYContentItem *)self initWithItemIdentifier:v17 displayTitle:v12 sourceIdentifier:v13 sourceName:v14 itemURL:v15 activityType:0 activityCanonicalURL:0 activityTargetContentIdentifier:0 activityPersistentIdentifier:0 userActivity:0];

  return v19;
}

- (NSString)description
{
  v3 = [(SYContentItem *)self displayTitle];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(SYContentItem *)self displayTitle];
    v21 = [v4 stringWithFormat:@"'%@'", v5];
  }

  else
  {
    v21 = @"(null)";
  }

  v6 = [(SYContentItem *)self itemIdentifier];
  v7 = [v6 UUIDString];
  v20 = [v7 substringWithRange:{0, 8}];

  v24.receiver = self;
  v24.super_class = SYContentItem;
  v19 = [(SYContentItem *)&v24 description];
  v23 = [(SYContentItem *)self sourceLastKnownName];
  v22 = [(SYContentItem *)self sourceIdentifier];
  v8 = [(SYContentItem *)self itemURL];
  v9 = [(SYContentItem *)self activityCanonicalURL];
  v10 = [(SYContentItem *)self activityType];
  v11 = [(SYContentItem *)self activityTargetContentIdentifier];
  v12 = [(SYContentItem *)self activityPersistentIdentifier];
  v13 = [(SYContentItem *)self userActivity];
  if (v13)
  {
    v14 = @"Yes";
  }

  else
  {
    v14 = @"No";
  }

  v15 = [(SYContentItem *)self linkPreviewMetadata];
  if (v15)
  {
    v16 = @"Yes";
  }

  else
  {
    v16 = @"No";
  }

  v18 = [v19 stringByAppendingFormat:@" itemID: %@…, title: %@, source: %@ (%@), itemURL: %@, canonicalURL: %@, activityType: %@, targetContentID: %@, persistentID: %@, hasUserActivity: %@, hasLinkPreview: %@", v20, v21, v23, v22, v8, v9, v10, v11, v12, v14, v16];

  return v18;
}

- (NSString)webpageDisplayDomain
{
  v3 = [(SYContentItem *)self itemURL];
  if (v3)
  {
    v4 = [(SYContentItem *)self userActivity];
    v5 = [v4 activityType];

    if (v5)
    {
      v6 = [v5 isEqualToString:*MEMORY[0x277CCA850]];

      if (v6)
      {
LABEL_4:
        v7 = [v3 _lp_highLevelDomain];
        goto LABEL_7;
      }
    }

    else if ([v3 _lp_isHTTPFamilyURL])
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSData)linkPreviewMetadata
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_linkPreviewMetadata;
  objc_sync_exit(v2);

  return v3;
}

- (void)setLinkPreviewMetadata:(id)a3 loadLevel:(int64_t)a4
{
  v6 = a3;
  obj = self;
  objc_sync_enter(obj);
  linkPreviewMetadata = obj->_linkPreviewMetadata;
  obj->_linkPreviewMetadata = v6;

  obj->_previewLoadLevel = a4;
  objc_sync_exit(obj);
}

- (void)loadFullPreviewIfNeededWithCompletion:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SYContentItem *)self previewLoadLevel]> 1)
  {
    if (v4)
    {
      v4[2](v4);
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
    v8 = v4;
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

- (BOOL)representsSameContentAsItem:(id)a3
{
  v4 = a3;
  v5 = [(SYContentItem *)self userActivity];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 userActivity];

    if (v7)
    {
      v8 = [(SYContentItem *)self userActivity];
      v9 = [v4 userActivity];
      v10 = SYEquivalentUserActivities(v8, v9);
LABEL_7:
      LOBYTE(v11) = v10;

      goto LABEL_8;
    }
  }

  v11 = [(SYContentItem *)self itemURL];
  if (v11)
  {
    v12 = [v4 itemURL];

    if (!v12)
    {
      LOBYTE(v11) = 0;
      goto LABEL_8;
    }

    v8 = [(SYContentItem *)self itemURL];
    v9 = [v4 itemURL];
    v10 = SYEquivalentURLs(v8, v9);
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SYContentItem *)v4 itemIdentifier];
      v6 = [(SYContentItem *)self itemIdentifier];
      v7 = [v5 isEqual:v6];
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
  v2 = [(SYContentItem *)self itemIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (SYContentItem)initWithData:(id)a3 error:(id *)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    [SYContentItem initWithData:error:];
  }

  v56 = 0;
  v54 = 0;
  v55 = 0;
  v7 = [SYSerializationSupport itemDataFromArchiveData:v6 majorVersion:&v56 minorVersion:&v55 error:&v54];
  v8 = v54;
  if (v7)
  {
    v9 = [[SYPBContentItem alloc] initWithData:v7];
    if (v9)
    {
      v10 = v9;
      v46 = v7;
      v11 = [(SYPBContentItem *)v9 displayTitle];
      v51 = [(SYPBContentItem *)v10 sourceIdentifier];
      v49 = [(SYPBContentItem *)v10 sourceLastKnownName];
      v12 = [(SYPBContentItem *)v10 itemIdentifierData];
      v13 = [v12 length];

      if (v13)
      {
        v14 = MEMORY[0x277CCAAC8];
        v15 = objc_opt_class();
        v16 = [(SYPBContentItem *)v10 itemIdentifierData];
        v53 = 0;
        v52 = [v14 unarchivedObjectOfClass:v15 fromData:v16 error:&v53];
        v50 = v53;
      }

      else
      {
        v52 = 0;
        v50 = 0;
      }

      v20 = [(SYPBContentItem *)v10 itemURL];
      v21 = [v20 length];

      if (v21)
      {
        v22 = MEMORY[0x277CBEBC0];
        v23 = [(SYPBContentItem *)v10 itemURL];
        v24 = [v22 URLWithString:v23];
      }

      else
      {
        v24 = 0;
      }

      v25 = [(SYPBContentItem *)v10 userActivityData];
      v26 = v25;
      if (v25)
      {
        v27 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:v25];
        v28 = [v27 activityType];
        v48 = [v27 canonicalURL];
        v47 = [v27 targetContentIdentifier];
        v25 = [v27 persistentIdentifier];
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v47 = 0;
        v48 = 0;
      }

      v44 = v25;
      v45 = v11;
      if (v52 && v51 && v24 | v27)
      {
        self = [(SYContentItem *)self initWithItemIdentifier:v52 displayTitle:v11 sourceIdentifier:v51 sourceName:v49 itemURL:v24 activityType:v28 activityCanonicalURL:v48 activityTargetContentIdentifier:v47 activityPersistentIdentifier:v25 userActivity:v27];
        v29 = [(SYPBContentItem *)v10 linkPreviewMetadata];
        linkPreviewMetadata = self->_linkPreviewMetadata;
        self->_linkPreviewMetadata = v29;

        self->_previewLoadLevel = [(SYPBContentItem *)v10 previewLoadLevel];
        v31 = 1;
      }

      else
      {
        v43 = v6;
        v32 = v26;
        v33 = v28;
        v34 = v24;
        v35 = a4;
        v36 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"Data for serialized item is incomplete or corrupted." forKey:*MEMORY[0x277CCA450]];
        v37 = v36;
        if (v50)
        {
          [v36 setObject:v50 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
        }

        v38 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.synapse" code:-121 userInfo:v37];

        v31 = 0;
        v8 = v38;
        a4 = v35;
        v24 = v34;
        v28 = v33;
        v26 = v32;
        v6 = v43;
      }

      if (v31)
      {
        v39 = 0;
        v7 = v46;
        if (!a4)
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
  if (a4)
  {
LABEL_29:
    *a4 = v39;
  }

LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v5 = [(SYContentItem *)self userActivity];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = [(SYContentItem *)self userActivity];
  v22 = 0;
  v7 = [v6 _createUserActivityDataWithSaving:0 options:0 error:&v22];
  v5 = v22;

  if (v7)
  {
LABEL_7:
    v11 = MEMORY[0x277CCAAB0];
    v12 = [(SYContentItem *)self itemIdentifier];
    v10 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];

    v8 = objc_alloc_init(SYPBContentItem);
    [(SYPBContentItem *)v8 setItemIdentifierData:v10];
    v13 = [(SYContentItem *)self displayTitle];
    [(SYPBContentItem *)v8 setDisplayTitle:v13];

    v14 = [(SYContentItem *)self sourceIdentifier];
    [(SYPBContentItem *)v8 setSourceIdentifier:v14];

    v15 = [(SYContentItem *)self sourceLastKnownName];
    [(SYPBContentItem *)v8 setSourceLastKnownName:v15];

    v16 = [(SYContentItem *)self itemURL];
    v17 = [v16 absoluteString];
    [(SYPBContentItem *)v8 setItemURL:v17];

    [(SYPBContentItem *)v8 setUserActivityData:v7];
    v18 = [(SYContentItem *)self linkPreviewMetadata];
    [(SYPBContentItem *)v8 setLinkPreviewMetadata:v18];

    [(SYPBContentItem *)v8 setPreviewLoadLevel:[(SYContentItem *)self previewLoadLevel]];
    v19 = [(SYPBContentItem *)v8 data];
    v9 = [SYSerializationSupport archiveDataFromItemData:v19];

    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.synapse", "ContentItemManager");
  if (os_log_type_enabled(&v8->super.super, OS_LOG_TYPE_ERROR))
  {
    [(SYContentItem *)self dataRepresentationWithError:v5, &v8->super.super];
  }

  v7 = 0;
  v9 = 0;
  v10 = v8;
LABEL_8:

  if (a3)
  {
    v20 = v5;
    *a3 = v5;
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

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = a3;
  if ([a4 isEqualToString:@"com.apple.synapse.item"])
  {
    v8 = [[SYContentItem alloc] initWithData:v7 error:a5];
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

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.synapse.item"])
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

  v6[2](v6, v7, v8);

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