@interface UIImage(SeymourMedia)
+ (id)compositedImageWithSize:()SeymourMedia images:cornerRadius:blendMode:legacyMode:;
+ (id)imageWithSize:()SeymourMedia format:actions:;
@end

@implementation UIImage(SeymourMedia)

+ (id)imageWithSize:()SeymourMedia format:actions:
{
  v9 = a6;
  v10 = MEMORY[0x277D75560];
  v11 = a5;
  v12 = [[v10 alloc] initWithSize:v11 format:{a1, a2}];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__UIImage_SeymourMedia__imageWithSize_format_actions___block_invoke;
  v16[3] = &unk_277DA2AD8;
  v18 = a1;
  v19 = a2;
  v17 = v9;
  v13 = v9;
  v14 = [v12 imageWithActions:v16];

  return v14;
}

+ (id)compositedImageWithSize:()SeymourMedia images:cornerRadius:blendMode:legacyMode:
{
  v14 = a6;
  v15 = [v14 firstObject];
  v16 = [v15 CGImage];
  v17 = [v14 count];
  if (a4 <= 0.0 && v17 == 1 && v16 && ((Width = CGImageGetWidth(v16), Height = CGImageGetHeight(v16), v20 = round(a2), round(a3) == Height) ? (v21 = v20 == Width) : (v21 = 0), !v21 ? (v22 = a8 == 0) : (v22 = 0), !v22))
  {
    v23 = v15;
  }

  else if ([v14 count])
  {
    if ([v14 count] > 1)
    {
      [MEMORY[0x277D75568] smu_preferredRendererFormat];
    }

    else
    {
      [MEMORY[0x277D75568] smu_formatForImage:v15];
    }
    v24 = ;
    [v24 setOpaque:1];
    v25 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__UIImage_SeymourMedia__compositedImageWithSize_images_cornerRadius_blendMode_legacyMode___block_invoke;
    v27[3] = &unk_277DA2B00;
    v29 = a4;
    v30 = a2;
    v31 = a3;
    v33 = a7;
    v28 = v14;
    v32 = a1;
    v23 = [v25 imageWithSize:v24 format:v27 actions:{a2, a3}];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end