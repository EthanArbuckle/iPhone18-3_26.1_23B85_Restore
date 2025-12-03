@interface SSFileResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)compact;
+ (id)stringWithModificationDate:(id)date creationDate:(id)creationDate;
+ (id)stringWithPageCount:(id)count;
- (SSFileResultBuilder)initWithResult:(id)result;
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
@end

@implementation SSFileResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  resultBundleId = [resultCopy resultBundleId];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SSFileResultBuilder;
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
    v10 = +[SSDateFormatManager shortDateTimeFormatter];
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
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  countCopy = count;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PAGES_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
  countCopy = [v3 localizedStringWithFormat:v7, countCopy];

  return countCopy;
}

- (SSFileResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v27.receiver = self;
  v27.super_class = SSFileResultBuilder;
  v5 = [(SSResultBuilder *)&v27 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setCreationDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setModificationDate:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setLastUsedDate:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    if (v9)
    {
      [(SSResultBuilder *)v5 setCoreSpotlightId:v9];
    }

    else
    {
      identifier = [resultCopy identifier];
      [(SSResultBuilder *)v5 setCoreSpotlightId:identifier];
    }

    fileProviderIdentifier = [resultCopy fileProviderIdentifier];
    if (fileProviderIdentifier)
    {
      [(SSFileResultBuilder *)v5 setFileProviderId:fileProviderIdentifier];
    }

    else
    {
      v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6964338] withType:objc_opt_class()];
      [(SSFileResultBuilder *)v5 setFileProviderId:v12];
    }

    fileProviderDomainIdentifier = [resultCopy fileProviderDomainIdentifier];
    if (fileProviderDomainIdentifier)
    {
      [(SSFileResultBuilder *)v5 setFileProviderDomainId:fileProviderDomainIdentifier];
    }

    else
    {
      v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F88] withType:objc_opt_class()];
      [(SSFileResultBuilder *)v5 setFileProviderDomainId:v14];
    }

    v15 = [resultCopy valueForAttribute:*MEMORY[0x1E6964528] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setKind:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C08] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setThumbnailURL:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setName:v17];

    v18 = isMacOS();
    v19 = MEMORY[0x1E6964590];
    if (!v18)
    {
      v19 = MEMORY[0x1E6964340];
    }

    v20 = [resultCopy valueForAttribute:*v19 withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setSizeInBytes:v20];

    v21 = [resultCopy valueForAttribute:*MEMORY[0x1E6964628] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setPageCount:v21];

    contentType = [resultCopy contentType];
    [(SSFileResultBuilder *)v5 setContentType:contentType];

    contentType2 = [(SSFileResultBuilder *)v5 contentType];
    identifier2 = [*MEMORY[0x1E6982DC8] identifier];
    -[SSFileResultBuilder setIsFolder:](v5, "setIsFolder:", [contentType2 isEqualToString:identifier2]);

    v25 = [resultCopy valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setFilePath:v25];
  }

  return v5;
}

- (id)buildButtonItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  openFileProviderItemCommand = [(SSFileResultBuilder *)self openFileProviderItemCommand];
  if (openFileProviderItemCommand && ![(SSFileResultBuilder *)self isFolder])
  {
    [openFileProviderItemCommand setShouldRevealFile:1];
    v5 = objc_opt_new();
    [v5 setCommand:openFileProviderItemCommand];
    v9[0] = v5;
    buildButtonItems = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSFileResultBuilder;
    buildButtonItems = [(SSResultBuilder *)&v8 buildButtonItems];
  }

  v6 = *MEMORY[0x1E69E9840];

  return buildButtonItems;
}

- (id)buildCompactCardSection
{
  v12.receiver = self;
  v12.super_class = SSFileResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v12 buildCompactCardSection];
  v4 = objc_opt_class();
  modificationDate = [(SSFileResultBuilder *)self modificationDate];
  creationDate = [(SSFileResultBuilder *)self creationDate];
  v7 = [v4 stringWithModificationDate:modificationDate creationDate:creationDate];

  if (v7)
  {
    descriptions = [buildCompactCardSection descriptions];
    v9 = [MEMORY[0x1E69CA3A0] textWithString:v7];
    v10 = [descriptions arrayByAddingObject:v9];
    [buildCompactCardSection setDescriptions:v10];
  }

  return buildCompactCardSection;
}

- (id)buildThumbnail
{
  filePath = [(SSResultBuilder *)self filePath];
  if ([filePath length])
  {

    goto LABEL_3;
  }

  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  if (coreSpotlightId)
  {
    v12 = coreSpotlightId;
    fileProviderId = [(SSFileResultBuilder *)self fileProviderId];

    if (fileProviderId)
    {
LABEL_3:
      buildThumbnail = objc_opt_new();
      coreSpotlightId2 = [(SSResultBuilder *)self coreSpotlightId];
      [buildThumbnail setCoreSpotlightIdentifier:coreSpotlightId2];

      fileProviderId2 = [(SSFileResultBuilder *)self fileProviderId];
      [buildThumbnail setFileProviderIdentifier:fileProviderId2];

      filePath2 = [(SSResultBuilder *)self filePath];

      if (filePath2)
      {
        v8 = MEMORY[0x1E695DFF8];
        filePath3 = [(SSResultBuilder *)self filePath];
        v10 = [v8 fileURLWithPath:filePath3 isDirectory:{-[SSFileResultBuilder isFolder](self, "isFolder")}];
        [buildThumbnail setFilePath:v10];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = SSGeneralLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(SSFileResultBuilder *)self buildThumbnail];
  }

  v16.receiver = self;
  v16.super_class = SSFileResultBuilder;
  buildThumbnail = [(SSResultBuilder *)&v16 buildThumbnail];
LABEL_12:

  return buildThumbnail;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  if ([(SSFileResultBuilder *)self isFolder])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  filePath = [(SSResultBuilder *)self filePath];
  if (filePath)
  {
  }

  else
  {
    coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
    if (!coreSpotlightId)
    {
      goto LABEL_4;
    }

    fileProviderId = [(SSFileResultBuilder *)self fileProviderId];

    if (!fileProviderId)
    {
LABEL_3:
      coreSpotlightId = 0;
      goto LABEL_4;
    }
  }

  coreSpotlightId = objc_opt_new();
  coreSpotlightId2 = [(SSResultBuilder *)self coreSpotlightId];
  [coreSpotlightId setCoreSpotlightIdentifier:coreSpotlightId2];

  fileProviderId2 = [(SSFileResultBuilder *)self fileProviderId];
  [coreSpotlightId setFileProviderIdentifier:fileProviderId2];

  filePath2 = [(SSResultBuilder *)self filePath];

  if (filePath2)
  {
    v11 = MEMORY[0x1E69CA320];
    v12 = MEMORY[0x1E695DFF8];
    filePath3 = [(SSResultBuilder *)self filePath];
    v14 = [v12 fileURLWithPath:filePath3 isDirectory:{-[SSFileResultBuilder isFolder](self, "isFolder")}];
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
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([(SSFileResultBuilder *)self isFolder])
  {
    goto LABEL_11;
  }

  uniformType = [(SSResultBuilder *)self uniformType];
  if (uniformType)
  {
  }

  else
  {
    kind = [(SSFileResultBuilder *)self kind];

    if (!kind)
    {
      goto LABEL_9;
    }
  }

  uniformType2 = [(SSResultBuilder *)self uniformType];
  localizedDescription = [uniformType2 localizedDescription];
  if (localizedDescription)
  {
    kind2 = localizedDescription;
  }

  else
  {
    kind2 = [(SSFileResultBuilder *)self kind];

    if (!kind2)
    {
      goto LABEL_9;
    }
  }

  [v3 addObject:kind2];

LABEL_9:
  sizeInBytes = [(SSFileResultBuilder *)self sizeInBytes];

  if (sizeInBytes)
  {
    sizeInBytes2 = [(SSFileResultBuilder *)self sizeInBytes];
    v11 = +[SSNumberFormatManager stringFromByteCount:](SSNumberFormatManager, "stringFromByteCount:", [sizeInBytes2 longLongValue]);
    [v3 addObject:v11];
  }

LABEL_11:
  if ([(SSResultBuilder *)self isForBrowseMode]&& ([(SSResultBuilder *)self lastUsedDate], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    modificationDate2 = +[SSDateFormatManager shortDateTimeFormatter];
    lastUsedDate = [(SSResultBuilder *)self lastUsedDate];
    v15 = [modificationDate2 stringFromDate:lastUsedDate];
  }

  else
  {
    modificationDate = [(SSFileResultBuilder *)self modificationDate];

    if (!modificationDate)
    {
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    modificationDate2 = [(SSFileResultBuilder *)self modificationDate];
    v15 = [v17 stringWithModificationDate:modificationDate2 creationDate:0];
  }

  [v3 addObject:v15];
LABEL_17:
  v18 = objc_opt_new();
  v19 = [v3 componentsJoinedByString:@" · "];
  if ([v19 length])
  {
    v20 = [MEMORY[0x1E69CA0F0] textWithString:v19];
    [v18 addObject:v20];
  }

  if ([v18 count] && (v21 = objc_opt_new(), objc_msgSend(v21, "setFormattedTextPieces:", v18), v21))
  {
    v25[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)buildCommand
{
  openFileProviderItemCommand = [(SSFileResultBuilder *)self openFileProviderItemCommand];
  if (!openFileProviderItemCommand)
  {
    openFileProviderItemCommand = [(SSFileResultBuilder *)self buildPunchoutCommandForFile];
  }

  return openFileProviderItemCommand;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  filePath = [(SSResultBuilder *)self filePath];
  [v3 setFilePath:filePath];

  return v3;
}

- (id)buildSecondaryCommand
{
  if ([(SSFileResultBuilder *)self isFolder]&& ([(SSFileResultBuilder *)self fileProviderId], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = objc_opt_new();
    [v4 setEntityType:6];
    filePath = [(SSResultBuilder *)self filePath];
    [v4 setEntityIdentifier:filePath];

    buildThumbnail = [(SSFileResultBuilder *)self buildThumbnail];
    [v4 setTokenImage:buildThumbnail];

    result = [(SSResultBuilder *)self result];
    v9 = [result valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
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
  fileProviderId = [(SSFileResultBuilder *)self fileProviderId];
  if (fileProviderId)
  {
    coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];

    if (coreSpotlightId)
    {
      fileProviderId = objc_opt_new();
      coreSpotlightId2 = [(SSResultBuilder *)self coreSpotlightId];
      [fileProviderId setCoreSpotlightIdentifier:coreSpotlightId2];

      fileProviderId2 = [(SSFileResultBuilder *)self fileProviderId];
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
  result = [(SSResultBuilder *)self result];
  v3 = [result url];

  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E69CA320] punchoutWithURL:v3];
  [v4 setPunchout:v5];

  return v4;
}

- (id)buildAppTopHitEntityCardSection
{
  v5.receiver = self;
  v5.super_class = SSFileResultBuilder;
  buildAppTopHitEntityCardSection = [(SSResultBuilder *)&v5 buildAppTopHitEntityCardSection];
  thumbnail = [buildAppTopHitEntityCardSection thumbnail];
  [thumbnail setCornerRoundingStyle:1];

  return buildAppTopHitEntityCardSection;
}

@end