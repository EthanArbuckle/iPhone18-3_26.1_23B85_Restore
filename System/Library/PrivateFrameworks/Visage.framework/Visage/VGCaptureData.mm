@interface VGCaptureData
+ (__CVBuffer)_createColorFromYCbCr:(__CVBuffer *)cr;
+ (double)_dataToMatrix33:(void *)matrix33;
+ (double)_dataToMatrix44:(void *)matrix44;
+ (id)_matrix33ToData:(__n128)data;
+ (id)_matrix44ToData:(__n128)data;
+ (id)computeYuvHighResChromaticAdaptationReverted:(id)reverted chromaticAdaptationMatrix:(id *)matrix;
- (BOOL)isEqual:(id)equal;
- (IOSurface)mcamLeftYuvHighResChromaticAdaptationReverted;
- (IOSurface)yuvHighResChromaticAdaptationReverted;
- (VGCaptureData)initWithCoder:(id)coder;
- (VGFaceMetadata)mcamLeftFaceMetadata;
- (__CVBuffer)mcamLeftColorRGB;
- (__CVBuffer)mcamLeftColorRGBChromaticAdaptationReverted;
- (__CVBuffer)mcamLeftColorYuvChromaticAdaptationReverted;
- (__CVBuffer)rgbRectified;
- (__n128)cameraToDeviceTransform;
- (__n128)chromaticAdaptationMatrix;
- (__n128)depthIntrinsics;
- (__n128)mcamLeftChromaticAdaptationMatrix;
- (__n128)mcamLeftColorIntrinsics;
- (__n128)mcamLeftDepthIntrinsics;
- (__n128)mcamLeftToDeviceTransform;
- (__n128)setCameraToDeviceTransform:(__n128)transform;
- (__n128)setChromaticAdaptationMatrix:(__n128)matrix;
- (__n128)setDepthIntrinsics:(__n128)intrinsics;
- (__n128)setMcamLeftChromaticAdaptationMatrix:(__n128)matrix;
- (__n128)setMcamLeftColorIntrinsics:(__n128)intrinsics;
- (__n128)setMcamLeftDepthIntrinsics:(__n128)intrinsics;
- (__n128)setMcamLeftToDeviceTransform:(__n128)transform;
- (__n128)setVideoIntrinsics:(__n128)intrinsics;
- (__n128)videoIntrinsics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getFaceCaptureData;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)saveAtPath:(id)path;
- (void)setDepth:(__CVBuffer *)depth;
- (void)setMcamLeftColorRGB:(__CVBuffer *)b;
- (void)setMcamLeftColorYuv:(__CVBuffer *)yuv;
- (void)setMcamLeftDepth:(__CVBuffer *)depth;
- (void)setRgbRectified:(__CVBuffer *)rectified;
- (void)setTimestamp:(id *)timestamp;
- (void)setYuvRectified:(__CVBuffer *)rectified;
@end

@implementation VGCaptureData

+ (__CVBuffer)_createColorFromYCbCr:(__CVBuffer *)cr
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = VGLogVGCaptureData();
  if (os_signpost_enabled(v4))
  {
    *buf.opaque = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateColorFromYCbCr", &unk_270FBF062, buf.opaque, 2u);
  }

  CVPixelBufferLockBaseAddress(cr, 1uLL);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __39__VGCaptureData__createColorFromYCbCr___block_invoke_2;
  v38[3] = &__block_descriptor_40_e5_v8__0l;
  v38[4] = cr;
  v5 = MEMORY[0x2743B9AA0](v38);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(cr, 0);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(cr, 0);
  srcYp.data = BaseAddressOfPlane;
  srcYp.height = CVPixelBufferGetHeightOfPlane(cr, 0);
  srcYp.width = WidthOfPlane;
  srcYp.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(cr, 0);
  v8 = CVPixelBufferGetBaseAddressOfPlane(cr, 1uLL);
  v9 = CVPixelBufferGetWidthOfPlane(cr, 1uLL);
  srcCbCr.data = v8;
  srcCbCr.height = CVPixelBufferGetHeightOfPlane(cr, 1uLL);
  srcCbCr.width = v9;
  srcCbCr.rowBytes = CVPixelBufferGetBytesPerRowOfPlane(cr, 1uLL);
  dest.data = malloc_type_malloc(4 * srcYp.width * srcYp.height, 0x1C5BF92uLL);
  *&dest.height = *&srcYp.height;
  dest.rowBytes = 4 * srcYp.width;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __39__VGCaptureData__createColorFromYCbCr___block_invoke_2;
  v33[3] = &__block_descriptor_64_e5_v8__0l;
  v34 = dest;
  v10 = MEMORY[0x2743B9AA0](v33);
  PixelFormatType = CVPixelBufferGetPixelFormatType(cr);
  v12.i32[0] = 875704422;
  v13.i32[0] = PixelFormatType;
  v14 = vbsl_s8(vdup_lane_s32(vceq_s32(v13, v12), 0), 0x1000000FFLL, 0x10000000EBLL);
  if (PixelFormatType == 875704422)
  {
    v15 = 255;
  }

  else
  {
    v15 = 240;
  }

  pixelRange.Yp_bias = 16 * (PixelFormatType != 875704422);
  pixelRange.CbCr_bias = 128;
  pixelRange.YpRangeMax = v14.i32[0];
  pixelRange.CbCrRangeMax = v15;
  *&pixelRange.YpMax = v14;
  pixelRange.CbCrMax = v15;
  pixelRange.CbCrMin = pixelRange.Yp_bias;
  if (vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86F0], &pixelRange, &buf, kvImage420Yp8_CbCr8, kvImageARGB8888, 0) || (*permuteMap = 50462976, vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &buf, permuteMap, 0xFFu, 0x100u)))
  {
    v16 = 0;
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x277CD2930]);
    v39[0] = *MEMORY[0x277CD2928];
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:dest.width];
    v40[0] = v20;
    v39[1] = *MEMORY[0x277CD28D0];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:dest.height];
    v22 = *MEMORY[0x277CD28B0];
    v40[1] = v21;
    v40[2] = &unk_2880F5F98;
    v23 = *MEMORY[0x277CD28B8];
    v39[2] = v22;
    v39[3] = v23;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:dest.rowBytes];
    v39[4] = *MEMORY[0x277CD28D8];
    v40[3] = v24;
    v40[4] = &unk_2880F5FB0;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];
    v26 = [v19 initWithProperties:v25];

    if (v26)
    {
      [v26 lockWithOptions:0 seed:0];
      v27 = v26;
      baseAddress = [v26 baseAddress];
      memcpy(baseAddress, dest.data, dest.height * dest.rowBytes);
      [v26 unlockWithOptions:0 seed:0];
      v30 = 0;
      if (CVPixelBufferCreateWithIOSurface(0, v26, 0, &v30))
      {
        v16 = 0;
      }

      else
      {
        v16 = v30;
      }
    }

    else
    {
      v29 = __VGLogSharedInstance();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, " Failed to create IOSurface ", &v30, 2u);
      }

      v16 = 0;
    }
  }

  v10[2](v10);

  v5[2](v5);
  __39__VGCaptureData__createColorFromYCbCr___block_invoke();
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __39__VGCaptureData__createColorFromYCbCr___block_invoke()
{
  v0 = VGLogVGCaptureData();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateColorFromYCbCr", &unk_270FBF062, v1, 2u);
  }
}

+ (id)computeYuvHighResChromaticAdaptationReverted:(id)reverted chromaticAdaptationMatrix:(id *)matrix
{
  v41[4] = *MEMORY[0x277D85DE8];
  revertedCopy = reverted;
  v6 = VGLogVGCaptureData();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "computeYuvHighResChromaticAdaptationReverted", &unk_270FBF062, buf, 2u);
  }

  if (revertedCopy)
  {
    v7 = vandq_s8(vandq_s8(vceqq_f32(*(matrix + 1), *(MEMORY[0x277D860B0] + 16)), vceqq_f32(*matrix, *MEMORY[0x277D860B0])), vceqq_f32(*(matrix + 2), *(MEMORY[0x277D860B0] + 32)));
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) != 0)
    {
      v24 = revertedCopy;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CD2930]);
      v40[0] = *MEMORY[0x277CD2928];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(revertedCopy, "width")}];
      v41[0] = v9;
      v40[1] = *MEMORY[0x277CD28D0];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(revertedCopy, "height")}];
      v11 = *MEMORY[0x277CD28B0];
      v41[1] = v10;
      v41[2] = &unk_2880F5F98;
      v12 = *MEMORY[0x277CD28D8];
      v40[2] = v11;
      v40[3] = v12;
      v41[3] = &unk_2880F5FB0;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
      v14 = [v8 initWithProperties:v13];

      [revertedCopy vg_convert420Yp8_CbCr8ToARGB8888:v14];
      v15 = __VGLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_INFO, " Inverting MCAM chromatic adaptation ", buf, 2u);
      }

      v43 = __invert_f3(*_PromotedConst);
      v29 = v43.columns[1];
      v30 = v43.columns[0];
      v28 = v43.columns[2];
      v32 = 0u;
      v33 = 0u;
      v31 = 0;
      v43.columns[1] = *(matrix + 1);
      v43.columns[2] = *(matrix + 2);
      v16 = vzip1q_s32(*matrix, v43.columns[2]);
      v43.columns[0] = vzip1q_s32(v16, v43.columns[1]);
      v43.columns[2] = vzip1q_s32(vzip2q_s32(*matrix, v43.columns[2]), vdupq_laneq_s32(v43.columns[1], 2));
      v43.columns[1] = vzip2q_s32(v16, vdupq_lane_s32(*v43.columns[1].f32, 1));
      v44 = __invert_f3(v43);
      v18 = 0;
      v34 = xmmword_270FA6A80;
      v35 = xmmword_270FA6A90;
      v36 = xmmword_270FA6AA0;
      do
      {
        *&buf[v18] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44.columns[0], COERCE_FLOAT(*(&v34 + v18))), v44.columns[1], *(&v34 + v18), 1), v44.columns[2], *(&v34 + v18), 2);
        v18 += 16;
      }

      while (v18 != 48);
      v19 = 0;
      v34 = *buf;
      v35 = v38;
      v36 = v39;
      do
      {
        *&buf[v19] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v34 + v19))), v29, *(&v34 + v19), 1), v28, *(&v34 + v19), 2);
        v19 += 16;
      }

      while (v19 != 48);
      LODWORD(v31._impl) = *&buf[8];
      DWORD2(v32) = DWORD2(v38);
      v31.super.isa = *buf;
      *&v32 = v38;
      DWORD2(v33) = DWORD2(v39);
      *&v33 = v39;
      v20 = vg::createSurfaceFromSurfaceWithTransform(v14, &v31, v17);
      v21 = __VGLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_INFO, " Finished inverting MCAM chromatic adaptation ", buf, 2u);
      }

      allAttachments = [revertedCopy allAttachments];
      v23 = [allAttachments objectForKeyedSubscript:@"CreationProperties"];

      v24 = [objc_alloc(MEMORY[0x277CD2930]) initWithProperties:v23];
      if (v24)
      {
        [v20 vg_convertARGB8888To420Yp8_CbCr8:v24];
        v25 = v24;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  __88__VGCaptureData_computeYuvHighResChromaticAdaptationReverted_chromaticAdaptationMatrix___block_invoke();

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

void __88__VGCaptureData_computeYuvHighResChromaticAdaptationReverted_chromaticAdaptationMatrix___block_invoke()
{
  v0 = VGLogVGCaptureData();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "computeYuvHighResChromaticAdaptationReverted", &unk_270FBF062, v1, 2u);
  }
}

- (id)getFaceCaptureData
{
  v3 = objc_alloc_init(VGFaceCaptureData);
  [(VGFaceCaptureData *)v3 setYuvRectified:[(VGCaptureData *)self yuvRectified]];
  [(VGFaceCaptureData *)v3 setDepth:[(VGCaptureData *)self depth]];
  [(VGCaptureData *)self videoIntrinsics];
  [(VGFaceCaptureData *)v3 setVideoIntrinsics:?];
  [(VGCaptureData *)self depthIntrinsics];
  [(VGFaceCaptureData *)v3 setDepthIntrinsics:?];
  [(VGCaptureData *)self chromaticAdaptationMatrix];
  [(VGFaceCaptureData *)v3 setChromaticAdaptationMatrix:?];
  face = [(VGCaptureData *)self face];
  [(VGFaceCaptureData *)v3 setFace:face];

  allFaces = [(VGCaptureData *)self allFaces];
  [(VGFaceCaptureData *)v3 setAllFaces:allFaces];

  [(VGCaptureData *)self timestamp];
  v7 = v9;
  v8 = v10;
  [(VGFaceCaptureData *)v3 setTimestamp:&v7];

  return v3;
}

+ (id)_matrix33ToData:(__n128)data
{
  v10[0] = self;
  v10[1] = a2;
  v10[2] = data;
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:36];
  mutableBytes = [v3 mutableBytes];
  for (i = 0; i != 3; ++i)
  {
    v6 = 0;
    v7 = v10[i];
    do
    {
      v9 = v7;
      *(mutableBytes + 4 * v6) = *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      ++v6;
    }

    while (v6 != 3);
    mutableBytes += 12;
  }

  return v3;
}

+ (id)_matrix44ToData:(__n128)data
{
  v11[0] = self;
  v11[1] = a2;
  v11[2] = data;
  v11[3] = a4;
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:64];
  mutableBytes = [v4 mutableBytes];
  for (i = 0; i != 4; ++i)
  {
    v7 = 0;
    v8 = v11[i];
    do
    {
      v10 = v8;
      *(mutableBytes + 4 * v7) = *(&v10 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3)));
      ++v7;
    }

    while (v7 != 4);
    mutableBytes += 16;
  }

  return v4;
}

+ (double)_dataToMatrix33:(void *)matrix33
{
  bytes = [matrix33 bytes];
  v4 = 0;
  v5 = *(MEMORY[0x277D860B0] + 16);
  v12[0] = *MEMORY[0x277D860B0];
  v12[1] = v5;
  v12[2] = *(MEMORY[0x277D860B0] + 32);
  do
  {
    v6 = 0;
    v7 = &v12[v4];
    v8 = *v7;
    do
    {
      v9 = *(bytes + 4 * v6);
      v11 = v8;
      *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))) = v9;
      v8 = v11;
      ++v6;
    }

    while (v6 != 3);
    *(v7 + 2) = DWORD2(v11);
    *v7 = v8;
    ++v4;
    bytes += 12;
  }

  while (v4 != 3);
  return *v12;
}

+ (double)_dataToMatrix44:(void *)matrix44
{
  bytes = [matrix44 bytes];
  v4 = 0;
  v5 = *(MEMORY[0x277D860B8] + 16);
  v12[0] = *MEMORY[0x277D860B8];
  v12[1] = v5;
  v6 = *(MEMORY[0x277D860B8] + 48);
  v12[2] = *(MEMORY[0x277D860B8] + 32);
  v12[3] = v6;
  do
  {
    v7 = 0;
    v8 = v12[v4];
    do
    {
      v9 = *(bytes + 4 * v7);
      v11 = v8;
      *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v9;
      v8 = v11;
      ++v7;
    }

    while (v7 != 4);
    v12[v4++] = v11;
    bytes += 16;
  }

  while (v4 != 4);
  return *v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setRgbRectified:self->_rgbRectified];
  [v4 setMirrored:self->_mirrored];
  [v4 setVideoIntrinsics:{*self->_anon_d0, *&self->_anon_d0[16], *&self->_anon_d0[32]}];
  [v4 setDepthIntrinsics:{*self->_anon_100, *&self->_anon_100[16], *&self->_anon_100[32]}];
  [v4 setChromaticAdaptationMatrix:{*self->_anon_130, *&self->_anon_130[16], *&self->_anon_130[32]}];
  [v4 setFace:self->_face];
  [v4 setAllFaces:self->_allFaces];
  timestamp = self->_timestamp;
  [v4 setTimestamp:&timestamp];
  [v4 setFaceTrackingResult:self->_faceTrackingResult];
  [v4 setSkeleton:self->_skeleton];
  [v4 setCameraToDeviceTransform:{*self->_anon_1f0, *&self->_anon_1f0[16], *&self->_anon_1f0[32], *&self->_anon_1f0[48]}];
  IOSurfaceBackedPixelBufferCopy = vg::createIOSurfaceBackedPixelBufferCopy(self->_depth, v5);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __30__VGCaptureData_copyWithZone___block_invoke;
  v28[3] = &__block_descriptor_40_e5_v8__0l;
  v28[4] = IOSurfaceBackedPixelBufferCopy;
  v7 = MEMORY[0x2743B9AA0](v28);
  [v4 setDepth:IOSurfaceBackedPixelBufferCopy];
  v9 = vg::createIOSurfaceBackedPixelBufferCopy(self->_yuvRectified, v8);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __30__VGCaptureData_copyWithZone___block_invoke_2;
  v27[3] = &__block_descriptor_40_e5_v8__0l;
  v27[4] = v9;
  v10 = MEMORY[0x2743B9AA0](v27);
  [v4 setYuvRectified:v9];
  yuvHighRes = self->_yuvHighRes;
  if (yuvHighRes)
  {
    vg_copy = [(IOSurface *)yuvHighRes vg_copy];
    [v4 setYuvHighRes:vg_copy];

    vg_copy2 = [(IOSurface *)self->_yuvHighResUndistortionLut vg_copy];
    [v4 setYuvHighResUndistortionLut:vg_copy2];
  }

  v15 = vg::createIOSurfaceBackedPixelBufferCopy(self->_mcamLeftColorYuv, v11);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __30__VGCaptureData_copyWithZone___block_invoke_3;
  v26[3] = &__block_descriptor_40_e5_v8__0l;
  v26[4] = v15;
  v16 = MEMORY[0x2743B9AA0](v26);
  [v4 setMcamLeftColorYuv:v15];
  [v4 setMcamLeftColorRGB:self->_mcamLeftColorRGB];
  v18 = vg::createIOSurfaceBackedPixelBufferCopy(self->_mcamLeftDepth, v17);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __30__VGCaptureData_copyWithZone___block_invoke_4;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v25[4] = v18;
  v19 = MEMORY[0x2743B9AA0](v25);
  [v4 setMcamLeftDepth:v18];
  mcamLeftYuvHighRes = self->_mcamLeftYuvHighRes;
  if (mcamLeftYuvHighRes)
  {
    vg_copy3 = [(IOSurface *)mcamLeftYuvHighRes vg_copy];
    [v4 setMcamLeftYuvHighRes:vg_copy3];

    vg_copy4 = [(IOSurface *)self->_mcamLeftYuvHighResUndistortionLut vg_copy];
    [v4 setMcamLeftYuvHighResUndistortionLut:vg_copy4];
  }

  [v4 setMcamLeftColorIntrinsics:{*self->_anon_160, *&self->_anon_160[16], *&self->_anon_160[32]}];
  [v4 setMcamLeftDepthIntrinsics:{*self->_anon_190, *&self->_anon_190[16], *&self->_anon_190[32]}];
  [v4 setMcamLeftChromaticAdaptationMatrix:{*self->_anon_1c0, *&self->_anon_1c0[16], *&self->_anon_1c0[32]}];
  [v4 setMcamLeftToDeviceTransform:{*&self[1].super.isa, *&self[1]._rgbRectified, *&self[1]._mcamLeftColorYuvChromaticAdaptationReverted, *&self[1]._yuvHighResChromaticAdaptationReverted}];
  [v4 setEnrollmentPhase:self->_enrollmentPhase];
  v23 = v4;
  v19[2](v19);

  v16[2](v16);
  v10[2](v10);

  v7[2](v7);
  return v23;
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

- (IOSurface)yuvHighResChromaticAdaptationReverted
{
  v3 = [VGCaptureData computeYuvHighResChromaticAdaptationReverted:self->_yuvHighRes chromaticAdaptationMatrix:self->_anon_130];
  yuvHighResChromaticAdaptationReverted = self->_yuvHighResChromaticAdaptationReverted;
  self->_yuvHighResChromaticAdaptationReverted = v3;

  v5 = self->_yuvHighResChromaticAdaptationReverted;

  return v5;
}

- (IOSurface)mcamLeftYuvHighResChromaticAdaptationReverted
{
  mcamLeftYuvHighRes = self->_mcamLeftYuvHighRes;
  if (mcamLeftYuvHighRes)
  {
    v5 = [VGCaptureData computeYuvHighResChromaticAdaptationReverted:mcamLeftYuvHighRes chromaticAdaptationMatrix:self->_anon_1c0];
    mcamLeftYuvHighResChromaticAdaptationReverted = self->_mcamLeftYuvHighResChromaticAdaptationReverted;
    self->_mcamLeftYuvHighResChromaticAdaptationReverted = v5;

    v7 = self->_mcamLeftYuvHighResChromaticAdaptationReverted;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (VGFaceMetadata)mcamLeftFaceMetadata
{
  if ([(VGCaptureData *)self mcamLeftColorRGB])
  {
    v3 = CVPixelBufferGetIOSurface([(VGCaptureData *)self mcamLeftColorRGB]);
    v5 = v3;
    if (v3)
    {
      v6 = vg::shared::VNGetLargestFaceObservation(v3, v4);
      v7 = v6;
      if (v6)
      {
        [v6 boundingBox];
        v9 = v8;
        [v7 boundingBox];
        v11 = v10;
        [v7 boundingBox];
        v13 = v12;
        [v7 boundingBox];
        v15 = v14;
        [v7 boundingBox];
        v17 = v16;
        v18 = [v7 yaw];
        [v18 doubleValue];
        v20 = v19 * 57.2957795;

        if (v20 < 0.0)
        {
          v20 = v20 + 360.0;
        }

        roll = [v7 roll];
        [roll doubleValue];
        v23 = v22 * -57.2957795;

        if (v23 >= 0.0)
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 + 360.0;
        }

        v25 = -[VGFaceMetadata initWithFaceId:bounds:yawAngle:rollAngle:]([VGFaceMetadata alloc], "initWithFaceId:bounds:yawAngle:rollAngle:", [v7 faceId], v9, 1.0 - (v11 + v13), v15, v17, round(v20), round(v24));
        mcamLeftFaceMetadata = self->_mcamLeftFaceMetadata;
        self->_mcamLeftFaceMetadata = v25;

        v27 = self->_mcamLeftFaceMetadata;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setRgbRectified:(__CVBuffer *)rectified
{
  rgbRectified = self->_rgbRectified;
  if (rgbRectified)
  {
    CVPixelBufferRelease(rgbRectified);
  }

  self->_rgbRectified = rectified;
  if (rectified)
  {

    CVPixelBufferRetain(rectified);
  }
}

- (__CVBuffer)rgbRectified
{
  v3 = VGLogVGCaptureData();
  if (os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RgbRectified", &unk_270FBF062, v6, 2u);
  }

  rgbRectified = self->_rgbRectified;
  if (!rgbRectified)
  {
    if (self->_yuvRectified)
    {
      rgbRectified = [VGCaptureData _createColorFromYCbCr:?];
      self->_rgbRectified = rgbRectified;
    }

    else
    {
      rgbRectified = 0;
    }
  }

  __29__VGCaptureData_rgbRectified__block_invoke();
  return rgbRectified;
}

void __29__VGCaptureData_rgbRectified__block_invoke()
{
  v0 = VGLogVGCaptureData();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RgbRectified", &unk_270FBF062, v1, 2u);
  }
}

- (void)setYuvRectified:(__CVBuffer *)rectified
{
  yuvRectified = self->_yuvRectified;
  if (yuvRectified)
  {
    CVPixelBufferRelease(yuvRectified);
  }

  self->_yuvRectified = rectified;
  if (rectified)
  {

    CVPixelBufferRetain(rectified);
  }
}

- (void)setDepth:(__CVBuffer *)depth
{
  depth = self->_depth;
  if (depth)
  {
    CVPixelBufferRelease(depth);
  }

  self->_depth = depth;
  if (depth)
  {

    CVPixelBufferRetain(depth);
  }
}

- (void)setMcamLeftColorRGB:(__CVBuffer *)b
{
  mcamLeftColorRGB = self->_mcamLeftColorRGB;
  if (mcamLeftColorRGB)
  {
    CVPixelBufferRelease(mcamLeftColorRGB);
  }

  self->_mcamLeftColorRGB = b;
  if (b)
  {

    CVPixelBufferRetain(b);
  }
}

- (__CVBuffer)mcamLeftColorRGB
{
  v3 = VGLogVGCaptureData();
  if (os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "mcamLeftColorRGB", &unk_270FBF062, v6, 2u);
  }

  mcamLeftColorRGB = self->_mcamLeftColorRGB;
  if (!mcamLeftColorRGB)
  {
    if (self->_mcamLeftColorYuv)
    {
      mcamLeftColorRGB = [VGCaptureData _createColorFromYCbCr:?];
      self->_mcamLeftColorRGB = mcamLeftColorRGB;
    }

    else
    {
      mcamLeftColorRGB = 0;
    }
  }

  __33__VGCaptureData_mcamLeftColorRGB__block_invoke();
  return mcamLeftColorRGB;
}

void __33__VGCaptureData_mcamLeftColorRGB__block_invoke()
{
  v0 = VGLogVGCaptureData();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "mcamLeftColorRGB", &unk_270FBF062, v1, 2u);
  }
}

- (void)setMcamLeftColorYuv:(__CVBuffer *)yuv
{
  mcamLeftColorYuv = self->_mcamLeftColorYuv;
  if (mcamLeftColorYuv)
  {
    CVPixelBufferRelease(mcamLeftColorYuv);
  }

  self->_mcamLeftColorYuv = yuv;
  if (yuv)
  {

    CVPixelBufferRetain(yuv);
  }
}

- (__CVBuffer)mcamLeftColorYuvChromaticAdaptationReverted
{
  v3 = VGLogVGCaptureData();
  if (os_signpost_enabled(v3))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "mcamLeftColorYuvChromaticAdaptationReverted", &unk_270FBF062, v9, 2u);
  }

  mcamLeftColorYuvChromaticAdaptationReverted = self->_mcamLeftColorYuvChromaticAdaptationReverted;
  if (!mcamLeftColorYuvChromaticAdaptationReverted)
  {
    mcamLeftColorYuv = self->_mcamLeftColorYuv;
    if (mcamLeftColorYuv)
    {
      v6 = IOSurfaceFromCVPixelBuffer(mcamLeftColorYuv);
      v7 = [VGCaptureData computeYuvHighResChromaticAdaptationReverted:v6 chromaticAdaptationMatrix:self->_anon_1c0];

      mcamLeftColorYuvChromaticAdaptationReverted = createCVPixelBufferFromIOSurface(v7);
      self->_mcamLeftColorYuvChromaticAdaptationReverted = mcamLeftColorYuvChromaticAdaptationReverted;
    }

    else
    {
      mcamLeftColorYuvChromaticAdaptationReverted = 0;
    }
  }

  __60__VGCaptureData_mcamLeftColorYuvChromaticAdaptationReverted__block_invoke();
  return mcamLeftColorYuvChromaticAdaptationReverted;
}

void __60__VGCaptureData_mcamLeftColorYuvChromaticAdaptationReverted__block_invoke()
{
  v0 = VGLogVGCaptureData();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "mcamLeftColorYuvChromaticAdaptationReverted", &unk_270FBF062, v1, 2u);
  }
}

- (__CVBuffer)mcamLeftColorRGBChromaticAdaptationReverted
{
  v3 = VGLogVGCaptureData();
  if (os_signpost_enabled(v3))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "mcamLeftColorRGBChromaticAdaptationReverted", &unk_270FBF062, v7, 2u);
  }

  mcamLeftColorRGBChromaticAdaptationReverted = self->_mcamLeftColorRGBChromaticAdaptationReverted;
  if (!mcamLeftColorRGBChromaticAdaptationReverted)
  {
    if ([(VGCaptureData *)self mcamLeftColorYuvChromaticAdaptationReverted])
    {
      mcamLeftColorRGBChromaticAdaptationReverted = vg::createARGBFromYCbCr(self->_mcamLeftColorYuvChromaticAdaptationReverted, v5);
      self->_mcamLeftColorRGBChromaticAdaptationReverted = mcamLeftColorRGBChromaticAdaptationReverted;
    }

    else
    {
      mcamLeftColorRGBChromaticAdaptationReverted = 0;
    }
  }

  __60__VGCaptureData_mcamLeftColorRGBChromaticAdaptationReverted__block_invoke();
  return mcamLeftColorRGBChromaticAdaptationReverted;
}

void __60__VGCaptureData_mcamLeftColorRGBChromaticAdaptationReverted__block_invoke()
{
  v0 = VGLogVGCaptureData();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "mcamLeftColorRGBChromaticAdaptationReverted", &unk_270FBF062, v1, 2u);
  }
}

- (void)setMcamLeftDepth:(__CVBuffer *)depth
{
  mcamLeftDepth = self->_mcamLeftDepth;
  if (mcamLeftDepth)
  {
    CVPixelBufferRelease(mcamLeftDepth);
  }

  self->_mcamLeftDepth = depth;
  if (depth)
  {

    CVPixelBufferRetain(depth);
  }
}

- (void)dealloc
{
  depth = self->_depth;
  if (depth)
  {
    CVPixelBufferRelease(depth);
  }

  yuvRectified = self->_yuvRectified;
  if (yuvRectified)
  {
    CVPixelBufferRelease(yuvRectified);
  }

  rgbRectified = self->_rgbRectified;
  if (rgbRectified)
  {
    CVPixelBufferRelease(rgbRectified);
  }

  mcamLeftColorYuv = self->_mcamLeftColorYuv;
  if (mcamLeftColorYuv)
  {
    CVPixelBufferRelease(mcamLeftColorYuv);
  }

  mcamLeftColorRGB = self->_mcamLeftColorRGB;
  if (mcamLeftColorRGB)
  {
    CVPixelBufferRelease(mcamLeftColorRGB);
  }

  mcamLeftColorYuvChromaticAdaptationReverted = self->_mcamLeftColorYuvChromaticAdaptationReverted;
  if (mcamLeftColorYuvChromaticAdaptationReverted)
  {
    CVPixelBufferRelease(mcamLeftColorYuvChromaticAdaptationReverted);
  }

  mcamLeftColorRGBChromaticAdaptationReverted = self->_mcamLeftColorRGBChromaticAdaptationReverted;
  if (mcamLeftColorRGBChromaticAdaptationReverted)
  {
    CVPixelBufferRelease(mcamLeftColorRGBChromaticAdaptationReverted);
  }

  mcamLeftDepth = self->_mcamLeftDepth;
  if (mcamLeftDepth)
  {
    CVPixelBufferRelease(mcamLeftDepth);
  }

  v11.receiver = self;
  v11.super_class = VGCaptureData;
  [(VGCaptureData *)&v11 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [VGCoderUtilities encodePixelBuffer:self->_yuvRectified forKey:@"yuvRectified" encoder:?];
  [VGCoderUtilities encodePixelBuffer:self->_depth forKey:@"depth" encoder:coderCopy];
  [coderCopy encodeBool:self->_mirrored forKey:@"mirrored"];
  [coderCopy vg_encodeSurface:self->_yuvHighRes forKey:@"yuvHighRes"];
  [coderCopy vg_encodeSurface:self->_yuvHighResUndistortionLut forKey:@"yuvHighResUndistortionLut"];
  v4 = [VGCaptureData _matrix33ToData:*self->_anon_d0, *&self->_anon_d0[16], *&self->_anon_d0[32]];
  [coderCopy encodeObject:v4 forKey:@"videoIntrinsics"];

  v5 = [VGCaptureData _matrix33ToData:*self->_anon_100, *&self->_anon_100[16], *&self->_anon_100[32]];
  [coderCopy encodeObject:v5 forKey:@"depthIntrinsics"];

  v6 = [VGCaptureData _matrix33ToData:*self->_anon_130, *&self->_anon_130[16], *&self->_anon_130[32]];
  [coderCopy encodeObject:v6 forKey:@"chromaticAdaptationMatrix"];

  [coderCopy encodeObject:self->_face forKey:@"face"];
  [coderCopy encodeObject:self->_allFaces forKey:@"allFaces"];
  [coderCopy encodeObject:self->_faceTrackingResult forKey:@"faceTrackingResult"];
  [coderCopy encodeObject:self->_skeleton forKey:@"skeleton"];
  v7 = [VGCaptureData _matrix44ToData:*self->_anon_1f0, *&self->_anon_1f0[16], *&self->_anon_1f0[32], *&self->_anon_1f0[48]];
  [coderCopy encodeObject:v7 forKey:@"cameraToDeviceTransform"];

  [coderCopy encodeInt64:self->_timestamp.value forKey:@"timestampValue"];
  [coderCopy encodeInt64:self->_timestamp.epoch forKey:@"timestampEpoch"];
  [coderCopy encodeInt32:self->_timestamp.timescale forKey:@"timestampTimeScale"];
  [coderCopy encodeInt64:self->_timestamp.flags forKey:@"timestampFlags"];
  mcamLeftColorYuv = self->_mcamLeftColorYuv;
  if (mcamLeftColorYuv)
  {
    [VGCoderUtilities encodePixelBuffer:mcamLeftColorYuv forKey:@"mcamLeftColorYuv" encoder:coderCopy];
  }

  mcamLeftDepth = self->_mcamLeftDepth;
  if (mcamLeftDepth)
  {
    [VGCoderUtilities encodePixelBuffer:mcamLeftDepth forKey:@"mcamLeftDepth" encoder:coderCopy];
  }

  mcamLeftYuvHighRes = self->_mcamLeftYuvHighRes;
  if (mcamLeftYuvHighRes)
  {
    [coderCopy vg_encodeSurface:mcamLeftYuvHighRes forKey:@"mcamLeftYuvHighRes"];
  }

  mcamLeftYuvHighResUndistortionLut = self->_mcamLeftYuvHighResUndistortionLut;
  if (mcamLeftYuvHighResUndistortionLut)
  {
    [coderCopy vg_encodeSurface:mcamLeftYuvHighResUndistortionLut forKey:@"mcamLeftYuvHighResUndistortionLut"];
  }

  v12 = [VGCaptureData _matrix33ToData:*self->_anon_160, *&self->_anon_160[16], *&self->_anon_160[32]];
  [coderCopy encodeObject:v12 forKey:@"mcamLeftColorIntrinsics"];

  v13 = [VGCaptureData _matrix33ToData:*self->_anon_190, *&self->_anon_190[16], *&self->_anon_190[32]];
  [coderCopy encodeObject:v13 forKey:@"mcamLeftDepthIntrinsics"];

  v14 = [VGCaptureData _matrix33ToData:*self->_anon_1c0, *&self->_anon_1c0[16], *&self->_anon_1c0[32]];
  [coderCopy encodeObject:v14 forKey:@"mcamLeftChromaticAdaptationMatrix"];

  v15 = [VGCaptureData _matrix44ToData:*&self[1].super.isa, *&self[1]._rgbRectified, *&self[1]._mcamLeftColorYuvChromaticAdaptationReverted, *&self[1]._yuvHighResChromaticAdaptationReverted];
  [coderCopy encodeObject:v15 forKey:@"mcamLeftToDeviceTransform"];

  [coderCopy encodeInteger:self->_enrollmentPhase forKey:@"enrollmentPhase"];
}

- (VGCaptureData)initWithCoder:(id)coder
{
  v110[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v108.receiver = self;
  v108.super_class = VGCaptureData;
  v5 = [(VGCaptureData *)&v108 init];
  if (v5)
  {
    v5->_yuvRectified = [VGCoderUtilities decodePixelBufferForKey:@"yuvRectified" decoder:coderCopy];
    v5->_depth = [VGCoderUtilities decodePixelBufferForKey:@"depth" decoder:coderCopy];
    v5->_mirrored = [coderCopy decodeBoolForKey:@"mirrored"];
    v6 = [coderCopy vg_decodeSurfaceForKey:@"yuvHighRes"];
    yuvHighRes = v5->_yuvHighRes;
    v5->_yuvHighRes = v6;

    v8 = [coderCopy vg_decodeSurfaceForKey:@"yuvHighResUndistortionLut"];
    yuvHighResUndistortionLut = v5->_yuvHighResUndistortionLut;
    v5->_yuvHighResUndistortionLut = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoIntrinsics"];
    v11 = v10;
    if (!v10 || [v10 length] <= 0x23)
    {
      v12 = __VGLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_ERROR, " Unable to deserialize videoIntrinsics ", buf, 2u);
      }

      v13 = 0;
      goto LABEL_81;
    }

    [VGCaptureData _dataToMatrix33:v11];
    *&v5->_anon_d0[8] = v14;
    *v5->_anon_d0 = v15;
    *&v5->_anon_d0[24] = v16;
    *&v5->_anon_d0[16] = v17;
    *&v5->_anon_d0[40] = v18;
    *&v5->_anon_d0[32] = v19;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"depthIntrinsics"];
    v12 = v20;
    if (!v20 || [v20 length]<= 0x23)
    {
      v21 = __VGLogSharedInstance();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " Unable to deserialize depthIntrinsics ", buf, 2u);
      }

      v13 = 0;
      goto LABEL_80;
    }

    [VGCaptureData _dataToMatrix33:v12];
    *&v5->_anon_100[8] = v22;
    *v5->_anon_100 = v23;
    *&v5->_anon_100[24] = v24;
    *&v5->_anon_100[16] = v25;
    *&v5->_anon_100[40] = v26;
    *&v5->_anon_100[32] = v27;
    v106 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chromaticAdaptationMatrix"];
    if (v106 && [v106 length]>= 0x24)
    {
      [VGCaptureData _dataToMatrix33:v106];
      *&v5->_anon_130[8] = v28;
      *&v5->_anon_130[24] = v29;
      *v5->_anon_130 = v30;
      *&v5->_anon_130[16] = v31;
      *&v5->_anon_130[40] = v32;
      *&v5->_anon_130[32] = v33;
    }

    else
    {
      v34 = MEMORY[0x277D860B0];
      v35 = *(MEMORY[0x277D860B0] + 16);
      *v5->_anon_130 = *MEMORY[0x277D860B0];
      *&v5->_anon_130[16] = v35;
      *&v5->_anon_130[32] = *(v34 + 32);
    }

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"face"];
    face = v5->_face;
    v5->_face = v36;

    if ([coderCopy containsValueForKey:@"allFaces"])
    {
      v38 = MEMORY[0x277CBEB98];
      v110[0] = objc_opt_class();
      v110[1] = objc_opt_class();
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
      v40 = [v38 setWithArray:v39];
      v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"allFaces"];
      allFaces = v5->_allFaces;
      v5->_allFaces = v41;
    }

    v43 = MEMORY[0x277CBEB98];
    v109[0] = objc_opt_class();
    v109[1] = objc_opt_class();
    v109[2] = objc_opt_class();
    v109[3] = objc_opt_class();
    v109[4] = objc_opt_class();
    v109[5] = objc_opt_class();
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:6];
    v45 = [v43 setWithArray:v44];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"faceTrackingResult"];
    faceTrackingResult = v5->_faceTrackingResult;
    v5->_faceTrackingResult = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"skeleton"];
    skeleton = v5->_skeleton;
    v5->_skeleton = v48;

    v50 = MEMORY[0x277D860B8];
    v51 = *(MEMORY[0x277D860B8] + 16);
    *v5->_anon_1f0 = *MEMORY[0x277D860B8];
    *&v5->_anon_1f0[16] = v51;
    v52 = v50[3];
    *&v5->_anon_1f0[32] = v50[2];
    *&v5->_anon_1f0[48] = v52;
    if ([coderCopy containsValueForKey:@"cameraToDeviceTransform"])
    {
      v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraToDeviceTransform"];
      v54 = v53;
      if (!v53 || [v53 length]<= 0x3F)
      {
        v55 = __VGLogSharedInstance();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v55, OS_LOG_TYPE_ERROR, " Unable to deserialize cameraToDeviceTransform ", buf, 2u);
        }

LABEL_78:

        v13 = 0;
LABEL_79:
        v21 = v106;
LABEL_80:

LABEL_81:
        goto LABEL_82;
      }

      [VGCaptureData _dataToMatrix44:v54];
      *v5->_anon_1f0 = v56;
      *&v5->_anon_1f0[16] = v57;
      *&v5->_anon_1f0[32] = v58;
      *&v5->_anon_1f0[48] = v59;
    }

    else
    {
      v54 = __VGLogSharedInstance();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v54, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have cameraToDeviceTransform. Set to identity. ", buf, 2u);
      }
    }

    v5->_timestamp.value = [coderCopy decodeInt64ForKey:@"timestampValue"];
    v5->_timestamp.epoch = [coderCopy decodeInt64ForKey:@"timestampEpoch"];
    v5->_timestamp.timescale = [coderCopy decodeInt32ForKey:@"timestampTimeScale"];
    v5->_timestamp.flags = [coderCopy decodeInt64ForKey:@"timestampFlags"];
    if ([VGCoderUtilities hasPixelBufferForKey:@"mcamLeftColorYuv" decoder:coderCopy])
    {
      v5->_mcamLeftColorYuv = [VGCoderUtilities decodePixelBufferForKey:@"mcamLeftColorYuv" decoder:coderCopy];
    }

    else
    {
      v60 = __VGLogSharedInstance();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v60, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftColorYuv. Set to nil. ", buf, 2u);
      }
    }

    if ([VGCoderUtilities hasPixelBufferForKey:@"mcamLeftDepth" decoder:coderCopy, v5->_anon_100])
    {
      v5->_mcamLeftDepth = [VGCoderUtilities decodePixelBufferForKey:@"mcamLeftDepth" decoder:coderCopy];
    }

    else
    {
      v61 = __VGLogSharedInstance();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v61, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftDepth. Set to nil. ", buf, 2u);
      }
    }

    v62 = [coderCopy vg_decodeSurfaceForKey:@"mcamLeftYuvHighRes"];
    mcamLeftYuvHighRes = v5->_mcamLeftYuvHighRes;
    v5->_mcamLeftYuvHighRes = v62;

    if (!v5->_mcamLeftYuvHighRes)
    {
      v64 = __VGLogSharedInstance();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v64, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftYuvHighRes. Set to nil. ", buf, 2u);
      }
    }

    v65 = [coderCopy vg_decodeSurfaceForKey:@"mcamLeftYuvHighResUndistortionLut"];
    mcamLeftYuvHighResUndistortionLut = v5->_mcamLeftYuvHighResUndistortionLut;
    v5->_mcamLeftYuvHighResUndistortionLut = v65;

    if (!v5->_mcamLeftYuvHighResUndistortionLut)
    {
      v67 = __VGLogSharedInstance();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v67, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftYuvHighResUndistortionLut. Set to nil. ", buf, 2u);
      }
    }

    if ([coderCopy containsValueForKey:@"mcamLeftColorIntrinsics"])
    {
      v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcamLeftColorIntrinsics"];
      v54 = v68;
      if (!v68 || [v68 length]<= 0x23)
      {
        v55 = __VGLogSharedInstance();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v55, OS_LOG_TYPE_ERROR, " Unable to deserialize mcamLeftColorIntrinsics ", buf, 2u);
        }

        goto LABEL_78;
      }

      [VGCaptureData _dataToMatrix33:v54];
      *(v105 + 104) = v71;
      *(v105 + 120) = v72;
      *(v105 + 96) = v73;
      *(v105 + 112) = v74;
      *(v105 + 136) = v75;
      *(v105 + 128) = v76;
    }

    else
    {
      v69 = MEMORY[0x277D860B0];
      v70 = *(MEMORY[0x277D860B0] + 16);
      *v5->_anon_160 = *MEMORY[0x277D860B0];
      *&v5->_anon_160[16] = v70;
      *&v5->_anon_160[32] = *(v69 + 32);
      v54 = __VGLogSharedInstance();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v54, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftColorIntrinsics. Set to identity. ", buf, 2u);
      }
    }

    if ([coderCopy containsValueForKey:@"mcamLeftDepthIntrinsics"])
    {
      v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcamLeftDepthIntrinsics"];
      v54 = v77;
      if (!v77 || [v77 length]<= 0x23)
      {
        v55 = __VGLogSharedInstance();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v55, OS_LOG_TYPE_ERROR, " Unable to deserialize mcamLeftDepthIntrinsics ", buf, 2u);
        }

        goto LABEL_78;
      }

      [VGCaptureData _dataToMatrix33:v54];
      *(v105 + 152) = v80;
      *(v105 + 168) = v81;
      *(v105 + 144) = v82;
      *(v105 + 160) = v83;
      *(v105 + 184) = v84;
      *(v105 + 176) = v85;
    }

    else
    {
      v78 = MEMORY[0x277D860B0];
      v79 = *(MEMORY[0x277D860B0] + 16);
      *v5->_anon_190 = *MEMORY[0x277D860B0];
      *&v5->_anon_190[16] = v79;
      *&v5->_anon_190[32] = *(v78 + 32);
      v54 = __VGLogSharedInstance();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v54, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftDepthIntrinsics. Set to identity. ", buf, 2u);
      }
    }

    if ([coderCopy containsValueForKey:@"mcamLeftChromaticAdaptationMatrix"])
    {
      v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcamLeftChromaticAdaptationMatrix"];
      v54 = v86;
      if (!v86 || [v86 length]<= 0x23)
      {
        v55 = __VGLogSharedInstance();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v55, OS_LOG_TYPE_ERROR, " Unable to deserialize mcamLeftChromaticAdaptationMatrix ", buf, 2u);
        }

        goto LABEL_78;
      }

      [VGCaptureData _dataToMatrix33:v54];
      *(v105 + 200) = v89;
      *(v105 + 216) = v90;
      *(v105 + 192) = v91;
      *(v105 + 208) = v92;
      *(v105 + 232) = v93;
      *(v105 + 224) = v94;
    }

    else
    {
      v87 = MEMORY[0x277D860B0];
      v88 = *(MEMORY[0x277D860B0] + 16);
      *v5->_anon_1c0 = *MEMORY[0x277D860B0];
      *&v5->_anon_1c0[16] = v88;
      *&v5->_anon_1c0[32] = *(v87 + 32);
      v54 = __VGLogSharedInstance();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v54, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftChromaticAdaptationMatrix. Set to identity. ", buf, 2u);
      }
    }

    v95 = v50[1];
    *&v5[1].super.isa = *v50;
    *&v5[1]._rgbRectified = v95;
    v96 = v50[3];
    *&v5[1]._mcamLeftColorYuvChromaticAdaptationReverted = v50[2];
    *&v5[1]._yuvHighResChromaticAdaptationReverted = v96;
    if ([coderCopy containsValueForKey:@"mcamLeftToDeviceTransform"])
    {
      v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcamLeftToDeviceTransform"];
      v54 = v97;
      if (!v97 || [v97 length]<= 0x3F)
      {
        v55 = __VGLogSharedInstance();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v55, OS_LOG_TYPE_ERROR, " Unable to deserialize mcamLeftToDeviceTransform ", buf, 2u);
        }

        goto LABEL_78;
      }

      [VGCaptureData _dataToMatrix44:v54];
      *&v5[1].super.isa = v100;
      *&v5[1]._rgbRectified = v101;
      *&v5[1]._mcamLeftColorYuvChromaticAdaptationReverted = v102;
      *&v5[1]._yuvHighResChromaticAdaptationReverted = v103;
    }

    else
    {
      v54 = __VGLogSharedInstance();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v54, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have mcamLeftToDeviceTransform. Set to identity. ", buf, 2u);
      }
    }

    v5->_enrollmentPhase = 0;
    if ([coderCopy containsValueForKey:@"enrollmentPhase"])
    {
      v5->_enrollmentPhase = [coderCopy decodeIntegerForKey:@"enrollmentPhase"];
    }

    else
    {
      v104 = __VGLogSharedInstance();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v104, OS_LOG_TYPE_INFO, " VGCaptureData doesn't have enrollmentPhase. Set to VGEnrollmentPhaseNone ", buf, 2u);
      }
    }

    v13 = v5;
    goto LABEL_79;
  }

  v13 = 0;
LABEL_82:

  v98 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (!checkEqualPixelBuffers(self->_yuvRectified, *(v5 + 9)))
    {
      goto LABEL_10;
    }

    if (!checkEqualPixelBuffers(self->_depth, *(v5 + 10)))
    {
      goto LABEL_10;
    }

    if (self->_mirrored != v5[8])
    {
      goto LABEL_10;
    }

    if (!checkEqualSurfaces(self->_yuvHighRes, *(v5 + 11)))
    {
      goto LABEL_10;
    }

    if (!checkEqualSurfaces(self->_yuvHighResUndistortionLut, *(v5 + 12)))
    {
      goto LABEL_10;
    }

    v6 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_d0[16], *(v5 + 14)), vceqq_f32(*self->_anon_d0, *(v5 + 13))), vceqq_f32(*&self->_anon_d0[32], *(v5 + 15)));
    v6.i32[3] = v6.i32[2];
    if ((vminvq_u32(v6) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v7 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_100[16], *(v5 + 17)), vceqq_f32(*self->_anon_100, *(v5 + 16))), vceqq_f32(*&self->_anon_100[32], *(v5 + 18)));
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    v8 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_130[16], *(v5 + 20)), vceqq_f32(*self->_anon_130, *(v5 + 19))), vceqq_f32(*&self->_anon_130[32], *(v5 + 21)));
    v8.i32[3] = v8.i32[2];
    if ((vminvq_u32(v8) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    face = self->_face;
    if (face | *(v5 + 13))
    {
      if (![(VGFaceMetadata *)face isEqual:?])
      {
        goto LABEL_10;
      }
    }

    allFaces = self->_allFaces;
    if (allFaces | *(v5 + 14) && ![(NSArray *)allFaces isEqualToArray:?])
    {
      goto LABEL_10;
    }

    skeleton = self->_skeleton;
    if (skeleton | *(v5 + 16) && ![(VGSkeleton *)skeleton isEqual:?])
    {
      goto LABEL_10;
    }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_1f0[16], *(v5 + 32)), vceqq_f32(*self->_anon_1f0, *(v5 + 31))), vandq_s8(vceqq_f32(*&self->_anon_1f0[32], *(v5 + 33)), vceqq_f32(*&self->_anon_1f0[48], *(v5 + 34))))) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    time1 = self->_timestamp;
    v17 = *(v5 + 176);
    if (CMTimeCompare(&time1, &v17))
    {
      goto LABEL_10;
    }

    if (checkEqualPixelBuffers(self->_mcamLeftColorYuv, *(v5 + 17)) && checkEqualPixelBuffers(self->_mcamLeftDepth, *(v5 + 18)) && checkEqualSurfaces(self->_mcamLeftYuvHighRes, *(v5 + 19)) && checkEqualSurfaces(self->_mcamLeftYuvHighResUndistortionLut, *(v5 + 20)) && (v14 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_160[16], *(v5 + 23)), vceqq_f32(*self->_anon_160, *(v5 + 22))), vceqq_f32(*&self->_anon_160[32], *(v5 + 24))), v14.i32[3] = v14.i32[2], (vminvq_u32(v14) & 0x80000000) != 0) && (v15 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_190[16], *(v5 + 26)), vceqq_f32(*self->_anon_190, *(v5 + 25))), vceqq_f32(*&self->_anon_190[32], *(v5 + 27))), v15.i32[3] = v15.i32[2], (vminvq_u32(v15) & 0x80000000) != 0) && (v16 = vandq_s8(vandq_s8(vceqq_f32(*&self->_anon_1c0[16], *(v5 + 29)), vceqq_f32(*self->_anon_1c0, *(v5 + 28))), vceqq_f32(*&self->_anon_1c0[32], *(v5 + 30))), v16.i32[3] = v16.i32[2], (vminvq_u32(v16) & 0x80000000) != 0) && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*&self[1]._rgbRectified, *(v5 + 36)), vceqq_f32(*&self[1].super.isa, *(v5 + 35))), vandq_s8(vceqq_f32(*&self[1]._mcamLeftColorYuvChromaticAdaptationReverted, *(v5 + 37)), vceqq_f32(*&self[1]._yuvHighResChromaticAdaptationReverted, *(v5 + 38))))) & 0x80000000) != 0)
    {
      v9 = self->_enrollmentPhase == *(v5 + 21);
    }

    else
    {
LABEL_10:
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (__n128)videoIntrinsics
{
  result = *(self + 208);
  v2 = *(self + 224);
  v3 = *(self + 240);
  return result;
}

- (__n128)setVideoIntrinsics:(__n128)intrinsics
{
  result[13] = a2;
  result[14] = intrinsics;
  result[15] = a4;
  return result;
}

- (__n128)depthIntrinsics
{
  result = *(self + 256);
  v2 = *(self + 272);
  v3 = *(self + 288);
  return result;
}

- (__n128)setDepthIntrinsics:(__n128)intrinsics
{
  result[16] = a2;
  result[17] = intrinsics;
  result[18] = a4;
  return result;
}

- (__n128)chromaticAdaptationMatrix
{
  result = *(self + 304);
  v2 = *(self + 320);
  v3 = *(self + 336);
  return result;
}

- (__n128)setChromaticAdaptationMatrix:(__n128)matrix
{
  result[19] = a2;
  result[20] = matrix;
  result[21] = a4;
  return result;
}

- (__n128)cameraToDeviceTransform
{
  result = *(self + 496);
  v2 = *(self + 512);
  v3 = *(self + 528);
  v4 = *(self + 544);
  return result;
}

- (__n128)setCameraToDeviceTransform:(__n128)transform
{
  result[31] = a2;
  result[32] = transform;
  result[33] = a4;
  result[34] = a5;
  return result;
}

- (void)setTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_timestamp.epoch = timestamp->var3;
  *&self->_timestamp.value = v3;
}

- (__n128)mcamLeftColorIntrinsics
{
  result = *(self + 352);
  v2 = *(self + 368);
  v3 = *(self + 384);
  return result;
}

- (__n128)setMcamLeftColorIntrinsics:(__n128)intrinsics
{
  result[22] = a2;
  result[23] = intrinsics;
  result[24] = a4;
  return result;
}

- (__n128)mcamLeftDepthIntrinsics
{
  result = *(self + 400);
  v2 = *(self + 416);
  v3 = *(self + 432);
  return result;
}

- (__n128)setMcamLeftDepthIntrinsics:(__n128)intrinsics
{
  result[25] = a2;
  result[26] = intrinsics;
  result[27] = a4;
  return result;
}

- (__n128)mcamLeftChromaticAdaptationMatrix
{
  result = *(self + 448);
  v2 = *(self + 464);
  v3 = *(self + 480);
  return result;
}

- (__n128)setMcamLeftChromaticAdaptationMatrix:(__n128)matrix
{
  result[28] = a2;
  result[29] = matrix;
  result[30] = a4;
  return result;
}

- (__n128)mcamLeftToDeviceTransform
{
  result = *(self + 560);
  v2 = *(self + 576);
  v3 = *(self + 592);
  v4 = *(self + 608);
  return result;
}

- (__n128)setMcamLeftToDeviceTransform:(__n128)transform
{
  result[35] = a2;
  result[36] = transform;
  result[37] = a4;
  result[38] = a5;
  return result;
}

@end