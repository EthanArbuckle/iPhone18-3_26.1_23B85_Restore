@interface TVResourceImageLoader
@end

@implementation TVResourceImageLoader

uint64_t __40___TVResourceImageLoader_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_loader_0;
  sharedInstance_loader_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __114___TVResourceImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(void *a1)
{
  v2 = +[TVInterfaceFactory sharedInterfaceFactory];
  v12 = [v2 imageForResource:a1[4]];

  v3 = [v12 imageAsset];

  if (v3)
  {
    v4 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:a1[7]];
    v5 = [v12 imageAsset];
    v6 = [v5 imageWithTraitCollection:v4];

    v12 = v6;
  }

  v7 = [TVImage alloc];
  v8 = v12;
  v9 = -[TVImage initWithCGImageRef:imageOrientation:preserveAlpha:](v7, "initWithCGImageRef:imageOrientation:preserveAlpha:", [v12 CGImage], objc_msgSend(v12, "imageOrientation"), 1);
  [ITMLUtilities image:v9 didCompleteLoadingForCache:1 requestRecord:a1[5]];
  v10 = a1[6];
  if (v10)
  {
    if (v9)
    {
      (*(v10 + 16))(v10, v9, 0, 0, 0, 0);
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
      (*(v10 + 16))(v10, 0, 0, 0, 0, v11);
    }
  }
}

@end