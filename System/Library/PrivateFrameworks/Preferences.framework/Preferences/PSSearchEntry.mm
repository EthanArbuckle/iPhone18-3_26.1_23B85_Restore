@interface PSSearchEntry
+ (id)schemeNameOverride;
+ (void)setSchemeNameOverride:(id)a3;
- (BOOL)_specifier:(id)a3 hasDetailController:(BOOL)a4;
- (BOOL)finishIndexing;
- (BOOL)isRootEntry;
- (BOOL)isRootUrl;
- (NSURL)url;
- (PSSearchEntry)initWithSpecifier:(id)a3 parent:(id)a4;
- (PSSearchEntry)parentEntry;
- (id)_prefsURLIsRoot:(BOOL *)a3;
- (id)ancestorEntries;
- (id)debugDescription;
- (id)description;
- (id)detailTextWithEffectiveTitle:(id *)a3;
- (id)hierarchyDescription;
- (id)recursiveDescriptionForLevel:(unint64_t)a3;
- (id)rootEntry;
- (id)sectionEntry;
- (void)setAction:(id)a3;
@end

@implementation PSSearchEntry

+ (void)setSchemeNameOverride:(id)a3
{
  if (_schemeNameOverride != a3)
  {
    v3 = [a3 copy];
    v4 = _schemeNameOverride;
    _schemeNameOverride = v3;
  }
}

+ (id)schemeNameOverride
{
  if (_schemeNameOverride)
  {
    return _schemeNameOverride;
  }

  else
  {
    return @"prefs";
  }
}

- (PSSearchEntry)initWithSpecifier:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v36.receiver = self;
  v36.super_class = PSSearchEntry;
  v9 = [(PSSearchEntry *)&v36 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_specifier, a3);
    objc_storeWeak(&v10->_parentEntry, v8);
    v11 = objc_opt_new();
    childEntries = v10->_childEntries;
    v10->_childEntries = v11;

    v13 = [v7 propertyForKey:@"bundle"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v8 bundleName];
    }

    bundleName = v10->_bundleName;
    v10->_bundleName = v15;

    v17 = [v7 propertyForKey:@"keywords"];
    v18 = [v17 mutableCopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_opt_new();
    }

    keywords = v10->_keywords;
    v10->_keywords = v20;

    v22 = [v7 name];
    name = v10->_name;
    v10->_name = v22;

    v24 = [v7 identifier];
    identifier = v10->_identifier;
    v10->_identifier = v24;

    v26 = [v7 propertyForKey:@"searchSectionID"];
    sectionIdentifier = v10->_sectionIdentifier;
    v10->_sectionIdentifier = v26;

    v28 = [(PSSpecifier *)v10->_specifier propertyForKey:@"isSection"];
    v10->_isSection = [v28 BOOLValue];

    v29 = MEMORY[0x1E695DFF8];
    v30 = [v7 propertyForKey:@"searchURL"];
    v31 = [v29 URLWithString:v30];
    url = v10->_url;
    v10->_url = v31;

    if (v10->_url)
    {
      v10->_isRootURL = 1;
    }

    v33 = [(PSSpecifier *)v10->_specifier propertyForKey:@"searchDetailPath"];
    additionalDetailTextComponents = v10->_additionalDetailTextComponents;
    v10->_additionalDetailTextComponents = v33;

    v10->_hasDetailController = [(PSSearchEntry *)v10 _specifier:v7 hasDetailController:0];
    v10->_hasListController = [(PSSearchEntry *)v10 _specifier:v7 hasDetailController:1];
  }

  return v10;
}

- (BOOL)finishIndexing
{
  v3 = [(PSSearchEntry *)self hasFinishedIndexing];
  if (!v3)
  {
    specifier = self->_specifier;
    self->_specifier = 0;

    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = 0;
  }

  return !v3;
}

- (BOOL)isRootEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEntry);
  v3 = WeakRetained == 0;

  return v3;
}

- (BOOL)_specifier:(id)a3 hasDetailController:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [v6 properties];
      v9 = [v8 objectForKeyedSubscript:@"AppBundleID"];
      if (v9)
      {
        v10 = v9;
        v11 = [(PSSearchEntry *)self isSectionEntry];

        if (!v11)
        {
          LOBYTE(v7) = 0;
LABEL_25:

          goto LABEL_26;
        }
      }

      v12 = [v8 objectForKeyedSubscript:@"enabled"];
      v13 = v12;
      if (v12 && ![v12 BOOLValue])
      {
        goto LABEL_11;
      }

      if (v4)
      {
        v14 = [v6 detailControllerClass];
        if (v14 == objc_opt_class() || ([v14 isSubclassOfClass:objc_opt_class()] & 1) != 0)
        {
LABEL_11:
          LOBYTE(v7) = 0;
LABEL_24:

          goto LABEL_25;
        }

        v15 = [v8 objectForKeyedSubscript:@"pane"];
        if (v15)
        {
          v16 = v15;
          v7 = [objc_msgSend(v6 "editPaneClass")];

          if (!v7)
          {
            goto LABEL_24;
          }
        }
      }

      v17 = [v8 objectForKeyedSubscript:@"cell"];
      if (v17)
      {
        v18 = [PSTableCell cellTypeFromString:v17];
      }

      else
      {
        v18 = [v6 cellType];
      }

      if ((v18 - 1) > 1)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v19 = [v8 objectForKeyedSubscript:@"detail"];

        LOBYTE(v7) = 1;
        if (!v19 && !v4)
        {
          v20 = [v8 objectForKeyedSubscript:@"pane"];
          LOBYTE(v7) = v20 == 0;
        }
      }

      goto LABEL_24;
    }
  }

  LOBYTE(v7) = 0;
LABEL_26:

  return v7;
}

- (void)setAction:(id)a3
{
  v5 = a3;
  action = self->_action;
  p_action = &self->_action;
  if (action != v5)
  {
    v8 = v5;
    objc_storeStrong(p_action, a3);
    v5 = v8;
  }
}

- (id)sectionEntry
{
  v2 = self;
  if (v2)
  {
    do
    {
      if ([(PSSearchEntry *)v2 isSectionEntry])
      {
        break;
      }

      v3 = [(PSSearchEntry *)v2 parentEntry];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (id)rootEntry
{
  v2 = self;
  v3 = [(PSSearchEntry *)v2 parentEntry];

  if (v3)
  {
    do
    {
      v4 = [(PSSearchEntry *)v2 parentEntry];

      v5 = [(PSSearchEntry *)v4 parentEntry];

      v2 = v4;
    }

    while (v5);
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

- (id)ancestorEntries
{
  v3 = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_parentEntry);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    do
    {
      [v3 insertObject:v5 atIndex:0];
      v6 = [v5 parentEntry];

      v5 = v6;
    }

    while (v6);
  }

  return v3;
}

- (NSURL)url
{
  url = self->_url;
  if (!url)
  {
    v4 = [(PSSearchEntry *)self _prefsURLIsRoot:&self->_isRootURL];
    v5 = self->_url;
    self->_url = v4;

    url = self->_url;
  }

  return url;
}

- (BOOL)isRootUrl
{
  if (!self->_url)
  {
    v3 = [(PSSearchEntry *)self _prefsURLIsRoot:&self->_isRootURL];
    url = self->_url;
    self->_url = v3;
  }

  return self->_isRootURL;
}

- (id)_prefsURLIsRoot:(BOOL *)a3
{
  [(PSSearchEntry *)self hasFinishedIndexing];
  v5 = [(PSSearchEntry *)self ancestorEntries];
  v6 = [v5 arrayByAddingObject:self];

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = +[PSSearchEntry schemeNameOverride];
  if ([v7 hasDetailController])
  {
    v9 = MEMORY[0x1E696AD60];
    v10 = [v7 identifier];
    v11 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];
    v13 = [v9 stringWithFormat:@"%@:root=%@", v8, v12];

    v14 = [v6 count];
    v15 = v14 - 1;
    if (v14 != 1)
    {
      v16 = [v6 subarrayWithRange:{1, v15}];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __33__PSSearchEntry__prefsURLIsRoot___block_invoke;
      v25[3] = &unk_1E71DD8D0;
      v27 = v15;
      v26 = v13;
      [v16 enumerateObjectsUsingBlock:v25];
    }

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v13];
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v18 = MEMORY[0x1E695DFF8];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [v7 identifier];
    v21 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v22 = [v20 stringByAddingPercentEncodingWithAllowedCharacters:v21];
    v23 = [v19 stringWithFormat:@"%@:root=ROOT#%@", v8, v22];
    v17 = [v18 URLWithString:v23];
  }

  return v17;
}

void __33__PSSearchEntry__prefsURLIsRoot___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 identifier];
  v7 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v10 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];

  v8 = [v5 hasDetailController];
  if (a3 || !((*(a1 + 40) > 1uLL) | v8 & 1))
  {
    if (*(a1 + 40) - (v8 ^ 1u) <= a3)
    {
      v9 = @"#%@";
    }

    else
    {
      v9 = @"/%@";
    }
  }

  else
  {
    v9 = @"&path=%@";
  }

  [*(a1 + 32) appendFormat:v9, v10];
}

- (id)detailTextWithEffectiveTitle:(id *)a3
{
  v5 = PSLocaleLanguageDirection();
  v6 = @"→";
  if (v5 == 2)
  {
    v6 = @"←";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", v6];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = v8;
  if (v5 == 2)
  {
    [v8 addObject:@"\u200F"];
  }

  v10 = [(PSSearchEntry *)self ancestorEntries];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__PSSearchEntry_detailTextWithEffectiveTitle___block_invoke;
  v20[3] = &unk_1E71DD8F8;
  v11 = v9;
  v21 = v11;
  [v10 enumerateObjectsWithOptions:0 usingBlock:v20];

  [v11 addObjectsFromArray:self->_additionalDetailTextComponents];
  v12 = [(PSSearchEntry *)self groupName];
  if ([v12 length])
  {
    v13 = PSSearchFormattedString(v12);
    [v11 insertObject:v13 atIndex:{objc_msgSend(v11, "count")}];
  }

  v14 = [(PSSearchEntry *)self name];
  v15 = [v14 length];

  if (v15)
  {
    if (a3)
    {
      *a3 = [(PSSearchEntry *)self name];
    }
  }

  else if ([v11 count])
  {
    v16 = [v11 count];
    v17 = v16 - 1;
    if (v16 != 0x8000000000000000)
    {
      if (a3)
      {
        *a3 = [v11 objectAtIndexedSubscript:v17];
      }

      [v11 removeObjectAtIndex:v17];
    }
  }

  v18 = [v11 componentsJoinedByString:v7];

  return v18;
}

void __46__PSSearchEntry_detailTextWithEffectiveTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  if (![v4 length])
  {
    goto LABEL_10;
  }

  if (![v3 isSectionEntry])
  {
    goto LABEL_8;
  }

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  if (([v5 sf_isInternalInstall] & 1) == 0)
  {

LABEL_8:
LABEL_9:
    v8 = *(a1 + 32);
    v4 = [v3 name];
    v9 = PSSearchFormattedString(v4);
    [v8 addObject:v9];

LABEL_10:
    goto LABEL_11;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PSSearchShowSectionInDetailText", @"com.apple.Preferences", &keyExistsAndHasValidFormat);
  v7 = keyExistsAndHasValidFormat;

  if (!v7 || AppBooleanValue)
  {
    goto LABEL_9;
  }

LABEL_11:
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = PSSearchEntry;
  v3 = [(PSSearchEntry *)&v9 description];
  v4 = [(PSSearchEntry *)self hierarchyDescription];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  v6 = [(PSSearchEntry *)self identifier];
  v7 = [v5 stringByAppendingFormat:@"\nID: %@, bundle: %@, sectionEntry: %d, rootEntry: %d", v6, self->_bundleName, -[PSSearchEntry isSectionEntry](self, "isSectionEntry"), -[PSSearchEntry isRootEntry](self, "isRootEntry")];

  return v7;
}

- (id)recursiveDescriptionForLevel:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD60] string];
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"    "];
      --v6;
    }

    while (v6);
  }

  v7 = MEMORY[0x1E696AD60];
  v8 = [(PSSearchEntry *)self name];
  v9 = [v7 stringWithFormat:@"%@%@", v5, v8];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(PSSearchEntry *)self childEntries];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) recursiveDescriptionForLevel:a3 + 1];
        [v9 appendFormat:@"\n%@", v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)debugDescription
{
  v3 = [(PSSearchEntry *)self description];
  v4 = [(PSSpecifier *)self->_specifier debugDescription];
  v5 = [v3 stringByAppendingFormat:@"\nspecifier: %@", v4];

  return v5;
}

- (id)hierarchyDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(PSSearchEntry *)self ancestorEntries];
  v5 = [v4 arrayByAddingObject:self];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__PSSearchEntry_hierarchyDescription__block_invoke;
  v9[3] = &unk_1E71DD8F8;
  v10 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v9];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

void __37__PSSearchEntry_hierarchyDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = @" > ";
  }

  else
  {
    v4 = &stru_1EFE45030;
  }

  v5 = [a2 name];
  [v3 appendFormat:@"%@%@", v4, v5];
}

- (PSSearchEntry)parentEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEntry);

  return WeakRetained;
}

@end