@interface PVFrameSet
+ (PVFrameSet)frameSetWithARFrame:(id)a3 depthData:(id)a4 depthFreshness:(int)a5 frameDuration:(id *)a6;
+ (PVFrameSet)frameSetWithARFrame:(id)a3 depthData:(id)a4 depthFreshness:(int)a5 frameDuration:(id *)a6 matte:(id)a7 dilatedDepth:(id)a8;
+ (PVFrameSet)frameSetWithARFrame:(id)a3 frameDuration:(id *)a4;
+ (PVFrameSet)frameSetWithARFrame:(id)a3 frameDuration:(id *)a4 matte:(id)a5 dilatedDepth:(id)a6;
+ (PVFrameSet)frameSetWithARMetadata:(id)a3 depthData:(id)a4 depthFreshness:(int)a5 matte:(id)a6 dilatedDepth:(id)a7 timestamp:(id *)a8 frameDuration:(id *)a9 metadata:(id)a10;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- (PVFrameSet)initWithColorBuffer:(id)a3 depthData:(id)a4 metadata:(id)a5;
- (PVFrameSet)initWithColorBuffer:(id)a3 depthData:(id)a4 metadata:(id)a5 matte:(id)a6 dilatedDepth:(id)a7;
- (PVFrameSet)initWithColorBuffer:(id)a3 metadata:(id)a4;
- (PVImageBuffer)colorImageBuffer;
- (id)description;
- (id)metadataDict;
- (id)metadataObjectForKey:(id)a3;
- (void)commonInitWithColorBuffer:(id)a3 depthData:(id)a4 metadata:(id)a5 matte:(id)a6 dilatedDepth:(id)a7;
- (void)setMetadataDict:(id)a3;
- (void)setMetadataObject:(id)a3 forKey:(id)a4;
@end

@implementation PVFrameSet

+ (PVFrameSet)frameSetWithARMetadata:(id)a3 depthData:(id)a4 depthFreshness:(int)a5 matte:(id)a6 dilatedDepth:(id)a7 timestamp:(id *)a8 frameDuration:(id *)a9 metadata:(id)a10
{
  v13 = *&a5;
  v31[2] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  v30[0] = @"kPVARMetadataKey";
  v30[1] = @"kPVARDepthFreshnessKey";
  v31[0] = v15;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  v31[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  if (v19)
  {
    v22 = [v21 mutableCopy];
    [v22 addEntriesFromDictionary:v19];
  }

  else
  {
    v22 = v21;
  }

  v23 = +[PVImageBuffer imageWithCVPixelBuffer:](PVImageBuffer, "imageWithCVPixelBuffer:", [v15 imageBuffer]);
  v28 = *&a8->var0;
  var3 = a8->var3;
  v27 = *a9;
  v24 = [PVCMSampleBuffer sampleBufferWithPVImageBuffer:v23 timestamp:&v28 frameDuration:&v27];
  v25 = [[PVFrameSet alloc] initWithColorBuffer:v24 depthData:v16 metadata:v22 matte:v17 dilatedDepth:v18];

  return v25;
}

+ (PVFrameSet)frameSetWithARFrame:(id)a3 frameDuration:(id *)a4
{
  v6 = a3;
  v7 = [v6 capturedDepthData];
  v10 = *a4;
  v8 = [a1 frameSetWithARFrame:v6 depthData:v7 depthFreshness:0 frameDuration:&v10];

  return v8;
}

+ (PVFrameSet)frameSetWithARFrame:(id)a3 depthData:(id)a4 depthFreshness:(int)a5 frameDuration:(id *)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = [[PVARMetadata alloc] initWithARFrame:v10 depthData:v11 depthFreshness:v7];
  [v10 timestamp];
  CMTimeMakeWithSeconds(&v17, v13, 1000000000);
  v16 = *a6;
  v14 = [a1 frameSetWithARMetadata:v12 depthData:v11 depthFreshness:v7 matte:0 dilatedDepth:0 timestamp:&v17 frameDuration:&v16 metadata:0];

  return v14;
}

+ (PVFrameSet)frameSetWithARFrame:(id)a3 depthData:(id)a4 depthFreshness:(int)a5 frameDuration:(id *)a6 matte:(id)a7 dilatedDepth:(id)a8
{
  v11 = *&a5;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = [[PVARMetadata alloc] initWithARFrame:v14 depthData:v15 depthFreshness:v11];
  [v14 timestamp];
  CMTimeMakeWithSeconds(&v23, v19, 1000000000);
  v22 = *a6;
  v20 = [a1 frameSetWithARMetadata:v18 depthData:v15 depthFreshness:v11 matte:v16 dilatedDepth:v17 timestamp:&v23 frameDuration:&v22 metadata:0];

  return v20;
}

+ (PVFrameSet)frameSetWithARFrame:(id)a3 frameDuration:(id *)a4 matte:(id)a5 dilatedDepth:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 capturedDepthData];
  v14 = [[PVARMetadata alloc] initWithARFrame:v10 depthData:v13 depthFreshness:0];
  [v10 timestamp];
  CMTimeMakeWithSeconds(&v19, v15, 1000000000);
  v18 = *a4;
  v16 = [a1 frameSetWithARMetadata:v14 depthData:v13 depthFreshness:0 matte:v11 dilatedDepth:v12 timestamp:&v19 frameDuration:&v18 metadata:0];

  return v16;
}

- (PVFrameSet)initWithColorBuffer:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PVFrameSet;
  v8 = [(PVFrameSet *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PVFrameSet *)v8 commonInitWithColorBuffer:v6 depthData:0 metadata:v7 matte:0 dilatedDepth:0];
  }

  return v9;
}

- (PVFrameSet)initWithColorBuffer:(id)a3 depthData:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PVFrameSet;
  v11 = [(PVFrameSet *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PVFrameSet *)v11 commonInitWithColorBuffer:v8 depthData:v9 metadata:v10 matte:0 dilatedDepth:0];
  }

  return v12;
}

- (PVFrameSet)initWithColorBuffer:(id)a3 depthData:(id)a4 metadata:(id)a5 matte:(id)a6 dilatedDepth:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PVFrameSet;
  v17 = [(PVFrameSet *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(PVFrameSet *)v17 commonInitWithColorBuffer:v12 depthData:v13 metadata:v14 matte:v15 dilatedDepth:v16];
  }

  return v18;
}

- (void)commonInitWithColorBuffer:(id)a3 depthData:(id)a4 metadata:(id)a5 matte:(id)a6 dilatedDepth:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_storeStrong(&self->_colorSampleBuffer, a3);
  depthData = self->_depthData;
  self->_depthData = v14;
  v19 = v14;

  alphaMaskImageBuffer = self->_alphaMaskImageBuffer;
  self->_alphaMaskImageBuffer = 0;

  matte = self->_matte;
  self->_matte = v16;
  v22 = v16;

  dilatedDepth = self->_dilatedDepth;
  self->_dilatedDepth = v17;

  operator new();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp
{
  v9 = [(PVFrameSet *)self colorSampleBuffer];
  if (v9)
  {
    v5 = [(PVFrameSet *)self colorSampleBuffer];
    v6 = v5;
    if (v5)
    {
      [v5 presentationTimeStamp];
    }

    else
    {
      retstr->var0 = 0;
      *&retstr->var1 = 0;
      retstr->var3 = 0;
    }
  }

  else
  {
    v7 = MEMORY[0x277CC0898];
    *&retstr->var0 = *MEMORY[0x277CC0898];
    retstr->var3 = *(v7 + 16);
  }

  return result;
}

- (PVImageBuffer)colorImageBuffer
{
  v3 = [(PVFrameSet *)self colorSampleBuffer];
  if (v3 && (v4 = v3, -[PVFrameSet colorSampleBuffer](self, "colorSampleBuffer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 sampleBufferRef], v5, v4, v6))
  {
    v7 = [(PVFrameSet *)self colorSampleBuffer];
    v8 = [v7 backingPVImageBuffer];

    v9 = [(PVFrameSet *)self colorSampleBuffer];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 backingPVImageBuffer];
    }

    else
    {
      ImageBuffer = CMSampleBufferGetImageBuffer([v9 sampleBufferRef]);

      v11 = [PVImageBuffer imageWithCVPixelBuffer:ImageBuffer];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)metadataDict
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  ptr = self->_mdLock.__ptr_;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = *"";
  v5[2] = __26__PVFrameSet_metadataDict__block_invoke;
  v5[3] = &unk_279AA57A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(*ptr, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__PVFrameSet_metadataDict__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setMetadataDict:(id)a3
{
  v4 = a3;
  ptr = self->_mdLock.__ptr_;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __30__PVFrameSet_setMetadataDict___block_invoke;
  v8[3] = &unk_279AA4E00;
  v9 = v4;
  v10 = self;
  v6 = *ptr;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __30__PVFrameSet_setMetadataDict___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
}

- (id)metadataObjectForKey:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  ptr = self->_mdLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __35__PVFrameSet_metadataObjectForKey___block_invoke;
  block[3] = &unk_279AA7B68;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v6 = *ptr;
  v7 = v4;
  dispatch_sync(v6, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __35__PVFrameSet_metadataObjectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setMetadataObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  ptr = self->_mdLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __39__PVFrameSet_setMetadataObject_forKey___block_invoke;
  block[3] = &unk_279AA7B90;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v9 = *ptr;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

uint64_t __39__PVFrameSet_setMetadataObject_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 16);
  if (v2)
  {
    return [v3 setObject:v2 forKeyedSubscript:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PVFrameSet;
  v4 = [(PVFrameSet *)&v8 description];
  v5 = [(PVFrameSet *)self metadataDict];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end