@interface CMIVideoDeghostingRepairV1
- (CMIVideoDeghostingRepairV1)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5;
- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4;
- (int)_compileShaders;
- (int)_copyImageTileFromPixelBuffer:(__CVBuffer *)a3 mergeWithMask:(id)a4 outputTilePixelBuffer:(__CVBuffer *)a5 commandBuffer:(id)a6;
- (int)_copyImageTileFromPixelBuffer:(__CVBuffer *)a3 outputImageTileTexture:(id)a4 commandBuffer:(id)a5;
- (int)_copyMaskTileFromPixelBuffer:(__CVBuffer *)a3 outputMaskTileTexture:(id)a4 commandBuffer:(id)a5;
- (int)_dilateMask:(id)a3 outputDilatedMask:(id)a4 commandBuffer:(id)a5;
- (int)_featherMask:(id)a3 outputFeatheredMask:(id)a4 commandBuffer:(id)a5;
- (int)_generateMaskTile:(id)a3 commandBuffer:(id)a4 circleParams:(RepairCircleParams)a5;
- (int)_pasteRepairedTile:(__CVBuffer *)a3 inputTileTexture:(id)a4 blendingMask:(id)a5 outputPixelBuffer:(__CVBuffer *)a6 commandBuffer:(id)a7;
- (int)_repair:(__CVBuffer *)a3 ghostROI:(CGRect)a4 inputROI:;
- (int)process;
- (int)purgeResources;
- (int)setup;
- (void)_clampGhostROI:(CGRect *)a3;
- (void)dealloc;
@end

@implementation CMIVideoDeghostingRepairV1

- (CMIVideoDeghostingRepairV1)initWithMetalContext:(id)a3 imageDimensions:(id)a4 tuningParameters:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    sub_20184(self);
LABEL_8:
    v10 = 0;
    goto LABEL_5;
  }

  if (!v8)
  {
    sub_200F4(self);
    goto LABEL_8;
  }

  v14.receiver = self;
  v14.super_class = CMIVideoDeghostingRepairV1;
  v10 = [(CMIVideoDeghostingRepairV1 *)&v14 init];
  if (v10)
  {
    v11 = [v8 commandQueue];
    metalCommandQueue = v10->_metalCommandQueue;
    v10->_metalCommandQueue = v11;

    v10->_imageDimensions = a4;
    objc_storeStrong(&v10->_tuningParameters, a5);
  }

  else
  {
    sub_2007C();
  }

LABEL_5:

  return v10;
}

- (int)setup
{
  v64[0] = kCVPixelBufferMetalCompatibilityKey;
  v64[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v65[0] = &__kCFBooleanTrue;
  v65[1] = &__kCFBooleanTrue;
  v64[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v65[2] = &__NSDictionary0__struct;
  v3 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];
  v4 = +[CMInferenceUtils sharedInstance];
  v5 = [(NSDictionary *)self->_tuningParameters objectForKeyedSubscript:@"NetworkName"];
  v6 = [v4 getNetworkPath:v5 isE5:0];

  if (!v6 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 fileExistsAtPath:v6], v7, !v8))
  {
    v9 = 0;
LABEL_29:
    plan = 0;
    v15 = 0;
LABEL_36:
    [(CMIVideoDeghostingRepairV1 *)self purgeResources];
    v60 = 1;
    goto LABEL_22;
  }

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v9)
  {
    sub_208E4();
    goto LABEL_29;
  }

  v10 = [[FigMetalContext alloc] initWithbundle:v9 andOptionalCommandQueue:self->_metalCommandQueue];
  metalContext = self->_metalContext;
  self->_metalContext = v10;

  if (!self->_metalContext)
  {
    sub_20890();
    goto LABEL_29;
  }

  v12 = [FigMetalAllocator alloc];
  v13 = [(FigMetalContext *)self->_metalContext device];
  v14 = [v12 initWithDevice:v13 allocatorType:3];
  [(FigMetalContext *)self->_metalContext setAllocator:v14];

  v15 = [(FigMetalContext *)self->_metalContext allocator];

  if (!v15)
  {
    sub_2083C();
LABEL_35:
    plan = 0;
    goto LABEL_36;
  }

  if (!self->_metalCommandQueue)
  {
    v16 = [(FigMetalContext *)self->_metalContext commandQueue];
    metalCommandQueue = self->_metalCommandQueue;
    self->_metalCommandQueue = v16;

    if (!self->_metalCommandQueue)
    {
      sub_207E8();
      goto LABEL_29;
    }
  }

  if ([(CMIVideoDeghostingRepairV1 *)self _compileShaders])
  {
    sub_20214();
    goto LABEL_29;
  }

  v62 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v63 = &off_35988;
  v15 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v18 = [(FigMetalContext *)self->_metalContext device];
  v19 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v15, v18, 0, &self->_cvMetalTextureCacheRef);

  if (v19)
  {
    sub_20268();
    goto LABEL_35;
  }

  self->_espressoEngine = 10006;
  context = espresso_create_context();
  self->_espressoContext = context;
  if (!context)
  {
    sub_20794();
    goto LABEL_35;
  }

  plan = espresso_create_plan();
  self->_espressoPlan = plan;
  if (!plan)
  {
    sub_20740();
    goto LABEL_36;
  }

  [v6 UTF8String];
  if (espresso_plan_add_network())
  {
    sub_202BC();
    goto LABEL_35;
  }

  espressoPlan = self->_espressoPlan;
  if (espresso_plan_build())
  {
    sub_20310();
    goto LABEL_35;
  }

  *self->_anon_24c = 0x9000900800080;
  *&self->_anon_24c[8] = 327685;
  FigGetCFPreferenceDoubleWithDefault();
  *&v23 = v23;
  self->_blendingStrength = *&v23;
  v24 = [(FigMetalContext *)self->_metalContext allocator];
  plan = [v24 newTextureDescriptor];

  if (!plan)
  {
    sub_2069C();
    goto LABEL_36;
  }

  v25 = [plan desc];
  [v25 setCompressionMode:2];

  v26 = [plan desc];
  [v26 setCompressionFootprint:0];

  v27 = [plan desc];
  [v27 setUsage:7];

  v28 = [plan desc];
  [v28 setPixelFormat:25];

  v29 = *self->_anon_24c;
  v30 = [plan desc];
  [v30 setWidth:v29];

  v31 = 3 * *&self->_anon_24c[2];
  v32 = [plan desc];
  [v32 setHeight:v31];

  [plan setLabel:0];
  v33 = [(FigMetalContext *)self->_metalContext allocator];
  v34 = [v33 newTextureWithDescriptor:plan];
  tileInputImageTexture = self->_tileInputImageTexture;
  self->_tileInputImageTexture = v34;

  if (!self->_tileInputImageTexture)
  {
    sub_205F8();
    goto LABEL_36;
  }

  v36 = [plan desc];
  [v36 setPixelFormat:25];

  v37 = *self->_anon_24c + 1;
  v38 = [plan desc];
  [v38 setWidth:*&v37 & 0x1FFFELL];

  v39 = *&self->_anon_24c[2] + 1;
  v40 = [plan desc];
  [v40 setHeight:*&v39 & 0x1FFFELL];

  [plan setLabel:0];
  v41 = [(FigMetalContext *)self->_metalContext allocator];
  v42 = [v41 newTextureWithDescriptor:plan];
  tileInputMaskTexture = self->_tileInputMaskTexture;
  self->_tileInputMaskTexture = v42;

  if (!self->_tileInputImageTexture)
  {
    sub_20554();
    goto LABEL_36;
  }

  v44 = [plan desc];
  [v44 setPixelFormat:25];

  v45 = *self->_anon_24c + 1;
  v46 = [plan desc];
  [v46 setWidth:*&v45 & 0x1FFFELL];

  v47 = *&self->_anon_24c[2] + 1;
  v48 = [plan desc];
  [v48 setHeight:*&v47 & 0x1FFFELL];

  [plan setLabel:0];
  v49 = [(FigMetalContext *)self->_metalContext allocator];
  v50 = [v49 newTextureWithDescriptor:plan];
  tileDilatedMaskTexture = self->_tileDilatedMaskTexture;
  self->_tileDilatedMaskTexture = v50;

  if (!self->_tileDilatedMaskTexture)
  {
    sub_204B0();
    goto LABEL_36;
  }

  v52 = [plan desc];
  [v52 setPixelFormat:25];

  v53 = *self->_anon_24c + 1;
  v54 = [plan desc];
  [v54 setWidth:*&v53 & 0x1FFFELL];

  v55 = *&self->_anon_24c[2] + 1;
  v56 = [plan desc];
  [v56 setHeight:*&v55 & 0x1FFFELL];

  [plan setLabel:0];
  v57 = [(FigMetalContext *)self->_metalContext allocator];
  v58 = [v57 newTextureWithDescriptor:plan];
  tileBlendingMaskTexture = self->_tileBlendingMaskTexture;
  self->_tileBlendingMaskTexture = v58;

  if (!self->_tileBlendingMaskTexture)
  {
    sub_2040C();
    goto LABEL_36;
  }

  if (CVPixelBufferCreate(kCFAllocatorDefault, *self->_anon_24c, 4 * *&self->_anon_24c[2], 0x4C303068u, v3, &self->_tileInputPixelBuffer))
  {
    sub_20364();
    goto LABEL_36;
  }

  if (CVPixelBufferCreate(kCFAllocatorDefault, *self->_anon_24c, 3 * *&self->_anon_24c[2], 0x4C303068u, v3, &self->_tileOutputPixelBuffer))
  {
    sub_203B8();
    goto LABEL_36;
  }

  v60 = 0;
LABEL_22:

  return v60;
}

- (void)dealloc
{
  [(CMIVideoDeghostingRepairV1 *)self finishProcessing];
  [(CMIVideoDeghostingRepairV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingRepairV1;
  [(CMIVideoDeghostingRepairV1 *)&v3 dealloc];
}

- (int)purgeResources
{
  tileInputPixelBuffer = self->_tileInputPixelBuffer;
  if (tileInputPixelBuffer)
  {
    CFRelease(tileInputPixelBuffer);
    self->_tileInputPixelBuffer = 0;
  }

  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  if (tileOutputPixelBuffer)
  {
    CFRelease(tileOutputPixelBuffer);
    self->_tileOutputPixelBuffer = 0;
  }

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  if (self->_espressoInputImageBuffer.data)
  {
    plan = self->_espressoNetwork.plan;
    v6 = *&self->_espressoNetwork.network_index;
    if (espresso_network_unbind_buffer())
    {
      sub_20938();
LABEL_22:
      LODWORD(cvMetalTextureCacheRef) = 2;
      return cvMetalTextureCacheRef;
    }
  }

  if (self->_espressoOutputBuffer.data)
  {
    v7 = self->_espressoNetwork.plan;
    v8 = *&self->_espressoNetwork.network_index;
    if (espresso_network_unbind_buffer())
    {
      sub_209B0();
      goto LABEL_22;
    }
  }

  if (!self->_espressoPlan)
  {
    goto LABEL_12;
  }

  if (espresso_plan_destroy())
  {
    sub_20A28();
    goto LABEL_22;
  }

  self->_espressoPlan = 0;
LABEL_12:
  if (!self->_espressoContext)
  {
    goto LABEL_15;
  }

  if (espresso_context_destroy())
  {
    sub_20AA0();
    goto LABEL_22;
  }

  self->_espressoContext = 0;
LABEL_15:
  CVMetalTextureCacheFlush(self->_cvMetalTextureCacheRef, 0);
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CFRelease(cvMetalTextureCacheRef);
    LODWORD(cvMetalTextureCacheRef) = 0;
    self->_cvMetalTextureCacheRef = 0;
  }

  return cvMetalTextureCacheRef;
}

- (void)_clampGhostROI:(CGRect *)a3
{
  width = a3->size.width;
  if (width > 64.0)
  {
    a3->origin.x = (width + -64.0) * 0.5 + a3->origin.x;
    a3->size.width = 64.0;
  }

  height = a3->size.height;
  if (height > 64.0)
  {
    a3->origin.y = (height + -64.0) * 0.5 + a3->origin.y;
    a3->size.height = 64.0;
  }
}

- (int)_repair:(__CVBuffer *)a3 ghostROI:(CGRect)a4 inputROI:
{
  if (!a3)
  {
    sub_21160();
LABEL_29:
    v11 = 0;
    v38 = -12780;
    goto LABEL_23;
  }

  if (*self->_anon_24c)
  {
    _ZF = *&self->_anon_24c[2] == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    sub_210E8();
    goto LABEL_29;
  }

  v7 = v4.u16[3];
  if (v4.i16[2])
  {
    v8 = v4.u16[3] == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    sub_21070();
    goto LABEL_29;
  }

  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v44 = v4;
  if (CVPixelBufferGetWidth(a3) < v4.u16[0] + v4.u16[2])
  {
    sub_20FF8();
    goto LABEL_29;
  }

  if (CVPixelBufferGetHeight(a3) < v44.u16[1] + v7)
  {
    sub_20F80();
    goto LABEL_29;
  }

  *self->_inputROI = vand_s8(v44, -65538);
  v10 = [(FigMetalContext *)self->_metalContext commandQueue];
  v11 = [v10 commandBuffer];

  v12 = [(CMIVideoDeghostingRepairV1 *)self _copyImageTileFromPixelBuffer:a3 outputImageTileTexture:self->_tileInputImageTexture commandBuffer:v11];
  if (v12)
  {
    v38 = v12;
    sub_20B18();
    goto LABEL_23;
  }

  v13.f64[0] = width;
  v13.f64[1] = height;
  __asm { FMOV            V0.2D, #0.5 }

  v18 = vmulq_f64(v13, _Q0);
  v19 = v18.f64[0];
  v20.f64[0] = x;
  v20.f64[1] = y;
  v21 = vmovl_u16(*self->_inputROI).u64[0];
  v22.i64[0] = v21;
  v22.i64[1] = HIDWORD(v21);
  v23 = vcvt_f32_f64(vsubq_f64(vaddq_f64(v20, v18), vcvtq_f64_u64(v22)));
  v24 = [(CMIVideoDeghostingRepairV1 *)self _generateMaskTile:self->_tileInputMaskTexture commandBuffer:v11 circleParams:*&v23, COERCE_UNSIGNED_INT(v19 * v19)];
  if (v24)
  {
    v38 = v24;
    sub_20B98();
    goto LABEL_23;
  }

  LOWORD(v25) = *&self->_anon_24c[4];
  v26 = [(CMIVideoDeghostingRepairV1 *)self _generateMaskTile:self->_tileDilatedMaskTexture commandBuffer:v11 circleParams:*&v23, COERCE_UNSIGNED_INT((v19 + v25) * (v19 + v25))];
  if (v26)
  {
    v38 = v26;
    sub_20C18();
    goto LABEL_23;
  }

  v27 = [(CMIVideoDeghostingRepairV1 *)self _featherMask:self->_tileInputMaskTexture outputFeatheredMask:self->_tileBlendingMaskTexture commandBuffer:v11];
  if (v27)
  {
    v38 = v27;
    sub_20C98();
    goto LABEL_23;
  }

  v28 = [(CMIVideoDeghostingRepairV1 *)self _copyImageTileFromPixelBuffer:a3 mergeWithMask:self->_tileDilatedMaskTexture outputTilePixelBuffer:self->_tileInputPixelBuffer commandBuffer:v11];
  if (v28)
  {
    v38 = v28;
    sub_20D18();
    goto LABEL_23;
  }

  [v11 setLabel:@"VideoDeghostingV1Repair_Repair"];
  [v11 commit];
  [v11 waitUntilScheduled];
  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  plan = self->_espressoNetwork.plan;
  v31 = *&self->_espressoNetwork.network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    sub_20D98();
LABEL_38:
    v38 = -12782;
    goto LABEL_23;
  }

  tileInputPixelBuffer = self->_tileInputPixelBuffer;
  v33 = self->_espressoNetwork.plan;
  v34 = *&self->_espressoNetwork.network_index;
  if (espresso_network_bind_direct_cvpixelbuffer())
  {
    sub_20E10();
    goto LABEL_38;
  }

  espressoPlan = self->_espressoPlan;
  if (espresso_plan_execute_sync())
  {
    sub_20E88();
    goto LABEL_38;
  }

  v36 = [(FigMetalContext *)self->_metalContext commandQueue];
  v37 = [v36 commandBuffer];

  v38 = [(CMIVideoDeghostingRepairV1 *)self _pasteRepairedTile:self->_tileOutputPixelBuffer inputTileTexture:self->_tileInputImageTexture blendingMask:self->_tileBlendingMaskTexture outputPixelBuffer:a3 commandBuffer:v37];
  [v37 setLabel:@"VideoDeghostingV1Repair_Paste"];
  [v37 commit];
  [v37 waitUntilScheduled];
  if (v38)
  {
    sub_20F00();
  }

  v11 = v37;
LABEL_23:

  return v38;
}

- (int)_generateMaskTile:(id)a3 commandBuffer:(id)a4 circleParams:(RepairCircleParams)a5
{
  v20 = v5;
  v21 = v6;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    sub_21250();
LABEL_7:
    v16 = -12780;
    goto LABEL_4;
  }

  if (!v10)
  {
    sub_211D8();
    goto LABEL_7;
  }

  v12 = [v10 computeCommandEncoder];
  [v12 setComputePipelineState:self->_pipelineStates[8]];
  [v12 setTexture:v9 atIndex:0];
  [v12 setBytes:&v20 length:16 atIndex:0];
  v13 = [(MTLComputePipelineState *)self->_pipelineStates[8] threadExecutionWidth];
  v14 = [(MTLComputePipelineState *)self->_pipelineStates[8] maxTotalThreadsPerThreadgroup];
  v15 = *&self->_anon_24c[2];
  v19[0] = *self->_anon_24c;
  v19[1] = v15;
  v19[2] = 1;
  v18[0] = v13;
  v18[1] = v14 / v13;
  v18[2] = 1;
  [v12 dispatchThreads:v19 threadsPerThreadgroup:v18];
  [v12 endEncoding];

  v16 = 0;
LABEL_4:

  return v16;
}

- (int)_dilateMask:(id)a3 outputDilatedMask:(id)a4 commandBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v42 = 0;
  v41 = 0;
  if (!v8)
  {
    sub_21528();
LABEL_11:
    v33 = -12780;
    goto LABEL_7;
  }

  if (!v9)
  {
    sub_214B0();
    goto LABEL_11;
  }

  if (!v10)
  {
    sub_21438();
    goto LABEL_11;
  }

  v12 = [(FigMetalContext *)self->_metalContext allocator];
  v13 = [v12 newTextureDescriptor];

  if (!v13)
  {
    sub_2138C(&v38);
LABEL_14:
    v33 = v38;
    goto LABEL_7;
  }

  v14 = [v13 desc];
  [v14 setCompressionMode:2];

  v15 = [v13 desc];
  [v15 setCompressionFootprint:0];

  v16 = [v13 desc];
  [v16 setUsage:7];

  v17 = [v8 pixelFormat];
  v18 = [v13 desc];
  [v18 setPixelFormat:v17];

  v19 = [v8 width];
  v20 = [v13 desc];
  [v20 setWidth:v19];

  v21 = [v8 height];
  v22 = [v13 desc];
  [v22 setHeight:v21];

  [v13 setLabel:0];
  v23 = [(FigMetalContext *)self->_metalContext allocator];
  v24 = [v23 newTextureWithDescriptor:v13];
  v41 = v24;

  if (!v24)
  {
    sub_212C8(v13, &v38);
    goto LABEL_14;
  }

  v25 = [v11 computeCommandEncoder];
  v42 = *&self->_anon_24c[4];
  [v25 setComputePipelineState:self->_pipelineStates[2]];
  [v25 setTexture:v8 atIndex:0];
  [v25 setTexture:v24 atIndex:1];
  [v25 setBytes:&v42 length:4 atIndex:0];
  v26 = [(MTLComputePipelineState *)self->_pipelineStates[2] threadExecutionWidth];
  v27 = [(MTLComputePipelineState *)self->_pipelineStates[2] maxTotalThreadsPerThreadgroup]/ v26;
  v28 = v11;
  v38 = [v9 width] >> 1;
  v39 = [v9 height] >> 1;
  v40 = 1;
  v35 = v26;
  v36 = v27;
  v37 = 1;
  [v25 dispatchThreads:&v38 threadsPerThreadgroup:&v35];
  v42 = *&self->_anon_24c[6];
  [v25 setComputePipelineState:self->_pipelineStates[3]];
  [v25 setTexture:v24 atIndex:0];
  [v25 setTexture:v9 atIndex:1];
  [v25 setBytes:&v42 length:4 atIndex:0];
  v29 = [(MTLComputePipelineState *)self->_pipelineStates[3] threadExecutionWidth];
  v30 = [(MTLComputePipelineState *)self->_pipelineStates[3] maxTotalThreadsPerThreadgroup]/ v29;
  v31 = [v9 width] >> 1;
  v32 = [v9 height];
  v38 = v31;
  v39 = v32 >> 1;
  v40 = 1;
  v35 = v29;
  v36 = v30;
  v11 = v28;
  v37 = 1;
  [v25 dispatchThreads:&v38 threadsPerThreadgroup:&v35];
  [v25 endEncoding];

  v33 = 0;
LABEL_7:
  FigMetalDecRef();

  return v33;
}

- (int)_featherMask:(id)a3 outputFeatheredMask:(id)a4 commandBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v50 = 0;
  v49 = 0;
  if (!v8)
  {
    sub_21800();
LABEL_11:
    v40 = -12780;
    goto LABEL_7;
  }

  if (!v9)
  {
    sub_21788();
    goto LABEL_11;
  }

  if (!v10)
  {
    sub_21710();
    goto LABEL_11;
  }

  v12 = [(FigMetalContext *)self->_metalContext allocator];
  v13 = [v12 newTextureDescriptor];

  if (!v13)
  {
    sub_21664(&v46);
LABEL_14:
    v40 = v46;
    goto LABEL_7;
  }

  v14 = [v13 desc];
  [v14 setCompressionMode:2];

  v15 = [v13 desc];
  [v15 setCompressionFootprint:0];

  v16 = [v13 desc];
  [v16 setUsage:7];

  v17 = [v8 pixelFormat];
  v18 = [v13 desc];
  [v18 setPixelFormat:v17];

  v19 = [v8 width];
  v20 = [v13 desc];
  [v20 setWidth:v19];

  v21 = [v8 height];
  v22 = [v13 desc];
  [v22 setHeight:v21];

  [v13 setLabel:0];
  v23 = [(FigMetalContext *)self->_metalContext allocator];
  v24 = [v23 newTextureWithDescriptor:v13];
  v49 = v24;

  if (!v24)
  {
    sub_215A0(v13, &v46);
    goto LABEL_14;
  }

  v25 = [v11 computeCommandEncoder];
  v50 = *&self->_anon_24c[8];
  [v25 setComputePipelineState:self->_pipelineStates[2]];
  [v25 setTexture:v8 atIndex:0];
  [v25 setTexture:v24 atIndex:1];
  [v25 setBytes:&v50 length:4 atIndex:0];
  v26 = [(MTLComputePipelineState *)self->_pipelineStates[2] threadExecutionWidth];
  v27 = [(MTLComputePipelineState *)self->_pipelineStates[2] maxTotalThreadsPerThreadgroup]/ v26;
  v42 = v11;
  v46 = [v9 width] >> 1;
  v47 = [v9 height] >> 1;
  v48 = 1;
  v43 = v26;
  v44 = v27;
  v45 = 1;
  [v25 dispatchThreads:&v46 threadsPerThreadgroup:&v43];
  v50 = *&self->_anon_24c[10];
  [v25 setComputePipelineState:self->_pipelineStates[3]];
  [v25 setTexture:v24 atIndex:0];
  [v25 setTexture:v9 atIndex:1];
  [v25 setBytes:&v50 length:4 atIndex:0];
  v28 = [(MTLComputePipelineState *)self->_pipelineStates[3] threadExecutionWidth];
  v29 = [(MTLComputePipelineState *)self->_pipelineStates[3] maxTotalThreadsPerThreadgroup]/ v28;
  v30 = [v9 width] >> 1;
  v31 = [v9 height];
  v46 = v30;
  v47 = v31 >> 1;
  v48 = 1;
  v43 = v28;
  v44 = v29;
  v45 = 1;
  [v25 dispatchThreads:&v46 threadsPerThreadgroup:&v43];
  v50 = *&self->_anon_24c[8];
  [v25 setComputePipelineState:self->_pipelineStates[4]];
  [v25 setTexture:v9 atIndex:0];
  [v25 setTexture:v24 atIndex:1];
  [v25 setBytes:&v50 length:4 atIndex:0];
  v32 = [(MTLComputePipelineState *)self->_pipelineStates[4] threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_pipelineStates[4] maxTotalThreadsPerThreadgroup]/ v32;
  v34 = [v9 width] >> 1;
  v35 = [v9 height];
  v46 = v34;
  v47 = v35 >> 1;
  v48 = 1;
  v43 = v32;
  v44 = v33;
  v45 = 1;
  [v25 dispatchThreads:&v46 threadsPerThreadgroup:&v43];
  v50 = *&self->_anon_24c[10];
  [v25 setComputePipelineState:self->_pipelineStates[5]];
  [v25 setTexture:v49 atIndex:0];
  [v25 setTexture:v9 atIndex:1];
  [v25 setBytes:&v50 length:4 atIndex:0];
  v36 = [(MTLComputePipelineState *)self->_pipelineStates[5] threadExecutionWidth];
  v37 = [(MTLComputePipelineState *)self->_pipelineStates[5] maxTotalThreadsPerThreadgroup]/ v36;
  v38 = [v9 width] >> 1;
  v39 = [v9 height];
  v46 = v38;
  v47 = v39 >> 1;
  v48 = 1;
  v43 = v36;
  v44 = v37;
  v11 = v42;
  v45 = 1;
  [v25 dispatchThreads:&v46 threadsPerThreadgroup:&v43];
  [v25 endEncoding];

  v40 = 0;
LABEL_7:
  FigMetalDecRef();

  return v40;
}

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::extractMaskTile" constants:0];
  v4 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v3;

  if (!self->_pipelineStates[0])
  {
    sub_21DD8(&v22);
    return v22;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::extractImageTile" constants:0];
  v6 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v5;

  if (!self->_pipelineStates[1])
  {
    sub_21D2C(&v22);
    return v22;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::dilateMaskHorizontal" constants:0];
  v8 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v7;

  if (!self->_pipelineStates[2])
  {
    sub_21C80(&v22);
    return v22;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::dilateMaskVerticalBinary" constants:0];
  v10 = self->_pipelineStates[3];
  self->_pipelineStates[3] = v9;

  if (!self->_pipelineStates[3])
  {
    sub_21BD4(&v22);
    return v22;
  }

  v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::horizontalBoxFilter" constants:0];
  v12 = self->_pipelineStates[4];
  self->_pipelineStates[4] = v11;

  if (!self->_pipelineStates[4])
  {
    sub_21B28(&v22);
    return v22;
  }

  v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::verticalBoxFilter" constants:0];
  v14 = self->_pipelineStates[5];
  self->_pipelineStates[5] = v13;

  if (!self->_pipelineStates[4])
  {
    sub_21A7C(&v22);
    return v22;
  }

  v15 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::extractImageTileAndMergeMask" constants:0];
  v16 = self->_pipelineStates[6];
  self->_pipelineStates[6] = v15;

  if (!self->_pipelineStates[6])
  {
    sub_219D0(&v22);
    return v22;
  }

  v17 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::pasteTileAndBlendWithMaskKernel" constants:0];
  v18 = self->_pipelineStates[7];
  self->_pipelineStates[7] = v17;

  if (!self->_pipelineStates[7])
  {
    sub_21924(&v22);
    return v22;
  }

  v19 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingRepair::drawFilledCircle" constants:0];
  v20 = self->_pipelineStates[8];
  self->_pipelineStates[8] = v19;

  if (!self->_pipelineStates[8])
  {
    sub_21878(&v22);
    return v22;
  }

  return 0;
}

- (int)process
{
  size = CGRectNull.size;
  rect.origin = CGRectNull.origin;
  rect.size = size;
  inputSampleBuffer = self->_inputSampleBuffer;
  if (!inputSampleBuffer || (ImageBuffer = CMSampleBufferGetImageBuffer(inputSampleBuffer)) == 0)
  {
    fig_log_get_emitter();
    sub_4BF4();
LABEL_14:
    FigDebugAssert3();
    LODWORD(v8) = 3;
    return v8;
  }

  blendingStrength = self->_blendingStrength;
  if (blendingStrength < 0.0 || blendingStrength > 1.0)
  {
    fig_log_get_emitter();
    sub_4BF4();
    FigDebugAssert3();
  }

  else
  {
    v7 = ImageBuffer;
    v8 = [(NSArray *)self->_detectedGhostBoundingBoxes count];
    if (!v8)
    {
      return v8;
    }

    v9 = [(NSArray *)self->_detectedGhostBoundingBoxes objectAtIndexedSubscript:0];
    CGRectMakeWithDictionaryRepresentation(v9, &rect);

    if (!CGRectIsEmpty(rect))
    {
      [(CMIVideoDeghostingRepairV1 *)self _clampGhostROI:&rect];
      v10.i32[0] = *self->_anon_24c;
      v10.i32[1] = *&self->_anon_24c[2];
      __asm { FMOV            V3.2D, #0.5 }

      v16.i64[0] = *self->_anon_24c;
      v16.i64[1] = *&self->_anon_24c[2];
      *&_Q3.f64[0] = vmax_s32(vmovn_s64(vcvtq_s64_f64(vsubq_f64(vaddq_f64(rect.origin, vmulq_f64(rect.size, _Q3)), vmulq_f64(vcvtq_f64_u64(v16), _Q3)))), 0);
      LODWORD(v8) = [(CMIVideoDeghostingRepairV1 *)self _repair:v7 ghostROI:rect.origin.x inputROI:rect.origin.y, rect.size.width, rect.size.height, COERCE_DOUBLE(vuzp1_s16(vbsl_s8(vcgt_s32(vadd_s32(*&_Q3.f64[0], v10), self->_imageDimensions), vsub_s32(self->_imageDimensions, v10), *&_Q3.f64[0]), v10))];
      if (!v8)
      {
        return v8;
      }

      fig_log_get_emitter();
      sub_4C0C();
      goto LABEL_14;
    }
  }

  LODWORD(v8) = 0;
  return v8;
}

- (int)_copyImageTileFromPixelBuffer:(__CVBuffer *)a3 outputImageTileTexture:(id)a4 commandBuffer:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a3 && v9 && v10)
  {
    v12 = [(CMIVideoDeghostingRepairV1 *)self _cachedTexturesFromPixelBuffer:a3 usage:1];
    if ([v12 count] == &dword_0 + 2)
    {
      v13 = [sub_CDBC(*self->_inputROI) computeCommandEncoder];
      [v13 setComputePipelineState:self->_pipelineStates[1]];
      [v12 objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      [sub_CE4C() setTexture:? atIndex:?];

      [v12 objectAtIndexedSubscript:1];
      objc_claimAutoreleasedReturnValue();
      [sub_CE4C() setTexture:? atIndex:?];

      [v13 setTexture:v9 atIndex:2];
      sub_CE88();
      [(MTLComputePipelineState *)self->_pipelineStates[1] threadExecutionWidth];
      v14 = [(MTLComputePipelineState *)self->_pipelineStates[1] maxTotalThreadsPerThreadgroup];
      sub_CDD8(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      [v13 endEncoding];

      v22 = 0;
    }

    else
    {
      v22 = -12786;
    }
  }

  else
  {
    fig_log_get_emitter();
    sub_CDA4();
    FigDebugAssert3();
    v12 = 0;
    v22 = -12780;
  }

  return v22;
}

- (int)_copyMaskTileFromPixelBuffer:(__CVBuffer *)a3 outputMaskTileTexture:(id)a4 commandBuffer:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a3 && v9 && v10)
  {
    v12 = [(CMIVideoDeghostingRepairV1 *)self _cachedTexturesFromPixelBuffer:a3 usage:1];
    if ([v12 count] == &dword_0 + 1)
    {
      v13 = [sub_CDBC(*self->_inputROI) computeCommandEncoder];
      [v13 setComputePipelineState:self->_pipelineStates[0]];
      [v12 objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      [sub_CE4C() setTexture:? atIndex:?];

      [v13 setTexture:v9 atIndex:1];
      sub_CE88();
      [(MTLComputePipelineState *)self->_pipelineStates[0] threadExecutionWidth];
      v14 = [(MTLComputePipelineState *)self->_pipelineStates[0] maxTotalThreadsPerThreadgroup];
      sub_CDD8(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26, v27, v28, v29, v30, v31, v32);
      [v13 endEncoding];

      v22 = 0;
    }

    else
    {
      v22 = -12786;
    }
  }

  else
  {
    fig_log_get_emitter();
    sub_CDA4();
    FigDebugAssert3();
    v12 = 0;
    v22 = -12780;
  }

  return v22;
}

- (int)_copyImageTileFromPixelBuffer:(__CVBuffer *)a3 mergeWithMask:(id)a4 outputTilePixelBuffer:(__CVBuffer *)a5 commandBuffer:(id)a6
{
  v11 = a4;
  v12 = a6;
  v22 = 0;
  if (!a3 || !v11)
  {
    fig_log_get_emitter();
    sub_CDA4();
    FigDebugAssert3();
    a5 = 0;
LABEL_10:
    v13 = 0;
    v18 = -12780;
    goto LABEL_7;
  }

  if (!a5)
  {
    fig_log_get_emitter();
    sub_CDA4();
    FigDebugAssert3();
    goto LABEL_10;
  }

  v13 = [(CMIVideoDeghostingRepairV1 *)self _cachedTexturesFromPixelBuffer:a3 usage:1];
  if ([v13 count] != &dword_0 + 2)
  {
    a5 = 0;
    goto LABEL_12;
  }

  a5 = [(CMIVideoDeghostingRepairV1 *)self _cachedTexturesFromPixelBuffer:a5 usage:2];
  if ([(__CVBuffer *)a5 count]!= &dword_0 + 1)
  {
LABEL_12:
    v18 = -12786;
    goto LABEL_7;
  }

  v14 = [sub_CDBC(*self->_inputROI) computeCommandEncoder];
  [v14 setComputePipelineState:self->_pipelineStates[6]];
  [v13 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();
  [sub_CE6C() setTexture:? atIndex:?];

  [v13 objectAtIndexedSubscript:1];
  objc_claimAutoreleasedReturnValue();
  [sub_CE6C() setTexture:? atIndex:?];

  [v14 setTexture:v11 atIndex:2];
  [(__CVBuffer *)a5 objectAtIndexedSubscript:0];
  objc_claimAutoreleasedReturnValue();
  [sub_CE6C() setTexture:? atIndex:?];

  [v14 setBytes:&v22 length:4 atIndex:0];
  v15 = [(MTLComputePipelineState *)self->_pipelineStates[6] threadExecutionWidth];
  v16 = [(MTLComputePipelineState *)self->_pipelineStates[6] maxTotalThreadsPerThreadgroup];
  v17 = *&self->_anon_24c[2];
  v21[0] = *self->_anon_24c;
  v21[1] = v17;
  v21[2] = 1;
  v20[0] = v15;
  v20[1] = v16 / v15;
  v20[2] = 1;
  [v14 dispatchThreads:v21 threadsPerThreadgroup:v20];
  [v14 endEncoding];

  v18 = 0;
LABEL_7:

  return v18;
}

- (int)_pasteRepairedTile:(__CVBuffer *)a3 inputTileTexture:(id)a4 blendingMask:(id)a5 outputPixelBuffer:(__CVBuffer *)a6 commandBuffer:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26 = 0;
  if (!a3)
  {
    fig_log_get_emitter();
    sub_4C20();
    FigDebugAssert3();
LABEL_11:
    a6 = 0;
LABEL_13:
    v18 = 0;
    v22 = -12780;
    goto LABEL_8;
  }

  if (!v14)
  {
    fig_log_get_emitter();
    sub_4C20();
    FigDebugAssert3();
    a3 = 0;
    goto LABEL_11;
  }

  if (!a6)
  {
    fig_log_get_emitter();
    sub_4C20();
    FigDebugAssert3();
    a3 = 0;
    goto LABEL_13;
  }

  v16 = vmovl_u16(*self->_inputROI);
  WORD1(v26) = v16.i16[2];
  LOWORD(v26) = v16.i16[0];
  HIDWORD(v26) = LODWORD(self->_blendingStrength);
  a3 = [(CMIVideoDeghostingRepairV1 *)self _cachedTexturesFromPixelBuffer:a3 usage:1];
  if ([(__CVBuffer *)a3 count]!= &dword_0 + 1)
  {
    a6 = 0;
    goto LABEL_15;
  }

  a6 = [(CMIVideoDeghostingRepairV1 *)self _cachedTexturesFromPixelBuffer:a6 usage:3];
  if ([(__CVBuffer *)a6 count]!= &dword_0 + 2)
  {
LABEL_15:
    v18 = 0;
    v22 = -12786;
    goto LABEL_8;
  }

  v17 = [v15 computeCommandEncoder];
  if (v17)
  {
    v18 = v17;
    [v17 setComputePipelineState:self->_pipelineStates[7]];
    [(__CVBuffer *)a3 objectAtIndexedSubscript:0];
    objc_claimAutoreleasedReturnValue();
    [sub_CE5C() setTexture:? atIndex:?];

    [v18 setTexture:v13 atIndex:1];
    [v18 setTexture:v14 atIndex:2];
    [(__CVBuffer *)a6 objectAtIndexedSubscript:0];
    objc_claimAutoreleasedReturnValue();
    [sub_CE5C() setTexture:? atIndex:?];

    [(__CVBuffer *)a6 objectAtIndexedSubscript:1];
    objc_claimAutoreleasedReturnValue();
    [sub_CE5C() setTexture:? atIndex:?];

    [v18 setBytes:&v26 length:8 atIndex:0];
    v19 = [(MTLComputePipelineState *)self->_pipelineStates[7] threadExecutionWidth];
    v20 = [(MTLComputePipelineState *)self->_pipelineStates[7] maxTotalThreadsPerThreadgroup];
    v21 = *&self->_anon_24c[2] >> 1;
    v25[0] = *self->_anon_24c >> 1;
    v25[1] = v21;
    v25[2] = 1;
    v24[0] = v19;
    v24[1] = v20 / v19;
    v24[2] = 1;
    [v18 dispatchThreads:v25 threadsPerThreadgroup:v24];
    [v18 endEncoding];
    v22 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    sub_2B5C();
    v22 = FigSignalErrorAtGM();
    v18 = 0;
  }

LABEL_8:

  return v22;
}

- (id)_cachedTexturesFromPixelBuffer:(__CVBuffer *)a3 usage:(unint64_t)a4
{
  v4 = a3;
  image = 0;
  if (!a3)
  {
    v6 = 0;
    goto LABEL_96;
  }

  v6 = [[NSMutableArray alloc] initWithCapacity:2];
  if (!v6)
  {
LABEL_95:
    v4 = 0;
LABEL_96:
    v22 = 0;
    goto LABEL_92;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v4);
  v8 = 1;
  v9 = MTLPixelFormatR8Unorm;
  v10 = PixelFormatType == 641230384 || PixelFormatType == 641234480;
  if (!v10)
  {
    if (PixelFormatType == 645424688 || PixelFormatType == 645428784)
    {
      goto LABEL_42;
    }

    if (PixelFormatType != 758670896 && PixelFormatType != 758674992)
    {
      if (PixelFormatType == 762865200 || PixelFormatType == 762869296)
      {
        goto LABEL_42;
      }

      if (PixelFormatType != 792225328 && PixelFormatType != 792229424)
      {
        if (PixelFormatType == 796419632 || PixelFormatType == 796423728)
        {
          goto LABEL_42;
        }

        if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
        {
          switch(PixelFormatType)
          {
            case 0x4C303066u:
              v8 = 0;
              v9 = MTLPixelFormatR32Float;
              goto LABEL_43;
            case 0x4C303068u:
              v8 = 0;
              v9 = MTLPixelFormatR16Float;
              goto LABEL_43;
            case 0x68663230u:
              goto LABEL_41;
          }

          sub_CE7C();
          if (v10)
          {
            goto LABEL_42;
          }

          if (v17 != 2084070960 && v17 != 2084075056)
          {
            sub_CE7C();
            if (!v10)
            {
              if (v19 == 2016686640)
              {
LABEL_41:
                v9 = MTLPixelFormatR16Unorm;
                goto LABEL_43;
              }

              goto LABEL_95;
            }

LABEL_42:
            v9 = 588;
          }
        }
      }
    }
  }

LABEL_43:
  CVPixelBufferGetWidthOfPlane(v4, 0);
  CVPixelBufferGetHeightOfPlane(v4, 0);
  v20 = kCVMetalTextureUsage;
  v81 = kCVMetalTextureUsage;
  v21 = [NSNumber numberWithUnsignedInteger:a4];
  v82 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];

  v31 = sub_CE10(v23, v24, v25, v26, v27, v28, v29, v30, v71, v75, self);
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(v31, v32, v33, v22, v9, v34, v35, 0, v72);
  v37 = image;
  if (TextureFromImage)
  {
    goto LABEL_101;
  }

  v38 = CVMetalTextureGetTexture(image);
  [(__CVBuffer *)v6 setObject:v38 atIndexedSubscript:0];

  v39 = [(__CVBuffer *)v6 objectAtIndexedSubscript:0];

  v37 = image;
  if (!v39)
  {
LABEL_101:
    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_103;
  }

  if (image)
  {
    CFRelease(image);
  }

  if (!v8)
  {
    v52 = v22;
LABEL_91:
    v4 = v6;
    v6 = v4;
    v22 = v52;
    goto LABEL_92;
  }

  v40 = CVPixelBufferGetPixelFormatType(v4);
  v41 = MTLPixelFormatRG8Unorm;
  switch(v40)
  {
    case 0x26386630u:
    case 0x26387630u:
LABEL_87:
      CVPixelBufferGetWidthOfPlane(v4, 1uLL);
      CVPixelBufferGetHeightOfPlane(v4, 1uLL);
      v79 = v20;
      v53 = [NSNumber numberWithUnsignedInteger:a4];
      v80 = v53;
      v52 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];

      v62 = sub_CE10(v54, v55, v56, v57, v58, v59, v60, v61, v73, v76, v78);
      v67 = CVMetalTextureCacheCreateTextureFromImage(v62, v63, v64, v52, v41, v65, v66, 1uLL, v74);
      v37 = image;
      if (!v67)
      {
        v68 = CVMetalTextureGetTexture(image);
        [(__CVBuffer *)v6 setObject:v68 atIndexedSubscript:1];

        v69 = [(__CVBuffer *)v6 objectAtIndexedSubscript:1];

        v37 = image;
        if (v69)
        {
          if (image)
          {
            CFRelease(image);
          }

          goto LABEL_91;
        }
      }

      v22 = v52;
      goto LABEL_101;
    case 0x26786630u:
    case 0x26787630u:
      goto LABEL_86;
    case 0x2D386630u:
    case 0x2D387630u:
      goto LABEL_87;
    case 0x2D786630u:
    case 0x2D787630u:
      goto LABEL_86;
    case 0x2F386630u:
    case 0x2F387630u:
      goto LABEL_87;
    case 0x2F786630u:
    case 0x2F787630u:
      goto LABEL_86;
    case 0x34323066u:
    case 0x34323076u:
      goto LABEL_87;
    case 0x68663230u:
      goto LABEL_84;
  }

  sub_CE7C();
  if (v10)
  {
    goto LABEL_86;
  }

  if (v49 == 2084070960 || v49 == 2084075056)
  {
    goto LABEL_87;
  }

  sub_CE7C();
  if (v10)
  {
LABEL_86:
    v41 = MTLPixelFormatRGBA8Uint|0x204;
    goto LABEL_87;
  }

  if (v51 == 2016686640)
  {
LABEL_84:
    v41 = MTLPixelFormatRG16Unorm;
    goto LABEL_87;
  }

LABEL_103:
  v4 = 0;
LABEL_92:

  return v4;
}

@end