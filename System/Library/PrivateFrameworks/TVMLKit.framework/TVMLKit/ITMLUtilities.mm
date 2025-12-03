@interface ITMLUtilities
+ (void)image:(id)image didCompleteLoadingForCache:(int64_t)cache requestRecord:(id)record;
@end

@implementation ITMLUtilities

+ (void)image:(id)image didCompleteLoadingForCache:(int64_t)cache requestRecord:(id)record
{
  if (record)
  {
    recordCopy = record;
    imageCopy = image;
    uiImage = [imageCopy uiImage];
    imageType = [imageCopy imageType];

    v11 = UTTypeCopyPreferredTagWithClass(imageType, *MEMORY[0x277CC1F60]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__ITMLUtilities_image_didCompleteLoadingForCache_requestRecord___block_invoke;
    v15[3] = &unk_279D70EE0;
    v16 = imageType;
    v17 = uiImage;
    v18 = v11;
    v12 = v11;
    v13 = uiImage;
    v14 = imageType;
    [recordCopy didCompleteLoadingFromCache:cache withResponseBodyBlock:v15];
  }
}

void __64__ITMLUtilities_image_didCompleteLoadingForCache_requestRecord___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__ITMLUtilities_image_didCompleteLoadingForCache_requestRecord___block_invoke_2;
  v6[3] = &unk_279D70EB8;
  v7 = a1[4];
  v8 = a1[5];
  v10 = v3;
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, v6);
}

void __64__ITMLUtilities_image_didCompleteLoadingForCache_requestRecord___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277CC20C8];
  if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CC20C8]])
  {

LABEL_4:
    v5 = UIImageJPEGRepresentation(*(a1 + 40), 1.0);
    goto LABEL_6;
  }

  v3 = *MEMORY[0x277CC20D0];
  v4 = [*(a1 + 32) isEqualToString:*MEMORY[0x277CC20D0]];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = UIImagePNGRepresentation(*(a1 + 40));
LABEL_6:
  v6 = v5;
  (*(*(a1 + 56) + 16))();
}

@end