@interface _PUWallpaperPosterEditorDebugEnvironment
- ($A7FE26C25444B3FF39E196F68C4B7864)deviceAttitude;
- (CGRect)px_floatingObscurableBounds;
- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)layout;
- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)layout;
- (CGRect)px_salientContentRectangle;
- (CGRect)px_titleBoundsForLayout:(unint64_t)layout;
- (PUMutablePosterConfiguration)pu_targetConfiguration;
- (_PUWallpaperPosterEditorDebugEnvironment)init;
- (_PUWallpaperPosterEditorDebugEnvironment)initWithPosterDescriptor:(id)descriptor;
- (_PUWallpaperPosterEditorDebugEnvironment)initWithSourcePosterConfiguration:(id)configuration;
- (int64_t)pu_posterType;
@end

@implementation _PUWallpaperPosterEditorDebugEnvironment

- (CGRect)px_salientContentRectangle
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- ($A7FE26C25444B3FF39E196F68C4B7864)deviceAttitude
{
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  return self;
}

- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)layout
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)layout
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_titleBoundsForLayout:(unint64_t)layout
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)px_floatingObscurableBounds
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v4 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PUMutablePosterConfiguration)pu_targetConfiguration
{
  v2 = objc_alloc_init(_PUMutablePosterConfigurationDebug);

  return v2;
}

- (int64_t)pu_posterType
{
  posterDescriptor = [(_PUWallpaperPosterEditorDebugEnvironment *)self posterDescriptor];

  if (posterDescriptor)
  {
    posterDescriptor2 = [(_PUWallpaperPosterEditorDebugEnvironment *)self posterDescriptor];
LABEL_5:
    v6 = posterDescriptor2;
    posterType = [posterDescriptor2 posterType];

    return posterType;
  }

  sourcePosterConfiguration = [(_PUWallpaperPosterEditorDebugEnvironment *)self sourcePosterConfiguration];

  if (sourcePosterConfiguration)
  {
    posterDescriptor2 = [(_PUWallpaperPosterEditorDebugEnvironment *)self sourcePosterConfiguration];
    goto LABEL_5;
  }

  return 0;
}

- (_PUWallpaperPosterEditorDebugEnvironment)initWithSourcePosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(_PUWallpaperPosterEditorDebugEnvironment *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourcePosterConfiguration, configuration);
  }

  return v7;
}

- (_PUWallpaperPosterEditorDebugEnvironment)initWithPosterDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = [(_PUWallpaperPosterEditorDebugEnvironment *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_posterDescriptor, descriptor);
  }

  return v7;
}

- (_PUWallpaperPosterEditorDebugEnvironment)init
{
  v10.receiver = self;
  v10.super_class = _PUWallpaperPosterEditorDebugEnvironment;
  v2 = [(_PUWallpaperPosterEditorDebugEnvironment *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"PhotosPoster"];
    v6 = [v3 fileURLWithPath:v5];
    targetAssetDirectory = v2->_targetAssetDirectory;
    v2->_targetAssetDirectory = v6;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager createDirectoryAtURL:v2->_targetAssetDirectory withIntermediateDirectories:0 attributes:0 error:0];
  }

  return v2;
}

@end