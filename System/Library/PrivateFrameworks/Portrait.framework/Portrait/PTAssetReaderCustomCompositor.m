@interface PTAssetReaderCustomCompositor
- (NSDictionary)requiredPixelBufferAttributesForRenderContext;
- (NSDictionary)sourcePixelBufferAttributes;
- (void)startVideoCompositionRequest:(id)a3;
@end

@implementation PTAssetReaderCustomCompositor

- (NSDictionary)sourcePixelBufferAttributes
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC4DE8];
  v5[0] = *MEMORY[0x277CC4E30];
  v5[1] = v2;
  v6[0] = &unk_2837F38F8;
  v6[1] = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (NSDictionary)requiredPixelBufferAttributesForRenderContext
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC4DE8];
  v5[0] = *MEMORY[0x277CC4E30];
  v5[1] = v2;
  v6[0] = &unk_2837F3910;
  v6[1] = MEMORY[0x277CBEC10];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

- (void)startVideoCompositionRequest:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 videoCompositionInstruction];
  v6 = [v3 sourceFrameByTrackID:{objc_msgSend(v5, "videTrackID")}];
  v7 = [v3 sourceFrameByTrackID:{objc_msgSend(v5, "auxvTrackID")}];
  if (v6)
  {
    v8 = v7;
    v9 = [PTAssetReaderComposedFrame alloc];
    if (v3)
    {
      [v3 compositionTime];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v11 = [(PTAssetReaderComposedFrame *)v9 initWithTime:v13 colorBuffer:v6 auxBuffer:v8];
    v12 = [v5 assetReader];
    [v12 pushComposedFrame:v11];

    [v3 finishWithComposedVideoFrame:v6];
  }

  else
  {
    v10 = AssetReaderError(@"Did not receive videoBuffer from async request");
    [v3 finishWithError:v10];
  }

  objc_autoreleasePoolPop(v4);
}

@end