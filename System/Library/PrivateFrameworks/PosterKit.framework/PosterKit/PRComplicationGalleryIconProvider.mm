@interface PRComplicationGalleryIconProvider
+ (void)loadIconImageForApplicationBundleIdentifier:(id)identifier atWidth:(double)width completion:(id)completion;
+ (void)loadIconImageForExtensionBundleIdentifier:(id)identifier atWidth:(double)width completion:(id)completion;
@end

@implementation PRComplicationGalleryIconProvider

+ (void)loadIconImageForExtensionBundleIdentifier:(id)identifier atWidth:(double)width completion:(id)completion
{
  v8 = MEMORY[0x1E69635D0];
  completionCopy = completion;
  identifierCopy = identifier;
  v13 = [[v8 alloc] initWithBundleIdentifier:identifierCopy error:0];

  containingBundleRecord = [v13 containingBundleRecord];
  bundleIdentifier = [containingBundleRecord bundleIdentifier];
  [self loadIconImageForApplicationBundleIdentifier:bundleIdentifier atWidth:completionCopy completion:width];
}

+ (void)loadIconImageForApplicationBundleIdentifier:(id)identifier atWidth:(double)width completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([identifierCopy length])
    {
      if (loadIconImageForApplicationBundleIdentifier_atWidth_completion__onceToken != -1)
      {
        +[PRComplicationGalleryIconProvider loadIconImageForApplicationBundleIdentifier:atWidth:completion:];
      }

      v9 = loadIconImageForApplicationBundleIdentifier_atWidth_completion__queue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __100__PRComplicationGalleryIconProvider_loadIconImageForApplicationBundleIdentifier_atWidth_completion___block_invoke_3;
      v11[3] = &unk_1E78452E8;
      v10 = &v12;
      v12 = identifierCopy;
      widthCopy = width;
      v13 = completionCopy;
      [v9 addOperationWithBlock:v11];
    }

    else
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __100__PRComplicationGalleryIconProvider_loadIconImageForApplicationBundleIdentifier_atWidth_completion___block_invoke;
      v18 = &unk_1E7843778;
      v10 = &v19;
      v19 = completionCopy;
      BSDispatchMain();
    }
  }
}

uint64_t __100__PRComplicationGalleryIconProvider_loadIconImageForApplicationBundleIdentifier_atWidth_completion___block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = loadIconImageForApplicationBundleIdentifier_atWidth_completion__queue;
  loadIconImageForApplicationBundleIdentifier_atWidth_completion__queue = v0;

  v2 = loadIconImageForApplicationBundleIdentifier_atWidth_completion__queue;

  return [v2 setMaxConcurrentOperationCount:4];
}

void __100__PRComplicationGalleryIconProvider_loadIconImageForApplicationBundleIdentifier_atWidth_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:@"com.apple.mobilecal"];
  v3 = objc_alloc(MEMORY[0x1E69A8A00]);
  v4 = v3;
  if (v2)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [v4 initWithDate:v5 calendar:v6 format:0];
  }

  else
  {
    v7 = [v3 initWithBundleIdentifier:*(a1 + 32)];
  }

  v8 = *(a1 + 48);
  v9 = objc_alloc(MEMORY[0x1E69A8A30]);
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v12 = [v9 initWithSize:v8 scale:{v8, v11}];

  v13 = [v7 prepareImageForDescriptor:v12];
  v14 = MEMORY[0x1E69DCAB8];
  v15 = [v13 CGImage];
  [v13 scale];
  v16 = [v14 imageWithCGImage:v15 scale:0 orientation:?];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PRComplicationGalleryIconProvider_loadIconImageForApplicationBundleIdentifier_atWidth_completion___block_invoke_4;
  v19[3] = &unk_1E78452C0;
  v17 = *(a1 + 40);
  v20 = v16;
  v21 = v17;
  v18 = v16;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

@end