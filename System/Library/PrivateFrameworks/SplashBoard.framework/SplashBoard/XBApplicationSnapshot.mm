@interface XBApplicationSnapshot
+ (CGImage)_createCGImageWithPreferredOptions:(id)options fromCGImage:(CGImage *)image;
+ (NSSet)secureCodableCustomExtendedDataClasses;
+ (id)_allSecureCodingClassesIncludingDefaultAndClientSpecified;
+ (id)dataForImage:(id)image withFormat:(int64_t)format;
+ (id)normalizeSnapshotName:(id)name;
+ (void)setSecureCodableCustomExtendedDataClasses:(id)classes;
- (BOOL)_generateImageIfPossible;
- (BOOL)_hasGenerationContext;
- (BOOL)_isInvalidated;
- (BOOL)_path:(id)_path isRelativeToPath:(id)path outRelativePath:(id *)relativePath;
- (BOOL)_shouldDeleteFileOnPurge:(id *)purge;
- (BOOL)_synchronized_hasCachedImage:(id *)image;
- (BOOL)_synchronized_isExpired;
- (BOOL)_validateWithContainerIdentity:(id)identity;
- (BOOL)fileExists;
- (BOOL)hasCachedImage;
- (BOOL)hasFullSizedContent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (BOOL)isValidWithReason:(id *)reason;
- (CGAffineTransform)imageTransform;
- (CGRect)_referenceBounds;
- (CGRect)contentFrame;
- (CGSize)naturalSize;
- (CGSize)referenceSize;
- (NSDate)expirationDate;
- (NSString)_sortableLaunchInterfaceIdentifier;
- (NSString)_sortableName;
- (NSString)_sortableRequiredOSVersion;
- (NSString)_sortableScheme;
- (NSString)filename;
- (NSString)logIdentifier;
- (NSString)path;
- (XBApplicationSnapshot)init;
- (XBApplicationSnapshot)initWithCoder:(id)coder;
- (XBStatusBarSettings)_sortableStatusBarSettings;
- (id)_cachedImage;
- (id)_configureDefaultPathWithinGroupForFormat:(int64_t)format;
- (id)_createVariantWithIdentifier:(id)identifier;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix includeVariants:(BOOL)variants;
- (id)_determineRelativePathForPath:(id)path location:(int64_t *)location;
- (id)_initWithContainerIdentity:(id)identity store:(id)store groupID:(id)d generationContext:(id)context;
- (id)_sanitizedPathForPath:(id)path;
- (id)cachedImageForInterfaceOrientation:(int64_t)orientation;
- (id)descriptionForStateCaptureWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithoutVariants;
- (id)imageForInterfaceOrientation:(int64_t)orientation generationOptions:(unint64_t)options;
- (id)imageGenerator;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)_beginPreHeatImageAccess;
- (void)_cacheImage:(id)image;
- (void)_commonInitWithIdentifier:(id)identifier;
- (void)_configureWithPath:(id)path;
- (void)_endPreHeatImageAccess;
- (void)_invalidate;
- (void)_locked_loadImageViaGenerationContext:(id)context options:(unint64_t)options;
- (void)_locked_loadImageViaGeneratorFunction:(id)function;
- (void)_locked_synchronized_loadImageViaFile;
- (void)_manifestQueueDecode_setStore:(id)store;
- (void)_purgeCachedImageIfAppropriate:(BOOL)appropriate;
- (void)_setHasProtectedContent:(BOOL)content;
- (void)_setPath:(id)path;
- (void)_setRelativePath:(id)path;
- (void)_synchronized_evaluateImageAccessUntilExpirationEnablingIfNecessary:(BOOL)necessary;
- (void)beginImageAccess;
- (void)beginImageAccessUntilExpiration;
- (void)clearImageGenerator;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)endImageAccess;
- (void)loadImageForPreHeat;
- (void)loadImageWithGenerationOptions:(unint64_t)options;
- (void)setContentFrame:(CGRect)frame;
- (void)setExpirationDate:(id)date;
- (void)setImageGeneratingByProvider:(id)provider withBlockingImageGenerator:(id)generator;
- (void)setImageTransform:(CGAffineTransform *)transform;
- (void)setReferenceSize:(CGSize)size;
- (void)willDeleteVariant:(id)variant;
@end

@implementation XBApplicationSnapshot

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isExpired
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _synchronized_isExpired = [(XBApplicationSnapshot *)selfCopy _synchronized_isExpired];
  objc_sync_exit(selfCopy);

  return _synchronized_isExpired;
}

- (BOOL)hasCachedImage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(XBApplicationSnapshot *)selfCopy _synchronized_hasCachedImage:0];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)_synchronized_isExpired
{
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    LODWORD(expirationDate) = [(NSDate *)expirationDate isAfterDate:date]^ 1;
  }

  return expirationDate;
}

- (BOOL)_hasGenerationContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_generationContext != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)imageGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x26D67C6A0](selfCopy->_imageGenerator);
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)fileExists
{
  v14 = *MEMORY[0x277D85DE8];
  path = [(XBApplicationSnapshot *)self path];
  if (!path)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:path];

  if ((v5 & 1) == 0)
  {
    v7 = XBLogSnapshot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      logIdentifier = [(XBApplicationSnapshot *)self logIdentifier];
      v10 = 138543618;
      v11 = logIdentifier;
      v12 = 2114;
      v13 = path;
      _os_log_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_INFO, "%{public}@ we have a path but it doesn't exist: %{public}@", &v10, 0x16u);
    }

    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (NSString)path
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_path copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)_sortableName
{
  name = [(XBApplicationSnapshot *)self name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = FAKE_NIL_PTR();
  }

  v5 = v4;

  return v5;
}

- (NSString)_sortableScheme
{
  scheme = [(XBApplicationSnapshot *)self scheme];
  v3 = scheme;
  if (scheme)
  {
    v4 = scheme;
  }

  else
  {
    v4 = FAKE_NIL_PTR();
  }

  v5 = v4;

  return v5;
}

- (CGRect)contentFrame
{
  if (CGRectEqualToRect(self->_contentFrame, *MEMORY[0x277CBF3A0]))
  {
    [(XBApplicationSnapshot *)self _referenceBounds];
  }

  else
  {
    x = self->_contentFrame.origin.x;
    y = self->_contentFrame.origin.y;
    width = self->_contentFrame.size.width;
    height = self->_contentFrame.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_referenceBounds
{
  MEMORY[0x282143A68](self->_referenceSize.width, self->_referenceSize.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)beginImageAccess
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_imageAccessCount;
  objc_sync_exit(obj);
}

- (void)_locked_synchronized_loadImageViaFile
{
  OUTLINED_FUNCTION_4_0();
  logIdentifier = [v1 logIdentifier];
  v9 = [v0 description];
  OUTLINED_FUNCTION_5(&dword_26B5EF000, v3, v4, "Loading image failed file load for %{public}@ : %{public}@", v5, v6, v7, v8, 2u);
}

- (void)clearImageGenerator
{
  obj = self;
  objc_sync_enter(obj);
  imageGenerator = obj->_imageGenerator;
  obj->_imageGenerator = 0;

  dataProviderClassName = obj->_dataProviderClassName;
  obj->_dataProviderClassName = 0;

  objc_sync_exit(obj);
}

- (id)_cachedImage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedImage = selfCopy->_cachedImage;
  if (cachedImage)
  {
    v4 = cachedImage;
  }

  objc_sync_exit(selfCopy);

  return cachedImage;
}

- (void)endImageAccess
{
  obj = self;
  objc_sync_enter(obj);
  v3 = obj;
  imageAccessCount = obj->_imageAccessCount;
  if (!imageAccessCount)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:obj file:@"XBApplicationSnapshot.m" lineNumber:807 description:{@"Invalid parameter not satisfying: %@", @"_imageAccessCount != 0"}];

    v3 = obj;
    imageAccessCount = obj->_imageAccessCount;
  }

  v3->_imageAccessCount = imageAccessCount - 1;
  [(XBApplicationSnapshot *)v3 _purgeCachedImageIfAppropriate:0];
  objc_sync_exit(obj);
}

- (NSString)logIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_logContainerIdentifierDirty)
  {
    containerIdentity = [(XBApplicationSnapshot *)selfCopy containerIdentity];
    v4 = containerIdentity;
    baseLogIdentifier = selfCopy->_baseLogIdentifier;
    if (containerIdentity)
    {
      bundleIdentifier = [containerIdentity bundleIdentifier];
      v7 = [(NSString *)baseLogIdentifier stringByAppendingFormat:@" [%@]", bundleIdentifier];
      logIdentifier = selfCopy->_logIdentifier;
      selfCopy->_logIdentifier = v7;
    }

    else
    {
      v9 = baseLogIdentifier;
      bundleIdentifier = selfCopy->_logIdentifier;
      selfCopy->_logIdentifier = v9;
    }

    selfCopy->_logContainerIdentifierDirty = 0;
  }

  v10 = selfCopy->_logIdentifier;
  objc_sync_exit(selfCopy);

  return v10;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_identifier];
  v5 = [v4 appendObject:self->_variantID];
  v6 = [v5 appendObject:self->_groupID];
  v7 = [v6 hash];

  return v7;
}

+ (id)_allSecureCodingClassesIncludingDefaultAndClientSpecified
{
  v2 = MEMORY[0x277CBEB58];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  if (__clientSpecifiedSecureCodableCustomExtendedDataClasses)
  {
    v13 = __clientSpecifiedSecureCodableCustomExtendedDataClasses;
  }

  else
  {
    v13 = [MEMORY[0x277CBEB98] set];
  }

  v14 = v13;
  [v12 unionSet:v13];

  return v12;
}

- (NSString)filename
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_filename copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (XBStatusBarSettings)_sortableStatusBarSettings
{
  statusBarSettings = [(XBApplicationSnapshot *)self statusBarSettings];
  v3 = statusBarSettings;
  if (statusBarSettings)
  {
    v4 = statusBarSettings;
  }

  else
  {
    v4 = FAKE_NIL_PTR();
  }

  v5 = v4;

  return v5;
}

+ (id)normalizeSnapshotName:(id)name
{
  stringByDeletingPathExtension = [name stringByDeletingPathExtension];
  v4 = stringByDeletingPathExtension;
  if (stringByDeletingPathExtension)
  {
    pathExtension = [stringByDeletingPathExtension pathExtension];
    v6 = [pathExtension caseInsensitiveCompare:@"png"];

    if (!v6)
    {
      stringByDeletingPathExtension2 = [v4 stringByDeletingPathExtension];

      v4 = stringByDeletingPathExtension2;
    }
  }

  if ([v4 isEqualToString:@"Default"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D76628]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (void)_commonInitWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  hasProtectedContent = self->_hasProtectedContent;
  self->_hasProtectedContent = v5;

  self->_logContainerIdentifierDirty = 1;
  self->_loadImageLock._os_unfair_lock_opaque = 0;
  v7 = [identifierCopy copy];

  identifier = self->_identifier;
  self->_identifier = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  variantsByID = self->_variantsByID;
  self->_variantsByID = v9;

  self->_logContainerIdentifierDirty = 1;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v17 = NSStringFromClass(v12);
  v13 = [(NSString *)self->_identifier componentsSeparatedByString:@"-"];
  lastObject = [v13 lastObject];
  v15 = [v11 stringWithFormat:@"<%@: %p …%@>", v17, self, lastObject];;
  baseLogIdentifier = self->_baseLogIdentifier;
  self->_baseLogIdentifier = v15;
}

- (XBApplicationSnapshot)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshot.m" lineNumber:258 description:@"don't do that"];

  return [(XBApplicationSnapshot *)self _initWithContainerIdentity:0 store:0 groupID:0 generationContext:0];
}

- (id)_initWithContainerIdentity:(id)identity store:(id)store groupID:(id)d generationContext:(id)context
{
  identityCopy = identity;
  storeCopy = store;
  dCopy = d;
  contextCopy = context;
  if (identityCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [XBApplicationSnapshot _initWithContainerIdentity:store:groupID:generationContext:];
    if (dCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [XBApplicationSnapshot _initWithContainerIdentity:store:groupID:generationContext:];
  if (!storeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (dCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [XBApplicationSnapshot _initWithContainerIdentity:store:groupID:generationContext:];
LABEL_4:
  v24.receiver = self;
  v24.super_class = XBApplicationSnapshot;
  v14 = [(XBApplicationSnapshot *)&v24 init];
  if (v14)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(XBApplicationSnapshot *)v14 _commonInitWithIdentifier:uUIDString];

    v17 = [identityCopy copy];
    containerIdentity = v14->_containerIdentity;
    v14->_containerIdentity = v17;

    objc_storeStrong(&v14->_store, store);
    v19 = [dCopy copy];
    groupID = v14->_groupID;
    v14->_groupID = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    creationDate = v14->_creationDate;
    v14->_creationDate = v21;

    v14->_imageScale = 0.0;
    v14->_imageOrientation = 0;
    v14->_interfaceOrientation = 0;
    v14->_userInterfaceStyle = 0;
    v14->_imageOpaque = 1;
    objc_storeStrong(&v14->_generationContext, context);
    v14->_fileFormat = -1;
  }

  return v14;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_imageAccessCount == 0" object:? file:? lineNumber:? description:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __33__XBApplicationSnapshot_isEqual___block_invoke;
    v16[3] = &unk_279CF9698;
    v16[4] = self;
    v17 = equalCopy;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __33__XBApplicationSnapshot_isEqual___block_invoke_2;
    v14[3] = &unk_279CF9698;
    v14[4] = self;
    v6 = v17;
    v15 = v6;
    v7 = MEMORY[0x26D67C6A0](v14);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__XBApplicationSnapshot_isEqual___block_invoke_3;
    v12[3] = &unk_279CF9698;
    v12[4] = self;
    v13 = v6;
    v8 = MEMORY[0x26D67C6A0](v12);
    v9 = [v5 appendEqualsBlocks:{v16, v7, v8, 0}];
    v10 = [v9 isEqual];
  }

  return v10;
}

uint64_t __33__XBApplicationSnapshot_isEqual___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 40) identifier];
  v2 = BSEqualStrings();

  return v2;
}

uint64_t __33__XBApplicationSnapshot_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 40) variantID];
  v2 = BSEqualStrings();

  return v2;
}

uint64_t __33__XBApplicationSnapshot_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 40) groupID];
  v2 = BSEqualStrings();

  return v2;
}

+ (NSSet)secureCodableCustomExtendedDataClasses
{
  v2 = [__clientSpecifiedSecureCodableCustomExtendedDataClasses copy];

  return v2;
}

+ (void)setSecureCodableCustomExtendedDataClasses:(id)classes
{
  v16 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [classesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(classesCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 conformsToProtocol:&unk_287C27760] & 1) == 0)
        {
          +[XBApplicationSnapshot setSecureCodableCustomExtendedDataClasses:];
        }

        if (([v8 supportsSecureCoding] & 1) == 0)
        {
          +[XBApplicationSnapshot setSecureCodableCustomExtendedDataClasses:];
        }
      }

      v5 = [classesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [classesCopy copy];
  v10 = __clientSpecifiedSecureCodableCustomExtendedDataClasses;
  __clientSpecifiedSecureCodableCustomExtendedDataClasses = v9;
}

- (void)setExpirationDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_expirationDate != dateCopy)
  {
    if (dateCopy)
    {
      v7 = XBLogSnapshot();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        logIdentifier = [(XBApplicationSnapshot *)selfCopy logIdentifier];
        v10 = 138543618;
        v11 = logIdentifier;
        v12 = 2114;
        v13 = dateCopy;
        _os_log_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_INFO, "%{public}@ Set expiration date to %{public}@", &v10, 0x16u);
      }
    }

    else
    {
      v7 = XBLogSnapshot();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        logIdentifier2 = [(XBApplicationSnapshot *)selfCopy logIdentifier];
        v10 = 138543362;
        v11 = logIdentifier2;
        _os_log_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_INFO, "%{public}@ Clearing expiration date", &v10, 0xCu);
      }
    }

    objc_storeStrong(&selfCopy->_expirationDate, date);
  }

  [(XBApplicationSnapshot *)selfCopy _synchronized_evaluateImageAccessUntilExpirationEnablingIfNecessary:0];
  objc_sync_exit(selfCopy);
}

- (NSDate)expirationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_expirationDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_sanitizedPathForPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([pathCopy length])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileSystemRepresentationWithPath:pathCopy];

    v7 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:4];
  }

  else
  {
    v8 = XBLogSnapshot();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      logIdentifier = [(XBApplicationSnapshot *)self logIdentifier];
      v12 = 138543618;
      v13 = logIdentifier;
      v14 = 2114;
      v15 = pathCopy;
      _os_log_impl(&dword_26B5EF000, v8, OS_LOG_TYPE_INFO, "%{public}@ received an empty or nil path for _sanitizedPathForPath: %{public}@. That's weird.", &v12, 0x16u);
    }

    v7 = pathCopy;
  }

  v10 = v7;

  return v10;
}

- (void)_setPath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSString *)selfCopy->_path isEqualToString:pathCopy])
  {
    v6 = XBLogSnapshot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      logIdentifier = [(XBApplicationSnapshot *)selfCopy logIdentifier];
      v10 = 138543618;
      v11 = logIdentifier;
      v12 = 2114;
      v13 = pathCopy;
      _os_log_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_INFO, "%{public}@ Sanitizing new path before set %{public}@", &v10, 0x16u);
    }

    v8 = [(XBApplicationSnapshot *)selfCopy _sanitizedPathForPath:pathCopy];
    path = selfCopy->_path;
    selfCopy->_path = v8;
  }

  objc_sync_exit(selfCopy);
}

- (void)_setRelativePath:(id)path
{
  v14 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSString *)selfCopy->_relativePath isEqualToString:pathCopy])
  {
    v6 = XBLogSnapshot();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      logIdentifier = [(XBApplicationSnapshot *)selfCopy logIdentifier];
      v10 = 138543618;
      v11 = logIdentifier;
      v12 = 2114;
      v13 = pathCopy;
      _os_log_impl(&dword_26B5EF000, v6, OS_LOG_TYPE_INFO, "%{public}@ Sanitizing new relativePath before set %{public}@", &v10, 0x16u);
    }

    v8 = [(XBApplicationSnapshot *)selfCopy _sanitizedPathForPath:pathCopy];
    relativePath = selfCopy->_relativePath;
    selfCopy->_relativePath = v8;
  }

  objc_sync_exit(selfCopy);
}

- (CGSize)naturalSize
{
  v2 = 144;
  if ((self->_interfaceOrientation - 3) >= 2)
  {
    v3 = 144;
  }

  else
  {
    v3 = 152;
  }

  if ((self->_interfaceOrientation - 3) >= 2)
  {
    v2 = 152;
  }

  v4 = *(&self->super.isa + v2);
  v5 = *(&self->super.isa + v3);
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectEqualToRect(frame, *MEMORY[0x277CBF3A0]))
  {
    [XBApplicationSnapshot setContentFrame:];
  }

  self->_contentFrame.origin.x = x;
  self->_contentFrame.origin.y = y;
  self->_contentFrame.size.width = width;
  self->_contentFrame.size.height = height;
}

- (void)setReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (size.width == *MEMORY[0x277CBF3A8] && size.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [XBApplicationSnapshot setReferenceSize:];
  }

  self->_referenceSize.width = width;
  self->_referenceSize.height = height;
}

- (BOOL)hasFullSizedContent
{
  [(XBApplicationSnapshot *)self _referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(XBApplicationSnapshot *)self contentFrame];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v18 = CGRectIntersection(v17, v19);
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectEqualToRect(v18, *&v11);
}

- (void)willDeleteVariant:(id)variant
{
  variantCopy = variant;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_variantsByID allKeysForObject:variantCopy];
  [(NSMutableDictionary *)selfCopy->_variantsByID removeObjectsForKeys:v5];

  objc_sync_exit(selfCopy);
}

- (id)imageForInterfaceOrientation:(int64_t)orientation generationOptions:(unint64_t)options
{
  [(XBApplicationSnapshot *)self beginImageAccess];
  [(XBApplicationSnapshot *)self loadImageWithGenerationOptions:options];
  v7 = [(XBApplicationSnapshot *)self cachedImageForInterfaceOrientation:orientation];
  [(XBApplicationSnapshot *)self endImageAccess];

  return v7;
}

- (id)cachedImageForInterfaceOrientation:(int64_t)orientation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_cachedImage)
  {
    v5 = [[XBApplicationSnapshotImage alloc] initWithSnapshot:selfCopy interfaceOrientation:orientation];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)loadImageForPreHeat
{
  [(XBApplicationSnapshot *)self _beginPreHeatImageAccess];
  [(XBApplicationSnapshot *)self loadImage];
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__XBApplicationSnapshot_loadImageForPreHeat__block_invoke;
  block[3] = &unk_279CF9280;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)_locked_loadImageViaGenerationContext:(id)context options:(unint64_t)options
{
  optionsCopy = options;
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_loadImageLock);
  v7 = XBLogSnapshot();
  if (os_signpost_enabled(v7))
  {
    containerIdentity = [(XBApplicationSnapshot *)self containerIdentity];
    bundleIdentifier = [containerIdentity bundleIdentifier];
    *buf = 138543618;
    v26 = bundleIdentifier;
    v27 = 2114;
    v28 = @"generationContext";
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SnapshotImageLoading", "BundleIdOverride=%{public, signpost.description:attribute}@ imageSource=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", buf, 0x16u);
  }

  v10 = +[XBLaunchImageProvider sharedInstance];
  v24 = 0;
  v11 = [v10 createLaunchImageGeneratorWithContext:contextCopy asyncImageData:optionsCopy & 1 error:&v24];
  v12 = v24;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v11)
  {
    [(XBApplicationSnapshot *)selfCopy setExpirationDate:0];
    objc_sync_exit(selfCopy);

    v14 = XBLogCapture();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [XBApplicationSnapshot _locked_loadImageViaGenerationContext:selfCopy options:?];
    }

    (v11)[2](v11, selfCopy);
    p_super = XBLogCapture();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      [XBApplicationSnapshot _locked_loadImageViaGenerationContext:selfCopy options:?];
    }
  }

  else
  {
    generationContext = selfCopy->_generationContext;
    selfCopy->_generationContext = 0;

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [(XBApplicationSnapshot *)selfCopy setExpirationDate:distantPast];

    objc_sync_exit(selfCopy);
    p_super = &selfCopy->super;
  }

  v18 = selfCopy;
  objc_sync_enter(v18);
  v19 = v18->_generationContext;
  v18->_generationContext = 0;

  [(XBApplicationSnapshot *)v18 clearImageGenerator];
  objc_sync_exit(v18);

  if (v12 && ([v12 domain], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"XBLaunchStoryboardErrorDomain"), v20, v21))
  {
    code = [v12 code];
  }

  else
  {
    code = 0;
  }

  v23 = XBLogSnapshot();
  if (os_signpost_enabled(v23))
  {
    *buf = 134349056;
    v26 = code;
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SnapshotImageLoading", "error=%{public, signpost.telemetry:number1}zu enableTelemetry=YES ", buf, 0xCu);
  }
}

- (void)_locked_loadImageViaGeneratorFunction:(id)function
{
  v17 = *MEMORY[0x277D85DE8];
  functionCopy = function;
  os_unfair_lock_assert_owner(&self->_loadImageLock);
  v5 = XBLogSnapshot();
  if (os_signpost_enabled(v5))
  {
    containerIdentity = [(XBApplicationSnapshot *)self containerIdentity];
    bundleIdentifier = [containerIdentity bundleIdentifier];
    v13 = 138543618;
    v14 = bundleIdentifier;
    v15 = 2114;
    v16 = @"generatorFunction";
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SnapshotImageLoading", "BundleIdOverride=%{public, signpost.description:attribute}@ imageSource=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", &v13, 0x16u);
  }

  v8 = XBLogCapture();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshot _locked_loadImageViaGeneratorFunction:?];
  }

  functionCopy[2](functionCopy, self);
  v9 = XBLogCapture();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [XBApplicationSnapshot _locked_loadImageViaGeneratorFunction:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  generationContext = selfCopy->_generationContext;
  selfCopy->_generationContext = 0;

  [(XBApplicationSnapshot *)selfCopy clearImageGenerator];
  objc_sync_exit(selfCopy);

  v12 = XBLogSnapshot();
  if (os_signpost_enabled(v12))
  {
    v13 = 134349056;
    v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SnapshotImageLoading", "error=%{public, signpost.telemetry:number1}zu enableTelemetry=YES ", &v13, 0xCu);
  }
}

- (void)loadImageWithGenerationOptions:(unint64_t)options
{
  [(XBApplicationSnapshot *)self beginImageAccess];
  os_unfair_lock_assert_not_owner(&self->_loadImageLock);
  os_unfair_lock_lock(&self->_loadImageLock);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_cachedImage)
  {
    goto LABEL_2;
  }

  generationContext = selfCopy->_generationContext;
  if (generationContext)
  {
    v6 = generationContext;
    goto LABEL_5;
  }

  if (selfCopy->_path)
  {
    [(XBApplicationSnapshot *)selfCopy _locked_synchronized_loadImageViaFile];
LABEL_2:
    v6 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  if (!selfCopy->_imageGenerator)
  {
    goto LABEL_2;
  }

  v8 = MEMORY[0x26D67C6A0]();
  v6 = 0;
LABEL_6:
  objc_sync_exit(selfCopy);

  if (v6)
  {
    [(XBApplicationSnapshot *)selfCopy _locked_loadImageViaGenerationContext:v6 options:options];
  }

  else if (v8)
  {
    [(XBApplicationSnapshot *)selfCopy _locked_loadImageViaGeneratorFunction:v8];
  }

  os_unfair_lock_unlock(&self->_loadImageLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__XBApplicationSnapshot_loadImageWithGenerationOptions___block_invoke;
  block[3] = &unk_279CF9280;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_synchronized_hasCachedImage:(id *)image
{
  cachedImage = self->_cachedImage;
  if (image && cachedImage)
  {
    v6 = MEMORY[0x277CCACA8];
    imageAccessCount = self->_imageAccessCount;
    if (self->_keepImageAccessUntilExpiration)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    if ([(BSAtomicFlag *)self->_hasProtectedContent getFlag])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    if (self->_keepImageAccessForPreHeat)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *image = [v6 stringWithFormat:@"_imageAccessCount: %lu _keepImageAccessUntilExpiration: %@; _hasProtectedContent: %@; _keepImageAccessForPreHeat: %@", imageAccessCount, v8, v9, v10];;
  }

  return cachedImage != 0;
}

- (void)beginImageAccessUntilExpiration
{
  obj = self;
  objc_sync_enter(obj);
  v3 = obj;
  if (!obj->_expirationDate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:obj file:@"XBApplicationSnapshot.m" lineNumber:775 description:@"Expiration date is required in order to keep alive until expiration."];

    v3 = obj;
  }

  if (v3->_invalidated)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:obj file:@"XBApplicationSnapshot.m" lineNumber:776 description:@"Cannot keep alive an image that is already invalidated."];

    v3 = obj;
  }

  [(XBApplicationSnapshot *)v3 _synchronized_evaluateImageAccessUntilExpirationEnablingIfNecessary:1];
  objc_sync_exit(obj);
}

- (void)_synchronized_evaluateImageAccessUntilExpirationEnablingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v11 = *MEMORY[0x277D85DE8];
  if ([(XBApplicationSnapshot *)self _synchronized_isExpired])
  {
    if (self->_keepImageAccessUntilExpiration)
    {
      v5 = XBLogSnapshot();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        logIdentifier = [(XBApplicationSnapshot *)self logIdentifier];
        v9 = 138543362;
        v10 = logIdentifier;
        _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_INFO, "%{public}@ Dropping image access until expiration because the expiration has already occurred", &v9, 0xCu);
      }

      self->_keepImageAccessUntilExpiration = 0;
      [(XBApplicationSnapshot *)self _purgeCachedImageIfAppropriate:0];
    }
  }

  else if (necessaryCopy)
  {
    v7 = XBLogSnapshot();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      logIdentifier2 = [(XBApplicationSnapshot *)self logIdentifier];
      v9 = 138543362;
      v10 = logIdentifier2;
      _os_log_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_INFO, "%{public}@ Keeping image access on until expiration", &v9, 0xCu);
    }

    self->_keepImageAccessUntilExpiration = 1;
  }
}

- (void)_beginPreHeatImageAccess
{
  obj = self;
  objc_sync_enter(obj);
  obj->_keepImageAccessForPreHeat = 1;
  objc_sync_exit(obj);
}

- (void)_endPreHeatImageAccess
{
  obj = self;
  objc_sync_enter(obj);
  obj->_keepImageAccessForPreHeat = 0;
  [(XBApplicationSnapshot *)obj _purgeCachedImageIfAppropriate:0];
  objc_sync_exit(obj);
}

- (BOOL)isValidWithReason:(id *)reason
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(XBApplicationSnapshot *)selfCopy isExpired])
  {
    if (reason)
    {
      expirationDate = [(XBApplicationSnapshot *)selfCopy expirationDate];
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CBEAA8] now];
      [v7 timeIntervalSinceDate:expirationDate];
      *reason = [v6 stringWithFormat:@"expired. expirationDate: %@ how long ago (seconds): %f", expirationDate, v8];;

      v9 = 0;
LABEL_9:

      goto LABEL_14;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (![(XBApplicationSnapshot *)selfCopy hasCachedImage]&& ![(XBApplicationSnapshot *)selfCopy _hasGenerationContext])
  {
    expirationDate = [(XBApplicationSnapshot *)selfCopy imageGenerator];
    if (expirationDate)
    {
      v9 = 1;
      goto LABEL_9;
    }

    if (![(XBApplicationSnapshot *)selfCopy fileExists])
    {
      if (reason)
      {
        v10 = MEMORY[0x277CCACA8];
        expirationDate = [(XBApplicationSnapshot *)selfCopy path];
        [v10 stringWithFormat:@"no cached image. no generation context. no image generator. no file at path: %@", expirationDate];
        *reason = v9 = 0;
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  v9 = 1;
LABEL_14:
  objc_sync_exit(selfCopy);

  return v9;
}

- (id)descriptionWithoutVariants
{
  v2 = [(XBApplicationSnapshot *)self _descriptionBuilderWithMultilinePrefix:0 includeVariants:0];
  build = [v2 build];

  return build;
}

- (void)_manifestQueueDecode_setStore:(id)store
{
  v16 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (self->_store != storeCopy)
  {
    objc_storeStrong(&self->_store, store);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allValues = [(NSMutableDictionary *)self->_variantsByID allValues];
    v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v11 + 1) + 8 * i) _manifestQueueDecode_setStore:storeCopy];
        }

        v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setImageGeneratingByProvider:(id)provider withBlockingImageGenerator:(id)generator
{
  providerCopy = provider;
  generatorCopy = generator;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [generatorCopy copy];
  imageGenerator = selfCopy->_imageGenerator;
  selfCopy->_imageGenerator = v8;

  dataProviderClassName = selfCopy->_dataProviderClassName;
  selfCopy->_dataProviderClassName = providerCopy;

  objc_sync_exit(selfCopy);
}

- (BOOL)_path:(id)_path isRelativeToPath:(id)path outRelativePath:(id *)relativePath
{
  _pathCopy = _path;
  pathCopy = path;
  if (pathCopy && ![_pathCopy rangeOfString:pathCopy])
  {
    v14 = [_pathCopy substringFromIndex:v9];
    v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/"];
    v11 = [v14 stringByTrimmingCharactersInSet:v15];

    v10 = 1;
    if (!relativePath)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = 0;
  v11 = 0;
  if (relativePath)
  {
LABEL_4:
    v12 = v11;
    *relativePath = v11;
  }

LABEL_5:

  return v10;
}

- (id)_determineRelativePathForPath:(id)path location:(int64_t *)location
{
  pathCopy = path;
  containerIdentity = [(XBApplicationSnapshot *)self containerIdentity];
  v8 = [containerIdentity snapshotContainerPathForSnapshot:self];
  v24 = 0;
  v9 = [(XBApplicationSnapshot *)self _path:pathCopy isRelativeToPath:v8 outRelativePath:&v24];
  v10 = v24;

  if (v9)
  {
    v11 = 1;
    if (!location)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  bundlePath = [containerIdentity bundlePath];
  v23 = v10;
  v13 = [(XBApplicationSnapshot *)self _path:pathCopy isRelativeToPath:bundlePath outRelativePath:&v23];
  v14 = v23;

  if (v13)
  {
    v11 = 3;
    v10 = v14;
    if (location)
    {
      goto LABEL_14;
    }
  }

  else
  {
    bundleContainerPath = [containerIdentity bundleContainerPath];
    v22 = v14;
    v16 = [(XBApplicationSnapshot *)self _path:pathCopy isRelativeToPath:bundleContainerPath outRelativePath:&v22];
    v10 = v22;

    if (v16)
    {
      v11 = 4;
      if (location)
      {
        goto LABEL_14;
      }
    }

    else
    {
      dataContainerPath = [containerIdentity dataContainerPath];
      v21 = v10;
      v18 = [(XBApplicationSnapshot *)self _path:pathCopy isRelativeToPath:dataContainerPath outRelativePath:&v21];
      v19 = v21;

      if (!v18)
      {
        v10 = pathCopy;

        v11 = 0;
        if (!location)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v11 = 2;
      v10 = v19;
      if (location)
      {
LABEL_14:
        *location = v11;
      }
    }
  }

LABEL_15:

  return v10;
}

- (BOOL)_validateWithContainerIdentity:(id)identity
{
  v81 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (!identityCopy)
  {
    [XBApplicationSnapshot _validateWithContainerIdentity:];
  }

  containerIdentity = [(XBApplicationSnapshot *)self containerIdentity];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    [(XBApplicationSnapshot *)self setContainerIdentity:identityCopy];
    self->_logContainerIdentifierDirty = 1;
  }

  if (self->_contentType == 1 && !self->_launchInterfaceIdentifier)
  {
    v14 = XBLogFileManifest();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(XBApplicationSnapshot *)self logIdentifier];
      logIdentifier9 = logIdentifier;
      contentType = self->_contentType;
      if (contentType > 2)
      {
        v18 = @"{!InvalidType!}";
      }

      else
      {
        v18 = off_279CF9730[contentType];
      }

      *buf = 138543618;
      v72 = logIdentifier;
      v73 = 2114;
      v74 = v18;
      v22 = "%{public}@ we're invalid because we don't have a launchInterfaceIdentifier and our content type is: %{public}@";
      goto LABEL_55;
    }
  }

  else
  {
    if (self->_path && !self->_relativePath)
    {
      v7 = [XBApplicationSnapshot _determineRelativePathForPath:"_determineRelativePathForPath:location:" location:?];
      [(XBApplicationSnapshot *)self _setRelativePath:v7];

      v8 = XBLogFileManifest();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        logIdentifier2 = [(XBApplicationSnapshot *)self logIdentifier];
        v10 = logIdentifier2;
        relativePath = self->_relativePath;
        fileLocation = self->_fileLocation;
        if (fileLocation > 4)
        {
          v13 = @"(unknown)";
        }

        else
        {
          v13 = off_279CF9748[fileLocation];
        }

        *buf = 138543874;
        v72 = logIdentifier2;
        v73 = 2114;
        v74 = relativePath;
        v75 = 2114;
        v76 = v13;
        _os_log_impl(&dword_26B5EF000, v8, OS_LOG_TYPE_INFO, "%{public}@ Snapshot migrated snapshot path to %{public}@, relative to %{public}@", buf, 0x20u);
      }
    }

    if (self->_relativePath)
    {
      v14 = 0;
      v19 = self->_fileLocation;
      if (v19 <= 1)
      {
        if (!v19)
        {
          v28 = XBLogFileManifest();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            logIdentifier3 = [(XBApplicationSnapshot *)self logIdentifier];
            v31 = self->_relativePath;
            v30 = self->_fileLocation;
            *buf = 138543874;
            v72 = logIdentifier3;
            v73 = 2048;
            v74 = v30;
            v75 = 2114;
            v76 = v31;
            _os_log_impl(&dword_26B5EF000, v28, OS_LOG_TYPE_INFO, "%{public}@ has fileLocation of %ld\nsetting to newPath: %{public}@", buf, 0x20u);
          }

          v14 = self->_relativePath;
          goto LABEL_39;
        }

        if (v19 != 1)
        {
          goto LABEL_39;
        }

        dataContainerPath = [identityCopy snapshotContainerPathForSnapshot:self];
      }

      else
      {
        switch(v19)
        {
          case 2:
            dataContainerPath = [identityCopy dataContainerPath];
            break;
          case 3:
            dataContainerPath = [identityCopy bundlePath];
            break;
          case 4:
            dataContainerPath = [identityCopy bundleContainerPath];
            break;
          default:
LABEL_39:
            if ((BSEqualStrings() & 1) == 0)
            {
              [(XBApplicationSnapshot *)self _setPath:v14];
              if (self->_path)
              {
                v32 = XBLogFileManifest();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  logIdentifier4 = [(XBApplicationSnapshot *)self logIdentifier];
                  path = self->_path;
                  *buf = 138543618;
                  v72 = logIdentifier4;
                  v73 = 2114;
                  v74 = path;
                  _os_log_impl(&dword_26B5EF000, v32, OS_LOG_TYPE_INFO, "%{public}@ Snapshot rebuilt absolute path to: %{public}@", buf, 0x16u);
                }
              }
            }

            filename = self->_filename;
            if (!filename)
            {
              lastPathComponent = [(NSString *)self->_relativePath lastPathComponent];
              v37 = [lastPathComponent copy];
              v38 = self->_filename;
              self->_filename = v37;

              filename = self->_filename;
            }

            pathExtension = [(NSString *)filename pathExtension];
            self->_fileFormat = XBApplicationSnapshotOnDiskFormatForFileExtension(pathExtension);

            if (!self->_identifier || !self->_groupID)
            {
              goto LABEL_64;
            }

            if (!self->_path)
            {
              goto LABEL_72;
            }

            if ([(XBApplicationSnapshot *)self isExpired])
            {
LABEL_64:
              if (self->_path)
              {
                v69 = 0;
                LODWORD(v44) = [(XBApplicationSnapshot *)self _shouldDeleteFileOnPurge:&v69];
                v43 = v69;
                if (!v44)
                {
                  goto LABEL_78;
                }

                v52 = XBLogFileManifest();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  logIdentifier5 = [(XBApplicationSnapshot *)self logIdentifier];
                  v54 = self->_path;
                  *buf = 138543874;
                  v72 = logIdentifier5;
                  v73 = 2114;
                  v74 = v43;
                  v75 = 2114;
                  v76 = v54;
                  _os_log_impl(&dword_26B5EF000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ deleting file on purge because we're invalid.\n\tdeleteReason: %{public}@;\n\tpath: %{public}@", buf, 0x20u);
                }

                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                v56 = self->_path;
                v68 = 0;
                v57 = [defaultManager removeItemAtPath:v56 error:&v68];
                v44 = v68;

                if ((v57 & 1) == 0)
                {
                  domain = [(__CFString *)v44 domain];
                  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
                  {
                    code = [(__CFString *)v44 code];

                    if (code == 4)
                    {
                      goto LABEL_77;
                    }
                  }

                  else
                  {
                  }

                  v60 = XBLogFileManifest();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    logIdentifier6 = [(XBApplicationSnapshot *)self logIdentifier];
                    v64 = self->_path;
                    *buf = 138543874;
                    v72 = logIdentifier6;
                    v73 = 2114;
                    v74 = v64;
                    v75 = 2114;
                    v76 = v44;
                    _os_log_error_impl(&dword_26B5EF000, v60, OS_LOG_TYPE_ERROR, "%{public}@ Error deleting file on purge at %{public}@: %{public}@", buf, 0x20u);
                  }
                }

LABEL_77:

                LOBYTE(v44) = 0;
                goto LABEL_78;
              }

LABEL_72:
              LOBYTE(v44) = 0;
              v43 = 0;
              goto LABEL_78;
            }

            v70 = 0;
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v41 = [defaultManager2 fileExistsAtPath:self->_path isDirectory:&v70];
            v42 = v70;

            if (v41 && (v42 & 1) == 0)
            {
              v43 = 0;
              LOBYTE(v44) = 1;
LABEL_78:
              v61 = [(NSMutableDictionary *)self->_variantsByID copy];
              v65[0] = MEMORY[0x277D85DD0];
              v65[1] = 3221225472;
              v65[2] = __56__XBApplicationSnapshot__validateWithContainerIdentity___block_invoke;
              v65[3] = &unk_279CF96C0;
              v66 = identityCopy;
              selfCopy = self;
              [v61 enumerateKeysAndObjectsUsingBlock:v65];

              goto LABEL_79;
            }

            v45 = v70;
            v46 = XBLogFileManifest();
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
            if (v45 == 1)
            {
              if (v47)
              {
                logIdentifier7 = [(XBApplicationSnapshot *)self logIdentifier];
                v49 = self->_path;
                *buf = 138543618;
                v72 = logIdentifier7;
                v73 = 2114;
                v74 = v49;
                v50 = "%{public}@ we're invalid because _path is a directory: %{public}@";
LABEL_62:
                _os_log_impl(&dword_26B5EF000, v46, OS_LOG_TYPE_DEFAULT, v50, buf, 0x16u);
              }
            }

            else if (v47)
            {
              logIdentifier7 = [(XBApplicationSnapshot *)self logIdentifier];
              v51 = self->_path;
              *buf = 138543618;
              v72 = logIdentifier7;
              v73 = 2114;
              v74 = v51;
              v50 = "%{public}@ we're invalid because _path doesn't exist: %{public}@";
              goto LABEL_62;
            }

            goto LABEL_64;
        }
      }

      v23 = dataContainerPath;
      if (dataContainerPath)
      {
        v14 = [(__CFString *)dataContainerPath stringByAppendingPathComponent:self->_relativePath];
        v24 = XBLogFileManifest();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          logIdentifier8 = [(XBApplicationSnapshot *)self logIdentifier];
          v27 = self->_relativePath;
          v26 = self->_fileLocation;
          *buf = 138544386;
          v72 = logIdentifier8;
          v73 = 2048;
          v74 = v26;
          v75 = 2114;
          v76 = v23;
          v77 = 2114;
          v78 = v27;
          v79 = 2114;
          v80 = v14;
          _os_log_impl(&dword_26B5EF000, v24, OS_LOG_TYPE_INFO, "%{public}@ has fileLocation of %ld\ncalculated rootPath of %{public}@\nrelativePath: %{public}@\nsetting to newPath: %{public}@", buf, 0x34u);
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_39;
    }

    v14 = XBLogFileManifest();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier9 = [(XBApplicationSnapshot *)self logIdentifier];
      v21 = self->_path;
      *buf = 138543618;
      v72 = logIdentifier9;
      v73 = 2114;
      v74 = v21;
      v22 = "%{public}@ we're invalid because we don't have a relativePath. path: %{public}@";
LABEL_55:
      _os_log_impl(&dword_26B5EF000, v14, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
    }
  }

  LOBYTE(v44) = 0;
LABEL_79:

  return v44;
}

void __56__XBApplicationSnapshot__validateWithContainerIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (![v6 _validateWithContainerIdentity:*(a1 + 32)] || (objc_msgSend(v6, "variantID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, (v8 & 1) == 0))
  {
    v9 = XBLogFileManifest();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) logIdentifier];
      v11 = [v6 succinctDescription];
      v12 = 138543874;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Found invalid variant. Removing. variantID: %{public}@; variant: %{public}@", &v12, 0x20u);
    }

    [*(*(a1 + 40) + 24) removeObjectForKey:v5];
  }
}

- (void)_invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_invalidated)
  {
    selfCopy->_invalidated = 1;
    v3 = XBLogSnapshot();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      logIdentifier = [(XBApplicationSnapshot *)selfCopy logIdentifier];
      v5 = 138543362;
      v6 = logIdentifier;
      _os_log_impl(&dword_26B5EF000, v3, OS_LOG_TYPE_INFO, "%{public}@ Invalidating snapshot", &v5, 0xCu);
    }
  }

  *&selfCopy->_keepImageAccessUntilExpiration = 0;
  objc_sync_exit(selfCopy);

  [(XBApplicationSnapshot *)selfCopy _purgeCachedImageIfAppropriate:1];
}

- (BOOL)_isInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return invalidated;
}

- (id)_createVariantWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [XBApplicationSnapshot _createVariantWithIdentifier:];
  }

  if (![(XBApplicationSnapshot *)self _isInvalidated])
  {
    v7 = [(XBApplicationSnapshot *)self variantWithIdentifier:identifierCopy];
    v5 = v7;
    if (v7)
    {
      if ([v7 isValid])
      {
        [XBApplicationSnapshot _createVariantWithIdentifier:];
      }

      v8 = XBLogFileManifest();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      logIdentifier = [(XBApplicationSnapshot *)self logIdentifier];
      v14 = 138543874;
      v15 = logIdentifier;
      v16 = 2114;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = v5;
      v10 = "[%{public}@] had invalid variant -- overwriting. variantID: %{public}@\n old variant: %{public}@";
      v11 = v8;
      v12 = 32;
    }

    else
    {
      v8 = XBLogFileManifest();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        v6 = [[XBApplicationSnapshot alloc] _initWithContainerIdentity:self->_containerIdentity store:self->_store groupID:self->_groupID generationContext:0];
        [v6 setName:self->_name];
        [v6 setScheme:self->_scheme];
        [v6 setVariantID:identifierCopy];
        [v6 setRequiredOSVersion:self->_requiredOSVersion];
        [v6 setExpirationDate:0];
        [v6 setContentType:self->_contentType];
        [v6 setLaunchInterfaceIdentifier:self->_launchInterfaceIdentifier];
        [v6 setFullScreen:self->_fullScreen];
        [v6 setReferenceSize:{self->_referenceSize.width, self->_referenceSize.height}];
        [v6 setContentFrame:{self->_contentFrame.origin.x, self->_contentFrame.origin.y, self->_contentFrame.size.width, self->_contentFrame.size.height}];
        [v6 setInterfaceOrientation:self->_interfaceOrientation];
        [v6 setUserInterfaceStyle:self->_userInterfaceStyle];
        [v6 setCustomSafeAreaInsets:self->_customSafeAreaInsets];
        [v6 setStatusBarSettings:self->_statusBarSettings];
        [v6 setClassicMode:self->_classicMode];
        [v6 setCompatibilityMode:self->_compatibilityMode];
        [v6 setBackgroundStyle:self->_backgroundStyle];
        [v6 setImageOpaque:self->_imageOpaque];
        [v6 setImageScale:self->_imageScale];
        [v6 setImageOrientation:self->_imageOrientation];
        [(NSMutableDictionary *)self->_variantsByID setObject:v6 forKey:identifierCopy];
        goto LABEL_16;
      }

      logIdentifier = [(XBApplicationSnapshot *)self logIdentifier];
      v14 = 138543618;
      v15 = logIdentifier;
      v16 = 2114;
      v17 = identifierCopy;
      v10 = "[%{public}@] creating new variant. variantID: %{public}@";
      v11 = v8;
      v12 = 22;
    }

    _os_log_impl(&dword_26B5EF000, v11, OS_LOG_TYPE_INFO, v10, &v14, v12);

    goto LABEL_15;
  }

  v5 = XBLogFileManifest();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [XBApplicationSnapshot _createVariantWithIdentifier:];
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (id)_configureDefaultPathWithinGroupForFormat:(int64_t)format
{
  if (self->_filename)
  {
    [XBApplicationSnapshot _configureDefaultPathWithinGroupForFormat:];
  }

  if (self->_path)
  {
    [XBApplicationSnapshot _configureDefaultPathWithinGroupForFormat:];
  }

  if (self->_relativePath)
  {
    [XBApplicationSnapshot _configureDefaultPathWithinGroupForFormat:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(XBApplicationSnapshot *)selfCopy imageScale];
  if (v6 <= 1.0)
  {
    v9 = &stru_287C1E488;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    [(XBApplicationSnapshot *)selfCopy imageScale];
    v9 = [v7 stringWithFormat:@"@%lux", v8];
  }

  if (format > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_279CF9770[format];
  }

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  identifier = [(XBApplicationSnapshot *)selfCopy identifier];
  v13 = [v11 initWithFormat:@"%@%@.%@", identifier, v9, v10];
  filename = self->_filename;
  self->_filename = v13;

  selfCopy->_fileFormat = format;
  [(XBApplicationSnapshot *)selfCopy _setRelativePath:self->_filename];
  selfCopy->_fileLocation = 1;
  containerIdentity = [(XBApplicationSnapshot *)selfCopy containerIdentity];
  v16 = [containerIdentity snapshotContainerPathForSnapshot:selfCopy];
  v17 = [v16 stringByAppendingPathComponent:self->_filename];
  [(XBApplicationSnapshot *)selfCopy _setPath:v17];

  objc_sync_exit(selfCopy);

  return [(XBApplicationSnapshot *)selfCopy path];
}

- (void)_configureWithPath:(id)path
{
  pathCopy = path;
  if (self->_filename)
  {
    [XBApplicationSnapshot _configureWithPath:];
  }

  if (self->_path)
  {
    [XBApplicationSnapshot _configureWithPath:];
  }

  if (self->_relativePath)
  {
    [XBApplicationSnapshot _configureWithPath:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(XBApplicationSnapshot *)selfCopy _setPath:pathCopy];
  v6 = [(XBApplicationSnapshot *)selfCopy _determineRelativePathForPath:pathCopy location:&selfCopy->_fileLocation];
  [(XBApplicationSnapshot *)selfCopy _setRelativePath:v6];

  lastPathComponent = [(NSString *)self->_relativePath lastPathComponent];
  v8 = [lastPathComponent copy];
  filename = self->_filename;
  self->_filename = v8;

  pathExtension = [pathCopy pathExtension];
  if (([objc_opt_class() isValidImageFileExtension:pathExtension] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"XBApplicationSnapshot.m" lineNumber:1149 description:{@"Invalid file extension: %@ for path: %@", pathExtension, pathCopy}];
  }

  selfCopy->_fileFormat = XBApplicationSnapshotOnDiskFormatForFileExtension(pathExtension);

  objc_sync_exit(selfCopy);
}

- (void)_cacheImage:(id)image
{
  imageCopy = image;
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_cachedImageTransaction)
  {
    v5 = os_transaction_create();
    cachedImageTransaction = obj->_cachedImageTransaction;
    obj->_cachedImageTransaction = v5;
  }

  [(XBApplicationSnapshot *)obj _purgeCachedImageIfAppropriate:1];
  cachedImage = obj->_cachedImage;
  obj->_cachedImage = imageCopy;

  objc_sync_exit(obj);
}

- (BOOL)_generateImageIfPossible
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  imageGenerator = selfCopy->_imageGenerator;
  if (imageGenerator)
  {
    v4 = [imageGenerator copy];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v4)
  {
    (v4)[2](v4, selfCopy);
  }

  return v4 != 0;
}

- (void)_setHasProtectedContent:(BOOL)content
{
  contentCopy = content;
  obj = self;
  objc_sync_enter(obj);
  [(BSAtomicFlag *)obj->_hasProtectedContent setFlag:contentCopy];
  if (contentCopy && !obj->_expirationDate)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:480.0];
    expirationDate = obj->_expirationDate;
    obj->_expirationDate = v4;
  }

  objc_sync_exit(obj);
}

- (BOOL)_shouldDeleteFileOnPurge:(id *)purge
{
  v5 = XBApplicationSnapshotContentTypeMaskForContentType(self->_contentType) & 3;
  if (purge && v5)
  {
    contentType = self->_contentType;
    if (contentType > 2)
    {
      v7 = @"{!InvalidType!}";
    }

    else
    {
      v7 = off_279CF9730[contentType];
    }

    *purge = [MEMORY[0x277CCACA8] stringWithFormat:@"_contentType: %@(%ld)", v7, self->_contentType];
  }

  return v5 != 0;
}

- (void)_purgeCachedImageIfAppropriate:(BOOL)appropriate
{
  appropriateCopy = appropriate;
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!appropriateCopy && (selfCopy->_imageAccessCount || selfCopy->_keepImageAccessUntilExpiration || ([(BSAtomicFlag *)selfCopy->_hasProtectedContent getFlag]& 1) != 0 || selfCopy->_keepImageAccessForPreHeat))
  {
    if (selfCopy->_cachedImage)
    {
      cachedImageTransaction = XBLogSnapshot();
      if (os_log_type_enabled(cachedImageTransaction, OS_LOG_TYPE_INFO))
      {
        logIdentifier = [(XBApplicationSnapshot *)selfCopy logIdentifier];
        imageAccessCount = selfCopy->_imageAccessCount;
        keepImageAccessUntilExpiration = selfCopy->_keepImageAccessUntilExpiration;
        getFlag = [(BSAtomicFlag *)selfCopy->_hasProtectedContent getFlag];
        keepImageAccessForPreHeat = selfCopy->_keepImageAccessForPreHeat;
        v18 = 138544642;
        v19 = logIdentifier;
        v20 = 1024;
        v21 = 0;
        v22 = 2048;
        v23 = imageAccessCount;
        v24 = 1024;
        v25 = keepImageAccessUntilExpiration;
        v26 = 1024;
        v27 = getFlag;
        v28 = 1024;
        v29 = keepImageAccessForPreHeat;
        _os_log_impl(&dword_26B5EF000, cachedImageTransaction, OS_LOG_TYPE_INFO, "%{public}@ not purging the cached image; force: %d; _imageAccessCount: %lu; _keepImageAccessUntilExpiration: %d; _hasProtectedContent: %d; _keepImageAccessForPreheat: %d", &v18, 0x2Eu);
      }

LABEL_13:
    }
  }

  else if (selfCopy->_cachedImage)
  {
    v5 = XBLogSnapshot();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      logIdentifier2 = [(XBApplicationSnapshot *)selfCopy logIdentifier];
      v7 = selfCopy->_imageAccessCount;
      v8 = selfCopy->_keepImageAccessUntilExpiration;
      getFlag2 = [(BSAtomicFlag *)selfCopy->_hasProtectedContent getFlag];
      v10 = selfCopy->_keepImageAccessForPreHeat;
      v18 = 138544642;
      v19 = logIdentifier2;
      v20 = 1024;
      v21 = appropriateCopy;
      v22 = 2048;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = getFlag2;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_26B5EF000, v5, OS_LOG_TYPE_INFO, "%{public}@ Purging the cached image; force: %d; _imageAccessCount: %lu; _keepImageAccessUntilExpiration: %d; _hasProtectedContent: %d; _keepImageAccessForPreheat: %d", &v18, 0x2Eu);
    }

    cachedImage = selfCopy->_cachedImage;
    selfCopy->_cachedImage = 0;

    cachedImageTransaction = selfCopy->_cachedImageTransaction;
    selfCopy->_cachedImageTransaction = 0;
    goto LABEL_13;
  }

  objc_sync_exit(selfCopy);
}

+ (id)dataForImage:(id)image withFormat:(int64_t)format
{
  v34[4] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v7 = imageCopy;
  if (format == -1 || ![(UIImage *)imageCopy CGImage])
  {
    goto LABEL_11;
  }

  if (format == 3)
  {
    v8 = _UIImageJPEGRepresentation();
    goto LABEL_7;
  }

  if (!format)
  {
    v8 = UIImagePNGRepresentation(v7);
LABEL_7:
    Mutable = v8;
    goto LABEL_12;
  }

  if (format > 2)
  {
LABEL_11:
    Mutable = 0;
  }

  else
  {
    v10 = *MEMORY[0x277CD2D90];
    v33[0] = *MEMORY[0x277CD2CC8];
    v33[1] = v10;
    v34[0] = &unk_287C26350;
    v34[1] = &unk_287C26368;
    v11 = MEMORY[0x277CBEC38];
    v33[2] = *MEMORY[0x277CD3528];
    v33[3] = @"kCGImageConversionReason";
    v34[2] = MEMORY[0x277CBEC38];
    v34[3] = @"XBApplicationSnapshot";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v13 = [self _createCGImageWithPreferredOptions:v12 fromCGImage:{-[UIImage CGImage](v7, "CGImage")}];
    if (format == 2)
    {
      v14 = *MEMORY[0x277CD2D98];
      v15 = *MEMORY[0x277CD2DA0];
      v31[0] = *MEMORY[0x277CD2F40];
      v31[1] = v15;
      v32[0] = v14;
      v32[1] = v11;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v32;
      v18 = v31;
      v19 = 2;
    }

    else
    {
      v21 = *MEMORY[0x277CD2F40];
      v29[0] = *MEMORY[0x277CD2DD0];
      v29[1] = v21;
      v22 = *MEMORY[0x277CD2DD8];
      v30[0] = &unk_287C26380;
      v30[1] = v22;
      v23 = *MEMORY[0x277CD2DE8];
      v29[2] = *MEMORY[0x277CD2DE0];
      v29[3] = v23;
      v30[2] = v11;
      v30[3] = MEMORY[0x277CBEC28];
      v16 = MEMORY[0x277CBEAC0];
      v17 = v30;
      v18 = v29;
      v19 = 4;
    }

    v24 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    Mutable = CFDataCreateMutable(0, 0);
    v25 = CGImageDestinationCreateWithData(Mutable, @"com.apple.atx", 1uLL, 0);
    if (!v25 || (v26 = v25, CGImageDestinationAddImage(v25, v13, v24), v27 = CGImageDestinationFinalize(v26), CFRelease(v26), !v27))
    {
      v28 = XBLogSnapshot();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[XBApplicationSnapshot dataForImage:withFormat:];
      }
    }

    CGImageRelease(v13);
  }

LABEL_12:

  return Mutable;
}

+ (CGImage)_createCGImageWithPreferredOptions:(id)options fromCGImage:(CGImage *)image
{
  optionsCopy = options;
  if (image)
  {
    CGImageGetImageProvider();
    v6 = CGImageProviderCopyIOSurface();
    if (!v6 || (imageCopy = CGImageCreateFromIOSurface()) == 0)
    {
      CGImageRetain(image);
      imageCopy = image;
    }
  }

  else
  {
    imageCopy = 0;
  }

  return imageCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_scheme forKey:@"scheme"];
  [coderCopy encodeObject:self->_variantID forKey:@"variantID"];
  [coderCopy encodeObject:self->_groupID forKey:@"groupID"];
  [coderCopy encodeObject:self->_requiredOSVersion forKey:@"requiredOSVersion"];
  [coderCopy encodeObject:self->_launchInterfaceIdentifier forKey:@"launchInterfaceIdentifier"];
  relativePath = self->_relativePath;
  if (relativePath)
  {
    v5 = @"relativePath";
  }

  else
  {
    [coderCopy encodeObject:self->_path forKey:@"path"];
    relativePath = self->_filename;
    v5 = @"filename";
  }

  [coderCopy encodeObject:relativePath forKey:v5];
  [coderCopy encodeInteger:self->_fileLocation forKey:@"fileLocation"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_lastUsedDate forKey:@"lastUsedDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_contentType forKey:@"contentType"];
  [coderCopy encodeBool:self->_fullScreen forKey:@"fullScreen"];
  if (self->_referenceSize.width != *MEMORY[0x277CBF3A8] || self->_referenceSize.height != *(MEMORY[0x277CBF3A8] + 8))
  {
    [coderCopy encodeCGSize:@"referenceSize" forKey:?];
  }

  if (!CGRectEqualToRect(self->_contentFrame, *MEMORY[0x277CBF3A0]))
  {
    [coderCopy encodeCGRect:@"contentFrame" forKey:{self->_contentFrame.origin.x, self->_contentFrame.origin.y, self->_contentFrame.size.width, self->_contentFrame.size.height}];
  }

  [coderCopy encodeInteger:self->_interfaceOrientation forKey:@"interfaceOrientation"];
  [coderCopy encodeInteger:self->_userInterfaceStyle forKey:@"userInterfaceStyle"];
  [coderCopy encodeObject:self->_customSafeAreaInsets forKey:@"customSafeAreaInsets"];
  [coderCopy encodeBool:self->_imageOpaque forKey:@"imageOpaque"];
  [coderCopy encodeDouble:@"imageScale" forKey:self->_imageScale];
  [coderCopy encodeObject:self->_statusBarSettings forKey:@"statusBarSettings"];
  v6 = UIApplicationSceneStringForClassicMode();
  [coderCopy encodeObject:v6 forKey:@"classicMode"];

  v7 = UIApplicationSceneStringForCompatibilityMode();
  [coderCopy encodeObject:v7 forKey:@"compatibilityMode"];

  v8 = [MEMORY[0x277D75128] _stringForBackgroundStyle:self->_backgroundStyle];
  [coderCopy encodeObject:v8 forKey:@"backgroundStyle"];

  extendedData = [(XBApplicationSnapshot *)self extendedData];
  [coderCopy encodeObject:extendedData forKey:@"extendedData"];

  if ([(NSMutableDictionary *)self->_variantsByID count])
  {
    [coderCopy encodeObject:self->_variantsByID forKey:@"variants"];
  }
}

- (XBApplicationSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v56.receiver = self;
  v56.super_class = XBApplicationSnapshot;
  v5 = [(XBApplicationSnapshot *)&v56 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(XBApplicationSnapshot *)v5 _commonInitWithIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheme"];
    scheme = v5->_scheme;
    v5->_scheme = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"variantID"];
    variantID = v5->_variantID;
    v5->_variantID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiredOSVersion"];
    requiredOSVersion = v5->_requiredOSVersion;
    v5->_requiredOSVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchInterfaceIdentifier"];
    launchInterfaceIdentifier = v5->_launchInterfaceIdentifier;
    v5->_launchInterfaceIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativePath"];
    [(XBApplicationSnapshot *)v5 _setRelativePath:v20];

    if (!v5->_relativePath)
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
      [(XBApplicationSnapshot *)v5 _setPath:v21];

      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
      filename = v5->_filename;
      v5->_filename = v22;
    }

    v5->_fileLocation = [coderCopy decodeIntegerForKey:@"fileLocation"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUsedDate"];
    lastUsedDate = v5->_lastUsedDate;
    v5->_lastUsedDate = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v28;

    v5->_contentType = [coderCopy decodeIntegerForKey:@"contentType"];
    v5->_fullScreen = [coderCopy decodeBoolForKey:@"fullScreen"];
    [coderCopy decodeCGSizeForKey:@"referenceSize"];
    v5->_referenceSize.width = v30;
    v5->_referenceSize.height = v31;
    [coderCopy decodeCGRectForKey:@"contentFrame"];
    v5->_contentFrame.origin.x = v32;
    v5->_contentFrame.origin.y = v33;
    v5->_contentFrame.size.width = v34;
    v5->_contentFrame.size.height = v35;
    v5->_interfaceOrientation = [coderCopy decodeIntegerForKey:@"interfaceOrientation"];
    v5->_userInterfaceStyle = [coderCopy decodeIntegerForKey:@"userInterfaceStyle"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customSafeAreaInsets"];
    customSafeAreaInsets = v5->_customSafeAreaInsets;
    v5->_customSafeAreaInsets = v36;

    v5->_imageOpaque = [coderCopy decodeBoolForKey:@"imageOpaque"];
    [coderCopy decodeDoubleForKey:@"imageScale"];
    v5->_imageScale = v38;
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusBarSettings"];
    statusBarSettings = v5->_statusBarSettings;
    v5->_statusBarSettings = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classicMode"];
    v5->_classicMode = UIApplicationSceneClassicModeForString();

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compatibilityMode"];
    v5->_compatibilityMode = UIApplicationSceneCompatibilityModeForString();

    v43 = MEMORY[0x277D75128];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundStyle"];
    v5->_backgroundStyle = [v43 _backgroundStyleForString:v44];

    v45 = +[XBApplicationSnapshot _allSecureCodingClassesIncludingDefaultAndClientSpecified];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"extendedData"];
    extendedData = v5->_extendedData;
    v5->_extendedData = v46;

    v48 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v48 setWithObjects:{v49, v50, objc_opt_class(), 0}];
    v52 = [coderCopy decodeObjectOfClasses:v51 forKey:@"variants"];
    if (v52)
    {
      v53 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v52];
      variantsByID = v5->_variantsByID;
      v5->_variantsByID = v53;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)descriptionForStateCaptureWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  succinctDescriptionBuilder = [(XBApplicationSnapshot *)selfCopy succinctDescriptionBuilder];
  v8 = succinctDescriptionBuilder;
  if (selfCopy->_cachedImage)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke;
    v22[3] = &unk_279CF9558;
    v23 = succinctDescriptionBuilder;
    v24 = selfCopy;
    v25 = a2;
    [v23 appendBodySectionWithName:@"Cache" multilinePrefix:prefixCopy block:v22];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if ([(NSMutableDictionary *)selfCopy->_variantsByID count])
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke_2;
    v14 = &unk_279CF9530;
    v15 = selfCopy;
    v16 = v8;
    v17 = &v18;
    [v16 appendBodySectionWithName:@"Variants" multilinePrefix:prefixCopy block:&v11];
  }

  if (selfCopy->_cachedImage || *(v19 + 24) == 1)
  {
    build = [v8 build];
  }

  else
  {
    build = 0;
  }

  _Block_object_dispose(&v18, 8);

  objc_sync_exit(selfCopy);

  return build;
}

void __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = [*(a1 + 32) appendPointer:*(*(a1 + 40) + 280) withName:@"_cachedImage"];
  v4 = [*(*v2 + 280) ioSurface];
  v5 = [*(*v2 + 280) CGImage];
  if (v4)
  {
    v6 = [*(a1 + 32) appendPointer:v4 withName:@"IOSurfaceRef"];
    v7 = [*(a1 + 32) appendInt64:objc_msgSend(v4 withName:{"allocationSize"), @"allocSize"}];
  }

  else
  {
    v8 = v5;
    if (v5)
    {
      v9 = [*(a1 + 32) appendPointer:v5 withName:@"CGImageRef"];
      Height = CGImageGetHeight(v8);
      v11 = [*(a1 + 32) appendUInt64:CGImageGetBytesPerRow(v8) * Height withName:@"allocSize"];
    }
  }

  v12 = *v2;
  v15 = 0;
  [v12 _synchronized_hasCachedImage:&v15];
  v13 = v15;
  if (!v13)
  {
    __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke_cold_1();
  }

  v14 = [*(a1 + 32) appendObject:v13 withName:@"reason"];
}

void __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke_3;
  v5[3] = &unk_279CF96E8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 activeMultilinePrefix];
  v8 = [v6 descriptionForStateCaptureWithMultilinePrefix:v7];

  if (v8)
  {
    v9 = [*(a1 + 32) appendObject:v8 withName:v10 skipIfNil:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationSnapshot *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name" skipIfNil:1];
  v5 = [v3 appendObject:self->_identifier withName:@"identifier" skipIfNil:1];
  v6 = [v3 appendObject:self->_scheme withName:@"scheme" skipIfNil:1];
  v7 = [v3 appendObject:self->_launchInterfaceIdentifier withName:@"launchInterfaceIdentifier" skipIfNil:1];
  v8 = [v3 appendObject:self->_variantID withName:@"variantID" skipIfNil:1];
  v9 = XBApplicationSnapshotContentTypeDescription(self->_contentType);
  v10 = [v3 appendObject:v9 withName:@"contentType"];

  v11 = [v3 appendSize:@"referenceSize" withName:{self->_referenceSize.width, self->_referenceSize.height}];
  v12 = XBStringForInterfaceOrientation(self->_interfaceOrientation);
  v13 = [v3 appendObject:v12 withName:@"interfaceOrientation"];

  v14 = XBStringForUserInterfaceStyle(self->_userInterfaceStyle);
  v15 = [v3 appendObject:v14 withName:@"userInterfaceStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationSnapshot *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix includeVariants:(BOOL)variants
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(XBApplicationSnapshot *)self succinctDescriptionBuilder];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke;
  v11[3] = &unk_279CF92C8;
  v8 = succinctDescriptionBuilder;
  v12 = v8;
  selfCopy = self;
  variantsCopy = variants;
  [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v11];

  v9 = v8;
  return v8;
}

void __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"requiredOSVersion" skipIfNil:1];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA968] localizedStringFromDate:*(*(a1 + 40) + 120) dateStyle:3 timeStyle:3];
  v5 = [v3 appendObject:v4 withName:@"creationDate" skipIfNil:1];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA968] localizedStringFromDate:*(*(a1 + 40) + 128) dateStyle:3 timeStyle:3];
  v8 = [v6 appendObject:v7 withName:@"lastUsedDate" skipIfNil:1];

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA968] localizedStringFromDate:*(*(a1 + 40) + 136) dateStyle:3 timeStyle:3];
  v11 = [v9 appendObject:v10 withName:@"expirationDate" skipIfNil:1];

  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 307) withName:@"keepsImageAccessUntilExpiration"];
  v13 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"_hasGenerationContext"), @"hasGenerationContext"}];
  v35 = 0;
  if (!fsctl([*(*(a1 + 40) + 88) UTF8String], 0x40084A47uLL, &v35, 0))
  {
    if ((v35 & 0x400) != 0)
    {
      v16 = *(a1 + 32);
      v17 = @"medium";
    }

    else
    {
      v14 = *(a1 + 32);
      if ((v35 & 0x800) == 0)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"disallowed(%llu)", v35];
        [v14 appendString:v15 withName:@"purge"];

        goto LABEL_8;
      }

      v17 = @"high";
      v16 = *(a1 + 32);
    }

    [v16 appendString:v17 withName:@"purge"];
  }

LABEL_8:
  v18 = *(a1 + 32);
  v19 = [v18 activeMultilinePrefix];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke_2;
  v32[3] = &unk_279CF9508;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v33 = v20;
  v34 = v21;
  [v18 appendBodySectionWithName:@"context" multilinePrefix:v19 block:v32];

  v22 = *(a1 + 32);
  v23 = [v22 activeMultilinePrefix];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke_4;
  v29[3] = &unk_279CF9508;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v30 = v24;
  v31 = v25;
  [v22 appendBodySectionWithName:@"imageContext" multilinePrefix:v23 block:v29];

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 24) withName:@"variants" skipIfEmpty:1];
  }

  v26 = *(a1 + 32);
  v27 = [*(a1 + 40) extendedData];
  v28 = [v26 appendObject:v27 withName:@"extendedData" skipIfNil:1];
}

void __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = XBApplicationSnapshotContentTypeDescription(*(*(a1 + 40) + 208));
  v4 = [v2 appendObject:v3 withName:@"contentType"];

  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 305) withName:@"fullScreen"];
  v6 = [*(a1 + 32) appendSize:@"referenceSize" withName:{*(*(a1 + 40) + 144), *(*(a1 + 40) + 152)}];
  if (!CGRectEqualToRect(*(*(a1 + 40) + 160), *MEMORY[0x277CBF3A0]))
  {
    v7 = [*(a1 + 32) appendRect:@"contentFrame" withName:{*(*(a1 + 40) + 160), *(*(a1 + 40) + 168), *(*(a1 + 40) + 176), *(*(a1 + 40) + 184)}];
  }

  v8 = *(a1 + 32);
  v9 = XBStringForInterfaceOrientation(*(*(a1 + 40) + 192));
  v10 = [v8 appendObject:v9 withName:@"interfaceOrientation"];

  v11 = *(a1 + 32);
  v12 = XBStringForUserInterfaceStyle(*(*(a1 + 40) + 200));
  v13 = [v11 appendObject:v12 withName:@"userInterfaceStyle"];

  v14 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 360) withName:@"customSafeAreaInsets" skipIfNil:1];
  v15 = *(a1 + 32);
  v16 = [v15 activeMultilinePrefix];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke_3;
  v19[3] = &unk_279CF9508;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v20 = v17;
  v21 = v18;
  [v15 appendBodySectionWithName:@"additionalContext" multilinePrefix:v16 block:v19];
}

void __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 240) withName:@"statusBarSettings" skipIfNil:1];
  v3 = *(a1 + 40);
  if (v3[32])
  {
    v4 = *(a1 + 32);
    v5 = UIApplicationSceneStringForCompatibilityMode();
    v6 = [v4 appendObject:v5 withName:@"compatibilityMode" skipIfNil:1];

    v3 = *(a1 + 40);
  }

  if (v3[31])
  {
    v7 = *(a1 + 32);
    v8 = UIApplicationSceneStringForClassicMode();
    v9 = [v7 appendObject:v8 withName:@"classicMode" skipIfNil:1];

    v3 = *(a1 + 40);
  }

  if (v3[33])
  {
    v10 = *(a1 + 32);
    v12 = [MEMORY[0x277D75128] _stringForBackgroundStyle:?];
    v11 = [v10 appendObject:v12 withName:@"backgroundStyle" skipIfNil:1];
  }
}

id __80__XBApplicationSnapshot__descriptionBuilderWithMultilinePrefix_includeVariants___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) appendFloat:@"scale" withName:1 decimalPrecision:*(*(a1 + 40) + 224)];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 306) withName:@"opaque"];
  v4 = *(*(a1 + 40) + 112);
  if (v4 > 4)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_279CF9748[v4];
  }

  v6 = [*(a1 + 32) appendObject:v5 withName:@"fileRelativeLocation"];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"path" skipIfNil:1];
  v8 = *(*(a1 + 40) + 216);
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_279CF9770[v8];
  }

  return [*(a1 + 32) appendObject:v9 withName:@"fileFormat" skipIfNil:1];
}

- (CGAffineTransform)imageTransform
{
  v3 = *&self[8].c;
  *&retstr->a = *&self[8].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].tx;
  return self;
}

- (void)setImageTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_imageTransform.c = *&transform->c;
  *&self->_imageTransform.tx = v4;
  *&self->_imageTransform.a = v3;
}

- (NSString)_sortableLaunchInterfaceIdentifier
{
  launchInterfaceIdentifier = [(XBApplicationSnapshot *)self launchInterfaceIdentifier];
  v3 = launchInterfaceIdentifier;
  if (launchInterfaceIdentifier)
  {
    v4 = launchInterfaceIdentifier;
  }

  else
  {
    v4 = FAKE_NIL_PTR();
  }

  v5 = v4;

  return v5;
}

- (NSString)_sortableRequiredOSVersion
{
  requiredOSVersion = [(XBApplicationSnapshot *)self requiredOSVersion];
  v3 = requiredOSVersion;
  if (requiredOSVersion)
  {
    v4 = requiredOSVersion;
  }

  else
  {
    v4 = FAKE_NIL_PTR();
  }

  v5 = v4;

  return v5;
}

- (void)_initWithContainerIdentity:store:groupID:generationContext:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"containerIdentity" object:? file:? lineNumber:? description:?];
}

- (void)_initWithContainerIdentity:store:groupID:generationContext:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)_initWithContainerIdentity:store:groupID:generationContext:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"groupID" object:? file:? lineNumber:? description:?];
}

+ (void)setSecureCodableCustomExtendedDataClasses:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v1 file:@"XBApplicationSnapshot.m" lineNumber:352 description:{@"Extended data client class '%@' does not conform to NSSecureCoding", v0}];
}

+ (void)setSecureCodableCustomExtendedDataClasses:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v1 file:@"XBApplicationSnapshot.m" lineNumber:353 description:{@"Extended data client class '%@' does not support NSSecureCoding", v0}];
}

- (void)_sanitizedPathForPath:(uint8_t *)buf .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_26B5EF000, log, OS_LOG_TYPE_FAULT, "%{public}@ received invalid path\npath: %{public}@", buf, 0x16u);
}

- (void)setContentFrame:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setReferenceSize:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_locked_loadImageViaGenerationContext:(void *)a1 options:.cold.1(void *a1)
{
  v1 = [a1 logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2(&dword_26B5EF000, v2, v3, "%{public}@ calling imageGenerator", v4, v5, v6, v7, v8);
}

- (void)_locked_loadImageViaGenerationContext:(void *)a1 options:.cold.2(void *a1)
{
  v1 = [a1 logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2(&dword_26B5EF000, v2, v3, "%{public}@ finished calling imageGenerator", v4, v5, v6, v7, v8);
}

- (void)_locked_loadImageViaGeneratorFunction:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2(&dword_26B5EF000, v2, v3, "%{public}@ calling generatorFunction", v4, v5, v6, v7, v8);
}

- (void)_locked_loadImageViaGeneratorFunction:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2(&dword_26B5EF000, v2, v3, "%{public}@ finished calling generatorFunction", v4, v5, v6, v7, v8);
}

- (void)_validateWithContainerIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"containerIdentity" object:? file:? lineNumber:? description:?];
}

- (void)_createVariantWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"variantID" object:? file:? lineNumber:? description:?];
}

- (void)_createVariantWithIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"variant == nil || ![variant isValid]" object:? file:? lineNumber:? description:?];
}

- (void)_createVariantWithIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v1 = [v0 logIdentifier];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5(&dword_26B5EF000, v2, v3, "[%{public}@] asked to create variant but we're invalidated. variantID: %{public}@", v4, v5, v6, v7, v8);
}

- (void)_configureDefaultPathWithinGroupForFormat:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_filename == nil" object:? file:? lineNumber:? description:?];
}

- (void)_configureDefaultPathWithinGroupForFormat:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_path == nil" object:? file:? lineNumber:? description:?];
}

- (void)_configureDefaultPathWithinGroupForFormat:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_relativePath == nil" object:? file:? lineNumber:? description:?];
}

- (void)_configureWithPath:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_filename == nil" object:? file:? lineNumber:? description:?];
}

- (void)_configureWithPath:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_path == nil" object:? file:? lineNumber:? description:?];
}

- (void)_configureWithPath:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"_relativePath == nil" object:? file:? lineNumber:? description:?];
}

+ (void)dataForImage:withFormat:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_26B5EF000, v0, OS_LOG_TYPE_ERROR, "Failed to generate ATX data for %@", v1, 0xCu);
}

void __71__XBApplicationSnapshot_descriptionForStateCaptureWithMultilinePrefix___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 48) object:*v0 file:@"XBApplicationSnapshot.m" lineNumber:1447 description:@"_synchronized_hasCachedImage: isn't giving us a reason even though we have a cached image"];
}

@end