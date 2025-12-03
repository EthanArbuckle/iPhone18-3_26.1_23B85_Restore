@interface UIImage(PhotosUI)
+ (id)pu_PhotosUIImageNamed:()PhotosUI;
+ (id)pu_centeredImage:()PhotosUI withBackgroundColor:size:;
+ (id)pu_imageFromView:()PhotosUI isOpaque:;
+ (id)pu_imageWithIconImage:()PhotosUI iconImageColor:text:font:textColor:fillColor:strokeColor:cornerRadius:inset:;
- (PUImageExtraction)pu_extractPlayOverlayBackgroundImageFromCenter:()PhotosUI inRect:contentMode:asynchronously:handler:;
- (id)pu_overlayedImageWithColor:()PhotosUI;
- (id)pu_tintedImageWithColor:()PhotosUI;
@end

@implementation UIImage(PhotosUI)

- (PUImageExtraction)pu_extractPlayOverlayBackgroundImageFromCenter:()PhotosUI inRect:contentMode:asynchronously:handler:
{
  v21 = a5;
  if (!v21)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIImage+PhotosUI.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v22 = objc_alloc_init(PUImageExtraction);
  if (pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__onceToken != -1)
  {
    dispatch_once(&pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler__onceToken, &__block_literal_global_97748);
  }

  v23 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayBackgroundMask"];
  v24 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayGlyphMask"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__UIImage_PhotosUI__pu_extractPlayOverlayBackgroundImageFromCenter_inRect_contentMode_asynchronously_handler___block_invoke_2;
  aBlock[3] = &unk_1E7B80B20;
  v25 = v22;
  v37 = v25;
  v26 = v23;
  v42 = a6;
  v43 = a7;
  v38 = v26;
  selfCopy = self;
  v44 = a8;
  v45 = a9;
  v46 = a10;
  v47 = a11;
  v48 = a3;
  v27 = v24;
  v40 = v27;
  v49 = a4;
  v28 = v21;
  v41 = v28;
  v29 = _Block_copy(aBlock);
  v30 = v29;
  if (a4)
  {
    v31 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PXPlayVideoOverlayApproximation"];
    (*(v28 + 2))(v28, v31);
    v32 = dispatch_get_global_queue(2, 0);
    dispatch_async(v32, v30);
  }

  else
  {
    (*(v29 + 2))(v29);
  }

  v33 = v25;

  return v25;
}

- (id)pu_overlayedImageWithColor:()PhotosUI
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = a3;
  [self size];
  v8 = v7;
  v10 = v9;
  [self scale];
  v12 = v11;
  v16.width = v8;
  v16.height = v10;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v12);
  [self drawAtPoint:17 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];
  [v6 setFill];

  v17.origin.x = v4;
  v17.origin.y = v5;
  v17.size.width = v8;
  v17.size.height = v10;
  UIRectFillUsingBlendMode(v17, kCGBlendModeNormal);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (id)pu_tintedImageWithColor:()PhotosUI
{
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = a3;
  [self size];
  v8 = v7;
  v10 = v9;
  [self scale];
  v12 = v11;
  v16.width = v8;
  v16.height = v10;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v12);
  [self drawAtPoint:17 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];
  [v6 setFill];

  v17.origin.x = v4;
  v17.origin.y = v5;
  v17.size.width = v8;
  v17.size.height = v10;
  UIRectFillUsingBlendMode(v17, kCGBlendModeSourceIn);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

+ (id)pu_PhotosUIImageNamed:()PhotosUI
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  pu_PhotosUIFrameworkBundle = [v3 pu_PhotosUIFrameworkBundle];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:pu_PhotosUIFrameworkBundle];

  return v6;
}

+ (id)pu_centeredImage:()PhotosUI withBackgroundColor:size:
{
  v9 = a5;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{self, a2}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__UIImage_PhotosUI__pu_centeredImage_withBackgroundColor_size___block_invoke;
  v16[3] = &unk_1E7B80AF8;
  selfCopy = self;
  v20 = a2;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = [v11 imageWithActions:v16];

  return v14;
}

+ (id)pu_imageFromView:()PhotosUI isOpaque:
{
  v5 = a3;
  [v5 bounds];
  v12.width = v6;
  v12.height = v7;
  UIGraphicsBeginImageContextWithOptions(v12, a4, 0.0);
  layer = [v5 layer];

  [layer renderInContext:UIGraphicsGetCurrentContext()];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

+ (id)pu_imageWithIconImage:()PhotosUI iconImageColor:text:font:textColor:fillColor:strokeColor:cornerRadius:inset:
{
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = &stru_1F2AC6818;
  if (a8)
  {
    v24 = a8;
  }

  v25 = v24;
  v26 = a10;
  if (!v21)
  {
    v27 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] systemFontSize];
    v21 = [v27 systemFontOfSize:?];
  }

  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v26, *MEMORY[0x1E69DB650], v21, *MEMORY[0x1E69DB648], 0}];

  [(__CFString *)v25 sizeWithAttributes:v28];
  v30 = v29;
  v32 = v31;
  [v19 size];
  v34 = v33;
  v36 = v35;
  v37 = *(MEMORY[0x1E695F060] + 8);
  v38 = v33 == *MEMORY[0x1E695F060];
  if (v36 != v37)
  {
    v38 = 0;
  }

  v39 = v30 == *MEMORY[0x1E695F060];
  if (v32 != v37)
  {
    v39 = 0;
  }

  if (v38 || v39)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 3.0;
  }

  if (v33 >= v32)
  {
    v41 = v33;
  }

  else
  {
    v41 = v32;
  }

  v42 = v30 + v33 + v40 + a2 * 2.0;
  v54 = a2;
  v43 = a3;
  v44 = v41 + a3 * 2.0;
  v45 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v42, v44}];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __119__UIImage_PhotosUI__pu_imageWithIconImage_iconImageColor_text_font_textColor_fillColor_strokeColor_cornerRadius_inset___block_invoke;
  v56[3] = &unk_1E7B80AD0;
  v63 = 0;
  v64 = 0;
  v65 = v42;
  v66 = v44;
  v57 = v22;
  v58 = v23;
  selfCopy = self;
  v68 = v54;
  v59 = v20;
  v60 = v19;
  v69 = v43;
  v70 = v34;
  v71 = v36;
  v72 = v40;
  v73 = v30;
  v74 = v32;
  v61 = v25;
  v62 = v28;
  v46 = v28;
  v47 = v25;
  v48 = v19;
  v49 = v20;
  v50 = v23;
  v51 = v22;
  v52 = [v45 imageWithActions:v56];

  return v52;
}

@end