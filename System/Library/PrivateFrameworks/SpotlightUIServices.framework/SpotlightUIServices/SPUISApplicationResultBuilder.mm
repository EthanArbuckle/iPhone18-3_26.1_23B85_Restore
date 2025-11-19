@interface SPUISApplicationResultBuilder
+ (id)formattedAlternateNamesForBundleId:(id)a3 withAlternateNames:(id)a4;
- (SPUISApplicationResultBuilder)initWithResult:(id)a3;
- (id)buildApplicationURL;
- (id)buildBadgingImageWithThumbnail:(id)a3;
- (id)buildCommand;
- (id)buildFillToolParameterCommand;
- (id)buildResult;
- (id)buildSecondaryCommand;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISApplicationResultBuilder

+ (id)formattedAlternateNamesForBundleId:(id)a3 withAlternateNames:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (formattedAlternateNamesForBundleId_withAlternateNames__onceToken != -1)
  {
    +[SPUISApplicationResultBuilder formattedAlternateNamesForBundleId:withAlternateNames:];
  }

  v7 = [formattedAlternateNamesForBundleId_withAlternateNames__cache objectForKey:v5];
  if (!v7)
  {
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
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
            v14 = [v13 localizedLowercaseString];
            v15 = [v14 isEqualToString:v13];

            if (v15)
            {
              v16 = [v13 localizedCapitalizedString];
            }

            else
            {
              v16 = v13;
            }

            v17 = v16;
            [v7 addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [formattedAlternateNamesForBundleId_withAlternateNames__cache setObject:v7 forKey:v5];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __87__SPUISApplicationResultBuilder_formattedAlternateNamesForBundleId_withAlternateNames___block_invoke()
{
  formattedAlternateNamesForBundleId_withAlternateNames__cache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SPUISApplicationResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SPUISApplicationResultBuilder;
  v5 = [(SPUISResultBuilder *)&v23 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 url];
    if (v6 && (v7 = v6, [v4 url], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isFileURL"), v8, v7, v9))
    {
      v10 = MEMORY[0x277CCA8D8];
      v11 = [v4 url];
      v12 = [v11 path];
      v13 = [v10 bundleWithPath:v12];

      v14 = [v13 bundleIdentifier];
      [(SPUISApplicationResultBuilder *)v5 setBundleId:v14];
    }

    else
    {
      v13 = [v4 applicationBundleIdentifier];
      [(SPUISApplicationResultBuilder *)v5 setBundleId:v13];
    }

    v15 = objc_opt_class();
    v16 = [(SPUISApplicationResultBuilder *)v5 bundleId];
    v17 = [v4 valueForAttribute:*MEMORY[0x277CC2408] withType:objc_opt_class()];
    v18 = [v15 formattedAlternateNamesForBundleId:v16 withAlternateNames:v17];
    [(SPUISApplicationResultBuilder *)v5 setAlternateNames:v18];

    v19 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    if (v19)
    {
      [(SPUISApplicationResultBuilder *)v5 setName:v19];
    }

    else
    {
      v20 = [v4 title];
      v21 = [v20 text];
      [(SPUISApplicationResultBuilder *)v5 setName:v21];
    }
  }

  return v5;
}

- (id)buildResult
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self queryContext];
  v4 = [v3 searchString];

  v30 = v4;
  if ([v4 length])
  {
    v5 = [(SPUISApplicationResultBuilder *)self name];
    v6 = [v5 localizedStandardContainsString:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [(SPUISResultBuilder *)self queryContext];
      v8 = [v7 evaluator];

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
            v15 = [(SPUISApplicationResultBuilder *)self name];
            v16 = getHighlightedRichText(v13, v8, v15, 0);

            v17 = [v16 formattedTextPieces];
            v18 = [v17 count];

            v19 = [(SPUISApplicationResultBuilder *)self matchedAlternateName];

            if (v14)
            {
              [(SPUISApplicationResultBuilder *)self setHighlightedAlternateName:v16];
              [(SPUISApplicationResultBuilder *)self setMatchedAlternateName:v13];

              goto LABEL_19;
            }

            if (v18 >= 2 && v19 == 0)
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

  v21 = [(SPUISApplicationResultBuilder *)self matchedAlternateName];

  if (v21)
  {
    v22 = [(SPUISApplicationResultBuilder *)self matchedAlternateName];
    v23 = [(SPUISResultBuilder *)self result];
    [v23 setCompletion:v22];
  }

  if (![(SPUISResultBuilder *)self isTopHit])
  {
    v24 = [(SPUISResultBuilder *)self buildInlineCard];
    v25 = [(SPUISResultBuilder *)self result];
    [v25 setInlineCard:v24];
  }

  v26 = [(SPUISResultBuilder *)self result];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)buildTitle
{
  if ([(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    v3 = objc_opt_new();
    v4 = MEMORY[0x277D4C3A0];
    v5 = [(SPUISApplicationResultBuilder *)self name];
    v6 = [v4 textWithString:v5];

    [v6 setIsEmphasized:1];
    [v3 addObject:v6];
    v7 = [MEMORY[0x277D4C3A0] textWithString:@" — "];
    [v3 addObject:v7];

    v8 = MEMORY[0x277D4C3A0];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"From iPhone" value:0 table:0];
    v11 = [v8 textWithString:v10];
    [v3 addObject:v11];

    v12 = objc_opt_new();
    [v12 setFormattedTextPieces:v3];
  }

  else
  {
    v13 = MEMORY[0x277D4C598];
    v3 = [(SPUISApplicationResultBuilder *)self name];
    v12 = [v13 textWithString:v3];
  }

  return v12;
}

- (id)buildThumbnail
{
  v3 = [(SPUISApplicationResultBuilder *)self buildApplicationURL];
  if (v3 && ![(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    v4 = objc_opt_new();
    [v4 setFilePath:v3];
  }

  else
  {
    v4 = [(SPUISApplicationResultBuilder *)self bundleId];

    if (v4)
    {
      v4 = objc_opt_new();
      v5 = [(SPUISApplicationResultBuilder *)self bundleId];
      [v4 setBundleIdentifier:v5];

      if ([(SPUISApplicationResultBuilder *)self isFromOneness])
      {
        [v4 setIconType:2];
      }
    }
  }

  return v4;
}

- (id)buildApplicationURL
{
  v3 = [(SPUISApplicationResultBuilder *)self appURL];
  if (v3)
  {
    v4 = [(SPUISApplicationResultBuilder *)self appURL];
    v5 = [v4 path];
    v6 = [v5 fileSystemRepresentation];

    if (v6)
    {
      v7 = realpath_DARWIN_EXTSN(v6, 0);
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
          v11 = v3;
        }

        v12 = v11;

        free(v8);
        v3 = v12;
      }
    }
  }

  return v3;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
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
  v4 = [(SPUISApplicationResultBuilder *)self buildApplicationURL];
  v5 = [v4 path];
  [v3 setApplicationPath:v5];

  v6 = [(SPUISApplicationResultBuilder *)self bundleId];
  [v3 setBundleIdentifier:v6];

  return v3;
}

- (id)buildCommand
{
  if ([(SPUISApplicationResultBuilder *)self isFromOneness])
  {
    v3 = objc_opt_new();
    v4 = [(SPUISResultBuilder *)self result];
    v5 = [v4 applicationBundleIdentifier];
    [v3 setApplicationBundleIdentifier:v5];

    [v3 setIsOnenessApplication:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUISApplicationResultBuilder;
    v3 = [(SPUISResultBuilder *)&v7 buildCommand];
  }

  return v3;
}

- (id)buildSecondaryCommand
{
  v3 = [(SPUISApplicationResultBuilder *)self bundleId];
  if (v3 && (v4 = v3, v5 = [(SPUISApplicationResultBuilder *)self isFromOneness], v4, !v5))
  {
    v8 = [(SPUISApplicationResultBuilder *)self bundleId];
    v9 = +[SPUISICloudDriveUtilities icloudDriveBundleId_objc];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v6 = [SPUISICloudDriveUtilities searchICloudDriveCommandWithQuery:0];
    }

    else
    {
      v11 = objc_opt_new();
      v12 = [(SPUISApplicationResultBuilder *)self bundleId];
      [v11 setBundleIdentifier:v12];

      v6 = objc_opt_new();
      [v6 setEntityType:5];
      v13 = [(SPUISApplicationResultBuilder *)self appURL];
      v14 = [v13 path];
      if (v14)
      {
        [v6 setEntityIdentifier:v14];
      }

      else
      {
        v15 = [(SPUISApplicationResultBuilder *)self bundleId];
        [v6 setEntityIdentifier:v15];
      }

      [v6 setTokenImage:v11];
      v16 = [(SPUISApplicationResultBuilder *)self name];
      [v6 setTokenString:v16];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end