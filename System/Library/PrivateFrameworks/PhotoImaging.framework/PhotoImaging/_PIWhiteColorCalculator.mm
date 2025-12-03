@interface _PIWhiteColorCalculator
- ($78DA7BC45C8C992E2555122C1BE30523)_computeWhitePointColorWithGrayEdgesBuffer:(SEL)buffer grayWorldBuffer:(id)worldBuffer greenChannelPercentage:(id)percentage RAWCameraSpaceProperties:(double)properties;
- ($78DA7BC45C8C992E2555122C1BE30523)_whitePointColorFromGrayEdgesImage:(SEL)image grayWorldImage:(id)worldImage greenChannelPercentage:(id)percentage RAWCameraSpaceProperties:(double)properties;
- (_PIWhiteColorCalculator)initWithComposition:(id)composition useSushi:(BOOL)sushi;
- (id)_brightnessMultiplierFromImageProperties:(id)properties;
- (void)_computeGreenPercentage:(id)percentage;
- (void)_configureRequest:(id)request;
- (void)_submitGERenderRequest:(id)request;
- (void)_submitGWRenderRequest:(id)request;
- (void)calculateColorWithProperties:(id)properties completion:(id)completion;
- (void)readBufferFromImage:(id)image withRGBAfBufferBlock:(id)block;
@end

@implementation _PIWhiteColorCalculator

- (void)_submitGERenderRequest:(id)request
{
  requestCopy = request;
  v5 = [objc_alloc(MEMORY[0x1E69B39A0]) initWithComposition:self->_composition];
  [v5 setName:@"PIWhiteColorCalculator-grayEdges"];
  [(_PIWhiteColorCalculator *)self _configureRequest:v5];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_useSushi)
  {
    v7 = +[PIPipelineFilters rawSourceFilterIncludingOrientation];
    [v6 addObject:v7];

    +[PIPipelineFilters sushiLevel1Filter];
  }

  else
  {
    [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/Master/Source"];
  }
  v8 = ;
  [v6 addObject:v8];

  v9 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_261_7592];
  [v6 addObject:v9];

  [v5 setPipelineFilters:v6];
  bufferRenderClient = self->_bufferRenderClient;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50___PIWhiteColorCalculator__submitGERenderRequest___block_invoke_2;
  v12[3] = &unk_1E82ACA08;
  v13 = requestCopy;
  v11 = requestCopy;
  [(NUBufferRenderClient *)bufferRenderClient setCompletionBlock:v12];
  [(NUBufferRenderClient *)self->_bufferRenderClient submitRequest:v5];
  [(NUBufferRenderClient *)self->_bufferRenderClient setCompletionBlock:&__block_literal_global_270];
}

- (void)_submitGWRenderRequest:(id)request
{
  requestCopy = request;
  v5 = [objc_alloc(MEMORY[0x1E69B39A0]) initWithComposition:self->_composition];
  [v5 setName:@"PIWhiteColorCalculator-grayWorld"];
  [(_PIWhiteColorCalculator *)self _configureRequest:v5];
  bufferRenderClient = self->_bufferRenderClient;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50___PIWhiteColorCalculator__submitGWRenderRequest___block_invoke;
  v8[3] = &unk_1E82ACA08;
  v9 = requestCopy;
  v7 = requestCopy;
  [(NUBufferRenderClient *)bufferRenderClient setCompletionBlock:v8];
  [(NUBufferRenderClient *)self->_bufferRenderClient submitRequest:v5];
  [(NUBufferRenderClient *)self->_bufferRenderClient setCompletionBlock:&__block_literal_global_7606];
}

- (void)_computeGreenPercentage:(id)percentage
{
  percentageCopy = percentage;
  v5 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithComposition:self->_composition dataExtractor:@"CIAreaAverage" options:0];
  [v5 setName:@"PIWhiteColorCalculator-computeGreenPercentage"];
  [(_PIWhiteColorCalculator *)self _configureRequest:v5];
  imageDataClient = self->_imageDataClient;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51___PIWhiteColorCalculator__computeGreenPercentage___block_invoke;
  v8[3] = &unk_1E82ACA08;
  v9 = percentageCopy;
  v7 = percentageCopy;
  [(NUImageDataClient *)imageDataClient submitRequest:v5 completion:v8];
}

- (void)_configureRequest:(id)request
{
  requestCopy = request;
  rGBAh = [MEMORY[0x1E69B3BF0] RGBAh];
  [requestCopy setPixelFormat:rGBAh];

  genericRGBLinearColorSpace = [MEMORY[0x1E69B3A10] genericRGBLinearColorSpace];
  [requestCopy setColorSpace:genericRGBLinearColorSpace];

  v6 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
  [requestCopy setScalePolicy:v6];

  [requestCopy setSampleMode:3];
  [requestCopy setTileSize:{0x40000, 0x40000}];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_useSushi)
  {
    v8 = +[PIPipelineFilters rawSourceFilterIncludingOrientation];
    [v7 addObject:v8];

    +[PIPipelineFilters sushiLevel1Filter];
  }

  else
  {
    [MEMORY[0x1E69B3C30] stopAtTagFilter:@"/Master/Source"];
  }
  v9 = ;
  [v7 addObject:v9];

  [requestCopy setPipelineFilters:v7];
}

- ($78DA7BC45C8C992E2555122C1BE30523)_whitePointColorFromGrayEdgesImage:(SEL)image grayWorldImage:(id)worldImage greenChannelPercentage:(id)percentage RAWCameraSpaceProperties:(double)properties
{
  worldImageCopy = worldImage;
  percentageCopy = percentage;
  v14 = a7;
  v26 = 0;
  v27 = &v26;
  v28 = 0x6810000000;
  v29 = &unk_1C788B126;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __125___PIWhiteColorCalculator__whitePointColorFromGrayEdgesImage_grayWorldImage_greenChannelPercentage_RAWCameraSpaceProperties___block_invoke;
  v21[3] = &unk_1E82AA568;
  v21[4] = self;
  v15 = percentageCopy;
  v22 = v15;
  v24 = &v26;
  propertiesCopy = properties;
  v16 = v14;
  v23 = v16;
  [(_PIWhiteColorCalculator *)self readBufferFromImage:worldImageCopy withRGBAfBufferBlock:v21];
  v17 = v27;
  v18 = *(v27 + 5);
  *retstr->var1.var0 = *(v27 + 4);
  *&retstr->var1.var0[2] = v18;
  *&retstr->var2 = v17[12];
  v19 = *(v17 + 3);
  *retstr->var0.var0 = *(v17 + 2);
  *&retstr->var0.var0[2] = v19;

  _Block_object_dispose(&v26, 8);
  return result;
}

- ($78DA7BC45C8C992E2555122C1BE30523)_computeWhitePointColorWithGrayEdgesBuffer:(SEL)buffer grayWorldBuffer:(id)worldBuffer greenChannelPercentage:(id)percentage RAWCameraSpaceProperties:(double)properties
{
  v109 = *MEMORY[0x1E69E9840];
  worldBufferCopy = worldBuffer;
  percentageCopy = percentage;
  v13 = worldBufferCopy;
  v14 = percentageCopy;
  v15 = a7;
  *retstr->var0.var0 = 0u;
  *&retstr->var0.var0[2] = 0u;
  v16 = v15 == 0;
  *retstr->var1.var0 = 0u;
  *&retstr->var1.var0[2] = 0u;
  retstr->var2 = 0.0;
  rowBytes = [v13 rowBytes];
  rowBytes2 = [v14 rowBytes];
  v91 = v15;
  if (v15)
  {
    [v15 whiteValue];
    v20 = v19;
    [v15 whiteFactor];
    v22 = 65535.0;
    if (v20 != 0.0 && v21 != 0.0)
    {
      v22 = 65535.0 / (v20 * v21);
    }

    v23 = 0.800000012 / v22;
  }

  else
  {
    v23 = 0.98039;
  }

  v24 = v14;
  bytes = [v14 bytes];
  bytes2 = [v13 bytes];
  v27 = [v13 size];
  v29 = v28;
  v89 = v24;
  [v24 size];
  v30 = NUPixelSizeEqualToSize();
  v31 = MEMORY[0x1E69B3D78];
  v32 = *MEMORY[0x1E69B3D78];
  if (v30)
  {
    v87 = v13;
    if (v32 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v33 = flt_1C7845708[v16];
    v34 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v81 = v34;
      v82 = NSStringFromNUPixelSize();
      *buf = 138413314;
      v83 = 0x3FA99999A0000000;
      *v93 = v82;
      if (!v91)
      {
        v83 = 0x3FA4141420000000;
      }

      *&v93[8] = 2048;
      v94 = rowBytes;
      v95 = 2048;
      v96 = v33;
      v97 = 2048;
      v98 = v23;
      v99 = 2048;
      v100 = *&v83;
      _os_log_debug_impl(&dword_1C7694000, v81, OS_LOG_TYPE_DEBUG, "Buffer size is %@, bytes per row is %ld, dark_thr=%f, sat_thr=%f, noise_thr=%f", buf, 0x34u);
    }

    if (v29 < 1)
    {
      v36 = 0;
      v35 = 0;
      v37 = 0uLL;
      v41 = 0.0;
      v40 = 0.0;
      v39 = 0.0;
      v38 = 0.0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = 0uLL;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      do
      {
        if (v27 >= 1)
        {
          v42 = 0;
          v43 = v27 + 1;
          do
          {
            v45 = *(bytes + v42);
            v44 = *(bytes + v42 + 4);
            v46 = *(bytes + v42 + 8);
            v49 = (((v44 + v45) + v46) / 3.0) > v33 && v44 < v23 && v45 < v23 && v46 < v23;
            if (v49 && ((v50 = v44, v51 = v45, v52 = v46, v50 * properties < v51) || v50 * properties < v52))
            {
              v53 = 0;
              v40 = v40 + v51;
              v39 = v39 + v50;
              v38 = v38 + v52;
              ++v35;
            }

            else
            {
              v53 = 1;
            }

            v54 = *(bytes2 + v42);
            v55 = *(bytes2 + v42 + 8);
            v56 = (vaddv_f32(v54) + v55) / 3.0;
            if (v56 > flt_1C7845720[v91 == 0] && v56 < (v23 * v23))
            {
              if (fmax(v54.f32[0], v55) <= v54.f32[1] * properties)
              {
                v53 = 1;
              }

              if ((v53 & 1) == 0)
              {
                v37 = vaddq_f64(v37, vcvtq_f64_f32(vsqrt_f32(vabs_f32(v54))));
                v41 = v41 + sqrtf(fabsf(v55));
                ++v36;
              }
            }

            --v43;
            v42 += 16;
          }

          while (v43 > 1);
        }

        bytes += rowBytes2;
        bytes2 += rowBytes;
      }

      while (v29-- > 1);
    }

    v86 = v37;
    v62 = v31;
    if (*v31 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v59 = v89;
    v60 = v91;
    v63 = MEMORY[0x1E69B3D80];
    v64 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v93 = v35;
      *&v93[4] = 1024;
      *&v93[6] = v36;
      _os_log_debug_impl(&dword_1C7694000, v64, OS_LOG_TYPE_DEBUG, "all done summing, np_gw is %d, np_ge is %d", buf, 0xEu);
    }

    v65 = 1.0;
    v66 = 1.0;
    v67 = 1.0;
    v68 = 1.0;
    if (v35 >= 1)
    {
      v66 = v40 / v35;
      v67 = v39 / v35;
      v68 = v38 / v35;
    }

    v69 = v66 + v67 + v68;
    v70 = v66 / v69;
    v71 = v67 / v69;
    v72 = v68 / v69;
    if (v36 < 1)
    {
      __asm { FMOV            V1.2D, #1.0 }
    }

    else
    {
      _Q1 = vdivq_f64(v86, vdupq_lane_s64(COERCE__INT64(v36), 0));
      v65 = v41 / v36;
    }

    v13 = v87;
    *&v77 = vaddvq_f64(_Q1) + v65;
    v78 = v65 / *&v77;
    v90 = vdivq_f64(_Q1, vdupq_lane_s64(v77, 0));
    *retstr->var0.var0 = v90;
    retstr->var0.var0[2] = v65 / *&v77;
    retstr->var0.var0[3] = 1.0;
    retstr->var1.var0[0] = v70;
    retstr->var1.var0[1] = v71;
    retstr->var1.var0[2] = v72;
    retstr->var1.var0[3] = 1.0;
    if (*v62 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v79 = *v63;
    if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
    {
      useSushi = self->_useSushi;
      *buf = 134220034;
      if (useSushi)
      {
        v85 = @"YES";
      }

      else
      {
        v85 = @"NO";
      }

      *v93 = v90.f64[0];
      *&v93[8] = 2048;
      *(buf | 0xE) = v90.f64[1];
      v95 = 2048;
      v96 = v78;
      v97 = 2048;
      v98 = 1.0;
      v99 = 2048;
      v100 = v70;
      v101 = 2048;
      v102 = v71;
      v103 = 2048;
      v104 = v72;
      v105 = 2048;
      v106 = 0x3FF0000000000000;
      v107 = 2112;
      v108 = v85;
      _os_log_debug_impl(&dword_1C7694000, v79, OS_LOG_TYPE_DEBUG, "wp_ge {%f, %f, %f, %f} wp_gw {%f, %f, %f, %f}, Sushi? %@", buf, 0x5Cu);
    }
  }

  else
  {
    if (v32 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v59 = v89;
    v60 = v91;
    v61 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *v93 = v13;
      *&v93[8] = 2114;
      v94 = v89;
      _os_log_impl(&dword_1C7694000, v61, OS_LOG_TYPE_INFO, "Buffer sizes are not the same: %{public}@ vs %{public}@", buf, 0x16u);
    }

    retstr->var2 = 0.0;
    *retstr->var1.var0 = 0u;
    *&retstr->var1.var0[2] = 0u;
    *retstr->var0.var0 = 0u;
    *&retstr->var0.var0[2] = 0u;
  }

  return result;
}

- (id)_brightnessMultiplierFromImageProperties:(id)properties
{
  v38 = *MEMORY[0x1E69E9840];
  metadata = [properties metadata];
  v5 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696D9B0]];

  v6 = flashFired(v5);
  v7 = apertureValue(v5);
  v8 = shutterSpeedValue(v5);
  v9 = isoValue(v5);
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0)
  {
    goto LABEL_15;
  }

  [v7 doubleValue];
  if (v12 <= 0.0)
  {
    goto LABEL_15;
  }

  if (self->_useSushi)
  {
    if ((v6 & 1) == 0)
    {
      v13 = MEMORY[0x1E696AD98];
      [v7 doubleValue];
      v15 = v14;
      [v7 doubleValue];
      v17 = v15 * v16;
      [v8 doubleValue];
      v19 = log2(v17 / v18);
      [v9 doubleValue];
      v21 = v19 - log2(v20 * 0.319999993);
      if (v21 < 0.0)
      {
        v21 = 0.0;
      }

      goto LABEL_24;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  if (v6)
  {
    goto LABEL_15;
  }

  v13 = MEMORY[0x1E696AD98];
  [v7 doubleValue];
  v26 = v25;
  [v7 doubleValue];
  v28 = v26 * v27;
  [v9 doubleValue];
  v30 = v29;
  [v8 doubleValue];
  v21 = v28 / (v30 * v31);
LABEL_24:
  v22 = [v13 numberWithDouble:v21];
LABEL_16:
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
  }

  v23 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
  {
    v32 = 138412802;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_debug_impl(&dword_1C7694000, v23, OS_LOG_TYPE_DEBUG, "aperture=%@, shutterSpeed=%@, iso=%@", &v32, 0x20u);
  }

  return v22;
}

- (void)calculateColorWithProperties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  completionCopy = completion;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__7505;
  v36[4] = __Block_byref_object_dispose__7506;
  v37 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__7505;
  v33[4] = __Block_byref_object_dispose__7506;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__7505;
  v31[4] = __Block_byref_object_dispose__7506;
  v32 = 0;
  v8 = [(_PIWhiteColorCalculator *)self _brightnessMultiplierFromImageProperties:propertiesCopy];
  [MEMORY[0x1E69B3C60] begin];
  if (v8)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke;
    v27[3] = &unk_1E82ABFE0;
    v29 = v36;
    v28 = v8;
    v30 = v35;
    [(_PIWhiteColorCalculator *)self _computeGreenPercentage:v27];
  }

  useSushi = self->_useSushi;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke_2;
  v26[3] = &unk_1E82AAF18;
  v26[4] = v33;
  v26[5] = v36;
  [(_PIWhiteColorCalculator *)self _submitGERenderRequest:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke_3;
  v25[3] = &unk_1E82AAF18;
  v25[4] = v31;
  v25[5] = v36;
  [(_PIWhiteColorCalculator *)self _submitGWRenderRequest:v25];
  v10 = MEMORY[0x1E69B3C60];
  q = self->_q;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke_4;
  v15[3] = &unk_1E82AA540;
  v20 = v36;
  v12 = v8;
  v16 = v12;
  v21 = v35;
  v24 = useSushi;
  v13 = propertiesCopy;
  v17 = v13;
  selfCopy = self;
  v22 = v33;
  v23 = v31;
  v14 = completionCopy;
  v19 = v14;
  [v10 commitAndNotifyOnQueue:q withBlock:v15];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
}

- (void)readBufferFromImage:(id)image withRGBAfBufferBlock:(id)block
{
  blockCopy = block;
  imageCopy = image;
  validRegion = [imageCopy validRegion];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___PIWhiteColorCalculator_readBufferFromImage_withRGBAfBufferBlock___block_invoke;
  v9[3] = &unk_1E82AA518;
  v10 = blockCopy;
  v8 = blockCopy;
  [imageCopy readBufferRegion:validRegion withBlock:v9];
}

- (_PIWhiteColorCalculator)initWithComposition:(id)composition useSushi:(BOOL)sushi
{
  compositionCopy = composition;
  v17.receiver = self;
  v17.super_class = _PIWhiteColorCalculator;
  v7 = [(_PIWhiteColorCalculator *)&v17 init];
  composition = v7->_composition;
  v7->_composition = compositionCopy;
  v9 = compositionCopy;

  v7->_useSushi = sushi;
  v10 = dispatch_queue_create("PIWhiteBalanceAutoCalculator", 0);
  q = v7->_q;
  v7->_q = v10;

  v12 = [objc_alloc(MEMORY[0x1E69B3998]) initWithName:@"PIWhiteBalanceAutoCalculator" responseQueue:v7->_q];
  bufferRenderClient = v7->_bufferRenderClient;
  v7->_bufferRenderClient = v12;

  v14 = [objc_alloc(MEMORY[0x1E69B3AE0]) initWithName:@"PIWhiteBalanceAutoCalculator" responseQueue:v7->_q];
  imageDataClient = v7->_imageDataClient;
  v7->_imageDataClient = v14;

  return v7;
}

@end