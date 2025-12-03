@interface PUIPosterSnapshotBundle
+ (id)snapshotBundleAtURL:(id)l error:(id *)error;
+ (id)snapshotBundleForInfoDictionary:(id)dictionary levelToImage:(id)image colorStatistics:(id)statistics error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSnapshotBundle:(id)bundle;
- (BOOL)isValidBundle;
- (CGRect)salientContentRectangle;
- (CGSize)assetSize;
- (NSDictionary)infoDictionary;
- (NSString)description;
- (PUIColorStatistics)colorStatistics;
- (PUIImageOnDiskFormat)ondiskFormat;
- (PUIPosterSnapshotBundle)initWithInfoDictionary:(id)dictionary levelToImage:(id)image colorStatistics:(id)statistics;
- (PUIPosterSnapshotBundle)initWithURL:(id)l;
- (id)_decodeImageForComponent:(int64_t)component error:(id *)error;
- (id)_decodeImageForLevelSet:(id)set error:(id *)error;
- (id)fileResourceIdentifier;
- (id)snapshotURLForLevelSet:(id)set;
- (void)prepareForPresentation;
@end

@implementation PUIPosterSnapshotBundle

+ (id)snapshotBundleAtURL:(id)l error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = lCopy;
  if (lCopy)
  {
    v7 = PUIPosterSnapshotBundleURLForComponent(lCopy, 3);
    v18 = 0;
    v8 = [v7 checkResourceIsReachableAndReturnError:&v18];
    v9 = v18;
    v10 = v9;
    if (v8)
    {
      v11 = [[PUIPosterSnapshotBundle alloc] initWithURL:v6];
LABEL_12:

      goto LABEL_13;
    }

    if (error)
    {
      if (v9)
      {
        v13 = v9;
        v11 = 0;
        *error = v10;
        goto LABEL_12;
      }

      v14 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A588];
      v20 = @"bundleURL was not reachable!";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v16 = [v14 pui_errorWithCode:0 userInfo:v15];
      *error = v16;
    }

    v11 = 0;
    goto LABEL_12;
  }

  if (!error)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v12 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A588];
  v22[0] = @"bundleURL was nil!";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v12 pui_errorWithCode:0 userInfo:v7];
  *error = v11 = 0;
LABEL_13:

LABEL_14:

  return v11;
}

+ (id)snapshotBundleForInfoDictionary:(id)dictionary levelToImage:(id)image colorStatistics:(id)statistics error:(id *)error
{
  statisticsCopy = statistics;
  imageCopy = image;
  dictionaryCopy = dictionary;
  v11 = [[PUIPosterSnapshotBundle alloc] initWithInfoDictionary:dictionaryCopy levelToImage:imageCopy colorStatistics:statisticsCopy];

  return v11;
}

- (PUIPosterSnapshotBundle)initWithURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy && (!self || (v6 = [lCopy copy], bundleURL = self->_bundleURL, self->_bundleURL = v6, bundleURL, -[PUIPosterSnapshotBundle infoDictionary](self, "infoDictionary"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9)))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PUIPosterSnapshotBundle)initWithInfoDictionary:(id)dictionary levelToImage:(id)image colorStatistics:(id)statistics
{
  dictionaryCopy = dictionary;
  imageCopy = image;
  statisticsCopy = statistics;
  v21.receiver = self;
  v21.super_class = PUIPosterSnapshotBundle;
  v11 = [(PUIPosterSnapshotBundle *)&v21 init];
  if (v11)
  {
    v12 = [dictionaryCopy copy];
    infoDictionary = v11->_infoDictionary;
    v11->_infoDictionary = v12;

    v14 = [[_PUIPosterSnapshotBundleContextProvider alloc] initWithDictionary:v11->_infoDictionary];
    contextProvider = v11->_contextProvider;
    v11->_contextProvider = v14;

    v16 = [imageCopy copy];
    levelToImage = v11->_levelToImage;
    v11->_levelToImage = v16;

    v18 = [statisticsCopy copy];
    colorStatistics = v11->_colorStatistics;
    v11->_colorStatistics = v18;
  }

  return v11;
}

- (BOOL)isValidBundle
{
  infoDictionary = [(PUIPosterSnapshotBundle *)self infoDictionary];
  v3 = [infoDictionary count] != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy)
  {
    v6 = [(PUIPosterSnapshotBundle *)self isEqualToSnapshotBundle:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fileResourceIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_fileResourceIdentifier)
  {
    bundleURL = [(PUIPosterSnapshotBundle *)selfCopy bundleURL];
    v4 = [bundleURL pf_fileResourceIdentifierWithError:0];
    fileResourceIdentifier = selfCopy->_fileResourceIdentifier;
    selfCopy->_fileResourceIdentifier = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_fileResourceIdentifier;

  return v6;
}

- (BOOL)isEqualToSnapshotBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = bundleCopy;
  v20 = 1;
  if (self != bundleCopy)
  {
    if (!bundleCopy || (objc_opt_self(), v6 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0) || (-[PUIPosterSnapshotBundle infoDictionary](v5, "infoDictionary"), v8 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundle infoDictionary](self, "infoDictionary"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToDictionary:v9], v9, v8, !v10) || (-[PUIPosterSnapshotBundle fileResourceIdentifier](self, "fileResourceIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundle fileResourceIdentifier](v5, "fileResourceIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, !v13) || (-[PUIPosterSnapshotBundle colorStatistics](self, "colorStatistics"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, -[PUIPosterSnapshotBundle colorStatistics](v5, "colorStatistics"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16) && (-[PUIPosterSnapshotBundle colorStatistics](self, "colorStatistics"), v17 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundle colorStatistics](v5, "colorStatistics"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, !v19))
    {
      v20 = 0;
    }
  }

  return v20;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  bundleURL = [(PUIPosterSnapshotBundle *)self bundleURL];
  v5 = [v3 appendObject:bundleURL withName:@"bundleURL"];

  infoDictionary = [(PUIPosterSnapshotBundle *)self infoDictionary];
  [v3 appendDictionarySection:infoDictionary withName:@"infoDictionary" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

- (NSDictionary)infoDictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  infoDictionary = selfCopy->_infoDictionary;
  if (infoDictionary)
  {
    v4 = infoDictionary;
  }

  else
  {
    v5 = PUIPosterSnapshotBundleURLForComponent(selfCopy->_bundleURL, 3);
    v13 = 0;
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v13];
    v7 = v13;
    if ([v6 length])
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    v9 = selfCopy->_infoDictionary;
    selfCopy->_infoDictionary = v8;

    v10 = [[_PUIPosterSnapshotBundleContextProvider alloc] initWithDictionary:selfCopy->_infoDictionary];
    contextProvider = selfCopy->_contextProvider;
    selfCopy->_contextProvider = v10;

    v4 = selfCopy->_infoDictionary;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)_decodeImageForComponent:(int64_t)component error:(id *)error
{
  if ((component - 5) > 5)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v7 = objc_autoreleasePoolPush();
  if (!self->_levelToImage)
  {
    goto LABEL_7;
  }

  v8 = _posterLevelSetForComponent(component);
  v9 = [(NSDictionary *)self->_levelToImage objectForKey:v8];
  if (!v9)
  {

LABEL_7:
    if (self->_bundleURL)
    {
      [(PUIPosterSnapshotBundle *)self interfaceOrientation];
      [(PUIPosterSnapshotBundle *)self deviceOrientation];
      [(PUIPosterSnapshotBundle *)self snapshotScale];
      v12 = v11;
      v13 = PUIPosterSnapshotBundleURLForComponent(self->_bundleURL, component);
      ondiskFormat = [(PUIPosterSnapshotBundle *)self ondiskFormat];
      v15 = [[PUIImageEncoder alloc] initWithURL:v13 format:ondiskFormat];
      v20 = 0;
      v16 = [(PUIImageEncoder *)v15 createUIImageWithOrientation:PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation() scale:&v20 error:v12];
      v17 = v20;

      objc_autoreleasePoolPop(v7);
      if (error && v17)
      {
        v18 = v17;
        *error = v17;
      }
    }

    else
    {
      objc_autoreleasePoolPop(v7);
      v16 = 0;
      v17 = 0;
    }

    v10 = v16;

    goto LABEL_13;
  }

  v10 = v9;

  objc_autoreleasePoolPop(v7);
LABEL_13:

LABEL_14:

  return v10;
}

- (id)_decodeImageForLevelSet:(id)set error:(id *)error
{
  setCopy = set;
  v7 = _componentForLevelSet(setCopy);
  if (v7)
  {
    v8 = [(PUIPosterSnapshotBundle *)self _decodeImageForComponent:v7 error:error];
  }

  else
  {
    v9 = [(NSDictionary *)self->_levelToImage objectForKey:setCopy];
    v10 = v9;
    if (v9)
    {
      v8 = v9;
    }

    else if (self->_bundleURL)
    {
      [(PUIPosterSnapshotBundle *)self interfaceOrientation];
      [(PUIPosterSnapshotBundle *)self deviceOrientation];
      [(PUIPosterSnapshotBundle *)self snapshotScale];
      v12 = v11;
      v13 = PUIPosterSnapshotBundleURLForPosterLevelSet(self->_bundleURL, setCopy);
      ondiskFormat = [(PUIPosterSnapshotBundle *)self ondiskFormat];
      v15 = [[PUIImageEncoder alloc] initWithURL:v13 format:ondiskFormat];
      v8 = [(PUIImageEncoder *)v15 createUIImageWithOrientation:PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation() scale:error error:v12];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)snapshotURLForLevelSet:(id)set
{
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    bundleURL = PUIPosterSnapshotBundleURLForPosterLevelSet(bundleURL, set);
    v3 = vars8;
  }

  return bundleURL;
}

- (PUIImageOnDiskFormat)ondiskFormat
{
  v2 = [(PUIPosterSnapshotBundle *)self objectForKeyedSubscript:@"PUIPosterSnapshotBundleInfoKeySnapshotImageFormat"];
  if ([v2 caseInsensitiveCompare:@"atx"])
  {
    if ([v2 caseInsensitiveCompare:@"png"])
    {
      +[PUIImageOnDiskFormat defaultFormat];
    }

    else
    {
      +[PUIImageOnDiskFormat png];
    }
    v3 = ;
  }

  else
  {
    v3 = +[PUIImageOnDiskFormat defaultATX];
  }

  v4 = v3;

  return v4;
}

- (PUIColorStatistics)colorStatistics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  colorStatistics = selfCopy->_colorStatistics;
  if (colorStatistics)
  {
    v4 = colorStatistics;
  }

  else
  {
    infoDictionary = [(PUIPosterSnapshotBundle *)selfCopy infoDictionary];
    v6 = [infoDictionary objectForKey:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = PUIPosterSnapshotBundleURLForComponent(selfCopy->_bundleURL, 4);
      v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:1 error:0];
      v10 = MEMORY[0x1E696ACD0];
      v11 = objc_opt_self();
      v12 = [v10 unarchivedObjectOfClass:v11 fromData:v9 error:0];
      v13 = selfCopy->_colorStatistics;
      selfCopy->_colorStatistics = v12;

      v4 = selfCopy->_colorStatistics;
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)prepareForPresentation
{
  v3 = objc_autoreleasePoolPush();
  foregroundSnapshot = [(PUIPosterSnapshotBundle *)self foregroundSnapshot];
  floatingSnapshot = [(PUIPosterSnapshotBundle *)self floatingSnapshot];
  backgroundSnapshot = [(PUIPosterSnapshotBundle *)self backgroundSnapshot];
  compositeSnapshot = [(PUIPosterSnapshotBundle *)self compositeSnapshot];
  allLevelsExceptFloatingSnapshot = [(PUIPosterSnapshotBundle *)self allLevelsExceptFloatingSnapshot];

  objc_autoreleasePoolPop(v3);
}

- (CGSize)assetSize
{
  [(_PUIPosterSnapshotBundleContextProvider *)self->_contextProvider assetSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)salientContentRectangle
{
  [(_PUIPosterSnapshotBundleContextProvider *)self->_contextProvider salientContentRectangle];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end