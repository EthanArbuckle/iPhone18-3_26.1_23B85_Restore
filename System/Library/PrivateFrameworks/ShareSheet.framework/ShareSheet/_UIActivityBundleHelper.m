@interface _UIActivityBundleHelper
+ (id)activityBundleHelperForExtension:(id)a3;
- (_UIActivityBundleHelper)init;
- (_UIActivityBundleHelper)initWithBundleProxy:(id)a3;
- (id)debugDescription;
- (id)imageForApplicationIconFormat:(int)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6;
@end

@implementation _UIActivityBundleHelper

+ (id)activityBundleHelperForExtension:(id)a3
{
  v3 = a3;
  v4 = [v3 _extensionBundle];

  if (!v4)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_UIActivityBundleHelper *)v3 activityBundleHelperForExtension:v5];
    }
  }

  v6 = [v3 _plugIn];
  v7 = [v6 uuid];
  v8 = [MEMORY[0x1E6963678] pluginKitProxyForUUID:v7];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = share_sheet_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_UIActivityBundleHelper *)v3 activityBundleHelperForExtension:v7, v10];
    }

    v11 = MEMORY[0x1E6963678];
    v12 = [v3 identifier];
    v9 = [v11 pluginKitProxyForIdentifier:v12];

    if (!v9)
    {
      v13 = share_sheet_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(_UIActivityBundleHelper *)v3 activityBundleHelperForExtension:v7, v13];
      }

      v9 = 0;
    }
  }

  v14 = [objc_alloc(objc_opt_class()) initWithBundleProxy:v9];

  return v14;
}

- (_UIActivityBundleHelper)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UIActivityBundleHelper init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (_UIActivityBundleHelper)initWithBundleProxy:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIActivityBundleHelper;
  v5 = [(_UIActivityBundleHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIActivityBundleHelper *)v5 setBundleProxy:v4];
  }

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIActivityBundleHelper;
  v4 = [(_UIActivityBundleHelper *)&v8 description];
  v5 = [(_UIActivityBundleHelper *)self bundleProxy];
  v6 = [v3 stringWithFormat:@"%@ {bundle = %@}", v4, v5];

  return v6;
}

- (id)imageForApplicationIconFormat:(int)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6
{
  v9 = a4 != 1;
  v10 = a3 != 10;
  v11 = MEMORY[0x1E69A8AA0];
  if (a3 == 10)
  {
    v11 = MEMORY[0x1E69A8A78];
  }

  v12 = MEMORY[0x1E69A8A00];
  v13 = *v11;
  v14 = [v12 alloc];
  v15 = [(_UIActivityBundleHelper *)self bundleProxy];
  v16 = [v14 initWithResourceProxy:v15];

  v17 = objc_alloc_init(MEMORY[0x1E69A8A48]);
  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = v19;

  [v17 setScale:v20];
  v21 = [MEMORY[0x1E69DC938] currentDevice];
  [v21 sh_hostUserInterfaceIdiom];
  [v17 setSize:3];
  v22 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v13];

  [v22 setTemplateVariant:v9];
  [v22 setDrawBorder:v10];
  if (a4 == 1)
  {
    v23 = [(objc_class *)getSFUIActivityImageProviderClass() tintImageDescriptor:v22 withUserInterfaceStyle:a6 forGraphicIcon:0];

    v22 = v23;
  }

  v24 = [v16 imageForDescriptor:v17];
  if (!v24)
  {
    v24 = [v16 imageForImageDescriptor:v22];
  }

  v25 = MEMORY[0x1E69DCAB8];
  v26 = [v24 CGImage];
  [v24 scale];
  v27 = [v25 imageWithCGImage:v26 scale:0 orientation:?];

  return v27;
}

+ (void)activityBundleHelperForExtension:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_18B359000, a2, OS_LOG_TYPE_ERROR, "Cannot access extension bundle (extensionIdentifier=%{public}@)", &v4, 0xCu);
}

+ (void)activityBundleHelperForExtension:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [a1 identifier];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_18B359000, a3, OS_LOG_TYPE_ERROR, "Cannot access extension's bundleProxy with UUID (extensionIdentifier=%{public}@; pluginIdentifier=%{public}@)", v5, 0x16u);
}

+ (void)activityBundleHelperForExtension:(NSObject *)a3 .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [a1 identifier];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_18B359000, a3, OS_LOG_TYPE_FAULT, "Cannot access extension's bundleProxy (extensionIdentifier=%{public}@; pluginIdentifier=%{public}@)", v5, 0x16u);
}

@end