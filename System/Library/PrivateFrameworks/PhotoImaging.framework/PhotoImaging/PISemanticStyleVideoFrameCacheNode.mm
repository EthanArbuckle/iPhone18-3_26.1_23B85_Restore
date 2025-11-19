@interface PISemanticStyleVideoFrameCacheNode
- (id)evaluateSettings:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4;
- (void)resolveSourceWithPixelBuffer:(__CVBuffer *)a3;
- (void)resolveSourceWithVideo:(id)a3 videoComposition:(id)a4;
@end

@implementation PISemanticStyleVideoFrameCacheNode

- (void)resolveSourceWithPixelBuffer:(__CVBuffer *)a3
{
  v7 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:a3];
  v4 = [(NUMemoryCacheNode *)self persistentURL];
  v5 = [v4 absoluteString];

  v6 = [objc_alloc(MEMORY[0x1E69B39B8]) initWithImage:v7 identifier:v5 orientation:1];
  [(NUCacheNode *)self resolveWithSourceNode:v6 error:0];
}

- (void)resolveSourceWithVideo:(id)a3 videoComposition:(id)a4
{
  memset(&v17, 0, sizeof(v17));
  v6 = a4;
  v7 = a3;
  v8 = [(NURenderNode *)self settings];
  v9 = [v8 objectForKeyedSubscript:@"time"];
  CMTimeMakeFromDictionary(&v17, v9);

  v16 = 0;
  v15 = v17;
  v10 = [MEMORY[0x1E69B3D40] readVideoFrameAtTime:&v15 fromAsset:v7 outputSettings:0 videoComposition:v6 auxiliaryImageType:1 error:&v16];

  v11 = v16;
  if (v10)
  {
    [(PISemanticStyleVideoFrameCacheNode *)self resolveSourceWithPixelBuffer:v10];
    CFRelease(v10);
  }

  else
  {
    v12 = MEMORY[0x1E69B3A48];
    v15 = v17;
    v13 = NUStringFromTime();
    v14 = [v12 errorWithCode:1 reason:@"Could not read video frame at time" object:v13 underlyingError:v11];

    [(NUCacheNode *)self resolveWithSourceNode:0 error:v14];
    v11 = v14;
  }
}

- (id)newRenderRequestWithOriginalRequest:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E69B3D30];
  v6 = a3;
  v7 = [[v5 alloc] initWithRequest:v6];

  v8 = [objc_alloc(MEMORY[0x1E69B3C18]) initWithPurpose:2];
  [v7 setRenderContext:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PISemanticStyleVideoFrameCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke;
  v10[3] = &unk_1E82AABF8;
  v10[4] = self;
  [v7 setCompletionBlock:v10];
  return v7;
}

void __80__PISemanticStyleVideoFrameCacheNode_newRenderRequestWithOriginalRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = [v3 avAsset];
    v7 = [v3 avVideoComposition];
    [v5 resolveSourceWithVideo:v6 videoComposition:v7];
  }

  else
  {
    [v5 resolveWithSourceNode:0 error:v4];
  }
}

- (id)evaluateSettings:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  if (v6)
  {
    [v6 time];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v8 = CMTimeCopyAsDictionary(&time, 0);
  [v7 setObject:v8 forKeyedSubscript:@"time"];

  return v7;
}

@end