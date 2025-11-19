@interface PUIWallpaperInactiveTreatment
- (BOOL)commitToRenderingTree:(id)a3 options:(id)a4 error:(id *)a5;
- (PUIWallpaperInactiveTreatment)initWithCoder:(id)a3;
- (id)applyToImage:(id)a3 options:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PUIWallpaperInactiveTreatment

- (id)applyToImage:(id)a3 options:(id)a4 error:(id *)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v10 = getPIParallaxLegacyPosterStyleClass_softClass;
  v24 = getPIParallaxLegacyPosterStyleClass_softClass;
  if (!getPIParallaxLegacyPosterStyleClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getPIParallaxLegacyPosterStyleClass_block_invoke;
    v20[3] = &unk_1E7854348;
    v20[4] = &v21;
    __getPIParallaxLegacyPosterStyleClass_block_invoke(v20);
    v10 = v22[3];
  }

  v11 = v10;
  _Block_object_dispose(&v21, 8);
  if (v10)
  {
    v19 = 0;
    v12 = [v10 applyInactiveStyleToImage:v9 error:&v19];
    v13 = v19;

    if (v13 || !v12)
    {
      if (a5)
      {
        v17 = v13;
        v14 = 0;
        *a5 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v12 = v12;
      v14 = v12;
    }
  }

  else
  {
    if (!a5)
    {
      v14 = 0;
      v12 = v9;
      goto LABEL_14;
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v25[0] = *MEMORY[0x1E696A580];
    v25[1] = v16;
    v26[0] = @"<PIParallaxLegacyPosterStyle> could not be loaded.";
    v26[1] = @"Check that it should exist on this platform and that you are able to link it.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v15 errorWithDomain:@"com.apple.PosterUIFoundation.PUIRenderer" code:1 userInfo:v13];
    *a5 = v14 = 0;
    v12 = v9;
  }

LABEL_14:

  return v14;
}

- (BOOL)commitToRenderingTree:(id)a3 options:(id)a4 error:(id *)a5
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A598];
    v10[0] = *MEMORY[0x1E696A580];
    v10[1] = v7;
    v11[0] = @"PUIWallpaperInactiveTreatment does not support CoreAnimation rendering.";
    v11[1] = @"Use a PUIRenderer that support CoreImage.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    *a5 = [v6 errorWithDomain:@"com.apple.PosterUIFoundation.PUIRenderer" code:1 userInfo:v8];
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [PUIWallpaperInactiveTreatment allocWithZone:a3];

  return [(PUIWallpaperInactiveTreatment *)v3 init];
}

- (PUIWallpaperInactiveTreatment)initWithCoder:(id)a3
{
  v4 = objc_alloc_init(PUIWallpaperInactiveTreatment);

  return v4;
}

@end