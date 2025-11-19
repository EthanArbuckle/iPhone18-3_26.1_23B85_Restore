@interface SSFilterResult
+ (BOOL)shouldShowPasteboardFilter;
+ (id)PDF;
+ (id)actions;
+ (id)allFilters;
+ (id)applications;
+ (id)buildFilterStringFromIncludes:(id)a3 allowedTypes:(id)a4 blockedTypes:(id)a5;
+ (id)buildHighlightedTextFromKeyword:(id)a3 withRange:(_NSRange)a4;
+ (id)customFilters;
+ (id)files;
+ (id)folders;
+ (id)kindString;
+ (id)menuItem;
+ (id)pasteboard;
+ (id)sharedLinks;
+ (id)windows;
- (BOOL)isEqual:(id)a3;
- (BOOL)isObject:(id)a3 sameAsOther:(id)a4;
- (BOOL)matchesOnFilterSearchString:(id)a3 andDisplayHighlightedMatchIfNecessary:(BOOL)a4;
- (SSFilterResult)initWithBundleId:(id)a3 appURL:(id)a4;
- (SSFilterResult)initWithCoder:(id)a3;
- (SSFilterResult)initWithFilterTitle:(id)a3 symbolName:(id)a4 keywords:(id)a5 filterQuery:(id)a6 enabledDomains:(id)a7;
- (SSFilterResult)initWithFilterTitle:(id)a3 thumbnailType:(id)a4 symbolName:(id)a5 keywords:(id)a6 filterQueries:(id)a7 folderScopeURLs:(id)a8 enabledDomains:(id)a9 searchBarButtonItems:(id)a10 contentTypes:(id)a11 allowedTypes:(id)a12 blockedTypes:(id)a13 parentType:(id)a14 appBundleId:(id)a15 appURL:(id)a16 filterSubtitle:(id)a17;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)buildResult;
- (void)encodeWithCoder:(id)a3;
- (void)setSearchString:(id)a3;
@end

@implementation SSFilterResult

+ (id)kindString
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Kind" value:0 table:0];

  return v3;
}

+ (id)actions
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [SSFilterResult alloc];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Actions" value:0 table:0];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Shortcuts" value:0 table:0];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(SSFilterResult *)v2 initWithFilterTitle:v4 symbolName:@"app.2.stack.3d" keywords:v7 filterQuery:@"_kMDItemBundleID==com.apple.shortcuts || _kMDItemBundleID==com.apple.duetexpertd" enabledDomains:&unk_1F55B71C0];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)applications
{
  v2 = [SSFilterResult alloc];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Applications" value:0 table:0];
  v5 = [(SSFilterResult *)v2 initWithFilterTitle:v4 symbolName:@"appstore" keywords:0 filterQuery:@"kMDItemContentTypeTree = com.apple.application || kMDItemContentTypeTree = com.apple.dashboard-widget || kMDItemContentTypeTree = com.sun.java-archive" enabledDomains:&unk_1F55B71D8];

  return v5;
}

+ (id)files
{
  v3 = [SSFilterResult alloc];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Files" value:0 table:0];
  v6 = [a1 metadataDomain];
  v7 = [(SSFilterResult *)v3 initWithFilterTitle:v5 thumbnailType:0 symbolName:@"folder" keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:v6 searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  return v7;
}

+ (id)menuItem
{
  v2 = [SSFilterResult alloc];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Menu Items" value:0 table:0];
  v5 = [(SSFilterResult *)v2 initWithFilterTitle:v4 symbolName:@"filemenu.and.selection" keywords:0 filterQuery:@"_kMDItemDomainIdentifier=com.apple.duetexpertd.menuitem*" enabledDomains:0];

  return v5;
}

+ (id)pasteboard
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v31[0] = @"com.apple.spotlight.pasteboard";
  v31[1] = @"com.apple.spotlight.pasteboard.continuity";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v2 setDomainIdentifiers:v3];

  v4 = MEMORY[0x1E695DFF8];
  v5 = +[SSFilesPasteboardResultBuilder spotlightPasteboardCacheDirectory];
  v6 = [v4 fileURLWithPath:v5];
  v30 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v27 = v2;
  [v2 setFilesToDelete:v7];

  v8 = objc_opt_new();
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Clear History" value:0 table:0];
  [v8 setTitle:v10];

  [v8 setCommand:v2];
  v26 = [MEMORY[0x1E695DFF8] URLWithString:@"x-apple.systempreferences:com.apple.Spotlight-Settings.extension"];
  v11 = objc_opt_new();
  v12 = [MEMORY[0x1E69CA320] punchoutWithURL:v26];
  [v11 setPunchout:v12];

  v13 = objc_opt_new();
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"Go to Settings" value:0 table:0];
  [v13 setTitle:v15];

  [v13 setCommand:v11];
  v16 = [SSFilterResult alloc];
  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"Clipboard" value:0 table:0];
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"Pasteboard" value:0 table:0];
  v29 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v28[0] = v8;
  v28[1] = v13;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v23 = [(SSFilterResult *)v16 initWithFilterTitle:v18 thumbnailType:0 symbolName:@"document.on.document" keywords:v21 filterQueries:&unk_1F55B71F0 folderScopeURLs:0 enabledDomains:&unk_1F55B7208 searchBarButtonItems:v22 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)sharedLinks
{
  v2 = [SSFilterResult alloc];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Shared Links" value:0 table:0];
  v5 = [(SSFilterResult *)v2 initWithFilterTitle:v4 symbolName:@"link" keywords:0 filterQuery:@"_kMDItemBundleID=com.apple.MobileSMS && kMDItemContentTypeTree!=public.image && kMDItemContentTypeTree!=public.movie && kMDItemURL=*" enabledDomains:0];

  return v5;
}

+ (id)windows
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [SSFilterResult alloc];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Windows" value:0 table:0];
  v9[0] = @"com.apple.window-tab";
  v9[1] = @"com.apple.UIIntelligenceIntents.windowTab";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [(SSFilterResult *)v2 initWithFilterTitle:v4 thumbnailType:0 symbolName:@"macwindow" keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:0 searchBarButtonItems:0 contentTypes:0 allowedTypes:v5 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)PDF
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [SSFilterResult alloc];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PDF" value:0 table:0];
  v6 = *MEMORY[0x1E6982F10];
  v7 = [a1 metadataDomain];
  v8 = [v6 identifier];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(SSFilterResult *)v3 initWithFilterTitle:v5 thumbnailType:v6 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:v7 searchBarButtonItems:0 contentTypes:0 allowedTypes:v9 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)folders
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [SSFilterResult alloc];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Folders" value:0 table:0];
  v6 = *MEMORY[0x1E6982DC8];
  v7 = [a1 metadataDomain];
  v8 = [v6 identifier];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(SSFilterResult *)v3 initWithFilterTitle:v5 thumbnailType:v6 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:v7 searchBarButtonItems:0 contentTypes:0 allowedTypes:v9 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)allFilters
{
  v3 = [a1 customFilters];
  v4 = [a1 UTTypeFilters];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

+ (BOOL)shouldShowPasteboardFilter
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v2 BOOLForKey:@"SPPasteboardFTEEngaged"])
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 arrayForKey:@"EnabledPreferenceRules"];
    v5 = [v4 containsObject:@"System.clipboardHistory"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (id)customFilters
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = +[SSFilterResult menuItem];
  v4 = +[SSFilterResult sharedLinks];
  v11[1] = v4;
  v5 = +[SSFilterResult windows];
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  if ([a1 shouldShowPasteboardFilter])
  {
    v7 = +[SSFilterResult pasteboard];
    v8 = [v6 arrayByAddingObject:v7];

    v6 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)buildHighlightedTextFromKeyword:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69CA0F0];
  v7 = a3;
  v8 = [v7 substringToIndex:location];
  v9 = [v6 textWithString:v8];

  v10 = MEMORY[0x1E69CA0F0];
  v11 = [v7 substringWithRange:{location, length}];
  v12 = [v10 textWithString:v11];

  v13 = MEMORY[0x1E69CA0F0];
  v14 = [v7 substringFromIndex:location + length];

  v15 = [v13 textWithString:v14];

  [v12 setIsEmphasized:1];
  v16 = objc_opt_new();
  v20[0] = v9;
  v20[1] = v12;
  v20[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v16 setFormattedTextPieces:v17];

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

- (SSFilterResult)initWithBundleId:(id)a3 appURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SSAppNameForBundleId(v7);
  v9 = [(SSFilterResult *)self initWithFilterTitle:v8 thumbnailType:0 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:0 searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:v7 appURL:v6 filterSubtitle:0];

  return v9;
}

- (SSFilterResult)initWithFilterTitle:(id)a3 symbolName:(id)a4 keywords:(id)a5 filterQuery:(id)a6 enabledDomains:(id)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v22[0] = a6;
  v12 = MEMORY[0x1E695DEC8];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 arrayWithObjects:v22 count:1];

  v19 = [(SSFilterResult *)self initWithFilterTitle:v17 thumbnailType:0 symbolName:v16 keywords:v15 filterQueries:v18 folderScopeURLs:0 enabledDomains:v13 searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (SSFilterResult)initWithFilterTitle:(id)a3 thumbnailType:(id)a4 symbolName:(id)a5 keywords:(id)a6 filterQueries:(id)a7 folderScopeURLs:(id)a8 enabledDomains:(id)a9 searchBarButtonItems:(id)a10 contentTypes:(id)a11 allowedTypes:(id)a12 blockedTypes:(id)a13 parentType:(id)a14 appBundleId:(id)a15 appURL:(id)a16 filterSubtitle:(id)a17
{
  v62[1] = *MEMORY[0x1E69E9840];
  v60 = a3;
  v22 = a4;
  v56 = a5;
  v55 = a6;
  v23 = a7;
  v24 = v22;
  v25 = v23;
  v59 = a8;
  v26 = a9;
  v27 = a10;
  v58 = a11;
  v28 = a12;
  v29 = a13;
  v57 = a14;
  v30 = a15;
  v31 = a16;
  v32 = a17;
  v61.receiver = self;
  v61.super_class = SSFilterResult;
  v33 = [(SFSearchResult_SpotlightExtras *)&v61 init];
  v34 = v33;
  if (!v33)
  {
    goto LABEL_16;
  }

  [(SSFilterResult *)v33 setFilterTitle:v60];
  [(SSFilterResult *)v34 setFilterSubtitle:v32];
  v52 = v24;
  [(SSFilterResult *)v34 setThumbnailType:v24];
  [(SSFilterResult *)v34 setSymbolName:v56];
  v51 = v30;
  [(SSFilterResult *)v34 setAppBundleId:v30];
  [(SSFilterResult *)v34 setAppURL:v31];
  [(SSFilterResult *)v34 setKeywords:v55];
  v54 = v25;
  [(SSFilterResult *)v34 setFilterQueries:v25];
  [(SSFilterResult *)v34 setSearchBarButtonItems:v27];
  [(SSFilterResult *)v34 setEnabledDomains:v26];
  if (!v58)
  {
    [(SSFilterResult *)v34 setContentTypes:?];
    if (v28)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(SSFilterResult *)v34 setAllowedTypes:0];
    goto LABEL_7;
  }

  v35 = [MEMORY[0x1E695DFD8] setWithArray:?];
  [(SSFilterResult *)v34 setContentTypes:v35];

  if (!v28)
  {
    goto LABEL_6;
  }

LABEL_4:
  v36 = [MEMORY[0x1E695DFD8] setWithArray:v28];
  [(SSFilterResult *)v34 setAllowedTypes:v36];

LABEL_7:
  v49 = v28;
  v50 = v29;
  if (v29)
  {
    v37 = [MEMORY[0x1E695DFD8] setWithArray:v29];
    [(SSFilterResult *)v34 setBlockedTypes:v37];
  }

  else
  {
    [(SSFilterResult *)v34 setBlockedTypes:0];
  }

  [(SSFilterResult *)v34 setParentType:v57];
  [(SSFilterResult *)v34 setFolderScopeURLs:v59];
  v38 = objc_opt_new();
  [(SFSearchResult_SpotlightExtras *)v34 setRankingItem:v38];

  v39 = objc_opt_class();
  v40 = [(SSFilterResult *)v34 contentTypes];
  v41 = [(SSFilterResult *)v34 allowedTypes];
  v42 = [(SSFilterResult *)v34 blockedTypes];
  v43 = [v39 buildFilterStringFromIncludes:v40 allowedTypes:v41 blockedTypes:v42];

  v25 = v54;
  if ([v43 length])
  {
    v44 = [(SSFilterResult *)v34 filterQueries];
    if ([v44 count])
    {
      v45 = [(SSFilterResult *)v34 filterQueries];
      v46 = [v45 arrayByAddingObject:v43];
      [(SSFilterResult *)v34 setFilterQueries:v46];

      v25 = v54;
    }

    else
    {
      v62[0] = v43;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
      [(SSFilterResult *)v34 setFilterQueries:v45];
    }
  }

  [(SSFilterResult *)v34 buildResult];

  v30 = v51;
  v24 = v52;
  v28 = v49;
  v29 = v50;
LABEL_16:

  v47 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (id)buildFilterStringFromIncludes:(id)a3 allowedTypes:(id)a4 blockedTypes:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AD60] string];
  v11 = [v8 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 addObject:*(*(&v27 + 1) + 8 * i)];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    objc_msgSend(v10, "appendString:", @"(");
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__SSFilterResult_buildFilterStringFromIncludes_allowedTypes_blockedTypes___block_invoke;
    v25[3] = &unk_1E8596008;
    v20 = v10;
    v26 = v20;
    [v14 enumerateObjectsUsingBlock:v25];
    [v20 appendString:@""]);
  }

  if (v9)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__SSFilterResult_buildFilterStringFromIncludes_allowedTypes_blockedTypes___block_invoke_2;
    v23[3] = &unk_1E8596008;
    v24 = v10;
    [v9 enumerateObjectsUsingBlock:v23];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

void __74__SSFilterResult_buildFilterStringFromIncludes_allowedTypes_blockedTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length] >= 2)
  {
    [*(a1 + 32) appendString:@" || "];
  }

  [*(a1 + 32) appendFormat:@"kMDItemContentTypeTree==%@", v3];
}

void __74__SSFilterResult_buildFilterStringFromIncludes_allowedTypes_blockedTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:@" && "];
  }

  [*(a1 + 32) appendFormat:@"kMDItemContentTypeTree!=%@", v3];
}

- (void)buildResult
{
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSFilterResult *)self appURL];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(SSFilterResult *)self appURL];
    [v4 setFilePath:v5];
LABEL_5:

    goto LABEL_6;
  }

  v6 = [(SSFilterResult *)self appBundleId];

  if (v6)
  {
    v4 = objc_opt_new();
    v5 = [(SSFilterResult *)self appBundleId];
    [v4 setBundleIdentifier:v5];
    goto LABEL_5;
  }

  v4 = [(SSFilterResult *)self symbolName];

  if (v4)
  {
    v4 = objc_opt_new();
    [v4 setIsTemplate:1];
    v35 = [(SSFilterResult *)self symbolName];
    [v4 setSymbolName:v35];

    [v4 setSize:{32.0, 32.0}];
  }

LABEL_6:
  v7 = [(SSFilterResult *)self filterQueries];
  if ([v7 count])
  {

LABEL_9:
    v10 = objc_opt_new();
    [v10 setEntityType:7];
    v11 = [(SSFilterResult *)self filterQueries];
    [v10 setFilterQueries:v11];

    [v10 setTokenImage:v4];
    v12 = [(SSFilterResult *)self filterTitle];
    [v10 setTokenString:v12];

    v13 = [(SSFilterResult *)self folderScopeURLs];
    [v10 setFolderScopeURLs:v13];

    v14 = [(SSFilterResult *)self searchBarButtonItems];
    [v10 setSearchBarButtonItems:v14];

    v15 = [(SSFilterResult *)self enabledDomains];

    if (!v15)
    {
LABEL_12:
      [(SSFilterResult *)self setCommand:v10];

      goto LABEL_13;
    }

    v16 = [(SSFilterResult *)self enabledDomains];
    [v10 setEnabledDomains:v16];
LABEL_11:

    goto LABEL_12;
  }

  v8 = [(SSFilterResult *)self folderScopeURLs];
  v9 = [v8 count];

  if (v9)
  {
    goto LABEL_9;
  }

  v36 = [(SSFilterResult *)self appURL];
  if (v36)
  {

LABEL_21:
    v10 = objc_opt_new();
    [v10 setEntityType:5];
    v38 = [(SSFilterResult *)self appURL];
    v39 = [v38 path];
    if (v39)
    {
      [v10 setEntityIdentifier:v39];
    }

    else
    {
      v40 = [(SSFilterResult *)self appBundleId];
      [v10 setEntityIdentifier:v40];
    }

    [v10 setTokenImage:v4];
    v16 = [(SSFilterResult *)self filterTitle];
    [v10 setTokenString:v16];
    goto LABEL_11;
  }

  v37 = [(SSFilterResult *)self appBundleId];

  if (v37)
  {
    goto LABEL_21;
  }

LABEL_13:
  v17 = objc_opt_new();
  v18 = MEMORY[0x1E69CA3A0];
  v19 = [(SSFilterResult *)self filterTitle];
  v20 = [v18 textWithString:v19];
  [v17 setTitle:v20];

  [v17 setThumbnail:v4];
  v21 = [(SSFilterResult *)self command];
  [v17 setCommand:v21];

  v22 = [(SSFilterResult *)self filterSubtitle];
  v23 = [v22 length];

  if (v23)
  {
    v24 = MEMORY[0x1E69CA3A0];
    v25 = [(SSFilterResult *)self filterSubtitle];
    v26 = [v24 textWithString:v25];
    v42[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [v17 setDescriptions:v27];
  }

  [(SSFilterResult *)self setCardSection:v17];
  v28 = objc_opt_new();
  v41 = v17;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  [v28 setCardSections:v29];

  [(SSFilterResult *)self setInlineCard:v28];
  v30 = MEMORY[0x1E696AEC0];
  v31 = [(SSFilterResult *)self filterTitle];
  v32 = [v30 stringWithFormat:@"com.apple.spotlight.filter.%@", v31];
  [(SSFilterResult *)self setResultBundleId:v32];

  [(SSFilterResult *)self setSectionBundleIdentifier:@"com.apple.spotlight.filter"];
  v33 = [v17 title];
  [(SSFilterResult *)self setTitle:v33];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setSearchString:(id)a3
{
  v4 = a3;
  v5 = [(SSFilterResult *)self command];
  [v5 setSearchString:v4];
}

- (unint64_t)hash
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(SSFilterResult *)self symbolName];
  v4 = [v3 hash];
  v5 = [(SSFilterResult *)self filterTitle];
  v6 = [v5 hash] ^ v4;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(SSFilterResult *)self filterQueries];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 ^= [*(*(&v23 + 1) + 8 * v11++) hash];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(SSFilterResult *)self enabledDomains];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v6 ^= [*(*(&v19 + 1) + 8 * v16++) hash];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SSFilterResult *)self symbolName];
      v7 = [(SSFilterResult *)v5 symbolName];
      if ([(SSFilterResult *)self isObject:v6 sameAsOther:v7])
      {
        v8 = [(SSFilterResult *)self filterTitle];
        v9 = [(SSFilterResult *)v5 filterTitle];
        if ([(SSFilterResult *)self isObject:v8 sameAsOther:v9])
        {
          v10 = [(SSFilterResult *)self filterQueries];
          v11 = [(SSFilterResult *)v5 filterQueries];
          if ([(SSFilterResult *)self isObject:v10 sameAsOther:v11])
          {
            v12 = [(SSFilterResult *)self enabledDomains];
            v22 = [(SSFilterResult *)v5 enabledDomains];
            v23 = v12;
            if ([(SSFilterResult *)self isObject:v12 sameAsOther:v22])
            {
              v13 = [(SSFilterResult *)self appURL];
              v14 = [(SSFilterResult *)v5 appURL];
              v21 = v13;
              v15 = v13;
              v16 = v14;
              if ([(SSFilterResult *)self isObject:v15 sameAsOther:v14])
              {
                v20 = [(SSFilterResult *)self appBundleId];
                v19 = [(SSFilterResult *)v5 appBundleId];
                v17 = [(SSFilterResult *)self isObject:v20 sameAsOther:v19];
              }

              else
              {
                v17 = 0;
              }
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (BOOL)isObject:(id)a3 sameAsOther:(id)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:a4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithResult:", self}];
  v5 = [(SSFilterResult *)self symbolName];
  v6 = [v5 copy];
  [v4 setSymbolName:v6];

  v7 = [(SSFilterResult *)self filterTitle];
  v8 = [v7 copy];
  [v4 setFilterTitle:v8];

  v9 = [(SSFilterResult *)self filterQueries];
  v10 = [v9 copy];
  [v4 setFilterQueries:v10];

  v11 = [(SSFilterResult *)self enabledDomains];
  v12 = [v11 copy];
  [v4 setEnabledDomains:v12];

  v13 = [(SSFilterResult *)self inlineCard];
  v14 = [v13 copy];
  [v4 setInlineCard:v14];

  v15 = [(SSFilterResult *)self resultBundleId];
  v16 = [v15 copy];
  [v4 setResultBundleId:v16];

  v17 = [(SSFilterResult *)self sectionBundleIdentifier];
  v18 = [v17 copy];
  [v4 setSectionBundleIdentifier:v18];

  v19 = [(SSFilterResult *)self title];
  v20 = [v19 copy];
  [v4 setTitle:v20];

  v21 = [(SSFilterResult *)self symbolName];
  v22 = [v21 copy];
  [v4 setSymbolName:v22];

  v23 = [(SSFilterResult *)self keywords];
  v24 = [v23 copy];
  [v4 setKeywords:v24];

  v25 = [(SSFilterResult *)self command];
  v26 = [v25 copy];
  [v4 setCommand:v26];

  v27 = [(SSFilterResult *)self contentTypes];
  v28 = [v27 copy];
  [v4 setContentTypes:v28];

  v29 = [(SSFilterResult *)self allowedTypes];
  v30 = [v29 copy];
  [v4 setAllowedTypes:v30];

  v31 = [(SSFilterResult *)self blockedTypes];
  v32 = [v31 copy];
  [v4 setBlockedTypes:v32];

  v33 = [(SSFilterResult *)self parentType];
  [v4 setParentType:v33];

  v34 = [(SSFilterResult *)self appURL];
  [v4 setAppURL:v34];

  v35 = [(SSFilterResult *)self appBundleId];
  [v4 setAppBundleId:v35];

  return v4;
}

- (BOOL)matchesOnFilterSearchString:(id)a3 andDisplayHighlightedMatchIfNecessary:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [(SSFilterResult *)self filterTitle];
  v35 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v9 = [(SSFilterResult *)self keywords];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];

  v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v29 = v4;
    v13 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 localizedStandardRangeOfString:v6];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v16;
          v20 = v17;
          v21 = [(SSFilterResult *)self filterTitle];
          v22 = [v15 isEqualToString:v21];

          if (v22)
          {
            v23 = 1;
          }

          else
          {
            v23 = !v29;
          }

          if (v23)
          {
            v18 = 1;
          }

          else
          {
            v24 = [objc_opt_class() buildHighlightedTextFromKeyword:v15 withRange:{v19, v20}];
            v34 = v24;
            v18 = 1;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
            v26 = [(SSFilterResult *)self cardSection];
            [v26 setDescriptions:v25];
          }

          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_16:

  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

- (SSFilterResult)initWithCoder:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SSFilterResult;
  v5 = [(SFSearchResult_SpotlightExtras *)&v38 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterTitle"];
    [(SSFilterResult *)v5 setFilterTitle:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterSubtitle"];
    [(SSFilterResult *)v5 setFilterSubtitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    [(SSFilterResult *)v5 setSymbolName:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailType"];
    [(SSFilterResult *)v5 setThumbnailType:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    [(SSFilterResult *)v5 setAppBundleId:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appURL"];
    [(SSFilterResult *)v5 setAppURL:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"keywords"];
    [(SSFilterResult *)v5 setKeywords:v15];

    v16 = [v4 decodeObjectOfClasses:v14 forKey:@"filterQueries"];
    [(SSFilterResult *)v5 setFilterQueries:v16];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"enabledDomains"];
    [(SSFilterResult *)v5 setEnabledDomains:v20];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"folderScopeURLs"];
    [(SSFilterResult *)v5 setFolderScopeURLs:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    [(SSFilterResult *)v5 setCommand:v25];

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"searchBarButtonItems"];
    [(SSFilterResult *)v5 setSearchBarButtonItems:v29];

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"contentTypes"];
    [(SSFilterResult *)v5 setContentTypes:v33];

    v34 = [v4 decodeObjectOfClasses:v32 forKey:@"allowedTypes"];
    [(SSFilterResult *)v5 setAllowedTypes:v34];

    v35 = [v4 decodeObjectOfClasses:v32 forKey:@"blockedTypes"];
    [(SSFilterResult *)v5 setBlockedTypes:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentType"];
    [(SSFilterResult *)v5 setParentType:v36];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SSFilterResult;
  [(SFSearchResult_SpotlightExtras *)&v37 encodeWithCoder:v4];
  v5 = [(SSFilterResult *)self filterTitle];

  if (v5)
  {
    v6 = [(SSFilterResult *)self filterTitle];
    [v4 encodeObject:v6 forKey:@"filterTitle"];
  }

  v7 = [(SSFilterResult *)self filterSubtitle];

  if (v7)
  {
    v8 = [(SSFilterResult *)self filterSubtitle];
    [v4 encodeObject:v8 forKey:@"filterSubtitle"];
  }

  v9 = [(SSFilterResult *)self symbolName];

  if (v9)
  {
    v10 = [(SSFilterResult *)self symbolName];
    [v4 encodeObject:v10 forKey:@"symbolName"];
  }

  v11 = [(SSFilterResult *)self thumbnailType];

  if (v11)
  {
    v12 = [(SSFilterResult *)self thumbnailType];
    [v4 encodeObject:v12 forKey:@"thumbnailType"];
  }

  v13 = [(SSFilterResult *)self appBundleId];

  if (v13)
  {
    v14 = [(SSFilterResult *)self appBundleId];
    [v4 encodeObject:v14 forKey:@"appBundleId"];
  }

  v15 = [(SSFilterResult *)self appURL];

  if (v15)
  {
    v16 = [(SSFilterResult *)self appURL];
    [v4 encodeObject:v16 forKey:@"appURL"];
  }

  v17 = [(SSFilterResult *)self keywords];

  if (v17)
  {
    v18 = [(SSFilterResult *)self keywords];
    [v4 encodeObject:v18 forKey:@"keywords"];
  }

  v19 = [(SSFilterResult *)self filterQueries];

  if (v19)
  {
    v20 = [(SSFilterResult *)self filterQueries];
    [v4 encodeObject:v20 forKey:@"filterQueries"];
  }

  v21 = [(SSFilterResult *)self enabledDomains];

  if (v21)
  {
    v22 = [(SSFilterResult *)self enabledDomains];
    [v4 encodeObject:v22 forKey:@"enabledDomains"];
  }

  v23 = [(SSFilterResult *)self folderScopeURLs];

  if (v23)
  {
    v24 = [(SSFilterResult *)self folderScopeURLs];
    [v4 encodeObject:v24 forKey:@"folderScopeURLs"];
  }

  v25 = [(SSFilterResult *)self command];

  if (v25)
  {
    v26 = [(SSFilterResult *)self command];
    [v4 encodeObject:v26 forKey:@"command"];
  }

  v27 = [(SSFilterResult *)self searchBarButtonItems];

  if (v27)
  {
    v28 = [(SSFilterResult *)self searchBarButtonItems];
    [v4 encodeObject:v28 forKey:@"searchBarButtonItems"];
  }

  v29 = [(SSFilterResult *)self contentTypes];

  if (v29)
  {
    v30 = [(SSFilterResult *)self contentTypes];
    [v4 encodeObject:v30 forKey:@"contentTypes"];
  }

  v31 = [(SSFilterResult *)self allowedTypes];

  if (v31)
  {
    v32 = [(SSFilterResult *)self allowedTypes];
    [v4 encodeObject:v32 forKey:@"allowedTypes"];
  }

  v33 = [(SSFilterResult *)self blockedTypes];

  if (v33)
  {
    v34 = [(SSFilterResult *)self blockedTypes];
    [v4 encodeObject:v34 forKey:@"blockedTypes"];
  }

  v35 = [(SSFilterResult *)self parentType];

  if (v35)
  {
    v36 = [(SSFilterResult *)self parentType];
    [v4 encodeObject:v36 forKey:@"parentType"];
  }
}

@end