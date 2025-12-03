@interface SSFilesPasteboardResultBuilder
+ (BOOL)shouldHideExtensionForURL:(id)l;
+ (BOOL)supportsResult:(id)result;
+ (id)spotlightPasteboardCacheDirectory;
+ (id)typeForURL:(id)l;
- (SSFilesPasteboardResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCopyItems;
- (id)buildDeleteCommand;
- (id)buildPreviewButtonItems;
- (id)buildShareItems;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)pasteboardDescription;
@end

@implementation SSFilesPasteboardResultBuilder

+ (BOOL)supportsResult:(id)result
{
  v4 = *MEMORY[0x1E6963CA0];
  resultCopy = result;
  v6 = [resultCopy valueForAttribute:v4 withType:objc_opt_class()];
  v7 = [v6 count];

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___SSFilesPasteboardResultBuilder;
  v8 = objc_msgSendSuper2(&v10, sel_supportsResult_, resultCopy);

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

+ (id)spotlightPasteboardCacheDirectory
{
  if (spotlightPasteboardCacheDirectory_onceToken != -1)
  {
    +[SSFilesPasteboardResultBuilder spotlightPasteboardCacheDirectory];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory withIntermediateDirectories:1 attributes:0 error:0];
  }

  v3 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;
  v4 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;

  return v3;
}

void __67__SSFilesPasteboardResultBuilder_spotlightPasteboardCacheDirectory__block_invoke()
{
  v2 = [@"~/Library/Metadata/CoreSpotlight" stringByExpandingTildeInPath];
  v0 = [v2 stringByAppendingPathComponent:@"/PasteboardHistory"];
  v1 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;
  spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory = v0;
}

+ (BOOL)shouldHideExtensionForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    if ([self showAllExtensionsPreference])
    {
      bOOLValue = 0;
    }

    else
    {
      v15 = 0;
      v6 = *MEMORY[0x1E695DB60];
      v14 = 0;
      v7 = [lCopy getResourceValue:&v15 forKey:v6 error:&v14];
      v8 = v15;
      v9 = v14;
      v10 = v9;
      if (v7)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v9)
        {
          v12 = SSGeneralLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SSFilesPasteboardResultBuilder *)v10 shouldHideExtensionForURL:v12];
          }
        }

        bOOLValue = 1;
      }

      else
      {
        bOOLValue = [v8 BOOLValue];
      }
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (SSFilesPasteboardResultBuilder)initWithResult:(id)result
{
  v21 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v19.receiver = self;
  v19.super_class = SSFilesPasteboardResultBuilder;
  v5 = [(SSPasteboardResultBuilder *)&v19 initWithResult:resultCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963CA0] withType:{objc_opt_class(), 0}];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v15 + 1) + 8 * v11)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    [(SSFilesPasteboardResultBuilder *)v5 setFileURLs:v6];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)buildTitle
{
  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v4 = [fileURLs count];
  if (v4 == 1)
  {
    firstObject = [fileURLs firstObject];
    v22 = 0;
    v9 = *MEMORY[0x1E695DC10];
    v21 = 0;
    v10 = [firstObject getResourceValue:&v22 forKey:v9 error:&v21];
    v11 = v22;
    v12 = v21;
    v13 = v12;
    if (v10)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (v12)
      {
        v15 = SSGeneralLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(SSFilesPasteboardResultBuilder *)v13 buildTitle];
        }
      }

      lastPathComponent = [firstObject lastPathComponent];
      if ([objc_opt_class() shouldHideExtensionForURL:firstObject])
      {
        stringByDeletingPathExtension = [(__CFString *)lastPathComponent stringByDeletingPathExtension];

        lastPathComponent = stringByDeletingPathExtension;
      }
    }

    else
    {
      lastPathComponent = v11;
    }
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      v23.receiver = self;
      v23.super_class = SSFilesPasteboardResultBuilder;
      buildTitle = [(SSPasteboardResultBuilder *)&v23 buildTitle];
      lastPathComponent = &stru_1F556FE60;
      goto LABEL_18;
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"%lu Items" value:0 table:0];
    lastPathComponent = [v17 localizedStringWithFormat:v19, v5];
  }

  buildTitle = [MEMORY[0x1E69CA3A0] textWithString:lastPathComponent];
LABEL_18:

  return buildTitle;
}

+ (id)typeForURL:(id)l
{
  lCopy = l;
  v10 = 0;
  v4 = *MEMORY[0x1E695DAA0];
  v9 = 0;
  [lCopy getResourceValue:&v10 forKey:v4 error:&v9];
  v5 = v10;
  v6 = v9;
  if (v6)
  {
    v7 = SSGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SSFilesPasteboardResultBuilder *)v6 typeForURL:lCopy, v7];
    }
  }

  return v5;
}

- (id)pasteboardDescription
{
  v67[6] = *MEMORY[0x1E69E9840];
  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v3 = [fileURLs count];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = objc_opt_class();
      firstObject = [fileURLs firstObject];
      v6 = [v4 typeForURL:firstObject];
      localizedDescription = [v6 localizedDescription];
    }

    else
    {
      v45 = fileURLs;
      v10 = *MEMORY[0x1E6982CA8];
      v67[0] = *MEMORY[0x1E6982C80];
      v67[1] = v10;
      v11 = *MEMORY[0x1E6983088];
      v67[2] = *MEMORY[0x1E6982F30];
      v67[3] = v11;
      v12 = *MEMORY[0x1E6982E48];
      v67[4] = *MEMORY[0x1E6982DC8];
      v67[5] = v12;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:6];
      v13 = objc_opt_new();
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = [(SSFilesPasteboardResultBuilder *)self fileURLs];
      v14 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v60;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v60 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = [objc_opt_class() typeForURL:*(*(&v59 + 1) + 8 * i)];
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v19 = v47;
            v20 = [v19 countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v56;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v56 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v55 + 1) + 8 * j);
                  if ([v18 conformsToType:v24])
                  {
                    v25 = [v13 objectForKeyedSubscript:v24];
                    if (v25)
                    {
                      v26 = [v13 objectForKeyedSubscript:v24];
                      v27 = [v26 integerValue] + 1;
                    }

                    else
                    {
                      v27 = 1;
                    }

                    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
                    [v13 setObject:v28 forKeyedSubscript:v24];

                    goto LABEL_23;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v55 objects:v65 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

LABEL_23:
          }

          v15 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
        }

        while (v15);
      }

      v50 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v48 = v47;
      v29 = [v48 countByEnumeratingWithState:&v51 objects:v64 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v52;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(v48);
            }

            v33 = *(*(&v51 + 1) + 8 * k);
            v34 = [v13 objectForKeyedSubscript:v33];
            integerValue = [v34 integerValue];

            if (integerValue >= 1)
            {
              v36 = MEMORY[0x1E696AEC0];
              v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
              v38 = [v37 localizedStringForKey:@"%ld %@" value:0 table:0];
              v39 = [v13 objectForKeyedSubscript:v33];
              integerValue2 = [v39 integerValue];
              localizedDescription2 = [v33 localizedDescription];
              v42 = [v36 localizedStringWithFormat:v38, integerValue2, localizedDescription2];
              [v50 addObject:v42];
            }
          }

          v30 = [v48 countByEnumeratingWithState:&v51 objects:v64 count:16];
        }

        while (v30);
      }

      localizedDescription = [v50 componentsJoinedByString:{@", "}];

      fileURLs = v45;
    }

    v9 = localizedDescription;
    pasteboardDescription = v9;
  }

  else
  {
    v63.receiver = self;
    v63.super_class = SSFilesPasteboardResultBuilder;
    pasteboardDescription = [(SSPasteboardResultBuilder *)&v63 pasteboardDescription];
    v9 = &stru_1F556FE60;
  }

  v43 = *MEMORY[0x1E69E9840];

  return pasteboardDescription;
}

- (id)buildThumbnail
{
  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v4 = [fileURLs count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = objc_opt_new();
      firstObject = [fileURLs firstObject];
      [v5 setFilePath:firstObject];

      goto LABEL_7;
    }

    [(SSPasteboardResultBuilder *)&v8 buildThumbnail:self];
  }

  else
  {
    [(SSPasteboardResultBuilder *)&v9 buildThumbnail:v8.receiver];
  }
  v5 = ;
LABEL_7:

  return v5;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  v4 = objc_opt_new();
  relatedAppBundleIdentifier = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v4 setBundleIdentifier:relatedAppBundleIdentifier];

  return v4;
}

- (id)buildCopyItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v5 = [fileURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(fileURLs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setUrl:v9];
        [v3 addObject:v10];
      }

      v6 = [fileURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildShareItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v5 = [fileURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(fileURLs);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setUrlValue:v9];
        [v3 addObject:v10];
      }

      v6 = [fileURLs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)buildDeleteCommand
{
  v9.receiver = self;
  v9.super_class = SSFilesPasteboardResultBuilder;
  buildDeleteCommand = [(SSPasteboardResultBuilder *)&v9 buildDeleteCommand];
  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SSFilesPasteboardResultBuilder_buildDeleteCommand__block_invoke;
  v8[3] = &unk_1E8595F48;
  v8[4] = self;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
  v6 = [fileURLs filteredArrayUsingPredicate:v5];
  [buildDeleteCommand setFilesToDelete:v6];

  return buildDeleteCommand;
}

uint64_t __52__SSFilesPasteboardResultBuilder_buildDeleteCommand__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() spotlightPasteboardCacheDirectory];
  v6 = [v3 hasPrefix:v5];

  return v6;
}

- (id)buildPreviewButtonItems
{
  v14.receiver = self;
  v14.super_class = SSFilesPasteboardResultBuilder;
  buildPreviewButtonItems = [(SSPasteboardResultBuilder *)&v14 buildPreviewButtonItems];
  v4 = [buildPreviewButtonItems mutableCopy];

  fileURLs = [(SSFilesPasteboardResultBuilder *)self fileURLs];
  v6 = [fileURLs count];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = MEMORY[0x1E69CA320];
    fileURLs2 = [(SSFilesPasteboardResultBuilder *)self fileURLs];
    firstObject = [fileURLs2 firstObject];
    v11 = [v8 punchoutWithURL:firstObject];
    [v7 setPunchout:v11];

    v12 = objc_opt_new();
    [v12 setCommand:v7];
    [v4 addObject:v12];
  }

  return v4;
}

@end