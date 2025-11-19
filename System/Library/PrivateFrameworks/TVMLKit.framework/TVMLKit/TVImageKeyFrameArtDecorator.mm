@interface TVImageKeyFrameArtDecorator
@end

@implementation TVImageKeyFrameArtDecorator

void __69___TVImageKeyFrameArtDecorator_decorate_scaledWithSize_croppedToFit___block_invoke(uint64_t a1, void *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _applyCornerMaskForRect:objc_msgSend(a2 toContext:{"CGContext"), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(a1 + 40);
  if (*(a1 + 104) == 1)
  {
    v4 = [*(a1 + 32) _imageFixedForRotation:*(a1 + 48)];

    v3 = v4;
  }

  [v3 drawInRect:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), ceil(*(a1 + 80) * (*(a1 + 88) / *(a1 + 96)))}];
  v5 = *(a1 + 72);
  v6 = *(a1 + 80) + -75.0;
  v7 = [v3 CGImage];
  v23.origin.x = 0.0;
  v23.origin.y = v6;
  v23.size.width = v5;
  v23.size.height = 75.0;
  v8 = CGImageCreateWithImageInRect(v7, v23);
  v9 = [MEMORY[0x277D755B8] imageWithCGImage:v8];
  CGImageRelease(v8);
  v10 = [MEMORY[0x277D75348] colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:0.2];
  v11 = _TVBlurredImageWithOptionsAndOverlayColorForImage(v9, 13, v10, v5, 75.0, 40.0);

  [v11 drawInRect:{0.0, v6, v5, 75.0}];
  if ([*(*(a1 + 32) + 120) length])
  {
    v12 = *(a1 + 80) + -75.0 + 15.0;
    v13 = *(a1 + 72) + -15.0 + -15.0;
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v15 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v16 = [v15 mutableCopy];

    [v16 setAlignment:0];
    v17 = *MEMORY[0x277D740A8];
    v22[0] = v14;
    v18 = *MEMORY[0x277D740C0];
    v21[0] = v17;
    v21[1] = v18;
    v19 = [MEMORY[0x277D75348] whiteColor];
    v21[2] = *MEMORY[0x277D74118];
    v22[1] = v19;
    v22[2] = v16;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

    [*(*(a1 + 32) + 120) drawWithRect:33 options:v20 attributes:0 context:{15.0, v12, v13, 45.0}];
  }
}

@end