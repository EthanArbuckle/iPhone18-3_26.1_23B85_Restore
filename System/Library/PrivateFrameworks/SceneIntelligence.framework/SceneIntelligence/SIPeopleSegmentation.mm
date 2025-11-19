@interface SIPeopleSegmentation
+ (CGSize)getInputResolution;
+ (CGSize)getOutputResolution;
- (BOOL)_initTemporalBuffer;
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SIPeopleSegmentation)initWithNetworkConfiguration:(id)a3;
- (int64_t)copyResultsToData:(id)a3;
- (int64_t)evaluateForInput:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4;
- (int64_t)evaluateForInput:(id)a3 output:(id)a4;
- (int64_t)switchNetworkConfiguration:(int64_t)a3;
- (void)dealloc;
@end

@implementation SIPeopleSegmentation

+ (CGSize)getInputResolution
{
  v2 = 192.0;
  v3 = 256.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)getOutputResolution
{
  v2 = 192.0;
  v3 = 256.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (SIPeopleSegmentation)initWithNetworkConfiguration:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SIPeopleSegmentation;
  v5 = [(SIModel *)&v15 initWithNetworkConfiguration:v4];
  if (!v5)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v22[0] = kSIMPeopleSegmentationInputTensorName;
  v6 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
  v22[1] = kSIMPeopleSegmentationTemporalTensorName;
  v23[0] = v6;
  v7 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
  v23[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [(SIModel *)v5 setInputs:v8];

  v20 = kSIMPeopleSegmentationOutputTensorName;
  v9 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
  v21 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [(SIModel *)v5 setOutputs:v10];

  [(SIPeopleSegmentation *)v5 setSnapEveryFrameCount:30];
  if (![(SIPeopleSegmentation *)v5 _initTemporalBuffer])
  {
    v12 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v17 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PeopleSegmentation/SIPeopleSegmentation.mm";
      v18 = 1025;
      v19 = 70;
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d ***  ***", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v11 = v5;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (CGSize)getInputResolution
{
  v3 = [(SIModel *)self network];
  v4 = [v3 getInputWidth:kSIMPeopleSegmentationInputTensorName];
  v5 = [(SIModel *)self network];
  v6 = [v5 getInputHeight:kSIMPeopleSegmentationInputTensorName];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)getOutputResolution
{
  v3 = [(SIModel *)self network];
  v4 = [v3 getOutputWidth:kSIMPeopleSegmentationOutputTensorName];
  v5 = [(SIModel *)self network];
  v6 = [v5 getOutputHeight:kSIMPeopleSegmentationOutputTensorName];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)switchNetworkConfiguration:(int64_t)a3
{
  v5 = [(SIModel *)self config];
  v6 = [v5 networkModeEnum];

  v10.receiver = self;
  v10.super_class = SIPeopleSegmentation;
  v7 = [(SIModel *)&v10 switchNetworkConfiguration:a3];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == a3;
  }

  if (!v8)
  {
    CVPixelBufferRelease(self->_temporalBuffer);
    self->_frameCount = 0;
    [(SIPeopleSegmentation *)self _initTemporalBuffer];
  }

  return v7;
}

- (BOOL)_initTemporalBuffer
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = *MEMORY[0x277CC4DE8];
  v18[0] = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [(SIPeopleSegmentation *)self getOutputResolution];
  v5 = v4;
  [(SIPeopleSegmentation *)self getOutputResolution];
  v7 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v5, v6, 0x4C303038u, v3, &self->_temporalBuffer);
  if (v7)
  {
    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136381187;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PeopleSegmentation/SIPeopleSegmentation.mm";
      v13 = 1025;
      v14 = 111;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** (Error %d) Could not create internal image buffer of uint8 type ***", &v11, 0x18u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 == 0;
}

- (int64_t)evaluateForInput:(__CVBuffer *)a3 outputBuffer:(__CVBuffer *)a4
{
  v7 = [(SIModel *)self inputs];
  v8 = [v7 objectForKeyedSubscript:kSIMPeopleSegmentationInputTensorName];
  [v8 setPixelBuffer:a3];

  temporalBuffer = self->_temporalBuffer;
  v10 = [(SIModel *)self inputs];
  v11 = [v10 objectForKeyedSubscript:kSIMPeopleSegmentationTemporalTensorName];
  [v11 setPixelBuffer:temporalBuffer];

  v12 = [(SIModel *)self outputs];
  v13 = [v12 objectForKeyedSubscript:kSIMPeopleSegmentationOutputTensorName];
  [v13 setPixelBuffer:a4];

  v14 = [(SIModel *)self inputs];
  v15 = [(SIModel *)self outputs];
  v16 = [(SIModel *)self evaluateWithInput:v14 outputs:v15];

  return v16;
}

- (int64_t)evaluateForInput:(id)a3 output:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[SIPeopleSegmentation evaluateForInput:outputBuffer:](self, "evaluateForInput:outputBuffer:", [v6 inputImageBuffer], objc_msgSend(v7, "segmentation"));

  return v8;
}

- (int64_t)copyResultsToData:(id)a3
{
  v4 = a3;
  [(SIPeopleSegmentation *)self getOutputResolution];
  v6 = v5;
  [(SIPeopleSegmentation *)self getOutputResolution];
  v7 = self->_frameCount + 1;
  self->_frameCount = v7;
  v8 = v6;
  v10 = v9;
  if (v7 % [(SIPeopleSegmentation *)self snapEveryFrameCount])
  {
    v11 = 0x101010101010101;
  }

  else
  {
    v11 = 0;
    self->_frameCount = 0;
  }

  kdebug_trace();
  CVPixelBufferLockBaseAddress([v4 segmentation], 0);
  BaseAddress = CVPixelBufferGetBaseAddress([v4 segmentation]);
  BytesPerRow = CVPixelBufferGetBytesPerRow([v4 segmentation]);
  CVPixelBufferLockBaseAddress(self->_temporalBuffer, 0);
  v14 = CVPixelBufferGetBaseAddress(self->_temporalBuffer);
  v15 = CVPixelBufferGetBytesPerRow(self->_temporalBuffer);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if (v8 >= 1)
      {
        v17 = 0;
        do
        {
          *&v14[v17] = *&BaseAddress[v17] & v11;
          *&BaseAddress[v17] *= 255;
          v17 += 8;
        }

        while (v17 < v8);
      }

      BaseAddress += BytesPerRow;
      v14 += v15;
    }
  }

  CVPixelBufferUnlockBaseAddress(self->_temporalBuffer, 0);
  CVPixelBufferUnlockBaseAddress([v4 segmentation], 0);
  kdebug_trace();

  return 0;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_temporalBuffer);
  v3.receiver = self;
  v3.super_class = SIPeopleSegmentation;
  [(SIPeopleSegmentation *)&v3 dealloc];
}

@end