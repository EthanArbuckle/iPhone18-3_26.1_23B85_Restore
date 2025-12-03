@interface PVFrameSet
+ (PVFrameSet)frameSetWithARFrame:(id)frame depthData:(id)data depthFreshness:(int)freshness frameDuration:(id *)duration;
+ (PVFrameSet)frameSetWithARFrame:(id)frame depthData:(id)data depthFreshness:(int)freshness frameDuration:(id *)duration matte:(id)matte dilatedDepth:(id)depth;
+ (PVFrameSet)frameSetWithARFrame:(id)frame frameDuration:(id *)duration;
+ (PVFrameSet)frameSetWithARFrame:(id)frame frameDuration:(id *)duration matte:(id)matte dilatedDepth:(id)depth;
+ (PVFrameSet)frameSetWithARMetadata:(id)metadata depthData:(id)data depthFreshness:(int)freshness matte:(id)matte dilatedDepth:(id)depth timestamp:(id *)timestamp frameDuration:(id *)duration metadata:(id)self0;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- (PVFrameSet)initWithColorBuffer:(id)buffer depthData:(id)data metadata:(id)metadata;
- (PVFrameSet)initWithColorBuffer:(id)buffer depthData:(id)data metadata:(id)metadata matte:(id)matte dilatedDepth:(id)depth;
- (PVFrameSet)initWithColorBuffer:(id)buffer metadata:(id)metadata;
- (PVImageBuffer)colorImageBuffer;
- (id)description;
- (id)metadataDict;
- (id)metadataObjectForKey:(id)key;
- (void)commonInitWithColorBuffer:(id)buffer depthData:(id)data metadata:(id)metadata matte:(id)matte dilatedDepth:(id)depth;
- (void)setMetadataDict:(id)dict;
- (void)setMetadataObject:(id)object forKey:(id)key;
@end

@implementation PVFrameSet

+ (PVFrameSet)frameSetWithARMetadata:(id)metadata depthData:(id)data depthFreshness:(int)freshness matte:(id)matte dilatedDepth:(id)depth timestamp:(id *)timestamp frameDuration:(id *)duration metadata:(id)self0
{
  v13 = *&freshness;
  v31[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dataCopy = data;
  matteCopy = matte;
  depthCopy = depth;
  v19 = a10;
  v30[0] = @"kPVARMetadataKey";
  v30[1] = @"kPVARDepthFreshnessKey";
  v31[0] = metadataCopy;
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

  v23 = +[PVImageBuffer imageWithCVPixelBuffer:](PVImageBuffer, "imageWithCVPixelBuffer:", [metadataCopy imageBuffer]);
  v28 = *&timestamp->var0;
  var3 = timestamp->var3;
  v27 = *duration;
  v24 = [PVCMSampleBuffer sampleBufferWithPVImageBuffer:v23 timestamp:&v28 frameDuration:&v27];
  v25 = [[PVFrameSet alloc] initWithColorBuffer:v24 depthData:dataCopy metadata:v22 matte:matteCopy dilatedDepth:depthCopy];

  return v25;
}

+ (PVFrameSet)frameSetWithARFrame:(id)frame frameDuration:(id *)duration
{
  frameCopy = frame;
  capturedDepthData = [frameCopy capturedDepthData];
  v10 = *duration;
  v8 = [self frameSetWithARFrame:frameCopy depthData:capturedDepthData depthFreshness:0 frameDuration:&v10];

  return v8;
}

+ (PVFrameSet)frameSetWithARFrame:(id)frame depthData:(id)data depthFreshness:(int)freshness frameDuration:(id *)duration
{
  v7 = *&freshness;
  frameCopy = frame;
  dataCopy = data;
  v12 = [[PVARMetadata alloc] initWithARFrame:frameCopy depthData:dataCopy depthFreshness:v7];
  [frameCopy timestamp];
  CMTimeMakeWithSeconds(&v17, v13, 1000000000);
  v16 = *duration;
  v14 = [self frameSetWithARMetadata:v12 depthData:dataCopy depthFreshness:v7 matte:0 dilatedDepth:0 timestamp:&v17 frameDuration:&v16 metadata:0];

  return v14;
}

+ (PVFrameSet)frameSetWithARFrame:(id)frame depthData:(id)data depthFreshness:(int)freshness frameDuration:(id *)duration matte:(id)matte dilatedDepth:(id)depth
{
  v11 = *&freshness;
  frameCopy = frame;
  dataCopy = data;
  matteCopy = matte;
  depthCopy = depth;
  v18 = [[PVARMetadata alloc] initWithARFrame:frameCopy depthData:dataCopy depthFreshness:v11];
  [frameCopy timestamp];
  CMTimeMakeWithSeconds(&v23, v19, 1000000000);
  v22 = *duration;
  v20 = [self frameSetWithARMetadata:v18 depthData:dataCopy depthFreshness:v11 matte:matteCopy dilatedDepth:depthCopy timestamp:&v23 frameDuration:&v22 metadata:0];

  return v20;
}

+ (PVFrameSet)frameSetWithARFrame:(id)frame frameDuration:(id *)duration matte:(id)matte dilatedDepth:(id)depth
{
  frameCopy = frame;
  matteCopy = matte;
  depthCopy = depth;
  capturedDepthData = [frameCopy capturedDepthData];
  v14 = [[PVARMetadata alloc] initWithARFrame:frameCopy depthData:capturedDepthData depthFreshness:0];
  [frameCopy timestamp];
  CMTimeMakeWithSeconds(&v19, v15, 1000000000);
  v18 = *duration;
  v16 = [self frameSetWithARMetadata:v14 depthData:capturedDepthData depthFreshness:0 matte:matteCopy dilatedDepth:depthCopy timestamp:&v19 frameDuration:&v18 metadata:0];

  return v16;
}

- (PVFrameSet)initWithColorBuffer:(id)buffer metadata:(id)metadata
{
  bufferCopy = buffer;
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = PVFrameSet;
  v8 = [(PVFrameSet *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PVFrameSet *)v8 commonInitWithColorBuffer:bufferCopy depthData:0 metadata:metadataCopy matte:0 dilatedDepth:0];
  }

  return v9;
}

- (PVFrameSet)initWithColorBuffer:(id)buffer depthData:(id)data metadata:(id)metadata
{
  bufferCopy = buffer;
  dataCopy = data;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = PVFrameSet;
  v11 = [(PVFrameSet *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PVFrameSet *)v11 commonInitWithColorBuffer:bufferCopy depthData:dataCopy metadata:metadataCopy matte:0 dilatedDepth:0];
  }

  return v12;
}

- (PVFrameSet)initWithColorBuffer:(id)buffer depthData:(id)data metadata:(id)metadata matte:(id)matte dilatedDepth:(id)depth
{
  bufferCopy = buffer;
  dataCopy = data;
  metadataCopy = metadata;
  matteCopy = matte;
  depthCopy = depth;
  v20.receiver = self;
  v20.super_class = PVFrameSet;
  v17 = [(PVFrameSet *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(PVFrameSet *)v17 commonInitWithColorBuffer:bufferCopy depthData:dataCopy metadata:metadataCopy matte:matteCopy dilatedDepth:depthCopy];
  }

  return v18;
}

- (void)commonInitWithColorBuffer:(id)buffer depthData:(id)data metadata:(id)metadata matte:(id)matte dilatedDepth:(id)depth
{
  bufferCopy = buffer;
  dataCopy = data;
  metadataCopy = metadata;
  matteCopy = matte;
  depthCopy = depth;
  objc_storeStrong(&self->_colorSampleBuffer, buffer);
  depthData = self->_depthData;
  self->_depthData = dataCopy;
  v19 = dataCopy;

  alphaMaskImageBuffer = self->_alphaMaskImageBuffer;
  self->_alphaMaskImageBuffer = 0;

  matte = self->_matte;
  self->_matte = matteCopy;
  v22 = matteCopy;

  dilatedDepth = self->_dilatedDepth;
  self->_dilatedDepth = depthCopy;

  operator new();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp
{
  colorSampleBuffer = [(PVFrameSet *)self colorSampleBuffer];
  if (colorSampleBuffer)
  {
    colorSampleBuffer2 = [(PVFrameSet *)self colorSampleBuffer];
    v6 = colorSampleBuffer2;
    if (colorSampleBuffer2)
    {
      [colorSampleBuffer2 presentationTimeStamp];
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
  colorSampleBuffer = [(PVFrameSet *)self colorSampleBuffer];
  if (colorSampleBuffer && (v4 = colorSampleBuffer, -[PVFrameSet colorSampleBuffer](self, "colorSampleBuffer"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 sampleBufferRef], v5, v4, v6))
  {
    colorSampleBuffer2 = [(PVFrameSet *)self colorSampleBuffer];
    backingPVImageBuffer = [colorSampleBuffer2 backingPVImageBuffer];

    colorSampleBuffer3 = [(PVFrameSet *)self colorSampleBuffer];
    v10 = colorSampleBuffer3;
    if (backingPVImageBuffer)
    {
      backingPVImageBuffer2 = [colorSampleBuffer3 backingPVImageBuffer];
    }

    else
    {
      ImageBuffer = CMSampleBufferGetImageBuffer([colorSampleBuffer3 sampleBufferRef]);

      backingPVImageBuffer2 = [PVImageBuffer imageWithCVPixelBuffer:ImageBuffer];
    }
  }

  else
  {
    backingPVImageBuffer2 = 0;
  }

  return backingPVImageBuffer2;
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

- (void)setMetadataDict:(id)dict
{
  dictCopy = dict;
  ptr = self->_mdLock.__ptr_;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __30__PVFrameSet_setMetadataDict___block_invoke;
  v8[3] = &unk_279AA4E00;
  v9 = dictCopy;
  selfCopy = self;
  v6 = *ptr;
  v7 = dictCopy;
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

- (id)metadataObjectForKey:(id)key
{
  keyCopy = key;
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
  v11 = keyCopy;
  v12 = &v13;
  block[4] = self;
  v6 = *ptr;
  v7 = keyCopy;
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

- (void)setMetadataObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  ptr = self->_mdLock.__ptr_;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __39__PVFrameSet_setMetadataObject_forKey___block_invoke;
  block[3] = &unk_279AA7B90;
  v13 = objectCopy;
  selfCopy = self;
  v15 = keyCopy;
  v9 = *ptr;
  v10 = keyCopy;
  v11 = objectCopy;
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
  metadataDict = [(PVFrameSet *)self metadataDict];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, metadataDict];

  return v6;
}

@end