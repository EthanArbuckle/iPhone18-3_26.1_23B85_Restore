@interface WBSPageCollectionMetadata
- (BOOL)writeMetadataJSONToURL:(id)a3 error:(id *)a4;
- (CGSize)viewportSize;
- (NSDictionary)dictionaryRepresentation;
- (NSString)zipFileNameCandidate;
- (WBSPageCollectionMetadata)init;
- (id)_campaignName;
- (id)_languageAndRegion;
- (id)_workerID;
@end

@implementation WBSPageCollectionMetadata

- (WBSPageCollectionMetadata)init
{
  v20.receiver = self;
  v20.super_class = WBSPageCollectionMetadata;
  v2 = [(WBSPageCollectionMetadata *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] now];
    creationDate = v2->_creationDate;
    v2->_creationDate = v3;

    v5 = mobileGestaltStringForQuery(@"j9Th5smJpdztHwc+i39zIg");
    platform = v2->_platform;
    v2->_platform = v5;

    v7 = mobileGestaltStringForQuery(@"BuildVersion");
    osBuild = v2->_osBuild;
    v2->_osBuild = v7;

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.WebKit"];
    v10 = [v9 safari_version];
    webkitVersion = v2->_webkitVersion;
    v2->_webkitVersion = v10;

    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 safari_version];
    safariVersion = v2->_safariVersion;
    v2->_safariVersion = v13;

    v2->_collectionMethod = 0;
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    assetUUIDString = v2->_assetUUIDString;
    v2->_assetUUIDString = v16;

    v18 = v2;
  }

  return v2;
}

- (NSString)zipFileNameCandidate
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd"];
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v3 stringFromDate:v5];

  v7 = [(WBSPageCollectionMetadata *)self _languageAndRegion];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v9 = [(NSURL *)self->_url host];
  v10 = [v9 safari_highLevelDomainFromHost];

  v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-."];
  v12 = [v11 invertedSet];
  v13 = [v10 componentsSeparatedByCharactersInSet:v12];

  v14 = [v13 safari_filterObjectsUsingBlock:&__block_literal_global_54];
  v15 = [v14 componentsJoinedByString:@"-"];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(WBSPageCollectionMetadata *)self _campaignName];
  v18 = [v16 stringWithFormat:@"%@_%@_%@_%@_%@.%@", v6, v8, v17, v15, self->_assetUUIDString, @"zip"];

  return v18;
}

- (id)_languageAndRegion
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 localeIdentifier];

  if (self->_collectionMethod != 1)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 objectForKey:@"SaveWebpageWithMetadataIntendedLanguageAndRegion"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    if (isKindOfClass)
    {
      v9 = 0;
    }

    else
    {
      v4 = 0;
      v9 = v6;
    }

    v4 = v8;
  }

  return v4;
}

- (id)_campaignName
{
  if (self->_collectionMethod == 1)
  {
    v2 = @"SafariDebugMenu";
  }

  else
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v3 objectForKey:@"SaveWebpageWithMetadataCampaignName"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v2 = @"SafariUnknown";
    }
  }

  return v2;
}

- (id)_workerID
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 stringForKey:@"SaveWebpageWithMetadataWorkerID"];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v49 = *MEMORY[0x1E69E9840];
  v41[0] = @"date";
  v3 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v4 = [v3 stringFromDate:self->_creationDate];
  platform = self->_platform;
  v42[0] = v4;
  v42[1] = platform;
  v41[1] = @"platform";
  v41[2] = @"osBuild";
  v43 = *&self->_osBuild;
  v41[3] = @"webkitVersion";
  v41[4] = @"safariVersion";
  safariVersion = self->_safariVersion;
  v41[5] = @"languageAndRegion";
  v6 = [(WBSPageCollectionMetadata *)self _languageAndRegion];
  v45 = v6;
  v41[6] = @"collectionMethod";
  collectionMethod = self->_collectionMethod;
  v8 = @"SafariUnknown";
  if (collectionMethod == 1)
  {
    v8 = @"SafariDebugMenu";
  }

  if (collectionMethod == 2)
  {
    v9 = @"SafariManual";
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  assetUUIDString = self->_assetUUIDString;
  v46 = v10;
  v47 = assetUUIDString;
  v41[7] = @"assetUUID";
  v41[8] = @"campaignName";
  v12 = [(WBSPageCollectionMetadata *)self _campaignName];
  v48 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:9];
  v14 = [v13 mutableCopy];

  v15 = [(NSURL *)self->_url absoluteString];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [(NSURL *)self->_url absoluteString];
    [v14 setObject:v17 forKeyedSubscript:@"url"];
  }

  indexFileName = self->_indexFileName;
  if (indexFileName)
  {
    [v14 setObject:indexFileName forKeyedSubscript:@"indexFile"];
  }

  pageTitle = self->_pageTitle;
  if (pageTitle)
  {
    [v14 setObject:pageTitle forKeyedSubscript:@"pageTitle"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v14 setObject:userAgent forKeyedSubscript:@"userAgent"];
  }

  screenCaptureFileName = self->_screenCaptureFileName;
  if (screenCaptureFileName)
  {
    [v14 setObject:screenCaptureFileName forKeyedSubscript:@"screenCapture"];
  }

  v22 = [(WBSPageCollectionMetadata *)self _workerID];
  v23 = v22 == 0;

  if (!v23)
  {
    v39 = @"workerID";
    v24 = [(WBSPageCollectionMetadata *)self _workerID];
    v40 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v14 setObject:v25 forKeyedSubscript:@"diagnostics"];
  }

  if (self->_formType)
  {
    v26 = [v14 objectForKeyedSubscript:@"diagnostics"];
    formType = self->_formType;
    v37[0] = @"formType";
    v37[1] = @"savedPageLooksLikeOriginal";
    v38[0] = formType;
    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_savedPageLooksLikeOriginal];
    v38[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v30 = [v26 safari_dictionaryByMergingWithDictionary:v29];
    [v14 setObject:v30 forKeyedSubscript:@"diagnostics"];
  }

  if (self->_viewportSize.width != *MEMORY[0x1E695F060] || self->_viewportSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    v35[0] = @"x";
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v35[1] = @"y";
    v36[0] = v31;
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_viewportSize.height];
    v36[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v14 setObject:v33 forKeyedSubscript:@"viewportSize"];
  }

  return v14;
}

- (BOOL)writeMetadataJSONToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WBSPageCollectionMetadata *)self dictionaryRepresentation];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:9 error:a4];
  v10 = [v8 initWithData:v9 encoding:4];

  if (a4 && *a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 writeToURL:v6 atomically:0 encoding:4 error:a4];
  }

  return v11;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end