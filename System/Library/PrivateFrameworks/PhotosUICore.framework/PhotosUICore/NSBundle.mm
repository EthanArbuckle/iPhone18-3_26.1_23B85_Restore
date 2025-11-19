@interface NSBundle
@end

@implementation NSBundle

void __35__NSBundle_PhotosUICore__px_bundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = px_bundle_frameworkBundle;
  px_bundle_frameworkBundle = v0;
}

void __48__NSBundle_PhotosUICore__px_sharedLibraryBundle__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/Photos/Resources/PXSharedLibrary.bundle"];
  v1 = px_sharedLibraryBundle_sharedLibraryFrameworkBundle;
  px_sharedLibraryBundle_sharedLibraryFrameworkBundle = v0;

  v2 = px_sharedLibraryBundle_sharedLibraryFrameworkBundle;
  v3 = PLUIGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      v5 = [px_sharedLibraryBundle_sharedLibraryFrameworkBundle bundlePath];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Bundle loaded at path %@", &v6, 0xCu);
    }
  }

  else if (v4)
  {
    v6 = 138412290;
    v7 = @"/System/Library/Photos/Resources/PXSharedLibrary.bundle";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_ERROR, "Bundle not found at path %@", &v6, 0xCu);
  }
}

@end