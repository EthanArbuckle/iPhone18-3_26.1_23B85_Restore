@interface UIImage(VideosUI)
+ (id)imageWithColor:()VideosUI;
+ (id)vui_videosUIImageNamed:()VideosUI;
- (id)vui_aspectFitImageOfSize:()VideosUI;
- (id)vui_croppedImageOfSize:()VideosUI;
- (id)vui_iconImageOfSize:()VideosUI radius:stroke:;
- (uint64_t)vui_iconImageOfSize:()VideosUI;
- (uint64_t)vui_iconImageOfSize:()VideosUI radius:;
@end

@implementation UIImage(VideosUI)

+ (id)vui_videosUIImageNamed:()VideosUI
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  vui_videosUIBundle = [v3 vui_videosUIBundle];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:vui_videosUIBundle];

  return v6;
}

+ (id)imageWithColor:()VideosUI
{
  v3 = a3;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [v3 setFill];

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (uint64_t)vui_iconImageOfSize:()VideosUI
{
  [VUIAppIconImageService iconCornerRadiusForSize:?];

  return [self vui_iconImageOfSize:a2 radius:{a3, v6}];
}

- (uint64_t)vui_iconImageOfSize:()VideosUI radius:
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v10 = 1.0 / v9;

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10;
  }

  return [self vui_iconImageOfSize:a2 radius:a3 stroke:{a4, v13}];
}

- (id)vui_iconImageOfSize:()VideosUI radius:stroke:
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = v11;

  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  v15 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*MEMORY[0x1E695EFF8] cornerRadius:{v14, a2, a3, a4}];
  [v15 setLineWidth:a5];
  v22.width = a2;
  v22.height = a3;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v12);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
  [v15 addClip];
  v17 = [self copy];
  [v17 drawInRect:17 blendMode:v13 alpha:{v14, a2, a3, 1.0}];
  if (a5 != 0.0)
  {
    v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
    [v18 setStroke];

    [v15 strokeWithBlendMode:5 alpha:1.0];
  }

  v19 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();

  return v19;
}

- (id)vui_aspectFitImageOfSize:()VideosUI
{
  v5 = [self copy];
  [v5 size];
  v8 = a2 / v6;
  if (a2 / v6 < a3 / v7)
  {
    v8 = a3 / v7;
  }

  v9 = floor(v6 * v8);
  v10 = floor(v7 * v8);
  v11 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v11 setScale:1.0];
  v12 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v11 format:{v9, v10}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__UIImage_VideosUI__vui_aspectFitImageOfSize___block_invoke;
  v16[3] = &unk_1E8734808;
  v17 = v5;
  v18 = v9;
  v19 = v10;
  v13 = v5;
  v14 = [v12 imageWithActions:v16];

  return v14;
}

- (id)vui_croppedImageOfSize:()VideosUI
{
  v5 = [self copy];
  Width = CGImageGetWidth([v5 CGImage]);
  v7 = floor((CGImageGetHeight([v5 CGImage]) - a3) * 0.5);
  cGImage = [v5 CGImage];
  v15.origin.x = floor((Width - a2) * 0.5);
  v15.origin.y = v7;
  v15.size.width = a3;
  v15.size.height = a2;
  v9 = CGImageCreateWithImageInRect(cGImage, v15);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v9 scale:objc_msgSend(v5 orientation:{"imageOrientation"), 1.0}];
    CGImageRelease(v10);
  }

  else
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [UIImage(VideosUI) vui_croppedImageOfSize:v12];
    }

    v11 = v5;
  }

  return v11;
}

@end