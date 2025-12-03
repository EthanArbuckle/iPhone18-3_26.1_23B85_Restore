@interface PFLCCoverageValidator
- (PFLCCoverageValidator)initWithMaskImage:(CGImage *)image orientation:(unsigned int)orientation;
- (double)coverageOfTimeLabel:(CGRect)label;
- (void)dealloc;
@end

@implementation PFLCCoverageValidator

- (PFLCCoverageValidator)initWithMaskImage:(CGImage *)image orientation:(unsigned int)orientation
{
  v55 = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = PFLCCoverageValidator;
  v6 = [(PFLCCoverageValidator *)&v51 init];
  if (v6)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    context = objc_autoreleasePoolPush();
    memset(&v50, 0, sizeof(v50));
    makePresentationTransform(orientation, Width, Height, &v50);
    buf = v50;
    v9 = rint(makePresentationSize(&buf, Width, Height) * 0.25);
    v11 = rint(v10 * 0.25);
    v6->_width = v9;
    v6->_height = v11;
    v48 = v6;
    v49 = v50;
    v12 = pflc_layout_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = v9;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v11;
      _os_log_impl(&dword_22D126000, v12, OS_LOG_TYPE_DEFAULT, "createScaledInputData: scale input data to == %ldx%ld", &buf, 0x16u);
    }

    v13 = (v11 + 1) * (v9 + 1);
    v14 = [MEMORY[0x277CBEB28] dataWithLength:v13];
    v15 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF498]);
    v16 = v14;
    v17 = CGColorSpaceGetNumberOfComponents(v15) & 0x1FFFFFFFFFFFFFFFLL;
    mutableBytes = [v16 mutableBytes];

    v19 = CGBitmapContextCreate(mutableBytes, v9 + 1, v11 + 1, 8uLL, v17 * (v9 + 1), v15, 0);
    CGColorSpaceRelease(v15);
    memset(&buf, 0, sizeof(buf));
    v53 = v49;
    uprightCTM(image, &v53, &buf);
    transform = buf;
    memset(&v53, 0, sizeof(v53));
    CGAffineTransformInvert(&v53, &transform);
    transform = buf;
    CGContextConcatCTM(v19, &transform);
    transform = v53;
    v56.origin.x = 1.0;
    v56.origin.y = 0.0;
    v56.size.width = v9;
    v56.size.height = v11;
    v57 = CGRectApplyAffineTransform(v56, &transform);
    CGContextDrawImage(v19, v57, image);
    CGContextRelease(v19);
    for (i = [v16 mutableBytes]; v13; --v13)
    {
      v21 = *i;
      if (v21 <= 0xC8)
      {
        LOBYTE(v21) = 0;
      }

      *i++ = v21;
    }

    v22 = v48->_width;
    v23 = v48->_height;
    v24 = v16;
    v25 = v22 + 1;
    v26 = malloc_type_malloc(4 * (v22 + 1) * (v23 + 1), 0x100004052888210uLL);
    bytes = [v24 bytes];
    v28 = v22;
    if (v22 != -1)
    {
      bzero(v26, v28 * 4 + 4);
    }

    v6 = v48;
    if (v23 != -1)
    {
      v29 = vdupq_n_s64(v23);
      v30 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + 4;
      v31 = xmmword_22D12D670;
      v32 = xmmword_22D12D680;
      v33 = vdupq_n_s64(4uLL);
      v34 = v26;
      do
      {
        v35 = vmovn_s64(vcgeq_u64(v29, v32));
        if (vuzp1_s16(v35, *v29.i8).u8[0])
        {
          *v34 = 0;
        }

        if (vuzp1_s16(v35, *&v29).i8[2])
        {
          v34[v28 + 1] = 0;
        }

        if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v31))).i32[1])
        {
          v34[2 * v22 + 2] = 0;
          v34[3 * v22 + 3] = 0;
        }

        v31 = vaddq_s64(v31, v33);
        v32 = vaddq_s64(v32, v33);
        v34 += 4 * v22 + 4;
        v30 -= 4;
      }

      while (v30);
      if (v23)
      {
        v36 = &v26[4 * v25];
        v37 = (bytes + v22 + 2);
        v38 = 1;
        v39 = v26;
        v40 = v26;
        v41 = &v26[4 * v22 + 8];
        do
        {
          v40 += 4;
          if (v25 >= 2)
          {
            v42 = 0;
            v43 = v22;
            do
            {
              v44 = *v37++;
              *&v41[v42] = *&v36[v42] + v44 + *&v40[v42] - *&v39[v42];
              v42 += 4;
              --v43;
            }

            while (v43);
            v40 += v42;
            v39 += v42;
            v36 += v42;
            v41 += v42;
          }

          ++v37;
          v41 += 4;
          v36 += 4;
          v39 += 4;
        }

        while (v38++ != v23);
      }
    }

    v48->_cumulativeData = v26;
    objc_autoreleasePoolPop(context);
  }

  return v6;
}

- (void)dealloc
{
  cumulativeData = self->_cumulativeData;
  if (cumulativeData)
  {
    free(cumulativeData);
  }

  v4.receiver = self;
  v4.super_class = PFLCCoverageValidator;
  [(PFLCCoverageValidator *)&v4 dealloc];
}

- (double)coverageOfTimeLabel:(CGRect)label
{
  height = label.size.height;
  width = label.size.width;
  y = label.origin.y;
  x = label.origin.x;
  IsEmpty = CGRectIsEmpty(label);
  result = 0.0;
  if (!IsEmpty)
  {
    v10 = self->_width;
    v11 = v10;
    v12 = self->_height;
    CGAffineTransformMakeScale(&v18, v10, v12);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectApplyAffineTransform(v19, &v18);
    if (v20.origin.x < 0.0)
    {
      v20.origin.x = 0.0;
    }

    if (v20.origin.y < 0.0)
    {
      v20.origin.y = 0.0;
    }

    if (v20.size.width > v11 - v20.origin.x)
    {
      v20.size.width = v11 - v20.origin.x;
    }

    v13 = rint(v20.origin.x + 1.0);
    if (v20.size.height > v12 - v20.origin.y)
    {
      v20.size.height = v12 - v20.origin.y;
    }

    v14 = rint(v20.origin.x + v20.size.width + -1.0 + 1.0);
    cumulativeData = self->_cumulativeData;
    v16 = &cumulativeData[rint(v20.origin.y + v20.size.height + -1.0 + 1.0) * (v10 + 1)];
    v17 = &cumulativeData[(rint(v20.origin.y + 1.0) - 1) * (v10 + 1)];
    return (v16[v14] - (v16[v13 - 1] + v17[v14]) + v17[v13 - 1]) / (v20.size.width * v20.size.height * 255.0);
  }

  return result;
}

@end