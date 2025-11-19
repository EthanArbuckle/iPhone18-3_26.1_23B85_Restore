@interface _PUWallpaperDebugRenderingEnvironment
- ($A7FE26C25444B3FF39E196F68C4B7864)deviceAttitude;
- (CGRect)containerFrame;
- (CGRect)px_backdropInspectorOcclusionRect;
- (CGRect)px_backdropPrimaryOcclusionRect;
- (CGRect)px_callServicesOcclusionRect;
- (CGRect)px_floatingObscurableBounds;
- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)a3;
- (CGRect)px_minimumTitleBounds;
- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)a3;
- (CGRect)px_preferredTitleBounds;
- (CGRect)px_salientContentRectangle;
- (CGRect)px_titleBoundsForLayout:(unint64_t)a3;
- (_PUWallpaperDebugRenderingEnvironment)initWithPosterConfiguration:(id)a3 assetDirectory:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _PUWallpaperDebugRenderingEnvironment

- ($A7FE26C25444B3FF39E196F68C4B7864)deviceAttitude
{
  v3 = *&self[1]._px_snapshot;
  *v2 = *&self->_deviceAttitude.deviceOrientation;
  v2[1] = v3;
  v2[2] = *&self[1]._px_significantEventsCounter;
  return self;
}

- (CGRect)containerFrame
{
  x = self->_containerFrame.origin.x;
  y = self->_containerFrame.origin.y;
  width = self->_containerFrame.size.width;
  height = self->_containerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)px_preferredTitleBounds
{
  x = self->_px_preferredTitleBounds.origin.x;
  y = self->_px_preferredTitleBounds.origin.y;
  width = self->_px_preferredTitleBounds.size.width;
  height = self->_px_preferredTitleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)px_minimumTitleBounds
{
  x = self->_px_minimumTitleBounds.origin.x;
  y = self->_px_minimumTitleBounds.origin.y;
  width = self->_px_minimumTitleBounds.size.width;
  height = self->_px_minimumTitleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)px_callServicesOcclusionRect
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

- (CGRect)px_backdropInspectorOcclusionRect
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

- (CGRect)px_backdropPrimaryOcclusionRect
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

- (CGRect)px_maximumTitleBoundsForLayout:(unint64_t)a3
{
  [(_PUWallpaperDebugRenderingEnvironment *)self px_minimumTitleBounds];
  v10 = v4;
  v11 = v5;
  PXSizeSetValueForAxis();
  PXRectWithOriginAndSize();
  [(_PUWallpaperDebugRenderingEnvironment *)self containerFrame:v10];
  PXRectWithSize();
  PXRectNormalize();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)px_minimumTitleBoundsForLayout:(unint64_t)a3
{
  [(_PUWallpaperDebugRenderingEnvironment *)self px_minimumTitleBounds];
  [(_PUWallpaperDebugRenderingEnvironment *)self containerFrame];
  PXRectWithSize();

  PXRectNormalize();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)px_titleBoundsForLayout:(unint64_t)a3
{
  [(_PUWallpaperDebugRenderingEnvironment *)self px_minimumTitleBoundsForLayout:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_PUWallpaperDebugRenderingEnvironment *)self px_preferredTitleBounds];
  if (!CGRectIsEmpty(v20))
  {
    [(_PUWallpaperDebugRenderingEnvironment *)self titleHeightAdjustmentAmount];
    PXRectByLinearlyInterpolatingRects();
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_PUWallpaperDebugRenderingEnvironment alloc];
  v5 = [(_PUWallpaperDebugRenderingEnvironment *)self posterConfiguration];
  v6 = [(_PUWallpaperDebugRenderingEnvironment *)self assetDirectory];
  v7 = [(_PUWallpaperDebugRenderingEnvironment *)v4 initWithPosterConfiguration:v5 assetDirectory:v6];

  *(v7 + 8) = [(_PUWallpaperDebugRenderingEnvironment *)self px_isSnapshot];
  *(v7 + 9) = [(_PUWallpaperDebugRenderingEnvironment *)self px_isPreview];
  *(v7 + 24) = [(_PUWallpaperDebugRenderingEnvironment *)self px_significantEventsCounter];
  v8 = [(_PUWallpaperDebugRenderingEnvironment *)self px_traitCollection];
  v9 = [v8 copy];
  v10 = *(v7 + 32);
  *(v7 + 32) = v9;

  [(_PUWallpaperDebugRenderingEnvironment *)self px_minimumTitleBounds];
  *(v7 + 64) = v11;
  *(v7 + 72) = v12;
  *(v7 + 80) = v13;
  *(v7 + 88) = v14;
  [(_PUWallpaperDebugRenderingEnvironment *)self px_preferredTitleBounds];
  *(v7 + 96) = v15;
  *(v7 + 104) = v16;
  *(v7 + 112) = v17;
  *(v7 + 120) = v18;
  [(_PUWallpaperDebugRenderingEnvironment *)self titleHeightAdjustmentAmount];
  *(v7 + 40) = v19;
  [(_PUWallpaperDebugRenderingEnvironment *)self containerFrame];
  *(v7 + 128) = v20;
  *(v7 + 136) = v21;
  *(v7 + 144) = v22;
  *(v7 + 152) = v23;
  return v7;
}

- (_PUWallpaperDebugRenderingEnvironment)initWithPosterConfiguration:(id)a3 assetDirectory:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = _PUWallpaperDebugRenderingEnvironment;
  v9 = [(_PUWallpaperDebugRenderingEnvironment *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_posterConfiguration, a3);
    v10->_titleHeightAdjustmentAmount = 1.0;
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v12 = MEMORY[0x1E695DFF8];
      v13 = NSTemporaryDirectory();
      v14 = [v12 fileURLWithPath:v13];
      v11 = [v14 URLByAppendingPathComponent:@"PhotosPosterRendering"];
    }

    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v7 media];
    v17 = [v16 firstObject];
    v18 = [v17 assetUUID];
    v19 = [v11 URLByAppendingPathComponent:v18];

    v20 = [v19 path];
    LOBYTE(v17) = [v15 fileExistsAtPath:v20];

    if (v17)
    {
      v21 = 0;
    }

    else
    {
      v28 = 0;
      [v15 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v28];
      v21 = v28;
    }

    v27 = v21;
    v22 = [v7 saveToURL:v11 error:&v27];
    v23 = v27;

    if (v22)
    {
      v24 = v11;
      p_super = &v10->_assetDirectory->super;
      v10->_assetDirectory = v24;
    }

    else
    {
      p_super = PLWallpaperGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v23;
        _os_log_impl(&dword_1B36F3000, p_super, OS_LOG_TYPE_ERROR, "Failed to store playground configuration: %@", buf, 0xCu);
      }
    }
  }

  return v10;
}

@end