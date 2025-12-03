@interface FigColorCubeMetalFilter
+ (int)createCubeTexture:(id *)texture ofSize:(int)size cubesCount:(int)count textureType:(unint64_t)type withDevice:(id)device;
+ (int)loadCube:(id)cube ofSize:(int)size intoTexture:(id)texture toSliceIndex:(int)data;
- (CGRect)targetRectangle;
- (FigColorCubeMetalFilter)initWithCommandQueue:(id)queue;
- (id)createPipelineStateWithVertexFunctionName:(id)name fragmentName:(id)fragmentName isLuma:(BOOL)luma useBgCube:(BOOL)cube manyFgCubes:(BOOL)cubes colorSpace:(int)space mixInGammaDomain:(BOOL)domain;
- (int)_prewarmWithTuningParameters:(id)parameters;
- (int)allocateResources;
- (int)createKernels;
- (int)createPipelineStatesForCubeConversionWithVertexFunctionName:(id)name;
- (int)createPipelineStatesWithFragmentName:(id)name vertexFunctionName:(id)functionName;
- (int)prewarm;
- (int)process;
- (int)releaseResources;
- (int)runWithInputPixelBuffer:(__CVBuffer *)buffer mattePixelBuffer:(__CVBuffer *)pixelBuffer outputPixelBuffer:(__CVBuffer *)outputPixelBuffer targetRectangle:(CGRect)rectangle;
- (int)setBackgroundCubeWithName:(id)name data:(id)data;
- (int)setForegroundCubesWithNames:(id)names data:(id)data;
- (void)convertCubeWithSrcTexture:(id)texture dstTexture:(id)dstTexture isP3Cube:(BOOL)cube;
- (void)dealloc;
- (void)prewarmMetalInternalShader;
@end

@implementation FigColorCubeMetalFilter

+ (int)createCubeTexture:(id *)texture ofSize:(int)size cubesCount:(int)count textureType:(unint64_t)type withDevice:(id)device
{
  deviceCopy = device;
  if (!deviceCopy)
  {
    sub_2957F18AC(&v20);
    v13 = 0;
    v16 = v20;
    goto LABEL_12;
  }

  v12 = objc_opt_new();
  v13 = v12;
  if (!v12)
  {
    sub_2957F1800(&v19);
    v16 = v19;
    goto LABEL_12;
  }

  switch(type)
  {
    case 2uLL:
      [v12 setTextureType:2];
      [v13 setHeight:(size * size)];
      [v13 setWidth:size];
      break;
    case 3uLL:
      [v12 setTextureType:3];
      [v13 setHeight:(size * size)];
      [v13 setWidth:size];
      [v13 setArrayLength:count];
      break;
    case 7uLL:
      [v12 setTextureType:7];
      [v13 setHeight:size];
      [v13 setWidth:size];
      [v13 setDepth:size];
      break;
    default:
      v16 = -1;
      goto LABEL_12;
  }

  [v13 setPixelFormat:70];
  [v13 setUsage:7];
  v14 = [deviceCopy newTextureWithDescriptor:v13];
  if (v14)
  {
    v15 = v14;
    *texture = v15;

    v16 = 0;
  }

  else
  {
    sub_2957F1754(&v18);
    v16 = v18;
  }

LABEL_12:

  return v16;
}

+ (int)loadCube:(id)cube ofSize:(int)size intoTexture:(id)texture toSliceIndex:(int)data
{
  cubeCopy = cube;
  textureCopy = texture;
  v11 = [cubeCopy length];
  v12 = (size * size);
  if (16 * size * v12 == v11)
  {
    v13 = [MEMORY[0x29EDB8DF8] dataWithLength:v11 >> 2];
    mutableBytes = [v13 mutableBytes];
    v17.data = [cubeCopy bytes];
    v17.height = (size * size);
    v17.width = 4 * size;
    v17.rowBytes = 4 * v17.width;
    dest.data = mutableBytes;
    dest.height = v17.height;
    dest.width = v17.width;
    dest.rowBytes = v17.width;
    vImageConvert_PlanarFtoPlanar8(&v17, &dest, 1.0, 0.0, 0);

    cubeCopy = v13;
  }

  if ([cubeCopy length] != v12 * (4 * size))
  {
    sub_2957F1958(&v17);
LABEL_11:
    data = v17.data;
    goto LABEL_8;
  }

  bytes = [cubeCopy bytes];
  if ([textureCopy textureType] != 7)
  {
    memset(&v17, 0, 24);
    v17.rowBytes = size;
    sizeCopy = (size * size);
    sizeCopy2 = 1;
    [textureCopy replaceRegion:&v17 mipmapLevel:0 slice:data withBytes:bytes bytesPerRow:4 * size bytesPerImage:0];
    data = 0;
    goto LABEL_8;
  }

  if (data)
  {
    sub_2957F1A04(&v17);
    goto LABEL_11;
  }

  memset(&v17, 0, 24);
  v17.rowBytes = size;
  sizeCopy = size;
  sizeCopy2 = size;
  [textureCopy replaceRegion:&v17 mipmapLevel:0 slice:0 withBytes:bytes bytesPerRow:4 * size bytesPerImage:4 * v12];
LABEL_8:

  return data;
}

- (FigColorCubeMetalFilter)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = FigColorCubeMetalFilter;
  v5 = [(FigColorCubeMetalFilter *)&v19 init];
  if (v5)
  {
    v6 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
    v7 = [objc_alloc(MEMORY[0x29EDC0A40]) initWithbundle:v6 andOptionalCommandQueue:queueCopy];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = *(v5 + 1);
    if (v9)
    {
      commandQueue = [v9 commandQueue];
      v11 = *(v5 + 66);
      *(v5 + 66) = commandQueue;

      *(v5 + 2) = 540;
      device = [*(v5 + 1) device];
      v13 = *(v5 + 2);
      MTLPixelFormatGetInfoForDevice();

      byte_2A18BA3F0 = 1;
      v5[504] = 0;
      v14 = malloc_type_malloc(0x14uLL, 0x1000040742B88DAuLL);
      *(v5 + 67) = v14;
      *v14 = 0x100000020;
      v14[3] = 0;
      *(v14 + 16) = 0;
      v15 = *(MEMORY[0x29EDB90D8] + 16);
      *(v5 + 568) = *MEMORY[0x29EDB90D8];
      *(v5 + 584) = v15;
      *(v5 + 115) = 0;
      *(v5 + 125) = 0;
    }

    else if (!sub_2957F1AB0(v6))
    {
      v16 = 0;
      goto LABEL_5;
    }
  }

  v16 = v5;
LABEL_5:
  v17 = v16;

  return v17;
}

- (int)prewarm
{
  selfCopy = self;
  v3 = [[FigColorCubeMetalFilter alloc] initWithCommandQueue:self->_metalCommandQueue];
  LODWORD(selfCopy) = [(FigColorCubeMetalFilter *)v3 _prewarmWithTuningParameters:selfCopy->_tuningParameters];

  return selfCopy;
}

- (int)_prewarmWithTuningParameters:(id)parameters
{
  createKernels = [(FigColorCubeMetalFilter *)self createKernels];
  if (createKernels)
  {
    sub_2957F1CE0(createKernels, &v5);
    LODWORD(createKernels) = v5;
  }

  return createKernels;
}

- (int)allocateResources
{
  filterDescriptor = self->_filterDescriptor;
  var1 = filterDescriptor->var1;
  self->_isSingleFgCube = var1 == 1;
  v59 = 0;
  var0 = filterDescriptor->var0;
  device = [(FigMetalContext *)self->_metal device];
  v7 = [FigColorCubeMetalFilter createCubeTexture:&v59 ofSize:var0 cubesCount:var1 textureType:3 withDevice:device];
  v8 = v59;

  if (v7)
  {
    sub_2957F1D9C();
LABEL_24:
    [(FigColorCubeMetalFilter *)self releaseResources];
    goto LABEL_14;
  }

  v9 = self->_fgCubesTexture[0];
  self->_fgCubesTexture[0] = v8;
  v10 = v8;

  v58 = v10;
  v11 = self->_filterDescriptor;
  v12 = v11->var0;
  v13 = v11->var1;
  device2 = [(FigMetalContext *)self->_metal device];
  v7 = [FigColorCubeMetalFilter createCubeTexture:&v58 ofSize:v12 cubesCount:v13 textureType:3 withDevice:device2];
  v15 = v58;
  v8 = v58;

  if (v7)
  {
    sub_2957F1E14();
    goto LABEL_24;
  }

  objc_storeStrong(&self->_fgCubesTexture[1], v15);
  if (self->_isSingleFgCube)
  {
    v57 = v8;
    v16 = self->_filterDescriptor;
    v17 = v16->var0;
    v18 = v16->var1;
    device3 = [(FigMetalContext *)self->_metal device];
    v7 = [FigColorCubeMetalFilter createCubeTexture:&v57 ofSize:v17 cubesCount:v18 textureType:7 withDevice:device3];
    v20 = v57;

    if (v7)
    {
      sub_2957F1E8C();
LABEL_19:
      v8 = v20;
      goto LABEL_24;
    }

    v21 = self->_fgCubesTextureTemp[0];
    self->_fgCubesTextureTemp[0] = v20;
    v22 = v20;

    v56 = v22;
    v23 = self->_filterDescriptor;
    v24 = v23->var0;
    v25 = v23->var1;
    device4 = [(FigMetalContext *)self->_metal device];
    v7 = [FigColorCubeMetalFilter createCubeTexture:&v56 ofSize:v24 cubesCount:v25 textureType:7 withDevice:device4];
    v27 = v56;
    v8 = v56;

    if (v7)
    {
      sub_2957F1F04();
      goto LABEL_24;
    }

    objc_storeStrong(&self->_fgCubesTextureTemp[1], v27);
  }

  v28 = self->_filterDescriptor;
  if (!v28->var2)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v55 = v8;
  v29 = v28->var0;
  v30 = v28->var1;
  device5 = [(FigMetalContext *)self->_metal device];
  v7 = [FigColorCubeMetalFilter createCubeTexture:&v55 ofSize:v29 cubesCount:v30 textureType:2 withDevice:device5];
  v20 = v55;

  if (v7)
  {
    sub_2957F1F7C();
    goto LABEL_19;
  }

  v32 = self->_bgCubeTexture[0];
  self->_bgCubeTexture[0] = v20;
  v33 = v20;

  v54 = v33;
  v34 = self->_filterDescriptor;
  v35 = v34->var0;
  v36 = v34->var1;
  device6 = [(FigMetalContext *)self->_metal device];
  v7 = [FigColorCubeMetalFilter createCubeTexture:&v54 ofSize:v35 cubesCount:v36 textureType:2 withDevice:device6];
  v8 = v54;

  if (v7)
  {
    sub_2957F1FF4();
    goto LABEL_24;
  }

  v38 = self->_bgCubeTexture[1];
  self->_bgCubeTexture[1] = v8;
  v39 = v8;

  v53 = v39;
  v40 = self->_filterDescriptor;
  v41 = v40->var0;
  v42 = v40->var1;
  device7 = [(FigMetalContext *)self->_metal device];
  v7 = [FigColorCubeMetalFilter createCubeTexture:&v53 ofSize:v41 cubesCount:v42 textureType:7 withDevice:device7];
  v8 = v53;

  if (v7)
  {
    sub_2957F206C();
    goto LABEL_24;
  }

  v44 = self->_bgCubeTextureTemp[0];
  self->_bgCubeTextureTemp[0] = v8;
  v45 = v8;

  v52 = v45;
  v46 = self->_filterDescriptor;
  v47 = v46->var0;
  v48 = v46->var1;
  device8 = [(FigMetalContext *)self->_metal device];
  v7 = [FigColorCubeMetalFilter createCubeTexture:&v52 ofSize:v47 cubesCount:v48 textureType:7 withDevice:device8];
  v50 = v52;
  v8 = v52;

  if (v7)
  {
    sub_2957F20E4();
    goto LABEL_24;
  }

  objc_storeStrong(&self->_bgCubeTextureTemp[1], v50);
LABEL_14:

  return v7;
}

- (int)setForegroundCubesWithNames:(id)names data:(id)data
{
  namesCopy = names;
  dataCopy = data;
  if (namesCopy)
  {
    v8 = MEMORY[0x29EDB9170];
    v9 = [namesCopy objectAtIndexedSubscript:0];
    v10 = [v8 filterWithName:v9];

    if (objc_opt_respondsToSelector())
    {
      cubeColorSpaceName = [v10 cubeColorSpaceName];
      v12 = cubeColorSpaceName == *MEMORY[0x29EDB90F0];
    }

    else
    {
      v12 = 1;
    }

    if ([namesCopy count] == 1)
    {
      v13 = v12 ^ (self->_filterDescriptor->var3 == 0);
    }

    else
    {
      v13 = 0;
    }

    v23 = v12;
  }

  else
  {
    v23 = 0;
    v13 = 0;
  }

  if ([dataCopy count])
  {
    v14 = 0;
    v15 = 0;
    v16 = 424;
    if (v13)
    {
      v16 = 440;
    }

    v17 = self + v16;
    while (1)
    {
      v18 = [dataCopy objectAtIndexedSubscript:v14];
      v19 = [FigColorCubeMetalFilter loadCube:v18 ofSize:self->_filterDescriptor->var0 intoTexture:*&v17[8 * (self->_fgCubeToUseIndex ^ 1)] toSliceIndex:v15];

      if (v19)
      {
        break;
      }

      v14 = (v15 + 1);
      v15 = v14;
      if ([dataCopy count] <= v14)
      {
        goto LABEL_16;
      }
    }

    sub_2957F215C();
    v21 = 1;
  }

  else
  {
LABEL_16:
    if (v13)
    {
      v20 = &self->super.isa + (self->_fgCubeToUseIndex ^ 1);
      [(FigColorCubeMetalFilter *)self convertCubeWithSrcTexture:v20[55] dstTexture:v20[53] isP3Cube:v23];
    }

    os_unfair_lock_lock(&self->_fgCubesHaveBeenUpdatedLock);
    self->_fgCubesHaveBeenUpdated = 1;
    os_unfair_lock_unlock(&self->_fgCubesHaveBeenUpdatedLock);
    v21 = 0;
  }

  return v21;
}

- (int)setBackgroundCubeWithName:(id)name data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  if (!dataCopy)
  {
    v11 = 0;
    self->_useBgCube = 0;
    goto LABEL_15;
  }

  if (nameCopy)
  {
    v8 = [MEMORY[0x29EDB9170] filterWithName:nameCopy];
    if (objc_opt_respondsToSelector())
    {
      cubeColorSpaceName = [v8 cubeColorSpaceName];
      v10 = cubeColorSpaceName == *MEMORY[0x29EDB90F0];
    }

    else
    {
      v10 = 1;
    }

    v13 = v10 ^ (self->_filterDescriptor->var3 == 0);

    var0 = self->_filterDescriptor->var0;
    if (v13)
    {
      v14 = 1;
      v15 = 480;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    var0 = self->_filterDescriptor->var0;
  }

  v14 = 0;
  v15 = 464;
LABEL_11:
  if ([FigColorCubeMetalFilter loadCube:dataCopy ofSize:var0 intoTexture:*(&self->super.isa + 8 * (self->_bgCubeToUseIndex ^ 1) + v15) toSliceIndex:0])
  {
    sub_2957F21D4();
    v11 = 1;
  }

  else
  {
    self->_useBgCube = 1;
    if (v14)
    {
      v16 = &self->super.isa + (self->_bgCubeToUseIndex ^ 1);
      [(FigColorCubeMetalFilter *)self convertCubeWithSrcTexture:v16[60] dstTexture:v16[58] isP3Cube:v10];
    }

    os_unfair_lock_lock(&self->_bgCubesHaveBeenUpdatedLock);
    self->_bgCubesHaveBeenUpdated = 1;
    os_unfair_lock_unlock(&self->_bgCubesHaveBeenUpdatedLock);
    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (void)convertCubeWithSrcTexture:(id)texture dstTexture:(id)dstTexture isP3Cube:(BOOL)cube
{
  cubeCopy = cube;
  v8 = MEMORY[0x29EDBB5F8];
  dstTextureCopy = dstTexture;
  textureCopy = texture;
  renderPassDescriptor = [v8 renderPassDescriptor];
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  colorAttachments = [renderPassDescriptor colorAttachments];
  v14 = [colorAttachments objectAtIndexedSubscript:0];
  [v14 setTexture:dstTextureCopy];

  v15 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v15 setRenderPipelineState:self->_cubeConvert[cubeCopy]];
  fullRangeVertexBuf = [(FigMetalContext *)self->_metal fullRangeVertexBuf];
  [v15 setVertexBuffer:fullRangeVertexBuf offset:0 atIndex:0];

  [v15 setFragmentTexture:textureCopy atIndex:0];
  [v15 setFragmentBytes:self->_filterDescriptor length:4 atIndex:0];
  [v15 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v15 endEncoding];
  [commandBuffer setLabel:@"FigColorCube::convert"];
  [commandBuffer commit];
}

- (void)dealloc
{
  [(FigColorCubeMetalFilter *)self releaseResources];
  v3.receiver = self;
  v3.super_class = FigColorCubeMetalFilter;
  [(FigColorCubeMetalFilter *)&v3 dealloc];
}

- (int)releaseResources
{
  purgeResources = [(FigColorCubeMetalFilter *)self purgeResources];
  v4 = self->_fgCubesTexture[0];
  self->_fgCubesTexture[0] = 0;

  v5 = self->_fgCubesTexture[1];
  self->_fgCubesTexture[1] = 0;

  v6 = self->_fgCubesTextureTemp[0];
  self->_fgCubesTextureTemp[0] = 0;

  v7 = self->_fgCubesTextureTemp[1];
  self->_fgCubesTextureTemp[1] = 0;

  v8 = self->_bgCubeTexture[0];
  self->_bgCubeTexture[0] = 0;

  v9 = self->_bgCubeTexture[1];
  self->_bgCubeTexture[1] = 0;

  v10 = self->_bgCubeTextureTemp[0];
  self->_bgCubeTextureTemp[0] = 0;

  v11 = self->_bgCubeTextureTemp[1];
  self->_bgCubeTextureTemp[1] = 0;

  free(self->_filterDescriptor);
  self->_filterDescriptor = 0;
  return purgeResources;
}

- (int)process
{
  v2 = [(FigColorCubeMetalFilter *)self runWithInputPixelBuffer:self->_inputPixelBuffer mattePixelBuffer:self->_mattePixelbuffer outputPixelBuffer:self->_outputPixelBuffer targetRectangle:self->_targetRectangle.origin.x, self->_targetRectangle.origin.y, self->_targetRectangle.size.width, self->_targetRectangle.size.height];
  if (v2)
  {
    sub_2957F224C();
  }

  return v2 != 0;
}

- (int)runWithInputPixelBuffer:(__CVBuffer *)buffer mattePixelBuffer:(__CVBuffer *)pixelBuffer outputPixelBuffer:(__CVBuffer *)outputPixelBuffer targetRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  os_unfair_lock_lock(&self->_bgCubesHaveBeenUpdatedLock);
  if (self->_bgCubesHaveBeenUpdated)
  {
    self->_bgCubeToUseIndex ^= 1u;
    self->_bgCubesHaveBeenUpdated = 0;
  }

  os_unfair_lock_unlock(&self->_bgCubesHaveBeenUpdatedLock);
  os_unfair_lock_lock(&self->_fgCubesHaveBeenUpdatedLock);
  if (self->_fgCubesHaveBeenUpdated)
  {
    self->_fgCubeToUseIndex ^= 1u;
    self->_fgCubesHaveBeenUpdated = 0;
  }

  os_unfair_lock_unlock(&self->_fgCubesHaveBeenUpdatedLock);
  fgCubesTexture = self->_fgCubesTexture;
  width = [(MTLTexture *)self->_fgCubesTexture[self->_fgCubeToUseIndex] width];
  bgCubeTexture = self->_bgCubeTexture;
  v15 = self->_bgCubeTexture[self->_bgCubeToUseIndex];
  if (v15 && width != [(MTLTexture *)v15 width])
  {
    sub_2957F22C4(&v77);
    return v77;
  }

  v16.f64[0] = width;
  v17.f64[0] = width + -1.0;
  v16.f64[1] = (width * width);
  __asm { FMOV            V1.2D, #1.0 }

  v17.f64[1] = 1.0 / v17.f64[0];
  v84 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), vdivq_f64(_Q1, v16));
  if (byte_2A18BA3F0)
  {
    yuvFormat = 10;
  }

  else
  {
    yuvFormat = self->_yuvFormat;
  }

  v24 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:buffer pixelFormat:yuvFormat usage:17 plane:0];
  if (!v24)
  {
    sub_2957F2758(&v77);
    return v77;
  }

  v25 = v24;
  v26 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:outputPixelBuffer pixelFormat:yuvFormat usage:22 plane:0];
  if (!v26)
  {
    sub_2957F2694(v25, &v77);
    return v77;
  }

  v27 = v26;
  if (byte_2A18BA3F0 == 1)
  {
    v71 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:buffer pixelFormat:30 usage:17 plane:1];
    if (!v71)
    {
      sub_2957F25C0(v27, v25, &v77);
      return v77;
    }

    v73 = [(FigMetalContext *)self->_metal bindPixelBufferToMTL2DTexture:outputPixelBuffer pixelFormat:30 usage:22 plane:1];
    if (!v73)
    {
      sub_2957F24C8(v71, v27, v25, &v77);
      return v77;
    }
  }

  else
  {
    v73 = 0;
    v71 = 0;
  }

  v76 = v25;
  if (pixelBuffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    metal = self->_metal;
    if (PixelFormatType == 1278226536)
    {
      v30 = [(FigMetalContext *)metal bindPixelBufferToMTL2DTexture:pixelBuffer pixelFormat:25 usage:17 plane:0];
      if (!v30)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v30 = [(FigMetalContext *)metal bindPixelBufferToMTL2DTexture:pixelBuffer pixelFormat:10 usage:17 plane:0];
      if (!v30)
      {
LABEL_51:
        fig_log_get_emitter();
        FigDebugAssert3();
        fig_log_get_emitter();
        v67 = FigSignalErrorAtGM();

        goto LABEL_41;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  useBgCube = self->_useBgCube;
  v72 = v30;
  v32 = v30 != 0;
  height = [v27 height];
  height2 = [v76 height];
  renderPassDescriptor = [MEMORY[0x29EDBB5F8] renderPassDescriptor];
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (commandBuffer)
  {
    v75 = v27;
    fullRangeVertexBuf = [(FigMetalContext *)self->_metal fullRangeVertexBuf];
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    if (CGRectIsNull(v86))
    {
      v39 = fullRangeVertexBuf;
LABEL_28:
      v49 = v32 & useBgCube;
      v50 = height > height2;
      colorAttachments = [renderPassDescriptor colorAttachments];
      v52 = [colorAttachments objectAtIndexedSubscript:0];
      [v52 setTexture:v75];

      v53 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
      v54 = v53;
      filterDescriptor = self->_filterDescriptor;
      var3 = filterDescriptor->var3;
      var4 = filterDescriptor->var4;
      v58 = 24;
      if (byte_2A18BA3F0)
      {
        v58 = 152;
      }

      v69 = v50;
      [v53 setRenderPipelineState:*(&self->super.isa + 64 * v49 + 32 * v50 + 16 * var3 + 8 * var4 + v58)];
      [v54 setVertexBuffer:v39 offset:0 atIndex:0];
      v25 = v76;
      [v54 setFragmentTexture:v76 atIndex:0];
      v59 = v71;
      if (byte_2A18BA3F0 == 1)
      {
        [v54 setFragmentTexture:v71 atIndex:1];
      }

      [v54 setFragmentTexture:fgCubesTexture[self->_fgCubeToUseIndex] atIndex:2];
      if (v49)
      {
        [v54 setFragmentTexture:bgCubeTexture[self->_bgCubeToUseIndex] atIndex:3];
        [v54 setFragmentTexture:v72 atIndex:4];
      }

      [v54 setFragmentBytes:&v84 length:16 atIndex:0];
      width2 = [v76 width];
      v77 = __PAIR64__([v76 height], width2);
      [v54 setFragmentBytes:&v77 length:8 atIndex:1];
      [v54 setFragmentBytes:&self->_matteToInputPixelBufferRotationDegrees length:4 atIndex:2];
      [v54 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v54 endEncoding];
      if (byte_2A18BA3F0 == 1)
      {
        colorAttachments2 = [renderPassDescriptor colorAttachments];
        v62 = [colorAttachments2 objectAtIndexedSubscript:0];
        [v62 setTexture:v73];

        v63 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];

        [v63 setRenderPipelineState:self->_colorCubePipelineStateUV[v49][v69][self->_filterDescriptor->var3][self->_filterDescriptor->var4]];
        fullRangeVertexBuf2 = [(FigMetalContext *)self->_metal fullRangeVertexBuf];
        [v63 setVertexBuffer:fullRangeVertexBuf2 offset:0 atIndex:0];

        [v63 setFragmentTexture:v76 atIndex:0];
        [v63 setFragmentTexture:v71 atIndex:1];
        [v63 setFragmentTexture:fgCubesTexture[self->_fgCubeToUseIndex] atIndex:2];
        v65 = v72;
        if (v49)
        {
          [v63 setFragmentTexture:bgCubeTexture[self->_bgCubeToUseIndex] atIndex:3];
          [v63 setFragmentTexture:v72 atIndex:4];
        }

        [v63 setFragmentBytes:&v84 length:16 atIndex:0];
        width3 = [v71 width];
        v77 = __PAIR64__([v71 height], width3);
        [v63 setFragmentBytes:&v77 length:8 atIndex:1];
        [v63 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v63 endEncoding];
      }

      else
      {
        v63 = v54;
        v65 = v72;
      }

      [commandBuffer setLabel:@"FigColorCube::run"];
      [commandBuffer commit];

      v67 = 0;
      v27 = v75;
      goto LABEL_40;
    }

    *&v40 = x * 2.0 + -1.0;
    *&v41 = y * -2.0 + 1.0;
    v77 = __PAIR64__(v41, v40);
    v42 = (x + width) * 2.0 + -1.0;
    v78 = v42;
    v79 = v41;
    v43 = (y + height) * -2.0 + 1.0;
    v80 = v40;
    v81 = v43;
    v82 = v42;
    v83 = v43;
    device = [(FigMetalContext *)self->_metal device];
    v39 = [device newBufferWithBytes:&v77 length:32 options:0];

    if (v39)
    {
      colorAttachments3 = [renderPassDescriptor colorAttachments];
      v46 = [colorAttachments3 objectAtIndexedSubscript:0];
      [v46 setLoadAction:1];

      colorAttachments4 = [renderPassDescriptor colorAttachments];
      v48 = [colorAttachments4 objectAtIndexedSubscript:0];
      [v48 setStoreAction:1];

      goto LABEL_28;
    }

    sub_2957F2370(&v77, v85);
    v67 = v85[0];
    v27 = v75;
    v25 = v76;
  }

  else
  {
    sub_2957F241C(&v77);
    v67 = v77;
    v25 = v76;
  }

  v59 = v71;
  v65 = v72;
LABEL_40:

LABEL_41:
  return v67;
}

- (id)createPipelineStateWithVertexFunctionName:(id)name fragmentName:(id)fragmentName isLuma:(BOOL)luma useBgCube:(BOOL)cube manyFgCubes:(BOOL)cubes colorSpace:(int)space mixInGammaDomain:(BOOL)domain
{
  nameCopy = name;
  fragmentNameCopy = fragmentName;
  lumaCopy = luma;
  cubeCopy = cube;
  cubesCopy = cubes;
  spaceCopy = space;
  domainCopy = domain;
  v17 = objc_opt_new();
  v18 = v17;
  if (!v17)
  {
    sub_2957F294C();
    v20 = 0;
LABEL_13:
    v31 = 0;
LABEL_15:
    v34 = 0;
    goto LABEL_10;
  }

  [v17 setConstantValue:&lumaCopy type:53 atIndex:1];
  [v18 setConstantValue:&byte_2A18BA3F0 type:53 atIndex:2];
  [v18 setConstantValue:&cubeCopy type:53 atIndex:3];
  [v18 setConstantValue:&cubesCopy type:53 atIndex:4];
  [v18 setConstantValue:&spaceCopy type:29 atIndex:5];
  [v18 setConstantValue:&domainCopy type:53 atIndex:7];
  v19 = objc_opt_new();
  v20 = v19;
  if (!v19)
  {
    sub_2957F28A8();
    goto LABEL_13;
  }

  attributes = [v19 attributes];
  v22 = [attributes objectAtIndexedSubscript:0];
  [v22 setFormat:29];

  attributes2 = [v20 attributes];
  v24 = [attributes2 objectAtIndexedSubscript:0];
  [v24 setBufferIndex:0];

  attributes3 = [v20 attributes];
  v26 = [attributes3 objectAtIndexedSubscript:0];
  [v26 setOffset:0];

  layouts = [v20 layouts];
  v28 = [layouts objectAtIndexedSubscript:0];
  [v28 setStride:8];

  if (byte_2A18BA3F0)
  {
    if (lumaCopy)
    {
      yuvFormat = 10;
    }

    else
    {
      yuvFormat = 30;
    }
  }

  else
  {
    yuvFormat = self->_yuvFormat;
  }

  v30 = objc_opt_new();
  v31 = v30;
  if (!v30)
  {
    sub_2957F2804();
    goto LABEL_15;
  }

  [v30 setPixelFormat:yuvFormat];
  metal = self->_metal;
  v37 = v31;
  v33 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v37 count:1];
  v34 = [(FigMetalContext *)metal renderPipelineStateForVertexFunction:nameCopy vertexDescriptor:v20 fragmentFunction:fragmentNameCopy constants:v18 colorAttachmentDescriptorArrray:v33];

LABEL_10:
  v35 = v34;

  return v34;
}

- (int)createPipelineStatesForCubeConversionWithVertexFunctionName:(id)name
{
  nameCopy = name;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  cubeConvert = self->_cubeConvert;
  v9 = 1;
  while (1)
  {
    v10 = v7;
    v11 = v9;
    v30 = v5;
    v7 = objc_opt_new();

    if (!v7)
    {
      sub_2957F2B54(&v30, &v31);
      v27 = v31;
      goto LABEL_7;
    }

    [v7 setConstantValue:&v30 type:53 atIndex:6];
    v12 = objc_opt_new();
    v13 = v12;
    if (!v12)
    {
      sub_2957F2AA8(&v31);
      goto LABEL_11;
    }

    attributes = [v12 attributes];
    v15 = [attributes objectAtIndexedSubscript:0];
    [v15 setFormat:29];

    attributes2 = [v13 attributes];
    v17 = [attributes2 objectAtIndexedSubscript:0];
    [v17 setBufferIndex:0];

    attributes3 = [v13 attributes];
    v19 = [attributes3 objectAtIndexedSubscript:0];
    [v19 setOffset:0];

    layouts = [v13 layouts];
    v21 = [layouts objectAtIndexedSubscript:0];
    [v21 setStride:8];

    v22 = objc_opt_new();
    if (!v22)
    {
      break;
    }

    [v22 setPixelFormat:70];
    metal = self->_metal;
    v29 = v22;
    v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v29 count:1];
    v25 = [(FigMetalContext *)metal renderPipelineStateForVertexFunction:nameCopy vertexDescriptor:v13 fragmentFunction:@"cubeColorConvertFrag" constants:v7 colorAttachmentDescriptorArrray:v24];
    v26 = cubeConvert[v5];
    cubeConvert[v5] = v25;

    v9 = 0;
    v5 = 1;
    v6 = v22;
    if ((v11 & 1) == 0)
    {
      v27 = 0;
      v6 = v22;
      goto LABEL_7;
    }
  }

  sub_2957F29FC(&v31);
  v6 = 0;
LABEL_11:
  v27 = v31;

LABEL_7:
  return v27;
}

- (int)createPipelineStatesWithFragmentName:(id)name vertexFunctionName:(id)functionName
{
  nameCopy = name;
  v39 = 0;
  functionNameCopy = functionName;
  colorCubePipelineState = self->_colorCubePipelineState;
  v33 = 0;
  selfCopy = self;
  colorCubePipelineStateUV = self->_colorCubePipelineStateUV;
  colorCubePipelineStateY = self->_colorCubePipelineStateY;
  v7 = 1;
  while (2)
  {
    v8 = 0;
    v9 = 0;
    v29 = v7;
    v10 = 1;
    do
    {
      v11 = 0;
      v34 = v10;
      v12 = 1;
      v37 = colorCubePipelineStateY[v9][v33];
      v36 = colorCubePipelineStateUV[v9][v33];
      v35 = colorCubePipelineState[v9][v33];
      while (2)
      {
        v13 = 0;
        v14 = 0;
        v15 = v37 + 16 * v11;
        v38 = v12;
        v16 = 1;
        v17 = v36 + 16 * v11;
        v18 = v35 + 16 * v11;
        do
        {
          v19 = v16;
          v20 = byte_2A18BA3F0;
          LOBYTE(v28) = v13 & 1;
          v21 = [(FigColorCubeMetalFilter *)selfCopy createPipelineStateWithVertexFunctionName:functionNameCopy fragmentName:nameCopy isLuma:1 useBgCube:v8 & 1 manyFgCubes:v39 & 1 colorSpace:v11 mixInGammaDomain:v28];
          if (v20 == 1)
          {
            v22 = *(v15 + 8 * v14);
            *(v15 + 8 * v14) = v21;

            if (!*(v15 + 8 * v14))
            {
              sub_2957F2D58(&v44);
              v26 = v44;
              goto LABEL_17;
            }

            LOBYTE(v28) = v13;
            v23 = [(FigColorCubeMetalFilter *)selfCopy createPipelineStateWithVertexFunctionName:functionNameCopy fragmentName:nameCopy isLuma:0 useBgCube:v8 & 1 manyFgCubes:v39 & 1 colorSpace:v11 mixInGammaDomain:v28];
            v24 = *(v17 + 8 * v14);
            *(v17 + 8 * v14) = v23;

            if (!*(v17 + 8 * v14))
            {
              sub_2957F2CAC(&v43);
              v26 = v43;
              goto LABEL_17;
            }
          }

          else
          {
            v25 = *(v18 + 8 * v14);
            *(v18 + 8 * v14) = v21;

            if (!*(v18 + 8 * v14))
            {
              sub_2957F2C00(&v42);
              v26 = v42;
              goto LABEL_17;
            }
          }

          v16 = 0;
          v13 = 1;
          v14 = 1;
        }

        while ((v19 & 1) != 0);
        v12 = 0;
        v11 = 1;
        if (v38)
        {
          continue;
        }

        break;
      }

      v10 = 0;
      v8 = 1;
      v9 = 1;
    }

    while ((v34 & 1) != 0);
    v7 = 0;
    v39 = 1;
    v33 = 1;
    if (v29)
    {
      continue;
    }

    break;
  }

  v26 = 0;
LABEL_17:

  return v26;
}

- (void)prewarmMetalInternalShader
{
  selfCopy = self;
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  [v6 setWidth:2];
  [v6 setHeight:2];
  [v6 setDepth:1];
  [v6 setArrayLength:1];
  [v6 setUsage:7];
  if ((byte_2A18BA3F0 & 1) == 0)
  {
    pixelBufferOut = 0;
    v38 = *MEMORY[0x29EDB96D0];
    v39 = MEMORY[0x29EDB8EA0];
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    CVPixelBufferCreate(*MEMORY[0x29EDB8ED8], 8uLL, 8uLL, 0x34323066u, v7, &pixelBufferOut);
    if (!pixelBufferOut)
    {
      sub_2957F2E04(v7);
      goto LABEL_13;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [&unk_2A1CA8AE8 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v31 = v7;
      v32 = selfCopy;
      v10 = commandBuffer;
      v11 = 0;
      v12 = 0;
      v13 = *v35;
      do
      {
        v14 = 0;
        v15 = v11;
        v16 = v12;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(&unk_2A1CA8AE8);
          }

          v17 = *(*(&v34 + 1) + 8 * v14);
          [v6 setTextureType:2];
          [v6 setPixelFormat:objc_msgSend(v17, "intValue")];
          device = [(FigMetalContext *)v32->_metal device];
          v11 = [device newTextureWithDescriptor:v6 iosurface:CVPixelBufferGetIOSurface(pixelBufferOut) plane:0];

          colorAttachments = [v5 colorAttachments];
          v20 = [colorAttachments objectAtIndexedSubscript:0];
          [v20 setTexture:v11];

          v12 = [v10 renderCommandEncoderWithDescriptor:v5];

          [v12 endEncoding];
          ++v14;
          v15 = v11;
          v16 = v12;
        }

        while (v9 != v14);
        v9 = [&unk_2A1CA8AE8 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v9);

      commandBuffer = v10;
      selfCopy = v32;
      v7 = v31;
    }

    CFRelease(pixelBufferOut);
  }

  [v6 setTextureType:3];
  [v6 setPixelFormat:70];
  device2 = [(FigMetalContext *)selfCopy->_metal device];
  v22 = [device2 newTextureWithDescriptor:v6];
  colorAttachments2 = [v5 colorAttachments];
  v24 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v24 setTexture:v22];

  v25 = [commandBuffer renderCommandEncoderWithDescriptor:v5];
  [v25 endEncoding];
  [v6 setTextureType:7];
  [v6 setPixelFormat:70];
  device3 = [(FigMetalContext *)selfCopy->_metal device];
  v27 = [device3 newTextureWithDescriptor:v6];
  colorAttachments3 = [v5 colorAttachments];
  v29 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v29 setTexture:v27];

  v30 = [commandBuffer renderCommandEncoderWithDescriptor:v5];

  [v30 endEncoding];
  [(FigMetalContext *)selfCopy->_metal prewarmInternalMetalShadersForFormatsList:&unk_2A1CA8B48];

LABEL_13:
}

- (int)createKernels
{
  v3 = [(FigColorCubeMetalFilter *)self createPipelineStatesWithFragmentName:@"colorCubeFragment2D" vertexFunctionName:@"colorCubeVertex"];
  if (v3)
  {
    v5 = v3;
    sub_2957F2E94();
  }

  else
  {
    v4 = [(FigColorCubeMetalFilter *)self createPipelineStatesForCubeConversionWithVertexFunctionName:@"colorCubeVertex"];
    if (v4)
    {
      v5 = v4;
      sub_2957F2F0C();
    }

    else
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = sub_2957F14B8;
      block[3] = &unk_29EDDB530;
      block[4] = self;
      if (qword_2A18BA3E8 != -1)
      {
        dispatch_once(&qword_2A18BA3E8, block);
      }

      return 0;
    }
  }

  return v5;
}

- (CGRect)targetRectangle
{
  x = self->_targetRectangle.origin.x;
  y = self->_targetRectangle.origin.y;
  width = self->_targetRectangle.size.width;
  height = self->_targetRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end