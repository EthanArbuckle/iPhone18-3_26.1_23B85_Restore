@interface UIImage
@end

@implementation UIImage

uint64_t __141__UIImage_PhotosUICore__px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v2 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:1];
    [MEMORY[0x1E69DCAB8] px_playOverlayImage:0];
    objc_claimAutoreleasedReturnValue();
    [v2 size];
    UIGraphicsBeginImageContextWithOptions(v3, 0, 0.0);
    PXSizeScale();
  }

  return result;
}

uint64_t __141__UIImage_PhotosUICore__px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010 graphicsQuality:100];
  v1 = px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__backgroundBlurSettings;
  px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__backgroundBlurSettings = v0;

  v2 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010 graphicsQuality:100];
  v3 = px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__glyphBlurSettings;
  px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__glyphBlurSettings = v2;

  [px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__glyphBlurSettings setColorTintAlpha:0.0];
  v4 = px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler__glyphBlurSettings;

  return [v4 setGrayscaleTintAlpha:0.0];
}

void __141__UIImage_PhotosUICore__px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("px_extractPlayOverlayBackgroundImageFromLocation", v2);
  v1 = px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___extractionQueue;
  px_extractPlayOverlayBackgroundImageFromLocation_inViewportWithSize_contentMode_contentsRect_asynchronously_handler___extractionQueue = v0;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) _px_createOverlayImageWithGlyphStyle:0 backgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.300000012];
  v2 = px_playOverlayImage__normalButtonImage;
  px_playOverlayImage__normalButtonImage = v1;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) _px_createOverlayImageWithGlyphStyle:0 backgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.5];
  v2 = px_playOverlayImage__highlightedButtonImage;
  px_playOverlayImage__highlightedButtonImage = v1;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) _px_createOverlayImageWithGlyphStyle:5 backgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.300000012];
  v2 = px_playOverlayImage__normalButtonImage_56;
  px_playOverlayImage__normalButtonImage_56 = v1;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_9(uint64_t a1)
{
  v1 = [*(a1 + 32) _px_createOverlayImageWithGlyphStyle:5 backgroundWhite:0.959999979 backgroundAlpha:0.959999979 glyphAlpha:0.5];
  v2 = px_playOverlayImage__highlightedButtonImage_58;
  px_playOverlayImage__highlightedButtonImage_58 = v1;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_7()
{
  v0 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPauseVideoOverlayApproximation"];
  v1 = px_playOverlayImage__approximationImage_49;
  px_playOverlayImage__approximationImage_49 = v0;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_6()
{
  v0 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPauseVideoOverlayGlyphMask"];
  v1 = px_playOverlayImage__overlayGlyphMask_42;
  px_playOverlayImage__overlayGlyphMask_42 = v0;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_3()
{
  v0 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayApproximation"];
  v1 = px_playOverlayImage__approximationImage;
  px_playOverlayImage__approximationImage = v0;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayBackgroundMask"];
  v1 = px_playOverlayImage__overlayBackgroundMask;
  px_playOverlayImage__overlayBackgroundMask = v0;
}

void __45__UIImage_PhotosUICore__px_playOverlayImage___block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayGlyphMask"];
  v1 = px_playOverlayImage__overlayGlyphMask;
  px_playOverlayImage__overlayGlyphMask = v0;
}

@end