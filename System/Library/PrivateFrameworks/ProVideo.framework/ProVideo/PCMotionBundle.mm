@interface PCMotionBundle
+ (BOOL)bundleContentsAreEqualAtURL:(id)l andURL:(id)rL;
+ (BOOL)isStringNilOrEmpty:(id)empty;
+ (BOOL)isValidBundleExtension:(id)extension;
+ (BOOL)isValidBundleURL:(id)l;
+ (BOOL)isValidBundleUTI:(id)i;
+ (BOOL)isValidProjectFileExtension:(id)extension;
+ (BOOL)isValidProjectFileURL:(id)l;
+ (BOOL)isValidProjectFileUTI:(id)i;
+ (BOOL)removeTempBundleDirectory:(id)directory error:(id *)error;
+ (NSArray)bundleExtensions;
+ (NSArray)bundleUTIs;
+ (NSArray)projectFileExtensions;
+ (NSArray)projectFileUTIs;
+ (NSArray)projectFolderNames;
+ (NSArray)projectTypeNames;
+ (NSArray)projectTypes;
+ (id)bundleExtensionForProjectType:(int64_t)type;
+ (id)bundleURLForProjectFileURL:(id)l;
+ (id)bundleURLInFileURL:(id)l;
+ (id)bundleUTIForProjectType:(int64_t)type;
+ (id)compositionProjectFileExtensionForProjectType:(int64_t)type;
+ (id)compositionProjectFileUTIForProjectType:(int64_t)type;
+ (id)createTempBundleByCopyingBundleAtURL:(id)l error:(id *)error;
+ (id)createTempBundleWithProjectType:(int64_t)type error:(id *)error;
+ (id)folderNameForProjectType:(int64_t)type;
+ (id)infoDictionaryAtURL:(id)l;
+ (id)infoDictionaryWithBundleVersion:(unint64_t)version identifier:(id)identifier version:(id)a5 projectFilePath:(id)path supportsFCPiPad:(BOOL)pad name:(id)name category:(id)category theme:(id)self0 additionalEntries:(id)self1;
+ (id)infoDictionaryWithDefaults:(id)defaults andOverrides:(id)overrides;
+ (id)nilOrNonEmptyString:(id)string;
+ (id)nilOrNonEmptyString:(id)string withFallback1:(id)fallback1 fallback2:(id)fallback2;
+ (id)nilOrNonEmptyString:(id)string withFallback:(id)fallback;
+ (id)projectFileExtensionForProjectType:(int64_t)type;
+ (id)projectFileUTIForProjectType:(int64_t)type;
+ (id)projectTypeNameForProjectType:(int64_t)type;
+ (id)urlForLocalizedInfoStringsInBundleURL:(id)l localization:(id)localization;
+ (id)urlForLocalizedResourcesInBundleURL:(id)l localization:(id)localization;
+ (int64_t)compositionTypeForProjectFileExtension:(id)extension;
+ (int64_t)compositionTypeForProjectFileUTI:(id)i;
+ (int64_t)compositionTypeForProjectType:(int64_t)type;
+ (int64_t)projectTypeForBundleExtension:(id)extension;
+ (int64_t)projectTypeForBundleUTI:(id)i;
+ (int64_t)projectTypeForProjectFileExtension:(id)extension;
+ (int64_t)projectTypeForProjectFileUTI:(id)i;
+ (int64_t)templateTypeForProjectType:(int64_t)type;
- (BOOL)isCopyProtected;
- (BOOL)supportsFCPiPad;
- (NSArray)localizations;
- (NSArray)preferredLocalizations;
- (NSArray)versionComponents;
- (NSDictionary)consolidatedLocalizedInfoDictionary;
- (NSDictionary)infoDictionary;
- (NSDictionary)localizedInfoDictionary;
- (NSMutableDictionary)localizedInfoDictionaries;
- (NSNumber)templateFlags;
- (NSString)category;
- (NSString)description;
- (NSString)identifier;
- (NSString)localizedCategory;
- (NSString)localizedName;
- (NSString)localizedTheme;
- (NSString)localizedVersion;
- (NSString)name;
- (NSString)projectFilePath;
- (NSString)projectTypeFolderName;
- (NSString)projectTypeName;
- (NSString)relativeInstallationPath;
- (NSString)theme;
- (NSString)version;
- (NSURL)projectFileURL;
- (PCMotionBundle)initWithURL:(id)l;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory;
- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory localization:(id)localization;
- (id)URLsForResourcesWithExtension:(id)extension subdirectory:(id)subdirectory;
- (id)URLsForResourcesWithExtension:(id)extension subdirectory:(id)subdirectory localization:(id)localization;
- (id)localizedAttributedStringForKey:(id)key value:(id)value table:(id)table;
- (id)localizedAttributedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization;
- (id)localizedInfoDictionaryForLocalization:(id)localization;
- (id)localizedInfoDictionaryWithDefaults:(id)defaults;
- (id)localizedInfoStringsForLocalization:(id)localization;
- (id)localizedParameterForKey:(id)key;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization found:(BOOL *)found;
- (id)nameForLocalization:(id)localization;
- (id)objectForInfoDictionaryKey:(id)key localization:(id)localization;
- (id)versionForComponentAtIndex:(unint64_t)index;
- (id)versionForLocalization:(id)localization;
- (int64_t)projectType;
- (unint64_t)bundleVersion;
- (unint64_t)majorVersion;
- (unint64_t)minorVersion;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
@end

@implementation PCMotionBundle

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCMotionBundle;
  [(PCMotionBundle *)&v3 dealloc];
}

- (PCMotionBundle)initWithURL:(id)l
{
  v6.receiver = self;
  v6.super_class = PCMotionBundle;
  v4 = [(PCMotionBundle *)&v6 init];
  if (v4)
  {
    v4->_bundleURL = [l copy];
  }

  return v4;
}

- (NSDictionary)infoDictionary
{
  result = self->_infoDictionary;
  if (!result)
  {
    result = [PCMotionBundle infoDictionaryAtURL:[PCMotionBundle urlForInfoDictionaryInBundleURL:self->_bundleURL]];
    self->_infoDictionary = result;
  }

  return result;
}

- (NSDictionary)localizedInfoDictionary
{
  v15 = *MEMORY[0x277D85DE8];
  result = self->_localizedInfoDictionary;
  if (!result)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    preferredLocalizations = [(PCMotionBundle *)self preferredLocalizations];
    v5 = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(preferredLocalizations);
        }

        v9 = [(PCMotionBundle *)self localizedInfoStringsForLocalization:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      result = [PCMotionBundle infoDictionaryWithDefaults:[(PCMotionBundle *)self infoDictionary] andOverrides:v9];
      self->_localizedInfoDictionary = result;
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_10:
      result = self->_localizedInfoDictionary;
      if (result)
      {
        return result;
      }
    }

    result = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] copy];
    self->_localizedInfoDictionary = result;
  }

  return result;
}

- (NSArray)preferredLocalizations
{
  result = self->_preferredLocalizations;
  if (!result)
  {
    localizations = [(PCMotionBundle *)self localizations];
    result = [objc_msgSend(MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:{localizations), "copy"}];
    self->_preferredLocalizations = result;
  }

  return result;
}

- (NSArray)localizations
{
  v18 = *MEMORY[0x277D85DE8];
  result = self->_localizations;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [PCMotionBundle urlForResourcesInBundleURL:self->_bundleURL];
    v6 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v6)
    {
      v7 = v6;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v13 + 1) + 8 * i);
            if ([objc_msgSend(v12 "pathExtension")])
            {
              [v4 addObject:{objc_msgSend(objc_msgSend(v12, "lastPathComponent"), "stringByDeletingPathExtension")}];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    self->_localizations = [v4 copy];

    return self->_localizations;
  }

  return result;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  preferredLocalizations = [(PCMotionBundle *)self preferredLocalizations];
  v10 = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(preferredLocalizations);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v17 = 0;
      result = [(PCMotionBundle *)self localizedStringForKey:key value:value table:table localization:v15 found:&v17];
      if (v17)
      {
        break;
      }

      if (!v12)
      {
        v12 = result;
      }

      if (v11 == ++v14)
      {
        v11 = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_13:
    if (v12)
    {
      return v12;
    }

    else
    {
      return &stru_2872E16E0;
    }
  }

  return result;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization found:(BOOL *)found
{
  *found = 0;
  if (key)
  {
    if (table)
    {
      tableCopy = table;
    }

    else
    {
      tableCopy = @"Localizable";
    }

    v11 = [(PCMotionBundle *)self URLForResource:tableCopy withExtension:@"strings" subdirectory:0 localization:localization];
    if (v11 && (v12 = +[PCMotionBundle infoDictionaryAtURL:](PCMotionBundle, "infoDictionaryAtURL:", v11)) != 0 && (result = [v12 objectForKey:key]) != 0)
    {
      *found = 1;
    }

    else if ([PCMotionBundle isStringNilOrEmpty:value])
    {
      return key;
    }

    else
    {
      return value;
    }
  }

  else if (value)
  {
    return value;
  }

  else
  {
    return &stru_2872E16E0;
  }

  return result;
}

- (id)localizedAttributedStringForKey:(id)key value:(id)value table:(id)table
{
  v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2872E16E0];

  return v5;
}

- (id)localizedAttributedStringForKey:(id)key value:(id)value table:(id)table localization:(id)localization
{
  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2872E16E0];

  return v6;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  preferredLocalizations = [(PCMotionBundle *)self preferredLocalizations];
  result = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v11 = result;
    v12 = *v15;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v15 != v12)
      {
        objc_enumerationMutation(preferredLocalizations);
      }

      result = [(PCMotionBundle *)self URLForResource:resource withExtension:extension subdirectory:subdirectory localization:*(*(&v14 + 1) + 8 * v13)];
      if (result)
      {
        break;
      }

      if (v11 == ++v13)
      {
        result = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v14 objects:v18 count:16];
        v11 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)URLForResource:(id)resource withExtension:(id)extension subdirectory:(id)subdirectory localization:(id)localization
{
  v11 = [PCMotionBundle urlForResourcesInBundleURL:self->_bundleURL];
  v12 = v11;
  if (subdirectory)
  {
    v12 = [v11 URLByAppendingPathComponent:subdirectory];
  }

  if (extension)
  {
    resource = [resource stringByAppendingPathExtension:extension];
  }

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:resource relativeToURL:v12];
  if (([v13 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v14 = [PCMotionBundle urlForLocalizedResourcesInBundleURL:self->_bundleURL localization:localization];
    v15 = v14;
    if (subdirectory)
    {
      v15 = [v14 URLByAppendingPathComponent:subdirectory];
    }

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:resource relativeToURL:v15];
    if (([v13 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v16 = [PCMotionBundle urlForLocalizableResourcesInBundleURL:self->_bundleURL];
      v17 = v16;
      if (subdirectory)
      {
        v17 = [v16 URLByAppendingPathComponent:subdirectory];
      }

      v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:resource relativeToURL:v17];
      if ([v18 checkResourceIsReachableAndReturnError:0])
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }
  }

  return v13;
}

- (id)URLsForResourcesWithExtension:(id)extension subdirectory:(id)subdirectory
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  preferredLocalizations = [(PCMotionBundle *)self preferredLocalizations];
  v9 = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(preferredLocalizations);
        }

        v13 = [(PCMotionBundle *)self URLsForResourcesWithExtension:extension subdirectory:subdirectory localization:*(*(&v15 + 1) + 8 * v12)];
        if (v13)
        {
          [array addObjectsFromArray:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)preferredLocalizations countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)URLsForResourcesWithExtension:(id)extension subdirectory:(id)subdirectory localization:(id)localization
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v9 = [PCMotionBundle urlForResourcesInBundleURL:self->_bundleURL];
  v10 = v9;
  if (subdirectory)
  {
    v10 = [v9 URLByAppendingPathComponent:subdirectory];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:0];
  if (v12)
  {
    v13 = v12;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if ([objc_msgSend(v18 "pathExtension")])
          {
            [array addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }
  }

  v19 = [PCMotionBundle urlForLocalizedResourcesInBundleURL:self->_bundleURL localization:localization];
  v20 = v19;
  if (subdirectory)
  {
    v20 = [v19 URLByAppendingPathComponent:subdirectory];
  }

  v21 = [defaultManager contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:0];
  if (v21)
  {
    v22 = v21;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v31;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v31 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v30 + 1) + 8 * j);
          if ([objc_msgSend(v27 "pathExtension")])
          {
            [array addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }
  }

  return array;
}

+ (NSArray)projectTypes
{
  if (projectTypes_onceToken != -1)
  {
    +[PCMotionBundle projectTypes];
  }

  return projectTypes_projectTypes;
}

void *__30__PCMotionBundle_projectTypes__block_invoke()
{
  result = &unk_28732D898;
  projectTypes_projectTypes = result;
  return result;
}

+ (NSArray)projectTypeNames
{
  if (projectTypeNames_onceToken != -1)
  {
    +[PCMotionBundle projectTypeNames];
  }

  return projectTypeNames_typeNames;
}

void *__34__PCMotionBundle_projectTypeNames__block_invoke()
{
  result = &unk_28732D8B0;
  projectTypeNames_typeNames = result;
  return result;
}

+ (NSArray)projectFolderNames
{
  if (projectFolderNames_onceToken != -1)
  {
    +[PCMotionBundle projectFolderNames];
  }

  return projectFolderNames_folderNames;
}

void *__36__PCMotionBundle_projectFolderNames__block_invoke()
{
  result = &unk_28732D8C8;
  projectFolderNames_folderNames = result;
  return result;
}

+ (NSArray)bundleExtensions
{
  if (bundleExtensions_onceToken != -1)
  {
    +[PCMotionBundle bundleExtensions];
  }

  return bundleExtensions_pathExtensions;
}

void *__34__PCMotionBundle_bundleExtensions__block_invoke()
{
  result = &unk_28732D8E0;
  bundleExtensions_pathExtensions = result;
  return result;
}

+ (NSArray)projectFileExtensions
{
  if (projectFileExtensions_onceToken != -1)
  {
    +[PCMotionBundle projectFileExtensions];
  }

  return projectFileExtensions_pathExtensions;
}

void *__39__PCMotionBundle_projectFileExtensions__block_invoke()
{
  result = &unk_28732D8F8;
  projectFileExtensions_pathExtensions = result;
  return result;
}

+ (NSArray)bundleUTIs
{
  if (bundleUTIs_onceToken != -1)
  {
    +[PCMotionBundle bundleUTIs];
  }

  return bundleUTIs_bundleUTIs;
}

void *__28__PCMotionBundle_bundleUTIs__block_invoke()
{
  result = &unk_28732D910;
  bundleUTIs_bundleUTIs = result;
  return result;
}

+ (NSArray)projectFileUTIs
{
  if (projectFileUTIs_onceToken != -1)
  {
    +[PCMotionBundle projectFileUTIs];
  }

  return projectFileUTIs_projectFileUTIs;
}

void *__33__PCMotionBundle_projectFileUTIs__block_invoke()
{
  result = &unk_28732D928;
  projectFileUTIs_projectFileUTIs = result;
  return result;
}

+ (BOOL)isValidBundleURL:(id)l
{
  pathExtension = [l pathExtension];
  if (pathExtension)
  {
    LODWORD(pathExtension) = [self isValidBundleExtension:pathExtension];
    if (pathExtension)
    {
      v7 = 0;
      LODWORD(pathExtension) = [l getResourceValue:&v7 forKey:*MEMORY[0x277CBE868] error:0];
      if (pathExtension)
      {
        LOBYTE(pathExtension) = [v7 BOOLValue];
      }
    }
  }

  return pathExtension;
}

+ (BOOL)isValidBundleExtension:(id)extension
{
  bundleExtensions = [self bundleExtensions];
  lowercaseString = [extension lowercaseString];

  return [bundleExtensions containsObject:lowercaseString];
}

+ (BOOL)isValidBundleUTI:(id)i
{
  bundleUTIs = [self bundleUTIs];
  lowercaseString = [i lowercaseString];

  return [bundleUTIs containsObject:lowercaseString];
}

+ (BOOL)isValidProjectFileURL:(id)l
{
  v7 = 0;
  LODWORD(pathExtension) = [l getResourceValue:&v7 forKey:*MEMORY[0x277CBE8A8] error:0];
  if (pathExtension)
  {
    LODWORD(pathExtension) = [v7 BOOLValue];
    if (pathExtension)
    {
      pathExtension = [l pathExtension];
      if (pathExtension)
      {
        LOBYTE(pathExtension) = [self isValidProjectFileExtension:pathExtension];
      }
    }
  }

  return pathExtension;
}

+ (BOOL)isValidProjectFileExtension:(id)extension
{
  projectFileExtensions = [self projectFileExtensions];
  lowercaseString = [extension lowercaseString];

  return [projectFileExtensions containsObject:lowercaseString];
}

+ (BOOL)isValidProjectFileUTI:(id)i
{
  projectFileUTIs = [self projectFileUTIs];
  lowercaseString = [i lowercaseString];

  return [projectFileUTIs containsObject:lowercaseString];
}

+ (BOOL)bundleContentsAreEqualAtURL:(id)l andURL:(id)rL
{
  pathExtension = [l pathExtension];
  pathExtension2 = [rL pathExtension];
  if (![self isValidBundleExtension:pathExtension] || objc_msgSend(pathExtension, "caseInsensitiveCompare:", pathExtension2))
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [l path];
  path2 = [rL path];

  return [defaultManager contentsEqualAtPath:path andPath:path2];
}

+ (id)bundleURLForProjectFileURL:(id)l
{
  pathComponents = [l pathComponents];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  lCopy = l;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v9[2] = __45__PCMotionBundle_bundleURLForProjectFileURL___block_invoke;
  v9[3] = &unk_279AA8398;
  v9[4] = self;
  v9[5] = &v14;
  v9[6] = &v10;
  [pathComponents enumerateObjectsWithOptions:2 usingBlock:v9];
  v6 = v15[5];
  if (*(v11 + 24) == 1)
  {
    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __45__PCMotionBundle_bundleURLForProjectFileURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(*(a1 + 40) + 8) + 40) URLByDeletingLastPathComponent];

  *(*(*(a1 + 40) + 8) + 40) = v6;
  result = [*(a1 + 32) isValidBundleURL:*(*(*(a1 + 40) + 8) + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)bundleURLInFileURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  path = [l path];
  bundleExtensions = [self bundleExtensions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [bundleExtensions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(bundleExtensions);
        }

        v10 = [path rangeOfString:*(*(&v13 + 1) + 8 * v9) options:1];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [path substringToIndex:v10 + v11];
          return [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:1];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [bundleExtensions countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

+ (id)projectTypeNameForProjectType:(int64_t)type
{
  projectTypeNames = [self projectTypeNames];
  if ([projectTypeNames count] <= type)
  {
    return 0;
  }

  return [projectTypeNames objectAtIndexedSubscript:type];
}

+ (id)folderNameForProjectType:(int64_t)type
{
  projectFolderNames = [self projectFolderNames];
  if ([projectFolderNames count] <= type)
  {
    return 0;
  }

  return [projectFolderNames objectAtIndexedSubscript:type];
}

+ (id)bundleExtensionForProjectType:(int64_t)type
{
  bundleExtensions = [self bundleExtensions];
  if ([bundleExtensions count] <= type)
  {
    return 0;
  }

  return [bundleExtensions objectAtIndexedSubscript:type];
}

+ (int64_t)projectTypeForBundleExtension:(id)extension
{
  v5 = [objc_msgSend(self "bundleExtensions")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([objc_msgSend(self bundleExtensionForProjectType:{v7), "caseInsensitiveCompare:", extension}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (id)bundleUTIForProjectType:(int64_t)type
{
  bundleUTIs = [self bundleUTIs];
  if ([bundleUTIs count] <= type)
  {
    return 0;
  }

  return [bundleUTIs objectAtIndexedSubscript:type];
}

+ (int64_t)projectTypeForBundleUTI:(id)i
{
  v5 = [objc_msgSend(self "bundleUTIs")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([objc_msgSend(self bundleUTIForProjectType:{v7), "caseInsensitiveCompare:", i}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (id)projectFileExtensionForProjectType:(int64_t)type
{
  projectFileExtensions = [self projectFileExtensions];
  if ([projectFileExtensions count] <= type)
  {
    return 0;
  }

  return [projectFileExtensions objectAtIndexedSubscript:type];
}

+ (int64_t)projectTypeForProjectFileExtension:(id)extension
{
  v5 = [objc_msgSend(self "projectFileExtensions")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (!v7 || [objc_msgSend(self projectFileExtensionForProjectType:{v7), "caseInsensitiveCompare:", extension}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (id)projectFileUTIForProjectType:(int64_t)type
{
  projectFileUTIs = [self projectFileUTIs];
  if ([projectFileUTIs count] <= type)
  {
    return 0;
  }

  return [projectFileUTIs objectAtIndexedSubscript:type];
}

+ (int64_t)projectTypeForProjectFileUTI:(id)i
{
  v5 = [objc_msgSend(self "projectFileUTIs")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (!v7 || [objc_msgSend(self projectFileUTIForProjectType:{v7), "caseInsensitiveCompare:", i}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (int64_t)compositionTypeForProjectType:(int64_t)type
{
  if (type >= 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)templateTypeForProjectType:(int64_t)type
{
  if (type > 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_26034D988[type];
  }
}

+ (id)compositionProjectFileExtensionForProjectType:(int64_t)type
{
  v4 = [self templateTypeForProjectType:type];

  return [self projectFileExtensionForProjectType:v4];
}

+ (int64_t)compositionTypeForProjectFileExtension:(id)extension
{
  if ([self projectTypeForProjectFileExtension:extension] == 1)
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

+ (id)compositionProjectFileUTIForProjectType:(int64_t)type
{
  v4 = [self templateTypeForProjectType:type];

  return [self projectFileUTIForProjectType:v4];
}

+ (int64_t)compositionTypeForProjectFileUTI:(id)i
{
  if ([self projectTypeForProjectFileUTI:i] == 1)
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (NSString)identifier
{
  v2 = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.identifier"];

  return [PCMotionBundle nilOrNonEmptyString:v2];
}

- (int64_t)projectType
{
  pathExtension = [(NSURL *)[(PCMotionBundle *)self bundleURL] pathExtension];

  return [PCMotionBundle projectTypeForBundleExtension:pathExtension];
}

- (NSString)projectTypeName
{
  projectType = [(PCMotionBundle *)self projectType];

  return [PCMotionBundle projectTypeNameForProjectType:projectType];
}

- (NSString)projectTypeFolderName
{
  projectType = [(PCMotionBundle *)self projectType];

  return [PCMotionBundle folderNameForProjectType:projectType];
}

- (NSString)name
{
  v2 = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.name"];

  return [PCMotionBundle nilOrNonEmptyString:v2];
}

- (NSString)category
{
  v2 = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.category"];

  return [PCMotionBundle nilOrNonEmptyString:v2];
}

- (NSString)theme
{
  v2 = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.theme"];

  return [PCMotionBundle nilOrNonEmptyString:v2];
}

- (NSURL)projectFileURL
{
  if (![(PCMotionBundle *)self projectFilePath])
  {
    return 0;
  }

  v3 = [(NSURL *)[(PCMotionBundle *)self bundleURL] URLByAppendingPathComponent:[(PCMotionBundle *)self projectFilePath]];
  if (([objc_opt_class() isValidProjectFileURL:v3] & 1) == 0)
  {
    return 0;
  }

  return v3;
}

- (NSString)projectFilePath
{
  infoDictionary = [(PCMotionBundle *)self infoDictionary];

  return [(NSDictionary *)infoDictionary objectForKeyedSubscript:@"com.apple.motion.package.projectFilePath"];
}

- (NSString)relativeInstallationPath
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v3 addObject:{-[PCMotionBundle projectTypeFolderName](self, "projectTypeFolderName")}];
  [v3 addObject:{-[PCMotionBundle identifier](self, "identifier")}];
  [v3 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%lu_%lu", -[PCMotionBundle majorVersion](self, "majorVersion"), -[PCMotionBundle minorVersion](self, "minorVersion"))}];
  [v3 addObject:{-[NSURL lastPathComponent](-[PCMotionBundle bundleURL](self, "bundleURL"), "lastPathComponent")}];
  v4 = [v3 componentsJoinedByString:@"/"];

  return v4;
}

- (NSString)version
{
  v2 = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.version"];

  return [PCMotionBundle nilOrNonEmptyString:v2];
}

- (unint64_t)majorVersion
{
  v2 = [(PCMotionBundle *)self versionForComponentAtIndex:0];

  return [v2 integerValue];
}

- (unint64_t)minorVersion
{
  v2 = [(PCMotionBundle *)self versionForComponentAtIndex:1];

  return [v2 integerValue];
}

- (NSArray)versionComponents
{
  versionComponents = self->_versionComponents;
  if (!versionComponents)
  {
    versionComponents = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = [(NSString *)[(PCMotionBundle *)self version] componentsSeparatedByString:@"."];
    v5 = [(NSArray *)v4 count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        -[NSArray addObject:](versionComponents, "addObject:", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(-[NSArray objectAtIndexedSubscript:](v4, "objectAtIndexedSubscript:", i), "integerValue")}]);
      }
    }

    self->_versionComponents = versionComponents;
  }

  return versionComponents;
}

- (id)versionForComponentAtIndex:(unint64_t)index
{
  versionComponents = [(PCMotionBundle *)self versionComponents];
  if ([(NSArray *)versionComponents count]<= index)
  {
    return 0;
  }

  return [(NSArray *)versionComponents objectAtIndexedSubscript:index];
}

- (unint64_t)bundleVersion
{
  result = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.bundleVersion"];
  if (result)
  {

    return [result unsignedIntegerValue];
  }

  return result;
}

- (BOOL)supportsFCPiPad
{
  v2 = [(NSDictionary *)[(PCMotionBundle *)self infoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.supportsFCPiPad"];

  return [v2 BOOLValue];
}

- (BOOL)isCopyProtected
{
  if ([-[NSDictionary objectForKeyedSubscript:](-[PCMotionBundle infoDictionary](self "infoDictionary")])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(NSNumber *)[(PCMotionBundle *)self templateFlags] unsignedIntValue]>> 3) & 1;
  }

  return v3;
}

- (NSNumber)templateFlags
{
  result = self->_templateFlags;
  if (!result)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE70]) initWithContentsOfURL:{-[PCMotionBundle projectFileURL](self, "projectFileURL")}];
    [v4 setDelegate:self];
    [v4 parse];
    if (self->_templateFlagsParseState.foundTemplateFlag)
    {
      templateFlags = self->_templateFlagsParseState.templateFlags;
    }

    else
    {
      templateFlags = 0;
    }

    result = [MEMORY[0x277CCABB0] numberWithUnsignedInt:templateFlags];
    self->_templateFlags = result;
  }

  return result;
}

- (NSString)localizedVersion
{
  v3 = [(NSDictionary *)[(PCMotionBundle *)self consolidatedLocalizedInfoDictionary] objectForKeyedSubscript:@"CFBundleShortVersionString"];
  if (![PCMotionBundle isStringNilOrEmpty:v3])
  {
    return v3;
  }

  return [(PCMotionBundle *)self version];
}

- (id)versionForLocalization:(id)localization
{
  v4 = [(PCMotionBundle *)self objectForInfoDictionaryKey:@"CFBundleShortVersionString" localization:localization];
  if (![PCMotionBundle isStringNilOrEmpty:v4])
  {
    return v4;
  }

  return [(PCMotionBundle *)self version];
}

- (NSString)localizedName
{
  v3 = [(NSDictionary *)[(PCMotionBundle *)self consolidatedLocalizedInfoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.name"];
  if (![PCMotionBundle isStringNilOrEmpty:v3])
  {
    return v3;
  }

  lastPathComponent = [(NSURL *)[(PCMotionBundle *)self bundleURL] lastPathComponent];

  return [(NSString *)lastPathComponent stringByDeletingPathExtension];
}

- (id)nameForLocalization:(id)localization
{
  v4 = [(PCMotionBundle *)self objectForInfoDictionaryKey:@"com.apple.motion.package.name" localization:localization];
  if (![PCMotionBundle isStringNilOrEmpty:v4])
  {
    return v4;
  }

  lastPathComponent = [(NSURL *)[(PCMotionBundle *)self bundleURL] lastPathComponent];

  return [(NSString *)lastPathComponent stringByDeletingPathExtension];
}

- (NSString)localizedCategory
{
  consolidatedLocalizedInfoDictionary = [(PCMotionBundle *)self consolidatedLocalizedInfoDictionary];

  return [(NSDictionary *)consolidatedLocalizedInfoDictionary objectForKeyedSubscript:@"com.apple.motion.package.category"];
}

- (NSString)localizedTheme
{
  consolidatedLocalizedInfoDictionary = [(PCMotionBundle *)self consolidatedLocalizedInfoDictionary];

  return [(NSDictionary *)consolidatedLocalizedInfoDictionary objectForKeyedSubscript:@"com.apple.motion.package.theme"];
}

+ (id)infoDictionaryAtURL:(id)l
{
  if (![l checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  v5 = MEMORY[0x277CCAC58];

  return [v5 propertyListWithData:v4 options:0 format:0 error:0];
}

- (NSDictionary)consolidatedLocalizedInfoDictionary
{
  result = self->_consolidatedLocalizedInfoDictionary;
  if (!result)
  {
    result = [(PCMotionBundle *)self localizedInfoDictionaryWithDefaults:[(PCMotionBundle *)self infoDictionary]];
    self->_consolidatedLocalizedInfoDictionary = result;
  }

  return result;
}

- (NSMutableDictionary)localizedInfoDictionaries
{
  result = self->_localizedInfoDictionaries;
  if (!result)
  {
    result = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_localizedInfoDictionaries = result;
  }

  return result;
}

- (id)localizedInfoDictionaryForLocalization:(id)localization
{
  if ([(NSMutableDictionary *)self->_localizedInfoDictionaries objectForKeyedSubscript:?])
  {
    localizedInfoDictionaries = self->_localizedInfoDictionaries;

    return [(NSMutableDictionary *)localizedInfoDictionaries objectForKeyedSubscript:localization];
  }

  else
  {
    v7 = [(PCMotionBundle *)self localizedInfoStringsForLocalization:localization];
    if (v7)
    {
      v8 = [PCMotionBundle infoDictionaryWithDefaults:[(PCMotionBundle *)self infoDictionary] andOverrides:v7];
      [(NSMutableDictionary *)[(PCMotionBundle *)self localizedInfoDictionaries] setObject:v8 forKeyedSubscript:localization];
      return v8;
    }

    else
    {

      return [(PCMotionBundle *)self infoDictionary];
    }
  }
}

+ (id)infoDictionaryWithDefaults:(id)defaults andOverrides:(id)overrides
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary addEntriesFromDictionary:defaults];
  [dictionary addEntriesFromDictionary:overrides];
  return dictionary;
}

- (id)localizedInfoDictionaryWithDefaults:(id)defaults
{
  localizedInfoDictionary = [(PCMotionBundle *)self localizedInfoDictionary];

  return [PCMotionBundle infoDictionaryWithDefaults:defaults andOverrides:localizedInfoDictionary];
}

- (id)localizedInfoStringsForLocalization:(id)localization
{
  v3 = [PCMotionBundle urlForLocalizedInfoStringsInBundleURL:self->_bundleURL localization:localization];
  if (![v3 checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
  v5 = MEMORY[0x277CCAC58];

  return [v5 propertyListWithData:v4 options:0 format:0 error:0];
}

- (id)objectForInfoDictionaryKey:(id)key localization:(id)localization
{
  result = [-[PCMotionBundle localizedInfoDictionaryForLocalization:](self localizedInfoDictionaryForLocalization:{localization), "objectForKeyedSubscript:", key}];
  if (!result)
  {
    infoDictionary = [(PCMotionBundle *)self infoDictionary];

    return [(NSDictionary *)infoDictionary objectForKeyedSubscript:key];
  }

  return result;
}

+ (id)infoDictionaryWithBundleVersion:(unint64_t)version identifier:(id)identifier version:(id)a5 projectFilePath:(id)path supportsFCPiPad:(BOOL)pad name:(id)name category:(id)category theme:(id)self0 additionalEntries:(id)self1
{
  padCopy = pad;
  v25[9] = *MEMORY[0x277D85DE8];
  v16 = [PCMotionBundle nilOrNonEmptyString:identifier];
  v24[0] = @"com.apple.motion.package.bundleVersion";
  v25[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v24[1] = @"com.apple.motion.package.identifier";
  if (!v16)
  {
    v16 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  }

  if (!a5)
  {
    a5 = &stru_2872E16E0;
  }

  v25[1] = v16;
  v25[2] = a5;
  v24[2] = @"com.apple.motion.package.version";
  v24[3] = @"com.apple.motion.package.projectFilePath";
  if (path)
  {
    pathCopy = path;
  }

  else
  {
    pathCopy = &stru_2872E16E0;
  }

  v25[3] = pathCopy;
  v24[4] = @"com.apple.motion.package.supportsFCPiPad";
  v25[4] = [MEMORY[0x277CCABB0] numberWithBool:padCopy];
  v25[5] = a5;
  v24[5] = @"CFBundleShortVersionString";
  v24[6] = @"com.apple.motion.package.name";
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = &stru_2872E16E0;
  }

  if (category)
  {
    categoryCopy = category;
  }

  else
  {
    categoryCopy = &stru_2872E16E0;
  }

  v25[6] = nameCopy;
  v25[7] = categoryCopy;
  v24[7] = @"com.apple.motion.package.category";
  v24[8] = @"com.apple.motion.package.theme";
  if (theme)
  {
    themeCopy = theme;
  }

  else
  {
    themeCopy = &stru_2872E16E0;
  }

  v25[8] = themeCopy;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
  if ([entries count])
  {
    return [self infoDictionaryWithDefaults:v21 andOverrides:entries];
  }

  return v21;
}

+ (id)urlForLocalizedResourcesInBundleURL:(id)l localization:(id)localization
{
  v5 = [PCMotionBundle urlForResourcesInBundleURL:l];
  v6 = [localization stringByAppendingPathExtension:@"lproj"];

  return [v5 URLByAppendingPathComponent:v6 isDirectory:1];
}

+ (id)urlForLocalizedInfoStringsInBundleURL:(id)l localization:(id)localization
{
  v4 = [self urlForLocalizedResourcesInBundleURL:l localization:localization];

  return [v4 URLByAppendingPathComponent:@"InfoPlist.strings"];
}

- (id)localizedParameterForKey:(id)key
{
  v4 = [(NSDictionary *)[(PCMotionBundle *)self consolidatedLocalizedInfoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.publishedParameters"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v4 objectForKeyedSubscript:key];
}

+ (id)createTempBundleWithProjectType:(int64_t)type error:(id *)error
{
  v22[3] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:objc_msgSend(MEMORY[0x277CBEBC0] create:"fileURLWithPath:" error:{@".", 1, error}];
  if (!v8)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v9 = [self bundleExtensionForProjectType:type];
  v10 = [v8 URLByAppendingPathComponent:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78] isDirectory:{"UUID"), "UUIDString"), "stringByAppendingPathExtension:", v9), 1}];
  v22[0] = [self urlForThumbnailsInBundleURL:v10];
  v22[1] = [self urlForMediaInBundleURL:v10];
  v22[2] = [self urlForLocalizableResourcesInBundleURL:v10];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
LABEL_4:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v11);
      }

      if (![defaultManager createDirectoryAtURL:*(*(&v17 + 1) + 8 * v14) withIntermediateDirectories:1 attributes:0 error:error])
      {
        goto LABEL_13;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v12)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  if ([objc_msgSend(self infoDictionaryWithBundleVersion:objc_msgSend(self version:"currentBundleVersion") projectFilePath:&stru_2872E16E0 supportsFCPiPad:&stru_2872E16E0 name:0 category:&stru_2872E16E0 theme:{&stru_2872E16E0, &stru_2872E16E0), "writeToURL:error:", objc_msgSend(self, "urlForInfoDictionaryInBundleURL:", v10), error}])
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

LABEL_14:
  objc_sync_exit(self);
  return v15;
}

+ (id)createTempBundleByCopyingBundleAtURL:(id)l error:(id *)error
{
  objc_sync_enter(self);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:objc_msgSend(MEMORY[0x277CBEBC0] create:"fileURLWithPath:" error:{@".", 1, error}];
  if (v8)
  {
    pathExtension = [l pathExtension];
    v10 = [v8 URLByAppendingPathComponent:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78] isDirectory:{"UUID"), "UUIDString"), "stringByAppendingPathExtension:", pathExtension), 1}];
    if ([defaultManager copyItemAtURL:l toURL:v10 error:error])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  objc_sync_exit(self);
  return v11;
}

+ (BOOL)removeTempBundleDirectory:(id)directory error:(id *)error
{
  objc_sync_enter(self);
  LOBYTE(error) = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  objc_sync_exit(self);
  return error;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if ([element isEqualToString:@"template"])
  {
    self->_templateFlagsParseState.foundTemplate = 1;
  }

  if ([element isEqualToString:@"flags"] && self->_templateFlagsParseState.foundTemplate)
  {
    self->_templateFlagsParseState.foundTemplateFlag = 1;
  }

  if ([element isEqualToString:@"scene"])
  {
    self->_templateFlagsParseState.success = 1;

    [parser abortParsing];
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if ([element isEqualToString:@"flags"] && self->_templateFlagsParseState.foundTemplateFlag)
  {
    self->_templateFlagsParseState.success = 1;
    [parser abortParsing];
  }

  if ([element isEqualToString:@"template"])
  {
    self->_templateFlagsParseState.success = 1;

    [parser abortParsing];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  if (self->_templateFlagsParseState.foundTemplateFlag)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    self->_templateFlagsParseState.templateFlags = [objc_msgSend(v7 numberFromString:{characters), "unsignedIntValue"}];
  }
}

+ (BOOL)isStringNilOrEmpty:(id)empty
{
  if (empty)
  {
    return [empty isAllWhitespaceAndNewline];
  }

  else
  {
    return 1;
  }
}

+ (id)nilOrNonEmptyString:(id)string
{
  if ([self isStringNilOrEmpty:?])
  {
    return 0;
  }

  else
  {
    return string;
  }
}

+ (id)nilOrNonEmptyString:(id)string withFallback:(id)fallback
{
  result = [self nilOrNonEmptyString:string];
  if (!result)
  {

    return [self nilOrNonEmptyString:fallback];
  }

  return result;
}

+ (id)nilOrNonEmptyString:(id)string withFallback1:(id)fallback1 fallback2:(id)fallback2
{
  v7 = [self nilOrNonEmptyString:string withFallback:fallback1];

  return [self nilOrNonEmptyString:v7 withFallback:fallback2];
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = PCMotionBundle;
  v17 = [(PCMotionBundle *)&v18 description];
  v16 = [objc_msgSend(MEMORY[0x277CBEAF8] "currentLocale")];
  v15 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v14 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  localizations = [(PCMotionBundle *)self localizations];
  preferredLocalizations = [(PCMotionBundle *)self preferredLocalizations];
  projectFilePath = [(PCMotionBundle *)self projectFilePath];
  projectTypeName = [(PCMotionBundle *)self projectTypeName];
  identifier = [(PCMotionBundle *)self identifier];
  version = [(PCMotionBundle *)self version];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PCMotionBundle majorVersion](self, "majorVersion")}];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PCMotionBundle minorVersion](self, "minorVersion")}];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PCMotionBundle bundleVersion](self, "bundleVersion")}];
  if ([(PCMotionBundle *)self supportsFCPiPad])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  return [(NSString *)v17 stringByAppendingFormat:@"\nCurrent Locale: %@\nApplication supported localizations: %@\nApplication preferred localizations: %@\nlocalizations: %@\npreferred localizations: %@\nprojectFilePath: %@\nprojectType: %@\nidentifier: %@\nversion: '%@' (Maj: %@ Min: %@)\nbundleVersion: %@\nsupportsFCPiPad: %@\nlocalizedVersion: %@\nlocalizedName: %@\nlocalizedCategory: %@\nlocalizedTheme: %@\nlocalizedSmallThumbnailURL: %@\nlocalizedLargeThumbnailURL: %@", v16, v15, v14, localizations, preferredLocalizations, projectFilePath, projectTypeName, identifier, version, v3, v4, v5, v6, [(PCMotionBundle *)self localizedVersion], [(PCMotionBundle *)self localizedName], [(PCMotionBundle *)self localizedCategory], [(PCMotionBundle *)self localizedTheme], [(PCMotionBundle *)self localizedSmallThumbnailURL], [(PCMotionBundle *)self localizedLargeThumbnailURL]];
}

@end