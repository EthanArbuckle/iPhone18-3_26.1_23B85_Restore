@interface PXGFloatValuesColorLookupCube
+ (BOOL)_parseLUTData:(id)data resultHandler:(id)handler errorHandler:(id)errorHandler;
- (BOOL)blendWithCube:(id)cube factor:(float)factor;
- (BOOL)isEqual:(id)equal;
- (PXGFloatValuesColorLookupCube)init;
- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)l format:(int64_t)format error:(id *)error;
- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)l usedFormat:(int64_t *)format error:(id *)error;
- (PXGFloatValuesColorLookupCube)initWithData:(id)data format:(int64_t)format error:(id *)error;
- (PXGFloatValuesColorLookupCube)initWithEdgeSize:(int64_t)size colorValuesData:(const float *)data length:(unint64_t)length identifier:(id)identifier;
- (double)center;
- (id)createTextureWithContext:(id)context;
- (id)textureData;
- (void)dealloc;
- (void)smoothWithFactor:(float)factor;
@end

@implementation PXGFloatValuesColorLookupCube

- (id)createTextureWithContext:(id)context
{
  contextCopy = context;
  edgeSize = [(PXGColorLookupCube *)self edgeSize];
  textureData = [(PXGFloatValuesColorLookupCube *)self textureData];
  v7 = objc_alloc_init(MEMORY[0x277CD7058]);
  [v7 setTextureType:7];
  [v7 setWidth:edgeSize];
  [v7 setHeight:edgeSize];
  [v7 setDepth:edgeSize];
  [v7 setPixelFormat:70];
  [v7 setUsage:1];
  [v7 setResourceOptions:0];
  v8 = [contextCopy newTextureWithDescriptor:v7];
  memset(v10, 0, 24);
  v10[3] = edgeSize;
  v10[4] = edgeSize;
  v10[5] = edgeSize;
  [contextCopy copyBytes:objc_msgSend(textureData toTexture:"bytes" inRegion:0 length:0 bytesPerRow:0) bytesPerImage:{v8, v10, objc_msgSend(textureData, "length"), 4 * edgeSize, 4 * edgeSize * edgeSize}];

  return v8;
}

- (id)textureData
{
  edgeSize = [(PXGColorLookupCube *)self edgeSize];
  colorValuesData = [(PXGFloatValuesColorLookupCube *)self colorValuesData];
  v5 = 4 * edgeSize * edgeSize * edgeSize;
  v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v5];
  for (i = [v6 mutableBytes]; v5; --v5)
  {
    v8 = *colorValuesData++;
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
  edgeSize = [self edgeSize];
  colorValuesData = [self colorValuesData];
  v4 = 0;
  v5 = (edgeSize + (edgeSize >> 31)) >> 1;
  v6 = 0uLL;
  v7 = 1;
  do
  {
    v8 = 0;
    v9 = v7;
    v10 = colorValuesData + 16 * (edgeSize / 2) + 16 * edgeSize * edgeSize * (v4 + v5);
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = (v10 + 16 * (v8 + v5) * edgeSize);
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

- (BOOL)blendWithCube:(id)cube factor:(float)factor
{
  v23 = *&factor;
  cubeCopy = cube;
  edgeSize = [(PXGColorLookupCube *)self edgeSize];
  edgeSize2 = [cubeCopy edgeSize];
  if (edgeSize2 == edgeSize)
  {
    colorValuesData = [(PXGFloatValuesColorLookupCube *)self colorValuesData];
    colorValuesData2 = [cubeCopy colorValuesData];
    if (edgeSize >= 1)
    {
      v10 = 0;
      v11 = vdupq_lane_s32(v23, 0);
      v12 = edgeSize & 0x7FFFFFFF;
      v13 = 16 * (edgeSize * edgeSize);
      v14 = 16 * v12;
      do
      {
        v15 = 0;
        v16 = colorValuesData;
        v17 = colorValuesData2;
        do
        {
          v18 = v16;
          v19 = v17;
          v20 = edgeSize & 0x7FFFFFFF;
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
        colorValuesData2 += v13;
        colorValuesData = (colorValuesData + v13);
      }

      while (v10 != v12);
    }
  }

  return edgeSize2 == edgeSize;
}

- (void)smoothWithFactor:(float)factor
{
  edgeSize = [(PXGColorLookupCube *)self edgeSize];
  colorValuesData = [(PXGFloatValuesColorLookupCube *)self colorValuesData];
  v7 = edgeSize - 1;
  if (edgeSize >= 1)
  {
    v8 = 0;
    v9 = factor * 2.0 + 1.0;
    *&v9 = factor / v9;
    v10 = *&v9 * -2.0 + 1.0;
    v11 = (edgeSize * edgeSize);
    v12 = vdupq_lane_s32(*&v9, 0);
    v13 = edgeSize & 0x7FFFFFFF;
    v14 = 16 * v13;
    v15 = colorValuesData;
    do
    {
      v16 = 0;
      v17 = v15;
      do
      {
        v18 = &colorValuesData[4 * v11 * v8 + 4 * v16 * v13];
        v19 = *v18;
        v20 = 1;
        v21 = edgeSize & 0x7FFFFFFF;
        v22 = v17;
        v23 = *v18;
        do
        {
          if (v20 >= v7)
          {
            v24 = edgeSize - 1;
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
      v15 += 4 * (edgeSize * edgeSize);
    }

    while (v8 != v13);
    v26 = 0;
    v27 = colorValuesData;
    do
    {
      v28 = 0;
      v29 = v27;
      do
      {
        v30 = &colorValuesData[4 * v11 * v26 + 4 * v28];
        v31 = *v30;
        v32 = 1;
        v33 = edgeSize & 0x7FFFFFFF;
        v34 = v29;
        v35 = *v30;
        do
        {
          if (v32 >= v7)
          {
            v36 = edgeSize - 1;
          }

          else
          {
            v36 = v32;
          }

          v37 = vmlaq_f32(vmulq_n_f32(v35, v10), v31, v12);
          v31 = v35;
          v35 = v30[v36 * edgeSize];
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
    v39 = edgeSize * edgeSize;
    do
    {
      v40 = 0;
      do
      {
        v41 = 0;
        v42 = &colorValuesData[4 * v38 * v13 + 4 * v40];
        v43 = *v42;
        v44 = 1;
        v45 = edgeSize & 0x7FFFFFFF;
        v46 = *v42;
        do
        {
          if (v44 >= v7)
          {
            v47 = edgeSize - 1;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    edgeSize = [v5 edgeSize];
    if (edgeSize == -[PXGColorLookupCube edgeSize](self, "edgeSize") && (v7 = [v5 length], v7 == -[PXGFloatValuesColorLookupCube length](self, "length")))
    {
      identifier = [v5 identifier];
      identifier2 = [(PXGFloatValuesColorLookupCube *)self identifier];
      if (identifier == identifier2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [identifier isEqualToString:identifier2];
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

- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)l usedFormat:(int64_t *)format error:(id *)error
{
  result = [(PXGFloatValuesColorLookupCube *)self initWithContentsOfURL:l format:1 error:error];
  if (format)
  {
    *format = 1;
  }

  return result;
}

- (PXGFloatValuesColorLookupCube)initWithContentsOfURL:(id)l format:(int64_t)format error:(id *)error
{
  v8 = MEMORY[0x277CBEA90];
  lCopy = l;
  v10 = [[v8 alloc] initWithContentsOfURL:lCopy options:1 error:error];

  if (v10)
  {
    v11 = [(PXGFloatValuesColorLookupCube *)self initWithData:v10 format:format error:error];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (PXGFloatValuesColorLookupCube)initWithData:(id)data format:(int64_t)format error:(id *)error
{
  dataCopy = data;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1317;
  v21 = __Block_byref_object_dispose__1318;
  v22 = 0;
  if (format)
  {
    if (format != 1)
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
    format = v9;
    formatCopy = format;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__PXGFloatValuesColorLookupCube_initWithData_format_error___block_invoke_2;
    v13[3] = &unk_2782A7E30;
    v13[4] = &v17;
    if (([v10 _parseLUTData:dataCopy resultHandler:v14 errorHandler:v13] & 1) == 0)
    {

      format = 0;
    }

    self = formatCopy;
  }

  self = format;
LABEL_7:
  if (error)
  {
    *error = v18[5];
  }

  selfCopy = self;
  _Block_object_dispose(&v17, 8);

  return selfCopy;
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

- (PXGFloatValuesColorLookupCube)initWithEdgeSize:(int64_t)size colorValuesData:(const float *)data length:(unint64_t)length identifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = PXGFloatValuesColorLookupCube;
  v12 = [(PXGFloatValuesColorLookupCube *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(PXGColorLookupCube *)v12 setEdgeSize:size];
    v14 = malloc_type_malloc(4 * length, 0x8FDE55B5uLL);
    v13->_colorValuesData = v14;
    memcpy(v14, data, 4 * length);
    v13->_length = length;
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (PXGFloatValuesColorLookupCube)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGColorLookupCube.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXGFloatValuesColorLookupCube init]"}];

  abort();
}

+ (BOOL)_parseLUTData:(id)data resultHandler:(id)handler errorHandler:(id)errorHandler
{
  dataCopy = data;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
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
  v9 = errorHandlerCopy;
  v53 = v9;
  v10 = MEMORY[0x21CEE40A0](v52);
  v11 = v10;
  if (dataCopy)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
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

            newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
            [v13 scanUpToCharactersFromSet:newlineCharacterSet intoString:0];
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
                handlerCopy[2](handlerCopy, v41, v35, v51, v46, v34);
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