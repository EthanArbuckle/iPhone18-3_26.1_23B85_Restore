@interface SPUISFilesPasteboardResultBuilder
+ (BOOL)shouldHideExtensionForURL:(id)a3;
+ (BOOL)supportsResult:(id)a3;
+ (id)spotlightPasteboardCacheDirectory;
+ (id)typeForURL:(id)a3;
- (SPUISFilesPasteboardResultBuilder)initWithResult:(id)a3;
- (id)buildBadgingImageWithThumbnail:(id)a3;
- (id)buildCopyItems;
- (id)buildDeleteCommand;
- (id)buildPreviewButtonItems;
- (id)buildShareItems;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)pasteboardDescription;
- (void)buildTitle;
@end

@implementation SPUISFilesPasteboardResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = *MEMORY[0x277CC2498];
  v5 = a3;
  v6 = [v5 valueForAttribute:v4 withType:objc_opt_class()];
  v7 = [v6 count];

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___SPUISFilesPasteboardResultBuilder;
  v8 = objc_msgSendSuper2(&v10, sel_supportsResult_, v5);

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
    +[SPUISFilesPasteboardResultBuilder spotlightPasteboardCacheDirectory];
  }

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v2 fileExistsAtPath:spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory] & 1) == 0)
  {
    [v2 createDirectoryAtPath:spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory withIntermediateDirectories:1 attributes:0 error:0];
  }

  v3 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;
  v4 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;

  return v3;
}

void __70__SPUISFilesPasteboardResultBuilder_spotlightPasteboardCacheDirectory__block_invoke()
{
  v2 = [@"~/Library/Metadata/CoreSpotlight" stringByExpandingTildeInPath];
  v0 = [v2 stringByAppendingPathComponent:@"/PasteboardHistory"];
  v1 = spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory;
  spotlightPasteboardCacheDirectory_spotlightPasteboardCacheDirectory = v0;
}

+ (BOOL)shouldHideExtensionForURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([a1 showAllExtensionsPreference])
    {
      v5 = 0;
    }

    else
    {
      v15 = 0;
      v6 = *MEMORY[0x277CBE850];
      v14 = 0;
      v7 = [v4 getResourceValue:&v15 forKey:v6 error:&v14];
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
          v12 = SPUISGeneralLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(SPUISFilesPasteboardResultBuilder *)v10 shouldHideExtensionForURL:v12];
          }
        }

        v5 = 1;
      }

      else
      {
        v5 = [v8 BOOLValue];
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (SPUISFilesPasteboardResultBuilder)initWithResult:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SPUISFilesPasteboardResultBuilder;
  v5 = [(SPUISPasteboardResultBuilder *)&v19 initWithResult:v4];
  if (v5)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2498] withType:{objc_opt_class(), 0}];
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

          v12 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v15 + 1) + 8 * v11)];
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

    [(SPUISFilesPasteboardResultBuilder *)v5 setFileURLs:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)buildTitle
{
  v3 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v4 = [v3 count];
  if (v4 == 1)
  {
    v8 = [v3 firstObject];
    v22 = 0;
    v9 = *MEMORY[0x277CBE8D0];
    v21 = 0;
    v10 = [v8 getResourceValue:&v22 forKey:v9 error:&v21];
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
        v15 = SPUISGeneralLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(SPUISFilesPasteboardResultBuilder *)v13 buildTitle];
        }
      }

      v7 = [v8 lastPathComponent];
      if ([objc_opt_class() shouldHideExtensionForURL:v8])
      {
        v16 = [(__CFString *)v7 stringByDeletingPathExtension];

        v7 = v16;
      }
    }

    else
    {
      v7 = v11;
    }
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      v23.receiver = self;
      v23.super_class = SPUISFilesPasteboardResultBuilder;
      v6 = [(SPUISPasteboardResultBuilder *)&v23 buildTitle];
      v7 = &stru_287C50EE8;
      goto LABEL_18;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"%lu Items" value:0 table:0];
    v7 = [v17 localizedStringWithFormat:v19, v5];
  }

  v6 = [MEMORY[0x277D4C598] textWithString:v7];
LABEL_18:

  return v6;
}

+ (id)typeForURL:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = *MEMORY[0x277CBE7B8];
  v9 = 0;
  [v3 getResourceValue:&v10 forKey:v4 error:&v9];
  v5 = v10;
  v6 = v9;
  if (v6)
  {
    v7 = SPUISGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SPUISFilesPasteboardResultBuilder *)v6 typeForURL:v3, v7];
    }
  }

  return v5;
}

- (id)pasteboardDescription
{
  v67[6] = *MEMORY[0x277D85DE8];
  v2 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v3 = [v2 count];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = objc_opt_class();
      v5 = [v2 firstObject];
      v6 = [v4 typeForURL:v5];
      v7 = [v6 localizedDescription];
    }

    else
    {
      v45 = v2;
      v10 = *MEMORY[0x277CE1CF0];
      v67[0] = *MEMORY[0x277CE1CE8];
      v67[1] = v10;
      v11 = *MEMORY[0x277CE1EC8];
      v67[2] = *MEMORY[0x277CE1E18];
      v67[3] = v11;
      v12 = *MEMORY[0x277CE1DB8];
      v67[4] = *MEMORY[0x277CE1D80];
      v67[5] = v12;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:6];
      v13 = objc_opt_new();
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
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

                    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
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
            v35 = [v34 integerValue];

            if (v35 >= 1)
            {
              v36 = MEMORY[0x277CCACA8];
              v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v38 = [v37 localizedStringForKey:@"%ld %@" value:0 table:0];
              v39 = [v13 objectForKeyedSubscript:v33];
              v40 = [v39 integerValue];
              v41 = [v33 localizedDescription];
              v42 = [v36 localizedStringWithFormat:v38, v40, v41];
              [v50 addObject:v42];
            }
          }

          v30 = [v48 countByEnumeratingWithState:&v51 objects:v64 count:16];
        }

        while (v30);
      }

      v7 = [v50 componentsJoinedByString:{@", "}];

      v2 = v45;
    }

    v9 = v7;
    v8 = v9;
  }

  else
  {
    v63.receiver = self;
    v63.super_class = SPUISFilesPasteboardResultBuilder;
    v8 = [(SPUISPasteboardResultBuilder *)&v63 pasteboardDescription];
    v9 = &stru_287C50EE8;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)buildThumbnail
{
  v3 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = objc_opt_new();
      v6 = [v3 firstObject];
      [v5 setFilePath:v6];

      goto LABEL_7;
    }

    [(SPUISPasteboardResultBuilder *)&v8 buildThumbnail:self];
  }

  else
  {
    [(SPUISPasteboardResultBuilder *)&v9 buildThumbnail:v8.receiver];
  }
  v5 = ;
LABEL_7:

  return v5;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(SPUISResultBuilder *)self relatedAppBundleIdentifier];
  [v4 setBundleIdentifier:v5];

  return v4;
}

- (id)buildCopyItems
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setUrl:v9];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildShareItems
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setUrlValue:v9];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)buildDeleteCommand
{
  v9.receiver = self;
  v9.super_class = SPUISFilesPasteboardResultBuilder;
  v3 = [(SPUISPasteboardResultBuilder *)&v9 buildDeleteCommand];
  v4 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SPUISFilesPasteboardResultBuilder_buildDeleteCommand__block_invoke;
  v8[3] = &unk_279D0BE18;
  v8[4] = self;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  [v3 setFilesToDelete:v6];

  return v3;
}

uint64_t __55__SPUISFilesPasteboardResultBuilder_buildDeleteCommand__block_invoke(uint64_t a1, void *a2)
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
  v14.super_class = SPUISFilesPasteboardResultBuilder;
  v3 = [(SPUISPasteboardResultBuilder *)&v14 buildPreviewButtonItems];
  v4 = [v3 mutableCopy];

  v5 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = MEMORY[0x277D4C550];
    v9 = [(SPUISFilesPasteboardResultBuilder *)self fileURLs];
    v10 = [v9 firstObject];
    v11 = [v8 punchoutWithURL:v10];
    [v7 setPunchout:v11];

    v12 = objc_opt_new();
    [v12 setCommand:v7];
    [v4 addObject:v12];
  }

  return v4;
}

+ (void)shouldHideExtensionForURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "failed to get hidden extension key for url with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)buildTitle
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B882000, a2, OS_LOG_TYPE_ERROR, "failed to get localized name key for url with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)typeForURL:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 path];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_26B882000, a3, OS_LOG_TYPE_ERROR, "error: %@\ngetting content type for URL: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end