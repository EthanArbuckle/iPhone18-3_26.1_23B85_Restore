@interface PFRWSampleBufferChannel
- (PFRWSampleBufferChannel)initWithAssetReaderOutput:(id)a3 assetWriterInput:(id)a4 useAdaptor:(BOOL)a5;
- (void)callCompletionHandlerIfNecessary;
- (void)cancel;
- (void)startWithDelegate:(id)a3 completionHandler:(id)a4;
@end

@implementation PFRWSampleBufferChannel

- (void)cancel
{
  serializationQueue = self->serializationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__PFRWSampleBufferChannel_cancel__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_async(serializationQueue, block);
}

- (void)startWithDelegate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  completionHandler = self->completionHandler;
  self->completionHandler = v7;

  v9 = [(PFRWSampleBufferChannel *)self assetWriterInput];
  serializationQueue = self->serializationQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PFRWSampleBufferChannel_startWithDelegate_completionHandler___block_invoke;
  v12[3] = &unk_1E7B66D98;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 requestMediaDataWhenReadyOnQueue:serializationQueue usingBlock:v12];
}

void __63__PFRWSampleBufferChannel_startWithDelegate_completionHandler___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) finished] & 1) == 0)
  {
    v2 = [*(a1 + 32) assetWriterInput];
    v3 = [v2 isReadyForMoreMediaData];

    if (v3)
    {
      do
      {
        v4 = objc_autoreleasePoolPush();
        v5 = [*(a1 + 32) assetReaderOutput];
        v6 = [v5 copyNextSampleBuffer];

        if (v6)
        {
          v7 = [*(a1 + 32) adaptor];
          if (v7 && (v8 = v7, v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
          {
            pixelBufferOut = 0;
            v10 = [*(a1 + 32) adaptor];
            v11 = [v10 pixelBufferPool];

            CVPixelBufferPoolCreatePixelBuffer(0, v11, &pixelBufferOut);
            memset(&v18, 0, sizeof(v18));
            CMSampleBufferGetPresentationTimeStamp(&v18, v6);
            [*(a1 + 40) sampleBufferChannel:*(a1 + 32) didReadSampleBuffer:v6 andMadeWriteSampleBuffer:pixelBufferOut];
            v12 = [*(a1 + 32) adaptor];
            v17 = v18;
            v13 = [v12 appendPixelBuffer:pixelBufferOut withPresentationTime:&v17];

            CFRelease(pixelBufferOut);
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              [*(a1 + 40) sampleBufferChannel:*(a1 + 32) didReadSampleBuffer:v6];
            }

            v14 = [*(a1 + 32) assetWriterInput];
            v13 = [v14 appendSampleBuffer:v6];
          }

          CFRelease(v6);
        }

        else
        {
          v13 = 0;
        }

        objc_autoreleasePoolPop(v4);
        v15 = [*(a1 + 32) assetWriterInput];
        v16 = [v15 isReadyForMoreMediaData];
      }

      while (v16 && (v13 & 1) != 0);
      if ((v13 & 1) == 0)
      {
        [*(a1 + 32) callCompletionHandlerIfNecessary];
      }
    }
  }
}

- (void)callCompletionHandlerIfNecessary
{
  v3 = [(PFRWSampleBufferChannel *)self finished];
  [(PFRWSampleBufferChannel *)self setFinished:1];
  if (!v3)
  {
    v4 = [(PFRWSampleBufferChannel *)self assetWriterInput];
    [v4 markAsFinished];

    v7 = MEMORY[0x1B8C64C40](self->completionHandler);
    completionHandler = self->completionHandler;
    self->completionHandler = 0;

    v6 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7);
      v6 = v7;
    }
  }
}

- (PFRWSampleBufferChannel)initWithAssetReaderOutput:(id)a3 assetWriterInput:(id)a4 useAdaptor:(BOOL)a5
{
  v5 = a5;
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = PFRWSampleBufferChannel;
  v11 = [(PFRWSampleBufferChannel *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetReaderOutput, a3);
    objc_storeStrong(&v12->_assetWriterInput, a4);
    v12->_finished = 0;
    v12->_useAdaptor = v5;
    if (v5)
    {
      v20 = *MEMORY[0x1E6966130];
      v21[0] = &unk_1F2AAAF18;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v14 = [MEMORY[0x1E6987F08] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v10 sourcePixelBufferAttributes:v13];
      adaptor = v12->_adaptor;
      v12->_adaptor = v14;
    }

    v16 = dispatch_queue_create("com.apple.PFRWSampleBufferChannel.serializationQueue", 0);
    serializationQueue = v12->serializationQueue;
    v12->serializationQueue = v16;
  }

  return v12;
}

@end