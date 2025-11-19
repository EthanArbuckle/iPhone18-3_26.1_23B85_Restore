@interface UIImageView
@end

@implementation UIImageView

void __95__UIImageView_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) _isCancelled] & 1) == 0)
  {
    [pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayBackgroundMask size];
    width = v20.width;
    height = v20.height;
    v4 = *(a1 + 56) + v20.width * -0.5;
    v5 = *(a1 + 64) + v20.height * -0.5;
    UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
    v6 = *(a1 + 40);
    v22.origin.x = v4;
    v22.origin.y = v5;
    v22.size.width = width;
    v22.size.height = height;
    v7 = -CGRectGetMinX(v22);
    v23.origin.x = v4;
    v23.origin.y = v5;
    v23.size.width = width;
    v23.size.height = height;
    v8 = -CGRectGetMinY(v23);
    v24 = CGRectOffset(*(a1 + 72), v7, v8);
    [v6 px_drawInRect:*(a1 + 104) withContentMode:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];
    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (([*(a1 + 32) _isCancelled] & 1) == 0)
    {
      v10 = [v9 _applyBackdropViewSettings:pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__backgroundBlurSettings];
      if (([*(a1 + 32) _isCancelled] & 1) == 0)
      {
        v11 = [v9 _applyBackdropViewSettings:pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__glyphBlurSettings];
        if (([*(a1 + 32) _isCancelled] & 1) == 0)
        {
          [v10 size];
          UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
          v12 = *MEMORY[0x1E695EFF8];
          v13 = *(MEMORY[0x1E695EFF8] + 8);
          [v11 drawAtPoint:{*MEMORY[0x1E695EFF8], v13}];
          [pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayGlyphMask drawAtPoint:22 blendMode:v12 alpha:{v13, 1.0}];
          [v10 drawAtPoint:24 blendMode:v12 alpha:{v13, 1.0}];
          [pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayBackgroundMask drawAtPoint:23 blendMode:v12 alpha:{v13, 1.0}];
          v14 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          if (*(a1 + 112) == 1)
          {
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __95__UIImageView_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___block_invoke_4;
            v17[3] = &unk_1E7B80B48;
            v15 = *(a1 + 48);
            v18 = v14;
            v19 = v15;
            v16 = v14;
            dispatch_async(MEMORY[0x1E69E96A0], v17);
          }

          else
          {
            (*(*(a1 + 48) + 16))();
          }
        }
      }
    }
  }
}

uint64_t __95__UIImageView_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010 graphicsQuality:100];
  v1 = pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__backgroundBlurSettings;
  pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__backgroundBlurSettings = v0;

  v2 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010 graphicsQuality:100];
  v3 = pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__glyphBlurSettings;
  pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__glyphBlurSettings = v2;

  [pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__glyphBlurSettings setColorTintAlpha:0.0];
  [pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__glyphBlurSettings setGrayscaleTintAlpha:0.0];
  v4 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayBackgroundMask"];
  v5 = pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayBackgroundMask;
  pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayBackgroundMask = v4;

  v6 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayGlyphMask"];
  v7 = pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayGlyphMask;
  pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__overlayGlyphMask = v6;

  v8 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayApproximation"];
  v9 = pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__approximationImage;
  pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler__approximationImage = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

void __95__UIImageView_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("pu_extractPlayOverlayBackgroundImageFromCenter", v2);
  v1 = pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___extractionQueue;
  pu_extractPlayOverlayBackgroundImageFromCenter_asynchronously_handler___extractionQueue = v0;
}

@end