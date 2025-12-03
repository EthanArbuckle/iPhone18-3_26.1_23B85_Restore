@interface TSTCheckboxRenderer
+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame;
+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame checked:(BOOL)checked outCheckboxImage:(id *)image outCheckboxSize:(CGSize *)size;
+ (id)imageForScale:(double)scale checked:(BOOL)checked outDrawingScale:(double *)drawingScale;
+ (void)renderCheckbox:(BOOL)checkbox viewScale:(double)scale intoContext:(CGContext *)context rect:(CGRect)rect color:(id)color;
@end

@implementation TSTCheckboxRenderer

+ (id)imageForScale:(double)scale checked:(BOOL)checked outDrawingScale:(double *)drawingScale
{
  v7 = @"TSTiOSCheckboxUnchecked6";
  v8 = @"TSTiOSCheckboxUnchecked12";
  v9 = @"TSTiOSCheckboxUnchecked18";
  if (scale > 1.5)
  {
    v9 = @"TSTiOSCheckboxUnchecked24";
  }

  if (scale > 1.0)
  {
    v8 = v9;
  }

  if (scale > 0.5)
  {
    v7 = v8;
  }

  v10 = @"TSTiOSCheckboxChecked6";
  v11 = @"TSTiOSCheckboxChecked12";
  v12 = @"TSTiOSCheckboxChecked18";
  if (scale > 1.5)
  {
    v12 = @"TSTiOSCheckboxChecked24";
  }

  if (scale > 1.0)
  {
    v11 = v12;
  }

  if (scale > 0.5)
  {
    v10 = v11;
  }

  if (checked)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v14 = sub_2214453B4(v13);
  if (drawingScale)
  {
    v15 = 2.0;
    if (scale > 0.5)
    {
      v15 = 1.0;
      if (scale > 1.0)
      {
        v15 = 0.666666687;
        if (scale > 1.5)
        {
          v15 = 0.5;
        }
      }
    }

    *drawingScale = v15;
  }

  return v14;
}

+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame
{
  objc_msgSend_frameWithViewScale_contentFrame_checked_outCheckboxImage_outCheckboxSize_(self, a2, 0, 0, 0, scale, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame checked:(BOOL)checked outCheckboxImage:(id *)image outCheckboxSize:(CGSize *)size
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v40 = 0;
  v17 = objc_msgSend_imageForScale_checked_outDrawingScale_(self, a2, checked, &v40, size, scale);
  if (!v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSTCheckboxRenderer frameWithViewScale:contentFrame:checked:outCheckboxImage:outCheckboxSize:]", v15, v16);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCheckboxRenderer.m", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 165, 0, "No checkbox image for rendering!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_size(v17, v13, v14, v15, v16);
  TSUMultiplySizeScalar();
  v30 = v29;
  v32 = v31;
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidY = CGRectGetMidY(v42);
  if (image)
  {
    v35 = v17;
    *image = v17;
  }

  if (size)
  {
    size->width = v30;
    size->height = v32;
  }

  v36 = MidX - v30 * 0.5;
  v37 = MidY - v32 * 0.5;
  v38 = v30;
  v39 = v32;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

+ (void)renderCheckbox:(BOOL)checkbox viewScale:(double)scale intoContext:(CGContext *)context rect:(CGRect)rect color:(id)color
{
  v34 = *MEMORY[0x277CBF3A8];
  v33 = 0;
  objc_msgSend_frameWithViewScale_contentFrame_checked_outCheckboxImage_outCheckboxSize_(self, a2, checkbox, &v33, &v34, scale, rect.origin.x);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v32, 0, sizeof(v32));
  v16 = v33;
  CGContextGetUserSpaceToDeviceSpaceTransform(&v32, context);
  v31 = v32;
  v35.origin.x = v9;
  v35.origin.y = v11;
  v35.size.width = v13;
  v35.size.height = v15;
  v36 = CGRectApplyAffineTransform(v35, &v31);
  v37 = CGRectIntegral(v36);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v30 = v32;
  CGAffineTransformInvert(&v31, &v30);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v39 = CGRectApplyAffineTransform(v38, &v31);
  v21 = v39.origin.x;
  v22 = v39.origin.y;
  v23 = v39.size.width;
  v24 = v39.size.height;
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  v40.origin.x = v21;
  v40.origin.y = v22;
  v40.size.width = v23;
  v40.size.height = v24;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v21;
  v41.origin.y = v22;
  v41.size.width = v23;
  v41.size.height = v24;
  MaxY = CGRectGetMaxY(v41);
  CGContextTranslateCTM(context, MinX, MaxY);
  CGContextScaleCTM(context, 1.0, -1.0);
  v29 = objc_msgSend_CGImageForSize_inContext_orContentsScaleProvider_(v16, v27, context, 0, v28, v34);

  TSURectWithSize();
  CGContextDrawImage(context, v42, v29);
  CGContextRestoreGState(context);
}

@end