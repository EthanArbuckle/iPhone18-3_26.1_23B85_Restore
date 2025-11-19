@interface TVSymbolImageLoader
@end

@implementation TVSymbolImageLoader

uint64_t __38___TVSymbolImageLoader_sharedInstance__block_invoke()
{
  sharedInstance_loader = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void __112___TVSymbolImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:a1[4] withConfiguration:a1[5]];
  if (!v2)
  {
    v3 = +[_TVProcessInfo currentProcessInfo];
    v4 = [v3 hasPrivateEntitlement];

    if (v4)
    {
      v2 = [MEMORY[0x277D755B8] _systemImageNamed:a1[4] withConfiguration:a1[5]];
    }

    else
    {
      v2 = 0;
    }
  }

  v10 = v2;
  v5 = [TVImage alloc];
  v6 = v10;
  v7 = -[TVImage initWithCGImageRef:imageOrientation:preserveAlpha:](v5, "initWithCGImageRef:imageOrientation:preserveAlpha:", [v10 CGImage], objc_msgSend(v10, "imageOrientation"), 1);
  [ITMLUtilities image:v7 didCompleteLoadingForCache:1 requestRecord:a1[6]];
  v8 = a1[7];
  if (v8)
  {
    if (v7)
    {
      (*(v8 + 16))(v8, v7, 0, 0, 2, 0);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
      (*(v8 + 16))(v8, 0, 0, 0, 2, v9);
    }
  }
}

@end