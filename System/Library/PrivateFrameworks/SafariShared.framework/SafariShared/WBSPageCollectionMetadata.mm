@interface WBSPageCollectionMetadata
- (BOOL)writeMetadataJSONToURL:(id)l error:(id *)error;
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
    safari_version = [v9 safari_version];
    webkitVersion = v2->_webkitVersion;
    v2->_webkitVersion = safari_version;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    safari_version2 = [mainBundle safari_version];
    safariVersion = v2->_safariVersion;
    v2->_safariVersion = safari_version2;

    v2->_collectionMethod = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    assetUUIDString = v2->_assetUUIDString;
    v2->_assetUUIDString = uUIDString;

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

  _languageAndRegion = [(WBSPageCollectionMetadata *)self _languageAndRegion];
  v8 = [_languageAndRegion stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  host = [(NSURL *)self->_url host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-."];
  invertedSet = [v11 invertedSet];
  v13 = [safari_highLevelDomainFromHost componentsSeparatedByCharactersInSet:invertedSet];

  v14 = [v13 safari_filterObjectsUsingBlock:&__block_literal_global_54];
  v15 = [v14 componentsJoinedByString:@"-"];

  v16 = MEMORY[0x1E696AEC0];
  _campaignName = [(WBSPageCollectionMetadata *)self _campaignName];
  v18 = [v16 stringWithFormat:@"%@_%@_%@_%@_%@.%@", v6, v8, _campaignName, v15, self->_assetUUIDString, @"zip"];

  return v18;
}

- (id)_languageAndRegion
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (self->_collectionMethod != 1)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults objectForKey:@"SaveWebpageWithMetadataIntendedLanguageAndRegion"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
    }

    else
    {
      v8 = localeIdentifier;
    }

    if (isKindOfClass)
    {
      v9 = 0;
    }

    else
    {
      localeIdentifier = 0;
      v9 = v6;
    }

    localeIdentifier = v8;
  }

  return localeIdentifier;
}

- (id)_campaignName
{
  if (self->_collectionMethod == 1)
  {
    v2 = @"SafariDebugMenu";
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [standardUserDefaults objectForKey:@"SaveWebpageWithMetadataCampaignName"];

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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"SaveWebpageWithMetadataWorkerID"];

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
  _languageAndRegion = [(WBSPageCollectionMetadata *)self _languageAndRegion];
  v45 = _languageAndRegion;
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
  _campaignName = [(WBSPageCollectionMetadata *)self _campaignName];
  v48 = _campaignName;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:9];
  v14 = [v13 mutableCopy];

  absoluteString = [(NSURL *)self->_url absoluteString];
  v16 = absoluteString == 0;

  if (!v16)
  {
    absoluteString2 = [(NSURL *)self->_url absoluteString];
    [v14 setObject:absoluteString2 forKeyedSubscript:@"url"];
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

  _workerID = [(WBSPageCollectionMetadata *)self _workerID];
  v23 = _workerID == 0;

  if (!v23)
  {
    v39 = @"workerID";
    _workerID2 = [(WBSPageCollectionMetadata *)self _workerID];
    v40 = _workerID2;
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

- (BOOL)writeMetadataJSONToURL:(id)l error:(id *)error
{
  lCopy = l;
  dictionaryRepresentation = [(WBSPageCollectionMetadata *)self dictionaryRepresentation];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:9 error:error];
  v10 = [v8 initWithData:v9 encoding:4];

  if (error && *error)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 writeToURL:lCopy atomically:0 encoding:4 error:error];
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