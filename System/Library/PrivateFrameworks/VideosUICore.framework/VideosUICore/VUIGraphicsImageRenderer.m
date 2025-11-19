@interface VUIGraphicsImageRenderer
+ (id)_imageWithSize:(CGSize)a3 format:(id)a4 actions:(id)a5;
+ (id)decodedImage:(id)a3 opaque:(BOOL)a4;
+ (id)formatWithCGImage:(CGImage *)a3;
+ (id)formatWithCGImage:(CGImage *)a3 preferredFormat:(id)a4;
+ (id)formatWithUIImage:(id)a3;
+ (id)formatWithUIImage:(id)a3 preferredFormat:(id)a4;
+ (id)imageWithSize:(CGSize)a3 format:(id)a4 actions:(id)a5;
+ (id)imageWithSize:(CGSize)a3 format:(id)a4 cgContextActions:(id)a5;
+ (id)preferredFormat;
+ (void)SVGImagesWithDataDescriptors:(id)a3 format:(id)a4 completion:(id)a5;
@end

@implementation VUIGraphicsImageRenderer

+ (id)preferredFormat
{
  v2 = [MEMORY[0x277D759A0] vui_main];
  v3 = [v2 vuiTraitCollection];

  v4 = [MEMORY[0x277D75568] formatForTraitCollection:v3];

  return v4;
}

+ (id)imageWithSize:(CGSize)a3 format:(id)a4 cgContextActions:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__VUIGraphicsImageRenderer_imageWithSize_format_cgContextActions___block_invoke;
  v13[3] = &unk_279E219A8;
  v14 = v9;
  v10 = v9;
  v11 = [a1 _imageWithSize:a4 format:v13 actions:{width, height}];

  return v11;
}

uint64_t __66__VUIGraphicsImageRenderer_imageWithSize_format_cgContextActions___block_invoke(uint64_t a1, void *a2)
{
  [a2 CGContext];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (id)imageWithSize:(CGSize)a3 format:(id)a4 actions:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a5;
  v9 = MEMORY[0x277D75560];
  v10 = a4;
  v11 = [[v9 alloc] initWithSize:v10 format:{width, height}];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__VUIGraphicsImageRenderer_imageWithSize_format_actions___block_invoke;
  v15[3] = &unk_279E219A8;
  v16 = v8;
  v12 = v8;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

void __57__VUIGraphicsImageRenderer_imageWithSize_format_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CGContextSetInterpolationQuality([v3 CGContext], kCGInterpolationHigh);
  (*(*(a1 + 32) + 16))();
}

+ (id)_imageWithSize:(CGSize)a3 format:(id)a4 actions:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__VUIGraphicsImageRenderer__imageWithSize_format_actions___block_invoke;
  v13[3] = &unk_279E219D0;
  v15 = width;
  v16 = height;
  v14 = v9;
  v10 = v9;
  v11 = [a1 imageWithSize:a4 format:v13 actions:{width, height}];

  return v11;
}

void __58__VUIGraphicsImageRenderer__imageWithSize_format_actions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 CGContext];
  CGContextTranslateCTM(v3, 0.0, *(a1 + 48));
  CGContextScaleCTM(v3, 1.0, -1.0);
  (*(*(a1 + 32) + 16))();
}

+ (id)formatWithCGImage:(CGImage *)a3 preferredFormat:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277D755B8] vuiImageWithCGImage:a3];
  v8 = [v6 formatWithUIImage:v7 preferredFormat:v5];

  return v8;
}

+ (id)formatWithCGImage:(CGImage *)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277D755B8] vuiImageWithCGImage:a3];
  v6 = [v4 formatWithUIImage:v5 preferredFormat:0];

  return v6;
}

+ (id)formatWithUIImage:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() formatWithUIImage:v3 preferredFormat:0];

  return v4;
}

+ (id)formatWithUIImage:(id)a3 preferredFormat:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (formatWithUIImage_preferredFormat__onceToken != -1)
  {
    +[VUIGraphicsImageRenderer formatWithUIImage:preferredFormat:];
  }

  v7 = [MEMORY[0x277D759A0] vui_main];
  [v7 vui_scale];
  v9 = v8;

  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 _supportsDeepColor];

  if (!v11)
  {
    v12 = 0;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = [v5 imageRendererFormat];
  [v12 setScale:v9];
  if (!v12 || formatWithUIImage_preferredFormat__sOverrideDefault && formatWithUIImage_preferredFormat__sPrefersExtendedRange)
  {
    if (v6)
    {
LABEL_8:
      v13 = v6;
LABEL_11:
      v14 = v13;

      v12 = v14;
      goto LABEL_12;
    }

LABEL_10:
    v13 = +[VUIGraphicsImageRenderer preferredFormat];
    goto LABEL_11;
  }

LABEL_12:

  return v12;
}

void __62__VUIGraphicsImageRenderer_formatWithUIImage_preferredFormat___block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  formatWithUIImage_preferredFormat__sPrefersExtendedRange = CFPreferencesGetAppBooleanValue(@"PrefersExtendedRange", [v0 bundleIdentifier], &formatWithUIImage_preferredFormat__sOverrideDefault);
}

+ (id)decodedImage:(id)a3 opaque:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    v6 = [VUIGraphicsImageRenderer formatWithUIImage:v5];
    [v6 setScale:1.0];
    [v6 setOpaque:v4];
    [v5 size];
    v8 = v7;
    v10 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__VUIGraphicsImageRenderer_decodedImage_opaque___block_invoke;
    v13[3] = &unk_279E219F8;
    v14 = v5;
    v11 = [VUIGraphicsImageRenderer imageWithSize:v6 format:v13 actions:v8, v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __48__VUIGraphicsImageRenderer_decodedImage_opaque___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  [v1 size];

  return [v1 drawInRect:{v2, v3, v4, v5}];
}

+ (void)SVGImagesWithDataDescriptors:(id)a3 format:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = dispatch_get_global_queue(2, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke;
    v12[3] = &unk_279E21B00;
    v13 = v8;
    v15 = v10;
    v16 = a1;
    v14 = v9;
    dispatch_async(v11, v12);
  }
}

void __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__0;
  v78 = __Block_byref_object_dispose__0;
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v3)
  {
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
    v44 = *v71;
    v43 = v2;
    do
    {
      v45 = v3;
      for (i = 0; i != v45; ++i)
      {
        if (*v71 != v44)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v70 + 1) + 8 * i);
        v8 = [v7 data];
        v9 = CGSVGDocumentCreateFromData();
        if (v9)
        {
          CGSVGDocumentGetCanvasSize();
          v11 = v10;
          v13 = v12;
          v14 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
          v15 = [v75[5] objectForKey:v14];
          v16 = v15;
          if (v15)
          {
            [v15 CGContext];
            CGContextClear();
            [v16 CGContext];
            CGContextDrawSVGDocument();
            v17 = [v16 currentImage];
          }

          else
          {
            v20 = *(a1 + 56);
            v21 = *(a1 + 40);
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_2_18;
            v60[3] = &unk_279E21A88;
            v63 = &v74;
            v61 = v14;
            v62 = &__block_literal_global_11;
            v64 = v9;
            v17 = [v20 _imageWithSize:v21 format:v60 actions:{v11, v13}];
          }

          CGSVGDocumentRelease();
          [v7 renderSize];
          v23 = v22;
          v25 = v24;
          [v7 backgroundSize];
          if (v27 != v4 || v26 != v5)
          {
            [v7 backgroundSize];
            v23 = v28;
            v25 = v29;
          }

          v30 = [MEMORY[0x277CCAE60] valueWithCGSize:{v23, v25}];
          v31 = v25 == v5 && v23 == v4;
          if (v31 || !v17)
          {
            v32 = v16;
            v34 = v17;
          }

          else
          {
            v32 = [v75[5] objectForKey:v30];

            if (v32)
            {
              [v32 CGContext];
              CGContextClear();
              v33 = [v32 CGContext];
              __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_3(v23, v25, v33, v33, v7, v17);
              v34 = [v32 currentImage];
            }

            else
            {
              v35 = *(a1 + 56);
              v36 = *(a1 + 40);
              v52[0] = MEMORY[0x277D85DD0];
              v52[1] = 3221225472;
              v52[2] = __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_3_19;
              v52[3] = &unk_279E21AB0;
              v57 = &v74;
              v37 = v30;
              v56 = &__block_literal_global_14;
              v53 = v37;
              v54 = v7;
              v38 = v17;
              v55 = v38;
              v58 = v23;
              v59 = v25;
              v39 = v36;
              v2 = v43;
              v34 = [v35 _imageWithSize:v39 format:v52 actions:{v23, v25}];

              v32 = 0;
              v17 = v53;
            }
          }

          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v47 = __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_4;
          v48 = &unk_279E21AD8;
          v51 = *(a1 + 48);
          v49 = v7;
          v40 = v34;
          v50 = v40;
          v41 = v46;
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            v47(v41);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v41);
          }
        }

        else
        {
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v66 = __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_16;
          v67 = &unk_279E21A60;
          v18 = *(a1 + 48);
          v68 = v7;
          v69 = v18;
          v19 = v65;
          if ([MEMORY[0x277CCACC8] isMainThread])
          {
            v66(v19);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v19);
          }

          v14 = v69;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v3);
  }

  v42 = v75[5];
  v75[5] = 0;

  _Block_object_dispose(&v74, 8);
}

void __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_3(CGFloat a1, CGFloat a2, uint64_t a3, CGContext *a4, void *a5, void *a6)
{
  v24 = a6;
  v10 = a5;
  [v24 size];
  v12 = v11;
  [v24 size];
  v14 = v13;
  v15 = [v10 backgroundColor];
  [v10 scaleWithinRenderSize];
  v17 = v16;

  v18 = v14 * (a1 / v12);
  v19 = v12 * (a1 / v12);
  if (v18 > a2)
  {
    v20 = a2 / v18;
    v18 = v18 * (a2 / v18);
    v19 = v19 * v20;
  }

  if (v15)
  {
    CGContextSetFillColorWithColor(a4, [v15 CGColor]);
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = a1;
    v26.size.height = a2;
    CGContextFillRect(a4, v26);
  }

  if (v17 == 0.0)
  {
    v21 = v18;
  }

  else
  {
    v19 = v17 * v19;
    v21 = v17 * v18;
  }

  v22 = v24;
  v23 = [v24 CGImage];
  v27.origin.x = (a1 - v19) * 0.5;
  v27.origin.y = (a2 - v21) * 0.5;
  v27.size.width = v19;
  v27.size.height = v21;
  CGContextDrawImage(a4, v27, v23);
}

uint64_t __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_16(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

uint64_t __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_2_18(void *a1, void *a2)
{
  v3 = *(*(a1[6] + 8) + 40);
  v4 = a1[4];
  v5 = a2;
  [v3 setObject:v5 forKey:v4];
  v6 = a1[5];
  v7 = [v5 CGContext];

  v8 = a1[7];
  v9 = *(v6 + 16);

  return v9(v6, v7, v8);
}

uint64_t __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_3_19(void *a1, void *a2)
{
  v3 = *(*(a1[8] + 8) + 40);
  v4 = a1[4];
  v5 = a2;
  [v3 setObject:v5 forKey:v4];
  v6 = a1[7];
  v7 = [v5 CGContext];

  v8 = a1[5];
  v9 = a1[6];
  v10 = *(v6 + 16);
  v11.n128_u64[0] = a1[9];
  v12.n128_u64[0] = a1[10];

  return v10(v6, v7, v8, v9, v11, v12);
}

uint64_t __75__VUIGraphicsImageRenderer_SVGImagesWithDataDescriptors_format_completion___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

@end