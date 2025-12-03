@interface PVARMetadata
- (CGSize)cameraImageResolution;
- (PVARMetadata)initWithARFrame:(id)frame depthData:(id)data depthFreshness:(int)freshness;
- (PVARMetadata)initWithImageBuffer:(double)buffer depthBuffer:(double)depthBuffer depthData:(double)data depthFreshness:(double)freshness segmentationBuffer:(double)segmentationBuffer cameraTransform:(double)transform cameraIntrinsics:(uint64_t)intrinsics cameraImageResolution:(uint64_t)self0;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (__n128)setCameraTransform:(__n128)transform;
- (id)description;
- (void)dealloc;
- (void)setDepthBuffer:(__CVBuffer *)buffer;
- (void)setImageBuffer:(__CVBuffer *)buffer;
- (void)setSegmentationBuffer:(__CVBuffer *)buffer;
@end

@implementation PVARMetadata

- (void)dealloc
{
  CVPixelBufferRelease(self->_imageBuffer);
  CVPixelBufferRelease(self->_depthBuffer);
  CVPixelBufferRelease(self->_segmentationBuffer);
  v3.receiver = self;
  v3.super_class = PVARMetadata;
  [(PVARMetadata *)&v3 dealloc];
}

- (PVARMetadata)initWithImageBuffer:(double)buffer depthBuffer:(double)depthBuffer depthData:(double)data depthFreshness:(double)freshness segmentationBuffer:(double)segmentationBuffer cameraTransform:(double)transform cameraIntrinsics:(uint64_t)intrinsics cameraImageResolution:(uint64_t)self0
{
  v22 = a12;
  v33.receiver = self;
  v33.super_class = PVARMetadata;
  v23 = [(PVARMetadata *)&v33 init];
  v24 = v23;
  if (v23)
  {
    [(PVARMetadata *)v23 setImageBuffer:resolution];
    [(PVARMetadata *)v24 setDepthBuffer:a11];
    [(PVARMetadata *)v24 setDepthData:v22];
    [(PVARMetadata *)v24 setDepthFreshness:a13];
    [(PVARMetadata *)v24 setSegmentationBuffer:a14];
    [(PVARMetadata *)v24 setCameraTransform:a2, buffer, depthBuffer, data];
    [(PVARMetadata *)v24 setCameraIntrinsics:freshness, segmentationBuffer, transform];
    [(PVARMetadata *)v24 setCameraImageResolution:a16, a17];
  }

  return v24;
}

- (PVARMetadata)initWithARFrame:(id)frame depthData:(id)data depthFreshness:(int)freshness
{
  frameCopy = frame;
  dataCopy = data;
  capturedImage = [frameCopy capturedImage];
  sceneDepth = [frameCopy sceneDepth];
  depthMap = [sceneDepth depthMap];
  segmentationBuffer = [frameCopy segmentationBuffer];
  camera = [frameCopy camera];
  [camera transform];
  v32 = v15;
  v33 = v14;
  v30 = v17;
  v31 = v16;
  camera2 = [frameCopy camera];
  [camera2 intrinsics];
  v28 = v20;
  v29 = v19;
  v27 = v21;
  camera3 = [frameCopy camera];
  [camera3 imageResolution];
  v25 = [(PVARMetadata *)self initWithImageBuffer:capturedImage depthBuffer:depthMap depthData:dataCopy depthFreshness:freshness segmentationBuffer:segmentationBuffer cameraTransform:v33 cameraIntrinsics:v32 cameraImageResolution:v31, v30, v29, v28, v27, v23, v24];

  if (v25)
  {
    [(PVARMetadata *)v25 setArFrame:frameCopy];
  }

  return v25;
}

- (void)setImageBuffer:(__CVBuffer *)buffer
{
  CVPixelBufferRetain(buffer);
  CVPixelBufferRelease(self->_imageBuffer);
  self->_imageBuffer = buffer;
}

- (void)setDepthBuffer:(__CVBuffer *)buffer
{
  CVPixelBufferRetain(buffer);
  CVPixelBufferRelease(self->_depthBuffer);
  self->_depthBuffer = buffer;
}

- (void)setSegmentationBuffer:(__CVBuffer *)buffer
{
  CVPixelBufferRetain(buffer);
  CVPixelBufferRelease(self->_segmentationBuffer);
  self->_segmentationBuffer = buffer;
}

- (id)description
{
  v34 = MEMORY[0x277CCACA8];
  v3 = MEMORY[0x277CCABB0];
  imageBuffer = self->_imageBuffer;
  if (imageBuffer)
  {
    Width = CVPixelBufferGetWidth(imageBuffer);
  }

  else
  {
    Width = 0;
  }

  v35 = [v3 numberWithUnsignedLong:Width];
  v6 = MEMORY[0x277CCABB0];
  v7 = self->_imageBuffer;
  if (v7)
  {
    Height = CVPixelBufferGetHeight(v7);
  }

  else
  {
    Height = 0;
  }

  v9 = [v6 numberWithUnsignedLong:Height];
  v10 = MEMORY[0x277CCABB0];
  depthBuffer = self->_depthBuffer;
  if (depthBuffer)
  {
    v12 = CVPixelBufferGetWidth(depthBuffer);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 numberWithUnsignedLong:v12];
  v14 = MEMORY[0x277CCABB0];
  v15 = self->_depthBuffer;
  if (v15)
  {
    v16 = CVPixelBufferGetHeight(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 numberWithUnsignedLong:v16];
  depthFreshness = self->_depthFreshness;
  v19 = MEMORY[0x277CCABB0];
  depthData = self->_depthData;
  segmentationBuffer = self->_segmentationBuffer;
  if (segmentationBuffer)
  {
    v22 = CVPixelBufferGetWidth(segmentationBuffer);
  }

  else
  {
    v22 = 0;
  }

  v23 = [v19 numberWithUnsignedLong:v22];
  v24 = MEMORY[0x277CCABB0];
  v25 = self->_segmentationBuffer;
  if (v25)
  {
    v26 = CVPixelBufferGetHeight(v25);
  }

  else
  {
    v26 = 0;
  }

  if (depthFreshness)
  {
    v27 = @"Stale";
  }

  else
  {
    v27 = @"Fresh";
  }

  v28 = [v24 numberWithUnsignedLong:v26];
  v29 = NSStringFromSIMDFloat4x4(2, *&self[1].super.isa);
  v30 = NSStringFromSIMDFloat3x3(2, *self->_anon_50);
  v31 = NSStringFromCGSize(self->_cameraImageResolution);
  v32 = [v34 stringWithFormat:@"<Image %@x%@> <Depth %@x%@> <DepthData %@> <DepthFreshness %@> <Segmentation %@x%@> <CameraTransform %@> <CameraIntrinsics %@> <CameraResolution %@>", v35, v9, v13, v17, depthData, v27, v23, v28, v29, v30, v31];

  return v32;
}

- (__n128)setCameraTransform:(__n128)transform
{
  result[8] = a2;
  result[9] = transform;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[5] = a2;
  result[6] = intrinsics;
  result[7] = a4;
  return result;
}

- (CGSize)cameraImageResolution
{
  width = self->_cameraImageResolution.width;
  height = self->_cameraImageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end