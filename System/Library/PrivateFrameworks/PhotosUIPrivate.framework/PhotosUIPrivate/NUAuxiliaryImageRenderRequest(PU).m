@interface NUAuxiliaryImageRenderRequest(PU)
+ (uint64_t)createGainMapForComposition:()PU;
@end

@implementation NUAuxiliaryImageRenderRequest(PU)

+ (uint64_t)createGainMapForComposition:()PU
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3960];
  v4 = a3;
  v5 = [[v3 alloc] initWithComposition:v4];

  [v5 setAuxiliaryImageType:7];
  v6 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v5 setPriority:v6];

  [v5 setName:@"NUAuxiliaryImageRenderRequest-createGainMap"];
  v13 = 0;
  v7 = [v5 submitSynchronous:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [v7 auxiliaryImage];
    v10 = [v9 cgImageRef];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_74589);
    }

    v11 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "Could not load gain image: %@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

@end