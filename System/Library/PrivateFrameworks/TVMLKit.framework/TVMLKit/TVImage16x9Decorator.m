@interface TVImage16x9Decorator
@end

@implementation TVImage16x9Decorator

void __62___TVImage16x9Decorator_decorate_scaledWithSize_croppedToFit___block_invoke(uint64_t a1, void *a2)
{
  v23[3] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _applyCornerMaskForRect:objc_msgSend(a2 toContext:{"CGContext"), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:0.2];
  v4 = _TVBlurredImageWithOptionsAndOverlayColorForImage(*(a1 + 40), 13, v3, *(a1 + 72), *(a1 + 80), 150.0);
  [v4 drawInRect:{0.0, 0.0, *(a1 + 72), *(a1 + 80)}];
  v5 = *(a1 + 40);
  if (*(a1 + 104) == 1)
  {
    v6 = [*(a1 + 32) _imageFixedForRotation:*(a1 + 48)];

    v5 = v6;
  }

  v7 = *(a1 + 80) + -20.0 + -20.0;
  v8 = ceil(v7 * (*(a1 + 88) / *(a1 + 96)));
  [v5 drawInRect:{20.0, 20.0, v8, v7}];
  if ([*(*(a1 + 32) + 120) length])
  {
    v24.origin.x = 20.0;
    v24.origin.y = 20.0;
    v24.size.width = v8;
    v24.size.height = v7;
    v9 = CGRectGetMaxX(v24) + 15.0;
    v10 = *(a1 + 72) + -15.0 + -15.0;
    v25.origin.x = 20.0;
    v25.origin.y = 20.0;
    v25.size.width = v8;
    v25.size.height = v7;
    v11 = v10 - CGRectGetMaxX(v25);
    v12 = *(a1 + 80) + -15.0 + -15.0;
    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v14 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v15 = [v14 mutableCopy];

    [v15 setAlignment:0];
    v16 = *MEMORY[0x277D740A8];
    v23[0] = v13;
    v17 = *MEMORY[0x277D740C0];
    v22[0] = v16;
    v22[1] = v17;
    v18 = [MEMORY[0x277D75348] whiteColor];
    v22[2] = *MEMORY[0x277D74118];
    v23[1] = v18;
    v23[2] = v15;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    [*(*(a1 + 32) + 120) boundingRectWithSize:33 options:v19 attributes:0 context:{v11, v12}];
    if (v12 <= v20)
    {
      v21 = 15.0;
    }

    else
    {
      v21 = (v12 - v20) * 0.5;
    }

    [*(*(a1 + 32) + 120) drawWithRect:33 options:v19 attributes:0 context:{v9, v21, v11, v12}];
  }
}

@end