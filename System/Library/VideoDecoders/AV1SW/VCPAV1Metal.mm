@interface VCPAV1Metal
- (id).cxx_construct;
- (id)compileFunction:(id)function constantValues:(id)values;
- (id)dstTexture:(__CVBuffer *)texture forPlane:(int)plane bitdepth:(int)bitdepth;
- (id)srcTexture:(__CVBuffer *)texture forPlane:(int)plane bitdepth:(int)bitdepth;
- (int)applyFilmGrain:(void *)grain forPicture:(Dav1dPicture *)picture toPixelBuffer:(__CVBuffer *)buffer;
- (int)compileBlitForPicture:(Dav1dPicture *)picture andPixelBuffer:(__CVBuffer *)buffer;
- (int)compileFilmGrainForPicture:(Dav1dPicture *)picture andPixelBuffer:(__CVBuffer *)buffer;
- (int)copyPicture:(Dav1dPicture *)picture toPixelBuffer:(__CVBuffer *)buffer;
- (int)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)openDevice;
- (void)encodeBlit:(id)blit forPicture:(Dav1dPicture *)picture toPixelBuffer:(__CVBuffer *)buffer plane:(int)plane;
- (void)updatePictureFormat:(Dav1dPicture *)format pixelBuffer:(__CVBuffer *)buffer;
@end

@implementation VCPAV1Metal

- (id).cxx_construct
{
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  return self;
}

- (int)applyFilmGrain:(void *)grain forPicture:(Dav1dPicture *)picture toPixelBuffer:(__CVBuffer *)buffer
{
  v68 = *MEMORY[0x277D85DE8];
  var18 = picture->var18;
  var1 = picture->var1;
  v11 = [(VCPAV1Metal *)self compileFilmGrainForPicture:picture andPixelBuffer:buffer];
  if (v11)
  {
    return v11;
  }

  v54 = var18;
  v12 = [(MTLBuffer *)self->_grainPatch contents:sub_27758965C(v59];
  sub_27758955C(grain, v59);
  v13 = grain + 0x8000;
  (*(grain + 4598))(v59, grain, v12);
  contents = [(MTLBuffer *)self->_scalingLUT contents];
  v15 = [(MTLBuffer *)self->_scalingLUT length];
  v16 = v60 >> 13;
  v17 = 768 << v16;
  if (v15 == 768 << v16)
  {
    if (v60 >> 13)
    {
      v18 = 0;
      do
      {
        (*(v13 + 503))(v59, buf, v18);
        v19 = 0;
        v20 = v60 >> 13;
        do
        {
          v21 = v19 >> v20;
          if (!v20 || v21 == 255)
          {
            LOBYTE(v22) = buf[v21];
          }

          else
          {
            v22 = buf[v21] + (((1 << (v20 - 1)) + (buf[v21 + 1] - buf[v21]) * (v19 - (v21 << v20))) >> v20);
          }

          *contents++ = v22;
          ++v19;
          v20 = v60 >> 13;
        }

        while (v19 < 256 << v20);
        v18 = (v18 + 1);
      }

      while (v18 != 3);
    }

    else
    {
      for (i = 0; i != 3; ++i)
      {
        (*(v13 + 503))(v59, contents, i);
        contents += 256;
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "Invalid length %zu for bitdepth %d, expected %d\n", v15, v16 | 8, v17);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v62 = v15;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = (v60 >> 13) | 8;
      HIWORD(v63) = 1024;
      LODWORD(v64) = v17;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid length %zu for bitdepth %d, expected %d", buf, 0x18u);
    }
  }

  (*(v13 + 504))([(MTLBuffer *)self->_offsets contents], self->_offsetsStride, ((picture->var4.var0 + 31) >> 5), ((picture->var4.var1 + 31) >> 5), *picture->var1);
  v24 = picture->var1;
  v25 = picture->var4.var3 - 8;
  v26 = (256 << (LOBYTE(picture->var4.var3) - 8)) - 1;
  *buf = 0;
  LODWORD(v62) = v26;
  HIDWORD(v62) = v26;
  if (*(v24 + 54))
  {
    *buf = 16 << v25;
    LODWORD(v62) = 235 << v25;
    if (*(picture->var0 + 6))
    {
      v27 = 240 << v25;
    }

    else
    {
      v27 = 235 << v25;
    }

    HIDWORD(v62) = v27;
  }

  v28 = *(v24 + 53);
  LODWORD(v63) = *(v24 + 22);
  HIDWORD(v63) = v28;
  v64 = *(v24 + 36);
  v65 = *(v24 + 11);
  v66 = vextq_s8(*(v24 + 188), *(v24 + 188), 8uLL);
  v67 = vshl_u32(*(v24 + 204), vdup_n_s32(v25));
  if (*(var1 + 10) > 0 || *(var1 + 11) > 0)
  {
    goto LABEL_24;
  }

  if (!*(var1 + 9))
  {
    v29 = 0;
    goto LABEL_25;
  }

  if (*(var1 + 54))
  {
LABEL_24:
    v29 = 1;
  }

  else
  {
    v29 = *(var1 + 1) != 0;
  }

LABEL_25:
  gpuBitdepth = self->_gpuBitdepth;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v31 = commandBuffer;
  if (*(var1 + 1) != 0 || v29)
  {
    blitCommandEncoder = [commandBuffer blitCommandEncoder];
    v33 = blitCommandEncoder;
    if (*(var1 + 1))
    {
      *v57 = vdupq_n_s64(0x40uLL);
      v58 = 1;
      grainPatch = self->_grainPatch;
      grainTextureY = self->_grainTextureY;
      v55 = 0uLL;
      v56 = 0;
      [blitCommandEncoder copyFromBuffer:grainPatch sourceOffset:0 sourceBytesPerRow:128 sourceBytesPerImage:0x2000 sourceSize:v57 toTexture:grainTextureY destinationSlice:0 destinationLevel:0 destinationOrigin:&v55];
    }

    if (v29)
    {
      v36 = self->_grainPatch;
      *v57 = vdupq_n_s64(0x40uLL);
      v58 = 1;
      grainTextureUV = self->_grainTextureUV;
      v55 = 0uLL;
      v56 = 0;
      [v33 copyFromBuffer:v36 sourceOffset:0x2000 sourceBytesPerRow:256 sourceBytesPerImage:0x4000 sourceSize:v57 toTexture:grainTextureUV destinationSlice:0 destinationLevel:0 destinationOrigin:&v55];
    }

    [v33 endEncoding];
  }

  [v31 computeCommandEncoder];
  v39 = v38 = v54;
  v40 = [(VCPAV1Metal *)self srcTexture:*v54 forPlane:0 bitdepth:picture->var4.var3];
  if (*(var1 + 1))
  {
    v41 = [(VCPAV1Metal *)self dstTexture:buffer forPlane:0 bitdepth:picture->var4.var3];
    width = [v41 width];
    height = [v41 height];
    [v39 setComputePipelineState:self->_filmGrainLuma];
    [v39 setTexture:v41 atIndex:0];
    [v39 setTexture:v40 atIndex:1];
    [v39 setTexture:self->_offsetsTex atIndex:2];
    [v39 setTexture:self->_grainTextureY atIndex:3];
    [v39 setBytes:buf length:56 atIndex:0];
    [v39 setBuffer:self->_scalingLUT offset:0 atIndex:1];
    if (self->_supportsNonUniformThreadgroup)
    {
      *v57 = width;
      *&v57[8] = height;
      v58 = 1;
      v55 = vdupq_n_s64(0x10uLL);
      v56 = 1;
      [v39 dispatchThreads:v57 threadsPerThreadgroup:&v55];
    }

    else
    {
      *v57 = (width + 15) >> 4;
      *&v57[8] = (height + 15) >> 4;
      v58 = 1;
      v55 = vdupq_n_s64(0x10uLL);
      v56 = 1;
      [v39 dispatchThreadgroups:v57 threadsPerThreadgroup:&v55];
    }

    v38 = v54;
  }

  else
  {
    [(VCPAV1Metal *)self encodeBlit:v39 forPicture:picture toPixelBuffer:buffer plane:0];
  }

  if (picture->var4.var2)
  {
    if (v29)
    {
      v44 = [(VCPAV1Metal *)self srcTexture:v38[1] forPlane:1 bitdepth:picture->var4.var3];
      v45 = [(VCPAV1Metal *)self srcTexture:v38[2] forPlane:2 bitdepth:picture->var4.var3];
      v46 = [(VCPAV1Metal *)self dstTexture:buffer forPlane:1 bitdepth:picture->var4.var3];
      width2 = [v46 width];
      height2 = [v46 height];
      [v39 setComputePipelineState:self->_filmGrainChroma];
      [v39 setTexture:v46 atIndex:0];
      [v39 setTexture:v40 atIndex:1];
      [v39 setTexture:self->_offsetsTex atIndex:2];
      [v39 setTexture:self->_grainTextureUV atIndex:3];
      [v39 setTexture:v44 atIndex:4];
      [v39 setTexture:v45 atIndex:5];
      [v39 setBytes:buf length:56 atIndex:0];
      [v39 setBuffer:self->_scalingLUT offset:256 << (gpuBitdepth - 8) atIndex:1];
      [v39 setBuffer:self->_scalingLUT offset:512 << (gpuBitdepth - 8) atIndex:2];
      if (self->_supportsNonUniformThreadgroup)
      {
        *v57 = width2;
        *&v57[8] = height2;
        v58 = 1;
        v55 = vdupq_n_s64(0x10uLL);
        v56 = 1;
        [v39 dispatchThreads:v57 threadsPerThreadgroup:&v55];
      }

      else
      {
        *v57 = (width2 + 15) >> 4;
        *&v57[8] = (height2 + 15) >> 4;
        v58 = 1;
        v55 = vdupq_n_s64(0x10uLL);
        v56 = 1;
        [v39 dispatchThreadgroups:v57 threadsPerThreadgroup:&v55];
      }
    }

    else
    {
      [(VCPAV1Metal *)self encodeBlit:v39 forPicture:picture toPixelBuffer:buffer plane:1];
    }
  }

  [v39 endEncoding];
  [v31 commit];
  [v31 waitUntilCompleted];
  error = [v31 error];
  v50 = error == 0;

  if (v50)
  {
    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      error2 = [v31 error];
      *v57 = 138412290;
      *&v57[4] = error2;
      _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %@ in metal execution", v57, 0xCu);
    }

    v11 = -12911;
  }

  return v11;
}

- (int)copyPixelBuffer:(__CVBuffer *)buffer toPixelBuffer:(__CVBuffer *)pixelBuffer
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  selfCopy2 = self;
  openDevice = [(VCPAV1Metal *)self openDevice];
  if (!openDevice)
  {
    if (!selfCopy->_blitKernelUnorm)
    {
      v7 = objc_opt_new();
      [v7 setConstantValue:&selfCopy->_supportsNonUniformThreadgroup type:33 atIndex:0];
      v8 = [(VCPAV1Metal *)selfCopy2 compileFunction:@"BlitKernel_Unorm" constantValues:v7];
      selfCopy = selfCopy2;
      blitKernelUnorm = selfCopy2->_blitKernelUnorm;
      selfCopy2->_blitKernelUnorm = v8;

      *&selfCopy->_onePixelPerWrite = 1;
    }

    v28[0] = &bufferCopy;
    v28[1] = &selfCopy2;
    commandBuffer = [(MTLCommandQueue *)selfCopy->_commandQueue commandBuffer];
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v13 = sub_2775846D4(PixelFormatType);
    v14 = sub_277590BFC(v28, 0);
    v25 = sub_277590BFC(v28, 1uLL);
    v15 = [(VCPAV1Metal *)selfCopy2 dstTexture:pixelBuffer forPlane:0 bitdepth:v13];
    v16 = [(VCPAV1Metal *)selfCopy2 dstTexture:pixelBuffer forPlane:1 bitdepth:v13];
    width = [v15 width];
    height = [v15 height];
    width2 = [v16 width];
    height2 = [v16 height];
    [computeCommandEncoder setComputePipelineState:selfCopy2->_blitKernelUnorm];
    [computeCommandEncoder setTexture:v15 atIndex:0];
    [computeCommandEncoder setTexture:v14 atIndex:1];
    *&buf = width;
    *(&buf + 1) = height;
    v32 = 1;
    v26 = vdupq_n_s64(0x10uLL);
    v27 = 1;
    [computeCommandEncoder dispatchThreads:&buf threadsPerThreadgroup:&v26];
    if (CVPixelBufferGetPlaneCount(pixelBuffer) >= 2)
    {
      [computeCommandEncoder setComputePipelineState:selfCopy2->_blitKernelUnorm];
      [computeCommandEncoder setTexture:v16 atIndex:0];
      [computeCommandEncoder setTexture:v25 atIndex:1];
      *&buf = width2;
      *(&buf + 1) = height2;
      v32 = 1;
      v26 = vdupq_n_s64(0x10uLL);
      v27 = 1;
      [computeCommandEncoder dispatchThreads:&buf threadsPerThreadgroup:&v26];
    }

    [computeCommandEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    error = [commandBuffer error];
    v22 = error == 0;

    if (v22)
    {
      openDevice = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        error2 = [commandBuffer error];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = error2;
        _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %@ in metal execution", &buf, 0xCu);
      }

      openDevice = -12911;
    }
  }

  return openDevice;
}

- (int)copyPicture:(Dav1dPicture *)picture toPixelBuffer:(__CVBuffer *)buffer
{
  v16 = *MEMORY[0x277D85DE8];
  var18 = picture->var18;
  v8 = [VCPAV1Metal compileBlitForPicture:"compileBlitForPicture:andPixelBuffer:" andPixelBuffer:?];
  if (!v8)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if ((var18[24] & 1) == 0)
    {
      [(VCPAV1Metal *)self encodeBlit:computeCommandEncoder forPicture:picture toPixelBuffer:buffer plane:0];
    }

    if (picture->var4.var2)
    {
      [(VCPAV1Metal *)self encodeBlit:computeCommandEncoder forPicture:picture toPixelBuffer:buffer plane:1];
    }

    [computeCommandEncoder endEncoding];
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
    error = [commandBuffer error];

    if (error)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        error2 = [commandBuffer error];
        v14 = 138412290;
        v15 = error2;
        _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error %@ in metal execution", &v14, 0xCu);
      }

      v8 = -12911;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeBlit:(id)blit forPicture:(Dav1dPicture *)picture toPixelBuffer:(__CVBuffer *)buffer plane:(int)plane
{
  blitCopy = blit;
  var18 = picture->var18;
  if (plane)
  {
    v12 = [(VCPAV1Metal *)self srcTexture:var18[1] forPlane:1 bitdepth:picture->var4.var3];
    v13 = [(VCPAV1Metal *)self srcTexture:var18[2] forPlane:2 bitdepth:picture->var4.var3];
    v14 = [(VCPAV1Metal *)self dstTexture:buffer forPlane:1 bitdepth:picture->var4.var3];
    width = [v14 width];
    height = [v14 height];
    [blitCopy setComputePipelineState:self->_blitKernelChroma];
    [blitCopy setTexture:v14 atIndex:0];
    [blitCopy setTexture:v12 atIndex:1];
    [blitCopy setTexture:v13 atIndex:2];
    if (self->_supportsNonUniformThreadgroup)
    {
      v21 = width;
      v22 = height;
      v23 = 1;
      v19 = vdupq_n_s64(0x10uLL);
      v20 = 1;
      [blitCopy dispatchThreads:&v21 threadsPerThreadgroup:&v19];
    }

    else
    {
      v21 = (width + 15) >> 4;
      v22 = (height + 15) >> 4;
      v23 = 1;
      v19 = vdupq_n_s64(0x10uLL);
      v20 = 1;
      [blitCopy dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
    }
  }

  else
  {
    v12 = [(VCPAV1Metal *)self srcTexture:*var18 forPlane:0 bitdepth:picture->var4.var3];
    v13 = [(VCPAV1Metal *)self dstTexture:buffer forPlane:0 bitdepth:picture->var4.var3];
    width2 = [v13 width];
    height2 = [v13 height];
    [blitCopy setComputePipelineState:self->_blitKernelLuma];
    [blitCopy setTexture:v13 atIndex:0];
    [blitCopy setTexture:v12 atIndex:1];
    if (self->_supportsNonUniformThreadgroup)
    {
      v21 = width2;
      v22 = height2;
      v23 = 1;
      v19 = vdupq_n_s64(0x10uLL);
      v20 = 1;
      [blitCopy dispatchThreads:&v21 threadsPerThreadgroup:&v19];
    }

    else
    {
      v21 = (width2 + 15) >> 4;
      v22 = (height2 + 15) >> 4;
      v23 = 1;
      v19 = vdupq_n_s64(0x10uLL);
      v20 = 1;
      [blitCopy dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
    }
  }
}

- (id)dstTexture:(__CVBuffer *)texture forPlane:(int)plane bitdepth:(int)bitdepth
{
  v23[1] = *MEMORY[0x277D85DE8];
  planeCopy = plane;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(texture, plane);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(texture, planeCopy);
  v12 = 13;
  if (plane)
  {
    v12 = 33;
  }

  if (self->_integerWrites)
  {
    v13 = 23;
    if (plane)
    {
      v13 = 63;
    }

    if (bitdepth > 8)
    {
      v12 = v13;
    }

    v14 = 113;
    if (bitdepth == 8)
    {
      v14 = 73;
    }

    v15 = (WidthOfPlane + 1) >> 1;
    if (!plane)
    {
      v15 = (WidthOfPlane + 3) >> 2;
    }

    if (self->_onePixelPerWrite)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    if (!self->_onePixelPerWrite)
    {
      WidthOfPlane = v15;
    }
  }

  else
  {
    v16 = sub_277590D84(texture, plane);
  }

  v17 = plane != 0;
  v22 = *MEMORY[0x277CC4D50];
  v23[0] = &unk_2886648D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  image = 0;
  if (CVMetalTextureCacheCreateTextureFromImage(0, self->_textureCacheDst[v17].value_, texture, v18, v16, WidthOfPlane, HeightOfPlane, planeCopy, &image))
  {
    v19 = 0;
  }

  else
  {
    v19 = CVMetalTextureGetTexture(image);
  }

  sub_277584EB0(&image);

  return v19;
}

- (id)srcTexture:(__CVBuffer *)texture forPlane:(int)plane bitdepth:(int)bitdepth
{
  v21[1] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(texture);
  Height = CVPixelBufferGetHeight(texture);
  v11 = 23;
  if (bitdepth == 8)
  {
    v11 = 13;
  }

  v12 = 63;
  if (bitdepth == 8)
  {
    v12 = 33;
  }

  v13 = (Width + 1) >> 1;
  v14 = 113;
  if (bitdepth == 8)
  {
    v14 = 73;
  }

  if (!plane)
  {
    v12 = v14;
    v13 = (Width + 3) >> 2;
  }

  if (self->_onePixelPerWrite)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (!self->_onePixelPerWrite)
  {
    Width = v13;
  }

  v20 = *MEMORY[0x277CC4D50];
  v21[0] = &unk_2886648C0;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  image = 0;
  if (CVMetalTextureCacheCreateTextureFromImage(0, self->_textureCacheSrc[plane > 0].value_, texture, v16, v15, Width, Height, 0, &image))
  {
    v17 = 0;
  }

  else
  {
    v17 = CVMetalTextureGetTexture(image);
  }

  sub_277584EB0(&image);

  return v17;
}

- (int)compileFilmGrainForPicture:(Dav1dPicture *)picture andPixelBuffer:(__CVBuffer *)buffer
{
  openDevice = [(VCPAV1Metal *)self openDevice];
  if (openDevice)
  {
    return openDevice;
  }

  openDevice = [(VCPAV1Metal *)self compileBlitForPicture:picture andPixelBuffer:buffer];
  if (openDevice)
  {
    return openDevice;
  }

  var0 = picture->var4.var0;
  if (self->_width == var0)
  {
    var1 = picture->var4.var1;
    if (self->_height == var1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    var1 = picture->var4.var1;
  }

  v12 = var0 + 31;
  v13 = var1 + 31;
  v14 = [(MTLDevice *)self->_device minimumLinearTextureAlignmentForPixelFormat:73];
  self->_offsetsStride = ((v14 >> 2) + (v12 >> 5) - 1) & -(v14 >> 2);
  v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:73 width:v12 >> 5 height:v13 >> 5 mipmapped:0];
  [v15 setStorageMode:0];
  v16 = [(MTLDevice *)self->_device newBufferWithLength:4 * self->_offsetsStride * (v13 >> 5) options:0];
  offsets = self->_offsets;
  self->_offsets = v16;

  v18 = [(MTLBuffer *)self->_offsets newTextureWithDescriptor:v15 offset:0 bytesPerRow:4 * self->_offsetsStride];
  offsetsTex = self->_offsetsTex;
  self->_offsetsTex = v18;

  self->_width = picture->var4.var0;
  self->_height = picture->var4.var1;

LABEL_10:
  if (self->_filmGrainLuma && self->_filmGrainChroma)
  {
    return 0;
  }

  var2 = picture->var4.var2;
  v38 = var2 != 3;
  v39 = var2 == 1;
  v21 = objc_opt_new();
  [v21 setConstantValue:&self->_supportsNonUniformThreadgroup type:33 atIndex:0];
  [v21 setConstantValue:&self->_gpuBitdepth type:33 atIndex:1];
  [v21 setConstantValue:&v38 type:33 atIndex:2];
  [v21 setConstantValue:&v39 type:33 atIndex:3];
  if (self->_integerWrites)
  {
    v22 = [(VCPAV1Metal *)self compileFunction:@"FilmGrainLumaKernel_Uint" constantValues:v21];
    v23 = @"FilmGrainChromaKernel_Uint";
  }

  else
  {
    v22 = [(VCPAV1Metal *)self compileFunction:@"FilmGrainLumaKernel_Unorm" constantValues:v21];
    v23 = @"FilmGrainChromaKernel_Unorm";
  }

  filmGrainLuma = self->_filmGrainLuma;
  self->_filmGrainLuma = v22;

  v25 = [(VCPAV1Metal *)self compileFunction:v23 constantValues:v21];
  filmGrainChroma = self->_filmGrainChroma;
  self->_filmGrainChroma = v25;

  if (self->_filmGrainLuma && self->_filmGrainChroma)
  {
    v27 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:24 width:64 height:64 mipmapped:0];
    v28 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:64 width:64 height:64 mipmapped:0];
    [v27 setStorageMode:2];
    [v28 setStorageMode:2];
    [v27 setUsage:1];
    [v28 setUsage:1];
    v29 = [(MTLDevice *)self->_device newTextureWithDescriptor:v27];
    grainTextureY = self->_grainTextureY;
    self->_grainTextureY = v29;

    v31 = [(MTLDevice *)self->_device newTextureWithDescriptor:v28];
    grainTextureUV = self->_grainTextureUV;
    self->_grainTextureUV = v31;

    v33 = [(MTLDevice *)self->_device newBufferWithLength:24576 options:0];
    grainPatch = self->_grainPatch;
    self->_grainPatch = v33;

    v35 = [(MTLDevice *)self->_device newBufferWithLength:3 * (256 << (self->_gpuBitdepth - 8)) options:0];
    scalingLUT = self->_scalingLUT;
    self->_scalingLUT = v35;

    v8 = 0;
  }

  else
  {
    fwrite("Unable to compile blit kernels\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to compile blit kernels", v37, 2u);
    }

    v8 = -12911;
  }

  return v8;
}

- (int)compileBlitForPicture:(Dav1dPicture *)picture andPixelBuffer:(__CVBuffer *)buffer
{
  openDevice = [(VCPAV1Metal *)self openDevice];
  if (!openDevice)
  {
    [(VCPAV1Metal *)self updatePictureFormat:picture pixelBuffer:buffer];
    if (self->_blitKernelLuma && self->_blitKernelChroma)
    {
      return 0;
    }

    else
    {
      v8 = objc_opt_new();
      [v8 setConstantValue:&self->_supportsNonUniformThreadgroup type:33 atIndex:0];
      [v8 setConstantValue:&self->_gpuBitdepth type:33 atIndex:1];
      if (self->_integerWrites)
      {
        if (self->_onePixelPerWrite)
        {
          v9 = [(VCPAV1Metal *)self compileFunction:@"BlitLumaKernel_Uint" constantValues:v8];
          v10 = @"BlitChromaKernel_Uint";
        }

        else
        {
          v9 = [(VCPAV1Metal *)self compileFunction:@"BlitLumaKernel_UintPacked" constantValues:v8];
          v10 = @"BlitChromaKernel_UintPacked";
        }
      }

      else
      {
        v9 = [(VCPAV1Metal *)self compileFunction:@"BlitLumaKernel_Unorm" constantValues:v8];
        v10 = @"BlitChromaKernel_Unorm";
      }

      blitKernelLuma = self->_blitKernelLuma;
      self->_blitKernelLuma = v9;

      v12 = [(VCPAV1Metal *)self compileFunction:v10 constantValues:v8];
      blitKernelChroma = self->_blitKernelChroma;
      self->_blitKernelChroma = v12;

      if (self->_blitKernelLuma && self->_blitKernelChroma)
      {
        openDevice = 0;
      }

      else
      {
        fwrite("Unable to compile blit kernels\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to compile blit kernels", v15, 2u);
        }

        openDevice = -12911;
      }
    }
  }

  return openDevice;
}

- (void)updatePictureFormat:(Dav1dPicture *)format pixelBuffer:(__CVBuffer *)buffer
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v7 = sub_277584BA4(PixelFormatType);
  var1 = format->var1;
  if (!*(var1 + 1) && !*(var1 + 10) && !*(var1 + 11))
  {
    if (!*(var1 + 54))
    {
      v9 = v7;
      goto LABEL_5;
    }

    v9 = v7;
    if (!*(var1 + 9))
    {
      goto LABEL_5;
    }
  }

  v9 = 1;
LABEL_5:
  v10 = v7 ^ 1;
  if (self->_gpuBitdepth != format->var4.var3 || self->_layout != format->var4.var2 || self->_onePixelPerWrite != v9 || self->_integerWrites != v10)
  {
    blitKernelLuma = self->_blitKernelLuma;
    self->_blitKernelLuma = 0;

    blitKernelChroma = self->_blitKernelChroma;
    self->_blitKernelChroma = 0;

    filmGrainLuma = self->_filmGrainLuma;
    self->_filmGrainLuma = 0;

    filmGrainChroma = self->_filmGrainChroma;
    self->_filmGrainChroma = 0;

    *&self->_gpuBitdepth = vrev64_s32(*&format->var4.var2);
    self->_onePixelPerWrite = v9;
    self->_integerWrites = v10;
  }
}

- (id)compileFunction:(id)function constantValues:(id)values
{
  v21 = *MEMORY[0x277D85DE8];
  functionCopy = function;
  valuesCopy = values;
  library = self->_library;
  if (!library)
  {
    v12 = 0;
    goto LABEL_14;
  }

  if (valuesCopy)
  {
    v16 = 0;
    v9 = [(MTLLibrary *)library newFunctionWithName:functionCopy constantValues:valuesCopy error:&v16];
    v10 = v16;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = functionCopy;
      _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to find kernel %@", buf, 0xCu);
    }

    v12 = 0;
    v13 = v10;
    goto LABEL_13;
  }

  v9 = [(MTLLibrary *)library newFunctionWithName:functionCopy];
  v10 = 0;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_4:
  device = self->_device;
  v15 = v10;
  v12 = [(MTLDevice *)device newComputePipelineStateWithFunction:v9 error:&v15];
  v13 = v15;

  if (!v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = functionCopy;
    v19 = 2112;
    v20 = v13;
    _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed compiling %@ with error %@", buf, 0x16u);
  }

LABEL_13:
LABEL_14:

  return v12;
}

- (int)openDevice
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->_openAttempted)
  {
    if (self->_library)
    {
      return 0;
    }

    else
    {
      return -12910;
    }
  }

  else
  {
    self->_openAttempted = 1;
    device = self->_device;
    if (device || (v5 = MTLCreateSystemDefaultDevice(), v6 = self->_device, self->_device = v5, v6, (device = self->_device) != 0))
    {
      if (([(MTLDevice *)device supportsFamily:3003]& 1) != 0 || ([(MTLDevice *)self->_device supportsFamily:2002]& 1) != 0)
      {
        v7 = 1;
      }

      else
      {
        v7 = [(MTLDevice *)self->_device supportsFamily:1004];
      }

      self->_supportsNonUniformThreadgroup = v7;
      self->_maximumTextureDimension = 0x2000;
      if (([(MTLDevice *)self->_device supportsFamily:1003]& 1) != 0 || ([(MTLDevice *)self->_device supportsFamily:2002]& 1) != 0)
      {
        self->_maximumTextureDimension = 0x4000;
        v8 = 0x3FFF;
      }

      else
      {
        v8 = self->_maximumTextureDimension - 1;
      }

      self->_maximumTextureDimension = v8;
      v9 = self->_device;
      vendorName = [(MTLDevice *)v9 vendorName];
      self->_broken444 = [vendorName containsString:@"Intel"];

      v11 = 0;
      v12 = 1;
      while (1)
      {
        v13 = v12;
        v14 = self->_device;
        v15 = &self->_textureCacheSrc[v11];
        if (v15->value_)
        {
          CFRelease(v15->value_);
          v15->value_ = 0;
        }

        v3 = CVMetalTextureCacheCreate(0, 0, v14, 0, &self->_textureCacheSrc[v11].value_);
        if (v3)
        {
          break;
        }

        v16 = self->_device;
        v17 = &self->_textureCacheDst[v11];
        if (v17->value_)
        {
          CFRelease(v17->value_);
          v17->value_ = 0;
        }

        v3 = CVMetalTextureCacheCreate(0, 0, v16, 0, &self->_textureCacheDst[v11].value_);
        if (v3)
        {
          break;
        }

        v12 = 0;
        v11 = 1;
        if ((v13 & 1) == 0)
        {
          newCommandQueue = [(MTLDevice *)self->_device newCommandQueue];
          commandQueue = self->_commandQueue;
          self->_commandQueue = newCommandQueue;

          if (self->_commandQueue)
          {
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = self->_device;
            v32 = 0;
            v22 = [(MTLDevice *)v21 newDefaultLibraryWithBundle:v20 error:&v32];
            v23 = v32;
            library = self->_library;
            self->_library = v22;

            if (self->_library)
            {
              v3 = 0;
            }

            else
            {
              v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/VideoDecoders/AV1SW.metallib"];
              v26 = self->_device;
              v31 = v23;
              v27 = [(MTLDevice *)v26 newLibraryWithURL:v25 error:&v31];
              v28 = v31;

              v29 = self->_library;
              self->_library = v27;

              if (self->_library)
              {
                fwrite("Using /System/Library/VideoDecoders/AV1SW.metallib\n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Using /System/Library/VideoDecoders/AV1SW.metallib", buf, 2u);
                }
              }

              if (self->_library)
              {
                v3 = 0;
              }

              else
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v34 = v28;
                  _os_log_error_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get metal library, error: %@", buf, 0xCu);
                }

                v3 = -12911;
              }

              v23 = v28;
            }
          }

          else
          {
            fwrite("Unable to get command queue\n\n", 0x1DuLL, 1uLL, *MEMORY[0x277D85DF8]);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get command queue\n", buf, 2u);
            }

            v3 = -12911;
          }

          break;
        }
      }
    }

    else
    {
      fwrite("Unable to get metal device\n\n", 0x1CuLL, 1uLL, *MEMORY[0x277D85DF8]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_27754B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get metal device\n", buf, 2u);
      }

      return -12911;
    }
  }

  return v3;
}

@end