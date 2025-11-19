@interface PLKImageRenderer
+ (CGContext)contextWithFormat:(id)a3;
+ (void)prepareCGContext:(CGContext *)a3 withRendererContext:(id)a4;
- (id)imageWithActions:(id)a3;
- (id)imageWithRenderable:(id)a3;
@end

@implementation PLKImageRenderer

+ (CGContext)contextWithFormat:(id)a3
{
  v4 = a3;
  if (([v4 plk_isPLKImageRendererFormat] & 1) == 0)
  {
    v34.receiver = a1;
    v34.super_class = &OBJC_METACLASS___PLKImageRenderer;
    v19 = objc_msgSendSuper2(&v34, sel_contextWithFormat_, v4);
LABEL_30:

    return v19;
  }

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  [v4 scale];
  v10 = v9;
  v11 = [v4 contextType];
  v12 = [v4 colorSpace];
  v13 = [v4 memoryPool];
  if (v6 <= 0.0 || v8 <= 0.0)
  {
    v35.width = v6;
    v35.height = v8;
    v20 = NSStringFromCGSize(v35);
    NSLog(&cfstr_Plkimagerender.isa, v20);

    v19 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v14 = vcvtpd_u64_f64(v10 * v6);
  PLKGraphicsContextComponentsCountForType(v11);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v16 = 0;
  DeviceGray = 0;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v16 = 1;
      DeviceGray = CGColorSpaceCreateDeviceGray();
    }

    else
    {
      if (v11 != 3)
      {
        v18 = 0;
        if (v11 == 4)
        {
          DeviceGray = 0;
          v18 = 0;
          v16 = 7;
        }

        goto LABEL_23;
      }

      DeviceGray = CGColorSpaceCreateDeviceGray();
      v16 = 0;
    }

    v18 = 0;
    goto LABEL_23;
  }

  if (v11)
  {
    v18 = 0;
    if (v11 != 1)
    {
      goto LABEL_23;
    }

    if (v12)
    {
      DeviceGray = CGColorSpaceRetain(v12);
      v18 = 0x2000;
      v16 = 6;
      goto LABEL_23;
    }

    v18 = 0x2000;
    v16 = 6;
  }

  else
  {
    if (v12)
    {
      DeviceGray = CGColorSpaceRetain(v12);
      v18 = 0x2000;
      v16 = 2;
      goto LABEL_23;
    }

    v18 = 0x2000;
    v16 = 2;
  }

  DeviceGray = CGColorSpaceCreateDeviceRGB();
LABEL_23:
  v21 = vcvtpd_u64_f64(v10 * v8);
  if (!v13)
  {
    Data = 0;
LABEL_27:
    v19 = CGBitmapContextCreate(Data, v14, v21, 8uLL, AlignedBytesPerRow, DeviceGray, v18 | v16);
    if (!v19)
    {
      NSLog(&cfstr_Plkimagerender_2.isa);
    }

    goto LABEL_29;
  }

  v22 = DeviceGray;
  v23 = v14;
  v24 = AlignedBytesPerRow;
  v25 = AlignedBytesPerRow * v21;
  v26 = [v13 slotLength];
  if (v25 <= v26)
  {
    Data = CGBitmapAllocateData();
    AlignedBytesPerRow = v24;
    v14 = v23;
    DeviceGray = v22;
    goto LABEL_27;
  }

  v29 = MEMORY[0x277CCACA8];
  v30 = v26;
  v31 = PLKGraphicsContextTypeDescription(v11);
  v36.width = v6;
  v36.height = v8;
  v32 = NSStringFromCGSize(v36);
  v33 = [v29 stringWithFormat:@"requested slot length (%zd) larger than maximum slotLength (%zd), not large enough for %@ context with dimensions %@ @%fx", v25, v30, v31, v32, *&v10];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PLKImageRenderer contextWithFormat:v33];
  }

  [v33 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (void)prepareCGContext:(CGContext *)a3 withRendererContext:(id)a4
{
  v5 = [a4 format];
  [v5 scale];
  v7 = v6;
  [v5 bounds];
  v9 = v8;
  v11 = v10;
  v17.size.width = ceil(v7 * v12);
  v14 = ceil(v7 * v13);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.height = v14;
  CGContextClearRect(a3, v17);
  CGContextTranslateCTM(a3, 0.0, v14);
  CGContextScaleCTM(a3, v7, -v7);
  if (v9 != *MEMORY[0x277CBF348] || v11 != *(MEMORY[0x277CBF348] + 8))
  {
    CGContextTranslateCTM(a3, -v9, -v11);
  }

  CGContextGetCTM(&v16, a3);
  CGContextSetBaseCTM();
}

- (id)imageWithActions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLKLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v17 = self;
    _os_log_impl(&dword_21E5D5000, v5, OS_LOG_TYPE_INFO, "<PLKImageRenderer:%p imageWithActions>", buf, 0xCu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__PLKImageRenderer_imageWithActions___block_invoke;
  v14[3] = &unk_27835B730;
  v6 = v4;
  v15 = v6;
  v13.receiver = self;
  v13.super_class = PLKImageRenderer;
  v7 = [(UIGraphicsImageRenderer *)&v13 imageWithActions:v14];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)imageWithRenderable:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLKLogRendering();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_21E5D5000, v5, OS_LOG_TYPE_INFO, "<PLKImageRenderer:%p imageWithRenderable:%@>", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__PLKImageRenderer_imageWithRenderable___block_invoke;
  v10[3] = &unk_27835B6C8;
  v11 = v4;
  v6 = v4;
  v7 = [(PLKImageRenderer *)self imageWithActions:v10];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)contextWithFormat:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLKImageRenderer contextWithFormat:]"];
  v4 = 138544130;
  v5 = v2;
  v6 = 2114;
  v7 = @"PLKImageRenderer.m";
  v8 = 1024;
  v9 = 111;
  v10 = 2114;
  v11 = a1;
  _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v4, 0x26u);

  v3 = *MEMORY[0x277D85DE8];
}

@end