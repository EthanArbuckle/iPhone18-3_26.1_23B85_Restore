@interface PXGColorProgram
- (BOOL)_compactProgramWithConversionInfo:(CGColorConversionInfo *)a3 cubeSize:(int)a4 cubeOnly:(BOOL)a5;
- (BOOL)_generateProgram;
- (BOOL)needsHDRToSDRConversion;
- (PXGColorProgram)init;
- (PXGColorProgram)initWithContext:(id)a3 sourceColorSpace:(CGColorSpace *)a4 destinationColorSpace:(CGColorSpace *)a5 flags:(unint64_t)a6;
- (id)description;
- (id)diagnosticDescription;
- (void)dealloc;
@end

@implementation PXGColorProgram

- (BOOL)_generateProgram
{
  v25[4] = *MEMORY[0x277D85DE8];
  if ([(PXGColorProgram *)self needsHDRToSDRConversion])
  {
    v3 = *MEMORY[0x277CBED10];
    v24[0] = @"kCGPQEETF3DLut";
    v24[1] = @"kCGHLGSceneMapping3DLut";
    v25[0] = v3;
    v25[1] = v3;
    v4 = *MEMORY[0x277CBED28];
    v24[2] = @"kCGApplyToneMappingForBT2100";
    v24[3] = @"kCGHDRMediaReferenceWhite";
    v25[2] = v4;
    v25[3] = &unk_282C7F6E8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
    [(PXGColorProgram *)self destinationColorSpace];
    PXGetColorSpace();
    if ((CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) == 0)
    {
      sourceColorSpace = self->_sourceColorSpace;
      v7 = PXGetColorSpace();
      v8 = CGColorConversionInfoCreateFromList(v5, sourceColorSpace, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, v7, 2, 0, self->_destinationColorSpace, 1, 0, 0);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = CGColorConversionInfoCreateFromList(v5, self->_sourceColorSpace, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, self->_destinationColorSpace, 1, 0, 0);
LABEL_6:
  v9 = v8;
  if (!v8)
  {
    v12 = PXGTungstenGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = self->_sourceColorSpace;
      destinationColorSpace = self->_destinationColorSpace;
      *buf = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = destinationColorSpace;
      _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_ERROR, "Unable to create colorConversionInfo from %@ -> %@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(self->_sourceColorSpace);
  if (NumberOfComponents == 1)
  {
    v11 = 256;
    goto LABEL_16;
  }

  if (NumberOfComponents == 4)
  {
    v11 = 5;
    goto LABEL_16;
  }

  if (NumberOfComponents != 3)
  {
    v16 = PXGTungstenGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = CGColorSpaceGetNumberOfComponents(self->_sourceColorSpace);
      v18 = self->_sourceColorSpace;
      *buf = 134218242;
      v21 = v17;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_21AD38000, v16, OS_LOG_TYPE_ERROR, "Unsupported number of components:%zu of colorSpace:%@", buf, 0x16u);
    }

    CFRelease(v9);
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v11 = 32;
LABEL_16:
  v15 = [(PXGColorProgram *)self _compactProgramWithConversionInfo:v9 cubeSize:v11 cubeOnly:0];
  CFRelease(v9);
LABEL_21:

  return v15;
}

- (BOOL)needsHDRToSDRConversion
{
  if (CGColorSpaceUsesITUR_2100TF([(PXGColorProgram *)self destinationColorSpace]))
  {
    return 0;
  }

  v4 = [(PXGColorProgram *)self sourceColorSpace];

  return CGColorSpaceUsesITUR_2100TF(v4);
}

- (id)diagnosticDescription
{
  v47 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v49 = [(MTLBuffer *)self->_params contents];
  v3 = 0;
  v4 = [(PXGColorProgram *)self numInputs];
  v5 = 0x277CCA000uLL;
  v48 = self;
  do
  {
    v6 = (self->_opcodes >> (4 * v3)) & 0xF;
    v7 = *(v5 + 3240);
    v8 = off_2782A9CD8[v6];
    v9 = [v7 stringWithFormat:@"%@: ", v8];

    if (v6 > 5)
    {
      if (v6 > 8)
      {
        if (v6 != 9)
        {
          if (v6 != 10)
          {
            if (v6 != 13)
            {
              goto LABEL_48;
            }

            v11 = [v9 stringByAppendingFormat:@"c = hlg_luma_scaling(c, %.5f, %.5f, colorp4(%.5f, %.5f, %.5f, %.5f))", *v49, v49[4], v49[8], v49[12], v49[16], v49[20]];;

            v49 += 24;
            goto LABEL_33;
          }

          v49 += 4;
          goto LABEL_43;
        }

        v12 = v49;
        v13 = [v9 stringByAppendingFormat:@"\n    c.rgb = c.rgb * %.5f + %.5f", *v49, v49[1]];;

        v14 = v13;
        v15 = @"\n    c.rgb = colorp3(color_cube.sample(lut_sampler, float3(c.rgb)).rgb);";
      }

      else
      {
        if (v6 == 6)
        {
          v19 = [v9 stringByAppendingFormat:@"for each color component:"];

          if (v4 < 1)
          {
            v9 = v19;
          }

          else
          {
            v20 = 0;
            v21 = v49 + 12;
            do
            {
              v9 = [v19 stringByAppendingFormat:@"\n    %d: t[i] = t[i] < %.5f ? %.5f * t[i] + %.5f : powr(%.5f * t[i] + %.5f, %.5f) + %.5f", v20, v21[4], *v21, v21[12], *(v21 - 8), *(v21 - 4), *(v21 - 12), v21[8]];;

              ++v20;
              ++v21;
              v19 = v9;
            }

            while (v4 != v20);
          }

          v49 += 28;
          v5 = 0x277CCA000;
          goto LABEL_48;
        }

        if (v6 == 7)
        {
          v26 = [v9 stringByAppendingFormat:@"for each color component:"];

          if (v4 < 1)
          {
            v9 = v26;
          }

          else
          {
            v27 = 0;
            v28 = v49 + 4;
            v29 = v4;
            do
            {
              v30 = *(v28 - 4);
              v31 = *v28++;
              v9 = [v26 stringByAppendingFormat:@"\n    %d: c[i] = colorp(color_trc.sample(lut_sampler, float2(c[i] * %.5f, %.5f)).r)", v27, *&v30, v31];

              v27 = (v27 + 1);
              v26 = v9;
              --v29;
            }

            while (v29);
          }

          v35 = v49 + 8;
          goto LABEL_56;
        }

        v12 = v49;
        v13 = [v9 stringByAppendingFormat:@"\n    c.r = c.r * %.5f + %.5f", *v49, v49[1]];;

        v14 = v13;
        v15 = @"\n    c.rgb = colorp3(color_cube.sample(lut_sampler, float3(c.r, 0.5, 0.5)).rgb);";
      }

      v9 = [v14 stringByAppendingFormat:v15];

      v49 = v12 + 4;
LABEL_43:
      v4 = 3;
      goto LABEL_48;
    }

    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v11 = [v9 stringByAppendingFormat:@"c = (c.r * (%.5f, %.5f, %.5f) + c.g * (%.5f, %.5f, %.5f) + c.b * (%.5f, %.5f, %.5f) + (%.5f, %.5f, %.5f), c.a)", *v49, v49[1], v49[2], v49[4], v49[5], v49[6], v49[8], v49[9], v49[10], v49[12], v49[13], v49[14]];

          v49 += 16;
          v4 = 3;
        }

        else
        {
          v10 = *v49;
          v49 += 4;
          v11 = [v9 stringByAppendingFormat:@"c = sign(c) * powr(t, %.5f) // Y = X^g", v10];;
        }

LABEL_33:
        v9 = v11;
        goto LABEL_48;
      }

      self = v48;
LABEL_58:

      goto LABEL_59;
    }

    if (v6 == 3)
    {
      v22 = [v9 stringByAppendingFormat:@"for each color component:"];

      if (v4 < 1)
      {
        v9 = v22;
      }

      else
      {
        v23 = 0;
        v24 = v49 + 8;
        v25 = v4;
        do
        {
          v9 = [v22 stringByAppendingFormat:@"\n    %d: t[i] = t[i] < -%.5f / %.5f ? 0 : powr(%.5f * t[i] + %.5f, %.5f)", v23, *v24, *(v24 - 4), *(v24 - 4), *v24, *(v24 - 8)];;

          v23 = (v23 + 1);
          ++v24;
          v22 = v9;
          --v25;
        }

        while (v25);
      }

      v35 = v49 + 12;
      goto LABEL_56;
    }

    if (v6 == 4)
    {
      v32 = [v9 stringByAppendingFormat:@"for each color component:"];

      if (v4 < 1)
      {
        v9 = v32;
      }

      else
      {
        v33 = 0;
        v34 = v49 + 8;
        do
        {
          v9 = [v32 stringByAppendingFormat:@"\n    %d: t[i] = t[i] < -%.5f / %.5f ? %.5f : powr(%.5f * t[i] + %.5f, %.5f) + %.5f", v33, *v34, *(v34 - 4), v34[4], *(v34 - 4), *v34, *(v34 - 8), v34[4]];;

          ++v33;
          ++v34;
          v32 = v9;
        }

        while (v4 != v33);
      }

      v35 = v49 + 16;
LABEL_56:
      v49 = v35;
      v5 = 0x277CCA000uLL;
      self = v48;
      if (!v9)
      {
        goto LABEL_59;
      }

LABEL_57:
      [v47 appendFormat:@"  %ld: %@\n", v3, v9];
      goto LABEL_58;
    }

    v16 = [v9 stringByAppendingFormat:@"for each color component:"];

    if (v4 < 1)
    {
      v9 = v16;
    }

    else
    {
      v17 = 0;
      v18 = v49 + 8;
      do
      {
        v9 = [v16 stringByAppendingFormat:@"\n    %d: t[i] = t[i] < %.5f ? %.5f * t[i] : powr(%.5f * t[i] + %.5f, %.5f)", v17, v18[8], v18[4], *(v18 - 4), *v18, *(v18 - 8)];;

        ++v17;
        ++v18;
        v16 = v9;
      }

      while (v4 != v17);
    }

    v49 += 20;
    v5 = 0x277CCA000;
LABEL_48:
    self = v48;
    if (v9)
    {
      goto LABEL_57;
    }

LABEL_59:
    ++v3;
  }

  while (v3 != 7);
  v36 = *(v5 + 3240);
  v50.receiver = self;
  v50.super_class = PXGColorProgram;
  v37 = [(PXGColorProgram *)&v50 description];
  Name = CGColorSpaceGetName([(PXGColorProgram *)self sourceColorSpace]);
  if (!Name)
  {
    v39 = CFCopyDescription([(PXGColorProgram *)self sourceColorSpace]);
    Name = CFAutorelease(v39);
  }

  v40 = CGColorSpaceGetName([(PXGColorProgram *)self destinationColorSpace]);
  v41 = [(PXGColorProgram *)self TRCLUTs];
  v42 = [(PXGColorProgram *)self colorCube];
  if (self->_flags)
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  v44 = v43;
  v45 = [v36 stringWithFormat:@"<%@ source:%@ destination:%@ TRCLUTs:%@ colorCube:%@ opaque:%@ stages:\n%@>", v37, Name, v40, v41, v42, v44, v47];

  return v45;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PXGColorProgram;
  v4 = [(PXGColorProgram *)&v12 description];
  Name = CGColorSpaceGetName([(PXGColorProgram *)self sourceColorSpace]);
  if (!Name)
  {
    v6 = CFCopyDescription([(PXGColorProgram *)self sourceColorSpace]);
    Name = CFAutorelease(v6);
  }

  v7 = CGColorSpaceGetName([(PXGColorProgram *)self destinationColorSpace]);
  if (self->_flags)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@ source:%@ destination:%@ opaque:%@>", v4, Name, v7, v9];

  return v10;
}

- (BOOL)_compactProgramWithConversionInfo:(CGColorConversionInfo *)a3 cubeSize:(int)a4 cubeOnly:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v36 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v9 = v26;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v10 = [(PXGColorProgram *)self needsHDRToSDRConversion];
  v21 = MEMORY[0x277D85DD0];
  v20 = MEMORY[0x277D85DD0];
  v19 = MEMORY[0x277D85DD0];
  v17 = MEMORY[0x277D85DD0];
  LOBYTE(v18) = v5;
  v11 = CGColorConversionInfoIterateFunctionsWithCallbacks();
  if (v11)
  {
    goto LABEL_6;
  }

  if (v5 || v10)
  {
    v12 = PXGTungstenGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(PXGColorProgram *)self sourceColorSpace:v17];
      v14 = [(PXGColorProgram *)self destinationColorSpace];
      *buf = 138412546;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "Unable to create color program for %@ -> %@.", buf, 0x16u);
    }

    LOBYTE(v9) = 0;
LABEL_6:
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  LOBYTE(v9) = [(PXGColorProgram *)self _compactProgramWithConversionInfo:a3 cubeSize:v6 cubeOnly:1, v17, 3221225472, __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke_2, &unk_2782ABCD0, self, v25, &v28, v26, v24, v18, v19, 3221225472, __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke_35, &unk_2782ABCA8, v24, v25, &v28, v26, v20, 3221225472, __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke_33, &unk_2782ABC80, self, v24, v25, v22, &v28, v26, v21, 3221225472, __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke, &unk_2782ABC58, self, v24, v22, v25];
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_7:
  v15 = *(v29 + 6);
  if (v6 == 5 || v15 && (self->_flags & 1) != 0)
  {
    v15 |= 0x20000000u;
    *(v29 + 6) = v15;
  }

  self->_opcodes = v15;
  self->_numInputs = CGColorSpaceGetNumberOfComponents(self->_sourceColorSpace);
  LOBYTE(v9) = 1;
LABEL_13:
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  return v9 & 1;
}

uint64_t __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *(*(a1[5] + 8) + 24) = *(a2 + 12);
  if (*(a2 + 4) > 7)
  {
    v2 = PXGTungstenGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 7;
      v3 = "Color matching limited to %d-stage, falling back to cube LUT\n";
      v4 = v2;
      v5 = 8;
LABEL_17:
      _os_log_impl(&dword_21AD38000, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (*(a2 + 28) < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      LODWORD(v21) = 0;
      *buf = 0u;
      v20 = 0u;
      CGColorTRCGetFunction();
      v9 += unk_21AE2E1B2;
      ++v8;
    }

    while (*(a2 + 28) > v8);
  }

  v10 = *(a2 + 36);
  if (v10 <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4 * v10;
  }

  v12 = v9 + v11;
  v13 = *(a2 + 44);
  if (v13 == 1)
  {
    LODWORD(v21) = 0;
    *buf = 0u;
    v20 = 0u;
    CGColorNxMTransformGetTransform();
    v12 += unk_21AE2E1B8;
    v13 = *(a2 + 44);
  }

  if (v13 >= 2)
  {
    v2 = PXGTungstenGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "No support for more than one NxM LUT, falling back to cube LUT\n";
      v4 = v2;
      v5 = 2;
      goto LABEL_17;
    }

LABEL_18:

    return 0;
  }

  *(a1[4] + 26) = v12;
  v15 = [*(a1[4] + 32) device];
  v16 = [v15 newBufferWithLength:16 * v12 options:0];
  v17 = a1[4];
  v18 = *(v17 + 64);
  *(v17 + 64) = v16;

  *(a1[4] + 8) = 0;
  *(*(a1[7] + 8) + 24) = [*(a1[4] + 64) contents];
  return 1;
}

BOOL __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke_33(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CGColorTRCGetFunction();
  if (*(*(a1[5] + 8) + 24) < a4)
  {
    a4 = *(*(a1[5] + 8) + 24);
  }

  if (a4 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    while (1)
    {
      v12 = *(a5 + 8 * v9);
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 >= *(a2 + 28))
        {
          return v10;
        }

        v15 = v11;
        v16 = v11;
        CGColorTRCGetFunction();
        if (v9 && v15)
        {
          v14 = PXGTungstenGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21AD38000, v14, OS_LOG_TYPE_DEFAULT, "TRCs are not the same for each color channel, falling back to cube LUT\n", buf, 2u);
          }

          return v10;
        }

        if (unk_21AE2E1B2 <= 3u)
        {
          switch(unk_21AE2E1B2)
          {
            case 1u:
              goto LABEL_43;
            case 2u:
              goto LABEL_42;
            case 3u:
              goto LABEL_41;
          }
        }

        else
        {
          if (unk_21AE2E1B2 > 5u)
          {
            if (unk_21AE2E1B2 != 6)
            {
              if (unk_21AE2E1B2 != 7)
              {
                goto LABEL_44;
              }

              *(*(*(a1[6] + 8) + 24) + 4 * v9 + 96) = HIDWORD(v16);
            }

            *(*(*(a1[6] + 8) + 24) + 4 * v9 + 80) = DWORD2(v16);
            goto LABEL_39;
          }

          if (unk_21AE2E1B2 != 4)
          {
LABEL_39:
            *(*(*(a1[6] + 8) + 24) + 4 * v9 + 64) = DWORD1(v16);
          }

          *(*(*(a1[6] + 8) + 24) + 4 * v9 + 48) = v16;
LABEL_41:
          *(*(*(a1[6] + 8) + 24) + 4 * v9 + 32) = HIDWORD(v15);
LABEL_42:
          *(*(*(a1[6] + 8) + 24) + 4 * v9 + 16) = DWORD2(v15);
LABEL_43:
          *(*(*(a1[6] + 8) + 24) + 4 * v9) = DWORD1(v15);
        }

LABEL_44:
        v11 = 0uLL;
        goto LABEL_45;
      }

      if (unk_21AE2E1B2 <= 3u)
      {
        break;
      }

      if (unk_21AE2E1B2 <= 5u)
      {
        if (unk_21AE2E1B2 != 4)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (unk_21AE2E1B2 == 6)
      {
        goto LABEL_29;
      }

      if (unk_21AE2E1B2 == 7)
      {
        *(*(*(a1[6] + 8) + 24) + 4 * v9 + 96) = 0;
LABEL_29:
        *(*(*(a1[6] + 8) + 24) + 4 * v9 + 80) = 0;
LABEL_30:
        *(*(*(a1[6] + 8) + 24) + 4 * v9 + 64) = 0;
LABEL_31:
        *(*(*(a1[6] + 8) + 24) + 4 * v9 + 48) = 0;
LABEL_32:
        *(*(*(a1[6] + 8) + 24) + 4 * v9 + 32) = 0;
        goto LABEL_33;
      }

LABEL_45:
      v10 = a4 <= ++v9;
      if (v9 == a4)
      {
        goto LABEL_48;
      }
    }

    if (unk_21AE2E1B2 != 1)
    {
      if (unk_21AE2E1B2 != 2)
      {
        if (unk_21AE2E1B2 != 3)
        {
          goto LABEL_45;
        }

        goto LABEL_32;
      }

LABEL_33:
      *(*(*(a1[6] + 8) + 24) + 4 * v9 + 16) = 1065353216;
    }

    *(*(*(a1[6] + 8) + 24) + 4 * v9) = 1065353216;
    goto LABEL_45;
  }

  v10 = 1;
LABEL_48:
  *(*(a1[8] + 8) + 24) |= 2 << *(*(a1[9] + 8) + 24);
  *(*(a1[9] + 8) + 24) += 4;
  *(*(a1[6] + 8) + 24) += 16 * unk_21AE2E1B2;
  return v10;
}

uint64_t __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke_35(void *a1, uint64_t a2)
{
  CGColorMatrixGetMatrix();
  *(*(a1[4] + 8) + 24) = *(a2 + 20);
  **(*(a1[5] + 8) + 24) = 0;
  *(*(*(a1[5] + 8) + 24) + 4) = 0;
  *(*(*(a1[5] + 8) + 24) + 8) = 0;
  *(*(*(a1[5] + 8) + 24) + 16) = 0;
  *(*(*(a1[5] + 8) + 24) + 20) = 0;
  *(*(*(a1[5] + 8) + 24) + 24) = 0;
  *(*(*(a1[5] + 8) + 24) + 28) = 0;
  *(*(*(a1[5] + 8) + 24) + 32) = 0;
  *(*(*(a1[5] + 8) + 24) + 36) = 0;
  *(*(*(a1[5] + 8) + 24) + 40) = 0;
  *(*(*(a1[5] + 8) + 24) + 44) = 0;
  *(*(*(a1[5] + 8) + 24) + 48) = 0;
  *(*(*(a1[5] + 8) + 24) + 52) = 0;
  *(*(*(a1[5] + 8) + 24) + 56) = 0;
  *(*(*(a1[5] + 8) + 24) + 60) = 0;
  *(*(a1[6] + 8) + 24) |= 1 << *(*(a1[7] + 8) + 24);
  *(*(a1[7] + 8) + 24) += 4;
  *(*(a1[5] + 8) + 24) += 64;
  return 1;
}

uint64_t __71__PXGColorProgram__compactProgramWithConversionInfo_cubeSize_cubeOnly___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 68) + 8 * a4))
  {
    memset(v10, 0, 20);
    CGColorNxMTransformGetTransform();
    v5 = *(*(a1 + 64) + 8);
    if (*(v5 + 24))
    {
      v6 = PXGTungstenGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        buf = 138412290;
        *buf_4 = v7;
        _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_ERROR, "%@ num_components != lut.nInputs", &buf, 0xCu);
      }

      v5 = *(*(a1 + 64) + 8);
    }

    *(v5 + 24) = *(v10 + 12);
    v8 = PXGTungstenGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf = 134218240;
      *buf_4 = 0;
      v13 = 2048;
      v14 = *(v10 + 12);
      _os_log_impl(&dword_21AD38000, v8, OS_LOG_TYPE_ERROR, "%zux%zu LUT not supported.\n", &buf, 0x16u);
    }
  }

  return 0;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_sourceColorSpace);
  CGColorSpaceRelease(self->_destinationColorSpace);
  free(self->_trc_lut_widths);
  v3.receiver = self;
  v3.super_class = PXGColorProgram;
  [(PXGColorProgram *)&v3 dealloc];
}

- (PXGColorProgram)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGColorProgram.m" lineNumber:109 description:{@"%s is not available as initializer", "-[PXGColorProgram init]"}];

  abort();
}

- (PXGColorProgram)initWithContext:(id)a3 sourceColorSpace:(CGColorSpace *)a4 destinationColorSpace:(CGColorSpace *)a5 flags:(unint64_t)a6
{
  v12 = a3;
  v19.receiver = self;
  v19.super_class = PXGColorProgram;
  v13 = [(PXGColorProgram *)&v19 init];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = [v12 device];

  if (v14)
  {
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_9:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:v13 file:@"PXGColorProgram.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"sourceColorSpace != nil"}];

    if (a5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:v13 file:@"PXGColorProgram.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (a5)
  {
    goto LABEL_5;
  }

LABEL_10:
  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:v13 file:@"PXGColorProgram.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"destinationColorSpace != nil"}];

LABEL_5:
  objc_storeStrong(&v13->_metalRenderContext, a3);
  v13->_sourceColorSpace = CGColorSpaceRetain(a4);
  v13->_destinationColorSpace = CGColorSpaceRetain(a5);
  v13->_flags = a6;
  if (![(PXGColorProgram *)v13 _generateProgram])
  {

    v13 = 0;
  }

LABEL_7:

  return v13;
}

@end