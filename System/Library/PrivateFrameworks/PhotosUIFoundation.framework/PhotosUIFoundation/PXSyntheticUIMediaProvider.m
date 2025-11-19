@interface PXSyntheticUIMediaProvider
- (PXSyntheticUIMediaProvider)init;
- (id)_imageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 outInfo:(id *)a7;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
@end

@implementation PXSyntheticUIMediaProvider

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([v14 isSynchronous])
  {
    v32 = 0;
    v16 = [(PXSyntheticUIMediaProvider *)self _imageForAsset:v13 targetSize:a5 contentMode:v14 options:&v32 outInfo:width, height];
    v15[2](v15, v16, v32);
    v17 = 0;
  }

  else
  {
    v18 = [v14 resultHandlerQueue];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = MEMORY[0x1E69E96A0];
      v21 = MEMORY[0x1E69E96A0];
    }

    v22 = [(PXSyntheticUIMediaProvider *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__PXSyntheticUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    block[3] = &unk_1E7BB7668;
    block[4] = self;
    v25 = v13;
    v29 = width;
    v30 = height;
    v31 = a5;
    v26 = v14;
    v27 = v20;
    v28 = v15;
    v16 = v20;
    dispatch_async(v22, block);

    v17 = 1;
  }

  return v17;
}

void __96__PXSyntheticUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 88);
  v16 = 0;
  v6 = [v2 _imageForAsset:v3 targetSize:v5 contentMode:v4 options:&v16 outInfo:{*(a1 + 72), *(a1 + 80)}];
  v7 = v16;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PXSyntheticUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
  v12[3] = &unk_1E7BB7A10;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, v12);
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a5;
  v8 = [v6 data];
  (*(a5 + 2))(v7, v8, @"dummy", 0, 0);

  return 0;
}

- (id)_imageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 outInfo:(id *)a7
{
  v10 = a3;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [v10 uuid];
  v14 = [(PXSyntheticUIMediaProvider *)self imageCache];
  v15 = [v14 objectForKey:v13];

  if (!v15)
  {
    [v10 size];
    v17 = v16;
    v19 = v18;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __84__PXSyntheticUIMediaProvider__imageForAsset_targetSize_contentMode_options_outInfo___block_invoke;
    v43[3] = &unk_1E7BB7630;
    v44 = v10;
    v20 = PXCreateCGImageWithDrawBlock(0, 0, v43, v17, v19);
    v15 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v20];
    CGImageRelease(v20);
    v21 = [(PXSyntheticUIMediaProvider *)self imageCache];
    [v21 setObject:v15 forKey:v13];
  }

  v22 = [v11 loadingMode];
  if (a7 && v22 == 0x10000)
  {
    v23 = [(PXSyntheticUIMediaProvider *)self urlCache];
    v24 = [v23 objectForKey:v13];

    if (v24 && ([v24 checkResourceIsReachableAndReturnError:0] & 1) != 0)
    {
      v25 = v24;
LABEL_14:
      [v12 setObject:v25 forKeyedSubscript:@"PHImageFileURLKey"];

      goto LABEL_15;
    }

    v40 = v11;
    v41 = a7;
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v10 uuid];
    v28 = [v26 stringWithFormat:@"%@.jpg", v27];

    v29 = MEMORY[0x1E695DFF8];
    v30 = NSTemporaryDirectory();
    v39 = v28;
    v31 = [v30 stringByAppendingPathComponent:v28];
    v25 = [v29 fileURLWithPath:v31];

    v32 = UIImageJPEGRepresentation(v15, 1.0);
    v33 = v32;
    if (v32)
    {
      v42 = 0;
      v34 = [v32 writeToURL:v25 options:0 error:&v42];
      v35 = v42;
      if (v34)
      {
        v36 = [(PXSyntheticUIMediaProvider *)self urlCache];
        [v36 setObject:v25 forKey:v13];
        v11 = v40;
        a7 = v41;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v35 = 0;
    }

    v11 = v40;
    v36 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXErrorDomain" code:-1 underlyingError:v35 debugDescription:@"Failed to get a URL for a synthetic image"];
    [v12 setObject:v36 forKeyedSubscript:@"PHImageErrorKey"];
    a7 = v41;
    goto LABEL_13;
  }

LABEL_15:
  if (v15)
  {
    [v12 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"PHImageResultIsDegradedKey"];
  }

  if (a7)
  {
    v37 = v12;
    *a7 = v12;
  }

  return v15;
}

void __84__PXSyntheticUIMediaProvider__imageForAsset_targetSize_contentMode_options_outInfo___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v56[2] = *MEMORY[0x1E69E9840];
  *&aBlock.origin.y = MEMORY[0x1E69E9820];
  *&aBlock.size.width = 3221225472;
  *&aBlock.size.height = __84__PXSyntheticUIMediaProvider__imageForAsset_targetSize_contentMode_options_outInfo___block_invoke_2;
  v49 = &__block_descriptor_64_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v11 = _Block_copy(&aBlock.origin.y);
  UIGraphicsPushContext(a2);
  CGContextTranslateCTM(a2, 0.0, a6);
  CGContextScaleCTM(a2, 1.0, -1.0);
  if (a5 >= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v47 = v12;
  [*(a1 + 32) preferredCropRect];
  x = v58.origin.x;
  if (CGRectIsEmpty(v58))
  {
    v15.n128_f64[0] = 0.0;
  }

  else
  {
    v15.n128_f64[0] = x;
  }

  aBlock.origin.x = v11[2](v11, v15);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [*(a1 + 32) acceptableCropRect];
  v42 = v22;
  v43 = v23;
  v44 = v25;
  v45 = v24;
  v26 = [MEMORY[0x1E69DC888] whiteColor];
  CGContextSetFillColorWithColor(a2, [v26 CGColor]);
  v59.origin.x = a3;
  v59.origin.y = a4;
  v59.size.width = a5;
  v59.size.height = a6;
  CGContextFillRect(a2, v59);
  v27 = [*(a1 + 32) tintColor];
  if (v27)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v56[0] = [v26 CGColor];
    v29 = [v27 colorWithAlphaComponent:0.75];
    v56[1] = [v29 CGColor];
    v30 = CGGradientCreateWithColors(DeviceRGB, [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2], 0);

    CGColorSpaceRelease(DeviceRGB);
    v31 = hypot(a5, a6) * 0.5;
    v57.x = a3 + a5 * 0.5;
    v57.y = a4 + a6 * 0.5;
    CGContextDrawRadialGradient(a2, v30, v57, 0.0, v57, v31, 3u);
    CGGradientRelease(v30);
    CGContextSetStrokeColorWithColor(a2, [v27 CGColor]);
    v60.origin.x = aBlock.origin.x;
    v60.origin.y = v17;
    v60.size.width = v19;
    v60.size.height = v21;
    CGContextStrokeRectWithWidth(a2, v60, v47 * 0.01);
    v61.origin.x = v42;
    v61.size.height = v43;
    v61.size.width = v44;
    v61.origin.y = v45;
    if (!CGRectIsNull(v61))
    {
      v32 = [MEMORY[0x1E69DC888] orangeColor];
      CGContextSetStrokeColorWithColor(a2, [v32 CGColor]);

      v62.origin.x = (v11[2])(v11, v42, v45, v44, v43);
      CGContextStrokeRectWithWidth(a2, v62, v47 * 0.01);
    }
  }

  v33 = [*(a1 + 32) label];
  if ([v33 length])
  {
    v34 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v34 setLineBreakMode:4];
    [v34 setAlignment:1];
    v54[0] = *MEMORY[0x1E69DB648];
    v35 = [MEMORY[0x1E69DB878] monospacedSystemFontOfSize:v47 * 0.2 weight:*MEMORY[0x1E69DB980]];
    v55[0] = v35;
    v54[1] = *MEMORY[0x1E69DB650];
    v36 = v27;
    if (!v27)
    {
      v36 = [MEMORY[0x1E69DC888] labelColor];
    }

    v54[2] = *MEMORY[0x1E69DB688];
    v55[1] = v36;
    v55[2] = v34;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    if (!v27)
    {
    }

    [v33 sizeWithAttributes:v37];
    if (v38 >= v19)
    {
      v40 = v19;
    }

    else
    {
      v40 = v38;
    }

    if (v39 >= v21)
    {
      v41 = v21;
    }

    else
    {
      v41 = v39;
    }

    [v33 drawInRect:v37 withAttributes:{aBlock.origin.x + v19 * 0.5 + v40 * -0.5, v17 + v21 * 0.5 + v41 * -0.5}];
  }

  UIGraphicsPopContext();
}

- (PXSyntheticUIMediaProvider)init
{
  v15.receiver = self;
  v15.super_class = PXSyntheticUIMediaProvider;
  v2 = [(PXSyntheticUIMediaProvider *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create(v5, v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v10;

    [(NSCache *)v2->_imageCache setCountLimit:100];
    v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    urlCache = v2->_urlCache;
    v2->_urlCache = v12;

    [(NSCache *)v2->_urlCache setCountLimit:100];
  }

  return v2;
}

@end