@interface SSFileResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)a3;
+ (id)stringWithModificationDate:(id)a3 creationDate:(id)a4;
+ (id)stringWithPageCount:(id)a3;
- (SSFileResultBuilder)initWithResult:(id)a3;
- (id)buildAppTopHitEntityCardSection;
- (id)buildBadgingImageWithThumbnail:(id)a3;
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

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v5 = [v4 resultBundleId];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SSFileResultBuilder;
  LOBYTE(a1) = objc_msgSendSuper2(&v8, sel_supportsResult_, v4);

  if (a1 & 1) != 0 || ([v5 hasPrefix:@"com.apple.CloudDocs"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.FileProvider.LocalStorage"];
  }

  return v6;
}

+ (id)stringWithModificationDate:(id)a3 creationDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
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

+ (id)stringWithPageCount:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PAGES_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
  v8 = [v3 localizedStringWithFormat:v7, v5];

  return v8;
}

- (SSFileResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SSFileResultBuilder;
  v5 = [(SSResultBuilder *)&v27 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setCreationDate:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E6963E88] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setModificationDate:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setLastUsedDate:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E69642B8] withType:objc_opt_class()];
    if (v9)
    {
      [(SSResultBuilder *)v5 setCoreSpotlightId:v9];
    }

    else
    {
      v10 = [v4 identifier];
      [(SSResultBuilder *)v5 setCoreSpotlightId:v10];
    }

    v11 = [v4 fileProviderIdentifier];
    if (v11)
    {
      [(SSFileResultBuilder *)v5 setFileProviderId:v11];
    }

    else
    {
      v12 = [v4 valueForAttribute:*MEMORY[0x1E6964338] withType:objc_opt_class()];
      [(SSFileResultBuilder *)v5 setFileProviderId:v12];
    }

    v13 = [v4 fileProviderDomainIdentifier];
    if (v13)
    {
      [(SSFileResultBuilder *)v5 setFileProviderDomainId:v13];
    }

    else
    {
      v14 = [v4 valueForAttribute:*MEMORY[0x1E6963F88] withType:objc_opt_class()];
      [(SSFileResultBuilder *)v5 setFileProviderDomainId:v14];
    }

    v15 = [v4 valueForAttribute:*MEMORY[0x1E6964528] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setKind:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x1E6964C08] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setThumbnailURL:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setName:v17];

    v18 = isMacOS();
    v19 = MEMORY[0x1E6964590];
    if (!v18)
    {
      v19 = MEMORY[0x1E6964340];
    }

    v20 = [v4 valueForAttribute:*v19 withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setSizeInBytes:v20];

    v21 = [v4 valueForAttribute:*MEMORY[0x1E6964628] withType:objc_opt_class()];
    [(SSFileResultBuilder *)v5 setPageCount:v21];

    v22 = [v4 contentType];
    [(SSFileResultBuilder *)v5 setContentType:v22];

    v23 = [(SSFileResultBuilder *)v5 contentType];
    v24 = [*MEMORY[0x1E6982DC8] identifier];
    -[SSFileResultBuilder setIsFolder:](v5, "setIsFolder:", [v23 isEqualToString:v24]);

    v25 = [v4 valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    [(SSResultBuilder *)v5 setFilePath:v25];
  }

  return v5;
}

- (id)buildButtonItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSFileResultBuilder *)self openFileProviderItemCommand];
  if (v3 && ![(SSFileResultBuilder *)self isFolder])
  {
    [v3 setShouldRevealFile:1];
    v5 = objc_opt_new();
    [v5 setCommand:v3];
    v9[0] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSFileResultBuilder;
    v4 = [(SSResultBuilder *)&v8 buildButtonItems];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildCompactCardSection
{
  v12.receiver = self;
  v12.super_class = SSFileResultBuilder;
  v3 = [(SSResultBuilder *)&v12 buildCompactCardSection];
  v4 = objc_opt_class();
  v5 = [(SSFileResultBuilder *)self modificationDate];
  v6 = [(SSFileResultBuilder *)self creationDate];
  v7 = [v4 stringWithModificationDate:v5 creationDate:v6];

  if (v7)
  {
    v8 = [v3 descriptions];
    v9 = [MEMORY[0x1E69CA3A0] textWithString:v7];
    v10 = [v8 arrayByAddingObject:v9];
    [v3 setDescriptions:v10];
  }

  return v3;
}

- (id)buildThumbnail
{
  v3 = [(SSResultBuilder *)self filePath];
  if ([v3 length])
  {

    goto LABEL_3;
  }

  v11 = [(SSResultBuilder *)self coreSpotlightId];
  if (v11)
  {
    v12 = v11;
    v13 = [(SSFileResultBuilder *)self fileProviderId];

    if (v13)
    {
LABEL_3:
      v4 = objc_opt_new();
      v5 = [(SSResultBuilder *)self coreSpotlightId];
      [v4 setCoreSpotlightIdentifier:v5];

      v6 = [(SSFileResultBuilder *)self fileProviderId];
      [v4 setFileProviderIdentifier:v6];

      v7 = [(SSResultBuilder *)self filePath];

      if (v7)
      {
        v8 = MEMORY[0x1E695DFF8];
        v9 = [(SSResultBuilder *)self filePath];
        v10 = [v8 fileURLWithPath:v9 isDirectory:{-[SSFileResultBuilder isFolder](self, "isFolder")}];
        [v4 setFilePath:v10];
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
  v4 = [(SSResultBuilder *)&v16 buildThumbnail];
LABEL_12:

  return v4;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = a3;
  if ([(SSFileResultBuilder *)self isFolder])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v7 = [(SSResultBuilder *)self filePath];
  if (v7)
  {
  }

  else
  {
    v5 = [(SSResultBuilder *)self coreSpotlightId];
    if (!v5)
    {
      goto LABEL_4;
    }

    v16 = [(SSFileResultBuilder *)self fileProviderId];

    if (!v16)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_4;
    }
  }

  v5 = objc_opt_new();
  v8 = [(SSResultBuilder *)self coreSpotlightId];
  [v5 setCoreSpotlightIdentifier:v8];

  v9 = [(SSFileResultBuilder *)self fileProviderId];
  [v5 setFileProviderIdentifier:v9];

  v10 = [(SSResultBuilder *)self filePath];

  if (v10)
  {
    v11 = MEMORY[0x1E69CA320];
    v12 = MEMORY[0x1E695DFF8];
    v13 = [(SSResultBuilder *)self filePath];
    v14 = [v12 fileURLWithPath:v13 isDirectory:{-[SSFileResultBuilder isFolder](self, "isFolder")}];
    v15 = [v11 punchoutWithURL:v14];
    [v5 setPunchout:v15];
  }

LABEL_4:

  return v5;
}

+ (CGSize)defaultThumbnailSizeIsCompact:(BOOL)a3
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

  v4 = [(SSResultBuilder *)self uniformType];
  if (v4)
  {
  }

  else
  {
    v5 = [(SSFileResultBuilder *)self kind];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v6 = [(SSResultBuilder *)self uniformType];
  v7 = [v6 localizedDescription];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [(SSFileResultBuilder *)self kind];

    if (!v8)
    {
      goto LABEL_9;
    }
  }

  [v3 addObject:v8];

LABEL_9:
  v9 = [(SSFileResultBuilder *)self sizeInBytes];

  if (v9)
  {
    v10 = [(SSFileResultBuilder *)self sizeInBytes];
    v11 = +[SSNumberFormatManager stringFromByteCount:](SSNumberFormatManager, "stringFromByteCount:", [v10 longLongValue]);
    [v3 addObject:v11];
  }

LABEL_11:
  if ([(SSResultBuilder *)self isForBrowseMode]&& ([(SSResultBuilder *)self lastUsedDate], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = +[SSDateFormatManager shortDateTimeFormatter];
    v14 = [(SSResultBuilder *)self lastUsedDate];
    v15 = [v13 stringFromDate:v14];
  }

  else
  {
    v16 = [(SSFileResultBuilder *)self modificationDate];

    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    v13 = [(SSFileResultBuilder *)self modificationDate];
    v15 = [v17 stringWithModificationDate:v13 creationDate:0];
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
  v3 = [(SSFileResultBuilder *)self openFileProviderItemCommand];
  if (!v3)
  {
    v3 = [(SSFileResultBuilder *)self buildPunchoutCommandForFile];
  }

  return v3;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  v4 = [(SSResultBuilder *)self filePath];
  [v3 setFilePath:v4];

  return v3;
}

- (id)buildSecondaryCommand
{
  if ([(SSFileResultBuilder *)self isFolder]&& ([(SSFileResultBuilder *)self fileProviderId], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = objc_opt_new();
    [v4 setEntityType:6];
    v6 = [(SSResultBuilder *)self filePath];
    [v4 setEntityIdentifier:v6];

    v7 = [(SSFileResultBuilder *)self buildThumbnail];
    [v4 setTokenImage:v7];

    v8 = [(SSResultBuilder *)self result];
    v9 = [v8 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
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
  v3 = [(SSFileResultBuilder *)self fileProviderId];
  if (v3)
  {
    v4 = [(SSResultBuilder *)self coreSpotlightId];

    if (v4)
    {
      v3 = objc_opt_new();
      v5 = [(SSResultBuilder *)self coreSpotlightId];
      [v3 setCoreSpotlightIdentifier:v5];

      v6 = [(SSFileResultBuilder *)self fileProviderId];
      [v3 setFileProviderIdentifier:v6];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)buildPunchoutCommandForFile
{
  v2 = [(SSResultBuilder *)self result];
  v3 = [v2 url];

  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E69CA320] punchoutWithURL:v3];
  [v4 setPunchout:v5];

  return v4;
}

- (id)buildAppTopHitEntityCardSection
{
  v5.receiver = self;
  v5.super_class = SSFileResultBuilder;
  v2 = [(SSResultBuilder *)&v5 buildAppTopHitEntityCardSection];
  v3 = [v2 thumbnail];
  [v3 setCornerRoundingStyle:1];

  return v2;
}

@end