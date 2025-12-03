@interface SSFilterResult
+ (BOOL)shouldShowPasteboardFilter;
+ (id)PDF;
+ (id)actions;
+ (id)allFilters;
+ (id)applications;
+ (id)buildFilterStringFromIncludes:(id)includes allowedTypes:(id)types blockedTypes:(id)blockedTypes;
+ (id)buildHighlightedTextFromKeyword:(id)keyword withRange:(_NSRange)range;
+ (id)customFilters;
+ (id)files;
+ (id)folders;
+ (id)kindString;
+ (id)menuItem;
+ (id)pasteboard;
+ (id)sharedLinks;
+ (id)windows;
- (BOOL)isEqual:(id)equal;
- (BOOL)isObject:(id)object sameAsOther:(id)other;
- (BOOL)matchesOnFilterSearchString:(id)string andDisplayHighlightedMatchIfNecessary:(BOOL)necessary;
- (SSFilterResult)initWithBundleId:(id)id appURL:(id)l;
- (SSFilterResult)initWithCoder:(id)coder;
- (SSFilterResult)initWithFilterTitle:(id)title symbolName:(id)name keywords:(id)keywords filterQuery:(id)query enabledDomains:(id)domains;
- (SSFilterResult)initWithFilterTitle:(id)title thumbnailType:(id)type symbolName:(id)name keywords:(id)keywords filterQueries:(id)queries folderScopeURLs:(id)ls enabledDomains:(id)domains searchBarButtonItems:(id)self0 contentTypes:(id)self1 allowedTypes:(id)self2 blockedTypes:(id)self3 parentType:(id)self4 appBundleId:(id)self5 appURL:(id)self6 filterSubtitle:(id)self7;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)buildResult;
- (void)encodeWithCoder:(id)coder;
- (void)setSearchString:(id)string;
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
  metadataDomain = [self metadataDomain];
  v7 = [(SSFilterResult *)v3 initWithFilterTitle:v5 thumbnailType:0 symbolName:@"folder" keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:metadataDomain searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

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
  metadataDomain = [self metadataDomain];
  identifier = [v6 identifier];
  v13[0] = identifier;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(SSFilterResult *)v3 initWithFilterTitle:v5 thumbnailType:v6 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:metadataDomain searchBarButtonItems:0 contentTypes:0 allowedTypes:v9 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

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
  metadataDomain = [self metadataDomain];
  identifier = [v6 identifier];
  v13[0] = identifier;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(SSFilterResult *)v3 initWithFilterTitle:v5 thumbnailType:v6 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:metadataDomain searchBarButtonItems:0 contentTypes:0 allowedTypes:v9 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)allFilters
{
  customFilters = [self customFilters];
  uTTypeFilters = [self UTTypeFilters];
  v5 = [customFilters arrayByAddingObjectsFromArray:uTTypeFilters];

  return v5;
}

+ (BOOL)shouldShowPasteboardFilter
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"SPPasteboardFTEEngaged"])
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults2 arrayForKey:@"EnabledPreferenceRules"];
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

  if ([self shouldShowPasteboardFilter])
  {
    v7 = +[SSFilterResult pasteboard];
    v8 = [v6 arrayByAddingObject:v7];

    v6 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)buildHighlightedTextFromKeyword:(id)keyword withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69CA0F0];
  keywordCopy = keyword;
  v8 = [keywordCopy substringToIndex:location];
  v9 = [v6 textWithString:v8];

  v10 = MEMORY[0x1E69CA0F0];
  v11 = [keywordCopy substringWithRange:{location, length}];
  v12 = [v10 textWithString:v11];

  v13 = MEMORY[0x1E69CA0F0];
  v14 = [keywordCopy substringFromIndex:location + length];

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

- (SSFilterResult)initWithBundleId:(id)id appURL:(id)l
{
  lCopy = l;
  idCopy = id;
  v8 = SSAppNameForBundleId(idCopy);
  v9 = [(SSFilterResult *)self initWithFilterTitle:v8 thumbnailType:0 symbolName:0 keywords:0 filterQueries:0 folderScopeURLs:0 enabledDomains:0 searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:idCopy appURL:lCopy filterSubtitle:0];

  return v9;
}

- (SSFilterResult)initWithFilterTitle:(id)title symbolName:(id)name keywords:(id)keywords filterQuery:(id)query enabledDomains:(id)domains
{
  v22[1] = *MEMORY[0x1E69E9840];
  v22[0] = query;
  v12 = MEMORY[0x1E695DEC8];
  domainsCopy = domains;
  queryCopy = query;
  keywordsCopy = keywords;
  nameCopy = name;
  titleCopy = title;
  v18 = [v12 arrayWithObjects:v22 count:1];

  v19 = [(SSFilterResult *)self initWithFilterTitle:titleCopy thumbnailType:0 symbolName:nameCopy keywords:keywordsCopy filterQueries:v18 folderScopeURLs:0 enabledDomains:domainsCopy searchBarButtonItems:0 contentTypes:0 allowedTypes:0 blockedTypes:0 parentType:0 appBundleId:0 appURL:0 filterSubtitle:0];
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (SSFilterResult)initWithFilterTitle:(id)title thumbnailType:(id)type symbolName:(id)name keywords:(id)keywords filterQueries:(id)queries folderScopeURLs:(id)ls enabledDomains:(id)domains searchBarButtonItems:(id)self0 contentTypes:(id)self1 allowedTypes:(id)self2 blockedTypes:(id)self3 parentType:(id)self4 appBundleId:(id)self5 appURL:(id)self6 filterSubtitle:(id)self7
{
  v62[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  typeCopy = type;
  nameCopy = name;
  keywordsCopy = keywords;
  queriesCopy = queries;
  v24 = typeCopy;
  v25 = queriesCopy;
  lsCopy = ls;
  domainsCopy = domains;
  itemsCopy = items;
  typesCopy = types;
  allowedTypesCopy = allowedTypes;
  blockedTypesCopy = blockedTypes;
  parentTypeCopy = parentType;
  idCopy = id;
  lCopy = l;
  subtitleCopy = subtitle;
  v61.receiver = self;
  v61.super_class = SSFilterResult;
  v33 = [(SFSearchResult_SpotlightExtras *)&v61 init];
  v34 = v33;
  if (!v33)
  {
    goto LABEL_16;
  }

  [(SSFilterResult *)v33 setFilterTitle:titleCopy];
  [(SSFilterResult *)v34 setFilterSubtitle:subtitleCopy];
  v52 = v24;
  [(SSFilterResult *)v34 setThumbnailType:v24];
  [(SSFilterResult *)v34 setSymbolName:nameCopy];
  v51 = idCopy;
  [(SSFilterResult *)v34 setAppBundleId:idCopy];
  [(SSFilterResult *)v34 setAppURL:lCopy];
  [(SSFilterResult *)v34 setKeywords:keywordsCopy];
  v54 = v25;
  [(SSFilterResult *)v34 setFilterQueries:v25];
  [(SSFilterResult *)v34 setSearchBarButtonItems:itemsCopy];
  [(SSFilterResult *)v34 setEnabledDomains:domainsCopy];
  if (!typesCopy)
  {
    [(SSFilterResult *)v34 setContentTypes:?];
    if (allowedTypesCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(SSFilterResult *)v34 setAllowedTypes:0];
    goto LABEL_7;
  }

  v35 = [MEMORY[0x1E695DFD8] setWithArray:?];
  [(SSFilterResult *)v34 setContentTypes:v35];

  if (!allowedTypesCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  v36 = [MEMORY[0x1E695DFD8] setWithArray:allowedTypesCopy];
  [(SSFilterResult *)v34 setAllowedTypes:v36];

LABEL_7:
  v49 = allowedTypesCopy;
  v50 = blockedTypesCopy;
  if (blockedTypesCopy)
  {
    v37 = [MEMORY[0x1E695DFD8] setWithArray:blockedTypesCopy];
    [(SSFilterResult *)v34 setBlockedTypes:v37];
  }

  else
  {
    [(SSFilterResult *)v34 setBlockedTypes:0];
  }

  [(SSFilterResult *)v34 setParentType:parentTypeCopy];
  [(SSFilterResult *)v34 setFolderScopeURLs:lsCopy];
  v38 = objc_opt_new();
  [(SFSearchResult_SpotlightExtras *)v34 setRankingItem:v38];

  v39 = objc_opt_class();
  contentTypes = [(SSFilterResult *)v34 contentTypes];
  allowedTypes = [(SSFilterResult *)v34 allowedTypes];
  blockedTypes = [(SSFilterResult *)v34 blockedTypes];
  v43 = [v39 buildFilterStringFromIncludes:contentTypes allowedTypes:allowedTypes blockedTypes:blockedTypes];

  v25 = v54;
  if ([v43 length])
  {
    filterQueries = [(SSFilterResult *)v34 filterQueries];
    if ([filterQueries count])
    {
      filterQueries2 = [(SSFilterResult *)v34 filterQueries];
      v46 = [filterQueries2 arrayByAddingObject:v43];
      [(SSFilterResult *)v34 setFilterQueries:v46];

      v25 = v54;
    }

    else
    {
      v62[0] = v43;
      filterQueries2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:1];
      [(SSFilterResult *)v34 setFilterQueries:filterQueries2];
    }
  }

  [(SSFilterResult *)v34 buildResult];

  idCopy = v51;
  v24 = v52;
  allowedTypesCopy = v49;
  blockedTypesCopy = v50;
LABEL_16:

  v47 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (id)buildFilterStringFromIncludes:(id)includes allowedTypes:(id)types blockedTypes:(id)blockedTypes
{
  v32 = *MEMORY[0x1E69E9840];
  includesCopy = includes;
  typesCopy = types;
  blockedTypesCopy = blockedTypes;
  string = [MEMORY[0x1E696AD60] string];
  v11 = [typesCopy mutableCopy];
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
  v15 = includesCopy;
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
    objc_msgSend(string, "appendString:", @"(");
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__SSFilterResult_buildFilterStringFromIncludes_allowedTypes_blockedTypes___block_invoke;
    v25[3] = &unk_1E8596008;
    v20 = string;
    v26 = v20;
    [v14 enumerateObjectsUsingBlock:v25];
    [v20 appendString:@""]);
  }

  if (blockedTypesCopy)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__SSFilterResult_buildFilterStringFromIncludes_allowedTypes_blockedTypes___block_invoke_2;
    v23[3] = &unk_1E8596008;
    v24 = string;
    [blockedTypesCopy enumerateObjectsUsingBlock:v23];
  }

  v21 = *MEMORY[0x1E69E9840];

  return string;
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
  appURL = [(SSFilterResult *)self appURL];

  if (appURL)
  {
    symbolName = objc_opt_new();
    appURL2 = [(SSFilterResult *)self appURL];
    [symbolName setFilePath:appURL2];
LABEL_5:

    goto LABEL_6;
  }

  appBundleId = [(SSFilterResult *)self appBundleId];

  if (appBundleId)
  {
    symbolName = objc_opt_new();
    appURL2 = [(SSFilterResult *)self appBundleId];
    [symbolName setBundleIdentifier:appURL2];
    goto LABEL_5;
  }

  symbolName = [(SSFilterResult *)self symbolName];

  if (symbolName)
  {
    symbolName = objc_opt_new();
    [symbolName setIsTemplate:1];
    symbolName2 = [(SSFilterResult *)self symbolName];
    [symbolName setSymbolName:symbolName2];

    [symbolName setSize:{32.0, 32.0}];
  }

LABEL_6:
  filterQueries = [(SSFilterResult *)self filterQueries];
  if ([filterQueries count])
  {

LABEL_9:
    v10 = objc_opt_new();
    [v10 setEntityType:7];
    filterQueries2 = [(SSFilterResult *)self filterQueries];
    [v10 setFilterQueries:filterQueries2];

    [v10 setTokenImage:symbolName];
    filterTitle = [(SSFilterResult *)self filterTitle];
    [v10 setTokenString:filterTitle];

    folderScopeURLs = [(SSFilterResult *)self folderScopeURLs];
    [v10 setFolderScopeURLs:folderScopeURLs];

    searchBarButtonItems = [(SSFilterResult *)self searchBarButtonItems];
    [v10 setSearchBarButtonItems:searchBarButtonItems];

    enabledDomains = [(SSFilterResult *)self enabledDomains];

    if (!enabledDomains)
    {
LABEL_12:
      [(SSFilterResult *)self setCommand:v10];

      goto LABEL_13;
    }

    enabledDomains2 = [(SSFilterResult *)self enabledDomains];
    [v10 setEnabledDomains:enabledDomains2];
LABEL_11:

    goto LABEL_12;
  }

  folderScopeURLs2 = [(SSFilterResult *)self folderScopeURLs];
  v9 = [folderScopeURLs2 count];

  if (v9)
  {
    goto LABEL_9;
  }

  appURL3 = [(SSFilterResult *)self appURL];
  if (appURL3)
  {

LABEL_21:
    v10 = objc_opt_new();
    [v10 setEntityType:5];
    appURL4 = [(SSFilterResult *)self appURL];
    path = [appURL4 path];
    if (path)
    {
      [v10 setEntityIdentifier:path];
    }

    else
    {
      appBundleId2 = [(SSFilterResult *)self appBundleId];
      [v10 setEntityIdentifier:appBundleId2];
    }

    [v10 setTokenImage:symbolName];
    enabledDomains2 = [(SSFilterResult *)self filterTitle];
    [v10 setTokenString:enabledDomains2];
    goto LABEL_11;
  }

  appBundleId3 = [(SSFilterResult *)self appBundleId];

  if (appBundleId3)
  {
    goto LABEL_21;
  }

LABEL_13:
  v17 = objc_opt_new();
  v18 = MEMORY[0x1E69CA3A0];
  filterTitle2 = [(SSFilterResult *)self filterTitle];
  v20 = [v18 textWithString:filterTitle2];
  [v17 setTitle:v20];

  [v17 setThumbnail:symbolName];
  command = [(SSFilterResult *)self command];
  [v17 setCommand:command];

  filterSubtitle = [(SSFilterResult *)self filterSubtitle];
  v23 = [filterSubtitle length];

  if (v23)
  {
    v24 = MEMORY[0x1E69CA3A0];
    filterSubtitle2 = [(SSFilterResult *)self filterSubtitle];
    v26 = [v24 textWithString:filterSubtitle2];
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
  filterTitle3 = [(SSFilterResult *)self filterTitle];
  v32 = [v30 stringWithFormat:@"com.apple.spotlight.filter.%@", filterTitle3];
  [(SSFilterResult *)self setResultBundleId:v32];

  [(SSFilterResult *)self setSectionBundleIdentifier:@"com.apple.spotlight.filter"];
  title = [v17 title];
  [(SSFilterResult *)self setTitle:title];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  command = [(SSFilterResult *)self command];
  [command setSearchString:stringCopy];
}

- (unint64_t)hash
{
  v29 = *MEMORY[0x1E69E9840];
  symbolName = [(SSFilterResult *)self symbolName];
  v4 = [symbolName hash];
  filterTitle = [(SSFilterResult *)self filterTitle];
  v6 = [filterTitle hash] ^ v4;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  filterQueries = [(SSFilterResult *)self filterQueries];
  v8 = [filterQueries countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(filterQueries);
        }

        v6 ^= [*(*(&v23 + 1) + 8 * v11++) hash];
      }

      while (v9 != v11);
      v9 = [filterQueries countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  enabledDomains = [(SSFilterResult *)self enabledDomains];
  v13 = [enabledDomains countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(enabledDomains);
        }

        v6 ^= [*(*(&v19 + 1) + 8 * v16++) hash];
      }

      while (v14 != v16);
      v14 = [enabledDomains countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      symbolName = [(SSFilterResult *)self symbolName];
      symbolName2 = [(SSFilterResult *)v5 symbolName];
      if ([(SSFilterResult *)self isObject:symbolName sameAsOther:symbolName2])
      {
        filterTitle = [(SSFilterResult *)self filterTitle];
        filterTitle2 = [(SSFilterResult *)v5 filterTitle];
        if ([(SSFilterResult *)self isObject:filterTitle sameAsOther:filterTitle2])
        {
          filterQueries = [(SSFilterResult *)self filterQueries];
          filterQueries2 = [(SSFilterResult *)v5 filterQueries];
          if ([(SSFilterResult *)self isObject:filterQueries sameAsOther:filterQueries2])
          {
            enabledDomains = [(SSFilterResult *)self enabledDomains];
            enabledDomains2 = [(SSFilterResult *)v5 enabledDomains];
            v23 = enabledDomains;
            if ([(SSFilterResult *)self isObject:enabledDomains sameAsOther:enabledDomains2])
            {
              appURL = [(SSFilterResult *)self appURL];
              appURL2 = [(SSFilterResult *)v5 appURL];
              v21 = appURL;
              v15 = appURL;
              v16 = appURL2;
              if ([(SSFilterResult *)self isObject:v15 sameAsOther:appURL2])
              {
                appBundleId = [(SSFilterResult *)self appBundleId];
                appBundleId2 = [(SSFilterResult *)v5 appBundleId];
                v17 = [(SSFilterResult *)self isObject:appBundleId sameAsOther:appBundleId2];
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

- (BOOL)isObject:(id)object sameAsOther:(id)other
{
  if (object == other)
  {
    return 1;
  }

  else
  {
    return [object isEqual:other];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithResult:", self}];
  symbolName = [(SSFilterResult *)self symbolName];
  v6 = [symbolName copy];
  [v4 setSymbolName:v6];

  filterTitle = [(SSFilterResult *)self filterTitle];
  v8 = [filterTitle copy];
  [v4 setFilterTitle:v8];

  filterQueries = [(SSFilterResult *)self filterQueries];
  v10 = [filterQueries copy];
  [v4 setFilterQueries:v10];

  enabledDomains = [(SSFilterResult *)self enabledDomains];
  v12 = [enabledDomains copy];
  [v4 setEnabledDomains:v12];

  inlineCard = [(SSFilterResult *)self inlineCard];
  v14 = [inlineCard copy];
  [v4 setInlineCard:v14];

  resultBundleId = [(SSFilterResult *)self resultBundleId];
  v16 = [resultBundleId copy];
  [v4 setResultBundleId:v16];

  sectionBundleIdentifier = [(SSFilterResult *)self sectionBundleIdentifier];
  v18 = [sectionBundleIdentifier copy];
  [v4 setSectionBundleIdentifier:v18];

  title = [(SSFilterResult *)self title];
  v20 = [title copy];
  [v4 setTitle:v20];

  symbolName2 = [(SSFilterResult *)self symbolName];
  v22 = [symbolName2 copy];
  [v4 setSymbolName:v22];

  keywords = [(SSFilterResult *)self keywords];
  v24 = [keywords copy];
  [v4 setKeywords:v24];

  command = [(SSFilterResult *)self command];
  v26 = [command copy];
  [v4 setCommand:v26];

  contentTypes = [(SSFilterResult *)self contentTypes];
  v28 = [contentTypes copy];
  [v4 setContentTypes:v28];

  allowedTypes = [(SSFilterResult *)self allowedTypes];
  v30 = [allowedTypes copy];
  [v4 setAllowedTypes:v30];

  blockedTypes = [(SSFilterResult *)self blockedTypes];
  v32 = [blockedTypes copy];
  [v4 setBlockedTypes:v32];

  parentType = [(SSFilterResult *)self parentType];
  [v4 setParentType:parentType];

  appURL = [(SSFilterResult *)self appURL];
  [v4 setAppURL:appURL];

  appBundleId = [(SSFilterResult *)self appBundleId];
  [v4 setAppBundleId:appBundleId];

  return v4;
}

- (BOOL)matchesOnFilterSearchString:(id)string andDisplayHighlightedMatchIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v37 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  filterTitle = [(SSFilterResult *)self filterTitle];
  v35 = filterTitle;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  keywords = [(SSFilterResult *)self keywords];
  v10 = [v8 arrayByAddingObjectsFromArray:keywords];

  v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v29 = necessaryCopy;
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
        v16 = [v15 localizedStandardRangeOfString:stringCopy];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = v16;
          v20 = v17;
          filterTitle2 = [(SSFilterResult *)self filterTitle];
          v22 = [v15 isEqualToString:filterTitle2];

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
            cardSection = [(SSFilterResult *)self cardSection];
            [cardSection setDescriptions:v25];
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

- (SSFilterResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = SSFilterResult;
  v5 = [(SFSearchResult_SpotlightExtras *)&v38 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterTitle"];
    [(SSFilterResult *)v5 setFilterTitle:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterSubtitle"];
    [(SSFilterResult *)v5 setFilterSubtitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
    [(SSFilterResult *)v5 setSymbolName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thumbnailType"];
    [(SSFilterResult *)v5 setThumbnailType:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleId"];
    [(SSFilterResult *)v5 setAppBundleId:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appURL"];
    [(SSFilterResult *)v5 setAppURL:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"keywords"];
    [(SSFilterResult *)v5 setKeywords:v15];

    v16 = [coderCopy decodeObjectOfClasses:v14 forKey:@"filterQueries"];
    [(SSFilterResult *)v5 setFilterQueries:v16];

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"enabledDomains"];
    [(SSFilterResult *)v5 setEnabledDomains:v20];

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"folderScopeURLs"];
    [(SSFilterResult *)v5 setFolderScopeURLs:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    [(SSFilterResult *)v5 setCommand:v25];

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"searchBarButtonItems"];
    [(SSFilterResult *)v5 setSearchBarButtonItems:v29];

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"contentTypes"];
    [(SSFilterResult *)v5 setContentTypes:v33];

    v34 = [coderCopy decodeObjectOfClasses:v32 forKey:@"allowedTypes"];
    [(SSFilterResult *)v5 setAllowedTypes:v34];

    v35 = [coderCopy decodeObjectOfClasses:v32 forKey:@"blockedTypes"];
    [(SSFilterResult *)v5 setBlockedTypes:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentType"];
    [(SSFilterResult *)v5 setParentType:v36];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = SSFilterResult;
  [(SFSearchResult_SpotlightExtras *)&v37 encodeWithCoder:coderCopy];
  filterTitle = [(SSFilterResult *)self filterTitle];

  if (filterTitle)
  {
    filterTitle2 = [(SSFilterResult *)self filterTitle];
    [coderCopy encodeObject:filterTitle2 forKey:@"filterTitle"];
  }

  filterSubtitle = [(SSFilterResult *)self filterSubtitle];

  if (filterSubtitle)
  {
    filterSubtitle2 = [(SSFilterResult *)self filterSubtitle];
    [coderCopy encodeObject:filterSubtitle2 forKey:@"filterSubtitle"];
  }

  symbolName = [(SSFilterResult *)self symbolName];

  if (symbolName)
  {
    symbolName2 = [(SSFilterResult *)self symbolName];
    [coderCopy encodeObject:symbolName2 forKey:@"symbolName"];
  }

  thumbnailType = [(SSFilterResult *)self thumbnailType];

  if (thumbnailType)
  {
    thumbnailType2 = [(SSFilterResult *)self thumbnailType];
    [coderCopy encodeObject:thumbnailType2 forKey:@"thumbnailType"];
  }

  appBundleId = [(SSFilterResult *)self appBundleId];

  if (appBundleId)
  {
    appBundleId2 = [(SSFilterResult *)self appBundleId];
    [coderCopy encodeObject:appBundleId2 forKey:@"appBundleId"];
  }

  appURL = [(SSFilterResult *)self appURL];

  if (appURL)
  {
    appURL2 = [(SSFilterResult *)self appURL];
    [coderCopy encodeObject:appURL2 forKey:@"appURL"];
  }

  keywords = [(SSFilterResult *)self keywords];

  if (keywords)
  {
    keywords2 = [(SSFilterResult *)self keywords];
    [coderCopy encodeObject:keywords2 forKey:@"keywords"];
  }

  filterQueries = [(SSFilterResult *)self filterQueries];

  if (filterQueries)
  {
    filterQueries2 = [(SSFilterResult *)self filterQueries];
    [coderCopy encodeObject:filterQueries2 forKey:@"filterQueries"];
  }

  enabledDomains = [(SSFilterResult *)self enabledDomains];

  if (enabledDomains)
  {
    enabledDomains2 = [(SSFilterResult *)self enabledDomains];
    [coderCopy encodeObject:enabledDomains2 forKey:@"enabledDomains"];
  }

  folderScopeURLs = [(SSFilterResult *)self folderScopeURLs];

  if (folderScopeURLs)
  {
    folderScopeURLs2 = [(SSFilterResult *)self folderScopeURLs];
    [coderCopy encodeObject:folderScopeURLs2 forKey:@"folderScopeURLs"];
  }

  command = [(SSFilterResult *)self command];

  if (command)
  {
    command2 = [(SSFilterResult *)self command];
    [coderCopy encodeObject:command2 forKey:@"command"];
  }

  searchBarButtonItems = [(SSFilterResult *)self searchBarButtonItems];

  if (searchBarButtonItems)
  {
    searchBarButtonItems2 = [(SSFilterResult *)self searchBarButtonItems];
    [coderCopy encodeObject:searchBarButtonItems2 forKey:@"searchBarButtonItems"];
  }

  contentTypes = [(SSFilterResult *)self contentTypes];

  if (contentTypes)
  {
    contentTypes2 = [(SSFilterResult *)self contentTypes];
    [coderCopy encodeObject:contentTypes2 forKey:@"contentTypes"];
  }

  allowedTypes = [(SSFilterResult *)self allowedTypes];

  if (allowedTypes)
  {
    allowedTypes2 = [(SSFilterResult *)self allowedTypes];
    [coderCopy encodeObject:allowedTypes2 forKey:@"allowedTypes"];
  }

  blockedTypes = [(SSFilterResult *)self blockedTypes];

  if (blockedTypes)
  {
    blockedTypes2 = [(SSFilterResult *)self blockedTypes];
    [coderCopy encodeObject:blockedTypes2 forKey:@"blockedTypes"];
  }

  parentType = [(SSFilterResult *)self parentType];

  if (parentType)
  {
    parentType2 = [(SSFilterResult *)self parentType];
    [coderCopy encodeObject:parentType2 forKey:@"parentType"];
  }
}

@end