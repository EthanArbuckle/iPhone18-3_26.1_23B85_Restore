@interface VUIMonogramResourceOrSymbolImageGenerator
@end

@implementation VUIMonogramResourceOrSymbolImageGenerator

void __120___VUIMonogramResourceOrSymbolImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69DF6D0] imageForResource:*(a1 + 32) accessibilityDescription:0];
    v5 = [v4 imageAsset];

    if (v5)
    {
      v6 = [v4 imageAsset];
      v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithLayoutDirection:*(a1 + 64)];
      v8 = [v6 imageWithTraitCollection:v7];

      v4 = v8;
    }

    v9 = [*(a1 + 40) fillColor];

    if (v9)
    {
      v10 = [*(a1 + 40) fillColor];
      v11 = [v4 vui_imageWithColor:v10];

      v4 = v11;
    }

    v12 = [MEMORY[0x1E69DF710] imageWithCGImageRef:objc_msgSend(v4 imageOrientation:"CGImage") preserveAlpha:{objc_msgSend(v4, "imageOrientation"), 1}];
    (*(*(a1 + 48) + 16))();
  }

  objc_destroyWeak(&to);
}

void __120___VUIMonogramResourceOrSymbolImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 56));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    if (*(a1 + 64) <= 0.0)
    {
      [*(a1 + 32) size];
    }

    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:*MEMORY[0x1E69DB978] weight:?];
    v5 = [MEMORY[0x1E69DCAB8] vuiSystemImageNamed:*(a1 + 40) withConfiguration:v4 accessibilityDescription:0];
    v6 = [*(a1 + 32) fillColor];

    if (v6)
    {
      v7 = [*(a1 + 32) fillColor];
      v8 = [v5 vui_imageWithColor:v7];

      v5 = v8;
    }

    v9 = [MEMORY[0x1E69DF710] imageWithCGImageRef:objc_msgSend(v5 imageOrientation:"CGImage") preserveAlpha:{objc_msgSend(v5, "imageOrientation"), 1}];
    (*(*(a1 + 48) + 16))();
  }

  objc_destroyWeak(&to);
}

@end