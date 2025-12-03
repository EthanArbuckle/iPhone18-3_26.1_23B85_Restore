@interface PTAssetReaderCustomCompositor
- (NSDictionary)requiredPixelBufferAttributesForRenderContext;
- (NSDictionary)sourcePixelBufferAttributes;
- (void)startVideoCompositionRequest:(id)request;
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

- (void)startVideoCompositionRequest:(id)request
{
  requestCopy = request;
  v4 = objc_autoreleasePoolPush();
  videoCompositionInstruction = [requestCopy videoCompositionInstruction];
  v6 = [requestCopy sourceFrameByTrackID:{objc_msgSend(videoCompositionInstruction, "videTrackID")}];
  v7 = [requestCopy sourceFrameByTrackID:{objc_msgSend(videoCompositionInstruction, "auxvTrackID")}];
  if (v6)
  {
    v8 = v7;
    v9 = [PTAssetReaderComposedFrame alloc];
    if (requestCopy)
    {
      [requestCopy compositionTime];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v11 = [(PTAssetReaderComposedFrame *)v9 initWithTime:v13 colorBuffer:v6 auxBuffer:v8];
    assetReader = [videoCompositionInstruction assetReader];
    [assetReader pushComposedFrame:v11];

    [requestCopy finishWithComposedVideoFrame:v6];
  }

  else
  {
    v10 = AssetReaderError(@"Did not receive videoBuffer from async request");
    [requestCopy finishWithError:v10];
  }

  objc_autoreleasePoolPop(v4);
}

@end