@interface TVMonogramInitialsSilhouetteImageGenerator
@end

@implementation TVMonogramInitialsSilhouetteImageGenerator

void __76___TVMonogramInitialsSilhouetteImageGenerator_monogramImageWithDescription___block_invoke(uint64_t a1, void *a2)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 <= 0.0)
  {
    [*(a1 + 32) setFill];
    UIRectFill(*(a1 + 72));
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    if (fabs(*(a1 + 56) * 0.5) == v4)
    {
      [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v5, v6, v7, v8}];
    }

    else
    {
      [MEMORY[0x277D75208] bezierPathWithRoundedRect:v5 cornerRadius:{v6, v7, v8}];
    }
    v9 = ;
    [v9 addClip];
    [*(a1 + 32) set];
    [v9 fill];
  }

  v10 = [*(a1 + 40) font];
  v11 = [*(a1 + 40) text];
  if ([v11 length])
  {
    v12 = [*(a1 + 40) text];
  }

  else
  {
    v13 = objc_opt_class();
    v14 = [*(a1 + 40) firstName];
    v15 = [*(a1 + 40) lastName];
    v12 = [v13 _initialsForFirstName:v14 lastName:v15];
  }

  v16 = [v12 length];
  v17 = *(a1 + 40);
  if (v16)
  {
    v18 = [v17 textColor];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [MEMORY[0x277D75348] colorWithRed:0.941176471 green:0.941176471 blue:0.956862745 alpha:1.0];
    }

    v23 = v20;

    v24 = objc_alloc(MEMORY[0x277CCA898]);
    v25 = *MEMORY[0x277D740C0];
    v41[0] = *MEMORY[0x277D740A8];
    v41[1] = v25;
    v42[0] = v10;
    v42[1] = v23;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    v27 = [v24 initWithString:v12 attributes:v26];

    [v27 size];
    UIRectCenteredXInRect();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = *(a1 + 96);
    [v10 capHeight];
    v36 = (v34 - v35) * -0.5;
    v37 = *(a1 + 96);
    [v10 pointSize];
    v39 = v37 - v38 + v36;
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
    [v27 drawInRect:{v29, v39, v31, v33}];

    goto LABEL_17;
  }

  if ([v17 shouldFallBackToSilhouette])
  {
    v21 = MEMORY[0x277D755B8];
    v22 = +[TVMLUtilities TVMLKitBundle];
    v23 = [v21 imageNamed:@"monogram-silhouette" inBundle:v22];

    [v23 drawInRect:22 blendMode:*(a1 + 72) alpha:{*(a1 + 80), *(a1 + 88), *(a1 + 96), 1.0}];
LABEL_17:
  }
}

void __135___TVMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(*(*(a1 + 48) + 8) + 40) isCancelled] & 1) == 0)
  {
    v2 = [_TVMonogramInitialsSilhouetteImageGenerator monogramImageWithDescription:*(a1 + 32)];
    v3 = -[TVImage initWithCGImageRef:preserveAlpha:]([TVImage alloc], "initWithCGImageRef:preserveAlpha:", [v2 CGImage], 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __135___TVMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_2;
    block[3] = &unk_279D70DE8;
    v6 = *(a1 + 40);
    v4 = v6;
    v9 = v6;
    v8 = v3;
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __135___TVMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 48) + 8) + 40) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

@end