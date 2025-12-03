@interface PFUniformTypeUtilities
+ (BOOL)filenameExtension:(id)extension conformsToOneOfTypes:(id)types;
+ (BOOL)type:(id)type conformsToOneOfTypes:(id)types;
+ (BOOL)url:(id)url conformsToOneOfTypes:(id)types;
+ (BOOL)url:(id)url conformsToType:(id)type;
+ (NSArray)imageTypesNotWellSupportedForSharing;
+ (NSArray)imageTypesUnsupportedForImport;
+ (NSArray)supportedAudioTypes;
+ (NSArray)supportedImageTypes;
+ (NSArray)supportedMovieTypes;
+ (NSArray)typesSupportedForImport;
+ (UTType)adobeIllustratorType;
+ (UTType)adobePhotoshopType;
+ (UTType)apertureLibraryType;
+ (UTType)avifType;
+ (UTType)canonCR2RAWImageType;
+ (UTType)canonCRWRAWImageType;
+ (UTType)canonTIFFRAWImageType;
+ (UTType)fujiRAWImageType;
+ (UTType)hasselblad3FRRAWImageType;
+ (UTType)hasselbladFFFRAWImageType;
+ (UTType)heicSequenceType;
+ (UTType)iPhotoLibraryType;
+ (UTType)icoType;
+ (UTType)jpeg2000Type;
+ (UTType)jpegXLType;
+ (UTType)leafamericaRAWImageType;
+ (UTType)livePhotoBundlePrivateType;
+ (UTType)livePhotoBundleType;
+ (UTType)macPaintType;
+ (UTType)nikonRAWImageType;
+ (UTType)olympusRAWImageType;
+ (UTType)openEXRImageType;
+ (UTType)panasonicRAWImageType;
+ (UTType)panasonicRW2RAWImageType;
+ (UTType)pentaxRAWImageType;
+ (UTType)photosLibraryType;
+ (UTType)pictType;
+ (UTType)quicktimeImageType;
+ (UTType)samsungRAWImageType;
+ (UTType)sonyARWRAWImageType;
+ (UTType)supplementalResourceAAEType;
+ (UTType)supplementalResourceXMPType;
+ (id)preferredOrFallbackFilenameExtensionForType:(id)type fallbackIdentifier:(id)identifier;
+ (id)resourceModelTypeForFilenameExtension:(id)extension;
+ (id)typeForFilenameExtensionOrLastPathComponent:(id)component;
+ (id)typeForURL:(id)l error:(id *)error;
+ (id)typeWithFilenameExtension:(id)extension;
+ (id)typeWithFilenameExtension:(id)extension conformingToType:(id)type;
+ (id)typeWithIdentifier:(id)identifier;
@end

@implementation PFUniformTypeUtilities

+ (NSArray)imageTypesNotWellSupportedForSharing
{
  if (imageTypesNotWellSupportedForSharing_onceToken[0] != -1)
  {
    dispatch_once(imageTypesNotWellSupportedForSharing_onceToken, &__block_literal_global_200);
  }

  v3 = imageTypesNotWellSupportedForSharing_notWellSupportedTypes;

  return v3;
}

void __62__PFUniformTypeUtilities_imageTypesNotWellSupportedForSharing__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6983138];
  v0 = +[PFUniformTypeUtilities avifType];
  v5[1] = v0;
  v1 = +[PFUniformTypeUtilities jpegXLType];
  v5[2] = v1;
  v2 = +[PFUniformTypeUtilities openEXRImageType];
  v5[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v4 = imageTypesNotWellSupportedForSharing_notWellSupportedTypes;
  imageTypesNotWellSupportedForSharing_notWellSupportedTypes = v3;
}

+ (NSArray)imageTypesUnsupportedForImport
{
  if (imageTypesUnsupportedForImport_onceToken[0] != -1)
  {
    dispatch_once(imageTypesUnsupportedForImport_onceToken, &__block_literal_global_195_2105);
  }

  v3 = imageTypesUnsupportedForImport_unsupportedTypes;

  return v3;
}

void __56__PFUniformTypeUtilities_imageTypesUnsupportedForImport__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = +[PFUniformTypeUtilities quicktimeImageType];
  v1 = +[PFUniformTypeUtilities pictType];
  v8[1] = v1;
  v2 = +[PFUniformTypeUtilities icoType];
  v8[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:@"FPX"];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = [v4 copy];
  v7 = imageTypesUnsupportedForImport_unsupportedTypes;
  imageTypesUnsupportedForImport_unsupportedTypes = v6;
}

+ (NSArray)supportedAudioTypes
{
  if (supportedAudioTypes_onceToken != -1)
  {
    dispatch_once(&supportedAudioTypes_onceToken, &__block_literal_global_193);
  }

  v3 = supportedAudioTypes_supportedTypes;

  return v3;
}

void __45__PFUniformTypeUtilities_supportedAudioTypes__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6988168] audiovisualTypes];
  v1 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x1E6982CD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:{*(*(&v11 + 1) + 8 * v7), v11}];
        if ([v8 conformsToType:v6])
        {
          [v1 addObject:v8];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [v1 copy];
  v10 = supportedAudioTypes_supportedTypes;
  supportedAudioTypes_supportedTypes = v9;
}

+ (NSArray)supportedMovieTypes
{
  if (supportedMovieTypes_onceToken[0] != -1)
  {
    dispatch_once(supportedMovieTypes_onceToken, &__block_literal_global_190);
  }

  v3 = supportedMovieTypes_supportedMovieTypes;

  return v3;
}

void __45__PFUniformTypeUtilities_supportedMovieTypes__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E6988168] audiovisualTypes];
  v1 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x1E6982EE8];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:{*(*(&v11 + 1) + 8 * v7), v11}];
        if ([v8 conformsToType:v6])
        {
          [v1 addObject:v8];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = [v1 copy];
  v10 = supportedMovieTypes_supportedMovieTypes;
  supportedMovieTypes_supportedMovieTypes = v9;
}

+ (NSArray)supportedImageTypes
{
  if (supportedImageTypes_onceToken != -1)
  {
    dispatch_once(&supportedImageTypes_onceToken, &__block_literal_global_187);
  }

  v3 = supportedImageTypes_supportedImageTypes;

  return v3;
}

void __45__PFUniformTypeUtilities_supportedImageTypes__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E6982E30];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = supportedImageTypes_supportedImageTypes;
  supportedImageTypes_supportedImageTypes = v0;
}

+ (id)typeForFilenameExtensionOrLastPathComponent:(id)component
{
  if (component)
  {
    componentCopy = component;
    pathExtension = [componentCopy pathExtension];
    if ([pathExtension isEqualToString:&stru_1F2A8EB68])
    {
      v5 = componentCopy;
    }

    else
    {
      v5 = pathExtension;
    }

    v6 = v5;

    v7 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (NSArray)typesSupportedForImport
{
  if (typesSupportedForImport_onceToken != -1)
  {
    dispatch_once(&typesSupportedForImport_onceToken, &__block_literal_global_181);
  }

  v3 = typesSupportedForImport_supportedTypes;

  return v3;
}

void __49__PFUniformTypeUtilities_typesSupportedForImport__block_invoke()
{
  v0 = MEMORY[0x1E695DF70];
  v1 = +[PFUniformTypeUtilities supportedImageTypes];
  v6 = [v0 arrayWithArray:v1];

  v2 = +[PFUniformTypeUtilities supportedMovieTypes];
  [v6 addObjectsFromArray:v2];

  v3 = +[PFUniformTypeUtilities supportedAudioTypes];
  [v6 addObjectsFromArray:v3];

  v4 = [v6 copy];
  v5 = typesSupportedForImport_supportedTypes;
  typesSupportedForImport_supportedTypes = v4;
}

+ (id)typeForURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v14 = 0;
  v6 = *MEMORY[0x1E695DAA0];
  v13 = 0;
  v7 = [lCopy getResourceValue:&v14 forKey:v6 error:&v13];
  v8 = v14;
  v9 = v13;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    path = [lCopy path];
    *buf = 138412546;
    v16 = path;
    v17 = 2112;
    v18 = v9;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to get NSURLContentTypeKey resource value for %@: %@", buf, 0x16u);

    if (error)
    {
LABEL_4:
      v10 = v9;
      *error = v9;
    }
  }

LABEL_5:

  return v8;
}

+ (id)resourceModelTypeForFilenameExtension:(id)extension
{
  extensionCopy = extension;
  v4 = extensionCopy;
  if (!extensionCopy)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_10;
  }

  if ([extensionCopy caseInsensitiveCompare:@"xmp"])
  {
    if ([v4 caseInsensitiveCompare:@"aae"])
    {
      v5 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v4];
      if (![v5 isDynamic])
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    v6 = +[PFUniformTypeUtilities supplementalResourceAAEType];
  }

  else
  {
    v6 = +[PFUniformTypeUtilities supplementalResourceXMPType];
  }

  v5 = v6;
LABEL_10:

  return v5;
}

+ (BOOL)url:(id)url conformsToOneOfTypes:(id)types
{
  typesCopy = types;
  v7 = [self typeForURL:url error:0];
  v8 = v7 && ([self type:v7 conformsToOneOfTypes:typesCopy] & 1) != 0;

  return v8;
}

+ (BOOL)url:(id)url conformsToType:(id)type
{
  typeCopy = type;
  v7 = [self typeForURL:url error:0];
  LOBYTE(self) = [v7 conformsToType:typeCopy];

  return self;
}

+ (BOOL)filenameExtension:(id)extension conformsToOneOfTypes:(id)types
{
  typesCopy = types;
  v7 = [self typeForFilenameExtensionOrLastPathComponent:extension];
  LOBYTE(self) = [self type:v7 conformsToOneOfTypes:typesCopy];

  return self;
}

+ (BOOL)type:(id)type conformsToOneOfTypes:(id)types
{
  v16 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  typesCopy = types;
  v7 = [typesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(typesCopy);
        }

        if ([typeCopy conformsToType:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [typesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)preferredOrFallbackFilenameExtensionForType:(id)type fallbackIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  if (preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__onceToken == -1)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    identifier = [typeCopy identifier];
    v10 = identifier;
    if (identifier)
    {
      v11 = identifier;
    }

    else
    {
      v11 = identifierCopy;
    }

    v12 = v11;

    canonTIFFRAWImageIdentifier = [self canonTIFFRAWImageIdentifier];
    v14 = [v12 isEqualToString:canonTIFFRAWImageIdentifier];

    if (v14)
    {
      preferredFilenameExtension = @"tiff";
    }

    else
    {
      supplementalResourceAAEIdentifier = [self supplementalResourceAAEIdentifier];
      v16 = [v12 isEqualToString:supplementalResourceAAEIdentifier];

      if (v16)
      {
        preferredFilenameExtension = @"aae";
      }

      else
      {
        identifier2 = [*MEMORY[0x1E6982D60] identifier];
        v18 = [v12 isEqualToString:identifier2];

        if (v18)
        {
          preferredFilenameExtension = @"dat";
        }

        else
        {
          preferredFilenameExtension = 0;
        }
      }
    }

    goto LABEL_16;
  }

  dispatch_once(&preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__onceToken, &__block_literal_global_172);
  if (!typeCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  os_unfair_lock_lock(&preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sLock);
  preferredFilenameExtension = [preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sTypeToPreferredExtensionMap objectForKeyedSubscript:typeCopy];
  os_unfair_lock_unlock(&preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sLock);
  if (preferredFilenameExtension)
  {
    goto LABEL_19;
  }

  preferredFilenameExtension = [typeCopy preferredFilenameExtension];
  if (!preferredFilenameExtension)
  {
    goto LABEL_5;
  }

LABEL_16:
  if (typeCopy && preferredFilenameExtension)
  {
    os_unfair_lock_lock(&preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sLock);
    [preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sTypeToPreferredExtensionMap setObject:preferredFilenameExtension forKeyedSubscript:typeCopy];
    os_unfair_lock_unlock(&preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sLock);
  }

LABEL_19:

  return preferredFilenameExtension;
}

uint64_t __89__PFUniformTypeUtilities_preferredOrFallbackFilenameExtensionForType_fallbackIdentifier___block_invoke()
{
  preferredOrFallbackFilenameExtensionForType_fallbackIdentifier__sTypeToPreferredExtensionMap = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)typeWithFilenameExtension:(id)extension conformingToType:(id)type
{
  if (extension)
  {
    v5 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:extension conformingToType:type];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)typeWithFilenameExtension:(id)extension
{
  extensionCopy = extension;
  v4 = extensionCopy;
  if (typeWithFilenameExtension__onceToken == -1)
  {
    if (extensionCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  dispatch_once(&typeWithFilenameExtension__onceToken, &__block_literal_global_170);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  os_unfair_lock_lock(&typeWithFilenameExtension__sTypeWithExtensionCacheLock);
  v5 = [typeWithFilenameExtension__sTypeWithExtensionCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v4];
    if (v5)
    {
      [typeWithFilenameExtension__sTypeWithExtensionCache setObject:v5 forKeyedSubscript:v4];
    }
  }

  os_unfair_lock_unlock(&typeWithFilenameExtension__sTypeWithExtensionCacheLock);
LABEL_9:

  return v5;
}

uint64_t __52__PFUniformTypeUtilities_typeWithFilenameExtension___block_invoke()
{
  typeWithFilenameExtension__sTypeWithExtensionCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)typeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (typeWithIdentifier__onceToken == -1)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  dispatch_once(&typeWithIdentifier__onceToken, &__block_literal_global_167);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  os_unfair_lock_lock(&typeWithIdentifier__sTypeWithIdentifierCacheLock);
  v5 = [typeWithIdentifier__sTypeWithIdentifierCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:v4];
    if (v5)
    {
      [typeWithIdentifier__sTypeWithIdentifierCache setObject:v5 forKeyedSubscript:v4];
    }
  }

  os_unfair_lock_unlock(&typeWithIdentifier__sTypeWithIdentifierCacheLock);
LABEL_9:

  return v5;
}

uint64_t __45__PFUniformTypeUtilities_typeWithIdentifier___block_invoke()
{
  typeWithIdentifier__sTypeWithIdentifierCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)openEXRImageType
{
  if (openEXRImageType_onceToken != -1)
  {
    dispatch_once(&openEXRImageType_onceToken, &__block_literal_global_162);
  }

  v3 = openEXRImageType_type;

  return v3;
}

uint64_t __42__PFUniformTypeUtilities_openEXRImageType__block_invoke()
{
  openEXRImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.ilm.openexr-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)hasselbladFFFRAWImageType
{
  if (hasselbladFFFRAWImageType_onceToken != -1)
  {
    dispatch_once(&hasselbladFFFRAWImageType_onceToken, &__block_literal_global_157);
  }

  v3 = hasselbladFFFRAWImageType_type;

  return v3;
}

uint64_t __51__PFUniformTypeUtilities_hasselbladFFFRAWImageType__block_invoke()
{
  hasselbladFFFRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.hasselblad.fff-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)hasselblad3FRRAWImageType
{
  if (hasselblad3FRRAWImageType_onceToken[0] != -1)
  {
    dispatch_once(hasselblad3FRRAWImageType_onceToken, &__block_literal_global_152);
  }

  v3 = hasselblad3FRRAWImageType_type;

  return v3;
}

uint64_t __51__PFUniformTypeUtilities_hasselblad3FRRAWImageType__block_invoke()
{
  hasselblad3FRRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.hasselblad.3fr-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)leafamericaRAWImageType
{
  if (leafamericaRAWImageType_onceToken != -1)
  {
    dispatch_once(&leafamericaRAWImageType_onceToken, &__block_literal_global_147);
  }

  v3 = leafamericaRAWImageType_type;

  return v3;
}

uint64_t __49__PFUniformTypeUtilities_leafamericaRAWImageType__block_invoke()
{
  leafamericaRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.leafamerica.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)fujiRAWImageType
{
  if (fujiRAWImageType_onceToken[0] != -1)
  {
    dispatch_once(fujiRAWImageType_onceToken, &__block_literal_global_142);
  }

  v3 = fujiRAWImageType_type;

  return v3;
}

uint64_t __42__PFUniformTypeUtilities_fujiRAWImageType__block_invoke()
{
  fujiRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.fuji.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)samsungRAWImageType
{
  if (samsungRAWImageType_onceToken != -1)
  {
    dispatch_once(&samsungRAWImageType_onceToken, &__block_literal_global_137);
  }

  v3 = samsungRAWImageType_type;

  return v3;
}

uint64_t __45__PFUniformTypeUtilities_samsungRAWImageType__block_invoke()
{
  samsungRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.samsung.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)nikonRAWImageType
{
  if (nikonRAWImageType_onceToken != -1)
  {
    dispatch_once(&nikonRAWImageType_onceToken, &__block_literal_global_132);
  }

  v3 = nikonRAWImageType_type;

  return v3;
}

uint64_t __43__PFUniformTypeUtilities_nikonRAWImageType__block_invoke()
{
  nikonRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.nikon.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)pentaxRAWImageType
{
  if (pentaxRAWImageType_onceToken != -1)
  {
    dispatch_once(&pentaxRAWImageType_onceToken, &__block_literal_global_127);
  }

  v3 = pentaxRAWImageType_type;

  return v3;
}

uint64_t __44__PFUniformTypeUtilities_pentaxRAWImageType__block_invoke()
{
  pentaxRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.pentax.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)panasonicRAWImageType
{
  if (panasonicRAWImageType_onceToken[0] != -1)
  {
    dispatch_once(panasonicRAWImageType_onceToken, &__block_literal_global_122);
  }

  v3 = panasonicRAWImageType_type;

  return v3;
}

uint64_t __47__PFUniformTypeUtilities_panasonicRAWImageType__block_invoke()
{
  panasonicRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.panasonic.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)panasonicRW2RAWImageType
{
  if (panasonicRW2RAWImageType_onceToken != -1)
  {
    dispatch_once(&panasonicRW2RAWImageType_onceToken, &__block_literal_global_117);
  }

  v3 = panasonicRW2RAWImageType_type;

  return v3;
}

uint64_t __50__PFUniformTypeUtilities_panasonicRW2RAWImageType__block_invoke()
{
  panasonicRW2RAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.panasonic.rw2-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)olympusRAWImageType
{
  if (olympusRAWImageType_onceToken[0] != -1)
  {
    dispatch_once(olympusRAWImageType_onceToken, &__block_literal_global_112);
  }

  v3 = olympusRAWImageType_type;

  return v3;
}

uint64_t __45__PFUniformTypeUtilities_olympusRAWImageType__block_invoke()
{
  olympusRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.olympus.raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)canonTIFFRAWImageType
{
  if (canonTIFFRAWImageType_onceToken != -1)
  {
    dispatch_once(&canonTIFFRAWImageType_onceToken, &__block_literal_global_107);
  }

  v3 = canonTIFFRAWImageType_type;

  return v3;
}

uint64_t __47__PFUniformTypeUtilities_canonTIFFRAWImageType__block_invoke()
{
  canonTIFFRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.canon.tif-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)canonCRWRAWImageType
{
  if (canonCRWRAWImageType_onceToken != -1)
  {
    dispatch_once(&canonCRWRAWImageType_onceToken, &__block_literal_global_102);
  }

  v3 = canonCRWRAWImageType_type;

  return v3;
}

uint64_t __46__PFUniformTypeUtilities_canonCRWRAWImageType__block_invoke()
{
  canonCRWRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.canon.crw-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)canonCR2RAWImageType
{
  if (canonCR2RAWImageType_onceToken[0] != -1)
  {
    dispatch_once(canonCR2RAWImageType_onceToken, &__block_literal_global_97);
  }

  v3 = canonCR2RAWImageType_type;

  return v3;
}

uint64_t __46__PFUniformTypeUtilities_canonCR2RAWImageType__block_invoke()
{
  canonCR2RAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.canon.cr2-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)sonyARWRAWImageType
{
  if (sonyARWRAWImageType_onceToken != -1)
  {
    dispatch_once(&sonyARWRAWImageType_onceToken, &__block_literal_global_92);
  }

  v3 = sonyARWRAWImageType_type;

  return v3;
}

uint64_t __45__PFUniformTypeUtilities_sonyARWRAWImageType__block_invoke()
{
  sonyARWRAWImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.sony.arw-raw-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)jpegXLType
{
  if (jpegXLType_onceToken[0] != -1)
  {
    dispatch_once(jpegXLType_onceToken, &__block_literal_global_87);
  }

  v3 = jpegXLType_type;

  return v3;
}

uint64_t __36__PFUniformTypeUtilities_jpegXLType__block_invoke()
{
  jpegXLType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.jpeg-xl"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)jpeg2000Type
{
  if (jpeg2000Type_onceToken[0] != -1)
  {
    dispatch_once(jpeg2000Type_onceToken, &__block_literal_global_82);
  }

  v3 = jpeg2000Type_type;

  return v3;
}

uint64_t __38__PFUniformTypeUtilities_jpeg2000Type__block_invoke()
{
  jpeg2000Type_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.jpeg-2000"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)macPaintType
{
  if (macPaintType_onceToken != -1)
  {
    dispatch_once(&macPaintType_onceToken, &__block_literal_global_77);
  }

  v3 = macPaintType_type;

  return v3;
}

uint64_t __38__PFUniformTypeUtilities_macPaintType__block_invoke()
{
  macPaintType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.macpaint-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)icoType
{
  if (icoType_onceToken != -1)
  {
    dispatch_once(&icoType_onceToken, &__block_literal_global_72);
  }

  v3 = icoType_type;

  return v3;
}

uint64_t __33__PFUniformTypeUtilities_icoType__block_invoke()
{
  icoType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.microsoft.ico"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)quicktimeImageType
{
  if (quicktimeImageType_onceToken != -1)
  {
    dispatch_once(&quicktimeImageType_onceToken, &__block_literal_global_67);
  }

  v3 = quicktimeImageType_type;

  return v3;
}

uint64_t __44__PFUniformTypeUtilities_quicktimeImageType__block_invoke()
{
  quicktimeImageType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.quicktime-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)pictType
{
  if (pictType_onceToken != -1)
  {
    dispatch_once(&pictType_onceToken, &__block_literal_global_62);
  }

  v3 = pictType_type;

  return v3;
}

uint64_t __34__PFUniformTypeUtilities_pictType__block_invoke()
{
  pictType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.pict"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)heicSequenceType
{
  if (heicSequenceType_onceToken != -1)
  {
    dispatch_once(&heicSequenceType_onceToken, &__block_literal_global_57);
  }

  v3 = heicSequenceType_type;

  return v3;
}

uint64_t __42__PFUniformTypeUtilities_heicSequenceType__block_invoke()
{
  heicSequenceType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.heics"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)avifType
{
  if (avifType_onceToken[0] != -1)
  {
    dispatch_once(avifType_onceToken, &__block_literal_global_52);
  }

  v3 = avifType_type;

  return v3;
}

uint64_t __34__PFUniformTypeUtilities_avifType__block_invoke()
{
  avifType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.avif"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)livePhotoBundlePrivateType
{
  if (livePhotoBundlePrivateType_onceToken != -1)
  {
    dispatch_once(&livePhotoBundlePrivateType_onceToken, &__block_literal_global_47);
  }

  v3 = livePhotoBundlePrivateType_type;

  return v3;
}

uint64_t __52__PFUniformTypeUtilities_livePhotoBundlePrivateType__block_invoke()
{
  livePhotoBundlePrivateType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.private.live-photo-bundle"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)livePhotoBundleType
{
  if (livePhotoBundleType_onceToken[0] != -1)
  {
    dispatch_once(livePhotoBundleType_onceToken, &__block_literal_global_42);
  }

  v3 = livePhotoBundleType_type;

  return v3;
}

uint64_t __45__PFUniformTypeUtilities_livePhotoBundleType__block_invoke()
{
  livePhotoBundleType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.live-photo-bundle"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)supplementalResourceAAEType
{
  if (supplementalResourceAAEType_onceToken != -1)
  {
    dispatch_once(&supplementalResourceAAEType_onceToken, &__block_literal_global_37);
  }

  v3 = supplementalResourceAAEType_type;

  return v3;
}

uint64_t __53__PFUniformTypeUtilities_supplementalResourceAAEType__block_invoke()
{
  supplementalResourceAAEType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.photos.apple-adjustment-envelope"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)supplementalResourceXMPType
{
  if (supplementalResourceXMPType_onceToken[0] != -1)
  {
    dispatch_once(supplementalResourceXMPType_onceToken, &__block_literal_global_32);
  }

  v3 = supplementalResourceXMPType_type;

  return v3;
}

uint64_t __53__PFUniformTypeUtilities_supplementalResourceXMPType__block_invoke()
{
  supplementalResourceXMPType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"public.data"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)adobeIllustratorType
{
  if (adobeIllustratorType_onceToken != -1)
  {
    dispatch_once(&adobeIllustratorType_onceToken, &__block_literal_global_27);
  }

  v3 = adobeIllustratorType_type;

  return v3;
}

uint64_t __46__PFUniformTypeUtilities_adobeIllustratorType__block_invoke()
{
  adobeIllustratorType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.illustrator.ai-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)adobePhotoshopType
{
  if (adobePhotoshopType_onceToken[0] != -1)
  {
    dispatch_once(adobePhotoshopType_onceToken, &__block_literal_global_22);
  }

  v3 = adobePhotoshopType_type;

  return v3;
}

uint64_t __44__PFUniformTypeUtilities_adobePhotoshopType__block_invoke()
{
  adobePhotoshopType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.photoshop-image"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)apertureLibraryType
{
  if (apertureLibraryType_onceToken != -1)
  {
    dispatch_once(&apertureLibraryType_onceToken, &__block_literal_global_17);
  }

  v3 = apertureLibraryType_type;

  return v3;
}

uint64_t __45__PFUniformTypeUtilities_apertureLibraryType__block_invoke()
{
  apertureLibraryType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.aperture.library"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)iPhotoLibraryType
{
  if (iPhotoLibraryType_onceToken != -1)
  {
    dispatch_once(&iPhotoLibraryType_onceToken, &__block_literal_global_12);
  }

  v3 = iPhotoLibraryType_type;

  return v3;
}

uint64_t __43__PFUniformTypeUtilities_iPhotoLibraryType__block_invoke()
{
  iPhotoLibraryType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.photo.library"];

  return MEMORY[0x1EEE66BB8]();
}

+ (UTType)photosLibraryType
{
  if (photosLibraryType_onceToken != -1)
  {
    dispatch_once(&photosLibraryType_onceToken, &__block_literal_global_2203);
  }

  v3 = photosLibraryType_type;

  return v3;
}

uint64_t __43__PFUniformTypeUtilities_photosLibraryType__block_invoke()
{
  photosLibraryType_type = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.apple.photos.library"];

  return MEMORY[0x1EEE66BB8]();
}

@end