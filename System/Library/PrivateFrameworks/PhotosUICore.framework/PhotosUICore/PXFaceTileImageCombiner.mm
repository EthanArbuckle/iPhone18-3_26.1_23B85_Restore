@interface PXFaceTileImageCombiner
+ (id)_generateCombinedImageFromImages:(id)a3 context:(id)a4;
+ (id)placeholderImageForNumberOfItems:(unint64_t)a3 context:(id)a4;
+ (void)initialize;
- (void)_returnCombinedImage:(id)a3 generation:(unint64_t)a4 resultHandler:(id)a5;
- (void)requestCombinedImageForItems:(id)a3 context:(id)a4 resultHandler:(id)a5;
@end

@implementation PXFaceTileImageCombiner

- (void)_returnCombinedImage:(id)a3 generation:(unint64_t)a4 resultHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  currentGeneration = self->_currentGeneration;
  v11 = PLUIGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (currentGeneration == a4)
  {
    if (v12)
    {
      v15 = 138412802;
      v16 = objc_opt_class();
      v17 = 2048;
      v18 = self;
      v19 = 2048;
      v20 = a4;
      v13 = v16;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "<%@:%p> Returning a combined image for generation:%lu", &v15, 0x20u);
    }

    v9[2](v9, v8);
  }

  else
  {
    if (v12)
    {
      v15 = 138412802;
      v16 = objc_opt_class();
      v17 = 2048;
      v18 = self;
      v19 = 2048;
      v20 = a4;
      v14 = v16;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "<%@:%p> Dropping request for out of date generation:%lu", &v15, 0x20u);
    }
  }
}

- (void)requestCombinedImageForItems:(id)a3 context:(id)a4 resultHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:78 description:{@"%s must be called on the main thread", "-[PXFaceTileImageCombiner requestCombinedImageForItems:context:resultHandler:]"}];
  }

  v12 = [v9 count];
  if (v12)
  {
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"numberOfItems > 0"}];

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PXFaceTileImageCombiner.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_6:
  v13 = (self->_currentGeneration + 1);
  self->_currentGeneration = v13;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v14;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v13;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "%@ Requested a combined image for:%lu, generation:%lu", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v16 = _serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke;
  block[3] = &unk_1E773CE80;
  v26 = v10;
  v27 = v9;
  v30[1] = v12;
  v30[2] = v13;
  v28 = v14;
  v17 = v14;
  v18 = v9;
  v19 = v10;
  objc_copyWeak(v30, buf);
  v29 = v11;
  v20 = v11;
  dispatch_async(v16, block);

  objc_destroyWeak(v30);
  objc_destroyWeak(buf);
}

void __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
  [v2 setCount:*(a1 + 72)];
  [*(a1 + 32) imageSize];
  v4 = v3;
  [*(a1 + 32) displayScale];
  v6 = v5;
  v7 = [*(a1 + 32) isRTL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_2;
  v12[3] = &unk_1E773CE58;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 80);
  v13 = v9;
  v17[1] = v10;
  v17[2] = v4;
  v17[3] = v4;
  v17[4] = v6;
  v18 = v7;
  v11 = v2;
  v14 = v11;
  v15 = *(a1 + 32);
  objc_copyWeak(v17, (a1 + 64));
  v16 = *(a1 + 56);
  [v8 enumerateObjectsUsingBlock:v12];

  objc_destroyWeak(v17);
}

void __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    *buf = 138412802;
    v21 = v7;
    v22 = 2112;
    v23 = v5;
    v24 = 2048;
    v25 = v8;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%@ Request image for item:%@, generation:%lu", buf, 0x20u);
  }

  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_87;
  v13[3] = &unk_1E773CE30;
  v14 = *(a1 + 32);
  v11 = v5;
  v12 = *(a1 + 72);
  v15 = v11;
  v19[1] = v12;
  v16 = *(a1 + 40);
  v19[2] = a3;
  v17 = *(a1 + 48);
  objc_copyWeak(v19, (a1 + 64));
  v18 = *(a1 + 56);
  [v11 px_requestImageWithTargetSize:v10 & 1 displayScale:v13 isRTL:*(a1 + 80) resultHandler:{*(a1 + 88), v9}];

  objc_destroyWeak(v19);
}

void __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_87(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _serialQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_2_88;
  v17[3] = &unk_1E7748250;
  v18 = v5;
  v8 = a1[4];
  v9 = a1[5];
  v23[1] = a1[10];
  v10 = a1[6];
  v23[2] = a1[11];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v19 = v13;
  v20 = v12;
  v14 = v5;
  objc_copyWeak(v23, a1 + 9);
  v15 = a1[8];
  v21 = v6;
  v22 = v15;
  v16 = v6;
  dispatch_async(v7, v17);

  objc_destroyWeak(v23);
}

void __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_2_88(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PLUIGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 96);
      *buf = 138412802;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = v7;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%@ Received image for item:%@, generation:%lu", buf, 0x20u);
    }

    [*(a1 + 56) replacePointerAtIndex:*(a1 + 104) withPointer:*(a1 + 32)];
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 96);
      *buf = 138412546;
      v23 = v9;
      v24 = 2048;
      v25 = v10;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%@ Generating a combined image for generation:%lu", buf, 0x16u);
    }

    v11 = [PXFaceTileImageCombiner _generateCombinedImageFromImages:*(a1 + 56) context:*(a1 + 64)];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_89;
    v18[3] = &unk_1E7743E48;
    objc_copyWeak(v21, (a1 + 88));
    v12 = *(a1 + 96);
    v19 = v11;
    v21[1] = v12;
    v20 = *(a1 + 80);
    v13 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v18);

    objc_destroyWeak(v21);
  }

  else
  {
    if (v4)
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = *(a1 + 96);
      v17 = *(a1 + 72);
      *buf = 138413058;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2048;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "%@ No image for item:%@, generation:%lu, error:%@", buf, 0x2Au);
    }
  }
}

void __78__PXFaceTileImageCombiner_requestCombinedImageForItems_context_resultHandler___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _returnCombinedImage:*(a1 + 32) generation:*(a1 + 56) resultHandler:*(a1 + 40)];
}

+ (id)_generateCombinedImageFromImages:(id)a3 context:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 count];
  if (!v9)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"PXFaceTileImageCombiner.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"imagesCount > 0"}];
  }

  [v7 displayScale];
  v11 = v10;
  v12 = [v7 isRTL];
  v13 = [v7 isAscending];
  [v7 imageSize];
  v15 = v14;
  [v7 imageOffset];
  v17 = v16;
  v18 = [v7 backgroundColor];
  v19 = [v7 borderColor];
  [v7 borderWidth];
  v21 = v20;

  v22 = [MEMORY[0x1E69DC888] clearColor];
  v23 = [v19 isEqual:v22];

  v24 = v11 * v15;
  v25 = v11 * v21;
  v26 = v11 * (v15 + (v9 - 1) * v17);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v28 = CGBitmapContextCreate(0, v26, v24, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetFillColorWithColor(v28, [v18 CGColor]);
  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v48.size.width = v26;
  v48.size.height = v24;
  CGContextFillRect(v28, v48);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __68__PXFaceTileImageCombiner__generateCombinedImageFromImages_context___block_invoke;
  v35[3] = &unk_1E773CEA8;
  v45 = v12;
  v37 = v11 * v17;
  v38 = v26;
  if (v13)
  {
    v29 = 0;
  }

  else
  {
    v29 = 2;
  }

  v39 = v24;
  v40 = v24;
  v46 = v23;
  v41 = v28;
  v36 = v19;
  v42 = v25;
  v43 = v24 + v25 * -2.0;
  v44 = v43 * 0.5;
  v30 = v19;
  [v8 px_enumeratePointersWithOptions:v29 usingBlock:v35];

  Image = CGBitmapContextCreateImage(v28);
  CGContextRelease(v28);
  v32 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:v11];
  CGImageRelease(Image);

  return v32;
}

void __68__PXFaceTileImageCombiner__generateCombinedImageFromImages_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 40) * a3;
  if (*(a1 + 104) == 1)
  {
    v5 = *(a1 + 48) - *(a1 + 64) - v5;
  }

  v6 = *(a1 + 72);
  if (*(a1 + 105) == 1)
  {
    v7 = [MEMORY[0x1E69DC888] blackColor];
    CGContextSetFillColorWithColor(v6, [v7 CGColor]);

    CGContextSetBlendMode(*(a1 + 72), kCGBlendModeDestinationOut);
  }

  else
  {
    CGContextSetFillColorWithColor(v6, [*(a1 + 32) CGColor]);
  }

  v18.size.width = *(a1 + 64);
  v18.origin.y = 0.0;
  v18.origin.x = v5;
  v18.size.height = v18.size.width;
  CGContextFillEllipseInRect(*(a1 + 72), v18);
  if (*(a1 + 105) == 1)
  {
    CGContextSetBlendMode(*(a1 + 72), kCGBlendModeNormal);
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  v10 = v5 + v9;
  v16 = a2;
  if (v16)
  {
    v19.origin.x = v10;
    v19.origin.y = v9;
    v19.size.width = v8;
    v19.size.height = v8;
    v11 = CGPathCreateWithRoundedRect(v19, *(a1 + 96), *(a1 + 96), 0);
    CGContextAddPath(*(a1 + 72), v11);
    CGContextClip(*(a1 + 72));
    CGContextBeginPath(*(a1 + 72));
    CGPathRelease(v11);
    v12 = *(a1 + 72);
    v13 = [v16 CGImage];
    v20.origin.x = v10;
    v20.origin.y = v9;
    v20.size.width = v8;
    v20.size.height = v8;
    CGContextDrawImage(v12, v20, v13);
    CGContextResetClip(*(a1 + 72));
  }

  else
  {
    v14 = *(a1 + 72);
    v15 = [MEMORY[0x1E69DC888] px_assetPlaceholderGray];
    CGContextSetFillColorWithColor(v14, [v15 CGColor]);

    v21.origin.x = v10;
    v21.origin.y = v9;
    v21.size.width = v8;
    v21.size.height = v8;
    CGContextFillEllipseInRect(*(a1 + 72), v21);
  }
}

+ (id)placeholderImageForNumberOfItems:(unint64_t)a3 context:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AF00];
  v8 = a4;
  if ([v7 isMainThread])
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PXFaceTileImageCombiner.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"numberOfItems > 0"}];

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"PXFaceTileImageCombiner.m" lineNumber:65 description:{@"%s must be called on the main thread", "+[PXFaceTileImageCombiner placeholderImageForNumberOfItems:context:]"}];

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_11:
  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"PXFaceTileImageCombiner.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_4:
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = a3;
    v10 = v18;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "<%@> Generating a placeholder image for:%lu", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
  [v11 setCount:a3];
  v12 = [a1 _generateCombinedImageFromImages:v11 context:v8];

  return v12;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v2 = dispatch_queue_create("com.apple.mobileslideshow.PXFaceTileImageCombiner", v4);
    v3 = _serialQueue;
    _serialQueue = v2;
  }
}

@end