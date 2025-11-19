@interface PCMotionBundle
+ (BOOL)bundleContentsAreEqualAtURL:(id)a3 andURL:(id)a4;
+ (BOOL)isStringNilOrEmpty:(id)a3;
+ (BOOL)isValidBundleExtension:(id)a3;
+ (BOOL)isValidBundleURL:(id)a3;
+ (BOOL)isValidBundleUTI:(id)a3;
+ (BOOL)isValidProjectFileExtension:(id)a3;
+ (BOOL)isValidProjectFileURL:(id)a3;
+ (BOOL)isValidProjectFileUTI:(id)a3;
+ (BOOL)removeTempBundleDirectory:(id)a3 error:(id *)a4;
+ (NSArray)bundleExtensions;
+ (NSArray)bundleUTIs;
+ (NSArray)projectFileExtensions;
+ (NSArray)projectFileUTIs;
+ (NSArray)projectFolderNames;
+ (NSArray)projectTypeNames;
+ (NSArray)projectTypes;
+ (id)bundleExtensionForProjectType:(int64_t)a3;
+ (id)bundleURLForProjectFileURL:(id)a3;
+ (id)bundleURLInFileURL:(id)a3;
+ (id)bundleUTIForProjectType:(int64_t)a3;
+ (id)compositionProjectFileExtensionForProjectType:(int64_t)a3;
+ (id)compositionProjectFileUTIForProjectType:(int64_t)a3;
+ (id)createTempBundleByCopyingBundleAtURL:(id)a3 error:(id *)a4;
+ (id)createTempBundleWithProjectType:(int64_t)a3 error:(id *)a4;
+ (id)folderNameForProjectType:(int64_t)a3;
+ (id)infoDictionaryAtURL:(id)a3;
+ (id)infoDictionaryWithBundleVersion:(unint64_t)a3 identifier:(id)a4 version:(id)a5 projectFilePath:(id)a6 supportsFCPiPad:(BOOL)a7 name:(id)a8 category:(id)a9 theme:(id)a10 additionalEntries:(id)a11;
+ (id)infoDictionaryWithDefaults:(id)a3 andOverrides:(id)a4;
+ (id)nilOrNonEmptyString:(id)a3;
+ (id)nilOrNonEmptyString:(id)a3 withFallback1:(id)a4 fallback2:(id)a5;
+ (id)nilOrNonEmptyString:(id)a3 withFallback:(id)a4;
+ (id)projectFileExtensionForProjectType:(int64_t)a3;
+ (id)projectFileUTIForProjectType:(int64_t)a3;
+ (id)projectTypeNameForProjectType:(int64_t)a3;
+ (id)urlForLocalizedInfoStringsInBundleURL:(id)a3 localization:(id)a4;
+ (id)urlForLocalizedResourcesInBundleURL:(id)a3 localization:(id)a4;
+ (int64_t)compositionTypeForProjectFileExtension:(id)a3;
+ (int64_t)compositionTypeForProjectFileUTI:(id)a3;
+ (int64_t)compositionTypeForProjectType:(int64_t)a3;
+ (int64_t)projectTypeForBundleExtension:(id)a3;
+ (int64_t)projectTypeForBundleUTI:(id)a3;
+ (int64_t)projectTypeForProjectFileExtension:(id)a3;
+ (int64_t)projectTypeForProjectFileUTI:(id)a3;
+ (int64_t)templateTypeForProjectType:(int64_t)a3;
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
- (PCMotionBundle)initWithURL:(id)a3;
- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5;
- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5 localization:(id)a6;
- (id)URLsForResourcesWithExtension:(id)a3 subdirectory:(id)a4;
- (id)URLsForResourcesWithExtension:(id)a3 subdirectory:(id)a4 localization:(id)a5;
- (id)localizedAttributedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (id)localizedAttributedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6;
- (id)localizedInfoDictionaryForLocalization:(id)a3;
- (id)localizedInfoDictionaryWithDefaults:(id)a3;
- (id)localizedInfoStringsForLocalization:(id)a3;
- (id)localizedParameterForKey:(id)a3;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6 found:(BOOL *)a7;
- (id)nameForLocalization:(id)a3;
- (id)objectForInfoDictionaryKey:(id)a3 localization:(id)a4;
- (id)versionForComponentAtIndex:(unint64_t)a3;
- (id)versionForLocalization:(id)a3;
- (int64_t)projectType;
- (unint64_t)bundleVersion;
- (unint64_t)majorVersion;
- (unint64_t)minorVersion;
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation PCMotionBundle

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCMotionBundle;
  [(PCMotionBundle *)&v3 dealloc];
}

- (PCMotionBundle)initWithURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = PCMotionBundle;
  v4 = [(PCMotionBundle *)&v6 init];
  if (v4)
  {
    v4->_bundleURL = [a3 copy];
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
    v4 = [(PCMotionBundle *)self preferredLocalizations];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(PCMotionBundle *)self localizedInfoStringsForLocalization:*(*(&v10 + 1) + 8 * v8)];
        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v4 = [(PCMotionBundle *)self localizations];
    result = [objc_msgSend(MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:{v4), "copy"}];
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

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(PCMotionBundle *)self preferredLocalizations];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v17 = 0;
      result = [(PCMotionBundle *)self localizedStringForKey:a3 value:a4 table:a5 localization:v15 found:&v17];
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
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6 found:(BOOL *)a7
{
  *a7 = 0;
  if (a3)
  {
    if (a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = @"Localizable";
    }

    v11 = [(PCMotionBundle *)self URLForResource:v10 withExtension:@"strings" subdirectory:0 localization:a6];
    if (v11 && (v12 = +[PCMotionBundle infoDictionaryAtURL:](PCMotionBundle, "infoDictionaryAtURL:", v11)) != 0 && (result = [v12 objectForKey:a3]) != 0)
    {
      *a7 = 1;
    }

    else if ([PCMotionBundle isStringNilOrEmpty:a4])
    {
      return a3;
    }

    else
    {
      return a4;
    }
  }

  else if (a4)
  {
    return a4;
  }

  else
  {
    return &stru_2872E16E0;
  }

  return result;
}

- (id)localizedAttributedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2872E16E0];

  return v5;
}

- (id)localizedAttributedStringForKey:(id)a3 value:(id)a4 table:(id)a5 localization:(id)a6
{
  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2872E16E0];

  return v6;
}

- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(PCMotionBundle *)self preferredLocalizations];
  result = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v9);
      }

      result = [(PCMotionBundle *)self URLForResource:a3 withExtension:a4 subdirectory:a5 localization:*(*(&v14 + 1) + 8 * v13)];
      if (result)
      {
        break;
      }

      if (v11 == ++v13)
      {
        result = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)URLForResource:(id)a3 withExtension:(id)a4 subdirectory:(id)a5 localization:(id)a6
{
  v11 = [PCMotionBundle urlForResourcesInBundleURL:self->_bundleURL];
  v12 = v11;
  if (a5)
  {
    v12 = [v11 URLByAppendingPathComponent:a5];
  }

  if (a4)
  {
    a3 = [a3 stringByAppendingPathExtension:a4];
  }

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3 relativeToURL:v12];
  if (([v13 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v14 = [PCMotionBundle urlForLocalizedResourcesInBundleURL:self->_bundleURL localization:a6];
    v15 = v14;
    if (a5)
    {
      v15 = [v14 URLByAppendingPathComponent:a5];
    }

    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3 relativeToURL:v15];
    if (([v13 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v16 = [PCMotionBundle urlForLocalizableResourcesInBundleURL:self->_bundleURL];
      v17 = v16;
      if (a5)
      {
        v17 = [v16 URLByAppendingPathComponent:a5];
      }

      v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3 relativeToURL:v17];
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

- (id)URLsForResourcesWithExtension:(id)a3 subdirectory:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(PCMotionBundle *)self preferredLocalizations];
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [(PCMotionBundle *)self URLsForResourcesWithExtension:a3 subdirectory:a4 localization:*(*(&v15 + 1) + 8 * v12)];
        if (v13)
        {
          [v7 addObjectsFromArray:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)URLsForResourcesWithExtension:(id)a3 subdirectory:(id)a4 localization:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [PCMotionBundle urlForResourcesInBundleURL:self->_bundleURL];
  v10 = v9;
  if (a4)
  {
    v10 = [v9 URLByAppendingPathComponent:a4];
  }

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:0];
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
            [v8 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }
  }

  v19 = [PCMotionBundle urlForLocalizedResourcesInBundleURL:self->_bundleURL localization:a5];
  v20 = v19;
  if (a4)
  {
    v20 = [v19 URLByAppendingPathComponent:a4];
  }

  v21 = [v11 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:0 error:0];
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
            [v8 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v24);
    }
  }

  return v8;
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

+ (BOOL)isValidBundleURL:(id)a3
{
  v5 = [a3 pathExtension];
  if (v5)
  {
    LODWORD(v5) = [a1 isValidBundleExtension:v5];
    if (v5)
    {
      v7 = 0;
      LODWORD(v5) = [a3 getResourceValue:&v7 forKey:*MEMORY[0x277CBE868] error:0];
      if (v5)
      {
        LOBYTE(v5) = [v7 BOOLValue];
      }
    }
  }

  return v5;
}

+ (BOOL)isValidBundleExtension:(id)a3
{
  v4 = [a1 bundleExtensions];
  v5 = [a3 lowercaseString];

  return [v4 containsObject:v5];
}

+ (BOOL)isValidBundleUTI:(id)a3
{
  v4 = [a1 bundleUTIs];
  v5 = [a3 lowercaseString];

  return [v4 containsObject:v5];
}

+ (BOOL)isValidProjectFileURL:(id)a3
{
  v7 = 0;
  LODWORD(v5) = [a3 getResourceValue:&v7 forKey:*MEMORY[0x277CBE8A8] error:0];
  if (v5)
  {
    LODWORD(v5) = [v7 BOOLValue];
    if (v5)
    {
      v5 = [a3 pathExtension];
      if (v5)
      {
        LOBYTE(v5) = [a1 isValidProjectFileExtension:v5];
      }
    }
  }

  return v5;
}

+ (BOOL)isValidProjectFileExtension:(id)a3
{
  v4 = [a1 projectFileExtensions];
  v5 = [a3 lowercaseString];

  return [v4 containsObject:v5];
}

+ (BOOL)isValidProjectFileUTI:(id)a3
{
  v4 = [a1 projectFileUTIs];
  v5 = [a3 lowercaseString];

  return [v4 containsObject:v5];
}

+ (BOOL)bundleContentsAreEqualAtURL:(id)a3 andURL:(id)a4
{
  v7 = [a3 pathExtension];
  v8 = [a4 pathExtension];
  if (![a1 isValidBundleExtension:v7] || objc_msgSend(v7, "caseInsensitiveCompare:", v8))
  {
    return 0;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [a3 path];
  v12 = [a4 path];

  return [v10 contentsEqualAtPath:v11 andPath:v12];
}

+ (id)bundleURLForProjectFileURL:(id)a3
{
  v5 = [a3 pathComponents];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v9[2] = __45__PCMotionBundle_bundleURLForProjectFileURL___block_invoke;
  v9[3] = &unk_279AA8398;
  v9[4] = a1;
  v9[5] = &v14;
  v9[6] = &v10;
  [v5 enumerateObjectsWithOptions:2 usingBlock:v9];
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

+ (id)bundleURLInFileURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 path];
  v5 = [a1 bundleExtensions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [v4 rangeOfString:*(*(&v13 + 1) + 8 * v9) options:1];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v4 substringToIndex:v10 + v11];
          return [MEMORY[0x277CBEBC0] fileURLWithPath:v12 isDirectory:1];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (id)projectTypeNameForProjectType:(int64_t)a3
{
  v4 = [a1 projectTypeNames];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndexedSubscript:a3];
}

+ (id)folderNameForProjectType:(int64_t)a3
{
  v4 = [a1 projectFolderNames];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndexedSubscript:a3];
}

+ (id)bundleExtensionForProjectType:(int64_t)a3
{
  v4 = [a1 bundleExtensions];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndexedSubscript:a3];
}

+ (int64_t)projectTypeForBundleExtension:(id)a3
{
  v5 = [objc_msgSend(a1 "bundleExtensions")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([objc_msgSend(a1 bundleExtensionForProjectType:{v7), "caseInsensitiveCompare:", a3}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (id)bundleUTIForProjectType:(int64_t)a3
{
  v4 = [a1 bundleUTIs];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndexedSubscript:a3];
}

+ (int64_t)projectTypeForBundleUTI:(id)a3
{
  v5 = [objc_msgSend(a1 "bundleUTIs")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while ([objc_msgSend(a1 bundleUTIForProjectType:{v7), "caseInsensitiveCompare:", a3}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (id)projectFileExtensionForProjectType:(int64_t)a3
{
  v4 = [a1 projectFileExtensions];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndexedSubscript:a3];
}

+ (int64_t)projectTypeForProjectFileExtension:(id)a3
{
  v5 = [objc_msgSend(a1 "projectFileExtensions")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (!v7 || [objc_msgSend(a1 projectFileExtensionForProjectType:{v7), "caseInsensitiveCompare:", a3}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (id)projectFileUTIForProjectType:(int64_t)a3
{
  v4 = [a1 projectFileUTIs];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndexedSubscript:a3];
}

+ (int64_t)projectTypeForProjectFileUTI:(id)a3
{
  v5 = [objc_msgSend(a1 "projectFileUTIs")];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  while (!v7 || [objc_msgSend(a1 projectFileUTIForProjectType:{v7), "caseInsensitiveCompare:", a3}])
  {
    if (v6 == ++v7)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v7;
}

+ (int64_t)compositionTypeForProjectType:(int64_t)a3
{
  if (a3 >= 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)templateTypeForProjectType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return qword_26034D988[a3];
  }
}

+ (id)compositionProjectFileExtensionForProjectType:(int64_t)a3
{
  v4 = [a1 templateTypeForProjectType:a3];

  return [a1 projectFileExtensionForProjectType:v4];
}

+ (int64_t)compositionTypeForProjectFileExtension:(id)a3
{
  if ([a1 projectTypeForProjectFileExtension:a3] == 1)
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

+ (id)compositionProjectFileUTIForProjectType:(int64_t)a3
{
  v4 = [a1 templateTypeForProjectType:a3];

  return [a1 projectFileUTIForProjectType:v4];
}

+ (int64_t)compositionTypeForProjectFileUTI:(id)a3
{
  if ([a1 projectTypeForProjectFileUTI:a3] == 1)
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
  v2 = [(NSURL *)[(PCMotionBundle *)self bundleURL] pathExtension];

  return [PCMotionBundle projectTypeForBundleExtension:v2];
}

- (NSString)projectTypeName
{
  v2 = [(PCMotionBundle *)self projectType];

  return [PCMotionBundle projectTypeNameForProjectType:v2];
}

- (NSString)projectTypeFolderName
{
  v2 = [(PCMotionBundle *)self projectType];

  return [PCMotionBundle folderNameForProjectType:v2];
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
  v2 = [(PCMotionBundle *)self infoDictionary];

  return [(NSDictionary *)v2 objectForKeyedSubscript:@"com.apple.motion.package.projectFilePath"];
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

- (id)versionForComponentAtIndex:(unint64_t)a3
{
  v4 = [(PCMotionBundle *)self versionComponents];
  if ([(NSArray *)v4 count]<= a3)
  {
    return 0;
  }

  return [(NSArray *)v4 objectAtIndexedSubscript:a3];
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

- (id)versionForLocalization:(id)a3
{
  v4 = [(PCMotionBundle *)self objectForInfoDictionaryKey:@"CFBundleShortVersionString" localization:a3];
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

  v4 = [(NSURL *)[(PCMotionBundle *)self bundleURL] lastPathComponent];

  return [(NSString *)v4 stringByDeletingPathExtension];
}

- (id)nameForLocalization:(id)a3
{
  v4 = [(PCMotionBundle *)self objectForInfoDictionaryKey:@"com.apple.motion.package.name" localization:a3];
  if (![PCMotionBundle isStringNilOrEmpty:v4])
  {
    return v4;
  }

  v5 = [(NSURL *)[(PCMotionBundle *)self bundleURL] lastPathComponent];

  return [(NSString *)v5 stringByDeletingPathExtension];
}

- (NSString)localizedCategory
{
  v2 = [(PCMotionBundle *)self consolidatedLocalizedInfoDictionary];

  return [(NSDictionary *)v2 objectForKeyedSubscript:@"com.apple.motion.package.category"];
}

- (NSString)localizedTheme
{
  v2 = [(PCMotionBundle *)self consolidatedLocalizedInfoDictionary];

  return [(NSDictionary *)v2 objectForKeyedSubscript:@"com.apple.motion.package.theme"];
}

+ (id)infoDictionaryAtURL:(id)a3
{
  if (![a3 checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3];
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

- (id)localizedInfoDictionaryForLocalization:(id)a3
{
  if ([(NSMutableDictionary *)self->_localizedInfoDictionaries objectForKeyedSubscript:?])
  {
    localizedInfoDictionaries = self->_localizedInfoDictionaries;

    return [(NSMutableDictionary *)localizedInfoDictionaries objectForKeyedSubscript:a3];
  }

  else
  {
    v7 = [(PCMotionBundle *)self localizedInfoStringsForLocalization:a3];
    if (v7)
    {
      v8 = [PCMotionBundle infoDictionaryWithDefaults:[(PCMotionBundle *)self infoDictionary] andOverrides:v7];
      [(NSMutableDictionary *)[(PCMotionBundle *)self localizedInfoDictionaries] setObject:v8 forKeyedSubscript:a3];
      return v8;
    }

    else
    {

      return [(PCMotionBundle *)self infoDictionary];
    }
  }
}

+ (id)infoDictionaryWithDefaults:(id)a3 andOverrides:(id)a4
{
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 addEntriesFromDictionary:a3];
  [v6 addEntriesFromDictionary:a4];
  return v6;
}

- (id)localizedInfoDictionaryWithDefaults:(id)a3
{
  v4 = [(PCMotionBundle *)self localizedInfoDictionary];

  return [PCMotionBundle infoDictionaryWithDefaults:a3 andOverrides:v4];
}

- (id)localizedInfoStringsForLocalization:(id)a3
{
  v3 = [PCMotionBundle urlForLocalizedInfoStringsInBundleURL:self->_bundleURL localization:a3];
  if (![v3 checkResourceIsReachableAndReturnError:0])
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
  v5 = MEMORY[0x277CCAC58];

  return [v5 propertyListWithData:v4 options:0 format:0 error:0];
}

- (id)objectForInfoDictionaryKey:(id)a3 localization:(id)a4
{
  result = [-[PCMotionBundle localizedInfoDictionaryForLocalization:](self localizedInfoDictionaryForLocalization:{a4), "objectForKeyedSubscript:", a3}];
  if (!result)
  {
    v7 = [(PCMotionBundle *)self infoDictionary];

    return [(NSDictionary *)v7 objectForKeyedSubscript:a3];
  }

  return result;
}

+ (id)infoDictionaryWithBundleVersion:(unint64_t)a3 identifier:(id)a4 version:(id)a5 projectFilePath:(id)a6 supportsFCPiPad:(BOOL)a7 name:(id)a8 category:(id)a9 theme:(id)a10 additionalEntries:(id)a11
{
  v12 = a7;
  v25[9] = *MEMORY[0x277D85DE8];
  v16 = [PCMotionBundle nilOrNonEmptyString:a4];
  v24[0] = @"com.apple.motion.package.bundleVersion";
  v25[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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
  if (a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = &stru_2872E16E0;
  }

  v25[3] = v17;
  v24[4] = @"com.apple.motion.package.supportsFCPiPad";
  v25[4] = [MEMORY[0x277CCABB0] numberWithBool:v12];
  v25[5] = a5;
  v24[5] = @"CFBundleShortVersionString";
  v24[6] = @"com.apple.motion.package.name";
  if (a8)
  {
    v18 = a8;
  }

  else
  {
    v18 = &stru_2872E16E0;
  }

  if (a9)
  {
    v19 = a9;
  }

  else
  {
    v19 = &stru_2872E16E0;
  }

  v25[6] = v18;
  v25[7] = v19;
  v24[7] = @"com.apple.motion.package.category";
  v24[8] = @"com.apple.motion.package.theme";
  if (a10)
  {
    v20 = a10;
  }

  else
  {
    v20 = &stru_2872E16E0;
  }

  v25[8] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:9];
  if ([a11 count])
  {
    return [a1 infoDictionaryWithDefaults:v21 andOverrides:a11];
  }

  return v21;
}

+ (id)urlForLocalizedResourcesInBundleURL:(id)a3 localization:(id)a4
{
  v5 = [PCMotionBundle urlForResourcesInBundleURL:a3];
  v6 = [a4 stringByAppendingPathExtension:@"lproj"];

  return [v5 URLByAppendingPathComponent:v6 isDirectory:1];
}

+ (id)urlForLocalizedInfoStringsInBundleURL:(id)a3 localization:(id)a4
{
  v4 = [a1 urlForLocalizedResourcesInBundleURL:a3 localization:a4];

  return [v4 URLByAppendingPathComponent:@"InfoPlist.strings"];
}

- (id)localizedParameterForKey:(id)a3
{
  v4 = [(NSDictionary *)[(PCMotionBundle *)self consolidatedLocalizedInfoDictionary] objectForKeyedSubscript:@"com.apple.motion.package.publishedParameters"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v4 objectForKeyedSubscript:a3];
}

+ (id)createTempBundleWithProjectType:(int64_t)a3 error:(id *)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  objc_sync_enter(a1);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:objc_msgSend(MEMORY[0x277CBEBC0] create:"fileURLWithPath:" error:{@".", 1, a4}];
  if (!v8)
  {
LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v9 = [a1 bundleExtensionForProjectType:a3];
  v10 = [v8 URLByAppendingPathComponent:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78] isDirectory:{"UUID"), "UUIDString"), "stringByAppendingPathExtension:", v9), 1}];
  v22[0] = [a1 urlForThumbnailsInBundleURL:v10];
  v22[1] = [a1 urlForMediaInBundleURL:v10];
  v22[2] = [a1 urlForLocalizableResourcesInBundleURL:v10];
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

      if (![v7 createDirectoryAtURL:*(*(&v17 + 1) + 8 * v14) withIntermediateDirectories:1 attributes:0 error:a4])
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

  if ([objc_msgSend(a1 infoDictionaryWithBundleVersion:objc_msgSend(a1 version:"currentBundleVersion") projectFilePath:&stru_2872E16E0 supportsFCPiPad:&stru_2872E16E0 name:0 category:&stru_2872E16E0 theme:{&stru_2872E16E0, &stru_2872E16E0), "writeToURL:error:", objc_msgSend(a1, "urlForInfoDictionaryInBundleURL:", v10), a4}])
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

LABEL_14:
  objc_sync_exit(a1);
  return v15;
}

+ (id)createTempBundleByCopyingBundleAtURL:(id)a3 error:(id *)a4
{
  objc_sync_enter(a1);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:objc_msgSend(MEMORY[0x277CBEBC0] create:"fileURLWithPath:" error:{@".", 1, a4}];
  if (v8)
  {
    v9 = [a3 pathExtension];
    v10 = [v8 URLByAppendingPathComponent:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAD78] isDirectory:{"UUID"), "UUIDString"), "stringByAppendingPathExtension:", v9), 1}];
    if ([v7 copyItemAtURL:a3 toURL:v10 error:a4])
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

  objc_sync_exit(a1);
  return v11;
}

+ (BOOL)removeTempBundleDirectory:(id)a3 error:(id *)a4
{
  objc_sync_enter(a1);
  LOBYTE(a4) = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  objc_sync_exit(a1);
  return a4;
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  if ([a4 isEqualToString:@"template"])
  {
    self->_templateFlagsParseState.foundTemplate = 1;
  }

  if ([a4 isEqualToString:@"flags"] && self->_templateFlagsParseState.foundTemplate)
  {
    self->_templateFlagsParseState.foundTemplateFlag = 1;
  }

  if ([a4 isEqualToString:@"scene"])
  {
    self->_templateFlagsParseState.success = 1;

    [a3 abortParsing];
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  if ([a4 isEqualToString:@"flags"] && self->_templateFlagsParseState.foundTemplateFlag)
  {
    self->_templateFlagsParseState.success = 1;
    [a3 abortParsing];
  }

  if ([a4 isEqualToString:@"template"])
  {
    self->_templateFlagsParseState.success = 1;

    [a3 abortParsing];
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  if (self->_templateFlagsParseState.foundTemplateFlag)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    self->_templateFlagsParseState.templateFlags = [objc_msgSend(v7 numberFromString:{a4), "unsignedIntValue"}];
  }
}

+ (BOOL)isStringNilOrEmpty:(id)a3
{
  if (a3)
  {
    return [a3 isAllWhitespaceAndNewline];
  }

  else
  {
    return 1;
  }
}

+ (id)nilOrNonEmptyString:(id)a3
{
  if ([a1 isStringNilOrEmpty:?])
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)nilOrNonEmptyString:(id)a3 withFallback:(id)a4
{
  result = [a1 nilOrNonEmptyString:a3];
  if (!result)
  {

    return [a1 nilOrNonEmptyString:a4];
  }

  return result;
}

+ (id)nilOrNonEmptyString:(id)a3 withFallback1:(id)a4 fallback2:(id)a5
{
  v7 = [a1 nilOrNonEmptyString:a3 withFallback:a4];

  return [a1 nilOrNonEmptyString:v7 withFallback:a5];
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = PCMotionBundle;
  v17 = [(PCMotionBundle *)&v18 description];
  v16 = [objc_msgSend(MEMORY[0x277CBEAF8] "currentLocale")];
  v15 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v14 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v13 = [(PCMotionBundle *)self localizations];
  v12 = [(PCMotionBundle *)self preferredLocalizations];
  v11 = [(PCMotionBundle *)self projectFilePath];
  v10 = [(PCMotionBundle *)self projectTypeName];
  v9 = [(PCMotionBundle *)self identifier];
  v8 = [(PCMotionBundle *)self version];
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

  return [(NSString *)v17 stringByAppendingFormat:@"\nCurrent Locale: %@\nApplication supported localizations: %@\nApplication preferred localizations: %@\nlocalizations: %@\npreferred localizations: %@\nprojectFilePath: %@\nprojectType: %@\nidentifier: %@\nversion: '%@' (Maj: %@ Min: %@)\nbundleVersion: %@\nsupportsFCPiPad: %@\nlocalizedVersion: %@\nlocalizedName: %@\nlocalizedCategory: %@\nlocalizedTheme: %@\nlocalizedSmallThumbnailURL: %@\nlocalizedLargeThumbnailURL: %@", v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v5, v6, [(PCMotionBundle *)self localizedVersion], [(PCMotionBundle *)self localizedName], [(PCMotionBundle *)self localizedCategory], [(PCMotionBundle *)self localizedTheme], [(PCMotionBundle *)self localizedSmallThumbnailURL], [(PCMotionBundle *)self localizedLargeThumbnailURL]];
}

@end