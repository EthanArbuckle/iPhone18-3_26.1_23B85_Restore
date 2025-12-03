@interface SPUISApplicationResultBuilder
+ (id)formattedAlternateNamesForBundleId:(id)id withAlternateNames:(id)names;
- (SPUISApplicationResultBuilder)initWithResult:(id)result;
- (id)buildApplicationURL;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCommand;
- (id)buildFillToolParameterCommand;
- (id)buildResult;
- (id)buildSecondaryCommand;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISApplicationResultBuilder

+ (id)formattedAlternateNamesForBundleId:(id)id withAlternateNames:(id)names
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  namesCopy = names;
  if (formattedAlternateNamesForBundleId_withAlternateNames__onceToken != -1)
  {
    +[SPUISApplicationResultBuilder formattedAlternateNamesForBundleId:withAlternateNames:];
  }

  v7 = [formattedAlternateNamesForBundleId_withAlternateNames__cache objectForKey:idCopy];
  if (!v7)
  {
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = namesCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if ([v13 length])
          {
            localizedLowercaseString = [v13 localizedLowercaseString];
            v15 = [localizedLowercaseString isEqualToString:v13];

            if (v15)
            {
              localizedCapitalizedString = [v13 localizedCapitalizedString];
            }

            else
            {
              localizedCapitalizedString = v13;
            }

            v17 = localizedCapitalizedString;
            [v7 addObject:localizedCapitalizedString];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [formattedAlternateNamesForBundleId_withAlternateNames__cache setObject:v7 forKey:idCopy];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __87__SPUISApplicationResultBuilder_formattedAlternateNamesForBundleId_withAlternateNames___block_invoke()
{
  formattedAlternateNamesForBundleId_withAlternateNames__cache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SPUISApplicationResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v23.receiver = self;
  v23.super_class = SPUISApplicationResultBuilder;
  v5 = [(SPUISResultBuilder *)&v23 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy url];
    if (v6 && (v7 = v6, [resultCopy url], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isFileURL"), v8, v7, v9))
    {
      v10 = MEMORY[0x277CCA8D8];
      v11 = [resultCopy url];
      path = [v11 path];
      applicationBundleIdentifier = [v10 bundleWithPath:path];

      bundleIdentifier = [applicationBundleIdentifier bundleIdentifier];
      [(SPUISApplicationResultBuilder *)v5 setBundleId:bundleIdentifier];
    }

    else
    {
      applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
      [(SPUISApplicationResultBuilder *)v5 setBundleId:applicationBundleIdentifier];
    }

    v15 = objc_opt_class();
    bundleId = [(SPUISApplicationResultBuilder *)v5 bundleId];
    v17 = [resultCopy valueForAttribute:*MEMORY[0x277CC2408] withType:objc_opt_class()];
    v18 = [v15 formattedAlternateNamesForBundleId:bundleId withAlternateNames:v17];
    [(SPUISApplicationResultBuilder *)v5 setAlternateNames:v18];

    v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    if (v19)
    {
      [(SPUISApplicationResultBuilder *)v5 setName:v19];
    }

    else
    {
      title = [resultCopy title];
      text = [title text];
      [(SPUISApplicationResultBuilder *)v5 setName:text];
    }
  }

  return v5;
}

- (id)buildResult
{
  v36 = *MEMORY[0x277D85DE8];
  queryContext = [(SPUISResultBuilder *)self queryContext];
  searchString = [queryContext searchString];

  v30 = searchString;
  if ([searchString length])
  {
    name = [(SPUISApplicationResultBuilder *)self name];
    v6 = [name localizedStandardContainsString:searchString];

    if ((v6 & 1) == 0)
    {
      queryContext2 = [(SPUISResultBuilder *)self queryContext];
      evaluator = [queryContext2 evaluator];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = [(SPUISApplicationResultBuilder *)self alternateNames];
      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v32;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            v14 = [v13 localizedStandardContainsString:v30];
            name2 = [(SPUISApplicationResultBuilder *)self name];
            v16 = getHighlightedRichText(v13, evaluator, name2, 0);

            formattedTextPieces = [v16 formattedTextPieces];
            v18 = [formattedTextPieces count];

            matchedAlternateName = [(SPUISApplicationResultBuilder *)self matchedAlternateName];

            if (v14)
            {
              [(SPUISApplicationResultBuilder *)self setHighlightedAlternateName:v16];
              [(SPUISApplicationResultBuilder *)self setMatchedAlternateName:v13];

              goto LABEL_19;
            }

            if (v18 >= 2 && matchedAlternateName == 0)
            {
              [(SPUISApplicationResultBuilder *)self setHighlightedAlternateName:v16];
              [(SPUISApplicationResultBuilder *)self setMatchedAlternateName:v13];
            }
          }

          v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:
    }
  }

  matchedAlternateName2 = [(SPUISApplicationResultBuilder *)self matchedAlternateName];

  if (matchedAlternateName2)
  {
    matchedAlternateName3 = [(SPUISApplicationResultBuilder *)self matchedAlternateName];
    result = [(SPUISResultBuilder *)self result];
    [result setCompletion:matchedAlternateName3];
  }

  if (![(SPUISResultBuilder *)self isTopHit])
  {
    buildInlineCard = [(SPUISResultBuilder *)self buildInlineCard];
    result2 = [(SPUISResultBuilder *)self result];
    [result2 setInlineCard:buildInlineCard];
  }

  result3 = [(SPUISResultBuilder *)self result];

  v27 = *MEMORY[0x277D85DE8];

  return result3;
}

- (id)buildTitle
{
  if ([(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    name2 = objc_opt_new();
    v4 = MEMORY[0x277D4C3A0];
    name = [(SPUISApplicationResultBuilder *)self name];
    v6 = [v4 textWithString:name];

    [v6 setIsEmphasized:1];
    [name2 addObject:v6];
    v7 = [MEMORY[0x277D4C3A0] textWithString:@" — "];
    [name2 addObject:v7];

    v8 = MEMORY[0x277D4C3A0];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"From iPhone" value:0 table:0];
    v11 = [v8 textWithString:v10];
    [name2 addObject:v11];

    v12 = objc_opt_new();
    [v12 setFormattedTextPieces:name2];
  }

  else
  {
    v13 = MEMORY[0x277D4C598];
    name2 = [(SPUISApplicationResultBuilder *)self name];
    v12 = [v13 textWithString:name2];
  }

  return v12;
}

- (id)buildThumbnail
{
  buildApplicationURL = [(SPUISApplicationResultBuilder *)self buildApplicationURL];
  if (buildApplicationURL && ![(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    bundleId = objc_opt_new();
    [bundleId setFilePath:buildApplicationURL];
  }

  else
  {
    bundleId = [(SPUISApplicationResultBuilder *)self bundleId];

    if (bundleId)
    {
      bundleId = objc_opt_new();
      bundleId2 = [(SPUISApplicationResultBuilder *)self bundleId];
      [bundleId setBundleIdentifier:bundleId2];

      if ([(SPUISApplicationResultBuilder *)self isFromOneness])
      {
        [bundleId setIconType:2];
      }
    }
  }

  return bundleId;
}

- (id)buildApplicationURL
{
  appURL = [(SPUISApplicationResultBuilder *)self appURL];
  if (appURL)
  {
    appURL2 = [(SPUISApplicationResultBuilder *)self appURL];
    path = [appURL2 path];
    fileSystemRepresentation = [path fileSystemRepresentation];

    if (fileSystemRepresentation)
    {
      v7 = realpath_DARWIN_EXTSN(fileSystemRepresentation, 0);
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:v7 isDirectory:0 relativeToURL:0];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = appURL;
        }

        v12 = v11;

        free(v8);
        appURL = v12;
      }
    }
  }

  return appURL;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  if ([(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    v3 = objc_opt_new();
    [v3 setSymbolName:@"iphone.gen3"];
    [v3 setIsTemplate:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buildFillToolParameterCommand
{
  v3 = objc_opt_new();
  buildApplicationURL = [(SPUISApplicationResultBuilder *)self buildApplicationURL];
  path = [buildApplicationURL path];
  [v3 setApplicationPath:path];

  bundleId = [(SPUISApplicationResultBuilder *)self bundleId];
  [v3 setBundleIdentifier:bundleId];

  return v3;
}

- (id)buildCommand
{
  if ([(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    buildCommand = objc_opt_new();
    result = [(SPUISResultBuilder *)self result];
    applicationBundleIdentifier = [result applicationBundleIdentifier];
    [buildCommand setApplicationBundleIdentifier:applicationBundleIdentifier];

    [buildCommand setIsOnenessApplication:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISApplicationResultBuilder;
    buildCommand = [(SPUISResultBuilder *)&v7 buildCommand];
  }

  return buildCommand;
}

- (id)buildSecondaryCommand
{
  bundleId = [(SPUISApplicationResultBuilder *)self bundleId];
  if (bundleId && (v4 = bundleId, v5 = [(SPUISApplicationResultBuilder *)self isFromOneness], v4, !v5))
  {
    bundleId2 = [(SPUISApplicationResultBuilder *)self bundleId];
    v9 = +[SPUISICloudDriveUtilities icloudDriveBundleId_objc];
    v10 = [bundleId2 isEqualToString:v9];

    if (v10)
    {
      v6 = [SPUISICloudDriveUtilities searchICloudDriveCommandWithQuery:0];
    }

    else
    {
      v11 = objc_opt_new();
      bundleId3 = [(SPUISApplicationResultBuilder *)self bundleId];
      [v11 setBundleIdentifier:bundleId3];

      v6 = objc_opt_new();
      [v6 setEntityType:5];
      appURL = [(SPUISApplicationResultBuilder *)self appURL];
      path = [appURL path];
      if (path)
      {
        [v6 setEntityIdentifier:path];
      }

      else
      {
        bundleId4 = [(SPUISApplicationResultBuilder *)self bundleId];
        [v6 setEntityIdentifier:bundleId4];
      }

      [v6 setTokenImage:v11];
      name = [(SPUISApplicationResultBuilder *)self name];
      [v6 setTokenString:name];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end