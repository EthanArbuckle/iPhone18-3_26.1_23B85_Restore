@interface VUIMediaShareControlButton
+ (id)perfectlyCenteredShareImage;
+ (id)shareControlItemForMediaItem:(id)a3 inPlayerViewController:(id)a4;
@end

@implementation VUIMediaShareControlButton

+ (id)shareControlItemForMediaItem:(id)a3 inPlayerViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"MEDIA_SHARE_BUTTON_TITLE"];

  v9 = +[VUIMediaShareControlButton perfectlyCenteredShareImage];
  v10 = [objc_alloc(MEMORY[0x1E69585D0]) initWithTitle:v8 type:0];
  [v10 setImage:v9];
  v11 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
  v12 = v11;
  if (v11)
  {
    v28 = v9;
    v30 = v11;
    v31 = v8;
    v32 = v6;
    if ([v6 vuiIsRTL])
    {
      v13 = @"chevron.left";
    }

    else
    {
      v13 = @"chevron.right";
    }

    v14 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v13];
    v15 = objc_opt_new();
    v16 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
    v17 = [v16 vui_stringForKey:@"menuTitle"];
    v18 = MEMORY[0x1E69DC628];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __82__VUIMediaShareControlButton_shareControlItemForMediaItem_inPlayerViewController___block_invoke;
    v38[3] = &unk_1E872F7A8;
    v19 = v5;
    v39 = v19;
    v27 = v16;
    v40 = v27;
    v29 = v17;
    v20 = [v18 actionWithTitle:v17 image:v14 identifier:0 handler:v38];
    [v15 addObject:v20];
    v21 = [v19 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyShowMediaShareMetadata"];
    v22 = [v21 vui_stringForKey:@"menuTitle"];
    if ([v22 length])
    {
      v23 = MEMORY[0x1E69DC628];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __82__VUIMediaShareControlButton_shareControlItemForMediaItem_inPlayerViewController___block_invoke_2;
      v35[3] = &unk_1E872F7A8;
      v36 = v19;
      v37 = v21;
      v24 = [v23 actionWithTitle:v22 image:v14 identifier:0 handler:v35];
      [v15 addObject:v24];
    }

    v9 = v28;
    v25 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F5DB25C0 image:v28 identifier:0 options:1 children:v15];
    [v10 setMenu:v25];

    v8 = v31;
    v6 = v32;
    v12 = v30;
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __82__VUIMediaShareControlButton_shareControlItemForMediaItem_inPlayerViewController___block_invoke_3;
    v33[3] = &unk_1E872D768;
    v34 = v5;
    [v10 setAction:v33];
    v14 = v34;
  }

  return v10;
}

void __82__VUIMediaShareControlButton_shareControlItemForMediaItem_inPlayerViewController___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyMediaShareMetadata"];
  [VUIMediaShareCoordinator shareMediaItem:*(a1 + 32) metadata:v2];
}

+ (id)perfectlyCenteredShareImage
{
  if (perfectlyCenteredShareImage___once != -1)
  {
    +[VUIMediaShareControlButton perfectlyCenteredShareImage];
  }

  v3 = perfectlyCenteredShareImage_shareImageSymbol;

  return v3;
}

void __57__VUIMediaShareControlButton_perfectlyCenteredShareImage__block_invoke()
{
  v17 = [MEMORY[0x1E69DC888] whiteColor];
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  v1 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:18.0];
  v2 = [v0 imageWithConfiguration:v1];

  [v2 size];
  v4 = v3 + 5.0;
  [v2 size];
  v6 = v5;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;
  v19.width = v6;
  v19.height = v4;
  UIGraphicsBeginImageContextWithOptions(v19, 0, v9);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, v4);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v11 = v17;
  CGContextSetFillColorWithColor(CurrentContext, [v17 CGColor]);
  v12 = v6 + -2.0;
  v13 = v4 + -5.0;
  v20.origin.x = 1.0;
  v20.origin.y = 5.0;
  v20.size.width = v12;
  v20.size.height = v13;
  CGContextFillRect(CurrentContext, v20);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationIn);
  v14 = [v2 CGImage];
  v21.origin.x = 1.0;
  v21.origin.y = 5.0;
  v21.size.width = v12;
  v21.size.height = v13;
  CGContextDrawImage(CurrentContext, v21, v14);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  v16 = perfectlyCenteredShareImage_shareImageSymbol;
  perfectlyCenteredShareImage_shareImageSymbol = v15;

  UIGraphicsEndImageContext();
}

@end