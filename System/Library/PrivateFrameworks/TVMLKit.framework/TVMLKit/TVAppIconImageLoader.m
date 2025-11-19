@interface TVAppIconImageLoader
@end

@implementation TVAppIconImageLoader

uint64_t __39___TVAppIconImageLoader_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_loader_1;
  sharedInstance_loader_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __113___TVAppIconImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _createApplicationIconForIdentifier:*(a1 + 40)];
  v2 = [TVImage alloc];
  v3 = v8;
  v4 = -[TVImage initWithCGImageRef:preserveAlpha:](v2, "initWithCGImageRef:preserveAlpha:", [v8 CGImage], 1);
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6)
  {
    if (v4)
    {
      (*(v6 + 16))(v6, v4, 0, 0, 0, 0);
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
      (*(v6 + 16))(v6, 0, 0, 0, 0, v7);
    }
  }
}

@end