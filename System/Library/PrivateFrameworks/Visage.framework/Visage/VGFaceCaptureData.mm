@interface VGFaceCaptureData
- (__n128)chromaticAdaptationMatrix;
- (__n128)depthIntrinsics;
- (__n128)setChromaticAdaptationMatrix:(__n128)matrix;
- (__n128)setDepthIntrinsics:(__n128)intrinsics;
- (__n128)setVideoIntrinsics:(__n128)intrinsics;
- (__n128)videoIntrinsics;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)saveAtPath:(id)path;
- (void)setDepth:(__CVBuffer *)depth;
- (void)setTimestamp:(id *)timestamp;
- (void)setYuvRectified:(__CVBuffer *)rectified;
@end

@implementation VGFaceCaptureData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setVideoIntrinsics:{*self->_anon_40, *&self->_anon_40[16], *&self->_anon_40[32]}];
  [v4 setDepthIntrinsics:{*self->_anon_70, *&self->_anon_70[16], *&self->_anon_70[32]}];
  [v4 setChromaticAdaptationMatrix:{*&self[1].super.isa, *&self[1]._depth, *&self[1]._allFaces}];
  [v4 setFace:self->_face];
  [v4 setAllFaces:self->_allFaces];
  timestamp = self->_timestamp;
  [v4 setTimestamp:&timestamp];
  IOSurfaceBackedPixelBufferCopy = vg::createIOSurfaceBackedPixelBufferCopy(self->_depth, v5);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__VGFaceCaptureData_copyWithZone___block_invoke;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v14[4] = IOSurfaceBackedPixelBufferCopy;
  v7 = MEMORY[0x2743B9AA0](v14);
  [v4 setDepth:IOSurfaceBackedPixelBufferCopy];
  v9 = vg::createIOSurfaceBackedPixelBufferCopy(self->_yuvRectified, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__VGFaceCaptureData_copyWithZone___block_invoke_2;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v13[4] = v9;
  v10 = MEMORY[0x2743B9AA0](v13);
  [v4 setYuvRectified:v9];
  v11 = v4;
  v10[2](v10);

  v7[2](v7);
  return v11;
}

- (void)saveAtPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pathCopy isDirectory:0];
  v6 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:self->_yuvRectified];
  v7 = objc_alloc(MEMORY[0x277CBF740]);
  v8 = [v7 initWithOptions:MEMORY[0x277CBEC10]];
  colorSpace = [v6 colorSpace];
  v10 = *MEMORY[0x277CBF9C8];
  v15 = 0;
  [v8 writePNGRepresentationOfImage:v6 toURL:v5 format:v10 colorSpace:colorSpace options:MEMORY[0x277CBEC10] error:&v15];
  v11 = v15;
  v12 = __VGLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " VGCaptureData write at %@ ", buf, 0xCu);
  }

  if (v11)
  {
    v13 = __VGLogSharedInstance();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_ERROR, " write error %@ ", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setYuvRectified:(__CVBuffer *)rectified
{
  CVPixelBufferRelease(self->_yuvRectified);
  self->_yuvRectified = rectified;

  CVPixelBufferRetain(rectified);
}

- (void)setDepth:(__CVBuffer *)depth
{
  CVPixelBufferRelease(self->_depth);
  self->_depth = depth;

  CVPixelBufferRetain(depth);
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_depth);
  CVPixelBufferRelease(self->_yuvRectified);
  v3.receiver = self;
  v3.super_class = VGFaceCaptureData;
  [(VGFaceCaptureData *)&v3 dealloc];
}

- (__n128)videoIntrinsics
{
  result = *(self + 64);
  v2 = *(self + 80);
  v3 = *(self + 96);
  return result;
}

- (__n128)setVideoIntrinsics:(__n128)intrinsics
{
  result[4] = a2;
  result[5] = intrinsics;
  result[6] = a4;
  return result;
}

- (__n128)depthIntrinsics
{
  result = *(self + 112);
  v2 = *(self + 128);
  v3 = *(self + 144);
  return result;
}

- (__n128)setDepthIntrinsics:(__n128)intrinsics
{
  result[7] = a2;
  result[8] = intrinsics;
  result[9] = a4;
  return result;
}

- (__n128)chromaticAdaptationMatrix
{
  result = *(self + 160);
  v2 = *(self + 176);
  v3 = *(self + 192);
  return result;
}

- (__n128)setChromaticAdaptationMatrix:(__n128)matrix
{
  result[10] = a2;
  result[11] = matrix;
  result[12] = a4;
  return result;
}

- (void)setTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_timestamp.epoch = timestamp->var3;
  *&self->_timestamp.value = v3;
}

@end