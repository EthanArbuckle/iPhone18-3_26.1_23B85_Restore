@interface WFFileStorageUtilities
+ (id)documentsDirectoryWithError:(id *)a3;
+ (void)createDocumentsDirectoryIfNecessary;
@end

@implementation WFFileStorageUtilities

+ (void)createDocumentsDirectoryIfNecessary
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_BACKGROUND, 0);

  v3 = dispatch_queue_create("com.apple.shortcuts.WFFileStorageUtilities", attr);
  dispatch_async(v3, &__block_literal_global_36607);
}

void __61__WFFileStorageUtilities_createDocumentsDirectoryIfNecessary__block_invoke()
{
  v0 = [WFFileStorageUtilities documentsDirectoryWithError:0];
  v1 = [v0 URLByAppendingPathComponent:@".WorkflowHiddenFile" isDirectory:0];
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = objc_opt_new();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__WFFileStorageUtilities_createDocumentsDirectoryIfNecessary__block_invoke_2;
  v3[3] = &unk_1E8378BD0;
  v3[4] = &v4;
  [v2 coordinateReadingItemAtURL:v1 options:4 error:0 byAccessor:v3];
  if ((v5[3] & 1) == 0)
  {
    [v2 coordinateWritingItemAtURL:v1 options:0 error:0 byAccessor:&__block_literal_global_180_36611];
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t __61__WFFileStorageUtilities_createDocumentsDirectoryIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 checkPromisedItemIsReachableAndReturnError:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __61__WFFileStorageUtilities_createDocumentsDirectoryIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC08];
  v3 = a2;
  v5 = [v2 defaultManager];
  v4 = [v3 path];

  [v5 createFileAtPath:v4 contents:0 attributes:0];
}

+ (id)documentsDirectoryWithError:(id *)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [a1 containerIdentifier];
  v7 = [v5 URLForUbiquityContainerIdentifier:v6];
  v8 = [v7 URLByAppendingPathComponent:@"Documents" isDirectory:1];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if ((v11 & 1) != 0 || ([MEMORY[0x1E696AC08] defaultManager], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v8, 1, 0, a3), v12, v13))
    {
      a3 = v8;
      goto LABEL_8;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A578];
    v16 = WFLocalizedString(@"The iCloud Container could not be found.");
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a3 = [v14 errorWithDomain:v15 code:4 userInfo:v17];
  }

  a3 = 0;
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];

  return a3;
}

@end