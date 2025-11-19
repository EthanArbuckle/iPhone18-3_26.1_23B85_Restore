@interface UIImage
@end

@implementation UIImage

void __110__UIImage_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) _isCancelled] & 1) == 0)
  {
    [*(a1 + 40) size];
    width = v20.width;
    height = v20.height;
    v4 = *(a1 + 72) + v20.width * -0.5;
    v5 = *(a1 + 80) + v20.height * -0.5;
    UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
    v6 = *(a1 + 48);
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
    v24 = CGRectOffset(*(a1 + 88), v7, v8);
    [v6 px_drawInRect:*(a1 + 120) withContentMode:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];
    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (([*(a1 + 32) _isCancelled] & 1) == 0)
    {
      v10 = [v9 _applyBackdropViewSettings:pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__backgroundBlurSettings];
      if (([*(a1 + 32) _isCancelled] & 1) == 0)
      {
        v11 = [v9 _applyBackdropViewSettings:pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__glyphBlurSettings];
        if (([*(a1 + 32) _isCancelled] & 1) == 0)
        {
          [v10 size];
          UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
          v12 = *MEMORY[0x1E695EFF8];
          v13 = *(MEMORY[0x1E695EFF8] + 8);
          [v11 drawAtPoint:{*MEMORY[0x1E695EFF8], v13}];
          [*(a1 + 56) drawAtPoint:22 blendMode:v12 alpha:{v13, 1.0}];
          [v10 drawAtPoint:24 blendMode:v12 alpha:{v13, 1.0}];
          [*(a1 + 40) drawAtPoint:23 blendMode:v12 alpha:{v13, 1.0}];
          v14 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          if (*(a1 + 128) == 1)
          {
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __110__UIImage_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler___block_invoke_3;
            v17[3] = &unk_1E7B80B48;
            v15 = *(a1 + 64);
            v18 = v14;
            v19 = v15;
            v16 = v14;
            dispatch_async(MEMORY[0x1E69E96A0], v17);
          }

          else
          {
            (*(*(a1 + 64) + 16))();
          }
        }
      }
    }
  }
}

uint64_t __110__UIImage_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler___block_invoke()
{
  v0 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010 graphicsQuality:100];
  v1 = pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__backgroundBlurSettings;
  pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__backgroundBlurSettings = v0;

  v2 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010 graphicsQuality:100];
  v3 = pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__glyphBlurSettings;
  pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__glyphBlurSettings = v2;

  [pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__glyphBlurSettings setColorTintAlpha:0.0];
  v4 = pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__glyphBlurSettings;

  return [v4 setGrayscaleTintAlpha:0.0];
}

uint64_t __63__UIImage_PhotosUI__pu_centeredImage_withBackgroundColor_size___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 set];
  [v8 fillRect:{v3, v4, v5, v6}];

  [*(a1 + 40) size];
  PXRectGetCenter();
  PXRectWithCenterAndSize();
  v9 = *(a1 + 40);

  return [v9 drawInRect:?];
}

void __119__UIImage_PhotosUI__pu_imageWithIconImage_iconImageColor_text_font_textColor_fillColor_strokeColor_cornerRadius_inset___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 format];
  [v3 scale];
  v5 = 1.0 / fmax(v4, 1.0);
  v6 = MEMORY[0x1E69DC728];
  v14 = CGRectInset(*(a1 + 80), v5 * 0.5, v5 * 0.5);
  v7 = [v6 bezierPathWithRoundedRect:v14.origin.x cornerRadius:{v14.origin.y, v14.size.width, v14.size.height, *(a1 + 112)}];
  [v7 setLineWidth:v5];
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 setFill];
    [v7 fill];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    [v9 setStroke];
    [v7 stroke];
  }

  if (*(a1 + 48))
  {
    CGContextSetFillColorWithColor([v12 CGContext], objc_msgSend(*(a1 + 48), "CGColor"));
  }

  v10 = *(a1 + 120);
  if (*(a1 + 56))
  {
    [*(a1 + 56) drawAtPoint:{v10, CGRectGetMidY(*(a1 + 80)) - *(a1 + 144) * 0.5}];
    v10 = v10 + *(a1 + 152) + *(a1 + 136);
    v11 = *(a1 + 104) * 0.5 - *(a1 + 168) * 0.5;
  }

  else
  {
    v11 = *(a1 + 128);
  }

  [*(a1 + 64) drawAtPoint:*(a1 + 72) withAttributes:{v10, v11}];
}

@end