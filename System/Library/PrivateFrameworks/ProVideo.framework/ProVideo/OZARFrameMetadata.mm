@interface OZARFrameMetadata
+ (opaqueCMFormatDescription)metadataFormat;
- (CGSize)cameraImageResolution;
- (OZARFrameMetadata)initWithCameraTransform:(double)transform cameraIntrinsics:(double)intrinsics cameraImageResolution:(double)resolution;
- (OZARFrameMetadata)initWithCoder:(id)coder;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (__n128)setCameraTransform:(__n128)transform;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OZARFrameMetadata

- (OZARFrameMetadata)initWithCameraTransform:(double)transform cameraIntrinsics:(double)intrinsics cameraImageResolution:(double)resolution
{
  v27.receiver = self;
  v27.super_class = OZARFrameMetadata;
  v17 = [(OZARFrameMetadata *)&v27 init];
  v18 = v17;
  if (v17)
  {
    [(OZARFrameMetadata *)v17 setCameraTransform:a2, transform, intrinsics, resolution];
    [(OZARFrameMetadata *)v18 setCameraIntrinsics:a6, a7, a8];
    [(OZARFrameMetadata *)v18 setCameraImageResolution:a10, a11];
  }

  return v18;
}

+ (opaqueCMFormatDescription)metadataFormat
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __35__OZARFrameMetadata_metadataFormat__block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = self;
  if (+[OZARFrameMetadata metadataFormat]::onceToken != -1)
  {
    dispatch_once(&+[OZARFrameMetadata metadataFormat]::onceToken, block);
  }

  return +[OZARFrameMetadata metadataFormat]::metadataFormat;
}

uint64_t __35__OZARFrameMetadata_metadataFormat__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) createMetadataFormat];
  +[OZARFrameMetadata metadataFormat]::metadataFormat = result;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = OZARFrameMetadata;
  v4 = [(OZARFrameMetadata *)&v14 description];
  v5 = MEMORY[0x277CCACA8];
  [(OZARFrameMetadata *)self cameraTransform];
  v6 = [v5 oz_stringWithMatrixFloat4x4:4 precision:?];
  v7 = MEMORY[0x277CCACA8];
  [(OZARFrameMetadata *)self cameraIntrinsics];
  v8 = [v7 oz_stringWithMatrixFloat3x3:4 precision:?];
  v9 = MEMORY[0x277CCABB0];
  [(OZARFrameMetadata *)self cameraImageResolution];
  v10 = [v9 numberWithDouble:?];
  v11 = MEMORY[0x277CCABB0];
  [(OZARFrameMetadata *)self cameraImageResolution];
  return [v3 stringWithFormat:@"%@\ncameraTransform:\n%@\ncameraIntrinsics:\n%@\ncameraImageResolution: {%@, %@}", v4, v6, v8, v10, objc_msgSend(v11, "numberWithDouble:", v12)];
}

- (OZARFrameMetadata)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = OZARFrameMetadata;
  v4 = [(OZARFrameMetadata *)&v15 init];
  if (v4)
  {
    [coder oz_decodeMatrixFloat4x4ForKey:@"cameraTransform"];
    [(OZARFrameMetadata *)v4 setCameraTransform:?];
    [coder oz_decodeFloat2ForKey:@"cameraIntrinsicsFocalLength"];
    v14 = v5;
    [coder oz_decodeFloat2ForKey:@"cameraIntrinsicsPrincipalPoint"];
    LODWORD(v6) = 0;
    HIDWORD(v6) = HIDWORD(v14);
    __asm { FMOV            V2.4S, #1.0 }

    [(OZARFrameMetadata *)v4 setCameraIntrinsics:COERCE_DOUBLE(v14), v6, v12];
    [coder oz_decodeCGSizeForKey:@"cameraImageResolution"];
    [(OZARFrameMetadata *)v4 setCameraImageResolution:?];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [(OZARFrameMetadata *)self cameraTransform];
  [coder oz_encodeMatrixFloat4x4:@"cameraTransform" forKey:?];
  [(OZARFrameMetadata *)self cameraIntrinsics];
  v8 = v5;
  [(OZARFrameMetadata *)self cameraIntrinsics];
  [coder oz_encodeFloat2:@"cameraIntrinsicsFocalLength" forKey:{COERCE_DOUBLE(__PAIR64__(v6, v8))}];
  [(OZARFrameMetadata *)self cameraIntrinsics];
  [coder oz_encodeFloat2:@"cameraIntrinsicsPrincipalPoint" forKey:v7];
  [(OZARFrameMetadata *)self cameraImageResolution];

  [coder oz_encodeCGSize:@"cameraImageResolution" forKey:?];
}

- (__n128)setCameraTransform:(__n128)transform
{
  result[5] = a2;
  result[6] = transform;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[2] = a2;
  result[3] = intrinsics;
  result[4] = a4;
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