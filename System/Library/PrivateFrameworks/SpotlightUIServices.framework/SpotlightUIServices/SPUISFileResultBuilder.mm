@interface SPUISFileResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact;
+ (id)stringWithModificationDate:(id)date creationDate:(id)creationDate;
+ (id)stringWithPageCount:(id)count;
- (SPUISFileResultBuilder)initWithResult:(id)result;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildButtonItems;
- (id)buildCommand;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildFillToolParameterCommand;
- (id)buildPunchoutCommandForFile;
- (id)buildSecondaryCommand;
- (id)buildThumbnail;
- (id)openFileProviderItemCommand;
- (void)buildThumbnail;
@end

@implementation SPUISFileResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  resultBundleId = [resultCopy resultBundleId];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SPUISFileResultBuilder;
  LOBYTE(self) = objc_msgSendSuper2(&v8, sel_supportsResult_, resultCopy);

  if (self & 1) != 0 || ([resultBundleId hasPrefix:@"com.apple.CloudDocs"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [resultBundleId isEqualToString:@"com.apple.FileProvider.LocalStorage"];
  }

  return v6;
}

+ (id)stringWithModificationDate:(id)date creationDate:(id)creationDate
{
  dateCopy = date;
  creationDateCopy = creationDate;
  v7 = creationDateCopy;
  if (dateCopy)
  {
    v8 = dateCopy;
  }

  else
  {
    v8 = creationDateCopy;
  }

  if (v8)
  {
    v9 = v8;
    v10 = +[SPUISDateFormatManager shortDateTimeFormatter];
    v11 = [v10 stringFromDate:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)stringWithPageCount:(id)count
{
  v3 = MEMORY[0x277CCACA8];
  countCopy = count;
  v5 = [SPUISUtilities localizedStringForKey:@"PAGES_FORMAT"];
  countCopy = [v3 localizedStringWithFormat:v5, countCopy];

  return countCopy;
}

- (SPUISFileResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v27.receiver = self;
  v27.super_class = SPUISFileResultBuilder;
  v5 = [(SPUISResultBuilder *)&v27 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setCreationDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2660] withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setModificationDate:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2D10] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setLastUsedDate:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2A80] withType:objc_opt_class()];
    if (v9)
    {
      [(SPUISResultBuilder *)v5 setCoreSpotlightId:v9];
    }

    else
    {
      identifier = [resultCopy identifier];
      [(SPUISResultBuilder *)v5 setCoreSpotlightId:identifier];
    }

    fileProviderIdentifier = [resultCopy fileProviderIdentifier];
    if (fileProviderIdentifier)
    {
      [(SPUISFileResultBuilder *)v5 setFileProviderId:fileProviderIdentifier];
    }

    else
    {
      v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2B38] withType:objc_opt_class()];
      [(SPUISFileResultBuilder *)v5 setFileProviderId:v12];
    }

    fileProviderDomainIdentifier = [resultCopy fileProviderDomainIdentifier];
    if (fileProviderDomainIdentifier)
    {
      [(SPUISFileResultBuilder *)v5 setFileProviderDomainId:fileProviderDomainIdentifier];
    }

    else
    {
      v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC2770] withType:objc_opt_class()];
      [(SPUISFileResultBuilder *)v5 setFileProviderDomainId:v14];
    }

    v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC2CF0] withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setKind:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC31E0] withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setThumbnailURL:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setName:v17];

    v18 = +[SPUISUtilities isMacOS];
    v19 = MEMORY[0x277CC2D48];
    if (!v18)
    {
      v19 = MEMORY[0x277CC2B48];
    }

    v20 = [resultCopy valueForAttribute:*v19 withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setSizeInBytes:v20];

    v21 = [resultCopy valueForAttribute:*MEMORY[0x277CC2E08] withType:objc_opt_class()];
    [(SPUISFileResultBuilder *)v5 setPageCount:v21];

    contentType = [resultCopy contentType];
    [(SPUISFileResultBuilder *)v5 setContentType:contentType];

    contentType2 = [(SPUISFileResultBuilder *)v5 contentType];
    identifier2 = [*MEMORY[0x277CE1D80] identifier];
    -[SPUISFileResultBuilder setIsFolder:](v5, "setIsFolder:", [contentType2 isEqualToString:identifier2]);

    v25 = [resultCopy valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
    [(SPUISResultBuilder *)v5 setFilePath:v25];
  }

  return v5;
}

- (id)buildButtonItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  openFileProviderItemCommand = [(SPUISFileResultBuilder *)self openFileProviderItemCommand];
  if (openFileProviderItemCommand && ![(SPUISFileResultBuilder *)self isFolder])
  {
    [openFileProviderItemCommand setShouldRevealFile:1];
    v5 = objc_opt_new();
    [v5 setCommand:openFileProviderItemCommand];
    v9[0] = v5;
    buildButtonItems = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISFileResultBuilder;
    buildButtonItems = [(SPUISResultBuilder *)&v8 buildButtonItems];
  }

  v6 = *MEMORY[0x277D85DE8];

  return buildButtonItems;
}

- (id)buildCompactCardSection
{
  v12.receiver = self;
  v12.super_class = SPUISFileResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  v4 = objc_opt_class();
  modificationDate = [(SPUISFileResultBuilder *)self modificationDate];
  creationDate = [(SPUISFileResultBuilder *)self creationDate];
  v7 = [v4 stringWithModificationDate:modificationDate creationDate:creationDate];

  if (v7)
  {
    descriptions = [buildCompactCardSection descriptions];
    v9 = [MEMORY[0x277D4C598] textWithString:v7];
    v10 = [descriptions arrayByAddingObject:v9];
    [buildCompactCardSection setDescriptions:v10];
  }

  return buildCompactCardSection;
}

- (id)buildThumbnail
{
  filePath = [(SPUISResultBuilder *)self filePath];
  if ([filePath length])
  {

    goto LABEL_3;
  }

  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  if (coreSpotlightId)
  {
    v12 = coreSpotlightId;
    fileProviderId = [(SPUISFileResultBuilder *)self fileProviderId];

    if (fileProviderId)
    {
LABEL_3:
      buildThumbnail = objc_opt_new();
      coreSpotlightId2 = [(SPUISResultBuilder *)self coreSpotlightId];
      [buildThumbnail setCoreSpotlightIdentifier:coreSpotlightId2];

      fileProviderId2 = [(SPUISFileResultBuilder *)self fileProviderId];
      [buildThumbnail setFileProviderIdentifier:fileProviderId2];

      filePath2 = [(SPUISResultBuilder *)self filePath];

      if (filePath2)
      {
        v8 = MEMORY[0x277CBEBC0];
        filePath3 = [(SPUISResultBuilder *)self filePath];
        v10 = [v8 fileURLWithPath:filePath3 isDirectory:{-[SPUISFileResultBuilder isFolder](self, "isFolder")}];
        [buildThumbnail setFilePath:v10];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = SPUISGeneralLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(SPUISFileResultBuilder *)self buildThumbnail];
  }

  v16.receiver = self;
  v16.super_class = SPUISFileResultBuilder;
  buildThumbnail = [(SPUISResultBuilder *)&v16 buildThumbnail];
LABEL_12:

  return buildThumbnail;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  if ([(SPUISFileResultBuilder *)self isFolder])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  filePath = [(SPUISResultBuilder *)self filePath];
  if (filePath)
  {
  }

  else
  {
    coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
    if (!coreSpotlightId)
    {
      goto LABEL_4;
    }

    fileProviderId = [(SPUISFileResultBuilder *)self fileProviderId];

    if (!fileProviderId)
    {
LABEL_3:
      coreSpotlightId = 0;
      goto LABEL_4;
    }
  }

  coreSpotlightId = objc_opt_new();
  coreSpotlightId2 = [(SPUISResultBuilder *)self coreSpotlightId];
  [coreSpotlightId setCoreSpotlightIdentifier:coreSpotlightId2];

  fileProviderId2 = [(SPUISFileResultBuilder *)self fileProviderId];
  [coreSpotlightId setFileProviderIdentifier:fileProviderId2];

  filePath2 = [(SPUISResultBuilder *)self filePath];

  if (filePath2)
  {
    v11 = MEMORY[0x277D4C550];
    v12 = MEMORY[0x277CBEBC0];
    filePath3 = [(SPUISResultBuilder *)self filePath];
    v14 = [v12 fileURLWithPath:filePath3 isDirectory:{-[SPUISFileResultBuilder isFolder](self, "isFolder")}];
    v15 = [v11 punchoutWithURL:v14];
    [coreSpotlightId setPunchout:v15];
  }

LABEL_4:

  return coreSpotlightId;
}

+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)buildDescriptions
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(SPUISFileResultBuilder *)self isFolder])
  {
    goto LABEL_11;
  }

  uniformType = [(SPUISResultBuilder *)self uniformType];
  if (uniformType)
  {
  }

  else
  {
    kind = [(SPUISFileResultBuilder *)self kind];

    if (!kind)
    {
      goto LABEL_9;
    }
  }

  uniformType2 = [(SPUISResultBuilder *)self uniformType];
  localizedDescription = [uniformType2 localizedDescription];
  if (localizedDescription)
  {
    kind2 = localizedDescription;
  }

  else
  {
    kind2 = [(SPUISFileResultBuilder *)self kind];

    if (!kind2)
    {
      goto LABEL_9;
    }
  }

  [v3 addObject:kind2];

LABEL_9:
  sizeInBytes = [(SPUISFileResultBuilder *)self sizeInBytes];

  if (sizeInBytes)
  {
    sizeInBytes2 = [(SPUISFileResultBuilder *)self sizeInBytes];
    v11 = +[SPUISNumberFormatManager stringFromByteCount:](SPUISNumberFormatManager, "stringFromByteCount:", [sizeInBytes2 longLongValue]);
    [v3 addObject:v11];
  }

LABEL_11:
  if ([(SPUISResultBuilder *)self isForBrowseMode]&& ([(SPUISResultBuilder *)self lastUsedDate], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    modificationDate2 = +[SPUISDateFormatManager shortDateTimeFormatter];
    lastUsedDate = [(SPUISResultBuilder *)self lastUsedDate];
    v15 = [modificationDate2 stringFromDate:lastUsedDate];
  }

  else
  {
    modificationDate = [(SPUISFileResultBuilder *)self modificationDate];

    if (!modificationDate)
    {
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    modificationDate2 = [(SPUISFileResultBuilder *)self modificationDate];
    v15 = [v17 stringWithModificationDate:modificationDate2 creationDate:0];
  }

  [v3 addObject:v15];
LABEL_17:
  v18 = objc_opt_new();
  v19 = [v3 componentsJoinedByString:@" · "];
  if ([v19 length])
  {
    v20 = [MEMORY[0x277D4C3A0] textWithString:v19];
    [v18 addObject:v20];
  }

  if ([v18 count] && (v21 = objc_opt_new(), objc_msgSend(v21, "setFormattedTextPieces:", v18), v21))
  {
    v25[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)buildCommand
{
  openFileProviderItemCommand = [(SPUISFileResultBuilder *)self openFileProviderItemCommand];
  if (!openFileProviderItemCommand)
  {
    openFileProviderItemCommand = [(SPUISFileResultBuilder *)self buildPunchoutCommandForFile];
  }

  return openFileProviderItemCommand;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  filePath = [(SPUISResultBuilder *)self filePath];
  [v3 setFilePath:filePath];

  return v3;
}

- (id)buildSecondaryCommand
{
  if ([(SPUISFileResultBuilder *)self isFolder]&& ([(SPUISFileResultBuilder *)self fileProviderId], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = objc_opt_new();
    [v4 setEntityType:6];
    filePath = [(SPUISResultBuilder *)self filePath];
    [v4 setEntityIdentifier:filePath];

    buildThumbnail = [(SPUISFileResultBuilder *)self buildThumbnail];
    [v4 setTokenImage:buildThumbnail];

    result = [(SPUISResultBuilder *)self result];
    v9 = [result valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [v4 setTokenString:v9];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)openFileProviderItemCommand
{
  fileProviderId = [(SPUISFileResultBuilder *)self fileProviderId];
  if (fileProviderId)
  {
    coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];

    if (coreSpotlightId)
    {
      fileProviderId = objc_opt_new();
      coreSpotlightId2 = [(SPUISResultBuilder *)self coreSpotlightId];
      [fileProviderId setCoreSpotlightIdentifier:coreSpotlightId2];

      fileProviderId2 = [(SPUISFileResultBuilder *)self fileProviderId];
      [fileProviderId setFileProviderIdentifier:fileProviderId2];
    }

    else
    {
      fileProviderId = 0;
    }
  }

  return fileProviderId;
}

- (id)buildPunchoutCommandForFile
{
  result = [(SPUISResultBuilder *)self result];
  v3 = [result url];

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277D4C550] punchoutWithURL:v3];
  [v4 setPunchout:v5];

  return v4;
}

- (id)buildAppTopHitEntityCardSection
{
  v5.receiver = self;
  v5.super_class = SPUISFileResultBuilder;
  buildAppTopHitEntityCardSection = [(SPUISResultBuilder *)&v5 buildAppTopHitEntityCardSection];
  thumbnail = [buildAppTopHitEntityCardSection thumbnail];
  [thumbnail setCornerRoundingStyle:1];

  return buildAppTopHitEntityCardSection;
}

- (void)buildThumbnail
{
  v19 = *MEMORY[0x277D85DE8];
  result = [self result];
  result2 = [self result];
  fileProviderDomainIdentifier = [result2 fileProviderDomainIdentifier];
  result3 = [self result];
  fileProviderIdentifier = [result3 fileProviderIdentifier];
  filePath = [self filePath];
  v11 = 138413058;
  v12 = result;
  v13 = 2112;
  v14 = fileProviderDomainIdentifier;
  v15 = 2112;
  v16 = fileProviderIdentifier;
  v17 = 2112;
  v18 = filePath;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "SPUISFileResultBuilder: missing info for SFQuickLookThumbnailImage: %@\nresult.fileProviderDomainIdentifier: %@\nresult.fileProviderIdentifier: %@\nfilePath: %@", &v11, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

@end