@interface CRMetalPolygonRectifier
- (CRMetalPolygonRectifier)initWithDevice:(id)a3 sourceImage:(id)a4;
- (CRMetalPolygonRectifier)initWithDevice:(id)a3 sourceImage:(id)a4 regionOfInterest:(CGRect)a5;
- (id)imageByRectifyingPolygon:(id)a3 imageHeight:(unint64_t)a4;
- (void)_createRenderTargetWithSize:(CGSize)a3;
- (void)_createTextureForInputCRImage:(id)a3;
- (void)_setSourceImage:(id)a3;
- (void)rectifyPolygonAsync:(id)a3 imageHeight:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation CRMetalPolygonRectifier

- (CRMetalPolygonRectifier)initWithDevice:(id)a3 sourceImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CRMetalPolygonRectifier initWithDevice:sourceImage:regionOfInterest:](self, "initWithDevice:sourceImage:regionOfInterest:", v6, v7, 0.0, 0.0, [v7 width], objc_msgSend(v7, "height"));

  return v8;
}

- (CRMetalPolygonRectifier)initWithDevice:(id)a3 sourceImage:(id)a4 regionOfInterest:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v58.receiver = self;
  v58.super_class = CRMetalPolygonRectifier;
  v13 = [(CRMetalPolygonRectifier *)&v58 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = MTLCreateSystemDefaultDevice();
  }

  v15 = *(v13 + 1);
  *(v13 + 1) = v14;

  if (!v12)
  {
LABEL_17:
    v51 = 0;
    goto LABEL_18;
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  *(v13 + 72) = NSIntegralRect(v59);
  [v12 size];
  v17 = v16;
  [v12 size];
  v62.size.height = v18;
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v62.size.width = v17;
  v61 = NSIntersectionRect(v60, v62);
  *(v13 + 72) = v61;
  if (v61.size.width == 0.0 || v61.size.height == 0.0)
  {
    v22 = CROSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_ERROR, "Cannot create rectifier with zero-sized region of interest!", buf, 2u);
    }

    goto LABEL_16;
  }

  v19 = dispatch_group_create();
  v20 = *(v13 + 14);
  *(v13 + 14) = v19;

  v21 = qos_class_self();
  v22 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v21, 0);
  v23 = dispatch_queue_create("com.apple.CoreRecognition.metalRectifierTextureQueue", v22);
  v24 = *(v13 + 15);
  *(v13 + 15) = v23;

  [v13 _setSourceImage:v12];
  v25 = *(v13 + 1);
  v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v56 = 0;
  v27 = [v25 newDefaultLibraryWithBundle:v26 error:&v56];
  v28 = v56;

  if (!v27)
  {

LABEL_16:
    goto LABEL_17;
  }

  v54 = [v27 newFunctionWithName:@"vertexShader"];
  v53 = [v27 newFunctionWithName:@"samplingShader"];
  v29 = objc_alloc_init(MEMORY[0x1E6974148]);
  [v29 setLabel:@"Texturing Pipeline"];
  [v29 setVertexFunction:v54];
  [v29 setFragmentFunction:v53];
  v30 = *(v13 + 3);
  v31 = [v29 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript:0];
  [v32 setPixelFormat:v30];

  v33 = *(v13 + 1);
  v55 = v28;
  v34 = [v33 newRenderPipelineStateWithDescriptor:v29 error:&v55];
  v35 = v55;

  v36 = *(v13 + 4);
  *(v13 + 4) = v34;

  if (!*(v13 + 4))
  {

    goto LABEL_16;
  }

  v37 = objc_alloc_init(MEMORY[0x1E6974128]);
  v38 = *(v13 + 6);
  *(v13 + 6) = v37;

  v39 = [*(v13 + 6) colorAttachments];
  v40 = [v39 objectAtIndexedSubscript:0];
  [v40 setLoadAction:0];

  v41 = [*(v13 + 6) colorAttachments];
  v42 = [v41 objectAtIndexedSubscript:0];
  [v42 setClearColor:{0.5, 0.5, 0.5, 1.0}];

  v43 = [*(v13 + 6) colorAttachments];
  v44 = [v43 objectAtIndexedSubscript:0];
  [v44 setStoreAction:1];

  v45 = [*(v13 + 1) newCommandQueue];
  v46 = *(v13 + 5);
  *(v13 + 5) = v45;

  v47 = dispatch_semaphore_create(1);
  v48 = *(v13 + 19);
  *(v13 + 19) = v47;

  v49 = *(v13 + 16);
  *(v13 + 16) = 0;

  v50 = *(v13 + 18);
  *(v13 + 136) = 0u;

LABEL_11:
  v51 = v13;
LABEL_18:

  return v51;
}

- (void)_setSourceImage:(id)a3
{
  v4 = a3;
  [v4 size];
  self->_imageSize.width = v5;
  self->_imageSize.height = v6;
  self->_ioColorSpace = [v4 colorSpace];
  if (![v4 colorSpace])
  {
    v7 = 13;
    goto LABEL_5;
  }

  if ([v4 colorSpace] == 1)
  {
    v7 = 73;
LABEL_5:
    self->_pixelFormat = v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && CVPixelBufferGetIOSurface([v4 pixelBuffer]))
  {
    v8 = [v4 width];
    v9 = [v4 height];
    self->_regionOfInterest.origin.x = 0.0;
    self->_regionOfInterest.origin.y = 0.0;
    self->_regionOfInterest.size.width = v8;
    self->_regionOfInterest.size.height = v9;
  }

  dispatch_group_enter(self->_textureCreationGroup);
  textureCreationQueue = self->_textureCreationQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__CRMetalPolygonRectifier__setSourceImage___block_invoke;
  v12[3] = &unk_1E7BC2CC8;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_async(textureCreationQueue, v12);
}

void __43__CRMetalPolygonRectifier__setSourceImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createTextureForInputCRImage:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 112);

  dispatch_group_leave(v2);
}

- (void)_createTextureForInputCRImage:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v5 setPixelFormat:self->_pixelFormat];
  [v5 setAllowGPUOptimizedContents:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    IOSurface = CVPixelBufferGetIOSurface([v4 pixelBuffer]);
    v7 = IOSurface;
    if (IOSurface)
    {
      [v5 setWidth:IOSurfaceGetWidth(IOSurface)];
      [v5 setHeight:IOSurfaceGetHeight(v7)];
      v8 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5 iosurface:v7 plane:0];
      texture = self->_texture;
      self->_texture = v8;
    }

    else
    {
      [v5 setWidth:self->_regionOfInterest.size.width];
      [v5 setHeight:self->_regionOfInterest.size.height];
      v17 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5];
      v18 = self->_texture;
      self->_texture = v17;

      v19 = [v5 width];
      v20 = [v5 height];
      CVPixelBufferLockBaseAddress([v4 pixelBuffer], 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress([v4 pixelBuffer]);
      BytesPerRow = CVPixelBufferGetBytesPerRow([v4 pixelBuffer]);
      CVPixelBufferGetPlaneCount([v4 pixelBuffer]);
      v23 = self->_texture;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = v19;
      v32 = v20;
      v33 = 1;
      [(MTLTexture *)v23 replaceRegion:&v28 mipmapLevel:0 withBytes:BaseAddress bytesPerRow:BytesPerRow];
      CVPixelBufferUnlockBaseAddress([v4 pixelBuffer], 1uLL);
    }
  }

  else
  {
    [v5 setWidth:self->_regionOfInterest.size.width];
    [v5 setHeight:self->_regionOfInterest.size.height];
    v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5];
    v11 = self->_texture;
    self->_texture = v10;

    v12 = [v5 width];
    v13 = [v5 height];
    v14 = self->_texture;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v12;
    v32 = v13;
    v33 = 1;
    if (v4)
    {
      [v4 vImage];
      v15 = v26;
      [v4 vImage];
      v16 = *(&v25 + 1);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
    }

    [(MTLTexture *)v14 replaceRegion:&v28 mipmapLevel:0 withBytes:v15 bytesPerRow:v16, v24, v25, v26, v27];
  }
}

- (void)_createRenderTargetWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v4 = a3.height;
  *self->_viewportSize = vmovn_s64(vcvtq_u64_f64(a3));
  v12 = objc_alloc_init(MEMORY[0x1E69741C0]);
  [v12 setTextureType:2];
  [v12 setPixelFormat:self->_pixelFormat];
  [v12 setWidth:width];
  [v12 setHeight:height];
  [v12 setUsage:0];
  [v12 setAllowGPUOptimizedContents:0];
  v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v12];
  renderDestination = self->_renderDestination;
  self->_renderDestination = v5;

  v7 = self->_renderDestination;
  v8 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setTexture:v7];
}

- (id)imageByRectifyingPolygon:(id)a3 imageHeight:(unint64_t)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v6 = a3;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_13);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CRMetalPolygonRectifier_imageByRectifyingPolygon_imageHeight___block_invoke_2;
  v11[3] = &unk_1E7BC2CF0;
  v12 = v7;
  v13 = &v14;
  v8 = v7;
  [(CRMetalPolygonRectifier *)self rectifyPolygonAsync:v6 imageHeight:a4 completionHandler:v11];

  dispatch_block_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __64__CRMetalPolygonRectifier_imageByRectifyingPolygon_imageHeight___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)rectifyPolygonAsync:(id)a3 imageHeight:(unint64_t)a4 completionHandler:(id)a5
{
  v92 = a3;
  v91 = a5;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v92 denormalizedPolyline];
  v10 = [v9 pointValues];

  v11 = [v10 count];
  v12 = v11 / 2;
  v13 = v11 / 2 - 1;
  if (v11 >= 4)
  {
    v14 = 0;
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = -1;
    do
    {
      v17 = [v10 objectAtIndexedSubscript:v14];
      [v7 addObject:v17];

      v18 = [v10 objectAtIndexedSubscript:{v16 + objc_msgSend(v10, "count")}];
      [v8 addObject:v18];

      ++v14;
      --v16;
    }

    while (v15 != v14);
  }

  v19 = [v10 objectAtIndexedSubscript:v13];
  [v7 addObject:v19];

  v20 = [v10 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - v12}];
  [v8 addObject:v20];

  v21 = [v7 count] - 1;
  v22 = malloc_type_malloc(96 * v21, 0x1000040451B5BE8uLL);
  v90 = 6 * v21;
  v89 = a4;
  v23 = a4 * -0.5;
  v94 = v23;
  v24 = vcvtd_n_f64_u64(a4, 1uLL);
  v93 = v24;
  v25 = v22 + 6;
  v26 = 0.0;
  v27 = 1;
  v28 = MEMORY[0x1E695F060];
  v29 = 0.0;
  while (v27 < [v7 count])
  {
    v30 = v27 - 1;
    v31 = [v7 objectAtIndexedSubscript:v30];
    [v31 pointValue];
    v101 = v33;
    v103 = v32;

    v34 = [v7 objectAtIndexedSubscript:++v30];
    [v34 pointValue];
    v99 = v36;
    v100 = v35;

    v37 = [v8 objectAtIndexedSubscript:--v30];
    [v37 pointValue];
    v97 = v39;
    v98 = v38;

    v40 = v30 + 1;
    v41 = [v8 objectAtIndexedSubscript:v30 + 1];
    [v41 pointValue];
    v95 = v43;
    v96 = v42;
    v44 = v103;
    v45 = v101;
    v46 = v100;
    v47 = v99;

    v48 = *v28;
    v49 = v28[1];
    v50 = *v28 > 0.0;
    if (v49 <= 0.0)
    {
      v50 = 0;
    }

    v51 = v100;
    v52 = v99;
    v53 = v103;
    v54 = v101;
    if (v50)
    {
      v53 = v103 * v48;
      v54 = v101 * v49;
      v51 = v100 * v48;
      v52 = v99 * v49;
    }

    v55.f64[0] = v98;
    v56 = v98;
    v57 = v97;
    v58.f64[0] = v96;
    if (v50)
    {
      v44 = v103 * v48;
      v45 = v101 * v49;
      v56 = v98 * v48;
      v57 = v97 * v49;
    }

    v59 = v96;
    v60 = v95;
    if (v50)
    {
      v46 = v100 * v48;
      v47 = v99 * v49;
      v59 = v96 * v48;
      v60 = v95 * v49;
    }

    v61 = v96;
    v62 = v95;
    v63 = v98;
    v64 = v97;
    if (v50)
    {
      v63 = v98 * v48;
      v64 = v97 * v49;
      v61 = v96 * v48;
      v62 = v95 * v49;
    }

    v65 = sqrt((v54 - v52) * (v54 - v52) + (v53 - v51) * (v53 - v51));
    v66 = sqrt((v45 - v57) * (v45 - v57) + (v44 - v56) * (v44 - v56));
    v67 = sqrt((v47 - v60) * (v47 - v60) + (v46 - v59) * (v46 - v59));
    v68 = sqrt((v64 - v62) * (v64 - v62) + (v63 - v61) * (v63 - v61));
    if (fmax(fmax(v65, v66), fmax(v67, v68)) >= 1.0 && fmin(fmin(v65, v66), fmin(v67, v68)) != 0.0)
    {
      *&v69 = (v65 + v68) * 0.5;
      v29 = v29 + *&v69;
      v70.f32[0] = v29;
      v69.f32[0] = v29 - *&v69;
      v58.f64[1] = v95;
      v70.f32[1] = v93;
      v69.f32[1] = v93;
      v71 = v66 + v67;
      imageSize = self->_imageSize;
      v73 = vcvt_f32_f64(vdivq_f64(v58, imageSize));
      v55.f64[1] = v97;
      v74.f64[0] = v100;
      v74.f64[1] = v99;
      v75.f64[0] = v103;
      v75.f64[1] = v101;
      v25[-6] = __PAIR64__(LODWORD(v94), v70.u32[0]);
      v25[-5] = v73;
      v26 = v26 + v71 * 0.5;
      *&v75.f64[0] = vcvt_f32_f64(vdivq_f64(v75, imageSize));
      v25[-4] = __PAIR64__(LODWORD(v94), v69.u32[0]);
      v25[-3] = vcvt_f32_f64(vdivq_f64(v55, imageSize));
      v25[-2] = v69;
      v25[-1] = *&v75.f64[0];
      *v25 = __PAIR64__(LODWORD(v94), v70.u32[0]);
      v25[1] = v73;
      v25[2] = v69;
      v25[3] = *&v75.f64[0];
      v25[4] = v70;
      v25[5] = vcvt_f32_f64(vdivq_f64(v74, imageSize));
    }

    v25 += 12;
    v27 = v40 + 1;
  }

  v76 = v89 / (v26 / v21);
  v77 = v29 * v76;
  if (v21)
  {
    if (v90 <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = 6 * v21;
    }

    v79 = &v22[1];
    do
    {
      v80 = *v79;
      v81 = v77 * -0.5 + COERCE_FLOAT(*(v79 - 1)) * v76;
      *(v79 - 2) = v81;
      *&v82 = (*&v80 - self->_regionOfInterest.origin.x) / (self->_regionOfInterest.size.width / self->_imageSize.width);
      *v79 = v82;
      *&v80 = (*(&v80 + 1) - self->_regionOfInterest.origin.y) / (self->_regionOfInterest.size.height / self->_imageSize.height);
      HIDWORD(v82) = v80;
      *v79 = v82;
      v79 += 4;
      --v78;
    }

    while (v78);
  }

  dispatch_semaphore_wait(self->_renderDestinationSem, 0xFFFFFFFFFFFFFFFFLL);
  [(CRMetalPolygonRectifier *)self _createRenderTargetWithSize:v77, v89];
  v83 = [(MTLDevice *)self->_device newBufferWithBytes:v22 length:96 * v21 options:0];
  free(v22);
  v84 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v84 setLabel:@"CRMetalPolygonRectifier"];
  v85 = [v84 renderCommandEncoderWithDescriptor:self->_renderPassDescriptor];
  [v85 setLabel:@"CRMetalPolygonRectifierOffscreenRenderEncoder"];
  dispatch_group_wait(self->_textureCreationGroup, 0xFFFFFFFFFFFFFFFFLL);
  [v85 pushDebugGroup:@"OffscreenRenderPass"];
  [v85 setCullMode:0];
  v86 = *self->_viewportSize;
  v106[0] = 0;
  v106[1] = 0;
  v87.i64[0] = v86;
  v87.i64[1] = HIDWORD(v86);
  v107 = vcvtq_f64_u64(v87);
  v108 = xmmword_1B42AF550;
  [v85 setViewport:v106];
  [v85 setRenderPipelineState:self->_pipelineState];
  [v85 setVertexBuffer:v83 offset:0 atIndex:0];
  [v85 setVertexBytes:self->_viewportSize length:8 atIndex:1];
  [v85 setFragmentTexture:self->_texture atIndex:0];
  [v85 drawPrimitives:3 vertexStart:0 vertexCount:v90];
  [v85 popDebugGroup];
  [v85 endEncoding];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __77__CRMetalPolygonRectifier_rectifyPolygonAsync_imageHeight_completionHandler___block_invoke;
  v104[3] = &unk_1E7BC2D18;
  v104[4] = self;
  v88 = v91;
  v105 = v88;
  [v84 addCompletedHandler:v104];
  [v84 commit];
}

void __77__CRMetalPolygonRectifier_rectifyPolygonAsync_imageHeight_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [CRImage alloc];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  if (!v4)
  {
    v4 = *(v3 + 128);
  }

  v8 = [(CRImage *)v2 initWithMTLTexture:v4 toColorSpace:*(v3 + 16)];
  v5 = dispatch_semaphore_signal(*(*(a1 + 32) + 152));
  CRLogger = CRLogger::getCRLogger(v5);
  if (*CRLogger == 1 && (CRLogger[8] & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/rectified_%d.png", rand()];
    [(CRImage *)v8 writeToFile:v7];
  }

  (*(*(a1 + 40) + 16))();
}

@end