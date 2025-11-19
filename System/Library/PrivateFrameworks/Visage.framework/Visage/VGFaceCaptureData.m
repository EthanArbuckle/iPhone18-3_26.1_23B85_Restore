@interface VGFaceCaptureData
- (__n128)chromaticAdaptationMatrix;
- (__n128)depthIntrinsics;
- (__n128)setChromaticAdaptationMatrix:(__n128)a3;
- (__n128)setDepthIntrinsics:(__n128)a3;
- (__n128)setVideoIntrinsics:(__n128)a3;
- (__n128)videoIntrinsics;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)saveAtPath:(id)a3;
- (void)setDepth:(__CVBuffer *)a3;
- (void)setTimestamp:(id *)a3;
- (void)setYuvRectified:(__CVBuffer *)a3;
@end

@implementation VGFaceCaptureData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (void)saveAtPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v4 isDirectory:0];
  v6 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:self->_yuvRectified];
  v7 = objc_alloc(MEMORY[0x277CBF740]);
  v8 = [v7 initWithOptions:MEMORY[0x277CBEC10]];
  v9 = [v6 colorSpace];
  v10 = *MEMORY[0x277CBF9C8];
  v15 = 0;
  [v8 writePNGRepresentationOfImage:v6 toURL:v5 format:v10 colorSpace:v9 options:MEMORY[0x277CBEC10] error:&v15];
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

- (void)setYuvRectified:(__CVBuffer *)a3
{
  CVPixelBufferRelease(self->_yuvRectified);
  self->_yuvRectified = a3;

  CVPixelBufferRetain(a3);
}

- (void)setDepth:(__CVBuffer *)a3
{
  CVPixelBufferRelease(self->_depth);
  self->_depth = a3;

  CVPixelBufferRetain(a3);
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
  result = *(a1 + 64);
  v2 = *(a1 + 80);
  v3 = *(a1 + 96);
  return result;
}

- (__n128)setVideoIntrinsics:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  return result;
}

- (__n128)depthIntrinsics
{
  result = *(a1 + 112);
  v2 = *(a1 + 128);
  v3 = *(a1 + 144);
  return result;
}

- (__n128)setDepthIntrinsics:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  return result;
}

- (__n128)chromaticAdaptationMatrix
{
  result = *(a1 + 160);
  v2 = *(a1 + 176);
  v3 = *(a1 + 192);
  return result;
}

- (__n128)setChromaticAdaptationMatrix:(__n128)a3
{
  result[10] = a2;
  result[11] = a3;
  result[12] = a4;
  return result;
}

- (void)setTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_timestamp.epoch = a3->var3;
  *&self->_timestamp.value = v3;
}

@end