@interface PXGFloatValuesColorLookupCube
+ (BOOL)_parseLUTData:(id)a3 resultHandler:(id)a4 errorHandler:(id)a5;
- (BOOL)blendWithCube:(id)a3 factor:(float)a4;
- (BOOL)isEqual:(id)a3;
- (PXGFloatValuesColorLookupCube)init;
- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)a3 usedFormat:(int64_t *)a4 error:(id *)a5;
- (PXGFloatValuesColorLookupCube)initWithData:(id)a3 format:(int64_t)a4 error:(id *)a5;
- (PXGFloatValuesColorLookupCube)initWithEdgeSize:(int64_t)a3 colorValuesData:(const float *)a4 length:(unint64_t)a5 identifier:(id)a6;
- (double)center;
- (id)createTextureWithContext:(id)a3;
- (id)textureData;
- (void)dealloc;
- (void)smoothWithFactor:(float)a3;
@end

@implementation PXGFloatValuesColorLookupCube

- (id)createTextureWithContext:(id)a3
{
  v4 = a3;
  v5 = [(PXGColorLookupCube *)self edgeSize];
  v6 = [(PXGFloatValuesColorLookupCube *)self textureData];
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v7 setTextureType:7];
  [v7 setWidth:v5];
  [v7 setHeight:v5];
  [v7 setDepth:v5];
  [v7 setPixelFormat:70];
  [v7 setUsage:1];
  [v7 setResourceOptions:0];
  v8 = [v4 newTextureWithDescriptor:v7];
  memset(v10, 0, 24);
  v10[3] = v5;
  v10[4] = v5;
  v10[5] = v5;
  [v4 copyBytes:objc_msgSend(v6 toTexture:"bytes" inRegion:0 length:0 bytesPerRow:0) bytesPerImage:{v8, v10, objc_msgSend(v6, "length"), 4 * v5, 4 * v5 * v5}];

  return v8;
}

- (id)textureData
{
  v3 = [(PXGColorLookupCube *)self edgeSize];
  v4 = [(PXGFloatValuesColorLookupCube *)self colorValuesData];
  v5 = 4 * v3 * v3 * v3;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v5];
  for (i = [v6 mutableBytes]; v5; --v5)
  {
    v8 = *v4++;
    v9 = (v8 * 255.0) + 0.5;
    if (v9 < 255.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 255.0;
    }

    v11 = v10;
    if (v9 < 0.0)
    {
      LOBYTE(v11) = 0;
    }

    *i++ = v11;
  }

  return v6;
}

- (double)center
{
  v2 = [a1 edgeSize];
  v3 = [a1 colorValuesData];
  v4 = 0;
  v5 = (v2 + (v2 >> 31)) >> 1;
  v6 = 0uLL;
  v7 = 1;
  do
  {
    v8 = 0;
    v9 = v7;
    v10 = v3 + 16 * (v2 / 2) + 16 * v2 * v2 * (v4 + v5);
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = (v10 + 16 * (v8 + v5) * v2);
      v6 = vaddq_f32(vaddq_f32(v6, *v13), v13[1]);
      v8 = 1;
      v11 = 0;
    }

    while ((v12 & 1) != 0);
    v7 = 0;
    v4 = 1;
  }

  while ((v9 & 1) != 0);
  v14.i64[0] = 0x3E0000003E000000;
  v14.i64[1] = 0x3E0000003E000000;
  *&result = vmulq_f32(v6, v14).u64[0];
  return result;
}

- (BOOL)blendWithCube:(id)a3 factor:(float)a4
{
  v23 = *&a4;
  v5 = a3;
  v6 = [(PXGColorLookupCube *)self edgeSize];
  v7 = [v5 edgeSize];
  if (v7 == v6)
  {
    v8 = [(PXGFloatValuesColorLookupCube *)self colorValuesData];
    v9 = [v5 colorValuesData];
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = vdupq_lane_s32(v23, 0);
      v12 = v6 & 0x7FFFFFFF;
      v13 = 16 * (v6 * v6);
      v14 = 16 * v12;
      do
      {
        v15 = 0;
        v16 = v8;
        v17 = v9;
        do
        {
          v18 = v16;
          v19 = v17;
          v20 = v6 & 0x7FFFFFFF;
          do
          {
            v21 = *v19++;
            *v18 = vmlaq_f32(*v18, vsubq_f32(v21, *v18), v11);
            ++v18;
            --v20;
          }

          while (v20);
          ++v15;
          v17 = (v17 + v14);
          v16 = (v16 + v14);
        }

        while (v15 != v12);
        ++v10;
        v9 += v13;
        v8 = (v8 + v13);
      }

      while (v10 != v12);
    }
  }

  return v7 == v6;
}

- (void)smoothWithFactor:(float)a3
{
  v5 = [(PXGColorLookupCube *)self edgeSize];
  v6 = [(PXGFloatValuesColorLookupCube *)self colorValuesData];
  v7 = v5 - 1;
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = a3 * 2.0 + 1.0;
    *&v9 = a3 / v9;
    v10 = *&v9 * -2.0 + 1.0;
    v11 = (v5 * v5);
    v12 = vdupq_lane_s32(*&v9, 0);
    v13 = v5 & 0x7FFFFFFF;
    v14 = 16 * v13;
    v15 = v6;
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        v18 = &v6[4 * v11 * v8 + 4 * v16 * v13];
        v19 = *v18;
        v20 = 1;
        v21 = v5 & 0x7FFFFFFF;
        v22 = v17;
        v23 = *v18;
        do
        {
          if (v20 >= v7)
          {
            v24 = v5 - 1;
          }

          else
          {
            v24 = v20;
          }

          v25 = vmlaq_f32(vmulq_n_f32(v23, v10), v19, v12);
          v19 = v23;
          v23 = v18[v24];
          *v22++ = vmlaq_f32(v25, v23, v12);
          ++v20;
          --v21;
        }

        while (v21);
        ++v16;
        v17 = (v17 + v14);
      }

      while (v16 != v13);
      ++v8;
      v15 += 4 * (v5 * v5);
    }

    while (v8 != v13);
    v26 = 0;
    v27 = v6;
    do
    {
      v28 = 0;
      v29 = v27;
      do
      {
        v30 = &v6[4 * v11 * v26 + 4 * v28];
        v31 = *v30;
        v32 = 1;
        v33 = v5 & 0x7FFFFFFF;
        v34 = v29;
        v35 = *v30;
        do
        {
          if (v32 >= v7)
          {
            v36 = v5 - 1;
          }

          else
          {
            v36 = v32;
          }

          v37 = vmlaq_f32(vmulq_n_f32(v35, v10), v31, v12);
          v31 = v35;
          v35 = v30[v36 * v5];
          *v34 = vmlaq_f32(v37, v35, v12);
          v34 = (v34 + v14);
          ++v32;
          --v33;
        }

        while (v33);
        ++v28;
        ++v29;
      }

      while (v28 != v13);
      ++v26;
      v27 += 4 * v11;
    }

    while (v26 != v13);
    v38 = 0;
    v39 = v5 * v5;
    do
    {
      v40 = 0;
      do
      {
        v41 = 0;
        v42 = &v6[4 * v38 * v13 + 4 * v40];
        v43 = *v42;
        v44 = 1;
        v45 = v5 & 0x7FFFFFFF;
        v46 = *v42;
        do
        {
          if (v44 >= v7)
          {
            v47 = v5 - 1;
          }

          else
          {
            v47 = v44;
          }

          v48 = vmlaq_f32(vmulq_n_f32(v43, v10), v46, v12);
          v46 = v43;
          v43 = v42[v39 * v47];
          v42[v41] = vmlaq_f32(v48, v43, v12);
          v41 += v39;
          ++v44;
          --v45;
        }

        while (v45);
        ++v40;
      }

      while (v40 != v13);
      ++v38;
    }

    while (v38 != v13);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 edgeSize];
    if (v6 == -[PXGColorLookupCube edgeSize](self, "edgeSize") && (v7 = [v5 length], v7 == -[PXGFloatValuesColorLookupCube length](self, "length")))
    {
      v8 = [v5 identifier];
      v9 = [(PXGFloatValuesColorLookupCube *)self identifier];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqualToString:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  free(self->_colorValuesData);
  v3.receiver = self;
  v3.super_class = PXGFloatValuesColorLookupCube;
  [(PXGFloatValuesColorLookupCube *)&v3 dealloc];
}

- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)a3 usedFormat:(int64_t *)a4 error:(id *)a5
{
  result = [(PXGFloatValuesColorLookupCube *)self initWithContentsOfURL:a3 format:1 error:a5];
  if (a4)
  {
    *a4 = 1;
  }

  return result;
}

- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEA90];
  v9 = a3;
  v10 = [[v8 alloc] initWithContentsOfURL:v9 options:1 error:a5];

  if (v10)
  {
    v11 = [(PXGFloatValuesColorLookupCube *)self initWithData:v10 format:a4 error:a5];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (PXGFloatValuesColorLookupCube)initWithData:(id)a3 format:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1317;
  v21 = __Block_byref_object_dispose__1318;
  v22 = 0;
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_7;
    }

    v16.receiver = self;
    v16.super_class = PXGFloatValuesColorLookupCube;
    v9 = [(PXGFloatValuesColorLookupCube *)&v16 init];
    v10 = objc_opt_class();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__PXGFloatValuesColorLookupCube_initWithData_format_error___block_invoke;
    v14[3] = &unk_2782A7E08;
    a4 = v9;
    v15 = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__PXGFloatValuesColorLookupCube_initWithData_format_error___block_invoke_2;
    v13[3] = &unk_2782A7E30;
    v13[4] = &v17;
    if (([v10 _parseLUTData:v8 resultHandler:v14 errorHandler:v13] & 1) == 0)
    {

      a4 = 0;
    }

    self = v15;
  }

  self = a4;
LABEL_7:
  if (a5)
  {
    *a5 = v18[5];
  }

  v11 = self;
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __59__PXGFloatValuesColorLookupCube_initWithData_format_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *(a1 + 32);
  v11 = a2;
  [v10 setEdgeSize:a4];
  *(*(a1 + 32) + 24) = a5;
  *(*(a1 + 32) + 32) = a6;
  obj = [v11 copy];

  v12 = obj;
  if (!obj)
  {
    a6 = [MEMORY[0x277CCAD78] UUID];
    v12 = [a6 UUIDString];
  }

  objc_storeStrong((*(a1 + 32) + 40), v12);
  v13 = obj;
  if (!obj)
  {

    v13 = 0;
  }
}

- (PXGFloatValuesColorLookupCube)initWithEdgeSize:(int64_t)a3 colorValuesData:(const float *)a4 length:(unint64_t)a5 identifier:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = PXGFloatValuesColorLookupCube;
  v12 = [(PXGFloatValuesColorLookupCube *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(PXGColorLookupCube *)v12 setEdgeSize:a3];
    v14 = malloc_type_malloc(4 * a5, 0x8FDE55B5uLL);
    v13->_colorValuesData = v14;
    memcpy(v14, a4, 4 * a5);
    v13->_length = a5;
    objc_storeStrong(&v13->_identifier, a6);
  }

  return v13;
}

- (PXGFloatValuesColorLookupCube)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXGFloatValuesColorLookupCube init]"}];

  abort();
}

+ (BOOL)_parseLUTData:(id)a3 resultHandler:(id)a4 errorHandler:(id)a5
{
  v7 = a3;
  v47 = a4;
  v8 = a5;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__1317;
  v59 = __Block_byref_object_dispose__1318;
  v60 = 0;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __74__PXGFloatValuesColorLookupCube__parseLUTData_resultHandler_errorHandler___block_invoke;
  v52[3] = &unk_2782A7E58;
  v54 = &v55;
  v9 = v8;
  v53 = v9;
  v10 = MEMORY[0x21CEE40A0](v52);
  v11 = v10;
  if (v7)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    v45 = v12;
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v12];
      v35 = 0x7FFFFFFFFFFFFFFFLL;
      v50 = 0;
      v51 = 0x7FFFFFFFFFFFFFFFLL;
      v49 = 0;
      v44 = 0;
      __asm { FMOV            V8.2S, #1.0 }

      v19 = 0.0;
      context = objc_autoreleasePoolPush();
      v41 = 0;
      v20 = 0;
      v34 = 0;
      v46 = 0;
      v21 = 0;
      v22 = 0;
      v43 = 1.0;
      v38 = 0.0;
      v39 = 1.0;
      v42 = _D8;
      v36 = 0;
      v37 = _D8;
      while (2)
      {
        while (2)
        {
          v23 = v44;
          v24 = vneg_f32(v44);
LABEL_5:
          v25 = vdiv_f32(_D8, vsub_f32(v42, v23));
          v26 = vmul_f32(v25, v24);
LABEL_6:
          v27 = v20;
          while (1)
          {
            if ([v13 isAtEnd])
            {
              goto LABEL_43;
            }

            if (![v13 scanString:@"#" intoString:0])
            {
              break;
            }

            v28 = [MEMORY[0x277CCA900] newlineCharacterSet];
            [v13 scanUpToCharactersFromSet:v28 intoString:0];
          }

          if ([v13 scanString:@"TITLE" intoString:0])
          {
            if ([v13 scanString:@"" intoString:0])
            {
              v48 = 0;
              v30 = [v13 scanUpToString:@"" intoString:&v48];
              v33 = v48;
              if (v30 && [v13 scanString:@"" intoString:0])
              {

                v41 = v33;
                v20 = v27;
                continue;
              }

              v32 = v33;
            }

            else
            {
              v32 = 0;
            }

            v11[2](v11);

            goto LABEL_43;
          }

          break;
        }

        v20 = v27;
        if ([v13 scanString:@"DOMAIN_MIN" intoString:0])
        {
          if ([v13 scanFloat:&v50 + 4] && objc_msgSend(v13, "scanFloat:", &v50) && objc_msgSend(v13, "scanFloat:", &v49))
          {
            v19 = *(&v50 + 1);
            v44 = __PAIR64__(v49, v50);
            continue;
          }
        }

        else if ([v13 scanString:@"DOMAIN_MAX" intoString:0])
        {
          if ([v13 scanFloat:&v50 + 4] && objc_msgSend(v13, "scanFloat:", &v50) && objc_msgSend(v13, "scanFloat:", &v49))
          {
            v43 = *(&v50 + 1);
            v42 = __PAIR64__(v49, v50);
            v23 = v44;
            goto LABEL_5;
          }
        }

        else if ([v13 scanString:@"LUT_3D_SIZE" intoString:0])
        {
          v35 = 3;
          if ([v13 scanInteger:&v51])
          {
            continue;
          }
        }

        else if ([v13 scanFloat:&v50 + 4] && objc_msgSend(v13, "scanFloat:", &v50) && objc_msgSend(v13, "scanFloat:", &v49))
        {
          if (v46)
          {
LABEL_21:
            if (v21 < v20)
            {
              *v22 = v38 + (*(&v50 + 1) * v39);
              *(v22 + 4) = vmla_f32(v36, v37, __PAIR64__(v49, v50));
              *(v22 + 3) = 1065353216;
              ++v21;
              v22 += 16;
              if (v21 != v20)
              {
                goto LABEL_6;
              }

              if ([v13 isAtEnd])
              {
                v47[2](v47, v41, v35, v51, v46, v34);
                v46 = 0;
                v29 = 1;
                goto LABEL_44;
              }
            }

            break;
          }

          v46 = 0;
          v29 = 0;
          if (v35 == 3 && v51 >= 1)
          {
            v20 = v51 * v51 * v51;
            v46 = malloc_type_malloc(16 * v20, 0x100004052888210uLL);
            v34 = 4 * v20;
            v38 = (1.0 / (v43 - v19)) * -v19;
            v39 = 1.0 / (v43 - v19);
            v22 = v46;
            v36 = v26;
            v37 = v25;
            goto LABEL_21;
          }

LABEL_44:
          objc_autoreleasePoolPop(context);
          free(v46);

          goto LABEL_45;
        }

        break;
      }

      v11[2](v11);
LABEL_43:
      v29 = 0;
      goto LABEL_44;
    }

    (*(v9 + 2))(v9, v56[5]);
    v29 = 0;
LABEL_45:

    goto LABEL_46;
  }

  (*(v10 + 16))(v10);
  v29 = 0;
LABEL_46:

  _Block_object_dispose(&v55, 8);
  return v29;
}

uint64_t __74__PXGFloatValuesColorLookupCube__parseLUTData_resultHandler_errorHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] px_genericErrorWithDebugDescription:@"Malformed color cube LUT"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

@end