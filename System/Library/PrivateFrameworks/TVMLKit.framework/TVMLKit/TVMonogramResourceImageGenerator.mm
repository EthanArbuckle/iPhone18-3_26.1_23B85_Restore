@interface TVMonogramResourceImageGenerator
@end

@implementation TVMonogramResourceImageGenerator

void __125___TVMonogramResourceImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(*(*(a1 + 72) + 8) + 40) isCancelled] & 1) == 0)
  {
    v2 = +[TVInterfaceFactory sharedInterfaceFactory];
    v13 = [v2 imageForResource:*(a1 + 32)];

    v3 = [v13 imageAsset];

    if (v3)
    {
      v4 = [v13 imageAsset];
      v5 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:*(a1 + 80)];
      v6 = [v4 imageWithTraitCollection:v5];

      v13 = v6;
    }

    v7 = [*(a1 + 40) fillColor];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = [*(a1 + 40) fillColor];
      v10 = [v8 tintImage:v13 withColor:v9];

      v11 = +[TVImage imageWithCGImageRef:imageOrientation:preserveAlpha:](TVImage, "imageWithCGImageRef:imageOrientation:preserveAlpha:", [v10 CGImage], objc_msgSend(v10, "imageOrientation"), 1);
      [ITMLUtilities image:v11 didCompleteLoadingForCache:1 requestRecord:*(a1 + 56)];
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v12 = v13;
      v10 = +[TVImage imageWithCGImageRef:imageOrientation:preserveAlpha:](TVImage, "imageWithCGImageRef:imageOrientation:preserveAlpha:", [v13 CGImage], objc_msgSend(v13, "imageOrientation"), 1);
      [ITMLUtilities image:v10 didCompleteLoadingForCache:1 requestRecord:*(a1 + 56)];
      (*(*(a1 + 64) + 16))();
    }
  }
}

@end