@interface PUIPosterSnapshotBundle
+ (id)snapshotBundleAtURL:(id)a3 error:(id *)a4;
+ (id)snapshotBundleForInfoDictionary:(id)a3 levelToImage:(id)a4 colorStatistics:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSnapshotBundle:(id)a3;
- (BOOL)isValidBundle;
- (CGRect)salientContentRectangle;
- (CGSize)assetSize;
- (NSDictionary)infoDictionary;
- (NSString)description;
- (PUIColorStatistics)colorStatistics;
- (PUIImageOnDiskFormat)ondiskFormat;
- (PUIPosterSnapshotBundle)initWithInfoDictionary:(id)a3 levelToImage:(id)a4 colorStatistics:(id)a5;
- (PUIPosterSnapshotBundle)initWithURL:(id)a3;
- (id)_decodeImageForComponent:(int64_t)a3 error:(id *)a4;
- (id)_decodeImageForLevelSet:(id)a3 error:(id *)a4;
- (id)fileResourceIdentifier;
- (id)snapshotURLForLevelSet:(id)a3;
- (void)prepareForPresentation;
@end

@implementation PUIPosterSnapshotBundle

+ (id)snapshotBundleAtURL:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = PUIPosterSnapshotBundleURLForComponent(v5, 3);
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

    if (a4)
    {
      if (v9)
      {
        v13 = v9;
        v11 = 0;
        *a4 = v10;
        goto LABEL_12;
      }

      v14 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A588];
      v20 = @"bundleURL was not reachable!";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v16 = [v14 pui_errorWithCode:0 userInfo:v15];
      *a4 = v16;
    }

    v11 = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v12 = MEMORY[0x1E696ABC0];
  v21 = *MEMORY[0x1E696A588];
  v22[0] = @"bundleURL was nil!";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  [v12 pui_errorWithCode:0 userInfo:v7];
  *a4 = v11 = 0;
LABEL_13:

LABEL_14:

  return v11;
}

+ (id)snapshotBundleForInfoDictionary:(id)a3 levelToImage:(id)a4 colorStatistics:(id)a5 error:(id *)a6
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[PUIPosterSnapshotBundle alloc] initWithInfoDictionary:v10 levelToImage:v9 colorStatistics:v8];

  return v11;
}

- (PUIPosterSnapshotBundle)initWithURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (!self || (v6 = [v4 copy], bundleURL = self->_bundleURL, self->_bundleURL = v6, bundleURL, -[PUIPosterSnapshotBundle infoDictionary](self, "infoDictionary"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9)))
  {
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PUIPosterSnapshotBundle)initWithInfoDictionary:(id)a3 levelToImage:(id)a4 colorStatistics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PUIPosterSnapshotBundle;
  v11 = [(PUIPosterSnapshotBundle *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    infoDictionary = v11->_infoDictionary;
    v11->_infoDictionary = v12;

    v14 = [[_PUIPosterSnapshotBundleContextProvider alloc] initWithDictionary:v11->_infoDictionary];
    contextProvider = v11->_contextProvider;
    v11->_contextProvider = v14;

    v16 = [v9 copy];
    levelToImage = v11->_levelToImage;
    v11->_levelToImage = v16;

    v18 = [v10 copy];
    colorStatistics = v11->_colorStatistics;
    v11->_colorStatistics = v18;
  }

  return v11;
}

- (BOOL)isValidBundle
{
  v2 = [(PUIPosterSnapshotBundle *)self infoDictionary];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [(PUIPosterSnapshotBundle *)self isEqualToSnapshotBundle:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fileResourceIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_fileResourceIdentifier)
  {
    v3 = [(PUIPosterSnapshotBundle *)v2 bundleURL];
    v4 = [v3 pf_fileResourceIdentifierWithError:0];
    fileResourceIdentifier = v2->_fileResourceIdentifier;
    v2->_fileResourceIdentifier = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_fileResourceIdentifier;

  return v6;
}

- (BOOL)isEqualToSnapshotBundle:(id)a3
{
  v4 = a3;
  v5 = v4;
  v20 = 1;
  if (self != v4)
  {
    if (!v4 || (objc_opt_self(), v6 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) == 0) || (-[PUIPosterSnapshotBundle infoDictionary](v5, "infoDictionary"), v8 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundle infoDictionary](self, "infoDictionary"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToDictionary:v9], v9, v8, !v10) || (-[PUIPosterSnapshotBundle fileResourceIdentifier](self, "fileResourceIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundle fileResourceIdentifier](v5, "fileResourceIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, !v13) || (-[PUIPosterSnapshotBundle colorStatistics](self, "colorStatistics"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, -[PUIPosterSnapshotBundle colorStatistics](v5, "colorStatistics"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16) && (-[PUIPosterSnapshotBundle colorStatistics](self, "colorStatistics"), v17 = objc_claimAutoreleasedReturnValue(), -[PUIPosterSnapshotBundle colorStatistics](v5, "colorStatistics"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, !v19))
    {
      v20 = 0;
    }
  }

  return v20;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PUIPosterSnapshotBundle *)self bundleURL];
  v5 = [v3 appendObject:v4 withName:@"bundleURL"];

  v6 = [(PUIPosterSnapshotBundle *)self infoDictionary];
  [v3 appendDictionarySection:v6 withName:@"infoDictionary" skipIfEmpty:1];

  v7 = [v3 build];

  return v7;
}

- (NSDictionary)infoDictionary
{
  v2 = self;
  objc_sync_enter(v2);
  infoDictionary = v2->_infoDictionary;
  if (infoDictionary)
  {
    v4 = infoDictionary;
  }

  else
  {
    v5 = PUIPosterSnapshotBundleURLForComponent(v2->_bundleURL, 3);
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

    v9 = v2->_infoDictionary;
    v2->_infoDictionary = v8;

    v10 = [[_PUIPosterSnapshotBundleContextProvider alloc] initWithDictionary:v2->_infoDictionary];
    contextProvider = v2->_contextProvider;
    v2->_contextProvider = v10;

    v4 = v2->_infoDictionary;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)_decodeImageForComponent:(int64_t)a3 error:(id *)a4
{
  if ((a3 - 5) > 5)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v7 = objc_autoreleasePoolPush();
  if (!self->_levelToImage)
  {
    goto LABEL_7;
  }

  v8 = _posterLevelSetForComponent(a3);
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
      v13 = PUIPosterSnapshotBundleURLForComponent(self->_bundleURL, a3);
      v14 = [(PUIPosterSnapshotBundle *)self ondiskFormat];
      v15 = [[PUIImageEncoder alloc] initWithURL:v13 format:v14];
      v20 = 0;
      v16 = [(PUIImageEncoder *)v15 createUIImageWithOrientation:PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation() scale:&v20 error:v12];
      v17 = v20;

      objc_autoreleasePoolPop(v7);
      if (a4 && v17)
      {
        v18 = v17;
        *a4 = v17;
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

- (id)_decodeImageForLevelSet:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _componentForLevelSet(v6);
  if (v7)
  {
    v8 = [(PUIPosterSnapshotBundle *)self _decodeImageForComponent:v7 error:a4];
  }

  else
  {
    v9 = [(NSDictionary *)self->_levelToImage objectForKey:v6];
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
      v13 = PUIPosterSnapshotBundleURLForPosterLevelSet(self->_bundleURL, v6);
      v14 = [(PUIPosterSnapshotBundle *)self ondiskFormat];
      v15 = [[PUIImageEncoder alloc] initWithURL:v13 format:v14];
      v8 = [(PUIImageEncoder *)v15 createUIImageWithOrientation:PUIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation() scale:a4 error:v12];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)snapshotURLForLevelSet:(id)a3
{
  bundleURL = self->_bundleURL;
  if (bundleURL)
  {
    bundleURL = PUIPosterSnapshotBundleURLForPosterLevelSet(bundleURL, a3);
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
  v2 = self;
  objc_sync_enter(v2);
  colorStatistics = v2->_colorStatistics;
  if (colorStatistics)
  {
    v4 = colorStatistics;
  }

  else
  {
    v5 = [(PUIPosterSnapshotBundle *)v2 infoDictionary];
    v6 = [v5 objectForKey:@"PUIPosterSnapshotBundleInfoKeyContainsColorStatistics"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = PUIPosterSnapshotBundleURLForComponent(v2->_bundleURL, 4);
      v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v8 options:1 error:0];
      v10 = MEMORY[0x1E696ACD0];
      v11 = objc_opt_self();
      v12 = [v10 unarchivedObjectOfClass:v11 fromData:v9 error:0];
      v13 = v2->_colorStatistics;
      v2->_colorStatistics = v12;

      v4 = v2->_colorStatistics;
    }

    else
    {
      v4 = 0;
    }
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)prepareForPresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PUIPosterSnapshotBundle *)self foregroundSnapshot];
  v5 = [(PUIPosterSnapshotBundle *)self floatingSnapshot];
  v6 = [(PUIPosterSnapshotBundle *)self backgroundSnapshot];
  v7 = [(PUIPosterSnapshotBundle *)self compositeSnapshot];
  v8 = [(PUIPosterSnapshotBundle *)self allLevelsExceptFloatingSnapshot];

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