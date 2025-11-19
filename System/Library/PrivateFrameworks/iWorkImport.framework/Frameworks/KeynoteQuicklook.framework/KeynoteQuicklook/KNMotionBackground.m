@interface KNMotionBackground
+ (id)serialQueue;
- (CGImage)newPosterFrameWithSize:(CGSize)a3;
- (CGImage)p_newPosterFrameWithWidth:(double)a3 height:(double)a4;
- (CGSize)p_adjustedPosterFrameSize:(CGSize)a3;
- (KNMotionBackground)initWithStyle:(id)a3;
- (id)fillWithSize:(CGSize)a3;
- (void)drawInContext:(CGContext *)a3 inRect:(CGRect)a4;
@end

@implementation KNMotionBackground

- (KNMotionBackground)initWithStyle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KNMotionBackground;
  v6 = [(KNMotionBackground *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_style, a3);
  }

  return v7;
}

- (void)drawInContext:(CGContext *)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  objc_msgSend_p_adjustedPosterFrameSize_(self, a2, a3, a4.size.width, a4.size.height);
  v12 = objc_msgSend_p_newPosterFrameWithWidth_height_(self, v10, v11);
  if (v12)
  {
    v15 = v12;
    CGContextSaveGState(a3);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    MaxY = CGRectGetMaxY(v29);
    CGContextTranslateCTM(a3, 0.0, MinY + MaxY);
    CGContextScaleCTM(a3, 1.0, -1.0);
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    TSUImageOrientationTransform();
    memset(&transform, 0, sizeof(transform));
    CGContextConcatCTM(a3, &transform);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGContextDrawImage(a3, v30, v15);
    CGImageRelease(v15);
    CGContextRestoreGState(a3);
  }

  else
  {
    v18 = objc_msgSend_style(self, v13, v14);
    v22 = objc_msgSend_makeAlternateFill(v18, v19, v20);

    objc_msgSend_paintRect_inContext_(v22, v21, a3, x, y, width, height);
  }
}

- (CGImage)newPosterFrameWithSize:(CGSize)a3
{
  objc_msgSend_p_adjustedPosterFrameSize_(self, a2, v3, a3.width, a3.height);

  return objc_msgSend_p_newPosterFrameWithWidth_height_(self, v5, v6);
}

+ (id)serialQueue
{
  if (qword_280A3BF00 != -1)
  {
    sub_275E59C90();
  }

  v3 = qword_280A3BF08;

  return v3;
}

- (CGImage)p_newPosterFrameWithWidth:(double)a3 height:(double)a4
{
  v6 = objc_msgSend_posterFrameData(self->_style, a2, v4);
  if (!v6)
  {
    return 0;
  }

  v9 = v6;
  v10 = objc_msgSend_posterFrameData(self->_style, v7, v8);
  v13 = objc_msgSend_needsDownload(v10, v11, v12);

  if (v13)
  {
    return 0;
  }

  v17 = objc_msgSend_posterFrameData(self->_style, v14, v15);
  v18 = TSDResampleImageData();

  v21 = objc_msgSend_newCGImage(v18, v19, v20);
  return v21;
}

- (CGSize)p_adjustedPosterFrameSize:(CGSize)a3
{
  TSUSizeIsEmpty();
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    TSDMaxPixelAreaForiOSImages();
    TSUShrinkSizeToFitInArea();
    TSUFlooredSize();
  }

  TSURoundedSize();
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)fillWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = objc_msgSend_newPosterFrameWithSize_(self, a2, v3);
  if (v7)
  {
    v10 = v7;
    v11 = objc_msgSend_style(self, v8, v9);
    v14 = objc_msgSend_context(v11, v12, v13);

    v15 = MEMORY[0x277D80828];
    v16 = CGImagePNGRepresentation();
    v18 = objc_msgSend_dataFromNSData_filename_context_(v15, v17, v16, @"motionBackground.png", v14);

    v19 = objc_alloc(MEMORY[0x277D802C0]);
    v21 = objc_msgSend_initWithImageData_technique_tintColor_size_(v19, v20, v18, 0, 0, width, height);
    CGImageRelease(v10);
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x277D801F8]);
    v14 = objc_msgSend_referenceColor(self, v23, v24);
    v21 = objc_msgSend_initWithColor_(v22, v25, v14);
  }

  return v21;
}

@end